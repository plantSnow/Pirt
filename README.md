<!--
 * @Author: NingZhonghao 69165342@qq.com
 * 
 * @Date: 2024-05-13 16:13:41
 * @LastEditors: NingZhonghao 69165342@qq.com
 * @LastEditTime: 2024-05-13 17:22:51
 * @FilePath: \pirt\README.md
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->

# Pirt Trip

> 哈尔滨工业大学（深圳）2023届大一立项项目：旅行计划APP - Pirt

## 功能设计与初始规划

* *旅行计划功能*

  更接近于一个备忘录而非旅行 APP

  给出旅行准备中的代办项目，由用户自行填写
* *实时提醒功能*

  在用户记录的旅行计划时间段内，将用户的备忘备注提示在主页面显眼位置

  给用户提供天气、车票等实时更新的信息
* *记录回忆功能*

  给用户提供文本编辑平台，可以记下旅行感受、照片，以供未来回顾

  城市足迹：根据用户已完成的旅行计划生成点亮式的城市地图（仅限国内）

## 设计过程

> logo与页面设计

#### logo

* version 1：
  ![PirtLogo](./assets/images/pirt_logo.png)

#### 页面

* 模版来源：Pixso

## 开发过程

> 开发步骤：前端 => 后端

#### 前端部分

* [ ] 把图片做成程序，确定组件安排分布规划，完成样式的实现
* [ ] 通过 `Flutter` 框架中的 `BottomNavigator`、`TabView`、`route` 完成页面跳转的实现

#### 后端部分

* [ ] 用数据库技术 `MySQL` 与 `Dart` 语言（待定，也可能会使用其他常用的后端语言与技术，如较为简单的 `sql` 甚至 `csv`）完成数据库构建与应用后台功能实现

#### 项目结构

```mindmap
lib/
├── pages/
│   ├── first_page.dart                      // 首次打开屏幕的导航页，已完成，目前用于未完成的社区页的占位
│   │
│   ├── home_page.dart                       // 主页，即底部导航左起第一页，接近完成，缺少按钮跳转与功能
│   │
│   ├── plan_page.dart                       // 新建计划页，！！进行中！！
│   ├── add_plan_page.dart                   // 新建页，未完成
│   ├── add_task_page.dart
│   │
│   ├── journal_page.dart
│   │
│   ├── user_page.dart                       // 用户页，即
│   ├── plans_overview_page.dart             // 旅行计划总览页
│   └── setting_page.dart                    // 设置页，已完成，等待内部页面完成实现跳转
│
├── widgets/
│   ├── FirstPage/
│   │   ├── 
│   │   └── 
│   ├── HomePage/
│   │   ├── 
│   │   └── 
│   ├── PlanPage/
│   │   ├── 
│   │   └── 
│   ├── JournalPage/
│   │   ├── 
│   │   └── 
│   └── UserPage/
│       ├── 
│       └── 
│
├── services/
│   ├── api_service.dart
│   ├── db_service.dart
│   └── notification_service.dart
│
└── main.dart

assets/
├── images/
│   ├── pirt_logo.png
│   └── logo.png
│
├── fonts/
│   ├── tobeset/
│   │   ├── tobeset.json
│   │   └── tobeset.ttf
│
├── icons/
│   ├── 

```
