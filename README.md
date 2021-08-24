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

* To build the production version to commit to Git and deploy:
  ```
  bundle exec jekyll build -d _site/
  ```
