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

