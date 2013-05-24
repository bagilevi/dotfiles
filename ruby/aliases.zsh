alias r='rbenv local 1.8.7-p358'

alias sc='RUNMODE=console rails console'
alias scd='RUNMODE=console LOG_LEVEL=debug rails console'
alias sci='RUNMODE=console LOG_LEVEL=info rails console'
alias sg='script/generate'
alias sd='script/destroy'

alias ss='RUNMODE=server rails server'
alias ssmm='RUNMODE=server rails server -p 5000'

alias migrate='rake db:migrate db:test:clone'


alias be="bundle exec"
alias cuke="bundle exec cucumber --require features"
alias rk="RUNMODE=rake bundle exec rake"
alias rb="bundle exec ruby"


alias gemi="gem install --no-ri --no-rdoc"

alias sp="RUNMODE=spec LOG_LEVEL=warn rspec"
alias spi="RUNMODE=spec LOG_LEVEL=info rspec"
alias spd="RUNMODE=spec LOG_LEVEL=debug rspec"
alias spa="RUNMODE=spec LOG_LEVEL=warn rspec spec"

alias warn="LOG_LEVEL=warn"
alias logi="LOG_LEVEL=info"
alias logd="LOG_LEVEL=debug"

alias sc="RUNMODE=spec LOG_LEVEL=warn rspec spec"

alias z="zeus"
