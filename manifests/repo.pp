# @summary Configure VOMS repo. Available title values: 'stable', 'beta' and 'nightly'
define voms::repo (
  Boolean $enabled = true,
  Enum['stable','beta','nightly'] $type = $title,
) {

  $base = 'https://repo.cloud.cnaf.infn.it/repository'
  $el = $::operatingsystemmajrelease

  $repo_enabled = $enabled ? { true => 1, default => 0 }
  $repo_name = "voms-${type}-centos${el}"
  $repo_baseurl = "${base}/voms-rpm-${type}/centos${el}/"

  yumrepo { $repo_name:
    ensure   => present,
    descr    => $repo_name,
    baseurl  => $repo_baseurl,
    enabled  => $repo_enabled,
    protect  => 1,
    priority => 1,
    gpgcheck => 0,
  }

}
