# n98-magerun Chef Cookbook

A Chef cookbook to install and configure [n98-magerun.phar](https://github.com/netz98/n98-magerun) - a CLI for Magento.

Experimental support for `n98-magerun.yaml` configuration is included via attributes, check `attributes/default.rb`.


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
