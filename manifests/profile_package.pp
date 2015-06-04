class orchestrate::profile_package {

  require ::orchestrate::profile_ruby

  package { 'fpm':
    ensure   => 'latest',
    provider => 'gem',
  }

  motd::register{ 'Profile : package': }
}