require("alpha.term")
local alpha = require("alpha")

local dashboard = require("alpha.themes.dashboard")
dashboard.section.buttons.val = {
    dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
    dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
    dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
    dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
    dashboard.button("s", "勒" .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
    dashboard.button("l", "鈴" .. " Lazy", ":Lazy<CR>"),
    dashboard.button("q", " " .. " Quit", ":qa<CR>"),
}
for _, button in ipairs(dashboard.section.buttons.val) do
    button.opts.hl = "AlphaButtons"
    button.opts.hl_shortcut = "AlphaShortcut"
end
dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "AlphaHeader"
dashboard.section.buttons.opts.hl = "AlphaButtons"

local width = 46
local height = 25 -- two pixels per vertical space

-- dashboard.section.terminal.command = "cat /Users/mlape6/.config/nvim/art/thisisfine.sh"
dashboard.section.terminal.width = width
dashboard.section.terminal.height = height
dashboard.section.terminal.opts.redraw = true

local header = {
    type = "terminal",
    command = "cat | " .. os.getenv("HOME") .. "/.config/nvim/art/thisisfine.sh",
    width = 46,
    height = 25,
    opts = {
        redraw = true,
        position = "center",
        hl = "String",
    },
}

dashboard.config.layout = {
    -- { type = "padding", val = 0 },
    -- dashboard.section.terminal,
    { type = "padding", val = height + 5 },
    header,
    -- { type = "padding", val = 2 },
    -- dashboard.section.buttons,
    -- { type = "padding", val = 1 },
    -- dashboard.section.footer,
}

alpha.setup(dashboard.opts)
