#
# Gradle
#
# Gradle is an open-source build automation tool focused on flexibility and performance.
# Link: https://gradle.org/

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_GRADLE_SHOW="${SPACESHIP_GRADLE_SHOW=true}"
SPACESHIP_GRADLE_ASYNC="${SPACESHIP_GRADLE_ASYNC=true}"
SPACESHIP_GRADLE_PREFIX="${SPACESHIP_GRADLE_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_GRADLE_SUFFIX="${SPACESHIP_GRADLE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_GRADLE_SYMBOL="${SPACESHIP_GRADLE_SYMBOL="⬡ "}"
SPACESHIP_GRADLE_DEFAULT_VERSION="${SPACESHIP_GRADLE_DEFAULT_VERSION=""}"
SPACESHIP_GRADLE_COLOR="${SPACESHIP_GRADLE_COLOR="green"}"

# ------------------------------------------------------------------------------
# Utils
# ------------------------------------------------------------------------------

spaceship::gradle::find_root_project() {
  local root="$1"

  while [ "$root" ] && \
        [ ! -f "$root/settings.gradle" ] && \
        [ ! -f "$root/settings.gradle.kts" ]; do
    root="${root%/*}"
  done

  print "$root"
}

spaceship::gradle::version() {
  local gradle_exe="$1" gradle_version_output gradle_version

  gradle_version_output=$("$gradle_exe" --version)
  gradle_version=$(echo "$gradle_version_output" | awk '{ if ($1 ~ /^Gradle/) { print "v" $2 } }')

  print "$gradle_version"
}

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show current version of gradle.
spaceship_gradle() {
  [[ $SPACESHIP_GRADLE_SHOW == false ]] && return

  local gradle_root_dir

  gradle_root_dir=$(spaceship::gradle::find_root_project "$(pwd -P)")

  # Show Gradle status only for applicable folders
  [[ -n "$gradle_root_dir" ]] &>/dev/null || return

  local gradle_version

  if [[ -f "$gradle_root_dir/gradlew" ]]; then
    gradle_version=$(spaceship::gradle::versions "$gradle_root_dir/gradlew")
  elif spaceship::exists gradle; then
    gradle_version=$(spaceship::gradle::versions gradle)
  else
    return
  fi

  [[ "$gradle_version" == "$SPACESHIP_GRADLE_DEFAULT_VERSION" ]] && return

  spaceship::section \
    "$SPACESHIP_GRADLE_COLOR" \
    "$SPACESHIP_GRADLE_PREFIX" \
    "$SPACESHIP_GRADLE_SYMBOL$gradle_version" \
    "$SPACESHIP_GRADLE_SUFFIX"
}
