venv
python manage.py test
if [ $? -gt 0 ]
then
    echo "Tests failed, not deploying"
    return
fi
echo "Tests passed"
heroku maintenance:on --remote staging
git push staging master
heroku run python manage.py migrate --remote staging
heroku maintenance:off --remote staging
echo "Deployed!!!"
