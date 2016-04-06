*** Settings ***
Documentation     登录
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
    登录流程    13611873856    123456
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
    Wait Until Page Contains Element    xpath=/html/body/div[4]/ul/li[2]/a/span    10    元素未加载出来
    click element    xpath=/html/body/div[4]/ul/li[2]/a/span
    select window    url=http://www7.53kf.com/webCompany.php?arg=10107107&style=1
    ${title}    get title
    should start with    ${title}    钢钢网
    [Teardown]    关闭浏览器
