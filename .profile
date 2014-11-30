# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# include sbin in PATH
if [ -d "/sbin" ] ; then
    export PATH="/sbin:$PATH"
fi
if [ -d "/usr/sbin" ] ; then
    export PATH="/usr/sbin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# adds for java, ant, maven and tomcat
export JAVA_HOME="$HOME/.local/java/latest"
export ANT_HOME="$HOME/.local/ant/latest"
export M2_HOME="$HOME/.local/maven/latest"
export M2="${M2_HOME}/bin"
#export MAVEN_OPTS="-Xms256m -Xmx512m"
export CATALINA_HOME="$HOME/.local/tomcat/latest"
export CATALINA_BASE="${CATALINA_HOME}"
export CATALINA_PID="${CATALINA_BASE}/tomcat.pid"
export PATH="${JAVA_HOME}/jre/bin:${JAVA_HOME}/bin:${ANT_HOME}/bin:${M2}:${PATH}"
export MOZILLA_HOME="$HOME/.mozilla"
export MOZ_PLUGIN_PATH="$MOZILLA_HOME/plugins"
export XULRUNNER_SDK_HOME="$HOME/.local/xulrunner-sdk"
export XULRUNNER_APPS_HOME="$HOME/.local/xulrunner-apps"
