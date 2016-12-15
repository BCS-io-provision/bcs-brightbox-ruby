#
# gemrc_user
#
# Install .gemrc under the user's home directory
#   - brightbox::default puts it under system
#      - I tried to make it put it under user but failed to get it to
#

group = node['bcs_user']['group']['name']
user = node['bcs_user']['user']['name']
home = node['bcs_user']['user']['path']

# Add the user specific file
#
template "#{home}/.gemrc" do
  user user
  group  group
  source 'gemrc_user.erb'
  mode 00644
end
