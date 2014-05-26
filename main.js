#!/usr/bin/env node
require("child_process").spawn(__dirname + "/init.sh", [], {stdio : "inherit"});
