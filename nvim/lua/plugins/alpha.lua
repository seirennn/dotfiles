return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local logo = [[
                     ▄ ▄
                 ▄   ▄▄▄     ▄ ▄▄▄ ▄ 
                 █ ▄ █▄█ ▄▄▄ █ █▄█ █ █
            ▄▄   █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █
           ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄
          █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ 
           ▄  █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █
        █▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █
            █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█
  
                  [  @Seirennn  ]

                   Matthew 28:20 
   
  I am with you always, even to the end of the times.
                 ~ Jesus Christ
    ]]
    opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
  end,
}
