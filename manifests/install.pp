# == Class cronie::install
#
# This class is called from cronie for install.
#
class cronie::install {

  package { $::cronie::package_name:
    ensure => latest,
  }
}
