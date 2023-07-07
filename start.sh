if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Johnmclane5/Auto-filter.git /Auto-filterBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-filterBot
fi
cd /Auto-filterBot
pip3 install -U -r requirements.txt
echo "Starting Auto-filter...."
python3 get_config.py && python3 bot.py
