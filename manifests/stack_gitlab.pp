class orchestrate::stack_gitlab (
  $external_url         = "http://${::fqdn}",
  $gitlab_branch        = '7.11.4',
  $gitlab_download_link = 'https://packages.gitlab.com/gitlab/gitlab-ce/packages/el/6/gitlab-ce-7.11.4~omnibus-1.x86_64.rpm',
) {
  class { gitlab :
    external_url           => $external_url,
    gitlab_branch          => $gitlab_branch,
    gitlab_download_link   => $gitlab_download_link,
    puppet_manage_packages => false,
  }

  motd::register{ 'Stack   : gitlab': }
}