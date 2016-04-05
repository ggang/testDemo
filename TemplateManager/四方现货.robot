*** Settings ***
Resource          ../FlowManager/钢材库.robot
Resource          ../keywordManaer/公共关键字.robot
Resource          ../keywordManaer/钢材库.robot
Resource          ../FlowManager/四方现货.robot
Resource          ../keywordManaer/四方现货.robot

*** Keywords ***
四方现货动态链接测试
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    ${title}    ${href}    点击动态链接流程    ${xpath}
    检查是否进入新闻链接详情页面    ${href}    ${title}
    关闭当前页面
    切换到四方现货页面
