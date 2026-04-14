# SPDX-FileCopyrightText: 2026 tfoerst3r <32761865+tfoerst3r@users.noreply.github.com>
#
# SPDX-License-Identifier: MIT

<!--
SPDX-FileCopyrightText: 2026 tfoerst3r <32761865+tfoerst3r@users.noreply.github.com>

SPDX-License-Identifier: MIT
-->

# usage: printhelp
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

