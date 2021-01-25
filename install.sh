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
	"Darwin arm64") target="aarch64-apple-darwin" ;;
	*) target="x86_64-unknown-linux-gnu" ;;
	esac
fi

if [ $# -eq 0 ]; then
	tpc_uri="https://github.com/youngjuning/tpc/releases/latest/download/tpc-${target}.zip"
else
	tpc_uri="https://github.com/youngjuning/tpc/releases/download/${1}/tpc-${target}.zip"
fi
tuya_install="${TUYA_INSTALL:-$HOME/.tuya}"
bin_dir="$tuya_install/bin"
exe="$bin_dir/tpc"

if [ ! -d "$bin_dir" ]; then
	mkdir -p "$bin_dir"
fi

curl --fail --location --progress-bar --output "$exe.zip" "$tpc_uri"
unzip -d "$bin_dir" -o "$exe.zip"
chmod +x "$exe"
rm "$exe.zip"

echo "tpc was installed successfully to $exe"
tpc -v
if command -v tpc >/dev/null; then
	echo "Run 'tpc --help' to get started"
else
	case $SHELL in
	/bin/zsh) shell_profile=".zshrc" ;;
	*) shell_profile=".bash_profile" ;;
	esac
	echo "Manually add the directory to your \$HOME/$shell_profile (or similar)"
	echo "  export TUYA_INSTALL=\"$tuya_install\""
	echo "  export PATH=\"\$TUYA_INSTALL/bin:\$PATH\""
	echo "Run '$exe --help' to get started"
fi
