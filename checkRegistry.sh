# Check Size of Registry
du -sh /opt/registry/data/docker/registry/v2

# Clean Registry Commands
ls -l /opt/registry/data/docker/registry/v2/*
rm -rf /opt/registry/data/docker/registry/v2/*
ls -l /opt/registry/data/docker/registry/v2/*

# List Repos
curl -u 'dummy:dummy' -k https://registry.ocp15.example.com:5000/v2/_catalog | jq
curl -u dummy:dummy -k https://registry.ocp15.example.com:5000/v2/openshift4/tags/list

