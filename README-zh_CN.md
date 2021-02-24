# tuya-panel-cli

涂鸦面板开发工具

[English](./README.md) | 简体中文

## 安装

### 安装最新版

**Shell下安装:**

```sh
curl -fsSL https://raw.githubusercontent.com/tuya/tuya-panel-cli/main/install.sh | sh
```

**PowerShell下安装:**

```sh
iwr https://raw.githubusercontent.com/tuya/tuya-panel-cli/main/install.ps1 -useb | iex
```

### 安装指定版本


**Shell下安装:**

```sh
curl -fsSL https://raw.githubusercontent.com/tuya/tuya-panel-cli/main/install.sh | sh -s v0.0.1
```

**PowerShell下安装:**

```powershell
$v="1.0.0"; iwr https://raw.githubusercontent.com/tuya/tuya-panel-cli/main/install.ps1 -useb | iex
```

## 升级

```sh
tuya-panel-cli upgrade
```

## 通过 Homebrew 安装

```sh
brew install youngjuning/tap/tuya-panel-cli
```

## 已知问题

### `unzip is required`

The program [`unzip`](https://linux.die.net/man/1/unzip) is a requirement for the Shell installer.

```sh
$ curl -fsSL https://raw.githubusercontent.com/tuya/tuya-panel-cli/main/install.sh | sh
Error: unzip is required to install Tpc (see: https://github.com/tuya/tuya-panel-cli#unzip-is-required).
```

**什么时候发生这个问题?**

During the `install.sh` process, `unzip` is used to extract the zip archive.

**如何修复这个问题?**

You can install unzip via `brew install unzip` on MacOS or `apt-get install unzip -y` on Linux.

## 技术支持

- 开发者中心：https://developer.tuya.com/cn/
- 帮助中心：https://support.tuya.com/cn/help
- 技术支持工单中心：https://iot.tuya.com/council/
- 详细文档：https://panel-docs.tuyacn.com/

## License

[MIT License](./LICENSE)
