# Agent instructions: CI/CD with GitHub Actions

This repository holds the slides and demos for Chris Ayers' talk **CI/CD with GitHub Actions (also Real World CI/CD with GitHub Actions)**. The deck is published to <https://chris-ayers.com/github-actions-demos/>.

## Repository layout

- `slides/`: Marp deck using the `custom-github` theme (`custom-github-dark` also available), plus `workshop.md`.
- `.github/workflows/00-*.yml` … `11-*.yml`: numbered teaching workflows that follow the talk. They are deliberately simple; keep them minimal and readable.
- `node-example/`, `dotnet-sample/`, `container-example/`, `aspire-sample/`, `bicep/`: the apps and infrastructure the demo workflows build and deploy.
- `.github/workflows/ci-doctor.md` and `issue-triage-agent.md`: GitHub Agentic Workflows sources. The matching `*.lock.yml` files are compiled output; `.github/aw/actions-lock.json` pins their actions.

## Slides

- Write the deck in Markdown with [Marp](https://marp.app/). `slides/Slides.md` is the source; `build/` is generated output and is never edited or committed.
- Keep the frontmatter at the top of the deck:

  ```yaml
  ---
  marp: true
  theme: custom-github
  ---
  ```

- Store themes in `slides/themes/` and images and diagram sources in `slides/img/`. Prefer theme classes and CSS variables over inline styles.
- Write speaker notes as HTML comments (`<!-- -->`).
- Render locally with the Marp CLI version the Pages workflow uses (latest):

  ```bash
  npx @marp-team/marp-cli --theme-set slides/themes --html -o build/index.html -- slides/Slides.md
  npx @marp-team/marp-cli --theme-set slides/themes --html --pdf --allow-local-files -o build/Slides.pdf -- slides/Slides.md
  ```

- `.github/workflows/marp-pages.yml` builds the HTML deck and `Slides.pdf` and publishes both to GitHub Pages. If you add slide assets outside `slides/img/` and `slides/themes/`, add them to the workflow's copy step. It already copies `slides/workshop.md` (the workshop companion).

## Shared skills

Use the shared skills from [codebytes/skills](https://github.com/codebytes/skills) (for Copilot CLI: `copilot plugin install https://github.com/codebytes/skills`). Don't copy their instructions or scripts into this repository.

| Task                                                                          | Skill               |
| ----------------------------------------------------------------------------- | ------------------- |
| Write or revise slides, notes, order, or layouts                              | `marp-authoring`    |
| Charts, Mermaid diagrams, or other visuals                                    | `marp-visuals`      |
| Editable `.drawio.svg` diagrams (stored in `slides/img/`)                     | `drawio-diagrams`   |
| Check overflow, clipping, and HTML/PDF parity before presenting or publishing | `marp-slide-review` |

## Build and run

```bash
cd node-example && npm ci && npm test && npm run lint
dotnet test dotnet-sample/dotnet-sample.sln
cd aspire-sample && azd up   # provisions and deploys the Aspire sample
```

## Talk-specific rules

- Edit agentic workflows in their `.md` source and recompile with `gh aw compile`; never hand-edit `*.lock.yml`.
- Add a teaching workflow as the next numbered file and reference it from the slide that demonstrates it.
- Azure deploy workflows log in with OIDC secrets from the repository settings; never add credentials to workflow files.

## Readme

- Keep the readme sections in this order: Slides, Recordings, Resources, Contact.
- When a new recording of the talk is published, add it at the top of `## Recordings` as `- [Event Year](https://www.youtube.com/watch?v=VIDEO_ID)`. When the video's title differs from the talk's, add an em dash and the recorded title after the event. Keep the list newest first.
- The talk also appears on <https://chris-ayers.com/speaking/> (source: `content/speaking.md` in [codebytes/codebytes.github.io](https://github.com/codebytes/codebytes.github.io)); new events and recordings belong there too.

## General

- Keep changes scoped to the request; don't reformat unrelated slides or code.
- Never commit secrets, keys, or connection strings. Demo placeholders must be obviously fake.
