# Policty base.rb
#

# A name that describes what the system you're building with Chef does.
name 'base_win_choco'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'chef-client::default', 'win_choco::default'

# Specify a custom source for a single cookbook:
# cookbook 'example_cookbook', path: '../cookbooks/example_cookbook'
cookbook 'chef-client', git: 'https://github.com/snohio/chef-client.git', branch: 'main'
cookbook 'win_choco', git: 'https://github.com/snohio/win_choco.git', branch: 'main'

default['audit']['reporter'] = 'chef-server-automate', 'cli'

