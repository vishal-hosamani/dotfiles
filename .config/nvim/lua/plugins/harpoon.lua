return {
  "ThePrimeagen/harpoon",
  keys = {
    { "<leader>hm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = "Toggle harpoon" },
    { "<leader>ha", '<cmd>lua require("harpoon.mark").add_file()<CR>', desc = "Add to harpoon" },
    { "<leader>hd", '<cmd>lua require("harpoon.mark").rm_file()<CR>', desc = "Remove from harpoon" },
    { "<Tab>", '<cmd>lua require("harpoon.ui").nav_next()<CR>', desc = "Next marked file" },
    { "<S-Tab>", '<cmd>lua require("harpoon.ui").nav_prev()<CR>', desc = "Prev marked file" },
  },
}
