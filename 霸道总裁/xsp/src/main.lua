init("com.papegames.evol",0)
require("tap") -- 加载点击函数

ret,results = showUI("ui.json") --显示UI
c=1 -- 初始化c
if(ret==1 and ret~=nil)
then
	while(true)
	do
		-- 循环点击
		tap(530,715)
		tap(613,748)
		tap(958,1879)
		mSleep(400)
		sysLog(c)
		if(c==250)
		then
			collectgarbage("collect") -- 垃圾回收
			c=0
		end
		c=c+1
	end
end
if(ret==0 and ret~=nil)
then
	lua_exit() -- 用户选择退出
end