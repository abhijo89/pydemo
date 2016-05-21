#!/usr/bin/env bash

sudo apt-get update -y
sudo apt-get install python-pip python-dev nginx -y
# PIP has not -y option :(
yes w | sudo pip install gunicorn flask

sudo ln -s /home/codaxtr_user/pydemo/appserver.conf /etc/init/appserver.conf
sudo start appserver