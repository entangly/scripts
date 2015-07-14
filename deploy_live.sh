heroku maintenance:on --remote live
git push live master
heroku run python manage.py migrate --remote live
heroku maintenance:off --remote live
