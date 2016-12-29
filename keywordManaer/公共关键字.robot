*** Settings ***
Library           Selenium2Library
Variables         ../conf/test_conf.py
Library           ../until/constant.py
Library           DateTime

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
    点击logo

输入搜索条件
    [Arguments]    ${serach}
    input text    id=serarchText    ${serach}

点击搜索按钮
    wait until keyword succeeds    1min    2sec    click element    xpath=/html/body/div[1]/div/div[1]/span

点击我要买货
    [Arguments]    ${xpath}
    Wait Until Page Contains Element    xpath=${xpath}    20    我要买按钮未加载出来
    click element    xpath=${xpath}

点击三级螺纹钢
    click link    三级螺纹钢

点击普卷
    click link    普卷

点击钢材库菜单
    click link    钢材库

点击四方现货菜单
    click link    四方现货

点击大象钢票菜单
    click link    大象钢票

点击小象快运菜单
    click link    小象快运

点击招标中心菜单
    click link    招标中心

检查是否成功进入钢材库页面
    ${list}    list windows
    log    ${list[1]}
    Wait Until Keyword Succeeds    1min    5sec    select window    ${list[1]}
    ${title}    get title
    Should Start With    ${title}    钢钢网

切换窗口至首页
    Run Keyword And Ignore Error    wait until keyword succeeds    2min    3sec    select window    title=钢钢网-找货,找钱,找车一站式服务,钢铁电商第四方平台

获取链接地址
    [Arguments]    ${str}
    [Documentation]    公共方法，获取链接地址，此方法专门针对：
    ...    window.open('http://news.ggang.cn/News/Newsitem/105108') \ 这类的方法进行解析获取出相应的URL
    ${list}    printList    ${str}
    ${url}    set variable    ${list[1]}
    log    ${url}
    [Return]    ${url}

读取咨询快报URL地址
    [Arguments]    ${link_key}
    [Documentation]    获取URL
    ${xpath}    Read config    ../conf/url_xpath.conf    zixun    ${link_key}
    log    ${xpath}
    [Return]    ${xpath}

将滚动条拖到底部
    Execute Javascript    document.documentElement.scrollTop=10000

加入官网地址
    [Arguments]    ${url}
    ${final_url}    set variable    ${base_url}${url}
    [Return]    ${final_url}

关闭当前页面
    close window

点击底部链接
    [Arguments]    ${name}    ${key}
    ${name}    Evaluate    '${name}'.encode("utf-8")
    ${key}    Evaluate    '${key}'.encode("utf-8")
    ${path}    set variable    ${CURDIR}${/}keyword_conf${/}url_xpath.conf
    ${src}    Read config    ${path}    ${name}    ${key}
    Execute Javascript    document.documentElement.scrollTop=1000
    wait until keyword succeeds    1min    2sec    click element    xpath=${src}
    [Return]    ${src}

根据路径获取链接地址
    [Arguments]    ${xpath}
    [Documentation]    本关键字根据路径获取链接的href属性
    Wait Until Page Contains Element    xpath=${xpath}    50    元素未加载
    ${href}    Get Element Attribute    xpath=${xpath}@href
    [Return]    ${href}

读取配置文件
    [Arguments]    ${name}    ${key}
    [Documentation]    读取配置文件，输入name, key, \ \ return \ 队应KEY的值
    ${name}    Evaluate    '${name}'.encode("utf-8")
    ${key}    Evaluate    '${key}'.encode("utf-8")
    ${path}    set variable    ${CURDIR}${/}keyword_conf${/}url_xpath.conf
    ${src}    Read config    ${path}    ${name}    ${key}
    [Return]    ${src}

根据路径点击元素
    [Arguments]    ${xpath}
    click element    xpath=${xpath}

检查是否进入四方现货页面
    select window    title=钢钢网-四方现货,以最快最便捷的方式找到你所需要的货物
    ${title}    get title
    should start with    ${title}    钢钢网-四方现货

检查是否进入四方咨讯页面
    select window    title=新闻专栏-钢铁资讯-四方资讯
    ${title}    get title
    should be equal    ${title}    新闻专栏-钢铁资讯-四方资讯

检查是否进入大象钢票页面
    wait until keyword succeeds    1min    5sec    select window    title=钢钢网-大象钢票,解决流动资金不足,利率低,操作简便,安全性高
    ${title}    get title
    Comment    sleep    5
    Comment    click element    nextBill
    should start with    ${title}    钢钢网-大象钢票

检查是否进入小象快运页面
    [Arguments]    ${url}
    select window    url=${url}
    ${title}    get title
    Page Should Contain    小象快运

检查是否进入招标中心页面
    select window    title=钢钢网-招标中心,提供国企央企招标各地的钢铁相关项目招标信息
    ${title}    get title
    should be equal    ${title}    钢钢网-招标中心,提供国企央企招标各地的钢铁相关项目招标信息

判断状态是否为登录状态
    ${status}    run keyword and return status    Get Cookie value    token
    [Return]    ${status}

检查是否进入登录页面
    [Arguments]    ${href}
    Wait Until Keyword Succeeds    1min    5sec    select window    url=${href}
    wait until page contains    会员登录    20    加载超时

检查是否进入创建订单页面
    [Arguments]    ${href}
    wait until keyword succeeds    1min    5sec    select window    url=${href}
    wait until page contains element    id=NameLxc    30    元素未成功加载

根据路径获取链接onclick属性
    [Arguments]    ${xpath}
    Wait Until Page Contains Element    xpath=${xpath}    20    元素未加载
    ${href}    Get Element Attribute    xpath=${xpath}@onclick
    [Return]    ${href}

根据路径获取链接title属性
    [Arguments]    ${xpath}
    Wait Until Page Contains Element    xpath=${xpath}    20    元素未加载
    ${title}    Get Element Attribute    xpath=${xpath}@title
    [Return]    ${title}

检查是否进入新闻链接详情页面
    [Arguments]    ${url}    ${text}
    [Documentation]    检查新闻内容是否包含链接的标题，如果包含就代表已经成功加载
    select window    url=${url}
    wait until page contains    ${text}

拖动窗口至底部
    Execute Javascript    document.documentElement.scrollTop=9000

点击四方资讯菜单
    click link    四方资讯

加入新闻地址
    [Arguments]    ${href}
    [Documentation]    加入新闻地址
    ${url}    set variable    ${new_url}${href}
    [Return]    ${url}

检查是否成功跳入申请钢票贷页面
    wait until keyword succeeds    1min    5sec    select window    url=http://bill.ggang.cn/BusinessBill/AddBillInfo
    ${title}    get title
    should start with    ${title}    钢钢网-大象钢票
    click button    id=nextBill

判断钢材库下游动态是否有数据
    ${result}    Run Keyword And Return Status    Wait Until Element Contains    xpath=/html/body/div[5]/div[4]/div[2]    暂无数据    1
    [Return]    ${result}

判断钢材库上游动态是否有数据
    ${result}    Run Keyword And Return Status    Wait Until Element Contains    xpath=/html/body/div[5]/div[4]/div[1]    暂无数据    1
    [Return]    ${result}

判断钢材库宏观经济动态链接是否有数据
    ${result}    Run Keyword And Return Status    Wait Until Element Contains    xpath=/html/body/div[5]/div[4]/div[3]    暂无数据    2
    [Return]    ${result}

获取宏观经济动态链接的个数
    ${len}    Execute Javascript    return \ $('.info .hgjjxx li').length;
    [Return]    ${len}

获取下游经济动态链接的个数
    ${len}    execute javascript    return $('.info .xydtxx li').length;
    [Return]    ${len}

获取行业动态链接的个数
    ${len}    execute javascript    return $('.info .hydtxx li').length;
    [Return]    ${len}

获取当前时间
    ${date}    get current date
    ${datetime}    convert date    ${date}    datetime
    [Return]    ${datetime}

点击logo
    wait until keyword succeeds    1min    2sec    click link    http://www.ggang.cn/

滚动屏幕至底部
    [Documentation]    滚动屏幕至底部
    Execute Javascript    document.documentElement.scrollTop=9000

根据路径获取相关属性
    [Arguments]    ${xpath}    ${attribute}
    wait until page contains element    xpath=${xpath}    20    元素未加载
    ${attr}    get element attribute    xpath=${xpath}@${attribute}
    [Return]    ${attr}
