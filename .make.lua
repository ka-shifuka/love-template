GAME_LOVE = "_dist/game.love"
EXCLUDE_ZIP = "_dist/**\\* .git/**\\* Makefile .make.lua .editorconfig .luarc.json .gitignore"

--- remove game.love beforem make new
command = "rm -rf " .. GAME_LOVE
os.execute(command)

--- create the game.love
command = "zip -r0 " .. GAME_LOVE .. " . -x " .. EXCLUDE_ZIP
os.execute(command)
