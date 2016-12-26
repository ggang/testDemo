*** Settings ***
Resource          ../FlowManager/大象钢票.robot
Resource          ../keywordManaer/公共关键字.robot
Resource          ../keywordManaer/大象钢票.robot

*** Keywords ***
申请钢票测试
    商票买钢流程
    检查是否成功进入相应页面

以票换钱测试
    以票换钱流程
    检查是否成功进入汇票栈页面

申请商票贷测试
    钢票页面申请商票贷
    检查是否成功进入相应页面

申请票据贴现测试
    申请票据贴现流程
    检查是否成功进入汇票栈页面
