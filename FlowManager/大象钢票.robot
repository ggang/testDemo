*** Settings ***
Resource          ../PageObjectManager/钢材库/动态链接.robot
Resource          ../keywordManaer/公共关键字.robot
Resource          ../keywordManaer/钢材库.robot
Resource          ../PageObjectManager/大象钢票/商票买钢.robot
Resource          ../flow.robot

*** Keywords ***
进入大象钢票流程
    进入首页
    全屏操作
    点击大象钢票菜单
    检查是否进入大象钢票页面

商票买钢流程
    商票买钢

登录进入大象钢票流程
    进入首页
    全屏操作
    登录流程    ${login_user}    ${password}
    登录检查    ${result}
    点击大象钢票菜单
    检查是否进入大象钢票页面

以票换钱流程
    以票换钱

申请商票贷流程
    钢票页面申请商票贷

申请票据贴现流程
    申请票据贴现
