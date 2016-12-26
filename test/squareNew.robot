*** Settings ***
Documentation     四方资讯
Resource          ../TemplateManager/四方资讯.robot

*** Test Cases ***
test_sqare_link
    [Documentation]    四方资讯-行业动态
    [Setup]    进入四方资讯流程
    [Template]    四方资讯行业动态链接测试
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
    [Teardown]    关闭浏览器

test_sqare_xinwen_link
    [Documentation]    四方资讯页面，新闻资讯/宏观经济链接测试
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
    sqareInformation    hongguanjingji07
    sqareInformation    hongguanjingji08
    sqareInformation    hongguanjingji09
    sqareInformation    hongguanjingji10
    sqareInformation    hongguanjingji11
    sqareInformation    hongguanjingji12
    sqareInformation    hongguanjingji13
    sqareInformation    hongguanjingji14
    sqareInformation    hongguanjingji15
    sqareInformation    hongguanjingji16
    sqareInformation    hongguanjingji17
    sqareInformation    hongguanjingji18
    [Teardown]    关闭浏览器

test_sqare_hongguanjingji_link
    [Documentation]    宏观经济链接测试（前6个）
    [Setup]    进入四方资讯流程
    [Template]    四方资讯宏观经济链接测试
    sqareInformation    hongguanjingji01
    sqareInformation    hongguanjingji02
    sqareInformation    hongguanjingji03
    sqareInformation    hongguanjingji04
    sqareInformation    hongguanjingji05
    sqareInformation    hongguanjingji06
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

test_image_link
    [Documentation]    四方资讯图片测试
    [Setup]    进入四方资讯流程
    四方资讯图片测试
    [Teardown]    关闭浏览器

test_sqare_top
    [Documentation]    新闻资讯头条
    [Setup]    进入四方资讯流程
    [Template]    四方资讯top新闻链接测试
    sqareInformation     topnews01
    sqareInformation    topnews02
    sqareInformation    topnews03
    [Teardown]    关闭浏览器
