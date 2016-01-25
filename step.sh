#!/bin/bash

THIS_SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

set -e

ruby "${THIS_SCRIPTDIR}/step.rb" \
	-s "${xamarin_project}" \
	-c "${xamarin_configuration}" \
	-p "${xamarin_platform}" \
	-t "${test_to_run}" \
	-e "${emulator_serial}" \
	-d "${simulator_device}" \
	-o "${simulator_os_version}"
