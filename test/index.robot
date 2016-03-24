*** Settings ***
Resource          ../Template.robot

*** Test Cases ***
test_search
    [Documentation]    头部搜索测试
    [Setup]    公共关键字.进入首页
    [Template]    首页搜索测试
    低合金卷
    [Teardown]    关闭浏览器

test_ggkb
    [Documentation]    钢钢快报链接测试
    [Setup]    公共关键字.进入首页
    [Template]    钢钢快报链接测试
    1
    2
    3
    4
    5
    [Teardown]    关闭浏览器

test_zixun_dongtai
    [Documentation]    测试所有咨询动态链接
    [Setup]    公共关键字.进入首页
    [Template]    四方咨询快报链接测试
    1
    2
    3
    4
    5
    6
    7
    8
    9
    10
    [Teardown]    关闭浏览器
