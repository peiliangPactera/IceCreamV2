# Flutter Waff Skeleton

Application skeleton based on waff-framework

## Getting Started

1. Download the [flutter-waff-skeleton](https://github.com/Pactera-BG9-IND-Dev-WF-Center/flutter-waff-skeleton) source code.
2. Unzip `flutter-waff-skeleton.zip` and open `pubspec.yaml` file, modify `name`, `description` and `version` parameters.
3. open `lib/configs/env.dart` file，modify `_title` parameter.
4. Open the .gitignore file and delete the last `# project files` part
4. Into the `flutter-waff-skeleton` folder, execute the following command:

```bash
flutter create --org=com.your-domain.project-name --project-name=your_project_name .
```

> The package is downloaded from `https://pub.dartlang.org` by default. Deleting the `pubspec.lock` file will use the mirror site you set to increase the download speed.
> `--org` The organization responsible for your new Flutter project, in reverse domain name notation. This string is used in Java package names and as prefix in the iOS bundle identifier. (defaults to "com.example")
> `--project-name` The project name for this new Flutter project. This must be a valid dart package name.

5. Start the app via `main.dart`, `main_dev.dart` or `main_test.dart` file.

------

基于 [waff](https://github.com/Pactera-BG9-IND-Dev-WF-Center/flutter-waff) 框架的应用程序骨架

## 入门

1. 下载 [flutter-waff-skeleton](https://github.com/Pactera-BG9-IND-Dev-WF-Center/flutter-waff-skeleton) 源码
2. 解压缩 `flutter-waff-skeleton.zip` 并打开 `pubspec.yaml` 文件，修改 `name`, `description` and `version` 等参数
3. 打开 `lib/configs/env.dart` 文件，修改 `_title` 参数
4. 打开 .gitignore 文件，删除最后的 `# project files` 部分
5. 打开命令行控制台，进入 `flutter-waff-skeleton` 文件夹并执行以下命令：

```bash
flutter create --org=com.your-domain.project-name --project-name=your_project_name .
```

> 默认从 `https://pub.dartlang.org` 下载软件包，删除 `pubspec.lock` 文件将使用你设定的镜像站点，提高下载速度。
> `--org` The organization responsible for your new Flutter project, in reverse domain name notation. This string is used in Java package names and as prefix in the iOS bundle identifier. (defaults to "com.example")
> `--project-name` The project name for this new Flutter project. This must be a valid dart package name.

6. 通过 `main.dart`, `main_dev.dart` 或 `main_test.dart` 文件启动应用程序