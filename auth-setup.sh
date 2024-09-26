#!/bin/sh

#set vars
#codebytes
githubOrganizationName=$(echo $(git remote get-url origin) | cut -f4 -d"/")
#secure-terraform-on-azure
githubRepositoryName=$(basename -s .git `git config --get remote.origin.url`)

#create app registration
applicationRegistrationDetails=$(az ad app create --display-name "${githubRepositoryName}") 
applicationRegistrationObjectId=$(echo $applicationRegistrationDetails | jq -r '.id') 
applicationRegistrationAppId=$(echo $applicationRegistrationDetails | jq -r '.appId')

#created federated creds
az ad app federated-credential create \
   --id $applicationRegistrationObjectId \
   --parameters "{\"name\":\"${githubRepositoryName}-pr\",\"issuer\":\"https://token.actions.githubusercontent.com\",\"subject\":\"repo:${githubOrganizationName}/${githubRepositoryName}:pull_request\",\"audiences\":[\"api://AzureADTokenExchange\"]}"
az ad app federated-credential create \
   --id $applicationRegistrationObjectId \
   --parameters "{\"name\":\"${githubRepositoryName}-env-dev\",\"issuer\":\"https://token.actions.githubusercontent.com\",\"subject\":\"repo:${githubOrganizationName}/${githubRepositoryName}:environment:dev\",\"audiences\":[\"api://AzureADTokenExchange\"]}"
az ad app federated-credential create \
   --id $applicationRegistrationObjectId \
   --parameters "{\"name\":\"${githubRepositoryName}-env-prod\",\"issuer\":\"https://token.actions.githubusercontent.com\",\"subject\":\"repo:${githubOrganizationName}/${githubRepositoryName}:environment:prod\",\"audiences\":[\"api://AzureADTokenExchange\"]}"
az ad app federated-credential create \
   --id $applicationRegistrationObjectId \
   --parameters "{\"name\":\"${githubRepositoryName}-branch-main\",\"issuer\":\"https://token.actions.githubusercontent.com\",\"subject\":\"repo:${githubOrganizationName}/${githubRepositoryName}:ref:refs/heads/main\",\"audiences\":[\"api://AzureADTokenExchange\"]}"


AZURE_CLIENT_ID=$applicationRegistrationAppId 
AZURE_TENANT_ID=$(az account show --query tenantId --output tsv) 
AZURE_SUBSCRIPTION_ID=$(az account show --query id --output tsv)

az ad sp create --id $applicationRegistrationObjectId 
az role assignment create --assignee $applicationRegistrationAppId --role Contributor --scope /subscriptions/$AZURE_SUBSCRIPTION_ID

echo "AZURE_CLIENT_ID: $AZURE_CLIENT_ID" 
echo "AZURE_TENANT_ID: $AZURE_TENANT_ID" 
echo "AZURE_SUBSCRIPTION_ID: $AZURE_SUBSCRIPTION_ID"

gh secret set AZURE_CLIENT_ID --body "$AZURE_CLIENT_ID" 
gh secret set AZURE_TENANT_ID --body "$AZURE_TENANT_ID" 
gh secret set AZURE_SUBSCRIPTION_ID --body "$AZURE_SUBSCRIPTION_ID"
