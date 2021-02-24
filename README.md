# tuya-panel-cli

CLI for Tuya Panel Developer

English | [简体中文](./README-zh_CN.md)

## Install

### Install Latest Version

**With Shell:**

```sh
curl -fsSL https://raw.githubusercontent.com/tuya/tuya-panel-cli/main/install.sh | sh
```

**With PowerShell:**

```sh
iwr https://raw.githubusercontent.com/tuya/tuya-panel-cli/main/install.ps1 -useb | iex
```

### Install Specific Version

**With Shell:**

```sh
curl -fsSL https://raw.githubusercontent.com/tuya/tuya-panel-cli/main/install.sh | sh -s v0.0.1
```

**With PowerShell:**

```powershell
$v="1.0.0"; iwr https://raw.githubusercontent.com/tuya/tuya-panel-cli/main/install.ps1 -useb | iex
```

## Upgrade

```sh
tuya-panel-cli upgrade
```

## Install via Homebrew

```sh
brew install youngjuning/tap/tuya-panel-cli
```

## Known Issues

### unzip is required

The program [`unzip`](https://linux.die.net/man/1/unzip) is a requirement for the Shell installer.

```sh
$ curl -fsSL https://raw.githubusercontent.com/tuya/tuya-panel-cli/main/install.sh | sh
Error: unzip is required to install Tpc (see: https://github.com/tuya/tuya-panel-cli#unzip-is-required).
```

**When does this issue occur?**

During the `install.sh` process, `unzip` is used to extract the zip archive.

**How can this issue be fixed?**

You can install unzip via `brew install unzip` on MacOS or `apt-get install unzip -y` on Linux.

## Support

- [Tuya Developer Center](https://developer.tuya.com/en/)
- [Tuya Smart Help Center](https://support.tuya.com/en/help)
- [Technical Support Tickets](https://iot.tuya.com/council/)
- [Support Docs](https://panel-docs.tuyaus.com/)

## License

[MIT License](./LICENSE)
