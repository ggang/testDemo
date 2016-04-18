# 钢钢自动化架构

##一.概况
本测试架构主要分为5层：testData/testcase 层、TemplateManager、
flowManager、PageObjectManager、keywordManager

##二.详情
####第一层：testData/testcase
用例及数据层：测试用例/测试数据（引入模板）、关键字+数据

####第二层：TemplateManager
测试模板层：结合flowManager加入pageObjdect/keyword 断言
####第三层：FlowManager
流程层：主要结合pageObject 各个方法完成业务功能的封装
####第四层：PageObjectManager
方法层：主要封装纯功能的方法，逻辑等进行的封装
####第五层：KeywordManager
元素层：本层主要定位页面元素、测试结果提示的封装等

###注意：

######1.测试数据
采用模板引入的方式，测试数据存放testData/testcase 层
######2.常用的配置
链接数据库的地址，常用的用户名、官网地址等
 比如： base_url，loginname,passwod,目前本文主本架构存放于 conf 文件夹的test_conf 文件中
######3.元素的获取方式
本架构主要利用读取配置文件方式，使用until 中的方法读取 keywordManager 配置文件的方法
