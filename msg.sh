# SPDX-FileCopyrightText: 2026 tfoerst3r <32761865+tfoerst3r@users.noreply.github.com>
#
# SPDX-License-Identifier: MIT

function msg {
local scrname=$(basename "$0")
echo "$scrname: $1" >&2
}

