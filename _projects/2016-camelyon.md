---
date: 2016-01-01
published: true #toggles visibility?
title: "Camelyon Breast Cancer Segmentation Challenge"

categories: photography
collection: projects
disciplines: Photography, Photo manipulation
media: Book
ownership: Personal
client:
time_period: 2016
# thumbnail: "/projects/abstract-photography/plist-abstract-photography.jpg"

thumbnail: "/projects/2016-camelyon/fig-camelyon2016_histology_segmentation.png"

# permalink: /projects/breast-cancer-segmentation
# excerpt: 'A competition to classify pixels in histopathologic scans of breast tissue, learning from polygon hand-drawn annotations from pathologists.'
description: 'Histopathologic Pixel-Level Segmentation Competition'
# venue: 'Journal 1'
# slidesurl: 'http://academicpages.github.io/files/slides1.pdf'
# paperurl: 'http://academicpages.github.io/files/paper1.pdf'
# citation: 'Your Name, You. (2009). &quot;Paper Title Number 1.&quot; <i>Journal 1</i>. 1(1).'


intro: |
  A competition to classify pixels in histopathologic scans of breast tissue, learning from polygon hand-drawn annotations from pathologists.

content_layout:
  - section_layout: 1col-10-centered
    images:
      - caption:
        description: 'Taken in a nuclear bunker'
        url: '/projects/abstract-photography/abstract-1.jpg'
        width:
        height:

  - section_layout: 2col
    images:
      - caption:
        description: 'Tate modern'
        url: '/projects/abstract-photography/abstract-2.jpg'
        width:
        height:
      - caption:
        description: 'London South Bank Wharf'
        url: '/projects/abstract-photography/abstract-3.jpg'
        width:
        height:

  - section_layout: 2col
    images:
      - caption:
        description: 'Bridge in North Wales'
        url: '/projects/abstract-photography/abstract-4.jpg'
        width:
        height:
      - caption:
        description: 'British Museum'
        url: '/projects/abstract-photography/abstract-5.jpg'
        width:
        height:

  - section_layout: 1col-10-centered
    images:
      - caption:
        description: 'Winchester back streets'
        url: '/projects/abstract-photography/abstract-6.jpg'
        width:
        height:
---

The contents above will be part of a list of publications, if the user clicks the link for the publication then the contents of section will be rendered as a full page, allowing you to provide more information about the paper for the reader. When publications are displayed as a single page, the contents of the above "citation" field will automatically be included below this section in a smaller font.

### More information
Here is something we segmented. We simply trained a pixelwise classifier on tiled sections of the image.

<img src="/projects/2016-camelyon/fig-camelyon2016_histology_segmentation.png" alt="Breast Cancer Segmentation" style="width:100%">
"A pair of image and segmentation mask from the Camelyon16 dataset segmented by a neural network. Left: the original H&E image, overlayed by the ground truth annotations (blue). Right: the segmentation mask produced by the neural network."