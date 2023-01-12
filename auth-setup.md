```bash
githubOrganizationName='codebytes'
githubRepositoryName='github-actions-demos'

applicationRegistrationDetails=$(az ad app create --display-name 'github-actions-demos')
applicationRegistrationObjectId=$(echo $applicationRegistrationDetails | jq -r '.id')
applicationRegistrationAppId=$(echo $applicationRegistrationDetails | jq -r '.appId')

az ad app federated-credential create \
   --id $applicationRegistrationObjectId \
   --parameters "{\"name\":\"github-actions-demos-pr\",\"issuer\":\"https://token.actions.githubusercontent.com\",\"subject\":\"repo:${githubOrganizationName}/${githubRepositoryName}:pull_request\",\"audiences\":[\"api://AzureADTokenExchange\"]}"
az ad app federated-credential create \
   --id $applicationRegistrationObjectId \
   --parameters "{\"name\":\"github-actions-demos-env-prod\",\"issuer\":\"https://token.actions.githubusercontent.com\",\"subject\":\"repo:${githubOrganizationName}/${githubRepositoryName}:environment:prod\",\"audiences\":[\"api://AzureADTokenExchange\"]}"
az ad app federated-credential create \
   --id $applicationRegistrationObjectId \
   --parameters "{\"name\":\"github-actions-demos-env-dotnet\",\"issuer\":\"https://token.actions.githubusercontent.com\",\"subject\":\"repo:${githubOrganizationName}/${githubRepositoryName}:environment:dotnet\",\"audiences\":[\"api://AzureADTokenExchange\"]}"

az ad sp create --id $applicationRegistrationObjectId
az role assignment create \
   --assignee $applicationRegistrationAppId \
   --role Contributor

AZURE_CLIENT_ID=$applicationRegistrationAppId
AZURE_TENANT_ID=$(az account show --query tenantId --output tsv)
AZURE_SUBSCRIPTION_ID=$(az account show --query id --output tsv)

echo "AZURE_CLIENT_ID: $AZURE_CLIENT_ID"
echo "AZURE_TENANT_ID: $AZURE_TENANT_ID"
echo "AZURE_SUBSCRIPTION_ID: $AZURE_SUBSCRIPTION_ID"

gh secret set AZURE_CLIENT_ID --body "$AZURE_CLIENT_ID"
gh secret set AZURE_TENANT_ID --body "$AZURE_TENANT_ID"
gh secret set AZURE_SUBSCRIPTION_ID --body "$AZURE_SUBSCRIPTION_ID"
```