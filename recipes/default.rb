remote_file "#{node['n98-magerun']['install_dir']}/#{node['n98-magerun']['install_file']}" do
  source node['n98-magerun']['url']
  path "#{node['n98-magerun']['install_dir']}/#{node['n98-magerun']['install_file']}"
  owner 'root'
  group 'root'
  mode '0755'
  backup false
end