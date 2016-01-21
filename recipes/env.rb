cookbook_file "${node['bash_it']['dir']}/custom/ra_env_vars.bash" do
  source 'ra_env_vars.bash'
  owner node['sprout']['user']
  group 'admin'
  mode '0644'
  action :create
end
