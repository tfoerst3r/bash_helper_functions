# SPDX-FileCopyrightText: 2026 tfoerst3r <32761865+tfoerst3r@users.noreply.github.com>
#
# SPDX-License-Identifier: MIT

## [@bashly-upgrade github:tfoerst3r/bash_helper_functions;create_code_base]

function argparser {
while [ -n "$1" ]; do
  case $1 in
    -h        | --help  ) printhelp && exit 0 ;;
                --solo  ) solo=true; shift ;;
    -*                  ) msg "unknown option (ignored): $1" && exit 1 ;;
    --                  ) shift; break ;;
    *                   ) break ;;
  esac
done
}

