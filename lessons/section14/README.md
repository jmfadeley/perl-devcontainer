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

##  How File Systems Work
Disk drives consist of partitions (at least one). Each partition has a filesystem built on them.
Each filesystem has a few different parts: 
Boot blocks, superblock, a list of i-nodes, and a list of directory blocks and data blocks.
Each file is represented by an i-node, which will contain the file's type, the file's permission,
the size of the file, and pointers to data blocks (plural) that contain the file's data.

The filename is the only thing about the file that is not included in the i-node.
When we unlink a file, we are simply removing the pointer (link) from a file entry to an i-node.
i-nodes keep tabs on the number of links attached to it. When the number of i-node links reaches zero, the i-node releases its data blocks. A file is never truly deleted until the number of links to the i-node reaches zero.

Other commands:
`link 'originalFile', 'linkToFile';` looks like another file but it will just mirror the same file. Links don't work across file systems and can't be made to get to directories.
`symlink 'originalFile', 'softLinkToFile';` 
Symlinks, symbolic links, work across file systems and with directories. Also called a soft link.
A symbolic link holds the name of the file it belongs to, and tells the PC to go look at the file
it holds. It does not form a hard link. They were created to get around the limitations of hard links.

## Reading Softlinks, Making Directories, and Removing Directories
`$realFile = readlink 'whateverFile';` 
Gives the contents of the symlink.

`mkdir 'testDir', 0755 or die "Couldn't create directory, testDir: $!";`
Creates the "testDir" directory with the given permissions.

`rmdir 'testDir';`
Removes directory. Directory must be empty.

`chmod 0744, 'testFile';`
Modifies the permissions of the file(s) or directories.