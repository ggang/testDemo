*** Settings ***
Resource          ../../keywordManaer/公共关键字.robot
Resource          ../../keywordManaer/会员登录.robot
Resource          ../../keywordManaer/首页.robot
Library           ../../until/constant.py

*** Keywords ***
点击动态链接
    [Arguments]    ${xpath}
    根据路径点击元素    ${xpath}
