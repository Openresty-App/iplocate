#!/usr/bin/resty


local iconv = require 'resty.iconv'

local from = 'UTF-8'
local to   = 'GBK'

local i, err = iconv:new(from, to)
if not i then
  return ngx.say(err)
end

local t, count = i:convert('文件编码UTF-8')
if not t then
  return t
end
