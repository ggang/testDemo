#!/usr/bin/python
# -*- coding: UTF-8 -*-
import ConfigParser

def printList(str):
    s=str.split('\'')
    return s

def ReadConfig(path,name,str):
    config = ConfigParser.ConfigParser()
    config.read(path)
    url_path =config.get(name,str)
    return url_path

