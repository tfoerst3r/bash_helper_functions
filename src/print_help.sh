# SPDX-FileCopyrightText: 2026 tfoerst3r <32761865+tfoerst3r@users.noreply.github.com>
#
# SPDX-License-Identifier: MIT

## [@bashly-upgrade github:tfoerst3r/bash_helper_functions;create_code_base]

function printhelp {
cat <<-EOM

Generates a quarto presentation.

REQUIREMENTS:
  - quarto

USAGE: 
  project [OPTION] 

EXAMPLES:
  project pres
  project pres --help

OPTIONS:
 -h   --help     print help message and exit
      --solo     only the presentation structure
   
DESCRIPTION: 
  ... 
EOM
}

