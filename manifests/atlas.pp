# @summary Atlas VO configuration class
class voms::atlas() {
  voms::vo{ 'atlas':
    servers => [
      {
        'server' => 'voms2.cern.ch',
        'port'   => 15001,
        'dn'     => '/DC=ch/DC=cern/OU=computers/CN=voms2.cern.ch',
        'ca_dn'  => '/DC=ch/DC=cern/CN=CERN Grid Certification Authority',
      },
      {
        'server' => 'lcg-voms2.cern.ch',
        'port'   => 15001,
        'dn'     => '/DC=ch/DC=cern/OU=computers/CN=lcg-voms2.cern.ch',
        'ca_dn'  => '/DC=ch/DC=cern/CN=CERN Grid Certification Authority',
      },
    ],
  }
}
