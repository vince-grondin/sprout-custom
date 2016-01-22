include_recipe 'hostsfile'

hostsfile_entry '127.0.0.1' do
  hostname  'raweb.local.sprucefinance.com'
  unique    true
  action :create_if_missing
end
