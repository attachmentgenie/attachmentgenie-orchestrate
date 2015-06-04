class orchestrate::role_ci {
  require ::orchestrate::stack_bootstrap

  class { '::orchestrate::stack_testing': }

  motd::register{ 'Role  : ci': }
}