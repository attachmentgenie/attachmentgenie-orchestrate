class orchestrate::stack_rundeck {
  class { '::orchestrate::profile_rundeck': }

  motd::register{ 'Stack   : rundeck': }
}
