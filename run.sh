sudo rm -rf cor
sudo rm -rf mid
mvn clean package --settings settings.xml
hadoop jar target/assignment-2-1.0-SNAPSHOT.jar hk.ust.csit5970.CORStripes -input cor-demo-sample.txt -output cor -numReducers 1
hadoop fs -get mid .
hadoop fs -get cor .