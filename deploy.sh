#!/bin/sh
jekyll b
rsync --archive _site/* o2h@freddielx:public_html