*** Settings ***
Resource          ../FlowManager/钢材库.robot
Resource          ../keywordManaer/公共关键字.robot
Resource          ../keywordManaer/钢材库.robot

*** Keywords ***
动态链接测试
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    ${result}    判断钢材库上游动态是否有数据
    log    ${result}
    run keyword if    '${result}'=='False'    动态链接判断    ${xpath}

下游动态链接测试
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    ${result}    判断钢材库下游动态是否有数据
    log    ${result}
    run keyword if    '${result}'=='False'    动态链接判断    ${xpath}

宏观经济动态链接测试
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    ${result}    判断钢材库宏观经济动态链接是否有数据
    ${len}    获取宏观经济动态链接的个数
    log    ${len}
    log    ${result}
    run keyword if    '${result}'=='False'    动态链接判断    ${xpath}
