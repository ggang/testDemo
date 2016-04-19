*** Settings ***
Documentation     钢材库
Resource          ../TemplateManager/钢材库.robot

*** Test Cases ***
test_dongtai_link
    [Documentation]    动态链接测试,（包含行业动态）
    [Setup]    进入钢材库流程
    [Template]    动态链接测试
    steelWarehouse_link    dongtai01    1
    steelWarehouse_link    dongtai02    2
    steelWarehouse_link    dongtai03    3
    steelWarehouse_link    dongtai04    4
    [Teardown]    关闭浏览器

test_xiayou_dongtai_link
    [Documentation]    钢材库，下游状态链接测试
    [Setup]    进入钢材库流程
    [Template]    下游动态链接测试
    steelWarehouse_link    xiayou01    1
    steelWarehouse_link    xiayou02    2
    steelWarehouse_link    xiayou03    3
    steelWarehouse_link    xiayou04    4
    [Teardown]    关闭浏览器

test_hongguan_dongtai_link
    [Documentation]    宏观经济下所有的链接
    [Setup]    进入钢材库流程
    [Template]    宏观经济动态链接测试
    steelWarehouse_link    hongguan01    1
    steelWarehouse_link    hongguan02    2
    steelWarehouse_link    hongguan03    3
    steelWarehouse_link    hongguan04    4
    [Teardown]    关闭浏览器
