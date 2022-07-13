# [design.wikimedia.org/blog](https://design.wikimedia.org/blog)


<!-- TOC GFM -->

* [Prerequisites](#prerequisites)
* [Running locally](#running-locally)
* [Deploying to production](#deploying-to-production)
* [Development](#development)
  * [Ignored assets](#ignored-assets)
  * [Link attributes](#link-attributes)

<!-- /TOC -->

## Prerequisites

* [Ruby](https://www.ruby-lang.org/) (Ruby 2.6+)
* [Bundler](https://bundler.io/) (if missing, install with `gem install bundler`)

## Running locally 

* Install Jekyll and plugins:
  ```
  bundle install
  ```

* Update Jekyll and plugins versions:
  ```
  bundle update
  ```

* Start a Jekyll server for local development at at <http://localhost:4000/blog/> (automatically watches for changes and updates in real-time):
  ```
  bundle exec jekyll serve
  ```

## Deploying to production
Design blog server points to the '_site/' directory, so Jekyll needs to build
in order to show the latest output.

* To build the production version to commit to Git and deploy to live server:
  ```
  bundle exec jekyll build -d _site/
  ```

## Development

### Ignored assets
Jekyll ignores files and directories that are prefixed by `_` and everything else is copied to `_site`.

`_src` directories inside `assets/` contain source assets used to generate the assets that go on the site.

### Link attributes

The Markdown syntax `[Name](url){:target='_blank' rel='nofollow'}` can be used to add attributes to the link element.
Note that single quotes are required when Markdown is rendered inside a Jekyll include because the build will fail when using double quotes or raw HTML inside a variable.

