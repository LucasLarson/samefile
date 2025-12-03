#!/usr/bin/env sh
#
#     samefile
#     ⚖️  a portable, POSIX-compliant implementation of Bash’s `-ef` test
#        check if two files are hardlinked by device and inode
#
#     author: Lucas Larson
#     URL: https://github.com/LucasLarson/samefile
#     license: GNU Affero General Public License v3.0 or later
#
export PATH="${0%/*}"'/bin'"${PATH:+:${PATH-}}"
