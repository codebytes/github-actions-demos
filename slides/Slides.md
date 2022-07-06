---
marp: true
theme: default
footer: '@Chris_L_Ayers - https://chrislayers.com'
style: |
  .columns {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 1rem;
  }

---

![bg](./img/bg.png)
# CI/CD with GitHub Actions

---

![bg left:40%](./img/portrait.jpg)

## Chris Ayers
### Senior Customer Engineer<br>Microsoft

- Twitter: @Chris\_L\_Ayers
- LinkedIn: - [chris\-l\-ayers](https://linkedin.com/in/chris-l-ayers/)
- Blog: [https://chrislayers\.com/](https://chrislayers.com/)
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

Github uses YAML for workflows
</div>
<div>

| Feature | Description |
| --- | --- |
| Lists | Start with a – |
| Key/Value | Key: value |
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
- Events trigger workflows
- Workflows contain jobs
- Jobs contain steps
- Steps are commands or actions

---

![bg right contain](./img/job-runner.png)
# Jobs
- Workflows can contain multiple jobs
- Each job runs on a Runner

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

- [https://docs.microsoft.com/en-us/users/chrisayers/collections/ykr4sj3rzmnkqz?WT.mc_id=learnlive-20220629B](https://docs.microsoft.com/en-us/users/chrisayers/collections/ykr4sj3rzmnkqz?WT.mc_id=learnlive-20220629B)
- [https://skills.github.com](https://skills.github.com)

</div>
<div>

## Chris Ayers
- Twitter: @Chris\_L\_Ayers
- LinkedIn: - [chris\-l\-ayers](https://linkedin.com/in/chris-l-ayers/)
- Blog: [https://chrislayers\.com/](https://chrislayers.com/)
- GitHub: [Codebytes](https://github.com/codebytes)

</div>

</div>

