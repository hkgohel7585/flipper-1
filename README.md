
[![Build Status](https://travis-ci.org/yegobox/flipper.svg?branch=master)](https://travis-ci.org/yegobox/flipper)

# Mission
Help Connect wholeseller and reteller and avoid middleman while helping to book keep transactions.

# Chat with us use
[link to Our chat!](https://discord.gg/5swR6uY])

# Web & Desktop| 网络和桌面
- Web and desktop application are on the master branch.
- Web和桌面应用程序位于master分支上。
# Mobile android & ios | 手机Android和iOS
- Android and ios are found on mobile branch
- 在移动分支上可以找到Android和ios...
# Tech used | 二手技术
- We use angular and flutter to build this project and some php(Laravel backend), but you don't need backend at all!
- 我们使用angular和flutter来构建该项目和一些php（Laravel后端），但是您根本不需要后端！

# Make sure to use node v10.16.3 otherwise it won't run.

# Introduction

The idea of the flipper is to build a square point of sale-like [Square app ](https://squareup.com/signup/])
but open-source so that anyone can have a point of sale, stock management, and plus other features for free.
of cause, the idea of giving a reference to the Square app is to give you a general idea of what we are trying to do.

鳍状肢的想法是建立一个像方形的销售点[Square app]https://squareup.com/signup/]）
但采用开放源代码，因此任何人都可以免费获得销售点，库存管理以及其他功能。
当然，引用Square应用程序的目的是让您对我们正在尝试做的事情有一个大致的了解。

Currently runs with:

- Angular v8.2.12
- Electron v7.0.0
- Electron Builder v21.2.0
- nodejs v10.16.3

With this config, you can :

- Run flipper in a local development environment with Electron & Hot reload
- Run flipper in a production environment
- Package flipper into an executable file for Linux, Windows & Mac

/!\ Angular 8.x or Later CLI needs Node v10.16.3 to work.

## Getting Started

Clone this repository locally :

``` bash
git clone https://github.com/maximegris/angular-electron.git
```

Install dependencies with npm :

``` bash
npm install
```


## To build for development
``` bash
 npm run start
```
Voila! Flipper start with hot reload !

The application code is managed by `main.ts`. In this sample, the app runs with a simple Angular App (http://localhost:4200) and an Electron window.
The Angular component contains an example of Electron and NodeJS native lib import.
You can disable "Developer Tools" by commenting `win.webContents.openDevTools();` in `main.ts`.

## Included Commands

|Command|Description|
|--|--|
|`npm run ng:serve:web`| Execute the app in the browser |
|`npm run build`| Build the app. Your built files are in the /dist folder. |
|`npm run build:prod`| Build the app with Angular aot. Your built files are in the /dist folder. |
|`npm run electron:local`| Builds flipperlication and start electron
|`npm run electron:linux`| Builds flipperlication and creates an app consumable on linux system |
|`npm run electron:windows`| On a Windows OS, builds flipperlication and creates an app consumable in windows 32/64 bit systems |
|`npm run electron:mac`|  On a MAC OS, builds flipperlication and generates a `.app` file of flipperlication that can be run on Mac |

**flipperlication is optimised. Only /dist folder and node dependencies are included in the executable.**

## You want to use a specific lib (like rxjs) in electron main thread ?

You can do this! Just by importing your library in npm dependencies (not devDependencies) with `npm install --save`. It will be loaded by electron during build phase and added to the final package. Then use your library by importing it in `main.ts` file. Easy no ?

## Browser mode

Maybe you want to execute the application in the browser with hot reload ? You can do it with `npm run ng:serve:web`.
**Note that you can't use Electron or NodeJS native libraries in this case.** Please check `providers/electron.service.ts` to watch how conditional import of electron/Native libraries is done.