*** Settings ***
Resource          ../PageObjectManager/钢材库/动态链接.robot
Resource          ../keywordManaer/公共关键字.robot
Resource          ../keywordManaer/钢材库.robot

*** Keywords ***
进入四方库流程
    进入首页
    全屏操作
    点击四方现货菜单
    检查是否进入四方现货页面

点击四方现货链接流程
    [Arguments]    ${xpath}
    ${title}    根据路径获取链接title属性    ${xpath}
    ${href}    根据路径获取链接地址    ${xpath}
    等待加载详情出现
    拖动窗口至底部
    点击动态链接    ${xpath}
