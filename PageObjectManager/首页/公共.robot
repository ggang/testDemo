*** Settings ***
Resource          ../../keywordManaer/公共关键字.robot
Resource          ../../keywordManaer/会员登录.robot
Resource          ../../keywordManaer/首页.robot
Library           ../../until/constant.py

*** Keywords ***
搜索
    [Arguments]    ${search_msg}
    全屏操作
    输入搜索条件    ${search_msg}
    点击搜索按钮

菜单切换
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    ${href}    根据路径获取链接地址    ${xpath}
    根据路径点击元素    ${xpath}
    [Return]    ${href}

检查是否成功切换到菜单页面
    [Arguments]    ${href}
    run keyword if    '${href}'=='http://res.ggang.cn/'    检查是否成功进入钢材库页面
    ...    ELSE IF    '${href}'=='http://res.ggang.cn/SteelList/Spotgoods'    检查是否进入四方现货页面
    ...    ELSE IF    '${href}'=='http://news.ggang.cn/'    检查是否进入四方咨讯页面
    ...    ELSE IF    '${href}'=='http://bill.ggang.cn/'    检查是否进入大象钢票页面
    ...    ELSE IF    '${href}'=='http://www.ggang.cn/Copyright/Logistics'    检查是否进入小象快运页面    ${href}
    ...    ELSE IF    '${href}'=='http://www.ggang.cn/Bidding'    检查是否进入招标中心页面

热门搜索
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    根据路径点击元素    ${xpath}

我要买货
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    sleep    3
    ${href}    根据路径获取链接地址    ${xpath}
    点击我要买货    ${xpath}
    [Return]    ${href}

检查是否成功调入要买页面
    [Arguments]    ${href}
    ${status}    判断状态是否为登录状态
    run keyword if    '${status}'=='False'    检查是否进入登录页面    ${href}
    ...    ELSE IF    '${status}'=='True'    检查是否进入创建订单页面    ${href}

去找货
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    根据路径点击元素    ${xpath}

申请商票贷
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    根据路径点击元素    ${xpath}

申请大象钢票
    点击申请大象钢票

发布资源
    点击发货源按钮

立即申请
    [Arguments]    ${name}    ${key}
    ${xpath}    读取配置文件    ${name}    ${key}
    Comment    ${href}    根据路径获取链接onclick属性    ${xpath}
    Comment    ${final_href}    printList    ${href}
    Comment    ${url}    set variable    ${final_href[1]}
    ${url}    set variable    http://www.ggang.cn
    根据路径点击元素    ${xpath}
    [Return]    ${url}

检查申请是否跳入相应页面
    [Arguments]    ${href}
    ${status}    判断状态是否为登录状态
    run keyword if    '${status}'=='False'    权限不足检查
    ...    ELSE IF    '${status}'=='True'    检查是否进入大象钢票页面

联系客服
    点击客服按钮

检查是否进入客服页面
    [Arguments]    ${url}
    select window    url=${url}
    ${title}    get title
    should start with    ${title}    钢钢网

权限不足检查
    Page Should Contain    您还不是企业会员
