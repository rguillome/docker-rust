#!/bin/sh

rustup update;

echo "arguments : $@";
/bin/sh -c "$@"
