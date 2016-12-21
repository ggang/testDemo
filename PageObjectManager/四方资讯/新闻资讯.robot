*** Settings ***
Resource          ../../keywordManaer/公共关键字.robot

*** Keywords ***
点击新闻资讯链接
    [Arguments]    ${xpath}
    wait until keyword succeeds    1min    2sec    根据路径点击元素    ${xpath}

检查是否成功进入新闻资讯页面
    [Arguments]    ${xpath}
    ${href}    根据路径获取链接地址    ${xpath}
    ${text}    根据路径获取相关属性    ${xpath}    text
    检查是否进入新闻链接详情页面    ${href}    ${text}
