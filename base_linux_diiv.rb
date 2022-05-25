# base_linux_diiv.rb - 
# Manages the Linux nodes that are running DiiV / Subsonic
#

# A name that describes what the system you're building with Chef does.
name 'base_linux_diiv'

# Where to find external cookbooks:
default_source :supermarket do |s|
  s.preferred_for 'selinux', 'firewall'
end

# run_list: chef-client will run these recipes in the order specified.
run_list 'chef-client::default', 'diiv::default'

# Specify a custom source for a single cookbook:
# cookbook 'example_cookbook', path: '../cookbooks/example_cookbook'
cookbook 'diiv', git: 'https://github.com/snohio/diiv.git', branch: 'main'
cookbook 'chef-client', git: 'https://github.com/snohio/chef-client.git', branch: 'main'

default['audit']['reporter'] = 'chef-server-automate', 'cli'
