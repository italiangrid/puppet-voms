# @summary OPS VO configuration class
class voms::ops {
  voms::vo { 'ops':
    servers => [
      {
        'server' => 'voms-ops-auth.cern.ch',
        'port'   => 443,
        'dn'     => '/DC=ch/DC=cern/OU=computers/CN=ops-auth.cern.ch',
        'ca_dn'  => '/DC=ch/DC=cern/CN=CERN Grid Certification Authority',
      },
    ],
  }
}
