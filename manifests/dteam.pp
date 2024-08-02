# @summary dteam VO configuration class
class voms::dteam {
  voms::vo { 'dteam':
    servers => [
      {
        'server' => 'voms-dteam-auth.cern.ch',
        'port'   => 443,
        'dn'     => '/DC=ch/DC=cern/OU=computers/CN=dteam-auth.cern.ch',
        'ca_dn'  => '/DC=ch/DC=cern/CN=CERN Grid Certification Authority',
      },
    ],
  }
}
