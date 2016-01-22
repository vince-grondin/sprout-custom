template "/Users/#{node['sprout']['user']}/.bash_it/aliases/available/spruce.aliases.bash" do
  source 'spruce.aliases.bash.erb'
  owner node['sprout']['user']
  group 'admin'
  mode '0644'
  variables({
     :local_user => node['sprout']['user']
  })
  action :create
end

link "/Users/#{node['sprout']['user']}/.bash_it/aliases/enabled/spruce.aliases.bash" do
  to "/Users/#{node['sprout']['user']}/.bash_it/aliases/available/spruce.aliases.bash"
end

