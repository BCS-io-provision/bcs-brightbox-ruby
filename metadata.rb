name             'bcs_brightbox_ruby'
maintainer       'Richard Wigley '
maintainer_email 'richard.wigley@github'
license          'All rights reserved'
description      'Installs/Configures bcs_brightbox_ruby'
long_description 'Installs/Configures bcs_brightbox_ruby'
version          '1.0.0'

source_url       'git@github.com:BCS-io-provision/bcs_brightbox_ruby' if respond_to?(:source_url)
issues_url       'git@github.com:BCS-io-provision/bcs_brightbox_ruby/issues' if respond_to?(:issues_url)

supports 'ubuntu', '>= 14.04'

depends 'brightbox-ruby'
