*** Settings ***
Resource          ../PageObjectManager/钢材库/动态链接.robot
Resource          ../keywordManaer/公共关键字.robot
Resource          ../keywordManaer/钢材库.robot

*** Keywords ***
点击动态链接流程
    [Arguments]    ${xpath}
    [Documentation]    本关键字包含：
    ...    1.根据路径获取相应链接TITLE属性
    ...    2.根据路径获取相应链接地址
    ${title}    根据路径获取链接title属性    ${xpath}
    等待加载详情出现
    拖动窗口至底部
    ${href}    根据路径获取链接地址    ${xpath}
    点击动态链接    ${xpath}
    [Return]    ${title}    ${href}

进入钢材库流程
    进入首页
    全屏操作
    点击钢材库菜单
    检查是否成功进入钢材库页面

动态链接判断
    [Arguments]    ${xpath}
    ${title}    ${href}    点击动态链接流程    ${xpath}
    检查是否进入新闻链接详情页面    ${href}    ${title}
    关闭当前页面
    切换到钢材库页面
