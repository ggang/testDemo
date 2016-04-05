*** Settings ***
Resource          ../FlowManager/钢材库.robot
Resource          ../keywordManaer/公共关键字.robot
Resource          ../keywordManaer/钢材库.robot
Resource          ../FlowManager/四方资讯.robot
Resource          ../keywordManaer/四方咨询.robot
Resource          ../keywordManaer/四方资讯.robot

*** Keywords ***
四方资讯动态链接测试
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    ${url}    点击四方资讯链接流程    ${xpath}
    检查是否正确链接到新闻页面    ${url}
    关闭当前页面
    切换到四方资讯页面

四方资讯下游动态链接测试
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    ${url}    点击四方资讯下游动态流程    ${xpath}
    检查是否正确链接到新闻页面    ${url}
    关闭当前页面
    切换到四方资讯页面

四方资讯新闻快报链接测试
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    ${url}    点击四方资讯新闻快报流程    ${xpath}
    检查是否正确链接到新闻页面    ${url}
    关闭当前页面
    切换到四方资讯页面

四方资讯宏观经济链接测试
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    ${url}    点击四方资讯宏观经济流程    ${xpath}
    检查是否正确链接到新闻页面    ${url}
    关闭当前页面
    切换到四方资讯页面

四方资讯焦点新闻链接测试
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    ${url}    点击四方资讯焦点新闻流程    ${xpath}
    检查是否正确链接到新闻页面    ${url}
    关闭当前页面
    切换到四方资讯页面
