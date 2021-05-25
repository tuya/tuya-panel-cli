# tuya-panel-cli

CLI for Tuya Panel Developer

English | [简体中文](./README-zh_CN.md)

## Install

### Install Latest Version

**With Shell:**

```sh
curl -fsSL https://cdn.jsdelivr.net/gh/tuya/tuya-panel-cli/install.sh | sh
```

**With PowerShell:**

```sh
iwr https://cdn.jsdelivr.net/gh/tuya/tuya-panel-cli/install.ps1 -useb | iex
```

### Install Specific Version

**With Shell:**

```sh
curl -fsSL https://cdn.jsdelivr.net/gh/tuya/tuya-panel-cli/install.sh | sh -s v0.0.1
```

**With PowerShell:**

```powershell
$v="1.0.0"; iwr https://cdn.jsdelivr.net/gh/tuya/tuya-panel-cli/install.ps1 -useb | iex
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

### iwr cannot be recognized on Windows

**Confirm operating system environment**

We recommend using the Windows 10 operating system. Older Windows may work, but it will increase unnecessary trouble.

**upgrade PowerShell version(Recommend)**

PowerShell is an enhanced command line environment under Windows and the main command line interface we will use in the future. The following operations continue on the command line interface opened above:

- Enter `$PSVersionTable.PSVersion.Major` in the Powershell command line interface。

If the above command returns `5` or above, there is no problem, otherwise you need to download and install:

- [.NET Framework 4.5 or later](https://www.microsoft.com/net/download)
- [Windows Management Framework 5.x](https://aka.ms/wmf5download)

**Manual installation(Easy)**

> Manual installation cannot use the `tuya-panel-cli upgrade` command.

1、Download the latest windows executable archive file `tuya-panel-cli-x86_64-pc-windows-msvc.zip`
 in [tuya-panel-cli/releases/latest](https://github.com/tuya/tuya-panel-cli/releases/latest)

2、Unzip executable to any place like `C:\tuya-panel-cli`

![](https://images.tuyacn.com/fe-static/docs/img/56b1bd45-ea79-4bca-8e64-0f6fbae645fa.png)

3、Set environment variables

Add the script installation directory, such as `C:\tuya-panel-cli` to the `Path` variable of user variables:

![](https://images.tuyacn.com/fe-static/docs/img/7af7585a-d2bc-4ea6-9ac5-5f5073ac24a4.png)

4、Reopen the Powershell command line interface to get start

## Support

- [Tuya Developer Center](https://developer.tuya.com/en/)
- [Tuya Smart Help Center](https://support.tuya.com/en/help)
- [Technical Support Tickets](https://iot.tuya.com/council/)
- [Support Docs](https://panel-docs.tuyaus.com/)

## License

[MIT License](./LICENSE)
