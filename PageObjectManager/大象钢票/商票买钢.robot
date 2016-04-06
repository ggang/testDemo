*** Settings ***
Resource          ../../keywordManaer/大象钢票.robot
Resource          ../../keywordManaer/公共关键字.robot

*** Keywords ***
商票买钢
    点击商票买钢

检查是否成功进入相应页面
    ${status}    判断状态是否为登录状态
    run keyword if    '${status}'=='False'    检查是否进入登录页面    http://sso.ggang.cn/SSoOperater/SSoLoginIndex?url=http://bill.ggang.cn/BusinessBill/AddBillInfo
    ...    ELSE IF    '${status}'=='True'    检查是否进入大象钢票页面

以票换钱
    点击以票换钱

钢票页面申请商票贷
    大象钢票.点击申请商票贷

申请票据贴现
    点击申请票据贴现
