---

title: RAG Chat
description: 'Chat with a PDF - A Working Demo'
author: 
date: 2023-11-27
time_period: 2023
published: true
collections: 
tags: llms, ai, python
categories: Exploratory, Projects, Demos
disciplines: Large Language Models, AI, python

github_repo: 22csnyder/ragchat
thumbnail: /projects/2023-ragchat/thumbnail_wt-frame.png
intro: |
  <a href="https://github.com/22csnyder/ragchat"> GitHub Repo (Working Demo) </a><br>
  This is a proof of concept demo I made and presented at Informatics rounds in Nov 2023. It demonstrates the utility of Retrieval Augmented Generation (RAG) in a chat interface as a means of interacting with (in the case of the sample data provided) facilitating interaction with laboratory documentation and residency procedure manuals.

  In this demo, the user drag-and-drops a pdf document onto a streamlit app, then also typing in a question. The app then uses the pdf as context to answer the question. The app parses and digests into context that can be provided to the wrapped (openai) LLM model. Results are promising and suggest that RAG could be a useful tool for natural-language "as a database".


# permalink:
# excerpt:
#       App Demo: <video controls loop autoplay src="/files/projects/2023-ragchat/sr-smear-contacts.mp4" title="Q: Who You Going to Call ?" style="width: 50%; text-align: center;"></video>
# - caption: "Q: Who You Going to Call ?"
# description: transforming documentation into educational study materials directly
# url: /files/projects/2023-ragchat/sr-argatroban.mp4

content_layout:
  - section_layout: text
    content: |
      <div style="text-align: center;">
      <p> <h2>Demo PDF Chat</h2> </p>
      <video controls loop autoplay src="/files/projects/2023-ragchat/sr-argatroban.mp4" style="width: 50%;"></video>
      </div>
  - section_layout: text
    content: |
          <div style="text-align: center;">
          <p> <h2>Two Q&A Samples</h2> </p>
          </div>
  - section_layout: 2col
    images:
      - caption: <span style="color:#228B22;">Application-- a resident late at night unsure which attending to call for a particular issue.</span>
      # - caption: <span style="color:#8B0000;">Application-- a resident late at night unsure which attending to call for a particular issue.</span>
        description: "Q: Who You Going to Call ?"
        url: /projects/2023-ragchat/ss-smear-contacts.png

      - caption: <span style="color:#228B22;">Application-- Transforming documentation into educational study materials directly</span>
        description: "Q: Which Anticoagulants Have the Shortest Half-Life ?"
        url: /projects/2023-ragchat/ss-argatroban.png
  - section_layout: 1col
    images: 
      - caption: <h2> The AI responses are essentially correct. *Note:* In some experiments the AI differentiates between  *IV* dabigatran and *oral* dabigatran which is pertinent!, explaining that the oral form has a half-life of 12-17 hours.</h2>
        description: an explanation of the AI response
        url: /projects/2023-ragchat/ss-bar.png

  - section_layout: 1col
    images: 
      - caption:
        description:
        url: /projects/2023-ragchat/ss-bar.png

---


<!-- #### Saved Q&A Text Examples -->

<div style="text-align: center;">
<p> <h2>Additional Q&A Text Examples</h2> </p>
</div>
More historical examples of interest can be seen (with explainations of the questions and answers) at github repo above at [/_results/sample_qa.md](https://github.com/22csnyder/ragchat/blob/main/_results/_files/sample-qa.md)

---
# Background 

While foundation Large Language Models (LLMs) excel at a broad range of non-technical domain tasks, they often struggle in deployment in niche (e.g. institution specific) situations as out-of-dataset challenges inevitably arise. The first solution proposed was to "fine-tune" the LLM model: to do the same as in the preparation of the foundation model, but with training data supplemented strategically with specialized task examples. 

Interestingly, it was discovered that attention over a crafted context could supplement for training, as data-scientists augmented the language generation process by allowing attention (or at least initialization) over instructive corpora. This represented an interesting paradigm shift as the model itself was always previously--as an identify and a means of training--synonymous with its weights which defined the model. Now, the learned tasks could be augmentated without reference to the parameters at all!

When entire corpora are of relevance in general, one hopes that each individual question only requires a subset of that context that can be retrieved as per relevance to each question, hence Retrieval Augmented Generation (RAG).

By this writing in 2024, chat.openai allows one to upload a pdf (e.g. a resume) and ask questions about it, though no such feature existed at time of the original project summarized here. 

This is a working demo of the chat with a pdf feature. It's purpose was to demonstrate the explore and demonstrate the utility and practicallity of RAG as a novel tool for context-aware language modeling.