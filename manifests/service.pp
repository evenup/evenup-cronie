# == Class cronie::service
#
# This class is meant to be called from cronie.
# It ensure the service is running.
#
class cronie::service {

  service { $::cronie::service_name:
    ensure => running,
    enable => true,
  }
}
