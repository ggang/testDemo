# coding=utf-8
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
