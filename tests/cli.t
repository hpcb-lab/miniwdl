#!/bin/bash
# bash-tap tests for the miniwdl command-line interface
set -o pipefail

cd "$(dirname $0)/.."
BASH_TAP_ROOT="tests/bash-tap"
source tests/bash-tap/bash-tap-bootstrap
miniwdl="python3 -m WDL"

plan tests 1

$miniwdl check --path test_corpi/HumanCellAtlas/skylab/library/tasks test_corpi/HumanCellAtlas/skylab/pipelines/optimus/Optimus.wdl
is "$?" "0" "check Optimus.wdl"
