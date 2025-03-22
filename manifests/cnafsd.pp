# @summary cnafsd VO configuration class
class voms::cnafsd {
  voms::vo { 'cnafsd':
    servers => [
      {
        server => 'voms-dev.cloud.cnaf.infn.it',
        port   => 15004,
        dn     => '/DC=org/DC=terena/DC=tcs/C=IT/ST=Roma/O=Istituto Nazionale di Fisica Nucleare/CN=voms-dev.cloud.cnaf.infn.it',
        ca_dn  => '/C=NL/O=GEANT Vereniging/CN=GEANT eScience SSL CA 4',
      },
    ],
  }
}
