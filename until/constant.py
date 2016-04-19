#coding=utf-8
#!/usr/bin/python

import ConfigParser

def printList(str):
    """
    split
    return list
    """
    s=str.split('\'')
    return s


def ReadConfig(path,name,key):
    """
        retrun  key   value
    """
    #path='D:\\code\\testDemo\\conf\\url_xpath.ini'
    config = ConfigParser.ConfigParser()
    config.read(path)
    url_path =config.get(name,key)
    return url_path

def TableXpath():
    """
    get table xpath
    """
    xpath=[]
    for row in range(1,7):
        for cloum in range(1,7):
            msg='/html/body/div[7]/div[2]/table/tbody/tr['+str(row)+']/td['+str(cloum)+']'
            xpath.append(msg)
    print xpath
    return xpath

def IncreaseByDegress(a):
    return a+1

