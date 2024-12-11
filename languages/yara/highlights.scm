; Keywords
[
  "rule"
  "global"
  "private"
  "import"
  "include"
  "strings"
  "condition"
  "meta"
] @keyword

; Keywords (condition)
[
  "and"
  "or"
  "not"
  "matches"
  "contains"
  "icontains"
  "imatches"
  "startswith"
  "istartswith"
  "endswith"
  "iendswith"
  "for"
  "of"
  "in"
  "all"
  "any"
  "them"
] @keyword.operator

; Built-in identifiers
(filesize) @function.builtin
(entrypoint) @function.builtin

; String modifiers
[
  "ascii"
  "wide"
  "nocase"
  "fullword"
  "xor"
  "base64"
  "base64wide"
] @keyword.modifier

; Rule names
(rule_definition
  name: (identifier) @function)

; Tags
(tag_list
  [(identifier) (tag)] @tag)

; Meta definitions
(meta_definition
  key: (identifier) @property)

; String identifiers
(string_identifier
  (identifier)? @string.special)

; Constants
(boolean_literal) @constant.builtin

(integer_literal) @constant.numeric
(size_unit) @constant.numeric

; Strings
(double_quoted_string) @string
(single_quoted_string) @string
(escape_sequence) @string.escape

; Hex strings
(hex_string) @string.special
(hex_byte) @constant.numeric
(hex_wildcard) @constant.builtin

; Regex strings
(regex_string) @string.regexp
(pattern) @string.regexp

; Operators
[
  ">"
  "<"
  "=="
  "<="
  ">="
  "!="
  "+"
  "-"
  "*"
  "\\"
  "%"
] @operator

[":" "=" "{" "}" "(" ")" "[" "]" "$" "#" "@" "!" ".." "|" ","] @punctuation.delimiter

; Comments
(comment) @comment
