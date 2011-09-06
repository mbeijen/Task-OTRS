use strict;
use warnings;
package Task::OTRS;
# ABSTRACT: Almost all of the modules required for installing OTRS Help Desk.

=head1 SYNOPSIS

This is just a Task module to install dependencies. There's no code to use
or run. 

=head1 DESCRIPTION

Installing this module will also install almost all the modules you'll need to run OTRS.

Note that OTRS itself also ships some CPAN modules in Kernel/cpan-libs, these modules will
not be required by Task::OTRS. See for the bundled list of modules in OTRS 
L<Module::OTRS::CoreList>.

The only module that you need to run OTRS but that will not be installed is the database driver, because OTRS supports 
multiple database backends. So after you're done installing Task::OTRS you might also want to
install the database driver for your DMBS of choice:

=over 4

=item * for MySQL (the most popular database for OTRS): L<DBD::mysql>

=item * for PostgreSQL: L<DBD::Pg>

=item * for Oracle: L<DBD::Oracle>

=item * for Microsoft SQL Server: L<DBD::ODBC> (only on Windows platforms)

=item * for IBM DB2: L<DBD::DB2>

=back

Note that installing these drivers can require installation of database libraries on your 
system as well. 

All modules that will be installed are listed below. Note that if such a module is already on
your system, we will not install it again.

=over 4

=item * Class::Inspector

=item * Compress::Zlib

=item * Crypt::PasswdMD5

=item * Date::Format

=item * DBI

=item * Digest::MD5

=item * Encode::HanExtra

=item * GD

=item * GD::Graph

=item * GD::Text

=item * IO::Socket::SSL

=item * JSON::XS

=item * MIME::Base64

=item * Net::DNS

=item * Net::LDAP

=item * Net::POP3

=item * Net::SMTP

=item * PDF::API2

=item * SOAP::Lite

=item * Text::CSV_XS

=item * version

=back

=head1 CAVEATS

Apart from not installing the database dependencies, installing Task::OTRS will get you 
possibly more modules than you'll be needing. For instance, if you use postfix for mail delivery
and sending, you might not be needing Net::POP3 and Net::SMTP. Also, in case you don't
care about generating PDF files with OTRS, you don't need PDF::API2. That said, installing
Task::OTRS can help in setting up OTRS more quickly.

This module will install all modules for the current version of OTRS, 3.0.x. It could be possible 
that for 3.1.x the requirements change. It would be feasible that by then I'll release specific
Task:: modules for specific OTRS versions.

1;
