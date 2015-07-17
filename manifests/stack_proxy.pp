class orchestrate::stack_proxy {
  class { 'orchestrate::profile_haproxy': }

  motd::register{ 'Stack   : proxy': }
}
