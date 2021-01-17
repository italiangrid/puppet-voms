# @summary dteam VO configuration class
class voms::dteam() {
  voms::vo{ 'dteam':
    servers => [
      {
        'server' => 'voms2.hellasgrid.gr',
        'port'   => 15004,
        'dn'     => '/C=GR/O=HellasGrid/OU=hellasgrid.gr/CN=voms2.hellasgrid.gr',
        'ca_dn'  => '/C=GR/O=HellasGrid/OU=Certification Authorities/CN=HellasGrid CA 2016',
      },
    ],
  }
}
