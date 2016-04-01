*** Settings ***
Resource          ../FlowManager/钢材库.robot
Resource          ../keywordManaer/公共关键字.robot
Resource          ../keywordManaer/钢材库.robot

*** Keywords ***
动态链接测试
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    ${title}    ${href}    点击动态链接流程    ${xpath}
    检查是否进入新闻链接详情页面    ${href}    ${title}
    关闭当前页面
    切换到钢材库页面
