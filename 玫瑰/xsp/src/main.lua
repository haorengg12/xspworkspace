init("com.papegames.evol",0)
require("tap") -- 加载点击函数


c=1 -- 初始化c
if(c==1)
then
	while(true)
	do
		-- 循环点击
		tap(612,930)
		tap(400,326)
		tap(481,350)
		tap(391,391)
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