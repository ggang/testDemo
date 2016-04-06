*** Settings ***
Resource          ../PageObjectManager/钢材库/动态链接.robot
Resource          ../keywordManaer/公共关键字.robot
Resource          ../keywordManaer/钢材库.robot

*** Keywords ***
进入招标中心流程
    进入首页
    全屏操作
    点击招标中心菜单
    检查是否进入招标中心页面

点击招标中心动态连接流程
    [Arguments]    ${xpath}
    ${href}    根据路径获取链接地址    ${xpath}
    点击动态链接    ${xpath}
    [Return]    ${href}
