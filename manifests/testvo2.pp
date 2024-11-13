# @summary test.vo.2 VO configuration class
class voms::testvo2 {
  voms::vo { 'test.vo.2':
    servers => [
      {
        server => 'meteora.cloud.cnaf.infn.it',
        port   => 15003,
        dn     => '/DC=org/DC=terena/DC=tcs/C=IT/ST=Roma/O=Istituto Nazionale di Fisica Nucleare/CN=meteora.cloud.cnaf.infn.it',
        ca_dn  => '/C=NL/O=GEANT Vereniging/CN=GEANT eScience SSL CA 4',
      },
    ],
  }
}
