# tpc

CLI for Tuya Panel Developer

## Install Latest Version

With PowerShell:

```sh
iwr https://raw.githubusercontent.com/youngjuning/tpc/main/install.ps1 -useb | iex
```

## Known Issues

### unzip is required

The program [`unzip`](https://linux.die.net/man/1/unzip) is a requirement for the Shell installer.

```sh
$ curl -fsSL https://deno.land/x/install/install.sh | sh
Error: unzip is required to install Deno (see: https://github.com/denoland/deno_install#unzip-is-required).
```

**When does this issue occur?**

During the `install.sh` process, `unzip` is used to extract the zip archive.

**How can this issue be fixed?**

You can install unzip via `brew install unzip` on MacOS or `apt-get install unzip -y` on Linux.
