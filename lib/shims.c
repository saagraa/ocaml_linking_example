#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/alloc.h>
#include <crypt.h>

CAMLprim value
caml_crypt(value phrase, value salt)
{
  CAMLparam2(phrase, salt);
  CAMLlocal1(result);
  const char *hashed= crypt(String_val(phrase), String_val(salt));
  result = caml_copy_string(hashed);
  CAMLreturn(result);
}

