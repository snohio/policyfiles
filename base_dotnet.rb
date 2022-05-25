# base_dotnet.rb
# Manages .net Framework on Windows 2019


# A name that describes what the system you're building with Chef does.
name 'base_dotnet'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'chef-client::default', 'win_choco::default', 'dotnet::default'

# Specify a custom source for a single cookbook:
cookbook 'dotnet', git: 'https://github.com/snohio/dotnet.git', branch: 'main'
cookbook 'win_choco', git: 'https://github.com/snohio/win_choco.git', branch: 'main'
cookbook 'chef-client', git: 'https://github.com/snohio/chef-client.git', branch: 'main'

default['dotnet']['framework'] = true
#default['dotnet']['version']['required'] = '4.7.03190'
default['dotnet']['version']['required'] = '4.8.03761'
