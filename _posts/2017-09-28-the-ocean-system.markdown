---
layout: post
title:  The ocean system
date:   2017-08-28 13:32:20 +0300
description: We will study radiocarbon applications in oceanic sciences, and will get an introduction to modeling
img: post-1.jpg # Add image post (optional)
tags: [Thursday, Sep 28]
author: Adam Neilson # Add name author (optional)
---

Brett Walker will give a lecture on the ocean. There will be a lecture on modeling radiocarbon in reservoir systems, accompanied with a practical lab. 

## Day schedule

{% assign thursday = site.data.radiocarbonCourseProgram | where:"Day", "Thursday" %}
{% for block in thursday %}
<p>{{block.Time}}, {{block.Title}} {% if block.Instructor %} | <b>{{block.Instructor}}</b> {% endif %} </p>
{% endfor %}


## Lectures
* The lecture by Brett Walker can be found here <a href="{{ site.baseurl }}/lectures/Walker_Oceans.pdf"> <i class="fa fa-file" aria-hidden="true"></i></a>
* The modeling lecture can be found here <a href="{{ site.baseurl }}/lectures/Sierra_Modeling.pdf"> <i class="fa fa-file" aria-hidden="true"></i></a>

## Modeling lab
The modeling exercise and the assignment (problem set 3), are described in the following [page]({{site.baseurl}}/modellab/).

## Practical lab
The assignment of groups for today's labs is:
* Accelerator tour lab: Green group
* Gas and soil sampling: Blue group
* Combustion lab: Yellow group
* Sample preparation, HPLC and GC prep: Red group
~

