# https://github.com/netz98/n98-magerun/blob/master/config.yaml

default['n98-magerun']['url'] = 'https://raw.github.com/netz98/n98-magerun/master/n98-magerun.phar'
default['n98-magerun']['install_dir'] = '/usr/local/bin'
default['n98-magerun']['install_file'] = 'n98-magerun.phar'
default['n98-magerun']['config_dir'] = '/etc'
default['n98-magerun']['config_file'] = 'n98-magerun.yaml'
default['n98-magerun']['commands']['customCommands'] = []
default['n98-magerun']['commands']['aliases'] = []
default['n98-magerun']['commands']['N98\Magento\Command\Installer\InstallCommand']['magento-packages'] = {}
default['n98-magerun']['commands']['N98\Magento\Command\Installer\InstallCommand']['demo-data-packages'] = {}
default['n98-magerun']['commands']['N98\Magento\Command\Installer\InstallCommand']['installation']['defaults'] = []
default['n98-magerun']['commands']['N98\Magento\Command\Database\DumpCommand']['table-groups'] = {}
default['n98-magerun']['commands']['N98\Magento\Command\Customer\ListCommand']['limit'] = nil
