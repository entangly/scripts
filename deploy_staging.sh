heroku maintenance:on --remote staging
git push staging master
heroku run python manage.py migrate --remote staging
heroku maintenance:off --remote staging
