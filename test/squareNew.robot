*** Settings ***
Documentation     四方资讯
Resource          ../TemplateManager/四方资讯.robot

*** Test Cases ***
test_sqare_link
    [Documentation]    钢钢要闻所有链接、行业动态所有链接
    [Setup]    进入四方资讯流程
    [Template]    四方资讯动态链接测试
    sqareInformation    importNews01
    sqareInformation    importNews02
    sqareInformation    importNews03
    sqareInformation    importNews04
    sqareInformation    importNews05
    sqareInformation    importNews06
    sqareInformation    importNews07
    sqareInformation    importNews08
    sqareInformation    hangyedongtai01
    sqareInformation    hangyedongtai02
    sqareInformation    hangyedongtai03
    sqareInformation    hangyedongtai04
    sqareInformation    hangyedongtai05
    sqareInformation    hangyedongtai06
    sqareInformation    hangyedongtai07
    sqareInformation    hangyedongtai08
    sqareInformation    hangyedongtai09
    sqareInformation    hangyedongtai10
    sqareInformation    hangyedongtai11
    sqareInformation    hangyedongtai12
    sqareInformation    hangyedongtai13
    sqareInformation    hangyedongtai14
    sqareInformation    hangyedongtai15
    sqareInformation    hangyedongtai16
    sqareInformation    hangyedongtai17
    [Teardown]    关闭浏览器

test_dong
    [Setup]    进入四方资讯流程
    mouse over    xpath=/html/body/div[6]/ul/li[4]
    Page Should Contain Image    4月1日波罗的海指数上升
    [Teardown]    关闭浏览器

test_sqare_xiayoudongtai_link
    [Documentation]    四方资讯，下游动态链接测试
    [Setup]    进入四方资讯流程
    [Template]    四方资讯下游动态链接测试
    sqareInformation    xiayoudongtai01
    sqareInformation    xiayoudongtai02
    sqareInformation    xiayoudongtai03
    sqareInformation    xiayoudongtai04
    sqareInformation    xiayoudongtai05
    sqareInformation    xiayoudongtai06
    sqareInformation    xiayoudongtai07
    sqareInformation    xiayoudongtai08
    sqareInformation    xiayoudongtai09
    sqareInformation    xiayoudongtai10
    sqareInformation    xiayoudongtai11
    sqareInformation    xiayoudongtai12
    sqareInformation    xiayoudongtai13
    sqareInformation    xiayoudongtai14
    sqareInformation    xiayoudongtai15
    sqareInformation    xiayoudongtai16
    [Teardown]    关闭浏览器

test_sqare_xinwendongtai_link
    [Documentation]    四方资讯新闻动态链接测试
    [Setup]    进入四方资讯流程
    [Template]    四方资讯新闻快报链接测试
    sqareInformation    xinwendongtai01
    sqareInformation    xinwendongtai02
    sqareInformation    xinwendongtai03
    sqareInformation    xinwendongtai04
    sqareInformation    xinwendongtai05
    sqareInformation    xinwendongtai06
    sqareInformation    xinwendongtai07
    sqareInformation    xinwendongtai08
    sqareInformation    xinwendongtai09
    sqareInformation    xinwendongtai10
    sqareInformation    xinwendongtai11
    sqareInformation    xinwendongtai12
    sqareInformation    xinwendongtai13
    sqareInformation    xinwendongtai14
    sqareInformation    xinwendongtai15
    sqareInformation    xinwendongtai16
    [Teardown]    关闭浏览器

test_sqare_hongguanjingji_link
    [Documentation]    宏观经济链接测试
    [Setup]    进入四方资讯流程
    [Template]    四方资讯宏观经济链接测试
    sqareInformation    hongguanjingji01
    sqareInformation    hongguanjingji02
    sqareInformation    hongguanjingji03
    sqareInformation    hongguanjingji04
    [Teardown]    关闭浏览器

test_sqare_jiaodiannew_link
    [Documentation]    四方资讯新闻焦点链接测试
    [Setup]    进入四方资讯流程
    [Template]    四方资讯焦点新闻链接测试
    sqareInformation    jiaodiannews01
    sqareInformation    jiaodiannews02
    sqareInformation    jiaodiannews03
    sqareInformation    jiaodiannews04
    sqareInformation    jiaodiannews05
    sqareInformation    jiaodiannews06
    sqareInformation    jiaodiannews07
    sqareInformation    jiaodiannews08
    sqareInformation    jiaodiannews09
    sqareInformation    jiaodiannews10
    sqareInformation    jiaodiannews11
    sqareInformation    jiaodiannews12
    [Teardown]    关闭浏览器
