# @summary vo_dampe_org VO configuration class
class voms::vo_dampe_org {
  voms::vo { 'vo_dampe_org':
    servers => [
      {
        server => 'voms2.cnaf.infn.it',
        port   => 15021,
        dn     => '/DC=org/DC=terena/DC=tcs/C=IT/L=Roma/O=Istituto Nazionale di Fisica Nucleare/CN=voms2.cnaf.infn.it',
        ca_dn  => '/C=GR/O=Hellenic Academic and Research Institutions CA/CN=GEANT TLS RSA 1',
      },
      {
        server => 'voms-02.pd.infn.it',
        port   => '15008',
        dn     => '/DC=org/DC=terena/DC=tcs/C=IT/ST=Roma/O=Istituto Nazionale di Fisica Nucleare/CN=voms-02.pd.infn.it',
        ca_dn  => '/C=NL/O=GEANT Vereniging/CN=GEANT eScience SSL CA 4',
      }
    ],
  }
}
