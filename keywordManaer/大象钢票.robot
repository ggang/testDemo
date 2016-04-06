*** Settings ***
Library           Selenium2Library

*** Keywords ***
点击商票买钢
    click link    商票买钢

点击以票换钱
    click link    以票换钱

检查是否成功进入以票换钱页面
    select window    url=http://hpz.ggang.cn/
    ${title}    get title
    should start with    ${title}    汇票栈

点击申请商票贷
    click link    申请商票贷

点击申请票据贴现
    [Documentation]    申请票据贴现
    click link    申请票据贴现
