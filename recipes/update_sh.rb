execute 'execute_update.sh' do
  cwd "/Users/#{node['sprout']['user']}/workspace/java-parent-services/bin/"
  command './update.sh'
  user node['sprout']['user']
end
