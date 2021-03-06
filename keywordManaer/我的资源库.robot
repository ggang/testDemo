*** Settings ***
Library           Selenium2Library

*** Variables ***

*** Keywords ***
点击详情链接
    click link    xpath=/html/body/div[4]/div[2]/div/ul/li[2]/p[2]/a[2]

输入查询条件
    [Arguments]    ${product_name}
    input text    id=ProductName    ${product_name}

选择产品状态
    [Arguments]    ${value}
    select from list    selStatus    ${value}

点击查询
    click button    id=btnSearch

点击单条添加
    wait until keyword succeeds    1min    5sec    click element    xpath=//input[@value="单条添加"]

点击批量添加
    click element    xpath=//input[@value="批量添加"]

点击上传资源记录单
    click element    xpath=//*[@id="fromplsc"]/a

点击下载
    click element    xpath=/html/body/div[4]/div[2]/div[2]/div[1]/ul/li[1]/a

点击选择文件
    click element    id=fuUpload

点击上传文件按钮
    click element    id=btnOk

选择清空历史资源
    click element    id=ckDeleteResource

选择不清空历史资源
    click element    id=ckResource

点击发布资源
    click element    id=Release

选择品类
    [Arguments]    ${value}
    select from list    xpath=//select[@class="ProductType"]    ${value}

输入品名
    [Arguments]    ${product_name}
    input text    id=txtProductName    ${product_name}

输入规格
    [Arguments]    ${guige}
    input text    id=txtSpecification    ${guige}

输入材质
    [Arguments]    ${caizhi}
    input text    id=txtMaterial    ${caizhi}

输入钢厂
    [Arguments]    ${factory}
    input text    id=txtFactory    ${factory}

输入件数
    [Arguments]    ${number}
    input text    id=txtNumber    ${number}

输入件重
    [Arguments]    ${price}
    input text    id=txtPiece    ${price}

输入供货地
    [Arguments]    ${city}
    input text    id=txtCity    ${city}

输入仓库
    [Arguments]    ${hose}
    input text    id=txtWareHouse    ${hose}

输入库存
    [Arguments]    ${wight}
    input text    id=txtWeight    ${wight}

输入单价
    [Arguments]    ${price}
    input text    id=txtPrice    ${price}

点击保存
    click element    xpath= //*[@id="retb"]/tr[1]/td[14]/a

选中删除
    click element    id=delete

选中挂牌
    click element    id=Listing

选中下架
    click element    id=shelf

选择下架品种
    click element    xpath=//input[@value="22652073"]

点击第一条记录修改按钮
    click element    xpath=//*[@id="retb"]/tr[1]/td[14]/input[@value="修改"]

点击进入我的资源库
    click link    我的资源单

获取查询个数
    ${rows}    get table rows    xpath=/html/body/div[4]/div[2]/div[3]/div[2]/table
    [Return]    ${rows}

等待会员中心列表加载
    wait until page contains    我的资源单    60    我的资源单列表加载失败

查询成功结果检查
    [Arguments]    ${product_type}
    page should contain    ${product_type}    20

查询失败结果检查
    [Arguments]    ${product_type}
    wait until page contains    ${product_type}
    [Teardown]

检验单条是否成功
    [Arguments]    ${product_name}
    [Documentation]    获取添加成功记录的产品名称，如果输入的产品名称与输入的产品名称相同，就代表已经成功插入（注意每次输入产品名的唯一性）
    wait until page contains element    xpath=//*[@id="retb"]/tr[1]/td[3]/input    50    未成功加载添加成功页面
    sleep    2
    ${value}    get element attribute    //*[@id="retb"]/tr[1]/td[3]/input@value
    should be equal    ${value}    ${product_name}

选中第一条记录
    click element    xpath=//*[@id="retb"]/tr[1]/td[1]/input

检查删除是否成功
    [Arguments]    ${product_name}
    [Documentation]    删除后第一条的品名是否还存在（这里要保证每次添加的品名要唯一）
    page should not contain    ${product_name}

点击第一条保存按钮
    click element    xpath=//*[@id="retb"]/tr[1]/td[14]/input[@value="保存"]

修改库存量的值
    [Arguments]    ${weight}
    input text    xpath=//*[@id="retb"]/tr[1]/td[11]/input    ${weight}

库存类型不正确检查
    wait until page contains    重量只能输入整数或小数

检查第一条库存是否修改成功
    [Arguments]    ${modiy_weight}
    ${value}    get element attribute    //*[@id="retb"]/tr[1]/td[11]/input@value
    should be equal    ${value}    ${modiy_weight}

判断是否成功进入上传页面
    wait until page contains element    id=btnOk

上传文件
    [Arguments]    ${upload_dir}
    [Documentation]    上传文件
    choose file    id=fuUpload    ${upload_dir}

检查上传资源成功判断
    [Arguments]    ${filename}
    [Documentation]    上传成功后页面会生成一条记录，检查内容中是否包含此内容，如果有则代表上传成功
    wait until page contains    ${filename}

检查下架是否成功
    wait until element contains    xpath=//*[@id="retb"]/tr/td[13]    下架

检查上架是否成功
    wait until element contains    xpath=//*[@id="retb"]/tr/td[13]    上架

等待产品输入框加载
    wait until page contains element    id=ProductName    20    产品输入框未加载成功

输入查询品名
    [Arguments]    ${product_name}
    input text    id=ProductName    ${product_name}

选中全部
    wait until keyword succeeds    1min    2sec    click element    css=.checkboxtb
