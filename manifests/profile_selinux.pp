class orchestrate::profile_selinux (
  $mode = 'disabled',
  $motd = false,
) {
  class { 'selinux':
    mode => $mode,
  }

  if $motd {
    motd::register{ 'Profile : selinux': }
  }
}