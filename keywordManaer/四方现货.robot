*** Settings ***
Library           Selenium2Library

*** Keywords ***
切换到四方现货页面
    select window    title=钢钢网-四方现货,以最快最便捷的方式找到你所需要的货物

检查是否进入新闻详情页面
    select window    url=${url}
    page should contain image    src=/images/shangshi2.jpg
