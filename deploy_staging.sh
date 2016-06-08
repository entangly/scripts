#!/usr/bin/env bash
venv
python manage.py check
if [ $? -gt 0 ]
then
    echo "Django check failed, not deploying"
    return
fi
python manage.py test
if [ $? -gt 0 ]
then
    echo "Tests failed, not deploying"
    return
fi
echo "Tests passed"
heroku accounts:set mixxta
heroku maintenance:on --remote staging
if [ $? -gt 0 ]
then
    echo "Can't access heroku, not deploying"
    return
fi
heroku ps:scale worker=0 --remote staging
git push staging master
heroku run python manage.py migrate --remote staging
heroku ps:scale worker=1 --remote staging
heroku maintenance:off --remote staging
echo "Deployed!!!"
