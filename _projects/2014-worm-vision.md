---
title: 'C. elegans Neuron Segmentation'
date: 2014-01-01
time_period: 2013-2015
published: true
description: python GUI for 3D neuron segmentation
categories: Image Processing, GUI
disciplines: Neuroscience, Image Processing
thumbnail: /projects/2014-worm-vision/ss-1_worm-vision_thumbnail.png
intro: In my first PhD project, I developed a GUI that would allow a user to segment 3D images of neurons. The user would draw a line around the neuron, and the program would segment the neuron based on the user's input.
content_layout: 
---

# Segmentation of 3D Neuron Activations through Interactive GUI
## Description
This project was a collaboration with the [BRAIN Initiative](https://www.braininitiative.org/) and the [Allen Institute for Brain Science](https://alleninstitute.org/). The end goal is to use neuron pixel intensities as proxies for neuron activation to monitor nervous system drug effects in a high throughput microfluidic drug testing platform.


Rather than segment each neuron outright, the determination of which was often subjective anyway, I decided to allow the user to determine these (3D) segmentation boundaries quickly using a GUI. The user would draw a line around the neuron, and the program would segment the neuron based on the user's input. Example below:

<video controls poster="/images/projects/2014-worm-vision/ss-1_worm-vision_gui_15s.png" style="width:100%; max-width:100%;">
	<source src="/images/projects/2014-worm-vision/sr_worm-vision_gui_15s.mp4" type="video/mp4">
</video>


## Approach
The way I approached the 3D segmentation was to allow the use to manipulate a smoothness penalty on the mesh that penalized higher order terms in the fourier [spherical harmonic](https://en.wikipedia.org/wiki/Spherical_harmonics) series representation of the segmentation mesh radius function. For the GUI, I paired a global map (left) view with a contrast enhanced, zoom view (middle) to give a sense of where the given neuron was within the worm globally, while using a different brightness/contrast adapted to each local view.

### Computational Challenges
It turned out that the spherical harmonic computation as implemented in the scipy special functions library was far too slow (at least at that time) for smooth interaction. In particular, I needed to write my own C++ implementation of the mesh determination functions.

## Python and C

One useful tool I learned to this end was [Cython](https://cython.org/)--As the name suggests, it is a hybrid of python and C. It allows you to write C code that is compiled into a python .so file that can be imported just like a module. In addition to the .cpp and .h files, it requires a .pyx file that explains how the C functions and data types map to python types. Another useful tool I became familiar with is "OpenMP" which is a commonly used means of multi-threading in C level code, which is notoriously difficult to debug for beginners.

One lesson that was influential in my decision to code in python exclusively for data-science projects going forward is that: even if one needs high performance code, python may still be the best language for the *project*, with a few lines of lower level code compiled once, which can handle the rate-limiting steps in the computation.
