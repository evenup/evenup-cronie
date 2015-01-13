[![Puppet Forge](http://img.shields.io/puppetforge/v/evenup/cronie.svg)](https://forge.puppetlabs.com/evenup/cronie)
[![Build Status](https://travis-ci.org/evenup/evenup-cronie.png?branch=master)](https://travis-ci.org/evenup/evenup-cronie)

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with cronie](#setup)
    * [What cronie affects](#what-cronie-affects)
    * [Beginning with cronie](#beginning-with-cronie)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
6. [Limitations - OS compatibility, etc.](#limitations)
7. [Development - Guide for contributing to the module](#development)
8. [Changelog/Contributors](#changelog-contributors)

## Overview

Puppet module managing RedHat's cronie package and service.

## Module Description

An extremely simple module managing the cronie puppet and service classes mainly intended to:

* allow easy upgrading of the chronie package
* allow an easy method for restarting the chrond service when the timezone changes

## Setup

### What cronie affects

* cronie package
* cronie service

### Beginning with cronie

Install the module:

```
    puppet module install evenup-cronie
```

## Usage

```puppet
    class { 'cronie': }
```

## Reference

Nothing to configure

## Limitations

Only works on RedHat-based systems.

## Development

Improvements and bug fixes are greatly appreciated.  See the [contributing guide](https://github.com/evenup/evenup-cronie/blob/master/CONTRIBUTING.md) for
information on adding and validating tests for PRs.

## Changelog / Contributors

[Changelog](https://github.com/evenup/evenup-cronie/blob/master/CHANGELOG)

[Contributors](https://github.com/evenup/cronie/graphs/contributors)

