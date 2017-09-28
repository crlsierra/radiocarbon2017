---
layout: home-page
title: Modeling Lab 
permalink: /modellab/
---

# Modeling radiocarbon in Earth system reservoirs: practical exercise

The objective of this practical exercise is to get you familiar with computational tools in the [R](ihttps://www.r-project.org/) programming language to model radiocarbon dynamics in reservoir models. 
We will use the [SoilR](https://github.com/MPIBGC-TEE/SoilR-exp) package for this purpose.
Although this package and some of the examples are applied to soil organic matter models, the tools can actually be applied to any model that represents the movement of matter (e.g. carbon) across reservoirs. These type of models are generally known as compartment or reservoir models. 

To complete this assignment, you only need to be familiar with the very basics of using R. No previous knowledge on the SoilR package is required. I also assume you already have R installed in your computer. 

## Install the latest version of SoilR

Open R and type the following commands:

{% highlight R %}
install.packages("devtools")
devtools::install_github('MPIBGC-TEE/SoilR-exp/pkg')
{% endhighlight %}


This will install the latest version of SoilR in your computer, which we will need to complete part of the exercise. 

In case you get an error message telling you there are missing packages, install those packages first, and then try install SoilR again.


## Run SoilR radiocarbon tutorials
I prepared three separate tutorials for this class that will get you familiar on how to run radiocarbon models. These tutorials reproduce some of the examples I presented during the lecture. Follow the tutorials in this order:

* **Introduction to radiocarbon models**: You find this tutorial in the following site: <http://www.bgc-jena.mpg.de/TEE/basics/2015/12/29/Radiocarbon-models/>
* **Multiple-pool radiocarbon models**: You find this tutorial in the following site: <http://www.bgc-jena.mpg.de/TEE/basics/2015/12/30/Multiple-Pool-Radiocarbon/>
* **Ages and transit times in linear models**: You find this tutorial in the following site: <http://www.bgc-jena.mpg.de/TEE/basics/2015/12/30/Ages-Transit-Times/>

## Assignment
Now that you are already familiar with SoilR, and the concepts of pool models, ages, and transit times, work on the following problems.

* Take the three model structures (parallel, series, feedback) from the tutorial [Multiple-pool radiocarbon models](http://www.bgc-jena.mpg.de/TEE/basics/2015/12/30/Multiple-Pool-Radiocarbon/) and run simulations until the year 2100 using the four atmospheric radiocarbon [scenarios]({{site.baseurl}}/assets/data/C14RCPscenarios.csv) described in [Graven et al. 2015](http://www.pnas.org/content/112/31/9542.abstract). For this you would need to bind the Hua2013 atmospheric curve with the new four different curves. Compare the behavior of radiocarbon for the different pools and the radiocarbon in respired CO<sub>2</sub> for the different scenarios.
* Run a new set of simulations in which all rates increase by a factor of 10% per year from the year 1990 to 2100. Compare the behavior of radiocarbon in the different pools and the respired CO<sub>2</sub>. 
* Take the three model structures (parallel, series, feedback) from the tutorial [Multiple-pool radiocarbon models](http://www.bgc-jena.mpg.de/TEE/basics/2015/12/30/Multiple-Pool-Radiocarbon/) and calculate the mean system ages, mean pool ages, and mean transit times for each of them. For this you will need to write the matrix \\(\bf A\\) and the vector \\(\bf u\\) for each of them and then apply the functions *systemAge* and *transitTime*.
* Plot the system age, pool age, and transit time density functions for each of the model structures. Compare the results for the different model structures. Discuss your results.
