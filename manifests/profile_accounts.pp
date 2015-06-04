class orchestrate::profile_accounts (
  $accounts = undef
) {
  class { 'accounts': }

  motd::register{ 'Profile : accounts': }
}