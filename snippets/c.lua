-- Snippets C minimaux pour test
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- Snippet pour include
local include_snippet = s("inc", {
  t("#include <"),
  i(1, "stdio.h"),
  t(">"),
})

-- Snippet simple pour main
local main_snippet = s("main", {
  t("#include <stdio.h>"),
  t({ "", "int main(void) {", "\t" }),
  i(1, "return (0);"),
  t({ "", "}" }),
})

-- Snippet simple pour printf
local printf_snippet = s("printf", {
  t("printf(\""),
  i(1, "Hello, World!\\n"),
  t("\");"),
})

-- Snippet pour bloc de commentaire header
local header_comment_snippet = s("header", {
  t("/////////////////////////////////////"),
  t({ "", "//", "" }),
  t("//\t\t\t"),
  i(1),
  t({ "", "//" }),
  t({ "", "////////////////////////////////////" }),
  t({ "", "" }),
  i(0),
})

return {
  include_snippet,
  main_snippet,
  printf_snippet,
  header_comment_snippet,
} 