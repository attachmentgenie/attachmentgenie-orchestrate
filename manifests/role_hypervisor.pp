class orchestrate::role_hypervisor {
  require ::stack_bootstrap

  class { 'orchestrate::stack_openstack': }

  motd::register{ 'Role  : hypervisor': }
}