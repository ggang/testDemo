*** Settings ***
Library           Selenium2Library
Library           ../until/constant.py
Resource          公共关键字.robot

*** Keywords ***
点击底部证书图片
    [Arguments]    ${name}    ${key}
    ${name}    Evaluate    '${name}'.encode("utf-8")
    ${key}    Evaluate    '${key}'.encode("utf-8")
    ${path}    set variable    ${CURDIR}${/}keyword_conf${/}url_xpath.conf
    ${xpath}    Read config    ${path}    ${name}    ${key}
    Execute Javascript    document.documentElement.scrollTop=9000
    Comment    ${length}    get length    ${src}
    Comment    ${href}    加入官网地址    ${src}
    Comment    ${href}=    run keyword if    ${length}<30    加入官网地址    ${src}
    Comment    ...
    ...    ELSE    ${src}
    Comment    log    ${href}
    Comment    click link    ${href}
    Wait Until Page Contains Element    xpath=${xpath}    10    元素未加载
    ${href}    Get Element Attribute    xpath=${xpath}@href
    click element    xpath=${xpath}
    [Return]    ${href}

检查是否进入软件著作权限页面
    [Arguments]    ${url}
    select window    url=${url}
    ${title}    get title
    should be equal    ${title}    软件著作权

检查是否进入高新科技企业
    [Arguments]    ${url}
    select window    url=${url}
    ${title}    get title
    should be equal    ${title}    高新科技企业

检查是否进入安全页面
    [Arguments]    ${url}
    ${url}    set variable    https://www.anquan.org/authenticate/cert/?site=www.ggang.cn&at=realname
    select window    url=${url}
    wait until page contains    品牌宝验证企业身份信息和经营范围是否符合国家法律法规

检查是否进入网络违法页面
    [Arguments]    ${url}
    select window    url=${url}
    ${title}    get title
    should be equal    ${title}    网络违法犯罪举报网站

检查是否进入可信网站
    [Arguments]    ${url}
    select window    url=${url}
    ${title}    get title
    should be equal    ${title}    可信网站
