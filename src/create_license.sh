
#===============#
#== FUNCTIONS ==#
#===============#
function find_files_for_lic {

FILETYPE="$1"
LICENSE="$2"
STYLE="$3"

if [[ -z "$STYLE" ]]; then

find . \
  -path "./.venv" -prune \
  -o -name "*.$FILETYPE" \
  -exec reuse annotate \
    --copyright "$LIC_HOLDER <$LIC_EMAIL>" \
    --license "$LICENSE" \
    {} +

else

find . \
  -path "./.venv" -prune \
  -o -name "*.$FILETYPE" \
  -exec reuse annotate \
    --copyright "$LIC_HOLDER <$LIC_EMAIL>" \
    --license "$LICENSE" \
    --style "$STYLE" \
    {} +

fi
}

#================#

function create_license { (

#==========#
#== INIT ==#
#==========#

#================#
#== USER INPUT ==#
#================#
PROJECT_NAME="$1"
LIC_HOLDER="$2"
LIC_EMAIL="$3"

license_file="## License

This work is licensed under multiple licenses:
- The data sets are licensed under [CC0-1.0](LICENSES/CC0-1.0.txt).
- The source code and the accompanying material are licensed under [MIT](LICENSES/MIT.txt).
- The documentation are licensed under [CC-BY-4.0](LICENSES/CC-BY-4.0.txt).
- Insignificant files are licensed under [CC0-1.0](LICENSES/CC0-1.0.txt).

Please see the individual files for more accurate information.

> **Hint:** We provided the copyright and license information in accordance to the [REUSE Specification 3.3](https://reuse.software/spec/).
"

#---------------#

function main {
  
  cd "$PROJECT_NAME"
  reuse download MIT CC-BY-4.0 CC0-1.0
  echo "$license_file" > LICENSE.md
  reuse annotate --copyright "$LIC_HOLDER <$LIC_EMAIL>" --license CC-BY-4.0 README.md
  reuse annotate --copyright "$LIC_HOLDER <$LIC_EMAIL>" --license CC0-1.0 LICENSE.md
  find_files_for_lic py MIT
  find_files_for_lic toml CC0-1.0
  find_files_for_lic lock CC0-1.0
  find_files_for_lic gitignore CC0-1.0 python

}

#==========#
#== MAIN ==#
#==========#
main

) }

if [[ "${BASH_SOURCE[0]}" == "${0}" ]] && ! declare -f initialize >/dev/null && ! declare -f run >/dev/null; then
    find_files_for_lic "$@"
fi

