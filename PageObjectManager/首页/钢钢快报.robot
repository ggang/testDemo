*** Settings ***
Resource          ../../keywordManaer/首页.robot
Resource          ../../keywordManaer/公共关键字.robot
Resource          ../../keywordManaer/会员登录.robot

*** Keywords ***
点击钢钢快报链接
    [Arguments]    ${expected_staus}
    全屏操作
    ${text}    run keyword if    '${expected_staus}'=='1'    获取并点击快报最新一条信息
    ...    ELSE IF    '${expected_staus}'=='2'    获取并点击快报第二条记录
    ...    ELSE IF    '${expected_staus}'=='3'    获取并点击快报第三条记录
    ...    ELSE IF    '${expected_staus}'=='4'    获取并点击快报第四条记录
    ...    ELSE    获取并点击快报第五条记录
    [Return]    ${text}
