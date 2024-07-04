---
title: "2012--2015: Motivated Beginner"  
excerpt: "During this of medical school and early PhD, I taught myself to be proficient python and c++ coding and contributed to several image processing projects.
<img src='/images/T12_relaxivity_segment.jpg'>
Pictured above is MRI image, segmented to automatically identify pixel intensities that reflect the dependence of contrast-agent on T12 relaxation times."
collection: portfolio
author_profile: false #true
---

###This is a summary of my first era as a data scientist. 
I was a motivated beginner without really any guidance or perspective, which was tricky. A common theme was that identifying the correct tool for the job was frequently difficult. StackOverflow will do its utmost to answer your esoteric question, never bothering to mention that you are asking the wrong question to begin with. 

Nevertheless, I recorded several successes in image processing coding. 

## Segmentation of 3D Neuron Activations through Interactive GUI

This project was a collaboration with the [BRAIN Initiative](https://www.braininitiative.org/) and the [Allen Institute for Brain Science](https://alleninstitute.org/). I was tasked with developing a GUI that would allow a user to segment 3D images of neurons. The user would draw a line around the neuron, and the program would segment the neuron based on the user's input.

<!-- [gui video](sr_worm-vision_gui_15s.mov) -->
<!-- [gui video](sr_worm-vision_gui_15s.mp4)  -->
<!-- TODO replace with video -->

<img src='/images/ss-1_worm-vision_gui_15s.png'>
<!-- -----------------------
<video> <source="/images/sr_worm-vision_gui_15s.mp4" type="video/mp4">
</video> --> #TODO fix video

The way I approached the 3D segmentation was to allow the use to manipulate a smoothness penalty on the mesh that penalized higher order terms in the fourier [spherical harmonic](https://en.wikipedia.org/wiki/Spherical_harmonics) series representation of the segmentation mesh radius function. For the GUI, I paired a global map (left) view with a contrast enhanced, zoom view (middle) to give a sense of where the given neuron was within the worm globally, while using a different brightness/contrast adapted to each local view.

One problem that came up is that the spherical harmonic computation as implemented in the scipy special functions library was far too slow for smooth interaction. In short, I needed to write my own. 

One useful tool I learned to this end was cython--As the name suggests, it is a hybrid of python and C. It allows you to write C code that is compiled into a python .so file that can be imported just like a module. In addition to the .cpp and .h files, it requires a .pyx file that explains how the C functions and data types map to python types. Another useful tool I became familiar with is "OpenMP" which is a commonly used means of multi-threading in C level code, which is notoriously difficult to debug for beginners.

One lesson that was influential in my decision to code in python exclusively for data-science projects going forward is that: even if one needs high performance code, python may still be the best language for the *project*, with a few lines of lower level code compiled once, which can handle the rate-limiting steps in the computation.

```
    void return_pixel_membership(double* Radius,double* I,
            long std_size,long ref_size,
            long* ref_shape,long* std_shape,
            long* ref_Dcrt_Angle,
            double* ref_Distance,
            long* int_Center,long* ref_origin,
            long n_threads,
            //Return Values
            long* bool_image){//assume bool image starts out as zeros
    omp_set_num_threads(n_threads);
    size_t* prefix;
    double interior_intensity=0;
    long interior_count=0;
        int ithread=omp_get_thread_num();
        int nthreads=omp_get_num_threads();
        std::vector<point> bdry_private;
        #pragma omp for schedule(static) nowait collapse(3)
        //#pragma omp for schedule(dynamic) nowait collapse(3)//seems slower 10x than static
        for(int i=0;i<ref_shape[0];i++){
        for(int j=0;j<ref_shape[1];j++){
        for(int k=0;k<ref_shape[2];k++){
            int i2=i+int_Center[0]-ref_origin[0];
            int j2=j+int_Center[1]-ref_origin[1];
            int k2=k+int_Center[2]-ref_origin[2];
            if(i2>0 && i2<std_shape[0] &&
                j2>0 && j2<std_shape[1] &&
            k2>0 && k2<std_shape[2])
            {
                long ref_flat=k+j*ref_shape[2] + i*ref_shape[2]*ref_shape[1];		
                long std_flat=k2+j2*std_shape[2]+i2*std_shape[2]*std_shape[1];
                int ang=ref_Dcrt_Angle[ref_flat];
                double R=Radius[ang];
                double dist=ref_Distance[ref_flat];
                
                if(dist<R){
                    interior_count++;
                    interior_intensity+=I[std_flat];
                    bool_image[std_flat]=1;//set to 1 if inside
                }
            }
        }}}
    }
```

Stylistically, the code is representative of the python code as well for this era. For loops are nested, and the code is not particularly modular. The code is not documented, and the variable names are not particularly descriptive. In short, I could write code technically impressive code, but I did not yet appreciate importance of code readability or maintainability.


