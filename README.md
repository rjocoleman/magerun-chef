# n98-magerun Chef Cookbook

A Chef cookbook to install [n98-magerun.phar](https://github.com/netz98/n98-magerun) - a CLI for Magento.


# Usage

`n98-magerun::default` installs n98-magerun, e.g. place `include_recipe n98-magerun::default` in your recipe.
n98-magerun is installed prior to compilation so that it *could* be used in later recipes. 


# Attributes

`node['n98-magerun']['install_dir']` - path to install to (default `/usr/local/bin`)
`node['n98-magerun']['install_file']` - name of installed binary (default `n98-magerun.phar`)
`node['n98-magerun']['url']` - url to get binary from (default `https://raw.github.com/netz98/n98-magerun/master/n98-magerun.phar`)
`node['n98-magerun']['unstable']` - Specify whether to update to unstable version (using self-update) (default `false`)


# Recipes

`n98-magerun::default` - Install n98-magerun.


### Vagrant

As an aside - I personally use this with Vagrant and have set up a bash function to use a pseudo-tty with magerun in the vagrant box.

e.g. in `~/.bash_profile` place:
```bash
magerun () {
  vagrant ssh -- -t n98-magerun.phar --root-dir=/vagrant $@
}
```

Open a new bash prompt at your Vagrant project and interact with n98-magerun as if it were local.
```
$ magerun help
$ magerun cache:clean
```

Your commands will be run inside the Vagrant box using the n98-magerun config and Magento root defined.
For performance reasons you might like to use the `$ magerun shell` feature rather than opening a new ssh connection for each command.


## Contributing

* File bug reports via GitHub issues.
* Pull requests are welcome.


1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
