*** Settings ***
Library           Selenium2Library

*** Keywords ***
切换到四方资讯页面
    select window    title=新闻专栏-钢铁资讯-四方资讯

鼠标悬浮下游动态
    mouse over    xpath=/html/body/div[6]/ul/li[2]

鼠标悬浮新闻快报
    mouse over    xpath=/html/body/div[6]/ul/li[3]

鼠标悬浮宏观经济
    mouse over    xpath=/html/body/div[6]/ul/li[4]

鼠标悬浮焦点新闻
    mouse over    xpath=/html/body/div[6]/ul/li[5]
