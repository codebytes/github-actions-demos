---
marp: true
theme: custom-default
footer: '@Chris_L_Ayers - https://chris-ayers.com'
---
<!-- _footer: 'https://github.com/codebytes/github-actions-demos' -->

# CI/CD with GitHub Actions

## Chris Ayers
![bg right w:90%](./img/bg.png)

---

![bg left:40%](./img/portrait.png)

## Chris Ayers
### Senior Customer Engineer<br>Microsoft

<i class="fa-brands fa-twitter"></i> Twitter: @Chris\_L\_Ayers
<i class="fa-brands fa-mastodon"></i> Mastodon: @Chrisayers@hachyderm.io
<i class="fa-brands fa-linkedin"></i> LinkedIn: - [chris\-l\-ayers](https://linkedin.com/in/chris-l-ayers/)
<i class="fa fa-window-maximize"></i> Blog: [https://chris-ayers\.com/](https://chris-ayers.com/)
<i class="fa-brands fa-github"></i> GitHub: [Codebytes](https://github.com/codebytes)

---
![bg left fit](./img/bg.png)

# Agenda
- YAML
- CI / CD
- Actions Overview
- Demos

---

<div class="columns">
<div>

# YAML
## **Yet Another Markup Language**

GitHub uses YAML for workflows

Demo: [Online Parser](https://yaml-online-parser.appspot.com/)

</div>
<div>

| Feature | Description |
| --- | --- |
| Lists | Start with a – |
| Key-Value | Key: value |
| Objects | Objects:<br>Properties of objects |

</div>

</div>

---

# What is CI/CD?

<div class="mermaid ci" >
flowchart LR
  subgraph Continuous Integration 
    direction LR
    A[Code] --Check In--> B[Build]
    B -- Auto --> C[Unit Tests]
    C -- Auto --> D[Dev Release]
    D -- Auto --> E[Additional Tests]
  end
</div>
<div class="mermaid cd">
flowchart LR
  subgraph Continuous Delivery
    direction LR
    G[Code] --Check In--> H[Build]
    H -- Auto --> I[Unit Tests]
    I -- Auto --> J[Dev Release]
    J -- Auto --> K[Additional Tests]
    K --Manual--> L[Release]
  end
linkStyle 4 color:red;
</div>
<div class="mermaid cd">
flowchart LR
  subgraph Continuous Deployment
    direction LR
    M[Code] --Check In--> N[Build]
    N -- Auto --> O[Unit Tests]
    O -- Auto --> P[Dev Release]
    P -- Auto --> Q[Additional Tests]
    Q -- Auto --> R[Release]
  end
linkStyle 4 color:green;
</div>

---

![bg](./img/bg.png)
# Actions Overview

- Actions are Event Driven
- Live in the .github/workflows folder
- Workflows are defined in YAML

---

![bg right:60% w:700](./img/event-job.drawio.png)

# Workflows
- [Events](https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows) trigger workflows
- Workflows contain jobs
- Jobs contain steps
- Steps are commands or actions

---

![bg right:65% w:725](./img/job-runner.drawio.png)
# Jobs
- Workflows can contain multiple jobs
- Each job runs on a [Runner](https://docs.github.com/en/actions/using-github-hosted-runners/about-github-hosted-runners)

---

# ACT
## Run Actions Locally

<i class="fa-brands fa-github"></i>  [nektos/act](https://github.com/nektos/act)

![bg right:50% 95%](./img/act-quickstart-2.gif)

---

![bg right fit](./img/bg.png)
# DEMOS

---

# Questions

![bg auto](./img/background.jpg)
![bg](./img/owl.png)

---

# Resources

<div class="columns">
<div>

## Links

- [https://docs.github.com](https://docs.github.com)
- [https://skills.github.com](https://docs.github.com)
- [codebytes/github-actions-demos](https://github.com/codebytes/github-actions-demos)
</div>
<div>

## Follow Chris Ayers 

<i class="fa-brands fa-twitter"></i> Twitter: @Chris\_L\_Ayers
<i class="fa-brands fa-mastodon"></i> Mastodon: @Chrisayers@hachyderm.io
<i class="fa-brands fa-linkedin"></i> LinkedIn: - [chris\-l\-ayers](https://linkedin.com/in/chris-l-ayers/)
<i class="fa fa-window-maximize"></i> Blog: [https://chris-ayers\.com/](https://chris-ayers.com/)
<i class="fa-brands fa-github"></i> GitHub: [Codebytes](https://github.com/codebytes)

</div>

</div>

<!-- Needed for mermaid, can be anywhere in file except frontmatter -->
<script type="module">
  import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.esm.min.mjs';
  mermaid.initialize({ startOnLoad: true });
</script>
