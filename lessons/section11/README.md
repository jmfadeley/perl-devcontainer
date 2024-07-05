## Installation Methods 

There are three, no four methods of installing modules.

CPAN.pm module
cpan script
CPANPLUS

1) On the CLI type "perl -MCPAN -e shell" to get into the shell.
Then you can install modules with commands like "install Test::Pod"
This comes with perl distributions by default.
This one seems to also ask questions about where and how to install.

"q" to quit.

2) Also comes with perl by default.
Used like "cpan DBI"
This is more automatic but may require elevated permissions.

3) CPANPLUS is a module that has to be loaded, it is not default.
You can install it with, say, "cpan CPANPLUS" and seems to be a bit more like npm
That module comes like "cpanp i Math::BigInt"

4) And as a bonus fourth you can always pull down from www.cpan.org and run the scripts found there.
In this case "cpan App::cpanminus" module.
That can be run with "cpanm Module::Name"
