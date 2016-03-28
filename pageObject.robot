*** Settings ***
Documentation     页面对象：主要封装纯业务逻辑以及检查各页面
Resource          keywordManaer/完善个人中心.robot
Resource          keywordManaer/修改密码.robot
Resource          keywordManaer/会员登录.robot

*** Keywords ***
登录页面
    [Arguments]    ${user_name}    ${password}
    [Documentation]    登录页面
    点击进入登录页面
    SLEEP    3
    输入用户名    ${user_name}
    输入密码    ${password}
    点击登录

登录检查
    [Arguments]    ${excepted}
    [Documentation]    检查登录是否成功、需要检查登录成功参数请写pass
    ...    如果需要检查登录失败请写“failed”
    run keyword if    '${excepted}'=='pass'    检查登录是否成功
    run keyword if    '${excepted}'=='failed'    检查登录失败

进入个人中心
    全屏操作
    点击我的钢钢网

完善信息页面
    [Arguments]    ${username}    ${sex}    ${company}    ${province}    ${city}    ${address}
    ...    ${qq}
    输入姓名    ${username}
    选择性别    ${sex}
    输入公司名称    ${company}
    选择省份    ${province}
    选择城市    ${city}
    通讯地址    ${address}
    输入常用QQ    ${qq}
    选择经营范围
    完善个人中心.点击保存

完善信息检查
    [Arguments]    ${excpeted}
    run keyword if    '${excpeted}'=='pass'    完善个人中心.点击确定按钮
    run keyword if    '${excpeted}'=='failed'    检查是否保存失败

修改密码
    [Arguments]    ${old_password}    ${new_password}    ${conform}
    输入原密码    ${old_password}
    输入新密码    ${new_password}
    输入确认密码    ${conform}

密码检查
    [Arguments]    ${expected}
    run keyword if    '${expected}'=='密码修改成功'    检查修改密码是否成功
    run keyword if    '${expected}'=='新密码不能为空'    密码为空判断
    run keyword if    '${expected}'=='确认密码不能为空'    密码为空判断

退出登录判断
    [Arguments]    ${expected}
    run keyword if    '${expected}'=='pass'    点击退出按钮
    run keyword if    '${expected}'=='密码修改成功'    点击退出按钮
    run keyword if    '${expected}'=='不能为空'    点击退出按钮
    run keyword if    '${expected}'=='添加成功'    点击退出按钮
