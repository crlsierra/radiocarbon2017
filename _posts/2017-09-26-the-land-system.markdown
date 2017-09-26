---
layout: post
title: The land system
date: 2017-08-26 13:32:20 +0300
description: On the second day we will concentrate on the application of radiocarbon to study terrestrial systems
img: post-6.jpg # Add image post (optional)
tags: [Tuesday, Sep 26]
author: # Add name author (optional)
---

Claudia Czimczik will give a lecture on the terrestrial biosphere, and Axel Steinhof will talk about the AMS method. 
In the afternoon and in the evening students will present their own research. 

## Day schedule

{% assign tuesday = site.data.radiocarbonCourseProgram | where:"Day", "Tuesday" %}
{% for block in tuesday %}
<p>{{block.Time}}, {{block.Title}} {% if block.Instructor %} | <b>{{block.Instructor}}</b> {% endif %} </p>
{% endfor %}


<br>

## Lecture slides
You can obtain the slides from today's lectures in the following links

| Lecture name | Instructor | Link |
|:-------------|:----------:|:------:|
| Radiocarbon in the land system | Claudia Czimczik | <a href="{{ site.baseurl }}/lectures/Czimczik_Land.pdf"> <i class="fa fa-file" aria-hidden="true"></i></a>  |
| Tree reserves | Jan Muhr | <a href="{{ site.baseurl }}/lectures/Muhr_tree_reserves.pdf"> <i class="fa fa-file" aria-hidden="true"></i></a> |
| Dating | Axel Steinhof | |
