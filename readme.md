# path-math.com

Personal portfolio made with [Jekyll](https://jekyllrb.com/)

## Setup

This site runs on Jekyll, an opensource static site generating platform.

- Clone or download a zip of this project to your computer and navigate to the
  project directory in your terminal
  
- Make sure Ruby is installed, to check if it is, run:
  ```
  ruby -v
  ``` 
  For more information about installing Ruby, refer to the [Ruby installation ](https://www.ruby-lang.org/en/documentation/installation/).

- Install the Jekyll and bundler [gems](https://jekyllrb.com/docs/ruby-101/#gems) from the commandline:
  ```
  gem install jekyll bundler
  ```
  For more information about installing Jekyll, refer to the [Jekyll quickstart guide](https://jekyllrb.com/docs/quickstart/)


- Install Gem dependencies for the project by running:
  ```
  bundle install
  ```
  
- To run the server in your local environment run:
  ```
  bundle exec jekyll serve
  ```

- Go to http://localhost:4000/ in your browser


## General information

### About
- This site is a personal portfolio site for Christopher Snyder
- Static website

### References for Source Code
- Forked from Matthew Grey's Excellent personal [page](https://himatt.com)
- That project was forked from [academicpages](https://academicpages.github.io/) on which both are based
<!-- - Optimised for efficient [PageSpeed Insights benchmarks](https://developers.google.com/speed/pagespeed/insights/?url=himatt.com) (still more to do in this space) -->
<!-- - No Jekyll plugin dependancies (previously used Bourbon and Neat, now uses CSS Grid and CSS Custom properties) -->
<!-- - Continuously deployed using Netlify -->

<!-- [![Netlify Status](https://api.netlify.com/api/v1/badges/01ca9c4b-b99d-411f-9003-9fad58ccbcf3/deploy-status)](https://app.netlify.com/sites/mattgrey/deploys) -->

## Licenses

### Underlying source code

Under the [GNU General Public License v3.0](LICENSE), you can adapt and use the source code of this site (but not it's content) for personal and commercial use, so long as you retain the same license for your own project. See a quick breakdown of what you can and cant do [here](https://tldrlegal.com/license/gnu-lesser-general-public-license-v3-(lgpl-3))

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg?style=flat-square)](https://www.gnu.org/licenses/gpl-3.0)


## Troubleshooting

I was getting a weird bundle error on revisiting my project after awhile. The following worked for me:
```
rm -rf .jekyll-cache/
rm Gemfile.lock
gem install jekyll bundler
bundle install #may take a while
```
And finally serve the site:
```
bundle exec jekyll serve
```


### further

```
brew update
brew upgrade rbenv ruby-build
rbenv install 3.2.2 
```


### Content

© Christopher Snyder, path-math.com. Unauthorised use and/or duplication and
adaptation of this material (all image formats, text and additional media files) without express and written permission from this site’s author and/or owner is strictly prohibited. Excerpts and links may be used, provided that full and clear credit is given to Chris Snyder and/or path-math.com with appropriate and specific direction to the original content.


<!-- 
## Ruby
### Notes on Ruby Environment Management

#Notes: 
#I had to download ruby 3.3.3 but it wasn't working globally. 
#I used rbenv to manage the ruby versions. chruby looks like another good option.

#
#brew install rbenv ruby-build
#==> Installed ruby-3.3.3 to /Users/christophersnyder/.rbenv/versions/3.3.3
#
# rbenv global 3.3.3   # set the default Ruby version for this machine
# # or:
# rbenv local 3.3.3   # set the Ruby version for this directory
# rbenv install -l  # list all available Ruby versions

#bundle install # install the gems listed in the Gemfile
# install in folder: /Library/Ruby/Gems/3.3.0/gems
#-------------------------------- -->