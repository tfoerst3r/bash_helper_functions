
function create_python_layout { (

#==========#
#== INIT ==#
#==========#

#================#
#== USER INPUT ==#
#================#

PROJECT_NAME="$1"
PACKAGE_NAME="$2"

#===============#
#== FUNCTIONS ==#
#===============#

#---------------#

function main {

  poetry new "$PROJECT_NAME" --name "$PACKAGE_NAME"
  cd "$PROJECT_NAME"
  poetry config virtualenvs.in-project true --local
  poetry add ruff pytest --group dev
  cd ..

}

#==========#
#== MAIN ==#
#==========#
main

) }
