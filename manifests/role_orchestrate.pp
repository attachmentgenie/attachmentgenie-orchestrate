class orchestrate::role_orchestrate {
  require ::stack_bootstrap

  class { 'orchestrate::stack_puppetmaster': }
  class { 'orchestrate::profile_rundeck': }

  motd::register{ 'Role  : orchestrate': }
}