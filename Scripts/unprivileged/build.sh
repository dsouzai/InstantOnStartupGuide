#!/bin/sh

###############################################################################
# Copyright 2022, IBM Corp.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###############################################################################

podman build -f Containerfiles/Containerfile.ubuntu20.unprivileged -t instantondemo:ub20 .
podman build -f Containerfiles/Containerfile.checkpoint -t instantoncheckpoint:ub20 .
podman run --name checkpointrun --privileged -it instantoncheckpoint:ub20
podman wait checkpointrun
podman commit checkpointrun restorerun
podman rm checkpointrun
