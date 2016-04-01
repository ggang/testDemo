*** Settings ***
Resource          ../TemplateManager/钢材库.robot

*** Test Cases ***
test_dongtai_link
    [Documentation]    动态链接测试
    [Setup]    进入钢材库流程
    [Template]    动态链接测试
    steelWarehouse_link     dongtai01
    steelWarehouse_link    dongtai02
    [Teardown]    关闭浏览器
