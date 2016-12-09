*** Settings ***
Documentation     四方现库
Test Template
Resource          ../TemplateManager/四方现货.robot

*** Test Cases ***
test_spotGood_dongtailink
    [Documentation]    四方现库链接测试（其中包含：行业动态）
    [Setup]    进入四方库流程
    [Template]    四方现货动态链接测试
    sqareSpotGoods    dongtai01    1
    sqareSpotGoods    dongtai02    2
    sqareSpotGoods    dongtai03    3
    sqareSpotGoods    dongtai04    4
    [Teardown]    关闭浏览器

test_spotGood_xiayou_dongdai_link
    [Documentation]    四方现库链接测试（下游状态）
    [Setup]    进入四方库流程
    [Template]    四方现库下游动态链接测试
    sqareSpotGoods    xiayou01    1
    sqareSpotGoods    xiayou02    2
    sqareSpotGoods    xiayou03    3
    sqareSpotGoods    xiayou04    4
    [Teardown]    关闭浏览器

test_spotGood_hongguan_dongtai_link
    [Documentation]    四方现库链接测试（宏观经济）
    [Setup]    进入四方库流程
    [Template]    四方现库宏观经济动态链接测试
    sqareSpotGoods    hongguan01    1
    sqareSpotGoods    hongguan02    2
    sqareSpotGoods    hongguan03    3
    sqareSpotGoods    hongguan04    4
    [Teardown]    关闭浏览器
