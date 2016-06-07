*** Settings ***
Documentation     这里定义模板：这个层封装了flow层，以及 pageObject封装的断言
Resource          pageObject.robot
Resource          flow.robot
Resource          PageObjectManager/会员中心/我的资源库.robot
Resource          keywordManaer/公共关键字.robot
Resource          keywordManaer/钢材库.robot

*** Keywords ***
登录测试
    [Arguments]    ${username}    ${password}    ${status}    ${expected}
    [Documentation]    登录模板检查登录是否成功、需要检查登录成功参数请写pass
    ...    如果需要检查登录失败请写“failed”
    [Tags]    高
    登录流程    ${username}    ${password}    ${status}
    登录检查    ${expected}
    退出登录判断    ${expected}
    等待加载首页页面    ${expected}

个人中心测试
    [Arguments]    ${username}    ${password}    ${status}    ${excpeted}
    [Tags]    一般
    进入个人中心流程    ${username}    ${password}    ${status}    ${excpeted}
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
    ${href}    点击钢钢快报流程    ${link_num}
    检查链接是否进入了相应页面    ${href}
    关闭当前页面
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
    关闭当前页面
    切换窗口至首页
    [Return]    ${text}

四方咨询新闻快报链接测试
    [Arguments]    ${url_link}
    ${text}    点击四方新闻快报流程    ${url_link}
    ${url}    获取链接地址    ${text}
    log    ${url}
    检查是否正确链接到新闻页面    ${url}
    关闭当前页面
    切换窗口至首页

行业目录链接测试
    [Arguments]    ${title}    ${key}
    ${text}    点击行业目录链接流程    ${title}    ${key}
    ${url}    获取链接地址    ${text}
    ${final_url}    加入官网地址    ${url}
    检查是否成功进入行业动态页面    ${final_url}
    关闭当前页面
    切换窗口至首页

点击钢材推荐图片测试
    [Arguments]    ${name}    ${key}
    点击钢材推荐图片流程    ${name}    ${key}
    检查点击图片是否跳入正确页面
    关闭当前页面
    切换窗口至首页

点击钢材推荐表格测试
    @{var}    点击钢材推荐表格流程
    : FOR    ${xpath}    IN    @{var}
    \    点击表格元素    ${xpath}
    \    检查是否成功进入钢材库页面
    \    关闭当前页面
    \    切换窗口至首页

点击钢材推荐标题测试
    [Arguments]    ${name}    ${key}
    点击钢材推荐标题流程    ${name}    ${key}
    检查是否成功进入钢材库页面
    关闭当前页面
    切换窗口至首页

点击友情链接测试
    [Arguments]    ${name}    ${key}
    ${href}    点击友情链接测试流程    ${name}    ${key}
    检查是否进入友情链接页面    ${href}
    关闭当前页面
    切换窗口至首页

底部操作链接测试
    [Arguments]    ${name}    ${key}
    ${xpath}    点击底部操作指南流程    ${name}    ${key}
    ${href}    根据路径获取链接地址    ${xpath}
    检查是否成功进入链接页面    ${href}
    关闭当前页面
    切换窗口至首页

底部证书链接测试
    [Arguments]    ${name}    ${key}
    ${src}    点击底部证书流程    ${name}    ${key}
    检查是否进入证书页面    ${src}
    关闭当前页面
    切换窗口至首页
    [Return]    ${src}

菜单切换测试
    [Arguments]    ${name}    ${key}
    ${href}    菜单切换流程    ${name}    ${key}
    检查是否成功切换到菜单页面    ${href}
    关闭当前页面
    切换窗口至首页

热门搜索测试
    [Arguments]    ${name}    ${key}
    全屏操作
    热门搜索流程    ${name}    ${key}
    检查是否成功进入钢材库页面
    关闭当前页面
    切换窗口至首页

我要买货测试
    [Arguments]    ${name}    ${key}    ${status}
    [Documentation]    '${status}'=='logined' \ 为登录状态下我要买，跳转创建订单页面
    ...    '${status}'=='unlogin' 为未登录状态，跳转到登录页面
    ${datetime}    获取当前时间
    log    ${datetime}
    ${href}=    run keyword if    '${status}'=='logined'    我要买货流程    ${name}    ${key}
    ...    ELSE IF    '${status}'=='unlogin'    未登录我要买货流程    ${name}    ${key}
    检查是否成功调入要买页面    ${href}
    关闭当前页面
    切换窗口至首页
    run keyword if    '${status}'=='logined'    点击退出按钮

找货测试
    [Arguments]    ${name}    ${key}
    找货流程    ${name}    ${key}
    检查是否进入四方现货页面

申请商票贷测试
    [Arguments]    ${name}    ${key}
    申请商票贷流程    ${name}    ${key}
    检查是否进入大象钢票页面

四方库测试
    点击进入四方库流程
    检查是否进入四方现货页面

发布资源测试
    [Arguments]    ${url}
    发布资源流程
    检查是否进入小象快运页面    ${url}

立即申请钢票测试
    [Arguments]    ${name}    ${key}    ${status}
    [Documentation]    '${status}'=='login' \ 登录后申请，进入申请钢票页面
    ...
    ...    '${status}'=='unlogin' 未登录申请，进入登录页面
    ${href}    run keyword if    '${status}'=='login'    立即申请钢票流程    ${name}    ${key}
    ...    ELSE IF    '${status}'=='unlogin'    未登录立即申请钢票流程    ${name}    ${key}
    ${href}    set variable    http://sso.ggang.cn/SSoOperater/SSoLoginIndex?url=http://www.ggang.cn/
    检查申请是否跳入相应页面    ${href}
    Comment    关闭当前页面
    Comment    切换窗口至首页

联系客服测试
    [Arguments]    ${url}
    联系客服流程
    检查是否进入客服页面    ${url}
