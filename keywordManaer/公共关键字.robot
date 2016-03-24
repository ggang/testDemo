*** Settings ***
Library           Selenium2Library
Variables         ../conf/test_conf.py
Library           ../until/constant.py

*** Keywords ***
进入首页
    open browser    ${base_url}

点击钢钢网首页链接
    [Arguments]    ${expected}
    run keyword if    '${expected}'=='pass'    点击钢钢网首页
    run keyword if    '${expected}'=='密码修改成功'    点击首页菜单
    run keyword if    '${expected}'=='确认密码不能为空'    点击钢钢网首页
    run keyword if    '${expected}'=='不能为空'    点击钢钢网首页
    run keyword if    '${expected}'=='添加成功'    点击钢钢网首页

点击首页菜单
    Wait Until Page Contains    首页    30    首页加载失败
    click link    首页

点击钢钢网首页
    click link    钢钢网首页

输入搜索条件
    [Arguments]    ${serach}
    input text    xpath=/html/body/div[2]/div/div[1]/div[1]/input[1]    ${serach}

点击搜索按钮
    wait until element is visible    xpath=/html/body/div[2]/div/div[1]/div[1]/input[2]    20    元素加载失败
    click button    xpath=/html/body/div[2]/div/div[1]/div[1]/input[2]

点击我要买货
    click link    http://user.ggang.cn/AddPurchaseOrder/Index

点击三级螺纹钢
    click link    三级螺纹钢

点击普卷
    click link    普卷

点击钢材库菜单
    click link    钢材库

点击四方现货菜单
    click link    四方资讯

点击大象钢票菜单
    click link    大象钢票

点击小象快运菜单
    click link    小象快运

招标中心菜单
    click link    招标中心菜单

检查是否成功进入钢材库页面
    select window    title= 钢钢网-钢材库,以最快最便捷的方式找到你所需要的货物
    ${title}    get title
    should be equal    ${title}    钢钢网-钢材库,以最快最便捷的方式找到你所需要的货物

切换窗口至首页
    select window    title=钢钢网-找货,找钱,找车一站式服务,钢铁电商第四方平台

获取链接地址
    [Arguments]    ${str}
    [Documentation]    公共方法，获取链接地址，此方法专门针对：
    ...    window.open('http://news.ggang.cn/News/Newsitem/105108') \ 这类的方法进行解析获取出相应的URL
    ${list}    printList    ${str}
    ${url}    set variable    ${list[1]}
    [Return]    ${url}
