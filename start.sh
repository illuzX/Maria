if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/illuzX/Maria.git /Maria
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Maria
fi
cd /Maria
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
