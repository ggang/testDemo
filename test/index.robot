*** Settings ***
Documentation     首页
Resource          ../Template.robot
Library           String
Library           Collections
Library           ../until/constant.py
Resource          ../keywordManaer/公共关键字.robot

*** Test Cases ***
test_search
    [Documentation]    头部搜索测试
    [Setup]    公共关键字.进入首页
    [Template]    首页搜索测试
    低合金卷
    [Teardown]    关闭浏览器

test_zixun_dongtai
    [Documentation]    测试所有咨询行业动态及下游动态链接
    [Setup]    公共关键字.进入首页
    [Template]    四方咨询快报链接测试
    1
    2
    3
    [Teardown]    关闭浏览器

test_zixun_news
    [Documentation]    四方咨询-新闻快讯
    [Setup]    公共关键字.进入首页
    [Template]    四方咨询新闻快报链接测试
    1
    2
    [Teardown]    关闭浏览器

test_hangye_gangchang
    [Documentation]    底部行业目录-钢厂链接测试
    [Setup]    公共关键字.进入首页
    [Template]    行业目录链接测试
    gangchang    16
    gangchang    18
    gangchang    19
    gangchang    20
    [Teardown]    关闭浏览器

test_hangye_shichang
    [Documentation]    市场链接测试
    [Setup]    公共关键字.进入首页
    [Template]    行业目录链接测试
    shichang    29
    shichang    30
    shichang    31
    shichang    32
    [Teardown]    关闭浏览器

test_recomand_image
    [Documentation]    钢材图片推荐测试
    [Setup]    公共关键字.进入首页
    [Template]    点击钢材推荐图片测试
    imageGangCaiRecomed    image01
    imageGangCaiRecomed    image02
    imageGangCaiRecomed    image03
    imageGangCaiRecomed    image04
    imageGangCaiRecomed    image05
    imageGangCaiRecomed    image06
    imageGangCaiRecomed    image07
    imageGangCaiRecomed    image08
    [Teardown]    关闭浏览器

test_recomand_table
    [Documentation]    钢材推荐表格链接测试
    [Setup]    公共关键字.进入首页
    点击钢材推荐表格测试
    [Teardown]    关闭浏览器

test_friendly_link
    [Documentation]    首页友情链接测试
    [Setup]    公共关键字.进入首页
    [Template]    点击友情链接测试
    BottomfriendlyLink    link1
    BottomfriendlyLink    link3
    BottomfriendlyLink    link4
    BottomfriendlyLink    link5
    BottomfriendlyLink    link6
    BottomfriendlyLink    link7
    BottomfriendlyLink    link8
    BottomfriendlyLink    link9
    BottomfriendlyLink    link10
    [Teardown]    关闭浏览器

test_bottom_opreation_guide
    [Documentation]    底部操作指南、关于我们链接测试
    [Setup]    公共关键字.进入首页
    [Template]    底部操作链接测试
    BottomOperationGuide    guide01
    BottomOperationGuide    guide02
    BottomOperationGuide    guide03
    BottomOperationGuide    guide04
    BottomOperationGuide    guide05
    BottomOperationGuide    guide06
    BottomOperationGuide    guide07
    BottomOperationGuide    guide08
    BottomAboutUs    about01
    BottomAboutUs    about02
    BottomAboutUs    about01
    BottomAboutUs    about02
    BottomAboutUs    about03
    BottomAboutUs    about04
    BottomAboutUs    about05
    [Teardown]    关闭浏览器

test_bottom_certficate _image
    [Documentation]    底部证书测试
    [Setup]    公共关键字.进入首页
    [Template]    底部证书链接测试
    BottomImage    imglink01
    BottomImage    imglink02
    BottomImage    imglink03
    [Teardown]    关闭浏览器

test_menu_switch
    [Documentation]    首页菜单切换测试
    [Setup]    公共关键字.进入首页
    [Template]    菜单切换测试
    Menu    menulink02
    Menu    menulink03
    Menu    menulink04
    Menu    menulink05
    Menu    menulink06
    [Teardown]    关闭浏览器

test_gg_kb
    [Documentation]    钢钢快报
    [Setup]    公共关键字.进入首页
    [Template]    钢钢快报链接测试
    1
    2
    3
    4
    5
    [Teardown]    关闭浏览器
