# Postgres SQL start/stop for OS X homebrew
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
# Mongodb start/stop for homebrow
alias mongo_start='sudo mongod run --config /usr/local/Cellar/mongodb/1.6.3-x86_64/mongod.conf'

export PATH="/usr/local/share/python":$PATH
