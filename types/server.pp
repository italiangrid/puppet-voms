# @summary The Server type for Voms class
type Voms::Server = Struct[{
  server => String,
  port   => Integer,
  dn     => String,
  ca_dn  => String,
}]
