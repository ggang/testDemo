*** Settings ***
Resource          ../../keywordmanaer/公共关键字.robot
Resource          ../../keywordmanaer/四方咨询.robot

*** Keywords ***
点击头条链接
    [Arguments]    ${xpath}
    wait until keyword succeeds    1min    2sec    根据路径点击元素    ${xpath}

检验是否进入行业动态页面
    [Arguments]    ${xpath}
    ${href}    根据路径获取链接地址    ${xpath}
    Comment    ${text}    根据路径获取相关属性    ${xpath}    text
    检查是否正确链接到新闻页面    ${href}
