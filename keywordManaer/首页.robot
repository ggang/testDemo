*** Settings ***
Library           Selenium2Library

*** Keywords ***
点击去找货按钮
    click button    path=//[@value="去找货"]

点击申请商票贷
    click button    xpath=//input[@value="申请商票贷"]

点击更多（钢钢快报）
    click link    http://www.ggang.cn/newskuaibao/Index/64

获取并点击快报最新一条信息
    Wait Until Page Contains Element    xpath=/html/body/div[5]/div/div[2]/div[2]/ul/li[1]/a    20    链接未加载出来
    ${text}    get element attribute    xpath=/html/body/div[5]/div/div[2]/div[2]/ul/li[1]/a@href
    click element    xpath=/html/body/div[5]/div/div[2]/div[2]/ul/li[1]/a
    [Return]    ${text}

点击更多（钢材推荐）
    click link    http://res.ggang.cn/

点击进入四方库按钮
    click link    xpath=//input[@vlue="进入四方现货"]

点击更多（大象钢票）
    click link    http://bill.ggang.cn/

点击立即申请按钮
    click element    xpath=//input[@value="立即申请"]

点击更多（小象快运）
    click link    http://www.ggang.cn/logistics.html

点击发货源按钮

点击更多（四方资讯）

获取并点击快报第二条记录
    Wait Until Page Contains Element    xpath=/html/body/div[5]/div/div[2]/div[2]/ul/li[2]/a    20    链接未加载出来
    ${text}    get element attribute    xpath=/html/body/div[5]/div/div[2]/div[2]/ul/li[2]/a@href
    click element    xpath=/html/body/div[5]/div/div[2]/div[2]/ul/li[2]/a
    [Return]    ${text}

获取并点击快报第三条记录
    Wait Until Page Contains Element    xpath=/html/body/div[5]/div/div[2]/div[2]/ul/li[3]/a    20    链接未加载出来
    ${text}    get element attribute    xpath=/html/body/div[5]/div/div[2]/div[2]/ul/li[3]/a@href
    click element    xpath=/html/body/div[5]/div/div[2]/div[2]/ul/li[3]/a
    [Return]    ${text}

获取并点击快报第四条记录
    Wait Until Page Contains Element    xpath=/html/body/div[5]/div/div[2]/div[2]/ul/li[4]/a    20    链接未加载出来
    ${text}    get element attribute    xpath=/html/body/div[5]/div/div[2]/div[2]/ul/li[4]/a@href
    click element    xpath=/html/body/div[5]/div/div[2]/div[2]/ul/li[4]/a
    [Return]    ${text}

获取并点击快报第五条记录
    Wait Until Page Contains Element    xpath=/html/body/div[5]/div/div[2]/div[2]/ul/li[5]/a    20    链接未加载出来
    ${text}    get element attribute    xpath=/html/body/div[5]/div/div[2]/div[2]/ul/li[5]/a@href
    click element    xpath=/html/body/div[5]/div/div[2]/div[2]/ul/li[5]/a
    [Return]    ${text}

快报内容检查是否正确
    [Arguments]    ${value}
    wait until page contains    ${value}    20    页面加载失败

检查链接是否进入了相应页面
    [Arguments]    ${text}
    select window    url=${text}
    page should contain image    钢钢网
