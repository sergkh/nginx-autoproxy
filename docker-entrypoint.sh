#!/bin/sh
nohup sh -c "confd -backend ${STORAGE_BACKEND:-etcd}ś -node ${STORAGE_NODE:-"http://etcd:2379"}" &
nginx -g "daemon off;"