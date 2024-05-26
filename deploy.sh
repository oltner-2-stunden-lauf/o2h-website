#!/bin/sh
jekyll b
rsync --archive _site/* o2h@web-volki-01-adm:public_html