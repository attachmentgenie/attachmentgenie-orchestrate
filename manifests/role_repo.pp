class orchestrate::role_repo {
  require ::orchestrate::stack_bootstrap

  class { '::orchestrate::stack_gitlab': }
  class { '::orchestrate::stack_pulp': }

  motd::register{ 'Role    : repo': }
}