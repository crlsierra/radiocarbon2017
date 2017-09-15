---
layout: post
title: The atmosphere system
date: 2017-08-27 13:32:20 +0300
description: We will focus on studying radiocarbon dynamics in Earth's atmosphere
img: post-5.jpg # Add image post (optional)
tags: [Wednesday, Sep 27]
author: # Add name author (optional)
---

Heather Graven will join us today for two lectures on atmospheric radiocarbon. We will work on problems sets and on the practical labs. 

## Day schedule

{% assign wednesday = site.data.radiocarbonCourseProgram | where:"Day", "Wednesday" %}
{% for block in wednesday %}
<p>{{block.Time}}, {{block.Title}} {% if block.Instructor %} | <b>{{block.Instructor}}</b> {% endif %} </p>
{% endfor %}


