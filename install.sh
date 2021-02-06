#!/bin/sh
# Copyright 2019 tuya. All rights reserved. MIT license.
# TODO(everyone): Keep this script simple and easily auditable.

set -e

if ! command -v unzip >/dev/null; then
	echo "Error: unzip is required to install tpc (see: https://github.com/youngjuning/tpc#unzip-is-required)." 1>&2
	exit 1
fi

if [ "$OS" = "Windows_NT" ]; then
	target="x86_64-pc-windows-msvc"
else
	case $(uname -sm) in
	"Darwin x86_64") target="x86_64-apple-darwin" ;;
	*) target="x86_64-unknown-linux-gnu" ;;
	esac
fi

if [ $# -eq 0 ]; then
	tpc_uri="https://github.com/youngjuning/tpc/releases/latest/download/tpc-${target}.zip"
else
	tpc_uri="https://github.com/youngjuning/tpc/releases/download/${1}/tpc-${target}.zip"
fi
tpc_install="${TPC_INSTALL:-$HOME/.tpc}"
bin_dir="$tpc_install/bin"
exe="$bin_dir/tpc"

if [ ! -d "$bin_dir" ]; then
	mkdir -p "$bin_dir"
fi

curl --fail --location --progress-bar --output "$exe.zip" "$tpc_uri"
unzip -d "$bin_dir" -o "$exe.zip"
chmod +x "$exe"
rm "$exe.zip"

echo "tpc was installed successfully to $exe"
if command -v seve >/dev/null; then
	echo "Run 'tpc --help' to get started"
else
	case $SHELL in
	/bin/zsh) shell_profile=".zshrc" ;;
	*) shell_profile=".bash_profile" ;;
	esac
	echo "# Tpc" >> $HOME/$shell_profile
	echo "export TPC_INSTALL=\"$tpc_install\"" >> $HOME/$shell_profile
	echo "export PATH=\"\$TPC_INSTALL/bin:\$PATH\"" >> $HOME/$shell_profile
	echo "Run 'tpc --help' to get started"
fi
