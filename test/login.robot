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
    13918739640    123456    normal    pass
    431856_admin    123456    member    pass
    [Teardown]    会员登录.关闭浏览器

test_cookie
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

test_sifang
    [Setup]    公共关键字.进入首页
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=/html/body/div[1]/div/div[2]/a[2]    10    元素未加载出来
    click element    xpath=/html/body/div[1]/div/div[2]/a[2]
    Wait Until Keyword Succeeds    1min    5sec    select window    url=http://www7.53kf.com/webCompany.php?arg=10107107&style=1
    ${title}    get title
    should start with    ${title}    钢钢网
    [Teardown]    关闭浏览器

test_if
    ${a}    set variable    1
    run keyword if    ${a}<4    log    4
    : FOR    ${j}    IN RANGE    1    11
    \    run keyword if    ${j}<=5    log    hello

test_time
    ${date}    get current date
    ${datetime}    convert date    ${date}    datetime
    run keyword if    ${datetime.hour}>9 and ${datetime.hour}<19    log    aaaaaaaaaaaaaaaaaaa
    log    ${datetime.hour}
