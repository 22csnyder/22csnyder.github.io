---
title: "2012--2015: Motivated Beginner, part 2"  
excerpt: "I won an image processing competition using a neural network based that was the original impetus behind my life-long passion for A.I. research. <img src='/images/ss-1_lip_reading.png'>"
collection: portfolio
author_profile: false #true
---
<!-- ---
title: "Portfolio item number 2"
excerpt: "Short description of portfolio item number 2 <br/><img src='/images/500x300.png'>"
collection: portfolio
--- -->

#TODO add git repo



## Lip-Reading Image Processing Class Project (2014)
I used the Theano (an OG A.I. library) Python module to train 2 models: first, a frame-wise embedding optimized for compression only, then a sequential RNN classifier of that embedded vector sequence optimized for class predictiorn. For data, I wrote a video capture script to generate my own labeled video data of ~10 of no-audio pronounciation of these vocabulary words, only about 30x each. 

I had to first auto-crop the images containing faces using "well-known" Haar cascade classifiers off the shelf from OpenCV. These are tuned to identify spatially ears, nose, mouth etc, which was sufficiently reliable to hand-write logic for identification of the mouth region for lip reading modeling. 

<img src="/images/ss-1_lip_reading.png">

To my great surprise, the model learned to predict with >99% accuracy on my first try without modification (on the test set, and yes I checked for bugs :smile:).

<img src="/images/ss-2_lip_reading.png">

In summary
---
1.	Awarded “Ram’s Horn Best Project,” a competition for the best project in the class.
2.	Even though my dataset was somewhat simplistic and modeled a very limited vocabulary, I did not see anything in the literature using neural networks for lip-reading at this point.

Code Quality
---
I did not have good model versioning and evaluation utilities, which limited reproducibility, as I could not get a live demo working in time.

