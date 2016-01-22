cookbook_file "/Users/#{node['sprout']['user']}/.bash_it/custom/ra_env_vars.bash" do
  source 'ra_env_vars.bash'
  owner node['sprout']['user']
  group 'admin'
  mode '0644'
  action :create
end

template "/Users/#{node['sprout']['user']}/.local_profile" do
  source 'local_profile.erb'
  owner node['sprout']['user']
  group 'admin'
  mode '0644'
  action :create
  variables({
     :local_user => node['sprout']['user']
  })
  action :create_if_missing
end
