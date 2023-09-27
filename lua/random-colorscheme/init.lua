local config = require("random-colorscheme.config")

local M = {}

---@param colorschemes string[]|nil
function M.set(colorschemes)
  colorschemes = colorschemes or config.colorschemes
  local i = math.random(os.time()) % #colorschemes
  i = i == 0 and #colorschemes or i
  vim.cmd("colorscheme " .. colorschemes[i])
end

---@param user_config RandomColorscheme.UserConfig
function M.setup(user_config)
  config = vim.tbl_deep_extend("force", config, user_config)
  if config.set_on_load then
    M.set()
  end
end

return M
