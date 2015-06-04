class orchestrate::profile_rundeck () {

  class { 'rundeck': }
  class { 'puppetdb_rundeck': }

  rundeck::config::project { 'Platform project':
    file_copier_provider   => 'jsch-scp',
    node_executor_provider => 'jsch-ssh',
    resource_sources       => { platform => { project_name => 'Platform',
        source_type         => 'url',
        url                 => 'http://localhost:4567/api/yaml',
        include_server_node => true,
        resource_format     => 'resourceyaml',
        user                => $::rundeck::user,
        group               => $::rundeck::group,
      }
    },
    framework_config       => {
      'framework.ssh.keypath' => '/opt/orchestrate/id_rsa',
      'framework.ssh.user'    => 'orchestrate',
      'framework.ssh.timeout' => '0',
    }
  }
  accounts::account { '@rundeck': }

  motd::register{ 'Profile : rundeck': }
}