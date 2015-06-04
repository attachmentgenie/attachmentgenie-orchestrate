class orchestrate::role_monitor {
  require ::stack_bootstrap

  class { 'orchestrate::profile_icinga': }

  motd::register{ 'Role : monitor': }
}