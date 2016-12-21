*** Settings ***
Resource          ../../keywordManaer/公共关键字.robot

*** Keywords ***
点击焦点新闻链接
    [Arguments]    ${xpath}
    wait until keyword succeeds    1min    2sec    根据路径点击元素    ${xpath}
