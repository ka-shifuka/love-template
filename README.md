![icon](icon.png)

### Love2d game development template repository
This is a template repository for fast development for developing game with love2d game framework. This include some library including: 

- gooi ui library
- sti library
- hump library
- anim8 library
- tween library
- windfield library 
- lovebird library for debuging
- and luaunit for testing

#### Backstory
Sience i'm making game with love2d i need some very basic template that only include some library that i'm used every making new project. And so i make this template repo, this template repo is a zero rule template. I call it zero rule template because this only provide a library and some tool everything is on our to make the game.

#### Get started
First clone this git repository and make sure you remove the .git directory for your own git repository

```fish
git clone https://github.com/ka-shifuka/love-template
rm -rf .git/
```

if you wanna create a game.love file you can use 'make' or 'lua .make.lua' this make game.love file inside _dist/ folder
```fish
make 
```
if you dont have a gnu make installed in your enviroment you can use lua this is also make game.love file inside _dist/ folder
```fish
lua .make.lua 
```

important 'make' and 'lua .make.lua' only can use in linux enviroment because is use command like zip, rm and mkdir

