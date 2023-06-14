open B0_kit.V000
open B0_std

let crypt = B0_ocaml.libname "crypt"

let lib = B0_ocaml.lib
  ~c_requires:Cmd.(atom "-lcrypt")
  ~srcs:Fpath.[ `Dir (v "lib")]
  crypt

let main = B0_ocaml.exe
  ~requires:[crypt]
  ~srcs:Fpath.[ `Dir (v "bin")]
  "main"
