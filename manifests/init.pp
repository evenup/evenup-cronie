# == Class: cronie
#
# Full description of class cronie here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class cronie (
  $package_name = $::cronie::params::package_name,
  $service_name = $::cronie::params::service_name,
) inherits ::cronie::params {

  class { '::cronie::install': } ~>
  class { '::cronie::service': } ->
  Class['::cronie']
}
