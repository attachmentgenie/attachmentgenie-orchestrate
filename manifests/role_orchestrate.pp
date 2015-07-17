class orchestrate::role_orchestrate {
  require ::orchestrate::stack_bootstrap

  class { '::orchestrate::stack_testing': }
  #class { '::orchestrate::stack_rundeck': }

  motd::register{ 'Role    : orchestrate': }
}