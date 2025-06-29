GAME_LOVE = _dist/game.love
EXCLUDE_ZIP = _dist/**/* .git/**/* Makefile .gitignore .editorconfig .luarc.json .make.lua

zip:
	rm -rf ${GAME_LOVE}
	zip -r0 ${GAME_LOVE} . -x ${EXCLUDE_ZIP}
