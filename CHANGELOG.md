# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).
## Unreleased
### breaking changes
  - bcs_brightbox_ruby => bcs_ruby - no need to know which ruby installer I am using

## [1.0.1] - 2016-12-24
  - Rakefile added

## [1.0.0] - 2016-12-15
### Changed
  - bcs-brightbox-ruby => bcs_brightbox_ruby
    - chef prefers underscores https://docs.chef.io/ruby.html
  - removed gem installation of backup - leave it to backup
  - removed .gemrc creation - really a bcs_user requirement

## [0.0.4] - 2016-08-16
Ruby 2.2 => 2.3

## [0.0.3] - 2015-06-16
### Added
backup gem added to default gem installation.

## [0.0.2] - 2015-06-15
### Added
gemrc - under bcs-brightbox which installs gemrc into user's home directory.

## [0.0.1]

Initial release of bcs-brightbox-ruby.
