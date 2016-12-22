*** Settings ***
Resource          ../../keywordManaer/公共关键字.robot
Resource          ../../keywordManaer/四方咨询.robot

*** Keywords ***
点击宏观经济链接
    [Arguments]    ${xpath}
    wait until keyword succeeds    1min    2sec    根据路径点击元素    ${xpath}

检验是否成功进入宏观经济页面
    [Arguments]    ${href}
    检验是否链接到宏观经济页面    ${href}

设置宏观经济列表属性
    [Documentation]    调用JS使其显示为active
    execute javascript    document.documentElement.scrollTop=5000
    execute javascript    $(".ol-l li").addClass('active');
