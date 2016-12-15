#
# Cookbook Name:: bcs_brightbox_ruby
# Recipe:: default
#
# Copyright (C) 2015 BCS Ltd.
#
# All rights reserved - Do Not Redistribute
#

# required for nokogiri which is installed for backup
package 'zlib1g-dev'

include_recipe 'bcs_brightbox_ruby::gemrc_user'

include_recipe 'brightbox-ruby::default'
