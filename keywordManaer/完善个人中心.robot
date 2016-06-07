*** Settings ***
Documentation     完善个人中心 --存放控件
Library           Selenium2Library

*** Keywords ***
点击完善信息按钮
    wait until keyword succeeds    1min    2sec    click element    css=.wanshan

输入姓名
    [Arguments]    ${username}
    sleep    3
    input text    id=RegisterName    ${username}

选择性别
    [Arguments]    ${value}
    select radio button    Gender    ${value}

输入公司名称
    [Arguments]    ${company}
    input text    id=Cmodel_CompanyName    ${company}

选择省份
    [Arguments]    ${province_value}
    select from list    sheng    ${province_value}

选择城市
    [Arguments]    ${city}
    select from list    shi    ${city}

选择区
    [Arguments]    ${qu_value}
    select from list    cc    ${qu_value}

通讯地址
    [Arguments]    ${address}
    input text    id=Cmodel_Address    ${address}

输入手机号码
    [Arguments]    ${mobile}
    input text    id=RegisterMobile    ${mobile}

输入常用QQ
    [Arguments]    ${qq}
    input text    id=UserQQ    ${qq}

选择经营范围
    select checkbox    name=OperateScope

点击保存
    click button    xpath=//input[@value="保存"]

检查是否保存成功
    [Arguments]    ${expected_text}
    go back
    点击完善信息按钮
    ${text}    获取姓名值
    should be equal    ${text}    ${expected_text}

点击确定按钮
    [Documentation]    点击确定按钮
    click button    xpath=/html/body/div[4]/div[2]/div[2]/input

获取姓名值
    ${title}    get text    id=RegisterName
    [Return]    ${title}

检查是否保存失败
    [Arguments]    ${expected_result}
    go back
    点击完善信息按钮
    ${text}    获取姓名值
    should not be equal    ${text}    ${expected_result}
