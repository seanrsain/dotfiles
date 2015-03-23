# My Dotfiles

Inspired by and much borrowed from:

* https://github.com/webpro/dotfiles
* https://github.com/mathiasbynens/dotfiles


## OS X

To use, first make sure you have an up-to-date system and Apple's developer tools:

```sh
$ sudo softwareupdate -i -a
$ xcode-select --install
```

You may need to restart your computer after executing the commands above.  After they're done:

1. Install [Homebrew](http://brew.sh/)
2. Install [Git](http://git-scm.com/) (on OS X: ``brew install git``)
3. Clone this repository
4. ``cd`` to the ``dotfiles`` directory created by cloning this repository
5. Run ``install-osx.sh``
6. Run ``customize-osx.sh``

## Ubuntu

## General

After doing the platform-specific installations and customizations above, do the following.

1. Run ``install-general.sh``
2. Run ``link-dotfiles.sh``
