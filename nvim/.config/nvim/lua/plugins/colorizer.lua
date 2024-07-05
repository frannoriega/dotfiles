-- Highlights color specs (HEX, RGB) with the color it represents.
-- It requires `truecolor` from terminal
return {
  "NvChad/nvim-colorizer.lua",
  event = { "BufReadPre", "BufNewFile" },
  config = true,
}
