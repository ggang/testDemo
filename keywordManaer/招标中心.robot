*** Settings ***
Library           Selenium2Library

*** Keywords ***
检查是否成功进入招标中心页面
    [Arguments]    ${url}
    [Documentation]    检查是否成功进入投标明细页面
    select window    url=${url}
    ${title}    get title
    should be equal    ${title}    招投标明细

切换页面至招标中心页面
    select window    title=钢钢网-招标中心,提供国企央企招标各地的钢铁相关项目招标信息
