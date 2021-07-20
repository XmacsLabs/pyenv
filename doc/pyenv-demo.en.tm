<TeXmacs|2.1>

<style|<tuple|tmdoc|chinese|python>>

<\body>
  <tmdoc-title|Example Usages>

  Assuming Python 3.9.4 is already available and managed by pyenv:

  <\session|shell|default>
    <\input|Shell] >
      alias pyenv=$HOME/.pyenv/bin/pyenv
    </input>

    <\unfolded-io|Shell] >
      pyenv versions
    <|unfolded-io>
      * system (set by /Users/rendong/.pyenv/version)

      \ \ 3.9.4
    </unfolded-io>

    <\input|Shell] >
      \;
    </input>
  </session>

  We can create a virtual Python environment based on Python 3.9.4:

  <\session|shell|default>
    <\unfolded-io|Shell] >
      pyenv virtualenv 3.9.4 demo
    <|unfolded-io>
      Looking in links: /var/folders/7y/jhk0_y1j4q1dcwblzhsn12hc0000gn/T/tmpd12hhn20

      Requirement already satisfied: setuptools in
      $HOME/.pyenv/versions/3.9.4/envs/demo/lib/python3.9/site-packages
      (49.2.1)

      Requirement already satisfied: pip in
      $HOME/.pyenv/versions/3.9.4/envs/demo/lib/python3.9/site-packages
      (20.2.3)
    </unfolded-io>

    <\unfolded-io|Shell] >
      pyenv virtualenvs
    <|unfolded-io>
      \ \ 3.9.4 (created from $HOME/.pyenv)

      \ \ 3.9.4/envs/demo (created from $HOME/.pyenv/versions/3.9.4)

      \ \ demo (created from $HOME/.pyenv/versions/3.9.4)
    </unfolded-io>

    <\input|Shell] >
      \;
    </input>
  </session>

  And now you can launch the Python session under the demo virtual
  environment:

  <\session|python|3.9.4/envs/demo>
    <\output>
      Python 3.9.4 [$HOME/.pyenv/versions/3.9.4/envs/demo/bin/python]\ 

      Python plugin for TeXmacs.

      Please see the documentation in Help -\<gtr\> Plugins -\<gtr\> Python
    </output>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  Note that the real path to the Python binary is printed at the first line
  of the welcome message.

  \;
</body>

<initial|<\collection>
</collection>>