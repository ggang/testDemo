*** Settings ***
Library           Selenium2Library
Library           ../until/constant.py

*** Keywords ***
点击图片链接
    [Arguments]    ${name}    ${key}
    ${name}    Evaluate    '${name}'.encode("utf-8")
    ${key}    Evaluate    '${key}'.encode("utf-8")
    ${path}    set variable    ${CURDIR}${/}keyword_conf${/}url_xpath.conf
    ${src}    Read config    ${path}    ${name}    ${key}
    Execute Javascript    document.documentElement.scrollTop=9000
    click image    ${src}

获取表格具体位置
    [Documentation]    目前方法暂时写死，后期可更新为公共方法
    @{xpath}    TableXpath
    [Return]    @{xpath}

点击表格元素
    [Arguments]    ${xpath}
    click element    xpath=${xpath}

点击钢材标题
    [Arguments]    ${name}    ${key}
    ${name}    Evaluate    '${name}'.encode("utf-8")
    ${key}    Evaluate    '${key}'.encode("utf-8")
    ${path}    set variable    ${CURDIR}${/}keyword_conf${/}url_xpath.conf
    ${src}    Read config    ${path}    ${name}    ${key}
    Execute Javascript    document.documentElement.scrollTop=1000
    click element    xpath=${src}
    [Return]    ${src}

点击进入四方现货
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=/html/body/div[7]/div[2]/div[2]/input    10    元素未加载出来
    click element    xpath=/html/body/div[7]/div[2]/div[2]/input
