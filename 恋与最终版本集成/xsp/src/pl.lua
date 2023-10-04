function pl(x1,y1,x2,y2)
	local ocr, msg = createOCR({
			type = "tesseract",
			path = "[external]",
			lang = "chi_sim",
			mode = 2
		})
	if ocr ~= nil then
		string.trim = function(s)
			return s:match'^%s*(.*%S)'  or 'failed'
		end
		local code, text = 0, ""
		mSleep(1000)
		code, text = ocr:getText({
				rect = {x1,y1,x2,y2},
				diff = {"0x6f6a72-0x0b0b0d","0x8e8a92-0x070707","0xbfbcc1-0x0f0f0f"},
				whitelist = "似乎没什么有趣的事了,先离开吧",
				psm = 8
			})
		sysLog("code = " .. tostring(code) .. ", text = " .. text:trim())
		kk=text:trim()
		ocr:release()
	else
		sysLog("createOCR failed: " .. tostring(msg))
	end
end