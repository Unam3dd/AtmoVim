-- Snippets personnalisés pour tous les langages
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt

-- Snippet pour les commentaires de fonction
local function_comment = s("func", {
  t("function "),
  i(1, "function_name"),
  t("("),
  i(2, "parameters"),
  t(")"),
  t({ "", "\t" }),
  i(3, "-- function body"),
  t({ "", "end"),
})

-- Snippet pour les boucles for
local for_loop = s("for", {
  t("for "),
  i(1, "i"),
  t(" = "),
  i(2, "1"),
  t(", "),
  i(3, "10"),
  t(" do"),
  t({ "", "\t" }),
  i(4, "-- loop body"),
  t({ "", "end"),
})

-- Snippet pour les conditions if
local if_condition = s("if", {
  t("if "),
  i(1, "condition"),
  t(" then"),
  t({ "", "\t" }),
  i(2, "-- if body"),
  t({ "", "end"),
})

-- Snippet pour les commentaires de section
local section_comment = s("section", {
  t("-- ==========================================="),
  t({ "", "-- " }),
  i(1, "SECTION_NAME"),
  t({ "", "-- ==========================================="),
})

-- Retourner tous les snippets
return {
  function_comment,
  for_loop,
  if_condition,
  section_comment,
} 