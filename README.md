# Philsensus

Philsensus is my personal blog, philosophy +consensus = philsensus. The objective of the blog is to share my knowledge in  an easy-to-understand way. To achieve my purpose, I decided to use the following tech stack:

  - **Jekyll** (which leverages **Ruby** for custom plugins and **Liquid** for templating language)
  - **JavaScript** (jQuery and other libraries necessary)
  - Note that I did not use any framework for front-end part such as Twitter Bootstrap.

I developed my own theme for my needs, I might publish this to Jekyll theme repository in future.

This repository has mainly two branches: master and source branch. More explanations as to why I had to do this is explained on my website.

**Custom plugins** in _plugins folder can be used and modified by others. Note that these plugins are written in Ruby.

### Installation

To run the source file locally please go to the root folder and enter the following:

```sh
$ bundle install
$ jekyll serve
```
This should start the local server on port 4000 (usually).

### Plugins

Philsensus uses the following custom plugins

* Localize
* Typecheck
* Svgicons

### Development

To contribute to the localization, please modify `localization.json` file.
