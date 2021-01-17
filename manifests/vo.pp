# @summary Configure vomses and lsc for a VO
#
define voms::vo (
  String $vo = $title,
  Array[Voms::Server] $servers = [],
) {

  if !defined(File['/etc/grid-security/vomsdir']) {
    file { '/etc/grid-security/vomsdir':
      ensure  => directory,
      owner   => 'root',
      group   => 'root',
      mode    => '0755',
      purge   => true,
      recurse => true,
      force   => true,
    }
  }
  if !defined(File['/etc/vomses']) {
    file{'/etc/vomses':
      ensure  => directory,
      owner   => 'root',
      group   => 'root',
      mode    => '0755',
      purge   => true,
      recurse => true,
    }
  }

  file { "/etc/grid-security/vomsdir/${vo}":
    ensure  => directory,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    recurse => true,
    purge   => true,
    require => File['/etc/grid-security/vomsdir']
  }

  # Set defaults for the rest of this scope.
  File{
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }

  $vo_lsc_template_file='voms/server.lsc.erb'
  $vo_server_template_file='voms/vo-server.erb'

  $servers.each | $server | {
    # define template variables
    $server_host = $server[server]
    $server_port = $server[port]
    $server_dn = $server[dn]
    $server_ca_dn = $server[ca_dn]
    file { "/etc/grid-security/vomsdir/${vo}/${server_host}.lsc":
      ensure  => present,
      content => template($vo_lsc_template_file),
      require => [File["/etc/grid-security/vomsdir/${vo}"]],
    }
    file { "/etc/vomses/${vo}-${server_host}":
      ensure  => present,
      content => template($vo_server_template_file),
      require => [File['/etc/vomses']],
    }
  }

}
