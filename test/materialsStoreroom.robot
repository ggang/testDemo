*** Settings ***
Documentation     钢材库
Resource          ../TemplateManager/钢材库.robot

*** Test Cases ***
test_dongtai_link
    [Documentation]    动态链接测试,（包含行业动态，下游状态，宏观经济下所有的链接）
    [Setup]    进入钢材库流程
    [Template]    动态链接测试
    steelWarehouse_link    dongtai01
    steelWarehouse_link    dongtai02
    steelWarehouse_link    dongtai03
    steelWarehouse_link    dongtai04
    steelWarehouse_link    xiayou01
    steelWarehouse_link    xiayou02
    steelWarehouse_link    xiayou03
    steelWarehouse_link    xiayou04
    steelWarehouse_link    hongguan01
    steelWarehouse_link    hongguan02
    steelWarehouse_link    hongguan03
    steelWarehouse_link    hongguan04
    [Teardown]    关闭浏览器
