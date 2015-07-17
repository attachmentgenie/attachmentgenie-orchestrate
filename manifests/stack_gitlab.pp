class orchestrate::stack_gitlab (
  $host = $::fqdn,
  $port = '8080',
) {
  class { gitlab :
    external_url => "http://${host}",
    nginx => {
      'enable'      => true,
      'listen_port' => 8081,
    }
  }

  motd::register{ 'Stack   : gitlab': }
}