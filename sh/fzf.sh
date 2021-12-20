# vim: set ft=bash:

PASSWORD_STORE_ROOT="$HOME/.password-store"
GPG_SECRET="${HOME}/.ssh/.key"

select_passwd() {
  find "$PASSWORD_STORE_ROOT" -type f -name '*.gpg' \
    | cut -d/ -f5-                \
    | sed 's/\.gpg$//g'           \
    | sed '/^$/d'                 \
    | sort                        \
    | fzf
}

get_passwd() {
  gpg                                                   \
    --decrypt                                           \
    --pinentry-mode loopback                            \
    --passphrase-file "${GPG_SECRET}"                   \
    --batch "$PASSWORD_STORE_ROOT/${1}.gpg" 2>/dev/null
}

copy_passwd() {
  get_passwd "${1}" | xargs | tr -d '\n' | pbcopy
}

fzf_passwd() {
  test -z "$DEBUG" || set -x
  local _KEY="$(select_passwd)"
  if [[ $? == 0 ]] && [ -f "$PASSWORD_STORE_ROOT/${_KEY}.gpg" ]; then
    copy_passwd "${_KEY}"
  fi
  test -z "$DEBUG" || set +x
}
