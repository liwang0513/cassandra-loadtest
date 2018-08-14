cqlsh 192.168.99.100 31735 -e "DROP TABLE titanic.survivors"
cqlsh 192.168.99.100 31735 -e "DROP KEYSPACE titanic"
cqlsh 192.168.99.100 31735 -f cassandra-schema.cql
./cassandra-loader -f titanic.csv -host 192.168.99.100 -port 31735 -schema "titanic.survivors(id, survived, passenger_class, name, sex, age, num_siblings_spouse, num_parents_children, ticket_id, fare, cabin, port_of_embarkation)" -boolStyle 1_0
