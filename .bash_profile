# bash shell path

export PATH=/usr/local/bin:/usr/bin:/bin:

 

# add Git  (put at end of path or it will cause stdio error - conflict w/ mingw)

# export PATH=$PATH:/c/bin/portable-git/bin

export PATH=$PATH:/c/Progra~1/Git/mingw64/bin

 

 

# add Windows standard paths

export PATH=$PATH:/c/windows/system32:/c/windows

 

 

# Java 7 SUN (w/ JCE unlimited)  (works w/ Weblogic Deployer)

# export JAVA_HOME='/C/bin/jdk1.7.0_55'   

 

# Java 8

# export JAVA_HOME='/C/Program Files/Java/jre1.8.0_141'   -- jre

export JAVA_HOME='/C/Program Files (x86)/Java/jre1.8.0_221'

export PATH=$JAVA_HOME/bin:$PATH   

 

# ANT

# export PATH=/c/eclipse/eclipse4.3/plugins/org.apache.ant_1.8.4.v201303080030/bin:$PATH

# export ANT_HOME=/c/eclipse/eclipse4.3/plugins/org.apache.ant_1.8.4.v201303080030

 

# Maven

# export PATH=$PATH:/c/bin/apache-maven-3.5.2/bin

# export MAVEN_OPTS="-Djavax.net.ssl.trustStore=/c/users/bbcip6g/.m2/nexus_maven.jks -Xmx1500m -Xms1500m -XX:MaxPermSize=1024m"

# export MAVEN_OPTS="$MAVEN_OPTS -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true -Dmaven.wagon.http.ssl.ignore.validity.dates=true"

 

# clear Java options set by windows

export _JAVA_OPTIONS=

export JAVA_TOOL_OPTIONS=

 

# clear the Java classpath (the default classpath has old jars in it)

export CLASSPATH=

 

# add JRUBY

# export JRUBY_HOME=/c/bin/jruby-9.1.10.0

# export PATH=$JRUBY_HOME/bin:$PATH

 

# Native RUBY

# export RUBY_HOME=/c/bin/ruby-2.2.4-i386-mingw32

# export PATH=$RUBY_HOME/bin:$PATH

 

 

# add /bin so we can use uru and  other stuff we put in our windows c:\bin

export PATH=/c/bin:$PATH

 

 

 

echo "setting path:"$PATH

 

# set proxy

export HTTP_PROXY=http://firewall:80

 

# no proxy for localhost (need for docker-compose)

export no_proxy=.cbp.dhs.gov,127.0.0.1

 

 

# define URU command

uru()

{

  export URU_INVOKER='bash'

 

  # uru_rt must already be on PATH

  uru_rt "$@"

 

  if [[ -d "$URU_HOME" ]]; then

    if [[ -f "$URU_HOME/uru_lackee" ]]; then

      . "$URU_HOME/uru_lackee"

    fi

  else

    if [[ -f "$HOME/.uru/uru_lackee" ]]; then

      . "$HOME/.uru/uru_lackee"

    fi

  fi

}