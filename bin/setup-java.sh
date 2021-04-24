mkdir -p $HOME/tmp
mkdir -p $HOME/lang/java
curl -L https://corretto.aws/downloads/latest/amazon-corretto-11-x64-linux-jdk.tar.gz | gzip -dc | tar -C $HOME/lang/java -xf -
curl -L https://mirror.cogentco.com/pub/apache/maven/maven-3/3.8.1/binaries/apache-maven-3.8.1-bin.tar.gz | gzip -dc | tar -C $HOME/lang/java -xf -
curl -L https://services.gradle.org/distributions/gradle-7.0-bin.zip > $HOME/tmp/gradle-7.0-bin.zip
unzip $HOME/tmp/gradle-7.0-bin.zip -d $HOME/lang/java
ln -s $HOME/lang/java/amazon-corretto-11.0.11.9.1-linux-x64 $HOME/lang/java/jdk
ln -s $HOME/lang/java/apache-maven-3.8.1 $HOME/lang/java/apache-maven
ln -s $HOME/lang/java/gradle-7.0 $HOME/lang/java/gradle
rm -f $HOME/tmp/gradle-7.0-bin.zip

