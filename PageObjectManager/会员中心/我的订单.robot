*** Settings ***
Resource          ../../keywordManaer/我的订单.robot

*** Keywords ***
订单查询
    [Arguments]    ${statu}
    选择交易状态    ${statu}

创建采购订单
    [Arguments]    ${contact_person}    ${contact_mobile}    ${Invoice_Type}    ${Invoice_title}    ${province}    ${city}
    ...    ${area}    ${address}    ${product_name}    ${specification}    ${material}    ${factory}
    ...    ${num}
    输入联系人    ${contact_person}
    输入联系电话    ${contact_mobile}
    选择发票类型    ${Invoice_Type}
    输入发票抬头    ${Invoice_title}
    选择省的值    ${province}
    设置市的值    ${city}
    设置区的值    ${area}
    输入详细地址    ${address}
    输入添加品名    ${product_name}
    输入添加规格    ${specification}
    输入添加材质    ${material}
    输入添加钢厂    ${factory}
    输入添加数量    ${num}
    点击提交

取消采购订单
    [Arguments]    ${expected_option}
    [Documentation]    expected_option ：此两个参数为测试人员自己定义的
    ...    目前其输入值为：
    ...    1.确定取消
    ...    2.撤销取消
    点击取消订单
    run keyword if    '${expected_option}'=='确定取消'    确定取消订单操作
    run keyword if    '${expected_option}'=='撤销取消'    取消取消订单操作

删除增加资源信息

修改采购清单信息
    [Arguments]    ${Invoice_title}
    [Documentation]    这里仅仅修改发票的title
    ...
    ...    ${Invoice_title}
    点击修改采购清单
    输入发票抬头    ${Invoice_title}
    点击提交
