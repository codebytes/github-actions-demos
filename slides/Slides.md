---
marp: true
theme: default
footer: '@Chris_L_Ayers - https://chris-ayers.com'
style: |
  .columns {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 1rem;
  }
  .columns3 {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 1rem;
  } 
  @import 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css'
---

# CI/CD with GitHub Actions

![bg](./img/bg.png)


---

![bg left:40%](./img/portrait.jpg)

## Chris Ayers
### Senior Customer Engineer<br>Microsoft

- Twitter: @Chris\_L\_Ayers
- LinkedIn: - [chris\-l\-ayers](https://linkedin.com/in/chris-l-ayers/)
- Blog: [https://chris-ayers\.com/](https://chris-ayers.com/)
- GitHub: [Codebytes](https://github.com/codebytes)

---
![bg left](./img/bg.png)

# Agenda
- YAML
- CI / CD
- Actions Overview
- Demos

---

![bg](./img/bg.png)

<div class="columns">
<div>

# YAML
## **Yet Another Markup Language**

GitHub uses YAML for workflows
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

![bg](./img/bg.png)
# What is CI/CD?

![contain](./img/cicd.png)

---

![bg](./img/bg.png)
# Actions Overview

- Actions are Event Driven
- Live in the .github/workflows folder
- Workflows are defined in YAML

---

![bg right contain](./img/event-job.png)

# Workflows
- [Events](https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows) trigger workflows
- Workflows contain jobs
- Jobs contain steps
- Steps are commands or actions

---

![bg right contain](./img/job-runner.png)
# Jobs
- Workflows can contain multiple jobs
- Each job runs on a [Runner](https://docs.github.com/en/actions/using-github-hosted-runners/about-github-hosted-runners)

---

# ACT
## Run Actions Locally

<i class="fa-brands fa-github"></i>  [nektos/act](https://github.com/nektos/act)

![bg right:50% contain](./img/act-quickstart-2.gif)

---

![bg](./img/bg.png)
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

- Twitter: @Chris\_L\_Ayers
- LinkedIn: - [chris\-l\-ayers](https://linkedin.com/in/chris-l-ayers/)
- Blog: [https://chris-ayers\.com/](https://chris-ayers.com/)
- GitHub: [Codebytes](https://github.com/codebytes)

</div>

</div>
