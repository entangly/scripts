venv
python manage.py test
if [ $? -gt 0 ]
then
    echo "Tests failed, not deploying"
    return
fi
echo "Tests passed"
heroku maintenance:on --remote live
heroku ps:scale worker=0
git push live master
heroku run python manage.py migrate --remote live
heroku ps:scale worker=1
heroku maintenance:off --remote live
echo "Deployed!!!"
