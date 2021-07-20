<TeXmacs|2.1>

<style|<tuple|tmdoc|chinese>>

<\body>
  <tmdoc-title|Install Pyenv>

  <paragraph|Two Git Clones>

  Only two git clones are needed to install <shell|pyenv>.

  <\shell-code>
    git clone https://github.com/pyenv/pyenv.git $HOME/.pyenv -b v2.0.3

    git clone https://github.com/pyenv/pyenv-virtualenv.git
    $HOME/.pyenv/plugins/pyenv-virtualenv
  </shell-code>

  For GNU <TeXmacs>, with the above two git clones, the pyenv command and the
  managed virtual Python enviroments will be detected automatically.

  <paragraph|Concise Guide to Config pyenv>

  Just put the following shell code snippets in <shell|$HOME/.zprofile>
  (assuming you are using ZSH).

  It helps you config pyenv for ZSH and has no effects on the pyenv plugin.

  <\shell-code>
    export PYENV_ROOT="$HOME/.pyenv"

    export PATH="$PYENV_ROOT/bin:$PATH"

    \;

    # enable shims

    eval "$(pyenv init --path)"

    \;

    # enable autocompletion and all subcommands

    eval "$(pyenv init -)"

    \;

    # enable auto-activation of virtualenvs

    eval "$(pyenv virtualenv-init -)"
  </shell-code>

  <paragraph|Tips to Install a Python Version>

  Currently, the pyenv plugin only provides the functionality to launch a
  Python session under a specific Python enviroment. Please create virtual
  environments manually via the pyenv command line.

  On GNU Linux, the <shell|pyenv install> way to build Python from scratch
  should work fine will all dependencies installed. On macOS, I suggest that
  you should install a Python version using Conda:

  <\shell-code>
    conda create --prefix=$HOME/.pyenv/versions/3.9.4 python=3.9.4
  </shell-code>

  The above command line install Python 3.9.4 under
  <shell|$HOME/.pyenv/versions/3.9.4>. In this way, it will be regarded as a
  Python version managed by pyenv.

  <tmdoc-copyright|2021|\<#6C88\>\<#8FBE\>>

  <tmdoc-license|Permission is granted to copy, distribute and/or modify this
  document under the terms of the GNU Free Documentation License, Version 1.1
  or any later version published by the Free Software Foundation; with no
  Invariant Sections, with no Front-Cover Texts, and with no Back-Cover
  Texts. A copy of the license is included in the section entitled "GNU Free
  Documentation License".>

  \;

  \;
</body>

<initial|<\collection>
</collection>>