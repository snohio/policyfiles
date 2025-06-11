# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'base_win_diiv'

# Where to find external cookbooks:
default_source :supermarket do |s|
  s.preferred_for 'selinux', 'firewall'
end

# run_list: chef-client will run these recipes in the order specified.
run_list 'chef-client::default', 'dotnet::default', 'win_choco::default', 'diiv::default'

# Specify a custom source for a single cookbook:
# cookbook 'example_cookbook', path: '../cookbooks/example_cookbook'
cookbook 'diiv', git: 'https://github.com/snohio/diiv.git', branch: 'main'
cookbook 'win_choco', git: 'https://github.com/snohio/win_choco.git', branch: 'main'
cookbook 'chef-client', git: 'https://github.com/snohio/chef-client.git', branch: 'main'
cookbook 'dotnet', git: 'https://github.com/snohio/dotnet.git', branch: 'main'

default['audit']['reporter'] = 'chef-server-automate', 'cli'
default['sa']['mode'] = 'client'
default['software']['vscode'] = true
default['dotnet']['framework'] = true
default['dotnet']['version']['required'] = '4.8.03761'
