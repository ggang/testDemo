*** Settings ***
Documentation     大象钢票
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
