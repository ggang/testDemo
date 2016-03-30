*** Settings ***
Resource          ../../keywordManaer/首页.robot
Resource          ../../keywordManaer/公共关键字.robot
Resource          ../../keywordManaer/会员登录.robot

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
