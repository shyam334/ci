#   Copyright 2014 Commonwealth Bank of Australia
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

#!/bin/bash

set -e
set -v

# Only require that the ARTIFACTORY_PASSWORD is set on master to enable PR.
if [[ $TRAVIS_PULL_REQUEST == "false" && $TRAVIS_BRANCH == "master" ]]; then
    set -u
fi;

#cat > $TRAVIS_BUILD_DIR/ci/ivy.credentials <<EOF
#realm=Artifactory Realm
#host=commbank.artifactoryonline.com
#user=omnia-ci
#password=$ARTIFACTORY_PASSWORD
#EOF
