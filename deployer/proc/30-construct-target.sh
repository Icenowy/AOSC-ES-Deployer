TARGET="$CONFIG_PATH_TARGET"
TEMPLATE="$CONFIG_PATH_TEMPLATE"

echo "Constructing the base structure of target using template"

sudo mkdir -p $TARGET
sudo cp -ra $CPFLAGS $TEMPLATE/* $TARGET/
