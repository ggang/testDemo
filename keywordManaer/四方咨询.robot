*** Settings ***
Library           Selenium2Library

*** Keywords ***
点击并获取头条咨询
    wait until page contains element    xpath=/html/body/div[10]/div[2]/div[1]/div/div[1]/div/a    10    元素未加载
    ${onlick}    Get Element Attribute    xpath=/html/body/div[10]/div[2]/div[1]/div/div[1]/div/a@onclick
    log    ${onlick}
    click element    xpath=/html/body/div[10]/div[2]/div[1]/div/div[1]/div/a
    [Return]    ${onlick}

点击并获取第二条咨询
    wait until page contains element    xpath=/html/body/div[10]/div[2]/div[1]/div/div[1]/ul[1]/li/a    10    元素未加载
    ${onlick}    Get Element Attribute    xpath=/html/body/div[10]/div[2]/div[1]/div/div[1]/ul[1]/li/a@onclick
    log    ${onlick}
    click element    xpath=/html/body/div[10]/div[2]/div[1]/div/div[1]/ul[1]/li/a
    [Return]    ${onlick}

点击并获取第三条咨询
    wait until page contains element    xpath=/html/body/div[10]/div[2]/div[1]/div/div[1]/ul[2]/li/a    10    元素未加载
    ${onlick}    Get Element Attribute    xpath=/html/body/div[10]/div[2]/div[1]/div/div[1]/ul[2]/li/a@onclick
    log    ${onlick}
    click element    xpath=/html/body/div[10]/div[2]/div[1]/div/div[1]/ul[2]/li/a
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
    select window    url=${url}
    page should contain image    钢钢网
