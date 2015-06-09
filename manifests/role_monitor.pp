class orchestrate::role_monitor {
  require ::orchestrate::stack_bootstrap

  if !defined(Class['::orchestrate::profile_icinga']) {
    class { '::orchestrate::profile_icinga': }
  }
  motd::register{ 'Role    : monitor': }
}