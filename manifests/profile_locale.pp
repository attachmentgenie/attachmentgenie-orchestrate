#
class orchestrate::profile_locale {

  case $::osfamily {
    'debian': {
      class { 'locales': }
    }
    default: {}
  }

  class { '::motd': }
  motd::register{ 'Profile : locale': }
}