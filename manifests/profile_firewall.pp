class orchestrate::profile_firewall (
  $ensure = 'running',
  $motd   = false,
) {
  class { 'firewall':
    ensure => $ensure,
  }

  if $motd {
    motd::register{ 'Profile : selinux': }
  }
}