# path-math.com

Personal portfolio made with [Jekyll](https://jekyllrb.com/)

## Setup

This site runs on Jekyll, an opensource static site generating platform.

### Quick Setup (Recommended)

**For a new computer or fresh setup, run:**
```bash
make setup
```

This will:
- Install rbenv if needed
- Install Ruby 3.3.3 if needed
- Set up the correct Ruby environment
- Install all dependencies

**Then start the server:**
```bash
make serve
```

Visit http://localhost:4000/ in your browser.

### Manual Setup

If you prefer to set up manually:

1. Clone or download this project and navigate to the project directory

2. Install rbenv (if not already installed):
   ```bash
   brew install rbenv ruby-build
   ```
   Then add to your shell config (`~/.zshrc` or `~/.bashrc`):
   ```bash
   eval "$(rbenv init - zsh)"  # or bash if using bash
   ```

3. Install Ruby 3.3.3:
   ```bash
   rbenv install 3.3.3
   rbenv local 3.3.3
   ```

4. Install dependencies:
   ```bash
   bundle install
   ```

5. Start the server:
   ```bash
   bundle exec jekyll serve
   ```

### Available Make Commands

- `make setup` - Run the automated setup script
- `make install` - Install dependencies (requires rbenv setup)
- `make serve` - Start the Jekyll development server
- `make build` - Build the site without serving
- `make clean` - Clean generated files
- `make check-ruby` - Verify the correct Ruby version is being used
- `make help` - Show all available commands


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

<!-- I was getting a weird bundle error on revisiting my project after awhile.  -->
The following worked for me:

```
rm -rf .jekyll-cache/
rm Gemfile.lock
eval "$(rbenv init - zsh)"  # or bash if using bash
rbenv local 3.3.3
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
rbenv install 3.3.3 
rbenv local 3.3.3
eval "$(rbenv init - zsh)"  # or bash if using bash

bundle install  # This installs bundler and jekyll automatically
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