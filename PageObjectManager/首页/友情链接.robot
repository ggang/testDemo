*** Settings ***
Resource          ../../keywordManaer/首页.robot
Resource          ../../keywordManaer/公共关键字.robot
Resource          ../../keywordManaer/会员登录.robot
Resource          ../../keywordManaer/友情链接.robot

*** Keywords ***
点击友情链接
    [Arguments]    ${name}    ${key}
    全屏操作
    ${xpath}    点击链接地址    ${name}    ${key}
    [Return]    ${xpath}

检查是否进入友情链接页面
    [Arguments]    ${xpath}
    ${href}    获取链接的网址    ${xpath}
    切换到友情链接页面    ${href}
    [Return]    ${href}
