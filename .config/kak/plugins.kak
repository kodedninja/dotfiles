# edit or dir
plug "TeddyDD/kakoune-edit-or-dir" %{
	unalias global e
	alias global e edit-or-dir
}

# system clipboard to kakoune clipboard
plug "lePerdu/kakboard" %{
  hook global WinCreate .* %{ kakboard-enable }
}
