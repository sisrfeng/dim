local view   = require("dim.view")
local config = require("dim.config")

local M = {}

M.setup = config.setup
M.toggle = view.toggle
M.disable = view.disable
M.enable = view.enable

function M.reset()
    M.disable()
    require("plenary.reload").reload_module("dim")
    require("dim").enable()
end

return M
