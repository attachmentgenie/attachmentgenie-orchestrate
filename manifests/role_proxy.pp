class orchestrate::role_proxy {
  require ::orchestrate::stack_bootstrap

  class { '::orchestrate::stack_proxy': }

  motd::register{ 'Role    : proxy': }
}