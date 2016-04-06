*** Settings ***
Resource          ../FlowManager/钢材库.robot
Resource          ../keywordManaer/公共关键字.robot
Resource          ../keywordManaer/钢材库.robot
Resource          ../FlowManager/招标中心.robot
Resource          ../keywordManaer/招标中心.robot

*** Keywords ***
招标中心动态链接测试
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    ${url}    点击招标中心动态连接流程    ${xpath}
    检查是否成功进入招标中心页面    ${url}
    关闭当前页面
    切换页面至招标中心页面
