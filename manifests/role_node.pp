class orchestrate::role_node {
  require ::orchestrate::stack_bootstrap

  class { 'orchestrate::stack_website': }

  motd::register{ 'Role    : node': }
}