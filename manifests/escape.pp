# @summary escape VO configuration class
class voms::escape() {

  voms::vo { 'escape':
    servers => [
      {
        server => 'voms-escape.cloud.cnaf.infn.it',
        port   => 15000,
        dn     => '/DC=org/DC=terena/DC=tcs/C=IT/ST=Roma/O=Istituto Nazionale di Fisica Nucleare/CN=voms-escape.cloud.cnaf.infn.it',
        ca_dn  => '/C=NL/O=GEANT Vereniging/CN=GEANT eScience SSL CA 4',
      },
    ],
  }
}
