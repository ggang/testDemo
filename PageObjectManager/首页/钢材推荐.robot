*** Settings ***
Resource          ../../keywordManaer/首页.robot
Resource          ../../keywordManaer/公共关键字.robot
Resource          ../../keywordManaer/会员登录.robot
Resource          ../../keywordManaer/钢材推荐.robot

*** Keywords ***
点击钢材推荐图片
    [Arguments]    ${name}    ${key}
    点击图片链接    ${name}    ${key}

检查点击图片是否跳入正确页面
    Select Window    title=钢钢网-钢材库,以最快最便捷的方式找到你所需要的货物
    ${title}    get title
    should be equal    ${title}    钢钢网-钢材库,以最快最便捷的方式找到你所需要的货物

点击表格链接
    @{var}    获取表格具体位置
    [Return]    @{var}

点击钢材推荐标题
    [Arguments]    ${name}    ${key}
    点击钢材标题    ${name}    ${key}

点击进入四方库
    点击进入四方库
