#
# Cookbook Name:: bcs-brightbox-ruby
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'bcs-brightbox-ruby::gemrc_user'

include_recipe 'brightbox-ruby::default'
