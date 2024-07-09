---
date: 2014-01-01
time_period: 2014
published: true
title: 'Lipreading with Neural Networks'
description: Best-in-Class lipreading model Classifies  Spoken Words without Audio
# collections:
categories: Machine Learning, Image Processing
disciplines: Neural Networks, Computer Vision
media:
ownership:
client:
thumbnail: /projects/2014-lipreading/thumbnail (me).png
intro: |
  I used the Theano (an O.G. A.I. library) Python module to train 2 models: first, a frame-wise embedding optimized for compression only, then a sequential RNN classifier of that embedded vector sequence optimized for class prediction. For data, I wrote a video capture script to generate my own labeled video data of ~10 of no-audio pronounciation of these vocabulary words, only about 30x each. 

content_layout:
  - section_layout: 2col
    images:
      - caption:
        description: #'Description of the image'
        url: /projects/2014-lipreading/ss-1_lip_reading.png
        width:
        height:
      - caption:
        description:
        url: /projects/2014-lipreading/ss-2_lip_reading.png
        width:
        height:
---


<!-- ## Lip-Reading Image Processing Class Project (2014) -->

## Methodology
I had to first auto-crop the images containing faces using "well-known" Haar cascade classifiers off the shelf from OpenCV. These are tuned to identify spatially ears, nose, mouth etc, which was sufficiently reliable to hand-write logic for identification of the mouth region for lip reading modeling. 

<!-- <img src="/images/projects/2014-lipreading/ss-1_lip_reading.png"> -->

To my great surprise, the model learned to predict with >99% accuracy on my first try without modification (on the test set, and yes I checked for bugs :smile:).

<!-- <img src="/images/projects/2014-lipreading/ss-2_lip_reading.png"> -->

Conclusions
---
1.	Awarded “Ram’s Horn Best Project,” a competition for the best project in the class.
2.	Even though my dataset was somewhat simplistic and modeled a very limited vocabulary, I did not see anything in the literature using neural networks for lip-reading at this point.

Code Quality
---
I did not have good model versioning and evaluation utilities, which limited reproducibility, as I could not get a live demo working in time.

