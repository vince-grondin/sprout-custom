cookbook_file "/Users/#{node['sprout']['user']}/.bash_it/aliases/available/spruce.aliases.bash" do
  source 'spruce.aliases.bash'
  owner node['sprout']['user']
  group 'admin'
  mode '0644'
  action :create
end

link "/Users/#{node['sprout']['user']}/.bash_it/aliases/enabled/spruce.aliases.bash" do
  to "/Users/#{node['sprout']['user']}/.bash_it/aliases/available/spruce.aliases.bash"
end

