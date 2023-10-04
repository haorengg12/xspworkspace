-- 横屏home右
init("0", 1)
-- 测试自定义字库
local ocr, msg = createOCR({
    type = "tesseract",
    path = "res/", -- 自定义字库暂时只能放在脚本res/目录下
    lang = "num" -- 使用生成的num.traineddata文件
})
if ocr ~= nil then
    -- 测试1080p分辨率下的coc村庄资源获取
    local rect = {247, 1732, 891, 1771}
    local diff = {"0xffffff-0x0f0f0f"}
    local code, text = ocr:getText({
        rect = rect,
        diff = diff
    })
    if code == 0 then
        sysLog("recognize succeed: gold = " .. text)
    else
        sysLog("recognize failed: code = " .. tostring(code))
    end
else
    sysLog("createOCR failed: " .. msg)
end