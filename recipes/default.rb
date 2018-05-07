#
# Cookbook Name:: bcs_ruby
# Recipe:: default
#
# ruby dependencies
dependencies = %w(autoconf
                  bison
                  build-essential
                  libssl-dev
                  libyaml-dev
                  libreadline6-dev
                  zlib1g-dev
                  libncurses5-dev
                  libffi-dev
                  libgdbm-dev)

if node['platform_version'].to_f == 14.04 || node['platform_version'].to_f == 16.04
  dependencies.push("libgdbm3")
              .push("libreadline6-dev")
elsif node['platform_version'].to_f >= 18.04
  dependencies.push("libgdbm5")
              .push("libreadline-dev")
end

dependencies.each do |pack|
  package pack
end

node.default['brightbox-ruby']['version'] = node['ruby']['version']
node.default['brightbox-ruby']['gems'] = node['ruby']['gems']
node.default['brightbox-ruby']['install_ruby_switch'] = false

include_recipe 'brightbox-ruby::default'
