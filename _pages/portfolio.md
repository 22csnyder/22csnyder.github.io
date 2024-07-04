---
layout: archive
title: "Portfolio"
permalink: /portfolio/
author_profile: false #true
---

<!-- 
Change log:
This page used to be:
.html instead of .md 

-->

Here I attempt in 2024 a summarization of the past 12 years of my journey as a data-scientist.
This is in response to an application requirement from Clinical Informatics Fellowship programs, but it is also a welcome opportunity to systematize how I record and communicate my works.

To keep things high-level, I want to look at 3 distinct eras, each with its own theme and pair of projects. 

```py
print "Hello World"
```





<!-- hierarchy is /_portfolio/portfolio-1.md, portfolio-2.html -->
{% include base_path %}

{% for post in site.portfolio %}
  {% include archive-single.html %}
{% endfor %}

