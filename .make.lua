--- THIS IS A PORT FROM MAKEFILE TO LUA
--- use this 'lua .make.lua' if you dont have make

DIST_FOLDER = "_dist"
GAME_LOVE = DIST_FOLDER .. "/game.love"
EXCLUDE_ZIP = "_dist/**\\* .git/**\\* Makefile .make.lua .editorconfig .luarc.json .gitignore"

command = "rm -rf " .. DIST_FOLDER .. "/" -- make sure this delete a folder
os.execute(command)
command = "mkdir " .. DIST_FOLDER .. "/" -- and not a file
os.execute(command)
--- create the game.love
command = "zip -r0 " .. GAME_LOVE .. " . -x " .. EXCLUDE_ZIP
os.execute(command)
