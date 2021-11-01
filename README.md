# [design.wikimedia.org/blog](https://design.wikimedia.org/blog)

## Prerequisites

* [Ruby](https://www.ruby-lang.org/) (Ruby 2.6+)
* [Bundler](https://bundler.io/) (if missing, install with `gem install bundler`)

## Development

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

### Deployment to production server
Design blog server points to the '_site/' directory, so Jekyll needs to build
in order to show the latest output.

* To build the production version to commit to Git and deploy to live server:
  ```
  bundle exec jekyll build -d _site/
  ```
