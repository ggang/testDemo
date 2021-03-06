*** Settings ***
Documentation     登录
Library           Selenium2Library
Resource          ../keywordManaer/会员登录.robot
Resource          ../flow.robot
Resource          ../Template.robot
Resource          ../keywordManaer/公共关键字.robot
Library           ../until/constant.py
Library           DateTime

*** Test Cases ***
login
    [Documentation]    登录测试(其中包含：企业管理员登录、企业会员登录、非企业会员登录)
    [Tags]    高
    [Setup]    公共关键字.进入首页
    [Template]    登录测试
    [Timeout]
    13611873856    123456    member    pass
    13918739640    123456    normal     pass
    [Teardown]    会员登录.关闭浏览器

test_cookie
    [Documentation]    检查cookie
    [Setup]    公共关键字.进入首页
    登录流程    13611873856    123456    member
    登录检查    pass
    Maximize Browser Window
    ${status}    run keyword and return status    Get Cookie value    token
    log    ${status}
    run keyword if    '${status}'=='False'    click element    xpath=/html/body/div[2]/div/input
    ...    ELSE IF    '${status}'=='True'    LOG    1111111111111111111
    ...    ELSE    LOG    22222222222222222222222
    [Teardown]    关闭浏览器

test_time
    [Documentation]    时间获取
    ${date}    get current date
    ${datetime}    convert date    ${date}    datetime
    run keyword if    ${datetime.hour}>9 and ${datetime.hour}<19    log    aaaaaaaaaaaaaaaaaaa
    log    ${datetime.hour}
