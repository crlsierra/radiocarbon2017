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

## Problem set 2
Here is the description and the datasets for solving problem set 2
* Problem set description <a href="{{ site.baseurl }}/problemSet2/Problems_2.pdf"> <i class="fa fa-file" aria-hidden="true"></i></a>
* Data set on diurnal 14C in excel <a href="{{ site.baseurl }}/problemSet2/Diurnal_14C_short_course.xls"> <i class="fa fa-file-excel-o" aria-hidden="true"></i></a>
* Isoerror spreadsheet <a href="{{ site.baseurl }}/problemSet2/isoerror_spreadsheet.xls"> <i class="fa fa-file-excel-o" aria-hidden="true"></i></a>

## Practical labs
We have today two time blocks for the practical labs. Here is the assignment according to badge colors:

### Session 1 from 13:30 to 15:00
* Accelerator tour lab: Yellow group
* Gas and soil sampling: Red group
* Combustion lab: Green group
* Sample preparation, HPLC and GC prep: Blue group

### Session 2 from 15:30 to 17:00
* Accelerator tour lab: Blue group
* Gas and soil sampling: Yellow group
* Combustion lab: Red group
* Sample preparation, HPLC and GC prep: Green group
