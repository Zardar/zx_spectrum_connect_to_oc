
local computer=require'computer'
local inet=require'internet'
local fs=require('filesystem')
local branch = 'https://raw.githubusercontent.com/ignacio/luagleck/master/'
local url=''
local path='home/ZX_Spectrum'
local tree={
	'48.ROM',
	'LICENSE.md',
	'README.md',
	'display.lua',
	'logger.lua',
	'machine.lua',
	'main.lua',
	'port.lua',
	'z80.lua'
}
ditree.opcodes={
	'cb.lua',
	'common.lua',
	'daa.lua',
	'dd.lua',
	'ddcb.lua',
	'ed.lua',
	'fd.lua',
	'fdcb.lua'
}
ditree.machine={
	'spectrum_48.lua'
}
ditree.file_format={
	'loader.lua',
	'sna.lua',
	'tap.lua',
	'z80.lua'
}

local function wget(url,name,path)
	local handle=inet.request(url)
	local result=''
	for chunk in handle do result=result..chunk end
	if not fs.exists(path) then fs.makeDirectory(path)end
	local file=fs.open(path..'/'..name,'w')
	file:write(result)
	file:close()
	file=nil
	handle=nil
	result=nil
	return true
end

for a in pairs (directory) do
	if type(directory[a])=='string' then
		print('loading '..tree[a])
		url=branch..tree[a]
		wget(url,tree[a],path)
	else for b in pairs(tree[a]) do
		print('loading '..a..'/'..tree[a][b])
		url = branch..a..'/'..tree[a][b]
		wget(url,tree[a][b],path..'/'..a)
	  end
	end
end