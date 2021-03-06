#!/bin/bash
# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#############################################
# Install fixture data into an example case #
#############################################
set -e
BASEDIR=$(dirname "$0")
EXAMPLE=${1}

if [ -z "${EXAMPLE}" ]; then
  echo "Must specify an example to build Packer images for. Aborting."
  exit 1
fi

if [ ! -d "${BASEDIR}/../../../examples/${EXAMPLE}" ]; then
  echo "Example ${EXAMPLE} does not exist. Aborting."
  exit 1
fi

_project_id=$(grep project_id "${BASEDIR}/../../../test/fixtures/shared/terraform.tfvars" | cut -d= -f2 | cut -d\" -f2)

_example_path="${BASEDIR}/../../../examples/${EXAMPLE}"
if [ -d "${_example_path}/packer" ]; then
  cd "${_example_path}" || exit 1
  PACKER_PROJECT_ID=${_project_id} make pack
  cd - || exit 1
fi
