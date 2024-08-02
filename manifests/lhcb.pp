# @summary LHCB VO configuration class
class voms::lhcb {
  voms::vo { 'lhcb':
    servers => [
      {
        'server' => 'voms-lhcb-auth.app.cern.ch',
        'port'   => 443,
        'dn'     => '/DC=ch/DC=cern/OU=computers/CN=lhcb-auth.web.cern.ch',
        'ca_dn'  => '/DC=ch/DC=cern/CN=CERN Grid Certification Authority',
      },
      {
        'server' => 'voms-lhcb-auth.cern.ch',
        'port'   => 443,
        'dn'     => '/DC=ch/DC=cern/OU=computers/CN=lhcb-auth.cern.ch',
        'ca_dn'  => '/DC=ch/DC=cern/CN=CERN Grid Certification Authority',
      },
    ],
  }
}
