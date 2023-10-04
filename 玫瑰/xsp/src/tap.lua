-- 点击函数
function tap(x,y)
	touchDown(0,x,y)
	mSleep(300)
	touchUp(0,x,y)
	mSleep(200)	
end