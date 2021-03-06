*** Settings ***
Library           Selenium2Library

*** Keywords ***
输入品名名称
    [Arguments]    ${product_name}
    input text    id=productName    ${product_name}

输入材质名称
    [Arguments]    ${statndard}
    input text    id=Standard    ${statndard}

输入钢厂名称
    [Arguments]    ${mills}
    input text    id=Mills    ${mills}

输入提货地址名称
    [Arguments]    ${product_city}
    input text    id=productCity    ${product_city}

输入最小价格
    [Arguments]    ${min_price}
    input text    id=minPrice    ${min_price}

输入最大价格
    [Arguments]    ${max_price}
    input text    id=maxPrice    ${max_price}

输入最小厚度
    [Arguments]    ${min_thick}
    input text    id=minThick    ${min_thick}

输入最大厚度
    [Arguments]    ${max_thick}
    input text    id=maxThick    ${max_thick}

输入最小宽度
    [Arguments]    ${min_width}
    input text    id=minwidth    ${min_width}

输入最大宽度
    [Arguments]    ${max_width}
    input text    id=maxwidth    ${max_width}

输入最小长度
    [Arguments]    ${min_length}
    input text    id=minlength    ${min_length}

输入最大长度
    [Arguments]    ${max_length}
    input text    id=maxlength    ${max_length}

点击立即搜索
    click button    id=seachTo

点击批量搜索
    click button    id=seachAll

检查钢材库菜单的颜色是否正确
    wait until page contains element    xpath=/html/body/div[3]/div/ul/li[2]/a    20    未成功加载添加成功页面
    ${color}    get element attribute    .gck@style
    log    ${color}

切换到钢材库页面
    wait until keyword succeeds    1min    5sec    select window    title=钢钢网-钢材库,以最快最便捷的方式找到你所需要的货物

等待加载详情出现
    wait until page contains    查看详情    20    加载详情未出现
