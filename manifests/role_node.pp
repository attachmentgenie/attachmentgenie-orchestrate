class orchestrate::role_node {
  require ::stack_bootstrap

  class { 'orchestrate::stack_website': }

  motd::register{ 'Role  : node': }
}