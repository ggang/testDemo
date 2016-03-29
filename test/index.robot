*** Settings ***
Resource          ../Template.robot
Library           String
Library           Collections
Library           ../until/constant.py

*** Test Cases ***
test_search
    [Documentation]    头部搜索测试
    [Setup]    公共关键字.进入首页
    [Template]    首页搜索测试
    低合金卷
    [Teardown]    关闭浏览器

test_ggkb
    [Documentation]    钢钢快报链接测试
    [Setup]    公共关键字.进入首页
    [Template]    钢钢快报链接测试
    1
    2
    3
    4
    5
    [Teardown]    关闭浏览器

test_zixun_dongtai
    [Documentation]    测试所有咨询行业动态及下游动态链接
    [Setup]    公共关键字.进入首页
    [Template]    四方咨询快报链接测试
    1
    2
    3
    4
    5
    6
    7
    8
    9
    10
    [Teardown]    关闭浏览器

test_zixun_news
    [Documentation]    四方咨询-新闻动态链接测试
    [Setup]    公共关键字.进入首页
    [Template]    四方咨询新闻快报链接测试
    1
    2
    3
    4
    5
    6
    7
    8
    9
    10
    11
    12
    [Teardown]    关闭浏览器

test_hangye_gangchang
    [Documentation]    行业目录-钢厂链接测试
    [Setup]    公共关键字.进入首页
    [Template]    行业目录链接测试
    gangchang    16
    gangchang    18
    gangchang    19
    gangchang    20
    gangchang    21
    gangchang    22
    gangchang    23
    gangchang    24
    gangchang    25
    gangchang    26
    gangchang    27
    gangchang    28
    [Teardown]    关闭浏览器

test_hangye_shichang
    [Documentation]    市场链接测试
    [Setup]    公共关键字.进入首页
    [Template]    行业目录链接测试
    shichang    29
    shichang    30
    shichang    31
    shichang    32
    shichang    33
    shichang    34
    shichang    35
    shichang    36
    shichang    37
    shichang    38
    shichang    39
    shichang    40
    [Teardown]    关闭浏览器

test_recomand_image
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
    imageGangCaiRecomed    image09
    imageGangCaiRecomed    image10
    [Teardown]    关闭浏览器

test_recomand_table
    [Setup]    公共关键字.进入首页
    点击钢材推荐表格测试
    [Teardown]    关闭浏览器

test_recommand_title
    [Setup]    公共关键字.进入首页
    [Template]    点击钢材推荐标题测试
    cangcaiTitile    title01
    cangcaiTitile    title02
    cangcaiTitile    title03
    cangcaiTitile    title04
    cangcaiTitile    title05
    cangcaiTitile    title06
    [Teardown]    关闭浏览器

test_friendly_link
    [Setup]    公共关键字.进入首页
    [Template]    点击友情链接测试
    BottomfriendlyLink     link1
    BottomfriendlyLink    link2
    BottomfriendlyLink    link3
    BottomfriendlyLink    link4
    BottomfriendlyLink    link5
    BottomfriendlyLink    link6
    BottomfriendlyLink    link7
    BottomfriendlyLink    link8
    BottomfriendlyLink    link9
    BottomfriendlyLink    link10
    [Teardown]    关闭浏览器

test_sele
    ${url}     Set Variable    https://www.tenpay.com/v2/
    run keyword if    '${url}'=='https://www.tenpay.com/v2/'    log    ${url}
    ...    ELSE IF    log    heheh
