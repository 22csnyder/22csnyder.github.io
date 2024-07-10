---
date: 2024-05-01
time_period: 2024-2025
published: true
title: 'Conformal Prediction for the Safe Deployment of AI Tools in Medical Coding'
description: |
  This project explores combining the flexibility of Large Language Models (LLMs) with the statistical rigor of Conformal Prediction, which is used to create a statistical model of the per-sample uncertainty in the LLM's prediction.

collections: projects, llms, posters, talks
categories: Conformal Prediction, Large Language Models
disciplines: Pathology, AI, Medical Coding

# thumbnail: "/projects/2024-conformal-cpt/api/2024-api-poster_sm.jpg"
thumbnail: "/projects/2024-conformal-cpt/api/irl-poster-sm.jpeg"

intro: |
    This project explores the use of conformal prediction to safely deploy AI tools in medical coding. The goal is to create a system that can be used to assist medical coders in their work, without replacing them. The system uses large language models to generate suggestions for codes, and conformal prediction to provide a measure of confidence in those suggestions. This allows the system to be used in a graded automation setting, where the coder can choose to accept or reject the suggestions based on their confidence level.

    In contrast with existing paradigms which hand-design rules or protocols specifying domain of application of a model or assay, in this work the inputs to which an AI application can be safely applied are determined automatically, allowing the model to abstain on the most difficult examples until the designed performance specifications can be gauranteed. This allows for a more flexible and robust system, which can adapt automatically overtime to additional use-cases as the model improves (again, with certifiable analytic validity).
---

# Related Talks and Posters

## API 2024
##### (poster session, Ann Arbor, MI, 2024)
---


## Conformal Prediction and Large Language Models for Medical Coding
<a href="/files/projects/2024-conformal-cpt/api/API Poster.pdf">
    <img src="{{ site.baseurl }}/images/projects/2024-conformal-cpt/api/API Poster.jpg" 
    alt="Conformal Prediction and Large Language Models for Medical Coding" style="width: 50%;">
</a>

<br>

## ACLPS 2024
##### (10min talk)
---

## Graded Automation: Using Conformal Prediction to Safely Deploy AI Tools in Medical Coding
<a href="/files/projects/2024-conformal-cpt/aclps/2024-aclps-slides.pdf">
    <embed src="{{ site.baseurl }}/files/projects/2024-conformal-cpt/aclps/2024-aclps-slides.pdf" type='application/pdf' style="width: 50%; height: 500px;">
</a>

