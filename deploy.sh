#!/bin/sh
jekyll b
rsync --archive _site/* o2h@freddie:public_html