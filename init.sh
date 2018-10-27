#sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
#sudo /etc/init.d/nginx restart
# sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
# sudo /etc/init.d/nginx restart
# sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
# sudo /etc/init.d/gunicorn restart
# sudo /etc/init.d/mysql start
echo 'Creating directories'

mkdir -p box/web

cd web && mkdir -p uploads public etc

cd public && mkdir -p js css img && cd ..

echo 'Create config files for nginx and unicorn'

cp /home/stepic/nginx.conf etc/nginx.conf && touch etc/gunicorn.conf

echo 'Create links, remove default config from /etc/nginx/sites-enabled/default'

sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf

sudo rm /etc/nginx/sites-enabled/default 2> /dev/null

sudo /etc/init.d/nginx restart

#sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test

#sudo /etc/init.d/gunicorn restart

#sudo /etc/init.d/mysql start

echo 'Done'

exit
