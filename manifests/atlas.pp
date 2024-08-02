# @summary Atlas VO configuration class
class voms::atlas {
  voms::vo { 'atlas':
    servers => [
      {
        'server' => 'voms-atlas-auth.app.cern.ch',
        'port'   => 443,
        'dn'     => '/DC=ch/DC=cern/OU=computers/CN=atlas-auth.web.cern.ch',
        'ca_dn'  => '/DC=ch/DC=cern/CN=CERN Grid Certification Authority',
      },
      {
        'server' => 'voms-atlas-auth.cern.ch',
        'port'   => 443,
        'dn'     => '/DC=ch/DC=cern/OU=computers/CN=atlas-auth.cern.ch',
        'ca_dn'  => '/DC=ch/DC=cern/CN=CERN Grid Certification Authority',
      },
    ],
  }
}
