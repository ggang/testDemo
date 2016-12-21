*** Settings ***
Library           Selenium2Library
Library           ../until/constant.py
Resource          公共关键字.robot

*** Keywords ***
点击并获取头条咨询
    wait until page contains element    xpath=/html/body/div[2]/div[3]/div[5]/div/ul/li[3]/ol/li[1]/div/p[1]/a    10    元素未加载
    ${onlick}    Get Element Attribute    xpath=/html/body/div[2]/div[3]/div[5]/div/ul/li[3]/ol/li[1]/div/p[1]/a@onclick
    log    ${onlick}
    click element    xpath=/html/body/div[2]/div[3]/div[5]/div/ul/li[3]/ol/li[1]/div/p[1]/a
    [Return]    ${onlick}

点击并获取第二条咨询
    wait until page contains element    xpath=/html/body/div[2]/div[3]/div[5]/div/ul/li[3]/ol/li[1]/div/p[2]/a    10    元素未加载
    ${onlick}    Get Element Attribute    xpath=/html/body/div[2]/div[3]/div[5]/div/ul/li[3]/ol/li[1]/div/p[2]/a@onclick
    log    ${onlick}
    click element    xpath=/html/body/div[2]/div[3]/div[5]/div/ul/li[3]/ol/li[1]/div/p[2]/a
    [Return]    ${onlick}

点击并获取第三条咨询
    wait until page contains element    xpath=/html/body/div[2]/div[3]/div[5]/div/ul/li[3]/ol/li[1]/div/p[3]/a    10    元素未加载
    ${onlick}    Get Element Attribute    xpath=/html/body/div[2]/div[3]/div[5]/div/ul/li[3]/ol/li[1]/div/p[3]/a@onclick
    log    ${onlick}
    click element    xpath=/html/body/div[2]/div[3]/div[5]/div/ul/li[3]/ol/li[1]/div/p[3]/a
    [Return]    ${onlick}

点击并获取第四条咨询
    wait until page contains element    xpath=/html/body/div[10]/div[2]/div[1]/div/div[1]/ul[3]/li/a    10    元素未加载
    ${onlick}    Get Element Attribute    xpath=/html/body/div[10]/div[2]/div[1]/div/div[1]/ul[3]/li/a@onclick
    log    ${onlick}
    click element    xpath=/html/body/div[10]/div[2]/div[1]/div/div[1]/ul[3]/li/a
    [Return]    ${onlick}

点击并获取第五条咨询
    wait until page contains element    xpath=/html/body/div[10]/div[2]/div[1]/div/div[1]/ul[4]/li/a    10    元素未加载
    ${onlick}    Get Element Attribute    xpath=/html/body/div[10]/div[2]/div[1]/div/div[1]/ul[4]/li/a@onclick
    log    ${onlick}
    click element    xpath=/html/body/div[10]/div[2]/div[1]/div/div[1]/ul[4]/li/a
    [Return]    ${onlick}

点击并获取第六条咨询
    wait until page contains element    xpath=/html/body/div[10]/div[2]/div[1]/div/div[2]/a    10    元素未加载
    ${onlick}    Get Element Attribute    xpath=/html/body/div[10]/div[2]/div[1]/div/div[2]/a@onclick
    log    ${onlick}
    click element    xpath=/html/body/div[10]/div[2]/div[1]/div/div[2]/a
    [Return]    ${onlick}

点击并获取第七条咨询
    wait until page contains element    xpath=/html/body/div[10]/div[2]/div[1]/div/ul[1]/li/a    10    元素未加载
    ${onlick}    Get Element Attribute    xpath=/html/body/div[10]/div[2]/div[1]/div/ul[1]/li/a@onclick
    log    ${onlick}
    click element    xpath=/html/body/div[10]/div[2]/div[1]/div/ul[1]/li/a
    [Return]    ${onlick}

点击并获取第八条咨询
    wait until page contains element    xpath=/html/body/div[10]/div[2]/div[1]/div/ul[2]/li/a    10    元素未加载
    ${onlick}    Get Element Attribute    xpath=/html/body/div[10]/div[2]/div[1]/div/ul[2]/li/a@onclick
    log    ${onlick}
    click element    xpath=/html/body/div[10]/div[2]/div[1]/div/ul[2]/li/a
    [Return]    ${onlick}

点击并获取第九条咨询
    wait until page contains element    xpath=/html/body/div[10]/div[2]/div[1]/div/ul[3]/li/a    10    元素未加载
    ${onlick}    Get Element Attribute    xpath=/html/body/div[10]/div[2]/div[1]/div/ul[3]/li/a@onclick
    log    ${onlick}
    click element    xpath=/html/body/div[10]/div[2]/div[1]/div/ul[3]/li/a
    [Return]    ${onlick}

点击并获取第十条咨询
    wait until page contains element    xpath=/html/body/div[10]/div[2]/div[1]/div/ul[4]/li/a    10    元素未加载
    ${onlick}    Get Element Attribute    xpath=/html/body/div[10]/div[2]/div[1]/div/ul[4]/li/a@onclick
    log    ${onlick}
    click element    xpath=/html/body/div[10]/div[2]/div[1]/div/ul[4]/li/a
    [Return]    ${onlick}

检查是否正确链接到新闻页面
    [Arguments]    ${url}
    [Documentation]    根据URL进入改页面，如果页面中包含钢钢网的图片代表已经成功进入新闻页面
    select window    url=${url}
    wait until keyword succeeds    1min    2sec    page should contain    行业动态

点击并获取新闻快讯
    [Arguments]    ${link_key}
    ${name}    Evaluate    'zixun'.encode("utf-8")
    ${key}    Evaluate    '${link_key}'.encode("utf-8")
    ${path}    set variable    ${CURDIR}${/}keyword_conf${/}url_xpath.conf
    ${xpath}    Read config    ${path}    ${name}    ${key}
    滚动屏幕至底部
    Wait Until Page Contains Element    xpath=${xpath}    10    元素未加载
    ${onlick}    Get Element Attribute    xpath=${xpath}@onclick
    log    ${onlick}
    click element    xpath=${xpath}
    [Return]    ${onlick}

检查是否正确链接到新闻资讯页面
    [Arguments]    ${url}
    select window    url=${url}
    wait until keyword succeeds    1min    2sec    page should contain    新闻快讯

检查是否链接到焦点新闻
    [Arguments]    ${url}
    select window    url=${url}
    wait until keyword succeeds    1min    2sec    page should contain    焦点新闻
