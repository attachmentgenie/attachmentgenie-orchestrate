class orchestrate::profile_jenkins (
  $plugins = {},
  $version = 'latest',
) {
  class { 'jenkins':
    version            => $version,
    configure_firewall => false,
  }
  create_resources(::jenkins::plugin, $plugins)

  motd::register{ 'Profile : jenkins': }
}