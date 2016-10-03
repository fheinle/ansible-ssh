# ansible-ssh
Create a secure ssh configuration and manage authorized keys

## Description

Crypto is hard, so I implemented [Secure secure shell](https://stribika.github.io/2015/01/04/secure-secure-shell.html) for my ssh configuration.

## Installation

Clone this repo to your roles directory:

    mkdir roles
    git clone it@github.com:fheinle/ansible-ssh.git roles/ssh

## Usage

**Caution** Make sure you both pass a list of allowed usernames as variable ``ssh_users`` to this role and create the top level directory of ``authorized`keys`` where you put ``username.pub`` so ansible can copy it to your destination host. Failure to do so may lock you out of your destination!

## Build

[![Build Status](https://travis-ci.org/fheinle/ansible-ssh.svg?branch=master)](https://travis-ci.org/fheinle/ansible-ssh)

## License

Copyright (c) 2016 Florian Heinle <launchpad@planet-tiax.de>

MIT License
