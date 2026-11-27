#!/bin/sh

package=$1
component=$2

mkdir -p ${component}/debian/
cp debian/control ${component}/debian
cp debian/changelog ${component}/debian
cp debian/compat ${component}/debian
cp debian/maven.properties ${component}/debian
cp debian/${component}/poms ${component}/debian/${package}.poms
cp debian/${component}/maven.rules ${component}/debian/
cp debian/${component}/maven.ignoreRules ${component}/debian/
cp debian/${component}/rules ${component}/debian/
