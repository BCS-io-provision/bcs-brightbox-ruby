name             'bcs_ruby'
maintainer       'BCS Ltd'
maintainer_email 'richard.wigley@github'
license          'MIT'
description      'Installs/Configures bcs_ruby'
long_description 'Installs/Configures bcs_ruby'
version          '2.0.0'

source_url       'git@github.com:BCS-io-provision/bcs_ruby' if respond_to?(:source_url)
issues_url       'git@github.com:BCS-io-provision/bcs_ruby/issues' if respond_to?(:issues_url)

chef_version     '>= 12.5' if respond_to?(:chef_version)

supports         'ubuntu', '>= 14.04'

depends          'apt'
depends          'brightbox-ruby'
