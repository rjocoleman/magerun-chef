magerun_path = "#{node['n98-magerun']['install_dir']}/#{node['n98-magerun']['install_file']}"

remote_file magerun_path do
  source node['n98-magerun']['url']
  path magerun_path
  owner 'root'
  group 'root'
  mode '0755'
  backup false
  action :nothing
end.run_action(:create)

if node['n98-magerun']['unstable']
  execute "#{magerun_path} self-update --unstable"
end
