*** Settings ***
Resource          ../FlowManager/钢材库.robot
Resource          ../keywordManaer/公共关键字.robot
Resource          ../keywordManaer/钢材库.robot

*** Variables ***

*** Keywords ***
动态链接测试
    [Arguments]    ${name}    ${key}    ${list}
    [Documentation]    ${name}:域
    ...    ${key}:取出路径的值
    ...    ${list}：第几个 li
    ${xpath}    读取配置文件    ${name}    ${key}
    sleep    3
    ${length}    获取行业动态链接的个数
    log    ${result}
    run keyword if    0<${list}<=${length}    动态链接判断    ${xpath}

下游动态链接测试
    [Arguments]    ${name}    ${key}    ${list}
    ${xpath}    读取配置文件    ${name}    ${key}
    sleep    2
    ${length}    获取下游经济动态链接的个数
    log    ${result}
    run keyword if    0<${list}<=${length}    动态链接判断    ${xpath}

宏观经济动态链接测试
    [Arguments]    ${name}    ${key}    ${list}
    ${xpath}    读取配置文件    ${name}    ${key}
    sleep    2
    ${length}    获取宏观经济动态链接的个数
    run keyword if    0<${list}<=${length}    动态链接判断    ${xpath}
