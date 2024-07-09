---
date: 2018-01-01
time_period: 2017-2018
published: true
title: Causal Generative Adversarial Networks
description: "Exploring the ability of GANs to learn causal structure"
collections: publications
categories: Causal Inference, Generative Adversarial Networks
disciplines: Machine Learning
media:
ownership:
client:
thumbnail: /projects/2018-causalgan/thumbnail-causalgan.png
intro: |
  In this project, we explored whether an artificial neural network could learn structural causal relations, which are functions that explain observations in terms of the underlying mechanisms that generated them. We used a Generative Adversarial Network (GAN) to learn the causal structure of a simple toy dataset. The GAN was trained to generate samples from the dataset, and the discriminator was trained to predict the causal variable from the generated samples. The generator was trained to minimize the discriminator's error, and the discriminator was trained to maximize its error. The GAN was able to learn the causal structure of the dataset, and the generator was able to generate label distributions that were indistinguishable from the real data.

# permalink:
# excerpt:

content_layout:
  - section_layout: 2col
    images:
      - caption:
        description: #'Description of the image'
        url: #'/projects/abstract-photography/abstract-2.jpg'
        width:
        height:
      - caption:
        description:
        url:
        width:
        height:
---



# CausalGAN
#### The [repo](https://github.com/mkocaoglu/CausalGAN) is on my collaborators account, but you can see my contributions in the commit history.

Sometimes the structural causal variables were images themselves, whose nature and distribution, we ventured, were "caused" by the accessories (e.g.  "glasses" or "hat") adorning the faces in the dataset. We were also able to learn a label-GAN for class-conditional generative modeling, which was able to generate novel images sampled from the GAN model of the training set, conditioned on the label.[^1]

The key advantage of our method is that we are able to distinguish between "conditioning" (which is a statistical relationship) and "intervening" (which only changes causal, downstream effects). This is a key distinction, often cited for understanding the limitations of machine learning models.

## Conditioning vs. Intervention
<img src="/images/190001_intvcond_Bald=1_2x10.png">
* Top row shows the effect of intervention 'Bald=True' on the unconditional distribution of celebrity faces: as a result there are equal numbers of male and females depicted, because in our causal model of the real world, "Bald" being True or False does not cause 'Gender' to be "Male" or "Female".
* Bottom row shows the effect of conditioning on 'Bald=True' on distribution of samples of from bald celebrity faces: the samples are exclusively female, which relfects the fact that in the real world, "Bald" being True and Gender="Female" are extremely unlikely to co-occur. 
* i.e. our model is able to distinguish between a selection bias and a causal effect.


[^1]: It has to be said that the state of A.I. in generative modeling of images was far worse back then in terms of image quality. That is to say, these images are not as bad as they look _for their time_.



In terms of code quality, model reproducibility is significantly improved, which was in fact necessary because these GAN models were especially finicky and sensitive to particular parameter values. I implemented an argparse flag interface. I overdid it in one instance I think.

One of these flags enabled parallel calls to the 2x TitanX gpu's on the workstation (which I built incidentally), which was quite a technical achievement. But, I learned my lesson about keeping code high-level, and avoiding low level "hacks" that are difficult to maintain. As soon as the nvidia-drivers were updated, this functionality quickly broke and I did not have bandwidth to maintain it anymore.

