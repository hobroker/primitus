#!/usr/bin/env bash

mongo -- "$MONGO_INITDB_DATABASE" <<EOF
    var user = '$MONGO_INITDB_ROOT_USERNAME';
    var pwd = '$MONGO_INITDB_ROOT_PASSWORD';
    var dbName = '$MONGO_INITDB_DATABASE';

    db.createUser({
      user: user,
      pwd: pwd,
      roles: [{
        role: "readWrite",
        db: dbName
      }],
    });
EOF
