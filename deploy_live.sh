#!/usr/bin/env bash
venv
read -p "Are you sure you wish to deploy to live?!? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Ok..starting!"
else
    echo "Cancelling, nothing has happened"
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
heroku maintenance:on --remote live
if [ $? -gt 0 ]
then
    echo "Can't access heroku, not deploying"
    return
fi
heroku ps:scale worker=0 --remote live
git push live master
heroku run python manage.py migrate --remote live
heroku ps:scale worker=1 --remote live
heroku maintenance:off --remote live
echo "Deployed live!!!"
