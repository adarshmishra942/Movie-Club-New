if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone /Movie-Club-New /Movie-Club-New
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Movie-Club-New
fi
cd /Movie-Club-New
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
