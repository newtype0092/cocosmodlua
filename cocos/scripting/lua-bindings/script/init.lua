--[[

Copyright (c) 2011-2015 chukong-incc.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

]]

require "cocos.cocos2d.Cocos2d"
require "cocos.cocos2d.Cocos2dConstants"
require "cocos.cocos2d.functions"

__G__TRACKBACK__ = function(msg)
    local msg = debug.traceback(msg, 3)
    print(msg)
    return msg
end

-- opengl
require "cocos.cocos2d.Opengl"
require "cocos.cocos2d.OpenglConstants"
-- audio
require "cocos.cocosdenshion.AudioEngine"
-- cocosstudio
if nil ~= ccs then
    require "cocos.cocostudio.CocoStudio"
end
-- ui
if nil ~= ccui then
    require "cocos.ui.GuiConstants"
    require "cocos.ui.experimentalUIConstants"
end

-- extensions
require "cocos.extension.ExtensionConstants"
-- network
require "cocos.network.NetworkConstants"
-- socket
package.loaded["socket"] = require("cocos.network.socket")
package.loaded["ltn12"] = require("cocos.network.ltn12")
package.loaded["mime"] = require("cocos.network.mime")
package.loaded["socket.headers"] = require("cocos.network.socket.headers")
package.loaded["socket.url"] = require("cocos.network.socket.url")
package.loaded["socket.mbox"] = require("cocos.network.socket.mbox")
package.loaded["socket.tp"] = require("cocos.network.socket.tp")
package.loaded["socket.ftp"] = require("cocos.network.socket.ftp")
package.loaded["socket.smtp"] = require("cocos.network.socket.smtp")
package.loaded["socket.http"] = require("cocos.network.socket.http")
-- Spine
if nil ~= sp then
    require "cocos.spine.SpineConstants"
end

require "cocos.cocos2d.deprecated"
require "cocos.cocos2d.DrawPrimitives"

-- Lua extensions
require "cocos.cocos2d.bitExtend"
--[[
-- CCLuaEngine
require "cocos.cocos2d.DeprecatedCocos2dClass"
require "cocos.cocos2d.DeprecatedCocos2dEnum"
require "cocos.cocos2d.DeprecatedCocos2dFunc"
require "cocos.cocos2d.DeprecatedOpenglEnum"

-- register_cocostudio_module
if nil ~= ccs then
    require "cocos.cocostudio.DeprecatedCocoStudioClass"
    require "cocos.cocostudio.DeprecatedCocoStudioFunc"
end


-- register_cocosbuilder_module
require "cocos.cocosbuilder.DeprecatedCocosBuilderClass"

-- register_cocosdenshion_module
require "cocos.cocosdenshion.DeprecatedCocosDenshionClass"
require "cocos.cocosdenshion.DeprecatedCocosDenshionFunc"

-- register_extension_module
require "cocos.extension.DeprecatedExtensionClass"
require "cocos.extension.DeprecatedExtensionEnum"
require "cocos.extension.DeprecatedExtensionFunc"

-- register_network_module
require "cocos.network.DeprecatedNetworkClass"
require "cocos.network.DeprecatedNetworkEnum"
require "cocos.network.DeprecatedNetworkFunc"

-- register_ui_moudle
if nil ~= ccui then
    require "cocos.ui.DeprecatedUIEnum"
    require "cocos.ui.DeprecatedUIFunc"
end
]]
-- cocosbuilder
require "cocos.cocosbuilder.CCBReaderLoad"

-- physics3d
require "cocos.physics3d.physics3d-constants"

if CC_USE_FRAMEWORK then
    require "cocos.framework.init"
end
