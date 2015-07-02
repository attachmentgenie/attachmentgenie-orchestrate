#
class orchestrate::profile_locale {

  case $::osfamily {
    'debian': {
      class { 'locales': }
    }
    default: {
      fail("${::osfamily} is not supported by this module")
    }
  }

  motd::register{ 'Profile : locale': }
}