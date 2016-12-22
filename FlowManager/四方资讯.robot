*** Settings ***
Resource          ../PageObjectManager/钢材库/动态链接.robot
Resource          ../keywordManaer/公共关键字.robot
Resource          ../keywordManaer/钢材库.robot
Resource          ../keywordManaer/四方资讯.robot
Resource          ../PageObjectManager/四方资讯/行业动态.robot
Resource          ../PageObjectManager/四方资讯/新闻资讯.robot
Resource          ../PageObjectManager/四方资讯/宏观经济.robot

*** Keywords ***
进入四方资讯流程
    进入首页
    全屏操作
    点击四方资讯菜单
    检查是否进入四方咨讯页面

点击四方资讯链接流程
    [Arguments]    ${xpath}
    ${href}    根据路径获取链接onclick 属性    ${xpath}
    ${url}    获取链接地址    ${href}
    ${final_url}    加入新闻地址    ${url}
    点击动态链接    ${xpath}
    [Return]    ${final_url}

点击四方资讯下游动态流程
    [Arguments]    ${xpath}
    鼠标悬浮下游动态
    ${href}    根据路径获取链接onclick 属性    ${xpath}
    ${url}    获取链接地址    ${href}
    ${final_url}    加入新闻地址    ${url}
    点击动态链接    ${xpath}
    [Return]    ${final_url}

点击四方资讯新闻快报流程
    [Arguments]    ${xpath}
    点击新闻资讯链接    ${xpath}
    检查是否成功进入新闻资讯页面    ${xpath}

点击四方资讯宏观经济流程
    [Arguments]    ${xpath}    ${href}
    Comment    execute javascript    $(".ol-l li").addClass('active');
    Comment    execute javascript    document.documentElement.scrollTop=5000
    设置宏观经济列表属性
    点击宏观经济链接    ${xpath}
    检验是否成功进入宏观经济页面    ${href}

点击四方资讯焦点新闻流程
    [Arguments]    ${xpath}
    Comment    鼠标悬浮焦点新闻
    ${href}    根据路径获取链接onclick 属性    ${xpath}
    ${url}    获取链接地址    ${href}
    ${final_url}    加入新闻地址    ${url}
    点击动态链接    ${xpath}
    [Teardown]
    [Return]    ${final_url}

点击进入四方资讯行业动态流程
    [Arguments]    ${xpath}
    点击行业动态链接    ${xpath}
    检查是否成功进入行业动态页面    ${xpath}
