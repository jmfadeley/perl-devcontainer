#!/usr/bin/perl

# Strings can be empty, the shortest. Longest is the number of characters that can fill 
# up your machine, a hardware constraint. Can be any characters.

# Strings can be single or double quotes. 
print ""; # Empty.
print 'More than one word', "\n";

print "0123\n"; # No surprises.
print "Con"."catenation\n"; # Yep.

print "Repeat\n" x 4, "\n\n";

print 'Note that special characters, with the backslashes, only work in DOUBLE quotes\n.';
print "\nSee above?";
print 'There are two exceptions, single quote in the middle like \' so, or a backslash \\ but nothing else will.', "\n";

print "Why are double quotes useful? Backslashes for one. Like to \t tab over. Or give us a\nnew line.";

# Other characters
# \n - new line
# \r - return
# \t -tab
# \f - formfeed
# \b - backspace
# \a - bell
# \e - Escape (ASCII escape character)
# \007 - Any octal ASCII value (007 = bell for example)
# \x7f - Any two digit hex. 
# \x{2744} - Any hex unicode point, this case is a snowflake.
# \N{CHARACTER NAME} - A Unicode code point, by name
# \cC - A "control" character, here Ctrl-C
# \\ - backspace
# \" - A quote
# \l - Lowercase next letter.
# \L - Lowercase all follow letters until \E
# \u - Lowercase all following letters until \E
# \U - Uppercase next letter
# \Q - Quote nonwork character by adding a backslash until \E
# \E - End \N, \U, or \Q

print "\007\n";
print "\x77\n";
print "\x{2744}\n";
# print "\N{é}";
print "\ubehold \lMy \Ugumption\LYOU\Uson\Qof a no good\E... just kidding, let \Eit go.\n";

# Variables are interpolated when the variable is contained between double quotes, using a &, or sigil.
# But empty variables are interpreted are undefined, empty.

print "$variable... get it?\n";
print "For a dollar sign, use the escape \$ backslash.\n";
# Perl looks at operators used with the value to determine types. Behold.
print 7x4, "\n";
print 7*4, "\n";
# Perl will attempt to convert a word to an empty string to do math...
print barney*4, "\n";