*** Settings ***
Library           Selenium2Library

*** Keywords ***
点击申请企业账号链接
    click link    申请企业账号

输入公司名称
    [Arguments]    ${companyName}
    input text    id=CompanyName    ${companyName}

输入公司地址
    [Arguments]    ${address}
    input text    id=Address    ${address}

输入公司联系方式
    [Arguments]    ${tel}
    input text    id=Telephone    ${tel}

点击提交按钮
    click button    id=sub

点击普通营业执照
    click element    xpath=/html/body/div[4]/div[2]/div/div[2]/ul[1]/li[6]/dl/dd[2]
