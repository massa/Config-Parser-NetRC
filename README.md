[![Actions Status](https://github.com/massa/Config-Parser-NetRC/actions/workflows/test.yml/badge.svg)](https://github.com/massa/Config-Parser-NetRC/actions)

NAME
====

Config::Parser::NetRC - A NetRC parser for [Config](https://github.com/scriptkitties/p6-Config)

SYNOPSIS
========

```raku
use Config;

my Config $c .= new {}, :name<config>;
$c.=read('', Config::Parser::NetRC); # read from default "~/.netrc" file
```

DESCRIPTION
===========

Config::Parser::NetRC is a simple NetRC parser for NetRC-style files

AUTHOR
======

Humberto Massa <humbertomassa@gmail.com>

INSTALLATION
============

```bash
$ zef install Config::Parser::NetRC
```

COPYRIGHT AND LICENSE
=====================

Copyright 2024 Humberto Massa

This library is free software; you can redistribute it and/or modify it under either the Artistic License 2.0 or the LGPL v3.0, at your convenience.

