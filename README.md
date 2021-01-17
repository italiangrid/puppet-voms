# puppet-voms

#### Table of Contents

1. [Description](#description)
2. [Setup](#setup)
3. [Usage](#usage)
4. [Limitations](#limitations)

## Description

This module helps on configure VOMS VOs.

## Setup

This module is available on puppet forge:

```
puppet module install cnafsd-voms
```

## Usage

Use this module as follow:

```
include voms::dteam
```

Or:

```
voms::vo { 'test.vo':
  servers => [
    {
      server => 'vgrid02.cnaf.infn.it',
      port   => 15000,
      dn     => '/DC=org/DC=terena/DC=tcs/C=IT/ST=Lazio/L=Frascati/O=Istituto Nazionale di Fisica Nucleare/CN=vgrid02.cnaf.infn.it',
      ca_dn  => '/C=NL/ST=Noord-Holland/L=Amsterdam/O=TERENA/CN=TERENA eScience SSL CA 3',
    },
  ],
}
```

## Limitations

It works only on RedHat CentOS 7 distributions.
