template "/Users/#{node['sprout']['user']}/.bash_it/custom/ra_env_vars.bash" do
  source 'ra_env_vars.bash.erb'
  owner node['sprout']['user']
  group 'admin'
  mode '0644'
  variables({
     :local_user => node['sprout']['user']
  })
  action :create
end

template "/Users/#{node['sprout']['user']}/.local_profile" do
  source 'local_profile.erb'
  owner node['sprout']['user']
  group 'admin'
  mode '0644'
  variables({
     :local_user => node['sprout']['user']
  })
  action :create_if_missing
end
