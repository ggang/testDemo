*** Settings ***
Documentation     四方现库
Test Template
Resource          ../TemplateManager/四方现货.robot

*** Test Cases ***
test_spotGood_dongtailink
    [Documentation]    四方现库链接测试（其中包含：行业动态，下游状态，宏观经济）
    [Setup]    进入四方库流程
    [Template]    四方现货动态链接测试
    sqareSpotGoods    dongtai01
    sqareSpotGoods    dongtai02
    sqareSpotGoods    dongtai03
    sqareSpotGoods    dongtai04
    sqareSpotGoods    xiayou01
    sqareSpotGoods    xiayou02
    sqareSpotGoods    xiayou03
    sqareSpotGoods    xiayou04
    sqareSpotGoods    hongguan01
    sqareSpotGoods    hongguan02
    sqareSpotGoods    hongguan03
    sqareSpotGoods    hongguan04
    [Teardown]    关闭浏览器
