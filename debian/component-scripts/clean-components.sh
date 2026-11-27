#!/bin/sh
if [ -z ${DH_VERBOSE+x} ]; then
    set -e
else
    set -ex
fi

package=$1
shift
package_dir=`pwd`

for component in $@; do
    # mh_* only work from the current directory.
    # in order to give it context copy debian/ into component directory
    # this includes the local maven repo

    debian/component-scripts/setup-component.sh ${package} ${component}

    (cd ${component} && make -f debian/rules clean)

    rm -rf ${component}/debian
done

rm -rf debian/built-components
