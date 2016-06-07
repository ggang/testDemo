*** Settings ***
Resource          ../../keywordManaer/首页.robot
Resource          ../../keywordManaer/公共关键字.robot
Resource          ../../keywordManaer/会员登录.robot
Resource          ../../keywordManaer/底部证书.robot

*** Keywords ***
点击操作指南链接
    [Arguments]    ${name}    ${key}
    ${xpath}    点击底部链接    ${name}    ${key}
    [Return]    ${xpath}

检查是否成功进入帮助中心页面
    [Arguments]    ${url}
    select window    url=${url}
    wait until page contains    帮助中心    10    未加载成功

检查是否成功进入链接页面
    [Arguments]    ${url}
    run keyword if    '${url}'=='http://www.ggang.cn/Copyright/Bigevent'    检查是否成功进入钢钢网大事记页面    ${url}
    ...    ELSE IF    '${url}'=='http://www.sojump.com/jq/5929132.aspx'    检查是否成功进入调查问卷页面    ${url}
    ...    ELSE IF    '${url}'=='http://www.ggang.cn/Copyright/sitemap'    检查是否进入网站地图页面    ${url}
    ...    ELSE    检查是否成功进入帮助中心页面    ${url}

检查是否成功进入钢钢网大事记页面
    [Arguments]    ${url}
    select window    url=${url}
    ${title}    get title
    should be equal    ${title}    钢钢网大事件

检查是否成功进入调查问卷页面
    [Arguments]    ${url}
    select window    url=${url}
    ${title}    get title
    should be equal    ${title}    钢钢网产品使用调查问卷

检查是否进入网站地图页面
    [Arguments]    ${url}
    select window    url=${url}
    wait until page contains    网站地图    10    未加载成功

点击证书图片
    [Arguments]    ${name}    ${key}
    ${src}    点击底部证书图片    ${name}    ${key}
    [Return]    ${src}

检查是否进入证书页面
    [Arguments]    ${url}
    run keyword if    '${url}'=='http://www.ggang.cn/Copyright/Software'    检查是否进入软件著作权限页面    ${url}
    ...    ELSE IF    '${url}'=='http://www.ggang.cn/Copyright/HiTech'    检查是否进入高新科技企业    ${url}
    ...    ELSE IF    '${url}'=='http://www.anquan.org/authenticate/cert/?site=www.ggang.cn&at=realname'    检查是否进入安全页面    ${url}
    ...    ELSE IF    '${url}'=='http://www.cyberpolice.cn/wfjb/'    检查是否进入网络违法页面    ${url}
    ...    ELSE IF    '${url}'=='https://ss.knet.cn/verifyseal.dll?sn=e14110331011255768ruq8000000&ct=df&a=1&pa=0.1910406419404661'    检查是否进入可信网站    ${url}
    [Teardown]
