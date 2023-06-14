let () = 
  let hashed = Crypt.crypt "hello" "world" in
  print_endline hashed
