class orchestrate::stack_testing {
  class { '::orchestrate::profile_jenkins': }
  class { '::orchestrate::profile_ruby': } ->
  class { '::orchestrate::profile_package': }
  class { '::orchestrate::profile_php': }

  motd::register{ 'Stack   : testing': }
}
