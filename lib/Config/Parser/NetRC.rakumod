unit class Config::Parser::NetRC;

=begin pod

=head1 NAME

Config::Parser::NetRC - A NetRC parser for L<Config|https://github.com/scriptkitties/p6-Config>

=head1 SYNOPSIS

=begin code :lang<raku>

use Config;

my Config $c .= new {}, :name<config>;
$c.=read('', Config::Parser::NetRC); # read from default "~/.netrc" file

=end code

=head1 DESCRIPTION

Config::Parser::NetRC is a simple NetRC parser for NetRC-style files

=head1 AUTHOR

Humberto Massa <humbertomassa@gmail.com>

=head1 INSTALLATION

=begin code :lang<bash>

$ zef install Config::Parser::NetRC

=end code

=head1 COPYRIGHT AND LICENSE

Copyright 2024 Humberto Massa

This library is free software; you can redistribute it and/or modify it under either the Artistic License 2.0 or the LGPL v3.0, at your convenience.

=end pod

use Net::NetRC;

method read(Str $path --> Hash) {
   $path ?? netrc() !! netrc $path
}
