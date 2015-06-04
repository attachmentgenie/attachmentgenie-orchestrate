class orchestrate::profile_repositories {

  case $::osfamily {
    'debian': {
      class { 'apt':
        purge_sources_list_d => true,
      }
    }
    'redhat': {
    }
    default: {
      fail("Unsupported osfamily ${::osfamily}")
    }
  }

  motd::register{ 'Profile : repositories': }
}