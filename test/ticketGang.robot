*** Settings ***
Documentation     钢票
Resource          ../TemplateManager/大象钢票.robot

*** Test Cases ***
test_ticket
    [Documentation]    大象钢票-未登录点击申请测试
    [Setup]    进入大象钢票流程
    [Template]
    申请钢票测试
    [Teardown]    关闭浏览器

test_ticket_login
    [Documentation]    大象钢票-登录申请钢票验证
    [Setup]    登录进入大象钢票流程
    申请钢票测试
    [Teardown]    关闭浏览器

test_huanqian
    [Documentation]    大象钢票-以票换钱测试
    [Setup]    进入大象钢票流程
    以票换钱测试
    [Teardown]    关闭浏览器

test_apply_buniness
    [Documentation]    申请商票贷--未登录状态进入登录页面验证
    [Setup]    进入大象钢票流程
    申请商票贷测试
    [Teardown]    关闭浏览器

test_apply_buiness_login
    [Documentation]    申请商票贷--登录状态进入申请钢票页面
    [Setup]    登录进入大象钢票流程
    申请商票贷测试
    [Teardown]    关闭浏览器

test_apply_discount
    [Documentation]    申请票据贴现测试
    [Setup]    进入大象钢票流程
    申请票据贴现测试
    [Teardown]    关闭浏览器
