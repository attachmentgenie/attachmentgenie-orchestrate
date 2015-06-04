class orchestrate::role_proxy {
  require ::stack_bootstrap

  class { 'orchestrate::profile_haproxy': }

  motd::register{ 'Role  : proxy': }
}