#sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
#sudo /etc/init.d/nginx restart
# sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
# sudo /etc/init.d/nginx restart
# sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
# sudo /etc/init.d/gunicorn restart
# sudo /etc/init.d/mysql start
echo 'Creating directories'

mkdir -p /home/box/web/uploads
mkdir -p /home/box/web/etc
mkdir -p /home/box/web/public/js
mkdir -p /home/box/web/public/css
mkdir -p /home/box/web/public/img

echo 'Create config files for nginx and unicorn'

# cp /~/stepic/nginx.conf etc/nginx.conf && touch etc/gunicorn.conf

echo 'Create links, remove default config from /etc/nginx/sites-enabled/default'

sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf

sudo rm /etc/nginx/sites-enabled/default 2> /dev/null

sudo /etc/init.d/nginx restart

#sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test

#sudo /etc/init.d/gunicorn restart

#sudo /etc/init.d/mysql start

echo 'Done'

exit
