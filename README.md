# gvpe

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with gvpe](#setup)
    * [What gvpe affects](#what-gvpe-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with gvpe](#beginning-with-gvpe)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

The gvpe module enables you to install, configure and run a point-to-point VPN.

## Module Description

GVPE is a suite designed to provide a virtual private network for multiple nodes
over an untrusted network.

This module will setup a GNU Virtual Private Ethernet across multiple nodes in a
point-to-point fashion; it will install gvpe, share public keys and configure
all nodes.

## Setup

### What gvpe does

* add **ppa:guimaluf/gvpe** repository (Ubuntu 12.04 only)
* install **gvpe** and **gvpectrl** binaries
* setup configuration files for gvpe
* generate rsa key pair
* export and collect nodes configuration and public key
* ensure service is running(no init/upstart/systemd scripts)

### Setup Requirements

* pluginsync
* storeconfigs (puppetdb)

### Beginning with gvpe

## Usage
```puppet
include gvpe
```

**IMPORTANT**

First time run it's necessary to execute `puppet agent -t` twice in order to generate rsa key pairs
and propagate them, cause RSA public key is retrieved by `gvpe_pubkey` fact.

## Reference

`gvpe` will include `gvpe::install` class and `gvpe::node` resource, which includes
`gvpe::config` and `gvpe::service` classes.

## Limitations

This module it's mainly focused on Ubuntu 12.04.

First time run it's necessary to execute `puppet agent -t` two times.

## Development

This is my first module, so any suggestion or problem, please fell free to
report or let me know.
