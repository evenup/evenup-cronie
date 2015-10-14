# == Class cronie::params
#
# This class is meant to be called from cronie.
# It sets variables according to platform.
#
class cronie::params {
  case $::osfamily {
    'RedHat', 'Amazon': {
      $package_name   = 'cronie'
      $package_ensure = 'latest'
      $service_name   = 'crond'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
