class orchestrate::stack_bootstrap (
  $monitor_node = true,
) {
  class { '::motd': }
  class { '::orchestrate::profile_accounts': }
  class { '::orchestrate::profile_icinga': }
  class { '::orchestrate::profile_firewall': }
  class { '::orchestrate::profile_rsyslog_client': }
  class { '::orchestrate::profile_locale': }
  class { '::orchestrate::profile_network': }
  class { '::orchestrate::profile_repositories': }
  class { '::orchestrate::profile_ssh': }
  #class { '::orchestrate::profile_sudo': }
  class { '::orchestrate::profile_time': }
  class { '::puppetmaster::profile_puppet': }

  motd::register{ 'Stack   : bootstrap': }
}
