mkdir -p $HOME/tmp
mkdir -p $HOME/lang/java
curl -L https://corretto.aws/downloads/latest/amazon-corretto-17-x64-linux-jdk.tar.gz | gzip -dc | tar -C $HOME/lang/java -xf -
curl -L https://dlcdn.apache.org/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.tar.gz | gzip -dc | tar -C $HOME/lang/java -xf -
curl -L https://services.gradle.org/distributions/gradle-7.4.1-bin.zip > $HOME/tmp/gradle-bin.zip
unzip $HOME/tmp/gradle-bin.zip -d $HOME/lang/java
ln -s $HOME/lang/java/amazon-corretto-* $HOME/lang/java/jdk
ln -s $HOME/lang/java/apache-maven-* $HOME/lang/java/apache-maven
ln -s $HOME/lang/java/gradle-* $HOME/lang/java/gradle
rm -f $HOME/tmp/gradle-bin.zip

