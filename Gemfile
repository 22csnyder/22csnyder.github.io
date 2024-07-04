#Notes: 
#I had to download ruby 3.3.3 but it wasn't working globally. 
#I used rbenv to manage the ruby versions. chruby looks like another good option.
#which you can read about here:
#https://github.com/rbenv/rbenv?tab=readme-ov-file
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
#--------------------------------


source "https://rubygems.org"

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!

gem "github-pages", group: :jekyll_plugins

# This is the default theme for new Jekyll sites. You may change this to anything you like.
# Supported themes: https://pages.github.com/themes/
gem "minima"


# If you want to use Jekyll native, uncomment the line below.
# To upgrade, run `bundle update`.

# gem "jekyll"

gem "wdm", "~> 0.1.0" if Gem.win_platform?

# If you have any plugins, put them here!
group :jekyll_plugins do
  # gem "jekyll-archives"
  gem "jekyll-feed"
  gem 'jekyll-sitemap'
  gem 'hawkins'
  gem "webrick", "~> 1.8"
end
