*** Settings ***
Resource          ../../keywordManaer/四方咨询.robot
Resource          ../../keywordManaer/公共关键字.robot
Resource          ../../keywordManaer/会员登录.robot

*** Keywords ***
点击快报链接
    [Arguments]    ${url_link}
    全屏操作
    ${text}    run keyword if    '${url_link}'=='1'    四方咨询.点击并获取头条咨询
    ...    ELSE IF    '${url_link}'=='2'    四方咨询.点击并获取第二条咨询
    ...    ELSE IF    '${url_link}'=='3'    四方咨询.点击并获取第三条咨询
    ...    ELSE IF    '${url_link}'=='4'    四方咨询.点击并获取第四条咨询
    ...    ELSE IF    '${url_link}'=='5'    四方咨询.点击并获取第五条咨询
    ...    ELSE IF    '${url_link}'=='6'    四方咨询.点击并获取第六条咨询
    ...    ELSE IF    '${url_link}'=='7'    四方咨询.点击并获取第七条咨询
    ...    ELSE IF    '${url_link}'=='8'    四方咨询.点击并获取第八条咨询
    ...    ELSE IF    '${url_link}'=='9'    四方咨询.点击并获取第九条咨询
    ...    ELSE IF    '${url_link}'=='10'    四方咨询.点击并获取第十条咨询
    [Return]    ${text}
