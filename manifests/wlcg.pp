# @summary WLCG VO configuration class
class voms::wlcg() {

  voms::vo { 'wlcg':
    servers => [
      {
        server => 'wlcg-voms.cloud.cnaf.infn.it',
        port   => 15001,
        dn     => '/DC=org/DC=terena/DC=tcs/C=IT/ST=Roma/O=Istituto Nazionale di Fisica Nucleare/CN=wlcg-voms.cloud.cnaf.infn.it',
        ca_dn  => '/C=NL/O=GEANT Vereniging/CN=GEANT eScience SSL CA 4',
      },
    ],
  }
}
