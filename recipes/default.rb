#
# Cookbook Name:: bcs_ruby
# Recipe:: default
#
# ruby dependencies
%w(autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev
   zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev).each do |pack|
  package pack
end

node.default['brightbox-ruby']['version'] = node['ruby']['version']
node.default['brightbox-ruby']['gems'] = node['ruby']['gems']
node.default['brightbox-ruby']['install_ruby_switch'] = false

include_recipe 'brightbox-ruby::default'
