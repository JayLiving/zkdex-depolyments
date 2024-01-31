#!/bin/sh

DIR="$(cd "$(dirname "$0")" > /dev/null 2>&1 && pwd)"
DB_NAME="okdexdtest"
MONGODB_NAME="zkwasm-mongo-merkle"
MONGODB_URL="mongodb://localhost:27017"

program_exist() {
    local ret='0'
    command -v $1 > /dev/null 2>&1 || { local ret='1'; }
    if [ "$ret" -ne 0 ]; then
        return 1
    fi
    return 0
}

check_deps() {
  if ! program_exist 'docker' ; then
    echo "error: Docker maybe not have installed, please install docker first."
    exit 1
  fi

  docker system info > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    echo "error: Docker daemon maybe not running, please run docker(desktop) first."
    exit 1
  fi

}


start_docker() {
  # start postgres docker
  docker-compose --file $DIR/docker/docker-compose.yml up -d
}

run() {
  # exit if any sub command failed
  set -e

  # create postgre database if not exist
  docker exec --tty committee_mongo_test mongosh $MONGODB_NAME --eval "db.MERKLEDATA_0000000000000000000000000000000000000000000000000000000000000000.createIndex({ index: 1, hash: -1 }, { unique: false, name: 'indexHashIndex' })" > /dev/null 2>&1
  docker exec --tty committee_mongo_test mongosh $MONGODB_NAME --eval "db.DATAHASH_0000000000000000000000000000000000000000000000000000000000000000.createIndex({ hash: -1 }, { unique: false, name: 'hashIndex' })" > /dev/null 2>&1

}


check_deps
start_docker
run
