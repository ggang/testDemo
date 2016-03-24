*** Settings ***
Documentation     这里定义模板：这个层封装了flow层，以及 pageObject封装的断言
Resource          pageObject.robot
Resource          flow.robot
Resource          PageObjectManager/会员中心/我的资源库.robot
Resource          keywordManaer/公共关键字.robot
Resource          keywordManaer/钢材库.robot

*** Keywords ***
登录测试
    [Arguments]    ${username}    ${password}    ${expected}
    [Documentation]    登录模板检查登录是否成功、需要检查登录成功参数请写pass
    ...    如果需要检查登录失败请写“failed”
    [Tags]    高
    登录流程    ${username}    ${password}
    登录检查    ${expected}
    退出登录判断    ${expected}
    等待加载首页页面    ${expected}

个人中心测试
    [Arguments]    ${username}    ${password}    ${excpeted}
    [Tags]    一般
    进入个人中心流程    ${username}    ${password}    ${excpeted}
    检查进入个人中心是否成功

完善个人信息测试
    [Arguments]    ${username}    ${sex}    ${company}    ${province}    ${city}    ${address}
    ...    ${qq}    ${expected}
    [Tags]    一般
    完善个人信息流程    ${username}    ${sex}    ${company}    ${province}    ${city}    ${address}
    ...    ${qq}
    完善信息检查    ${expected}
    点击钢钢网首页链接    ${expected}
    退出登录判断    ${expected}
    等待加载首页页面    ${expected}

修改密码测试
    [Arguments]    ${older}    ${new}    ${confirm}    ${expected}
    [Documentation]    密码检查， （此参数是测试时使用，并非程序的提示语）
    ...    expected参数值请传入：
    ...    1. '密码修改成功'
    ...    2.'新密码不能为空'
    ...    3.确认密码不能为空'
    [Tags]    高
    修改密码流程    ${older}    ${new}    ${confirm}
    密码检查    ${expected}
    点击钢钢网首页链接    ${expected}
    退出登录判断    ${expected}
    等待加载首页页面    ${expected}

查询产品资源库测试
    [Arguments]    ${product_name}    ${product_status}    ${expected}    ${expected_rows}
    [Documentation]    查询资源库检查，输入参数：expetected,expected_rows
    ...    expected :是用例测试结果，属于自己定义，非程序内容
    ...    输入内容为：1.成功查询
    ...    2.查询失败
    ...    exptected_rows :是期望查询出的行数
    [Tags]    高
    查询产品资源库流程    ${product_name}    ${product_status}
    产品资源查询检查    ${expected}    ${expected_rows}

单条添加测试
    [Arguments]    ${product_type}    ${product_name}    ${Specification}    ${material}    ${factory}    ${num}
    ...    ${txtpipce}    ${address}    ${house}    ${weight}    ${price}    ${expected}
    ...    ${expte_type}
    [Documentation]    单条添加测试，其中的 expected 参数可输入情况：
    ...    1.添加成功
    ...    2.添加失败
    [Tags]    高
    单条添加流程    ${product_type}    ${product_name}    ${Specification}    ${material}    ${factory}    ${num}
    ...    ${txtpipce}    ${address}    ${house}    ${weight}    ${price}
    检查单条添加是否成功    ${expected}    ${expte_type}
    点击钢钢网首页链接    ${expected}
    退出登录判断    ${expected}
    等待加载首页页面    ${expected}

修改资源信息测试
    [Arguments]    ${txtweight}    ${expected}
    [Documentation]    ${expected} 其中的expected 为测试输入的结果：为自己定义的
    ...    目前存在2个值
    ...    1.修改成功
    ...    2.重量只能输入整数或小数
    [Tags]    高
    选中修改流程    ${txtweight}
    检查修改是否成功    ${expected}    ${txtweight}
    会员登录.关闭浏览器

删除资源信息测试
    [Arguments]    ${expected}    ${product_name}
    选中删除流程
    检验是否删除成功    ${expected}    ${product_name}
    会员登录.关闭浏览器

批量上传测试
    [Arguments]    ${upload_dir}    ${filename}
    批量上传流程    ${upload_dir}
    检查上传资源成功判断    ${filename}
    会员登录.关闭浏览器

选中资源挂牌测试
    [Arguments]    ${current_status}
    [Documentation]    ${current_status}：是指的目前资源的状态：
    ...    其值为： 1.下架 \ 2.挂牌
    run keyword if    '${current_status}'=='下架'    选中挂牌流程
    检查上下架是否成功    ${current_status}
    会员登录.关闭浏览器

选中资源下架测试
    [Arguments]    ${current_status}
    [Documentation]    ${current_status}：是指的目前资源的状态：
    ...    其值为： 1.下架 \ 2.挂牌
    run keyword if    '${current_status}'=='挂牌'    选中挂牌流程
    检查上下架是否成功    ${current_status}
    会员登录.关闭浏览器

创建采购订单测试
    [Arguments]    ${contact_person}    ${contact_mobile}    ${Invoice_Type}    ${Invoice_title}    ${province}    ${city}
    ...    ${area}    ${address}    ${product_name}    ${specification}    ${material}    ${factory}
    ...    ${num}
    创建采购订单流程    ${contact_person}    ${contact_mobile}    ${Invoice_Type}    ${Invoice_title}    ${province}    ${city}
    ...    ${area}    ${address}    ${product_name}    ${specification}    ${material}    ${factory}
    ...    ${num}
    检查创建采购订单是否成功

修改采购订单测试
    [Arguments]    ${Invoice_title}
    修改采购订单流程    ${Invoice_title}
    检查修改采购订单是否成功
    关闭浏览器

取消采购订单测试
    [Arguments]    ${excepted_option}
    [Documentation]    expected_option ：此两个参数为测试人员自己定义的
    ...    目前其输入值为：
    ...    1.确定取消
    ...    2.撤销取消
    取消订单流程    ${excepted_option}
    关闭浏览器

首页搜索测试
    [Arguments]    ${search_message}
    搜索流程    ${search_message}
    检查是否成功进入钢材库页面

钢钢快报链接测试
    [Arguments]    ${link_num}
    [Documentation]    ${link_num}:代表第几个Li
    ${text}    点击钢钢快报流程    ${link_num}
    检查链接是否进入了相应页面    ${text}
    切换窗口至首页

四方咨询快报链接测试
    [Arguments]    ${expected_urllink}
    [Documentation]    expected_urllink 代表要输入的链接的值
    ...
    ...    这里链接只有5个所以其输入值为：
    ...
    ...    1.2,3,4,5
    ${text}    点击四方快报咨询流程    ${expected_urllink}
    ${url}    获取链接地址    ${text}
    检查是否正确链接到新闻页面    ${url}
    切换窗口至首页
    [Return]    ${text}
