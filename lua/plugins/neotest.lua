return {
  "nvim-neotest/neotest",
  ft = { "typescript", "javascript" },
  dependencies = {
    -- "nvim-neotest/neotest-jest",
    "marilari88/neotest-vitest",
  },
  opts = function()
    return {
      -- your neotest config here
      adapters = {
        -- require("neotest-jest"),
        require("neotest-vitest")({
          -- Filter directories when searching for test files. Useful in large projects (see Filter directories notes).
          filter_dir = function(name, rel_path, root)
            return name ~= "node_modules"
          end,
        }),
      },
    }
  end,
  config = function(_, opts)
    -- get neotest namespace (api call creates or returns namespace)
    local neotest_ns = vim.api.nvim_create_namespace("neotest")
    vim.diagnostic.config({
      virtual_text = {
        format = function(diagnostic)
          local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
          return message
        end,
      },
    }, neotest_ns)
    require("neotest").setup(opts)
  end,
}
