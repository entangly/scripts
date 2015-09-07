#!/usr/bin/env bash
venv
heroku maintenance:on
git push heroku master
heroku run python manage.py migrate
heroku maintenance:off
echo "Deployed!!!"
