-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- language packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.dart" },
  -- { import = "astrocommunity.pack.docker" }, -- hadolint not supported on device
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.godot" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.spring-boot" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.mdx" },
  { import = "astrocommunity.pack.nginx" },
  { import = "astrocommunity.pack.nix" },
  { import = "astrocommunity.pack.prisma" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.templ" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.yaml" },

  { import = "astrocommunity.editing-support.bigfile-nvim" },
  { import = "astrocommunity.media.image-nvim" },
  { import = "astrocommunity.project.project-nvim" },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.completion.avante-nvim" },
  -- { import = "astrocommunity.completion.copilot-lua" },

  { import = "astrocommunity.markdown-and-latex.vimtex" },

  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  -- import/override with your plugins folder
}
