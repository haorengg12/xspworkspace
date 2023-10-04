
require("data1")

local ocr, msg = createOCR({
		type = "tesseract",
		path = "[external]",
		lang = zifuku,
		mode = cc
	})
if ocr ~= nil then
	string.trim = function(s)
		return s:match'^%s*(.*%S)'  or 'failed'
	end
	local code, text = 0, ""
	mSleep(1000)
	code, text = ocr:getText({
			rect = {x1,y1,x2,y2},
			diff = {yanse},
			whitelist = baimingdan,
			psm = kk
		})
	sysLog("code = " .. tostring(code) .. ", text = " .. text:trim())
	ocr:release()
else
	sysLog("createOCR failed: " .. tostring(msg))
end