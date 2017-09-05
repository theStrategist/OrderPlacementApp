#!/bin/sh
echo "Installing Heroku toolbelt"
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
#heroku plugins:install heroku-container-registry
#docker login -e _ -u _ --password=$HEROKU_API_KEY registry.heroku.com
#heroku container:push web --app $HEROKU_APP_NAME

echo "Setting up Heroku Git repo to: $HEROKU_APP_NAME"
heroku git:remote -a $HEROKU_APP_NAME

echo "Deploying application to Heroku..."
#git add .
git commit -m "Deploying Flask App to Heroku"
git push heroku master --force