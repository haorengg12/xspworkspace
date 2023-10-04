init("com.papegames.evol",0)
require("tap") -- 加载点击函数
require("pl") -- 加载识别模块

ret,results = showUI("ui.json") --显示UI
c=1 -- 初始化c
if(ret==1 and ret~=nil)
then
	while(true)
	do
		-- 循环点击
				tap(530,715)
				tap(613,748)
				tap(958,1879) -- 点击右下角
		if(c%10==0)
		then
			pl(504,1731,548,1772) -- 趣
			cc=kk
			--	pl(589,729,653,1772) -- 事
			--	pl(634,1730,677,1773) -- 了
			pl(762,1724,806,1773) -- 离
			if(kk=="离" and cc=="趣")
			then
				tap(75,128) -- 点击返回键
			end
		end
		
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