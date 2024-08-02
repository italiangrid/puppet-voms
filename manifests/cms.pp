# @summary CMS VO configuration class
class voms::cms {
  voms::vo { 'cms':
    servers => [
      {
        'server' => 'voms-cms-auth.app.cern.ch',
        'port'   => 443,
        'dn'     => '/DC=ch/DC=cern/OU=computers/CN=cms-auth.web.cern.ch',
        'ca_dn'  => '/DC=ch/DC=cern/CN=CERN Grid Certification Authority',
      },
      {
        'server' => 'voms-cms-auth.cern.ch',
        'port'   => 443,
        'dn'     => '/DC=ch/DC=cern/OU=computers/CN=cms-auth.cern.ch',
        'ca_dn'  => '/DC=ch/DC=cern/CN=CERN Grid Certification Authority',
      },
    ],
  }
}
