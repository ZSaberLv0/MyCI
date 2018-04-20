WORK_DIR=$(cd "$(dirname "$0")"; pwd)

if test "x-$MYCI_KEY" = "x-" ; then
    echo "MYCI_KEY not set"
    exit 1
fi

_OLD_DIR=$(pwd)
rm -rf dotfiles
# git clone https://github.com/JDevlieghere/dotfiles
git clone https://github.com/ZSaberLv0/dotfiles

rm -rf ycm_conf_default
git clone https://github.com/ZSaberLv0/ycm_conf_default
cd ycm_conf_default
git config user.email "z@zsaber.com"
git config user.name "ZSaberLv0"
git config push.default "simple"

cp ../dotfiles/.vim/.ycm_extra_conf.py ./ycm_extra_conf.py
git add -A
git commit -m "auto sync"
git push "https://ZSaberLv0:$MYCI_KEY@github.com/ZSaberLv0/ycm_conf_default"
cd "$_OLD_DIR"

