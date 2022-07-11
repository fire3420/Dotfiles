local M = {}
local autocmd = vim.api.nvim_create_autocmd

M.hop = {
  n = {
    ["<leader><leader>j"] = {
      function()
        require'hop'.hint_words()
      end,
      "word hop"
    },
  }
}

M.comment = {

  -- toggle comment in both modes
  n = {
    ["<C-k>"] = {
      function()
        require("Comment.api").toggle_current_linewise()
      end,

      "蘒  toggle comment",
    },
  },

  v = {
    ["<C-k>"] = {
      "<ESC><cmd>lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>",
      "蘒  toggle comment",
    },
  },
}

M.autoformat = {

  n = {
    ["<leader>i"] = {
      "<cmd> Autoformat<CR>",
      "Autoformat",
    },
  },
}

M.jukit = {

  n = {
    ["<leader>oc"] = {
      "<cmd> JukitOut conda activate sqlenv2<CR>",
      "Open jukit with conda",
    },
  },
}

M.tagbar = {

  n = {
    ["<leader>t"] = {
      "<cmd>TagbarToggle<CR>",
      "Open tagbar",
    },
  },
}


M.yank = {

  n = {
    ["<leader>d"] = {
      '"_d',
      "delete",
    },
    ["<leader>p"] = {
      '"_dP',
      "paste",
    },
  },
  v = {
    ["<leader>d"] = {
      '"_d',
      "delete",
    },
    ["<leader>p"] = {
      '"_dP',
      "delete",
    },
  },
  i = {
    ["jj"] = {
      '<Esc>',
      "jj",
    }
  }

}

autocmd("FileType", {
  pattern = "python",
  callback = function()
    M.goref = {
      n = {
        ["<leader>a"] = {
          "<cmd> Ag<CR>",
          "Find refs",
        },
      },
    }
  end,
})


autocmd("FileType", {
  pattern = "go",
  callback = function()
    M.goref = {
      n = {
        ["<leader>a"] = {
          "<cmd> GoReferrers<CR>",
          "Find refs",
        },
      },
    }
  end,
})


M.buffer = {

  n = {
    ["]q"] = {
      '<cmd>cnext<CR>',
      "cnext",
    },
    ["[q"] = {
      '<cmd>cprevious<CR>',
      "cnext",
    },
    ["]b"] = {
      '<cmd>bnext<CR>',
      "cnext",
    },
    ["[b"] = {
      '<cmd>bprevious<CR>',
      "cnext",
    },
    ["-b"] = {
      '<cmd>bdelete<CR>',
      "cnext",
    },
    ["-b!"] = {
      '<cmd>bdelete!<CR>',
      "cnext",
    },
    ["]t"] = {
      '<cmd>tabnext<CR>',
      "cnext",
    },
    ["[t"] = {
      '<cmd>tabprevious<CR>',
      "cnext",
    },
  },

}

M.vimspector = {

  n = {
    ["<leader>G"] = { "<cmd>lua require('custom.vimspector').generate_debug_profile()<cr>", "Generate Debug Profile" },
    ["<leader>I"] = { "<cmd>VimspectorInstall<cr>", "Install" },
    ["<leader>U"] = { "<cmd>VimspectorUpdate<cr>", "Update" },
    ["<leader>R"] = { "<cmd>call vimspector#RunToCursor()<cr>", "Run to Cursor" },
    ["<leader>C"] = { "<cmd>call vimspector#Continue()<cr>", "Continue" },
    ["<leader>ii"] = { "<cmd>call vimspector#StepInto()<cr>", "Step Into" },
    ["<leader>O"] = { "<cmd>call vimspector#StepOver()<cr>", "Step Over" },
    ["<leader>S"] = { "<cmd>call vimspector#Launch()<cr>", "Start" },
    ["<leader>T"] = { "<cmd>call vimspector#ToggleBreakpoint()<cr>", "Toggle Breakpoint" },
    ["<leader>uu"] = { "<cmd>call vimspector#StepOut()<cr>", "Step Out" },
    ["<leader>ss"] = { "<cmd>call vimspector#Stop()<cr>", "Stop" },
    ["<leader>R"] = { "<cmd>call vimspector#Restart()<cr>", "Restart" },
    ["<leader>X"] = { "<cmd>VimspectorReset<cr>", "Reset" },
    ["<leader>H"] = { "<cmd>lua require('custom.vimspector').toggle_human_mode()<cr>", "Toggle HUMAN mode" },
  },
}


return M
