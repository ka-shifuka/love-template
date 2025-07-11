--[[
Copyright (c) 2012 Matthias Richter

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

Except as contained in this notice, the name(s) of the above copyright holders
shall not be used in advertising or otherwise to promote the sale, use or
other dealings in this Software without prior written authorization.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
]] --


local BASE = (...) .. '.'
assert(not BASE:match('%.init%.$'), "Invalid require path `" .. (...) .. "' (drop the `.init').")

return {
    utf8 = require(BASE .. 'utf8'),
    gooi = require(BASE .. 'gooi'),
    component = require(BASE .. 'component'),
    layout = require(BASE .. 'layout'),
    ------------ components:
    label = require(BASE .. "label"),
    button = require(BASE .. "button"),
    slider = require(BASE .. "slider"),
    checkbox = require(BASE .. "checkbox"),
    radio = require(BASE .. "radio"),
    text = require(BASE .. "text"),
    bar = require(BASE .. "bar"),
    spinner = require(BASE .. "spinner"),
    joy = require(BASE .. "joy"),
    knob = require(BASE .. "knob"),
    panel = require(BASE .. "panel"),
}
