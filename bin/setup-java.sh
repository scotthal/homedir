mkdir -p $HOME/tmp
mkdir -p $HOME/.local/java
curl -L https://corretto.aws/downloads/latest/amazon-corretto-17-x64-linux-jdk.tar.gz | gzip -dc | tar -C $HOME/.local/java -xf -
curl -L https://dlcdn.apache.org/maven/maven-3/3.9.2/binaries/apache-maven-3.9.2-bin.tar.gz | gzip -dc | tar -C $HOME/.local/java -xf -
curl -L https://services.gradle.org/distributions/gradle-8.1.1-bin.zip > $HOME/tmp/gradle-bin.zip
unzip $HOME/tmp/gradle-bin.zip -d $HOME/.local/java
ln -s $HOME/.local/java/amazon-corretto-* $HOME/lang/.local/jdk
ln -s $HOME/.local/java/apache-maven-* $HOME/lang/.local/apache-maven
ln -s $HOME/.local/java/gradle-* $HOME/lang/.local/gradle
rm -f $HOME/tmp/gradle-bin.zip

