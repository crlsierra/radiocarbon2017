---
layout: post
title:  Radiocarbon and the global C cycle
date:   2017-08-25 13:32:20 +0300
description: Introduction to radiocarbon and the global C cycle
img: post-4.jpg # Add image post (optional)
tags: [Monday, Sep 25]
author: # Add name author (optional)
---

On the first day of the course we will learn about basic concepts of radiocarbon and earth system science, in particular the global carbon cycle, how to report radicarbon measurements, how to date organic material, and applications for tree-ring research. 

## Day schedule

{% assign monday = site.data.radiocarbonCourseProgram | where:"Day", "Monday" %}
{% for block in monday %}
<p>{{block.Time}}, {{block.Title}} {% if block.Instructor %} | <b>{{block.Instructor}}</b> {% endif %} </p>
{% endfor %}


