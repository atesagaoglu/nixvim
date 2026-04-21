{
  keymaps = [
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options = {
        silent = true;
        desc = "Move selected lines down";
      };
    }

    {
      mode = "v";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
      options = {
        silent = true;
        desc = "Move selected lines up";
      };
    }

    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
      options.desc = "Scroll down half page and center";
    }

    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
      options.desc = "Scroll up half page and center";
    }

    {
      mode = "n";
      key = "n";
      action = "nzzzv";
      options.desc = "Next search result centered and unfolded";
    }

    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
      options.desc = "Previous search result centered and unfolded";
    }

    {
      mode = [ "i" "v" ];
      key = "<C-c>";
      action = "<C-[>";
      options.desc = "Escape to normal mode";
    }

    {
      mode = "n";
      key = "<C-Up>";
      action = "<C-w>+";
      options.desc = "Increase window height";
    }

    {
      mode = "n";
      key = "<C-Down>";
      action = "<C-w>-";
      options.desc = "Decrease window height";
    }

    {
      mode = "n";
      key = "<C-Right>";
      action = "<C-w>>";
      options.desc = "Increase window width";
    }

    {
      mode = "n";
      key = "<C-Left>";
      action = "<C-w><";
      options.desc = "Decrease window width";
    }
  ];

  # Extra keymaps
  extraConfigLua = ''
    vim.keymap.set("n", "<leader>yy", function()
        local current_pos = vim.fn.getpos(".")
        local current_view = vim.fn.winsaveview()
        vim.cmd("normal! ggVGy")
        vim.fn.setpos(".", current_pos)
        vim.fn.winrestview(current_view)
    end, { noremap = true, silent = true, desc = "Copy entire file" })
  '';
}
