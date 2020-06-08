open Import
module Bin = Lsp_stdune.Bin

let _PATH =
  lazy
    (Bin.parse_path
       (Option.value ~default:"" (Unix_env.get Unix_env.initial "PATH")))

let which = Bin.which ~path:(Lazy.force _PATH)
