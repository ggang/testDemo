*** Settings ***
Library           Selenium2Library

*** Keywords ***
点击进入我的订单
    click link    我的订单

等待我的订单列表成功加载
    wait until page contains    我的订单    80    我的订单加载失败

检查是否成功进入订单页面
    wait until page contains element    xpath=/html/body/div[4]/div[2]/div/div[1]/div[2]/input    10    没有进入我的订单页面

点击创建采购清单
    click button    xpath=/html/body/div[4]/div[2]/div/div[1]/div[2]/input

选择交易状态
    [Arguments]    ${value}
    select from list    id=jyzt    ${value}

等待进入创建订单页面
    [Documentation]    等待进入创建订单页面
    wait until keyword succeeds    2min    5 sec    wait until page contains element    id=NameLxdh    20    未成功进入创建订单页面

点击新增
    click button    xpath= //*[@id="Submitadd"]

点击取消

点击提交
    click button    id=Submitsave

输入联系人
    [Arguments]    ${contact_person}
    input text    id=NameLxc    ${contact_person}

输入联系电话
    [Arguments]    ${contact_mobile}
    input text    id=NameLxdh    ${contact_mobile}

选择发票类型
    [Arguments]    ${Invoice_Type}
    [Documentation]    选择发票类型
    select from list    id=NameFplx    ${Invoice_Type}

输入发票抬头
    [Arguments]    ${Invoice_title}
    input text    id=NameFptt    ${Invoice_title}

选择省的值
    [Arguments]    ${privince}
    select from list    css=.sheng    ${privince}

设置市的值
    [Arguments]    ${city}
    select from list    css=.shi    ${city}

设置区的值
    [Arguments]    ${area}
    select from list    css=.qu    ${area}

输入详细地址
    [Arguments]    ${address}
    input text    id=businessAddress    ${address}

输入添加品名
    [Arguments]    ${product_name}
    input text    xpath=//table/tbody/tr[1]/td[1]/input    ${product_name}

输入添加规格
    [Arguments]    ${specification}
    [Documentation]    输入规格
    input text    xpath=//table/tbody/tr[1]/td[2]/input    ${specification}

输入添加材质
    [Arguments]    ${material}
    input text    xpath=//table/tbody/tr[1]/td[3]/input    ${material}

输入添加钢厂
    [Arguments]    ${factory}
    input text    xpath=//table/tbody/tr[1]/td[4]/input    ${factory}

输入添加数量
    [Arguments]    ${num}
    input text    xpath=//table/tbody/tr[1]/td[5]/input    ${num}

点击删除添加
    click element    xpath=//table/tbody/tr[1]/td[9]/span

数据为空检查
    wait until page contains    暂无数据

点击修改采购清单
    wait until page contains element    xpath=//table/tbody/tr/td[7]/i    20    修改采购清单按钮没有出现
    click element    xpath=//table/tbody/tr/td[7]/i

检查创建采购订单是否成功
    wait until page contains    保存成功

检查修改采购订单是否成功
    wait until page contains    保存成功

点击取消订单
    wait until page contains element    xpath=//table/tbody/tr[1]/td[7]/a    20    没有加载出取消订单按钮
    click element    xpath=//table/tbody/tr[1]/td[7]/a
    [Teardown]

获取取消消息提示
    ${message}    get alert message

确定取消订单操作
    choose ok on next confirmation
    confirm action

取消取消订单操作
    choose cancel on next confirmation
