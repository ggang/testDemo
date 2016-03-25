*** Settings ***
Documentation     用例层
Library           Selenium2Library
Resource          ../keywordManaer/会员登录.robot
Resource          ../flow.robot
Resource          ../Template.robot
Resource          ../keywordManaer/公共关键字.robot

*** Test Cases ***
login
    [Documentation]    登录测试
    [Tags]    高
    [Setup]    公共关键字.进入首页
    [Template]    登录测试
    [Timeout]
    13611873856    123456    pass
    13611873856    123456    pass
    136118738656    1234    failed
    [Teardown]    会员登录.关闭浏览器

test_cookie
    [Setup]    公共关键字.进入首页
    登录测试    13611873856    123456    pass
    ${cookie}    get cookies
    log    ${cookie}
    [Teardown]    关闭浏览器