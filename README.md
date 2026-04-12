# CI/CD with GitHub Actions

This repository contains resources and demos for the talk "CI/CD with GitHub Actions" by Chris Ayers.

## Slides

The slides for the talk can be found at:\
[https://chris-ayers.com/github-actions-demos/](https://chris-ayers.com/github-actions-demos/)

## Demo Workflows

### Basics (00–08)

| # | Workflow | Concept |
|---|---------|---------|
| 00 | `00-basic.yml` | Minimal single-job workflow |
| 00a | `00a-basic-filters.yml` | Branch, tag, and path filters |
| 01 | `01-multiple-jobs.yml` | Parallel jobs |
| 02 | `02-job-dependencies.yml` | Job dependencies with `needs` |
| 03 | `03-steps.yml` | Shells (bash, pwsh, python, perl) and action ref styles |
| 04 | `04-environment-variables.yml` | Environment variables |
| 04a | `04a-variable-hierarchy.yml` | Env var precedence (workflow → job → step) |
| 05 | `05-conditionals.yml` | Conditional execution with `if` |
| 06 | `06-expressions.yml` | Expression functions (`format`, `contains`, `fromJson`) |
| 07 | `07-contexts.yml` | Dumping GitHub contexts |
| 07a | `07a-configuration-variables.yml` | Configuration variables (`vars` context) |
| 08 | `08-secrets.yml` | Secrets handling (demo only) |

### CI/CD Pipelines (09–12)

| # | Workflow | Concept |
|---|---------|---------|
| 09 | `09-matrix.yml` | Matrix strategy (Node.js × OS) |
| 10 | `10-dotnet.yml` | Full .NET CI/CD pipeline with caching, artifacts, OIDC, Azure deploy |
| 11 | `11-composite-action.yml` | Using a composite action (`.github/actions/setup-node-project/`) |
| 12 | `12-attestation.yml` | Artifact attestation with Sigstore |

### Infrastructure & Security

| Workflow | Concept |
|---------|---------|
| `lint.yml` | Reusable workflow (called by `pr-validation.yml`) |
| `pr-validation.yml` | PR validation with reusable workflow + Azure deploy |
| `pr-closed.yml` | Cleanup Azure resources on PR close |
| `docker-image.yml` | Build and push Docker image |
| `azure-dev.yml` | .NET Aspire deployment with AZD |
| `super-linter.yml` | GitHub Super-Linter with proper permissions |
| `marp-pages.yml` | Build slides and deploy to GitHub Pages |
| `agentic-triage.md` | Agentic workflow sample (Markdown-based AI automation) |

## Application Samples

| Directory | Description |
|-----------|-------------|
| `node-example/` | Simple Node.js module with Jest tests |
| `dotnet-sample/` | Minimal ASP.NET Core API with Bicep IaC |
| `container-example/` | Static site in Nginx Docker container |
| `aspire-sample/` | .NET Aspire distributed app for AZD deployment |
| `bicep/` | Standalone Azure Bicep template |

## Resources

- [GitHub Actions Documentation](https://docs.github.com/actions)
- [GitHub Skills](https://skills.github.com)
- [GitHub Well-Architected Framework](https://wellarchitected.github.com)
- [nektos/act - Run Actions Locally](https://github.com/nektos/act)
- [actions-workshop/actions-workshop](https://github.com/actions-workshop/actions-workshop)

## Connect with Chris Ayers

<a href="https://bsky.app/profile/chris-ayers.com"><img alt="BlueSky" src="https://img.shields.io/badge/BlueSky-@chris--ayers.com-blue"></a>
<a href="https://linkedin.com/in/chris-l-ayers/"><img alt="LinkedIn" src="https://img.shields.io/badge/LinkedIn-chris--l--ayers-blue"></a>
<a href="https://chris-ayers.com/"><img alt="Blog" src="https://img.shields.io/badge/Blog-chris--ayers.com-green"></a>
<a href="https://github.com/codebytes"><img alt="GitHub" src="https://img.shields.io/badge/GitHub-Codebytes-black"></a>

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
