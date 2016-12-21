*** Settings ***
Resource          ../../keywordManaer/公共关键字.robot

*** Keywords ***
点击行业动态链接
    [Arguments]    ${xpath}
    [Documentation]    点击行业动态链接
    wait until keyword succeeds    1min    2sec    根据路径点击元素    ${xpath}

检查是否成功进入行业动态页面
    [Arguments]    ${xpath}
    ${href}    根据路径获取链接地址    ${xpath}
    ${text}    根据路径获取相关属性    ${xpath}    text
    检查是否进入新闻链接详情页面    ${href}    ${text}

检查是否成功进入新闻详情页面
