*** Settings ***
Library           Selenium2Library

*** Keywords ***
输入原密码
    [Arguments]    ${oldPassword}
    wait until keyword succeeds    1min    5sec    input text    name=passOld    ${oldPassword}

输入新密码
    [Arguments]    ${newPassword}
    input text    name=passNew    ${newPassword}

输入确认密码
    [Arguments]    ${pwd_confirm}
    input text    name=passNewCheck    ${pwd_confirm}

点击确定按钮
    click button    xpath=//input[@value="确定"]

点击取消按钮
    click button    xpath=//input[@value="取消"]

密码为空判断
    [Documentation]    页面弹出DIV \ \ 不能为空
    page should contain    不能为空

新密码与密码不一致
    page should contain    密码不一致

检查修改密码是否成功
    [Documentation]    密码修改成功系统自动跳入登录页面，所及检查页面是否包含“会员登录”字样
    BuiltIn.Wait Until Keyword Succeeds    1min    2sec    page should contain    密码修改成功
    BuiltIn.Wait Until Keyword Succeeds    1min    2sec    page should contain    会员登录

点击进入修改密码页面
    wait until page contains     修改密码    20    页面没有成功加载修改密码
     click link    修改密码

等待账户设置列表加载
    wait until page contains    账户设置    30    账户设置列表未加载出
