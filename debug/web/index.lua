--ngx.header.content_type = "text/plain"
-- local redis=require("redis")
-- ngx.say(bit.tohex(9))
-- local regex = "\\\\d+"
-- local m = ngx.re.match("hello, 1234", regex)
-- if m then ngx.say(m[0]) else ngx.say("not matched!") end
-- ngx.say("hello")
-- local test="4534".."�й���"
-- ngx.say(test)
local SessionManage = require("session")--.start()
session=SessionManage.start()
if session.data.name==nil then
    session.data.name = "OpenResty Fan"
    session:save()
else
    ngx.say(session.data.name)
end
    
    
local template = require "template"
template.render("index.html", { message = "Hello, World!" },"no-cache",false)

