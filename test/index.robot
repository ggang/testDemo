*** Settings ***
Documentation     首页
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
    [Documentation]    钢钢快报链接及点击更多测试
    [Setup]    公共关键字.进入首页
    [Template]    钢钢快报链接测试
    0
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
    13
    14
    15
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
    imageGangCaiRecomed    image09
    imageGangCaiRecomed    image10
    [Teardown]    关闭浏览器

test_recomand_table
    [Documentation]    钢材推荐表格链接测试
    [Setup]    公共关键字.进入首页
    点击钢材推荐表格测试
    [Teardown]    关闭浏览器

test_recommand_title
    [Documentation]    钢材推荐顶部标题测试
    [Setup]    公共关键字.进入首页
    [Template]    点击钢材推荐标题测试
    gangcaiTitile    title01
    gangcaiTitile    title02
    gangcaiTitile    title03
    gangcaiTitile    title04
    gangcaiTitile    title05
    gangcaiTitile    title06
    [Teardown]    关闭浏览器

test_recomand_sifang
    [Documentation]    去找四方库
    [Setup]    公共关键字.进入首页
    四方库测试
    [Teardown]    关闭浏览器

test_friendly_link
    [Documentation]    首页友情链接测试
    [Setup]    公共关键字.进入首页
    [Template]    点击友情链接测试
    BottomfriendlyLink    link1
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

test_bottom_opreation_guide
    [Documentation]    底部操作指南、常见问题、权益保障、关于链接测试
    [Setup]    公共关键字.进入首页
    [Template]    底部操作链接测试
    BottomOperationGuide    guide01
    BottomOperationGuide    guide02
    BottomOperationGuide    guide03
    BottomOperationGuide    guide04
    BottomOperationGuide    guide05
    BottomComonProblem    problem01
    BottomComonProblem    problem02
    BottomComonProblem    problem03
    BttomrightProtection    protect01
    BttomrightProtection    protect02
    BttomrightProtection    protect03
    BttomrightProtection    protect04
    BttomrightProtection    protect05
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
    BottomImage    imglink04
    BottomImage    imglink05
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
    Menu    menulink07
    [Teardown]    关闭浏览器

test_hot_search
    [Documentation]    热门搜索测试
    [Setup]    公共关键字.进入首页
    [Template]    热门搜索测试
    HotSearch    hot1
    HotSearch    hot2
    HotSearch    hot3
    HotSearch    hot4
    HotSearch    hot5
    HotSearch    hot6
    [Teardown]    关闭浏览器

test_wantBy
    [Documentation]    我要买测试（未登录，登录）,
    ...    1.登录状态点击我要买进入创建订单页面，
    ...    2.未登录状态点击我要买进入登录页面
    [Setup]    公共关键字.进入首页
    [Template]    我要买货测试
    indexActivex    wantBy    logined
    indexActivex    wantBy    unlogin
    [Teardown]    关闭浏览器

test_spot_good
    [Documentation]    去找货测试
    [Setup]    公共关键字.进入首页
    找货测试    indexActivex    spotgoods
    [Teardown]    关闭浏览器

test_apply_spd
    [Documentation]    申请商票贷
    [Setup]    公共关键字.进入首页
    申请商票贷测试    indexActivex    applyGp
    [Teardown]    关闭浏览器

test_fbzy
    [Documentation]    发布资源
    [Setup]    公共关键字.进入首页
    发布资源测试    http://www.ggang.cn/logistics.html
    [Teardown]    关闭浏览器

test_apply_justnow
    [Documentation]    钢票立即申请，其中包括逻辑： 未登录点击立即申请进入登录页面
    ...    已经登录，点击立即申请进入钢票申请页面
    [Setup]    公共关键字.进入首页
    [Template]    立即申请钢票测试
    indexActivex    applyliji    unlogin
    indexActivex    applyliji    login
    [Teardown]    关闭浏览器

test_contact_service
    [Documentation]    联系客服
    [Setup]    公共关键字.进入首页
    联系客服测试    http://www7.53kf.com/webCompany.php?arg=10107107&style=1
    [Teardown]    关闭浏览器
