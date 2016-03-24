*** Settings ***
Resource          ../Template.robot
Variables         ../conf/test_conf.py
Resource          ../keywordManaer/公共关键字.robot
Resource          ../keywordManaer/会员登录.robot

*** Test Cases ***
mycenter
    [Documentation]    个人中心测试
    [Tags]    高
    [Setup]    公共关键字.进入首页
    个人中心测试    ${login_user}    ${password}    ${result}
    [Teardown]    关闭浏览器

test_modiy_info
    [Documentation]    完善个人信息测试
    [Tags]    一般
    [Setup]    公共关键字.进入首页
    [Template]    完善个人信息测试
    张三    女    钢钢网    上海    上海    漕河泾开发区    471618565
    ...    pass
    张四    男    钢钢网股份    上海    上海    漕河泾开发区    471618565
    ...    pass
    [Teardown]    关闭浏览器

test_modifyPassword
    [Documentation]    修改密码测试
    [Tags]    高
    [Setup]    公共关键字.进入首页
    [Template]    修改密码测试
    123456    123456    123456    密码修改成功
    123456    123456    \    不能为空
    123456    \    123456    不能为空
    [Teardown]    关闭浏览器

test_ziyuan_search
    [Documentation]    我的资源库---产品查询
    [Tags]    高
    [Setup]    公共关键字.进入首页
    [Template]    查询产品资源库测试
    \    挂牌    2    成功查询
    [Teardown]    关闭浏览器

test_ziyuan_Singaladd
    [Documentation]    单条添加
    [Tags]    高
    [Setup]    公共关键字.进入首页
    [Template]    单条添加测试
    中厚板    镀锌卷1    0.5*1250*c    DX51D+Z80    酒钢    3    3
    ...    上海    南京    25.6    20    添加成功    镀锌卷1
    中厚板    镀锌卷1    0.5*1250*c    DX51D+Z80    酒钢    3    3
    ...    上海    南京    25.6    20    添加成功    镀锌卷1
    [Teardown]    关闭浏览器

test_ziyuan_modify
    [Documentation]    单条修改
    [Tags]    高
    [Setup]    公共关键字.进入首页
    [Template]    修改资源信息测试
    1000    修改成功
    [Teardown]    关闭浏览器

test_ziyuan_delete
    [Documentation]    单条删除
    [Tags]    高
    [Setup]    公共关键字.进入首页
    [Template]    删除资源信息测试
    删除成功    镀锌卷1
    [Teardown]    关闭浏览器

test_ziyuan_upload
    [Documentation]    批量上传
    [Tags]    一般
    [Setup]    公共关键字.进入首页
    ${dir}    set variable    ${CURDIR}${/}res${/}${upload_file}
    批量上传测试    ${dir}    ${upload_file}
    [Teardown]    关闭浏览器

test_ziyuan_Listing
    [Documentation]    资源挂牌测试
    [Tags]    高
    [Setup]    公共关键字.进入首页
    选中资源挂牌测试    下架
    [Teardown]    关闭浏览器

test_ziyuan_shelf
    [Documentation]    资源下架测试
    [Tags]    高
    [Setup]    公共关键字.进入首页
    选中资源下架测试    挂牌
    [Teardown]    关闭浏览器

test_ziyuan_create_order
    [Documentation]    创建采购订单测试
    [Setup]    公共关键字.进入首页
    [Template]    创建采购订单测试
    张三    13611873856    普通发票    钢钢网    上海市    上海市    徐汇区
    ...    古美路    中厚板    0.5*1250*c    DX51D+Z80    杭钢    3.0
    [Teardown]    关闭浏览器

test_ziyuan_modify_order
    [Documentation]    修改采购资源测试
    [Setup]    公共关键字.进入首页
    [Template]    修改采购订单测试
    宝钢有限股份有限公司
    [Teardown]    关闭浏览器

test_ziyuan_canle_order
    [Documentation]    取消订单测试
    [Setup]    公共关键字.进入首页
    [Template]    取消采购订单测试
    确定取消
    [Teardown]    关闭浏览器
