# edit or dir
plug "TeddyDD/kakoune-edit-or-dir" %{
  unalias global e
  alias global e edit-or-dir
}

# system clipboard to kakoune clipboard
plug "lePerdu/kakboard" %{
  hook global WinCreate .* %{ kakboard-enable }
}

# snippets
plug "occivink/kakoune-snippets" config %{
  set-option global snippets_auto_expand false
  map global normal '<tab>' ": snippets-expand-or-jump 'tab'<ret>"
  map global insert '<tab>' "z<a-;>: snippets-expand-or-jump 'tab'<ret>"

  hook global InsertCompletionShow .* %{
    try %{
      execute-keys -draft 'h<a-K>\h<ret>'
      map window insert '<ret>' "z<a-;>: snippets-expand-or-jump 'ret'<ret>"
    }
  }

  hook global InsertCompletionHide .* %{
    unmap window insert '<ret>' "z<a-;>: snippets-expand-or-jump 'ret'<ret>"
  }

  # load snippets from snippets file
  source "%val{config}/snippets.kak"

  define-command snippets-expand-or-jump -params 1 %{
    execute-keys <backspace>
    try %{ snippets-expand-trigger %{
      set-register / "%opt{snippets_triggers_regex}\z"
      execute-keys 'hGhs<ret>'
    }} catch %{
      snippets-select-next-placeholders
    } catch %sh{
      printf "%s\n" "execute-keys -with-hooks <$1>"
    } catch %{
      nop
    }
  }
}

# move lines
plug "alexherbo2/move-line.kak" config %{
  map global normal "'" ': move-line-below %val{count}<ret>'
  map global normal "<a-'>" ': move-line-above %val{count}<ret>'
}

plug "andreyorst/smarttab.kak" defer smarttab %{
  # when `backspace' is pressed, 2 spaces are deleted at once
  set-option global softtabstop 2
} config %{
  # these languages will use `expandtab' behavior
  hook global WinSetOption filetype=(rust|markdown|kak|sh|javascript|c|tex|python) expandtab
  # these languages will use `noexpandtab' behavior
  hook global WinSetOption filetype=(makefile|gas|) noexpandtab
  # these languages will use `smarttab' behavior
  hook global WinSetOption filetype=(cpp) smarttab
}

