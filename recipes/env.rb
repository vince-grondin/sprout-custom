cookbook_file "/Users/#{node['sprout']['user']}/.bash_it/custom/ra_env_vars.bash" do
  source 'ra_env_vars.bash'
  owner node['sprout']['user']
  group 'admin'
  mode '0644'
  action :create
end
