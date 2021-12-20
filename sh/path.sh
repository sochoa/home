# vim: set ft=bash:
if [ -d /usr/local/sbin ]; then
  export PATH="/usr/local/sbin:${PATH}"
fi

if [ -d "${HOME}/opt/bin" ] ; then
  export PATH="${HOME}/opt/bin:${PATH}"
fi

if [ ! -z "$PYENV_ROOT" ]; then
  export PATH="$PYENV_ROOT/bin:$PATH"
fi

if pyenv prefix &>/dev/null && [ -f "$(pyenv prefix)/bin" ]; then
  export PATH="$(pyenv prefix)/bin"
fi

echo "Adding GNU BIN dirs to the \$PATH"
GNUBINS="$(find /usr/local/opt -type d -follow -name gnubin -print)"
for GNUBIN_DIR in ${GNUBINS[@]}; do
  export PATH="${GNUBIN_DIR}:${PATH}"
done

export PATH="/Users/sochoa/src/k8s/third_party/etcd:${PATH}"
