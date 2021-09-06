mkdir -p $HOME/tmp
mkdir -p $HOME/lang/java
curl -L https://corretto.aws/downloads/latest/amazon-corretto-11-x64-linux-jdk.tar.gz | gzip -dc | tar -C $HOME/lang/java -xf -
curl -L https://mirror.cogentco.com/pub/apache/maven/maven-3/3.8.2/binaries/apache-maven-3.8.2-bin.tar.gz | gzip -dc | tar -C $HOME/lang/java -xf -
curl -L https://services.gradle.org/distributions/gradle-7.2-bin.zip > $HOME/tmp/gradle-bin.zip
unzip $HOME/tmp/gradle-bin.zip -d $HOME/lang/java
ln -s $HOME/lang/java/amazon-corretto-* $HOME/lang/java/jdk
ln -s $HOME/lang/java/apache-maven-* $HOME/lang/java/apache-maven
ln -s $HOME/lang/java/gradle-* $HOME/lang/java/gradle
rm -f $HOME/tmp/gradle-bin.zip

