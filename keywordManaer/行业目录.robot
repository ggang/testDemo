*** Settings ***
Library           Selenium2Library
Library           ../until/constant.py
Variables         ../conf/test_conf.py

*** Keywords ***
点击并获取行业动态
    [Arguments]    ${name}    ${link_key}
    ${name}    Evaluate    '${name}'.encode("utf-8")
    ${key}    Evaluate    '${link_key}'.encode("utf-8")
    ${path}    set variable    ${CURDIR}${/}keyword_conf${/}url_xpath.conf
    ${xpath}    Read config    ${path}    ${name}    ${key}
    Execute Javascript    document.documentElement.scrollTop=9000
    Wait Until Page Contains Element    xpath=${xpath}    10    元素未加载
    ${onlick}    Get Element Attribute    xpath=${xpath}@onclick
    click element    xpath=${xpath}
    [Return]    ${onlick}

检查是否成功进入行业动态页面
    [Arguments]    ${url}
    select window    url=${url}
    ${title}    get title
    should be equal    ${title}    行业动态
