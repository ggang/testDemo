*** Settings ***
Resource          ../FlowManager/钢材库.robot
Resource          ../keywordManaer/公共关键字.robot
Resource          ../keywordManaer/钢材库.robot
Resource          ../FlowManager/四方现货.robot
Resource          ../keywordManaer/四方现货.robot

*** Variables ***

*** Keywords ***
四方现货动态链接测试
    [Arguments]    ${name}    ${key}    ${list}
    ${xpath}    读取配置文件    ${name}    ${key}
    sleep    2
    ${length}    获取行业动态链接的个数
    run keyword if    0<${list}<=${length}    四方现货动态链接判断    ${xpath}

四方现库下游动态链接测试
    [Arguments]    ${name}    ${key}    ${list}
    ${xpath}    读取配置文件    ${name}    ${key}
    sleep    2
    ${length}    获取下游经济动态链接的个数
    run keyword if    0<${list}<=${length}    四方现货动态链接判断    ${xpath}

四方现库宏观经济动态链接测试
    [Arguments]    ${name}    ${key}    ${list}
    ${xpath}    读取配置文件    ${name}    ${key}
    sleep    2
    ${length}    获取宏观经济动态链接的个数
    run keyword if    0<${list}<=${length}    四方现货动态链接判断    ${xpath}

根据实际的链接数进行测试
    ${len}    获取宏观经济动态链接的个数
