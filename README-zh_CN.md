# tuya-panel-cli

涂鸦面板开发工具

[English](./README.md) | 简体中文

## 安装

### 安装最新版

**Shell下安装:**

```sh
curl -fsSL https://cdn.jsdelivr.net/gh/tuya/tuya-panel-cli/install.sh | sh
```

**PowerShell下安装:**

```sh
iwr https://cdn.jsdelivr.net/gh/tuya/tuya-panel-cli/install.ps1 -useb | iex
```

### 安装指定版本


**Shell下安装:**

```sh
curl -fsSL https://cdn.jsdelivr.net/gh/tuya/tuya-panel-cli/install.sh | sh -s v0.0.1
```

**PowerShell下安装:**

```powershell
$v="1.0.0"; iwr https://cdn.jsdelivr.net/gh/tuya/tuya-panel-cli/install.ps1 -useb | iex
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

### iwr 无法被识别（Windows）

#### 确认操作系统环境

我们推荐使用 Windows 10 操作系统，更老的 Windows 也许可以，但会增加不必要的麻烦。有两个办法可以解决。

#### 升级 PowerShell 版本（推荐）

PowerShell 是 Windows 下的增强命令行环境，也是我们以后要用的主要命令行界面。以下操作继续在上面打开的命令行界面进行：

- 在 Powershell 命令行输入 `$PSVersionTable.PSVersion.Major` 检查版本

上面的命令返回为 5 或者以上就没问题，否则需要下载并安装：

- [.NET Framework 4.5 or later](https://www.microsoft.com/net/download)
- [Windows Management Framework 5.x](https://aka.ms/wmf5download)

#### 手动安装配置（简单）

> 注意：手动安装后 `tuya-panel-cli upgrade` 命令是无法使用的，所以还是推荐第一种办法。

1、在 [tuya-panel-cli/releases/latest](https://github.com/tuya/tuya-panel-cli/releases/latest) 界面安装最新的可执行文件压缩包 `tuya-panel-cli-x86_64-pc-windows-msvc.zip`

![](https://images.tuyacn.com/fe-static/docs/img/aff7b378-c024-4358-9ca7-d3616df24890.png)

2、解压到任意位置，比如 `C:\tuya-panel-cli` 目录下

![](https://images.tuyacn.com/fe-static/docs/img/56b1bd45-ea79-4bca-8e64-0f6fbae645fa.png)

3、设置环境变量

把可执行文件的安装目录，比如我们刚设置的 `C:\tuya-panel-cli` 添加到用户环境变量 `Path` 中：

![](https://images.tuyacn.com/fe-static/docs/img/7af7585a-d2bc-4ea6-9ac5-5f5073ac24a4.png)

4、重新打开 Powershell 命令行输入 `tuya-panel-cli --version` 验证

## 技术支持

- 开发者中心：https://developer.tuya.com/cn/
- 帮助中心：https://support.tuya.com/cn/help
- 技术支持工单中心：https://iot.tuya.com/council/
- 详细文档：https://panel-docs.tuyacn.com/

## License

[MIT License](./LICENSE)
