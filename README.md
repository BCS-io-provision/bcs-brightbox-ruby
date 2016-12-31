# bcs_ruby

## Introduction

Installs Ruby onto a system. Underneath the system using brightbox Ruby. [brightbox ruby is ruby package supplied by brightbox for use on Ubuntu](https://www.brightbox.com/docs/ruby/ubuntu/)

## Requirements

* Chef 12.0
* Ruby >= 2.0.0
* Ubuntu LTS 14.04+


### Attributes
 - only allowed to set first two numbers of the Ruby so 2.2 or 2.3
   - it applies the latest patch number so one day installs 2.2.4 and next day if 2.2.5 is released it will install that version


| Attribute           | Description                   | Default                                 |
| ------------------- | ----------------------------- | ----------------------------------------|
| ['ruby']['version'] | Ruby Version to install       | '2.3'                                   |
| ['ruby']['gems']    | Gems to install for this ruby | ['bundler', 'rake', 'rubygems-bundler'] |

## Author

Author:: Richard Wigley (richard.wigley@bcs.io)
