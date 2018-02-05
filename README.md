===================

Docker image with mongo, create user with role based on passed env

### BUILD IMAGE

docker build -t mongo-create-user:1.0 .


### RUN IMAGE

docker run -d --network="network" --name mongo-create-user -e MONGO_HOST="127.0.0.1" -e MONGO_PORT="27017" -e MONGO_AUTH_DB="admin" -e MONGO_USER_ADMIN="johndoe" -e MONGO_PASS_ADMIN="secret" -e MONGO_DB="test" -e MONGO_USERNAME="test_user" -e MONGO_PWD="test_password" -e MONGO_ROLE="readWrite" mongo-create-user:1.0

// remove container after user creation done

docker run --rm -d --network="network" --name mongo-create-user -e MONGO_HOST="127.0.0.1" -e MONGO_PORT="27017" -e MONGO_AUTH_DB="admin" -e MONGO_USER_ADMIN="johndoe" -e MONGO_PASS_ADMIN="secret" -e MONGO_DB="test" -e MONGO_USERNAME="test_user" -e MONGO_PWD="test_password" -e MONGO_ROLE="readWrite" mongo-create-user:1.0