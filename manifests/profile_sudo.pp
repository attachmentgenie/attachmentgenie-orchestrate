class orchestrate::profile_sudo {

  class { 'sudo': }

  motd::register{ 'Profile : sudo': }
}