node.from_file(run_context.resolve_attribute('n98-magerun', 'default'))

remote_file "#{node['n98-magerun']['install_dir']}/#{node['n98-magerun']['install_file']}" do
  source node['n98-magerun']['url']
  path "#{node['n98-magerun']['install_dir']}/#{node['n98-magerun']['install_file']}"
  owner 'root'
  group 'root'
  mode '0755'
  backup false
end

template "#{node['n98-magerun']['config_dir']}/#{node['n98-magerun']['config_file']}" do
  source 'n98-magerun.yaml.erb'
  owner 'root'
  group 'root'
  mode  '0644'
  backup false
  variables 'yaml' => {
    'commands' => node['n98-magerun']['commands']
  }.to_yaml(:UseFold => true).split("\n").map{|l| l.gsub(/ \!ruby.*$/, '').gsub(/---/, '').gsub(/  N98/, "\n  N98")}.join("\n")
end