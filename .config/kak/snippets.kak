# custom snippets

# current date
define-command -hidden today-snippet %{
	snippets-insert %sh{ date +%F }
}
set-option -add global snippets 'today' 'today' today-snippet

# from https://castel.dev/post/lecture-notes-1/
# latex: fraction
define-command -hidden fraction-snippet %{
	snippets-insert '\frac{$1}{$2}$0'
}
set-option -add global snippets 'fraction' '//' fraction-snippet

# latex: fraction 3/ | x^2/
define-command -hidden fraction-snippet-2 %{
	snippets-insert "\frac{%reg{2}}{$1}$0"
}
set-option -add global snippets 'fraction' '((\d+)|(\d*)(\\)?([A-Za-z]+)((\^|_)(\{\d+\}|\d))*)/' fraction-snippet-2

define-command -hidden to-snippet %{
  snippets-insert "\to"
}
set-option -add global snippets 'to' '->' to-snippet

define-command -hidden left-right-arrow-snippet %{
  snippets-insert "\leftrightarrow"
}
set-option -add global snippets 'left right arrow' '<->' left-right-arrow-snippet

define-command -hidden implies-snippet %{
  snippets-insert "\implies"
}
set-option -add global snippets 'implies' '=>' implies-snippet

define-command -hidden equivalent-snippet %{
   snippets-insert "\Leftrightarrow"
}
set-option -add global snippets 'equivalent' '<=>' equivalent-snippet

define-command -hidden parenthesis-snippet %{
  snippets-insert "\left( $1 \right)$0"
}
set-option -add global snippets 'parenthesis' '()' parenthesis-snippet
