---
date: 2020-03-01
time_period: 2020
published: true
title: Interpretable Factorization of ECG AI Classifiers
description: Leverages the logical circuit decomposition introduced in my previous project to interpret the AI classifiers for ECG signals. 
collections: papers, projects
categories: ECG, Interpretability
disciplines: Clinical Informatics, Machine Learning, AI
# thumbnail: /projects/2020-ecg-classifier/thumbnail.png
thumbnail: /projects/2020-ecg-classifier/fig5-thumbnail.png
intro: |
  <a href="https://github.com/22csnyder/tropical-ecg-dnn">GitHub Repo: ECG Classifier Interpretable Factors </a><br>
  Using the logical-circuit decomposition introduced in the previous project, [Deep Logical Circuits Project]({% link projects/2020-deep-logical-circuits %}), I applied the method to interpret the AI classifiers for ECG signals. The ECG AI classifiers were trained to classify ECG signals as normal or abnormal. The logical circuit decomposition of the ECG AI classifiers revealed interpretable factors that were responsible for the classification of the ECG signals. The interpretable factors were combinations of combinations of intermediate classifiers that were either true or false. The logical circuit decomposition of the ECG AI classifiers provided insights into the classification of the ECG signals and helped establish trust in the AI classifiers.

# permalink:
# excerpt:

content_layout:
  - section_layout: 1col
    images:
      - caption: Dataset -- Physionet 2017 Challenge
        description: data processing
        url: '/projects/2020-ecg-classifier/ss-physionet17-dataset_wide.png'

      - caption: 
          Architecture of the network. For the convolutional layers (Conv), we use kernel sizes of 6 and 4 for the first and second halves, respectively, and we use strides of 2. The max pooling (MP) layers all had pool sizes of 2 and strides of 1. Final layers of the neural network were fully-connected (FC).
        description: AI Model -- Architecture
        url: /projects/2020-ecg-classifier/ss-architecture_wide_bare.png

  - section_layout: 2col
    images:
      - caption: |
          Many ecg test-set examples colored according to model prediction.<br> Lines are blended using alpha<1.0 and thin lines -- opacity implies substantial overlap.
        description: (Many) ECG Signals Dataset Rendering
        url: /projects/2020-ecg-classifier/fig4-labeled-waveform_axes.png
      - caption: Single (+) and (-) ecg pair for demonstration. Illustrated in the manner as on the left. 
        description: Single ECG Signal Rendering
        url: /projects/2020-ecg-classifier/fig-labeled-waveform-pair.png
  - section_layout: text
    content: |
      In this project therefore, our ecg overlay illustrations are our means of formulating "intuition" and "narrative" for each component black box and the role that it plays. In the following decomposition, I chose to only overlay the samples for which that component's evaluation was critical for the final decision. In this way the interpretation is not of each component classifier in isolation, but of the classification decisions it makes which are important relative to the overall model behavior. [The previous project showed the following decomposition but for MNIST dataset 0-4 vs 5-9 classifiers](/path-math.com/projects/2020-deep-logical-circuits)

      However, unlike the previous project, there are no obvious subclasses *a priori* of ECG signals which naturally compose "abnormal" ecg signals as naturally as "0,1,2,3, and 4" compose the category "less than 5". The question remaining to ask is whether we can still recover meaningful subcategories of data based on the component model classification behavior. Unlike the counting numbers, we won't immediately have names for each of these subcategories. <sup id="fnref1"><a href="#fn1" class="footnote-ref">1</a></sup>






  - section_layout: 2col
    images:
      - caption: 
          The logical circuit decomposition of the ECG AI classifiers provided insights into the classification of the ECG signals and helped establish trust in the AI classifiers, revealing interpretable factors that were responsible for the classification of the ECG signals. The interpretable factors were combinations of intermediate classifiers whose illutrations demonstrate the common features of waveforms ruled as abnormal (red) or normal (blue)  by said component.
        description: Interpretable Factors
        url: /projects/2020-ecg-classifier/fig5-visual-explaination.png

      - caption: 
          How one should interpret a single black box component from its illustrated image--An Example. Wave peaks and troughs where blue is notably absent are common features of samples classified as abnormal by said component. 
        description: Example Interpretation of Classifier from Waveform Illustration
        url: /projects/2020-ecg-classifier/fig4-labeled-waveform.png
  - section_layout: text
    content: |
      Notice how component **b.** seems to classify as abnormal exagerated ST-Depression. Apparently some of the ECGs were inverted due to volage polarity being switched. Even though this had an unanticipated effect on the peak-alignment, the results and conclusions are still valid. In fact, notice how each component tends to be "responsible" for classifying either the upright or the inverted signals correctly. 
---




## Conference Paper
### Machine Learning for Healthcare, 2020
<object data="/files/projects/2020-ecg-classifier/mlhc2020-ecg-project.pdf" type="application/pdf" style="width: 100%; height: 500px;">
    <p>Your browser does not support PDFs. Please download the PDF to view it: <a href="/files/projects/2020-ecg-classifier/mlhc2020-ecg-project.pdf">Download PDF</a>.</p>
</object>



<div class="footnote" id="fn1">
  <a href="#fnref1" class="footnote-backref">[1]</a>
  <p>With enough data, one would hope to be able to identify specific characteristic wave patterns associated with, say, Wolf-Parkinson-White syndrome. But, in reality, this condition is so rare that one would need far more data, and unless the model has to go out of its way to fit these data, it's unlikely to structurally reflect the abnormal subdivisions we use in our taxonomy. </p>
</div>
