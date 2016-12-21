*** Settings ***
Documentation     交互层，存放控件
Library           Selenium2Library

*** Keywords ***
打开浏览器
    [Arguments]    ${base_url}
    open browser    ${base_url}    D:\Program Files (x86)\Mozilla Firefox\browser\defaults\profile

关闭浏览器
    close all browsers

输入企业会员用户名
    [Arguments]    ${username}
    input text    css=.useradmin    ${username}

输入企业会员密码
    [Arguments]    ${pwd}
    input text    css=.passAdmin    ${pwd}

点击登录
    [Documentation]    点击登录按钮
    Wait Until Keyword Succeeds    1min    2sec    click element    xpath=//*[@id="frmSubMit"]/div[2]/div/div/ul/li[1]/p[4]/input

检查登录是否成功
    [Documentation]    检查登录： 1.此处用的方法为：登录成功后页面显示”退出按钮“
    ...    还有一种方法：检查COOKIE值中是否包含TOKENID，如果有代表成功登录
    wait until page contains element    id=btnLogOut    8

检查登录是否失败
    ${msg}    get alert message
    should be equal    ${msg}    用户名或密码不正确

测试失败时调用
    run keyword if test failed    关闭浏览器

点击进入登录页面
    全屏操作
    Wait Until Keyword Succeeds    1min    2sec    click element    css=.login

点击我的资源库
    [Documentation]    个人中心-点击我的资源库的链接
    click link    text=我的资源库

点击我的钢钢网
    [Documentation]    点击信息进入个人中心
    click element    xpath=/html/body/div[1]/div/div[2]/div[1]/a

检查进入个人中心是否成功
    [Documentation]    这里切换窗口选择TITLE，还有一种方法：可以使用href \ 这个会更稳定些
    select window    title=钢钢网-会员中心
    ${title}    get title
    should be equal    ${title}    钢钢网-会员中心

全屏操作
    Maximize browser window

点击退出按钮
    wait until keyword succeeds    1min    2sec    execute javascript    $(".header-user-ac.hide").css("display","block");
    sleep    5
    wait until keyword succeeds    1min    2sec    click element    id= btnLogOut

等待加载首页页面
    [Arguments]    ${ecpected}
    run keyword if    '${ecpected}'=='pass'    wait until page contains element    xpath=/html/body/div[1]/div/ul/li[1]/a    30    首页未加载出来

检查是否提示切换企业会员登录
    ${msg}    get alert message
    should be equal    ${msg}    请切换至企业会员登录

切换至企业会员登录
    Wait Until Keyword Succeeds    1min    2sec    click element    xpath=//*[@id="frmSubMit"]/div[2]/div/ul/li[2]

输入普通会员用户名
    [Arguments]    ${username}
    [Documentation]    普通会员登录
    input text    css=.userPhone    ${username}

输入普通会员密码
    [Arguments]    ${password}
    input text    css=.userPass    ${password}

点击企业登录按钮
    Wait Until Keyword Succeeds    1min    2sec    click element    xpath=//*[@id="frmSubMit"]/div[2]/div/div/ul/li[2]/p[4]/input
