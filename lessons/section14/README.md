## Analogy:
Street = File System.
House = Current Directory.
Rooms = Subdirectories.

You're usually sent to your home directory when youa rrive.

## Perl Commands:
`getcwd();` - Equivalent to cwd, current working directory.
`chdir "$newDir" or die "Couldn't change to $newDir: $!";`

All your program's operations will be from your CWD:
`open $file, "testFile";`
`open $file, "/tmp/testfile";`
`open '/tmp'; open $file, "testFile";`

To get the listing of files, such as globbing which uses expanding patterns:
glob `*` - the glob operator.
`<*>` - old glob operator.

See `globbing.pl` for use.

## Directory Handles:
Similar to file handle. Allows you to open a directory and read it.

opendir $dh, $whateverDir or die "Couldn't open $whateverDir: $!";
while (readdir $dh) {
  print "$_\n";
}
closedir $dh;

## Renaming and Deleting:
The `rename` command renames things:
`rename "originalFileName", "newFileName";`

The `unlink` command will delete them:
- `unlink "fileName";`
- `unlink glob "*.tar";`
