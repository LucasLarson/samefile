# samefile

⚖️  a portable, POSIX-compliant implementation of Bash’s `-ef` test

[![AGPL](https://img.shields.io/badge/license-AGPL_3+-blue "GNU Affero General
Public License v3.0 or
later")](https://github.com/LucasLarson/samefile/blob/main/license.adoc)
[![latest release](https://img.shields.io/github/release/LucasLarson/samefile.svg)](https://github.com/LucasLarson/samefile/releases/latest)
[![Super-Linter](https://github.com/LucasLarson/samefile/workflows/Super-Linter/badge.svg)](https://github.com/LucasLarson/samefile/actions?query=workflow:"Super-Linter")

## Installation

### L337

Make sure the [executable named
`samefile`](https://github.com/LucasLarson/samefile/blob/main/bin/samefile) in
`bin/` is either

- moved into a directory in `$PATH`, or
- added to `$PATH`.

### Oh My Zsh

1. clone the repostory:

```sh
git clone --depth 1 https://github.com/LucasLarson/samefile "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}"/plugins/samefile
```

2. Next, open the `.zshrc` file in your home directory
2. insert the word ` samefile ` between the parentheses on the line that begins
   with `plugins=`.
2. save and close the file, then `source` it with `. "${HOME}"/.zshrc`.

## Usage

```sh
# not this
[ path/to/some/file -ef path/to/another/file ]
# and definitely not this
[[ path/to/some/file -ef path/to/another/file ]]

# but rather this
samefile path/to/some/file path/to/another/file
# or this
samefile --verbose path/to/some/file path/to/another/file
# or this
samefile -v path/to/some/file path/to/another/file

# returns a `0` exit status on success and `1` for failure
# just like `[`, `[[`, and `test`
```

Bash’s `-ef` and `samefile` both check that two files aren’t just similar, but
are

1. the same exact file on
1. the same exact machine and have
1. the same exact inode values.

But only `samefile` properly runs on a maximally portable POSIX-conformant
interpreter where `stat` is also installed. `samefile` works just fine in Bash
environments, too.
