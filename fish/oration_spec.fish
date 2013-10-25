set -xg RUBY_HEAP_MIN_SLOTS 800000
set -xg RUBY_HEAP_FREE_MIN 100000
set -xg RUBY_HEAP_SLOTS_INCREMENT 300000
set -xg RUBY_HEAP_SLOTS_GROWTH_FACTOR 1
set -xg RUBY_GC_MALLOC_LIMIT 79000000

set -xg PATH $PATH "/Users/hornairs/bin/depot_tools" "/opt/boxen/homebrew/share/npm/bin"

# Virtualenv

set -xg WORKON_HOME "/Users/hornairs/.virtualenvs"

# tun-sc
alias tun-sc "sshuttle -vr importer1 172.16.0.0/16 172.17.0.0/16"
set -xg PIG_OPTS "-Dpig.additional.jars=/opt/boxen/homebrew/Cellar/pig/0.11.1/lipstick-1.0.jar"
set -xg HADOOP_NAMENODE_OPTS "-Dcom.sun.management.jmxremote" $HADOOP_NAMENODE_OPTS
set -xg HADOOP_SECONDARYNAMENODE_OPTS "-Dcom.sun.management.jmxremote" $HADOOP_SECONDARYNAMENODE_OPTS
set -xg HADOOP_DATANODE_OPTS "-Dcom.sun.management.jmxremote" $HADOOP_DATANODE_OPTS
set -xg HADOOP_BALANCER_OPTS "-Dcom.sun.management.jmxremote" $HADOOP_BALANCER_OPTS
set -xg HADOOP_JOBTRACKER_OPTS "-Dcom.sun.management.jmxremote" $HADOOP_JOBTRACKER_OPTS
set -xg HADOOP_IDENT_STRING $USER
set -xg HADOOP_OPTS $HADOOP_OPTS "-Djava.security.krb5.realm=OX.AC.UK" "-Djava.security.krb5.kdc=kdc0.ox.ac.uk:kdc1.ox.ac.uk"

# Make the root of Boxen available.

set -x BOXEN_HOME /opt/boxen

# Add homebrew'd stuff to the path.

set -x PATH $BOXEN_HOME/homebrew/bin $BOXEN_HOME/homebrew/sbin $PATH

# Add homebrew'd stuff to the manpath.

set -x MANPATH $BOXEN_HOME/homebrew/share/man $MANPATH

# Add any binaries specific to Boxen to the path.

set -x PATH $BOXEN_HOME/bin $PATH

# Boxen is active.

set -x BOXEN_SETUP_VERSION (env GIT_DIR=$BOXEN_HOME/repo/.git git rev-parse --short HEAD)
set -x CFLAGS "-I$BOXEN_HOME/homebrew/include"
# Expose basic setup paths. BOXEN_HOME is already exported at the top level.

set -x BOXEN_BIN_DIR /opt/boxen/bin
set -x BOXEN_CONFIG_DIR /opt/boxen/config
set -x BOXEN_DATA_DIR /opt/boxen/data
set -x BOXEN_ENV_DIR /opt/boxen/env.d
set -x BOXEN_LOG_DIR /opt/boxen/log
set -x BOXEN_SOCKET_DIR /opt/boxen/data/project-sockets
set -x BOXEN_SRC_DIR /Users/hornairs/src
set -x BOXEN_ELASTICSEARCH_PORT 19200
set -x BOXEN_ELASTICSEARCH_URL "http://localhost (BOXEN_ELASTICSEARCH_PORT)/"
# Expose GitHub credentials

set -x BOXEN_GITHUB_LOGIN hornairs
set -x HOMEBREW_CACHE $BOXEN_HOME/cache/homebrew

set -x LDFLAGS "-L$BOXEN_HOME/homebrew/lib"
set -x BOXEN_MEMCACHED_PORT 21211
set -x BOXEN_MEMCACHED_URL "memcached://localhost $BOXEN_MEMCACHED_PORT/"
set -x BOXEN_MYSQL_PORT 13306
set -x BOXEN_MYSQL_SOCKET /opt/boxen/data/mysql/socket
set -x BOXEN_MYSQL_URL "mysql://hornairs@localhost:13306/"

set -x RBENV_ROOT $BOXEN_HOME/rbenv

set -x PATH $BOXEN_HOME/rbenv/bin $BOXEN_HOME/rbenv/plugins/ruby-build/bin $PATH

set -x BOXEN_REDIS_PORT 16379
set -x BOXEN_REDIS_URL "redis://localhost $BOXEN_REDIS_PORT/"

set -x PATH /opt/boxen/rbenv/shims /opt/boxen/rbenv/bin $PATH
rbenv rehash 2>/dev/null

. ~/Code/hook/hook.fish
fish_hook_enable autojump brew debugging ln rake rails git

. ~/dotfiles/fish/modules/virtualfish/virtual.fish
. ~/dotfiles/fish/modules/virtualfish/global_requirements.fish
