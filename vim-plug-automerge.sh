WORK_DIR=$(cd "$(dirname "$0")"; pwd)

if test "x-$ZFDOC_KEY" = "x-" ; then
    echo "ZFDOC_KEY not set"
    exit 1
fi

_OLD_DIR=$(pwd)
git clone https://github.com/ZSaberLv0/vim-plug
cd vim-plug
git config user.email "z@zsaber.com"
git config user.name "ZSaberLv0"
git config push.default "simple"

git remote add upstream https://github.com/junegunn/vim-plug
git fetch upstream
git merge upstream/master --no-edit
git push "https://ZSaberLv0:$ZFDOC_KEY@github.com/ZSaberLv0/vim-plug"
cd "$_OLD_DIR"

