-- 点击函数
function tap(x,y)
	touchDown(0,x,y)
	mSleep(200)
	touchUp(0,x,y)
	mSleep(100)	
end