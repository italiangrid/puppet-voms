# @summary test.vo.2 VO configuration class
class voms::testvo2() {

  voms::vo { 'test.vo.2':
    servers => [
      {
        server => 'vgrid02.cnaf.infn.it',
        port   => 15001,
        dn     => '/DC=org/DC=terena/DC=tcs/C=IT/L=Frascati/O=Istituto Nazionale di Fisica Nucleare/OU=CNAF/CN=vgrid02.cnaf.infn.it',
        ca_dn  => '/C=NL/O=GEANT Vereniging/CN=GEANT eScience SSL CA 4',
      },
    ],
  }
}
