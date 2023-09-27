---@return string[]
local function get_available_colorschemes()
  return vim.fn.getcompletion("", "color")
end

---@type RandomColorscheme.Config
local config = {
  colorschemes = get_available_colorschemes(),
  set_on_load = true,
}

return config
