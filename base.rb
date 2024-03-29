# Policty base.rb
#

# A name that describes what the system you're building with Chef does.
name 'base'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'chef-client::default'

# Specify a custom source for a single cookbook:
# cookbook 'example_cookbook', path: '../cookbooks/example_cookbook'
cookbook 'chef-client', git: 'https://github.com/snohio/chef-client.git', branch: 'main'


default['audit']['reporter'] = 'chef-server-automate', 'cli'
# default['audit']['reporter'] = 'chef-server-automate', 'cli', 'json-file'
# default['audit']['json_file']['location'] = '/chef/audit-report.json'
# default['audit']['json_file']['location'] = 'c:/chef/audit-report.json'
# default['audit']['interval']['enabled'] = true
# default['audit']['interval']['time'] = 60