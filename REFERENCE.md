# Reference

<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

### Classes

* [`voms`](#voms): This class is completly empty and does nothing.
* [`voms::alice`](#voms--alice): Alice VO configuration class
* [`voms::atlas`](#voms--atlas): Atlas VO configuration class
* [`voms::cms`](#voms--cms): CMS VO configuration class
* [`voms::cnafsd`](#voms--cnafsd): cnafsd VO configuration class
* [`voms::dteam`](#voms--dteam): dteam VO configuration class
* [`voms::escape`](#voms--escape): escape VO configuration class
* [`voms::lhcb`](#voms--lhcb): LHCB VO configuration class
* [`voms::ops`](#voms--ops): OPS VO configuration class
* [`voms::repo`](#voms--repo): Choose which VOMS repository you want to intall and enable. Also a custom list of repository URL can be specified.
* [`voms::testvo`](#voms--testvo): test.vo VO configuration class
* [`voms::testvo2`](#voms--testvo2): test.vo.2 VO configuration class
* [`voms::wlcg`](#voms--wlcg): WLCG VO configuration class

### Defined types

* [`voms::vo`](#voms--vo): Configure vomses and lsc for a VO

### Data types

* [`Voms::Server`](#Voms--Server): The Server type for Voms class

## Classes

### <a name="voms"></a>`voms`

This class is completly empty and does nothing.

### <a name="voms--alice"></a>`voms::alice`

Alice VO configuration class

### <a name="voms--atlas"></a>`voms::atlas`

Atlas VO configuration class

### <a name="voms--cms"></a>`voms::cms`

CMS VO configuration class

### <a name="voms--cnafsd"></a>`voms::cnafsd`

cnafsd VO configuration class

### <a name="voms--dteam"></a>`voms::dteam`

dteam VO configuration class

### <a name="voms--escape"></a>`voms::escape`

escape VO configuration class

### <a name="voms--lhcb"></a>`voms::lhcb`

LHCB VO configuration class

### <a name="voms--ops"></a>`voms::ops`

OPS VO configuration class

### <a name="voms--repo"></a>`voms::repo`

Choose which VOMS repository you want to intall and enable. Also a custom list of repository URL can be specified.

#### Examples

##### Install all the repositories and enable only nightly repo as follow:

```puppet
class { 'voms::repo':
  enabled => ['stable'],
}
```

#### Parameters

The following parameters are available in the `voms::repo` class:

* [`installed`](#-voms--repo--installed)
* [`enabled`](#-voms--repo--enabled)

##### <a name="-voms--repo--installed"></a>`installed`

Data type: `Array[Enum['stable', 'beta', 'nightly']]`

The list of repositories that have to be installed. Allowed values are `stable`, `beta` and `nightly`. Optional.

##### <a name="-voms--repo--enabled"></a>`enabled`

Data type: `Array[Enum['stable', 'beta', 'nightly']]`

The list of repositories that have to be enabled. Allowed values are `stable`, `beta` and `nightly`. Optional.

### <a name="voms--testvo"></a>`voms::testvo`

test.vo VO configuration class

### <a name="voms--testvo2"></a>`voms::testvo2`

test.vo.2 VO configuration class

### <a name="voms--wlcg"></a>`voms::wlcg`

WLCG VO configuration class

## Defined types

### <a name="voms--vo"></a>`voms::vo`

Configure vomses and lsc for a VO

#### Parameters

The following parameters are available in the `voms::vo` defined type:

* [`vo`](#-voms--vo--vo)
* [`servers`](#-voms--vo--servers)

##### <a name="-voms--vo--vo"></a>`vo`

Data type: `String`



Default value: `$title`

##### <a name="-voms--vo--servers"></a>`servers`

Data type: `Array[Voms::Server]`



Default value: `[]`

## Data types

### <a name="Voms--Server"></a>`Voms::Server`

The Server type for Voms class

Alias of

```puppet
Struct[{
  server => String,
  port   => Integer,
  dn     => String,
  ca_dn  => String,
}]
```

