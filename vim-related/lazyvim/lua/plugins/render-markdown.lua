-- Disable conceal, so we avoid the annoying effect that "text under last line of a codeblock moves up and down as our cursor moves to / away from the last line of codeblock"
return {
  "MeanderingProgrammer/render-markdown.nvim",
  opts = {
    anti_conceal = { enabled = false },
  },
}
