curl -O https://packages.confluent.io/archive/7.0/confluent-community-7.0.1.tar.gz
tar -xf confluent-community-7.0.1.tar.gz
cd confluent-7.0.1

./bin/kafka-storage format \
    --config ./etc/kafka/kraft/server.properties \
    --cluster-id $(./bin/kafka-storage random-uuid)

cd ..