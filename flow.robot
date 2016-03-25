*** Settings ***
Documentation     场景，功能，流程
Resource          keywordManaer/完善个人中心.robot
Resource          keywordManaer/修改密码.robot
Resource          keywordManaer/会员登录.robot
Resource          pageObject.robot
Variables         conf/test_conf.py
Resource          keywordManaer/我的资源库.robot
Resource          PageObjectManager/会员中心/我的资源库.robot
Resource          PageObjectManager/会员中心/我的订单.robot
Resource          keywordManaer/我的订单.robot
Resource          PageObjectManager/首页/公共.robot
Resource          PageObjectManager/首页/钢钢快报.robot
Resource          PageObjectManager/首页/四方咨询.robot
Resource          PageObjectManager/首页/行业目录.robot

*** Keywords ***
登录流程
    [Arguments]    ${user_name}    ${password}
    [Documentation]    登录场景的封装
    点击进入登录页面
    登录页面    ${user_name}    ${password}

进入个人中心流程
    [Arguments]    ${username}    ${password}    ${expected}
    [Documentation]    进入个人中心流程
    登录流程    ${username}    ${password}
    登录检查    ${expected}
    进入个人中心

完善个人信息流程
    [Arguments]    ${username}    ${sex}    ${company}    ${province}    ${city}    ${address}
    ...    ${qq}
    进入个人中心流程    ${login_user}    ${password}    ${result}
    检查进入个人中心是否成功
    点击完善信息按钮
    完善信息页面    ${username}    ${sex}    ${company}    ${province}    ${city}    ${address}
    ...    ${qq}

修改密码流程
    [Arguments]    ${older}    ${new}    ${confirm}
    进入个人中心流程    ${login_user}    ${password}    ${result}
    检查进入个人中心是否成功
    等待账户设置列表加载
    点击进入修改密码页面
    修改密码    ${older}    ${new}    ${confirm}
    修改密码.点击确定按钮

查询产品资源库流程
    [Arguments]    ${product_name}    ${product_statu}
    进入个人中心流程    ${login_user}    ${password}    ${result}
    检查进入个人中心是否成功
    等待会员中心列表加载
    点击进入我的资源库
    等待产品输入框加载
    查询产品资源库    ${product_name}    ${product_statu}

单条添加流程
    [Arguments]    ${product_type}    ${product_name}    ${Specification}    ${material}    ${factory}    ${num}
    ...    ${txtpipce}    ${address}    ${house}    ${weight}    ${price}
    进入个人中心流程    ${login_user}    ${password}    ${result}
    检查进入个人中心是否成功
    等待会员中心列表加载
    点击进入我的资源库
    sleep    3
    点击单条添加
    sleep    3
    单条添加    ${product_type}    ${product_name}    ${Specification}    ${material}    ${factory}    ${num}
    ...    ${txtpipce}    ${address}    ${house}    ${weight}    ${price}

选中删除流程
    进入个人中心流程    ${login_user}    ${password}    ${result}
    检查进入个人中心是否成功
    等待会员中心列表加载
    点击进入我的资源库
    sleep    3
    删除产品信息

选中修改流程
    [Arguments]    ${txtWeight}
    [Documentation]    本关键字主要修改产品的库存进行修改
    进入个人中心流程    ${login_user}    ${password}    ${result}
    检查进入个人中心是否成功
    等待会员中心列表加载
    点击进入我的资源库
    sleep    3
    修改产品信息    ${txtWeight}

批量上传流程
    [Arguments]    ${upload_dir}
    进入个人中心流程    ${login_user}    ${password}    ${result}
    检查进入个人中心是否成功
    等待会员中心列表加载
    点击进入我的资源库
    sleep    3
    批量添加    ${upload_dir}

选中挂牌流程
    进入个人中心流程    ${login_user}    ${password}    ${result}
    检查进入个人中心是否成功
    等待会员中心列表加载
    点击进入我的资源库
    sleep    3
    选中资源挂牌

选中下架流程
    进入个人中心流程    ${login_user}    ${password}    ${result}
    检查进入个人中心是否成功
    等待会员中心列表加载
    点击进入我的资源库
    sleep    3
    选中资源下架

创建采购订单流程
    [Arguments]    ${contact_person}    ${contact_mobile}    ${Invoice_Type}    ${Invoice_title}    ${province}    ${city}
    ...    ${area}    ${address}    ${product_name}    ${specification}    ${material}    ${factory}
    ...    ${num}
    进入个人中心流程    ${login_user}    ${password}    ${result}
    检查进入个人中心是否成功
    等待我的订单列表成功加载
    点击进入我的订单
    检查是否成功进入订单页面
    点击创建采购清单
    等待进入创建订单页面
    创建采购订单    ${contact_person}    ${contact_mobile}    ${Invoice_Type}    ${Invoice_title}    ${province}    ${city}
    ...    ${area}    ${address}    ${product_name}    ${specification}    ${material}    ${factory}
    ...    ${num}

修改采购订单流程
    [Arguments]    ${Invoice_title}
    进入个人中心流程    ${login_user}    ${password}    ${result}
    检查进入个人中心是否成功
    等待我的订单列表成功加载
    点击进入我的订单
    检查是否成功进入订单页面
    修改采购清单信息    ${Invoice_title}

取消订单流程
    [Arguments]    ${expected_option}
    [Documentation]    expected_option ：此两个参数为测试人员自己定义的
    ...    目前其输入值为：
    ...    1.确定取消
    ...    2.撤销取消
    进入个人中心流程    ${login_user}    ${password}    ${result}
    检查进入个人中心是否成功
    等待我的订单列表成功加载
    点击进入我的订单
    检查是否成功进入订单页面
    取消采购订单    ${expected_option}

搜索流程
    [Arguments]    ${search_message}
    搜索    ${search_message}

点击钢钢快报流程
    [Arguments]    ${expected_staus}
    ${text}    点击钢钢快报链接    ${expected_staus}
    [Return]    ${text}

点击四方快报咨询流程
    [Arguments]    ${expected_staus}
    ${text}    四方咨询.点击动态链接    ${expected_staus}
    [Return]    ${text}

点击四方新闻快报流程
    [Arguments]    ${link_key}
    ${text}    点击新闻快讯链接    ${link_key}
    [Return]    ${text}

点击行业目录链接流程
    [Arguments]    ${name}    ${key}
    ${url}    点击行业目录链接    ${name}    ${key}
    [Return]    ${url}