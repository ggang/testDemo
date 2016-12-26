*** Settings ***
Library           Selenium2Library

*** Keywords ***
点击商票买钢
    wait until keyword succeeds    1min    2sec    click element    xpath=/html/body/div[2]/div[1]/a[1]

点击以票换钱
    click link    以票换钱

检查是否成功进入汇票栈页面
    select window    url=http://hpz.ggang.cn/
    ${title}    get title
    should start with    ${title}    汇票栈

点击申请商票贷
    click link    申请商票贷

点击申请票据贴现
    [Documentation]    申请票据贴现
    wait until keyword succeeds    1min    2sec    click element    xpath=/html/body/div[2]/div[1]/a[2]
