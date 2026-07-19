{
  plugins.opencode.enable = true;

  keymaps = [

    {
      mode = ["n" "x"];
      key = "<leader>oa";
      action = {__raw = "function() require(\"opencode\").ask(\"@this: \") end";};
    }

    {
      mode = [ "n" "x" ];
      key = "<leader>os";
      action = "function() require(\"opencode\").select() end";
    }
  ];
}
