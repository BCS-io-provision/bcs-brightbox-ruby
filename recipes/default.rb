#
# Cookbook Name:: bcs-brightbox-ruby
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# required for nokogiri which is installed for backup
package 'zlib1g-dev'

include_recipe 'bcs-brightbox-ruby::gemrc_user'

include_recipe 'brightbox-ruby::default'
