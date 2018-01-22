#~/bin/bash
dcos marathon app remove universe
dcos package repo remove dev-universe

cp repo/packages/W/wildfly/0/* repo/packages/W/wildfly/1/
cp repo/packages/W/wildfly/0/* repo/packages/W/wildfly/2/
cp repo/packages/W/wildfly/0/* repo/packages/W/wildfly/3/

./scripts/build.sh
DOCKER_TAG="wildfly-package" docker/server/build.bash
docker tag mesosphere/universe-server:wildfly-package digitalemil/mypublicrepo:wildfly-package
docker push digitalemil/mypublicrepo:wildfly-package

dcos marathon app add docker/server/marathon.json
dcos package repo add --index=0 dev-universe http://universe.marathon.mesos:8085/repo

