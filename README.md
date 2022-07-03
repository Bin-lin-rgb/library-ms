# library-ms

数据库实验3图书管理系统

## 项目结构
```
E:.
├─.idea
├─src
│  └─main
│      ├─java
│      │  └─com
│      │      └─yx
│      │          ├─codeutil
│      │          ├─controller
│      │          ├─dao
│      │          ├─interceptor
│      │          ├─po
│      │          ├─service
│      │          │  └─impl
│      │          └─utils
│      ├─resources
│      │  └─com
│      │      └─yx
│      │          └─dao
│      └─webapp
│          ├─api
│          ├─css
│          │  └─themes
│          ├─images
│          ├─js
│          │  └─lay-module
│          │      ├─echarts
│          │      ├─iconPicker
│          │      ├─layarea
│          │      ├─layuimini
│          │      ├─step-lay
│          │      ├─tableSelect
│          │      ├─treetable-lay
│          │      └─wangEditor
│          │          └─fonts
│          ├─lib
│          │  ├─font-awesome-4.7.0
│          │  │  ├─css
│          │  │  ├─fonts
│          │  │  ├─less
│          │  │  └─scss
│          │  ├─jq-module
│          │  │  └─zyupload
│          │  ├─jquery-3.4.1
│          │  └─layui-v2.5.5
│          │      ├─css
│          │      │  └─modules
│          │      │      ├─laydate
│          │      │      │  └─default
│          │      │      └─layer
│          │      │          └─default
│          │      ├─font
│          │      ├─images
│          │      │  └─face
│          │      └─lay
│          │          └─modules
│          ├─page
│          │  └─table
│          └─WEB-INF
│              └─pages
│                  ├─admin
│                  ├─book
│                  ├─count
│                  ├─lend
│                  ├─notice
│                  ├─pwdUpdate
│                  ├─reader
│                  └─type
└─target
    ├─classes
    └─LibraryProject-1.0-SNAPSHOT


```

在codeutil层，主要是一些验证码相关的代码；

在controller层，就是控制层；
在dao层（包括resource下的），就是对数据库进行直接的操作。
区别于service层。它是与业务逻辑更加相近。
po层，相当于实体类，对应数据库的表，可以通过mybatis生成。
在interceptor是登陆拦截。
util是工具类，主要是返回数据、常量。

在resources下，主要就是一些配置文件。
在webapp下，就是一些静态资源。


## 运行环境

需要修改 jdk 版本，注意和自己下载的 Tomcat 版本要相近
（比如jdk是1.8，然后Tomcat是太新版本以上好像会出问题）

我这里是 jdk 11，然后 Tomcat 9.0.64 。

若要运行，需要修改数据库配置文件为自己的账号密码。
