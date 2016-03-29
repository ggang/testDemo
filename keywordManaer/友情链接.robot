*** Settings ***
Library           Selenium2Library
Library           ../until/constant.py

*** Keywords ***
点击链接地址
    [Arguments]    ${name}    ${key}
    ${name}    Evaluate    '${name}'.encode("utf-8")
    ${key}    Evaluate    '${key}'.encode("utf-8")
    ${path}    set variable    ${CURDIR}${/}keyword_conf${/}url_xpath.conf
    ${src}    Read config    ${path}    ${name}    ${key}
    Execute Javascript    document.documentElement.scrollTop=9000
    click element    xpath=${src}
    [Return]    ${src}

获取链接的网址
    [Arguments]    ${xpath}
    Wait Until Page Contains Element    xpath=${xpath}    20    链接未加载出来
    ${href}    get element attribute    xpath=${xpath}@href
    [Return]    ${href}

切换到友情链接页面
    [Arguments]    ${url}
    ${link_url}    set variable    https://www.tenpay.com/v3/
    run keyword if    '${url}'=='https://www.tenpay.com/v2/'    切换窗口至某页面    ${link_url}
    ...    ELSE    切换窗口至某页面    ${url}

切换窗口至某页面
    [Arguments]    ${url}
    select window    url=${url}
