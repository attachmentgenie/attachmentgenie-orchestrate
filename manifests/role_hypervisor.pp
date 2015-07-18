class orchestrate::role_hypervisor {
  require ::orchestrate::stack_bootstrap

  class { 'orchestrate::stack_openstack': }

  motd::register{ 'Role    : hypervisor': }
}