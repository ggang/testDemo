*** Settings ***
Resource          ../../keywordManaer/我的资源库.robot

*** Keywords ***
查询产品资源库
    [Arguments]    ${product_name}    ${product_status}
    [Tags]    高
    输入查询品名    ${product_name}
    选择产品状态    ${product_status}
    点击查询

单条添加
    [Arguments]    ${product_type}    ${product_name}    ${Specification}    ${material}    ${factory}    ${num}
    ...    ${txtpipce}    ${address}    ${house}    ${weight}    ${price}
    选择品类    ${product_type}
    输入品名    ${product_name}
    log    ${product_name}
    输入规格    ${Specification}
    输入材质    ${material}
    输入钢厂    ${factory}
    输入件数    ${num}
    输入件重    ${txtpipce}
    输入供货地    ${address}
    输入仓库    ${house}
    输入库存    ${weight}
    输入单价    ${price}
    我的资源库.点击保存

批量添加
    [Arguments]    ${upload_dir}
    点击批量添加
    判断是否成功进入上传页面
    上传文件    ${upload_dir}
    点击上传文件按钮

上传资源单记录

修改产品信息
    [Arguments]    ${txtweight}
    选中第一条记录
    点击第一条记录修改按钮
    修改库存量的值    ${txtweight}
    点击第一条保存按钮

产品资源查询检查
    [Arguments]    ${expected_row}    ${expected}
    [Documentation]    此关键字：输入参数：expetected,expected_rows
    ...    expected :是用例测试结果，属于自己定义，非程序内容
    ...    exptected_rows :是期望查询出的行数
    run keyword if    '${expected}'=='成功查询'    查询成功结果检查    ${expected_row}
    run keyword if    '${expected}'=='查询失败'    查询失败结果检查    ${expected_row}

检查单条添加是否成功
    [Arguments]    ${expected}    ${product_name}
    run keyword if    '${expected}'=='添加成功'    检验单条是否成功    ${product_name}
    run keyword if    '${expected}'=='添加失败'    查询失败结果检查    ${product_name}

检查修改是否成功
    [Arguments]    ${expected}    ${weight}
    sleep    2
    run keyword if    '${expected}'=='修改成功'    检查第一条库存是否修改成功    ${weight}
    run keyword if    '${expected}'=='重量只能输入整数或小数'    库存类型不正确检查

检验是否删除成功
    [Arguments]    ${expected}    ${product_name}
    run keyword if    '${expected}'=='删除成功'    检查删除是否成功    ${product_name}

删除产品信息
    选中全部
    选中删除

检查上下架是否成功
    [Arguments]    ${current_status}
    [Documentation]    这里的current_status :代表的是目前资源的状态
    run keyword if    'current_status'=='挂牌'    检查下架是否成功
    run keyword if    'current_status'=='下架'    检查上架是否成功

选中资源挂牌
    选中第一条记录
    选中挂牌

选中资源下架
    选中第一条记录
    选中下架
