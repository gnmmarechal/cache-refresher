--Refresh Icons User App (Based on Quick Payload Switcher v1.0)
-- By gnmmarechal
-- http://gs2012.xyz

version = "1.0"
if System.doesFileExist("/arm9loaderhax.bin") or System.doesFileExist("/arm9loaderhax_si.bin") then
	if System.doesFileExist("/arm9loaderhax.bin") then
		originalpayload = "/arm9loaderhax.bin"
	elseif System.doesFileExist("/arm9loaderhax_si.bin") then
		originalpayload = "/arm9loaderhax_si.bin"
	end
	if System.doesFileExist("/deletecache.bin") then
		renamedpayload = "/deletecache.bin"
	if System.doesFileExist(originalpayload) and System.doesFileExist(renamedpayload) then
		System.renameFile(originalpayload, "/temppayload.bin")
		System.renameFile(renamedpayload, originalpayload)
		System.renameFile("/temppayload.bin", renamedpayload)
	end
end

while true do
	pad = Controls.read()
	
	if Controls.check(pad,KEY_L) then
		System.exit()
	else
		System.reboot()
	end
end