abort() {
  echo -e "\e[31mOmarchy install requires: $1\e[0m"
  echo
  gum confirm "Proceed anyway on your own accord and without assistance?" || exit 1
}

# Must not be running as root
if [ "$EUID" -eq 0 ]; then
  abort "Running as root (not user)"
fi

# Must be x86 only to fully work
if [ "$(uname -m)" != "x86_64" ]; then
  abort "x86_64 CPU"
fi
 

# Cleared all guards
echo "Guards: OK"
