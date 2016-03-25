*** Settings ***
Resource          ../../keywordManaer/首页.robot
Resource          ../../keywordManaer/公共关键字.robot
Resource          ../../keywordManaer/会员登录.robot
Resource          ../../keywordManaer/行业目录.robot

*** Keywords ***
点击行业目录链接
    [Arguments]    ${name}    ${key}
    [Documentation]    获取行业目录
    ${url}    点击并获取行业动态    ${name}    ${key}
    [Return]    ${url}
