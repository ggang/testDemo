*** Settings ***
Resource          ../PageObjectManager/钢材库/动态链接.robot
Resource          ../keywordManaer/公共关键字.robot

*** Keywords ***
点击动态链接流程
    [Arguments]    ${xpath}
    ${title}    根据路径获取链接title属性    ${xpath}
    ${href}    根据路径获取链接地址    ${xpath}
    sleep    3
    拖动窗口至底部
    点击动态链接    ${xpath}
    [Return]    ${title}    ${href}

进入钢材库流程
    进入首页
    全屏操作
    点击钢材库菜单
    检查是否成功进入钢材库页面
