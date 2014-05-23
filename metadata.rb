maintainer       'Robert Coleman'
maintainer_email 'cookbooks@robert.net.nz'
license          'MIT'
description      'Installs/Configures n98-magerun.phar'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.2'
name             'n98-magerun'
recipe           'n98-magerun', 'Installs n98-magerun'

%w{ debian ubuntu centos suse fedora redhat scientific amazon freebsd windows mac_os_x }.each do |os|
  supports os
end

recommends 'php'
