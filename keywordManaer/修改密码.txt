*** Settings ***
Library           Selenium2Library

*** Keywords ***
输入原密码
    [Arguments]    ${oldPassword}
    input text    name=passOld    ${oldPassword}

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
    page should contain    不能为空

新密码与密码不一致
    page should contain    密码不一致

检查修改密码是否成功
    page should contain    会员登录

点击进入修改密码页面
    click element    xpath=/html/body/div[4]/div[1]/dl/dd[8]/a

等待账户设置列表加载
    wait until page contains    账户设置    30    账户设置列表未加载出
