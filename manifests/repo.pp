# @summary Choose which VOMS repository you want to intall and enable. Also a custom list of repository URL can be specified.
#
# @param installed
#   The list of repositories that have to be installed. Allowed values are `stable`, `beta` and `nightly`. Optional.
#
# @param enabled
#   The list of repositories that have to be enabled. Allowed values are `stable`, `beta` and `nightly`. Optional.
#
# @example Install all the repositories and enable only nightly repo as follow:
#   class { 'voms::repo':
#     enabled => ['stable'],
#   }
class voms::repo (

  Array[Enum['stable', 'beta', 'nightly']] $installed,
  Array[Enum['stable', 'beta', 'nightly']] $enabled,

) {
  $base = 'https://repo.cloud.cnaf.infn.it/repository'
  $el = $facts['os']['release']['major']

  case $facts['os']['name'] {
    'RedHat', 'AlmaLinux': { $dist = 'redhat' }
    'CentOS', 'Scientific':  { $dist = 'centos' }
    default: { $dist = 'redhat' }
  }

  $installed.each | $repo | {
    $enabled = $repo in $enabled ? { true => 1, default => 0 }
    $name = "voms-${repo}-${dist}${el}"
    $baseurl = "${base}/voms-rpm-${repo}/${dist}${el}/"

    yumrepo { $name:
      ensure   => present,
      descr    => $name,
      baseurl  => $baseurl,
      enabled  => $enabled,
      protect  => 1,
      priority => 1,
      gpgcheck => 0,
    }
  }
}
