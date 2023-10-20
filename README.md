# Uniapp Client SDK for OpenIM 👨‍💻💬

使用此 SDK 为您的应用程序添加即时消息功能。通过连接到自己的的 [OpenIM](https://www.openim.io/) 服务器，您只需几行代码即可快速将即时消息功能集成到您的应用程序中。

Android SDK 底层核心在 [OpenIM SDK Core](https://github.com/openimsdk/openim-sdk-core) 中实现。使用 [gomobile](https://github.com/golang/mobile)后，它可以被编译成一个 AAR 文件为 Android 集成。Android 通过 JSON 与 [OpenIM SDK Core](https://github.com/openimsdk/openim-sdk-core) 交互，并且 SDK 公开了一个重新封装的 API，以便于使用。在数据存储方面，Android 利用了 [OpenIM SDK Core](https://github.com/openimsdk/openim-sdk-core) 内部提供的 SQLite。

iOS SDK 底层核心在 [OpenIM SDK Core](https://github.com/openimsdk/openim-sdk-core) 中实现。使用 [gomobile](https://github.com/golang/mobile) 后，它可以被编译成一个 XCFramework 用于 iOS 集成。iOS 通过 JSON 与 [OpenIM SDK Core](https://github.com/openimsdk/openim-sdk-core) 交互，并且 SDK 公开了一个重新封装的 API，以便于使用。在数据存储方面，iOS 利用了 [OpenIM SDK Core](https://github.com/openimsdk/openim-sdk-core) 内部提供的 SQLite。

Uni-app 在 App 侧的原生扩展插件，支持使用 java、object-c 等原生语言编写。使用云插件或本地插件引入 SDK 将即时消息功能集成到您的应用程序中。

## 文档 📚

请访问 [https://doc.rentsoft.cn/](https://doc.rentsoft.cn/) 获取详细的文档和指南。

SDK参考请访问 [https://doc.rentsoft.cn/sdks/quickstart/browser](https://doc.rentsoft.cn/sdks/quickstart/browser)。

## 安装 💻

### 选择云插件或本地插件

- 您可以将文件夹 `Tuoyun-OpenIMSDK` 移动到项目根文件夹 `nativeplugins` 中。

- 然后你可以在你的 App 原生插件中添加。并选择 `OpenIMSDK`。

## 使用 🚀

您需要使用 `Hbuilder X` 云打包生成自定义调试基座，然后选择在手机上运行自定义调试基座。


## 示例 🌟

您可以在 [open-im-uniapp-demo](https://github.com/openimsdk/open-im-uniapp-demo) 中找到使用 SDK 的应用程序。

## 社区参与 :busts_in_silhouette:

- 📚 [OpenIM 社区](https://github.com/OpenIMSDK/community)
- 💕 [OpenIM 兴趣小组](https://github.com/Openim-sigs)
- 🚀 [加入我们的Slack社区](https://join.slack.com/t/openimsdk/shared_invite/zt-22720d66b-o_FvKxMTGXtcnnnHiMqe9Q)
- :eyes: [加入我们的微信社区](https://openim-1253691595.cos.ap-nanjing.myqcloud.com/WechatIMG20.jpeg)

## 社区会议 :calendar:

我们希望任何人都能参与到我们的社区并贡献代码，我们提供礼物和奖励，我们欢迎您每周四晚上加入我们。

我们的会议在 [OpenIM Slack](https://join.slack.com/t/openimsdk/shared_invite/zt-22720d66b-o_FvKxMTGXtcnnnHiMqe9Q) 🎯, 然后你可以搜索 Open-IM-Server 频道加入。

我们把每一次 [双周会](https://github.com/orgs/OpenIMSDK/discussions/categories/meeting) 记录在 [GitHub discussions](https://github.com/openimsdk/open-im-server/discussions/categories/meeting), 我们的历史会议记录以及会议回放可以在 [Google Docs :bookmark_tabs:](https://docs.google.com/document/d/1nx8MDpuG74NASx081JcCpxPgDITNTpIIos0DS6Vr9GU/edit?usp=sharing)。

## 谁在使用OpenIM :eyes:

查看我们的 [用户案例](https://github.com/OpenIMSDK/community/blob/main/ADOPTERS.md)。 不要犹豫，留下 [评论](https://github.com/openimsdk/open-im-server/issues/379) 并分享您的用例。

## 授权许可 :page_facing_up:

OpenIM 是在 Apache 2.0 许可下授权的. 查看 [LICENSE](https://github.com/openimsdk/open-im-server/tree/main/LICENSE) 获取完整的许可文本。