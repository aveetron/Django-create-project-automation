#! /bin/bash
#personal automation
#author : Avee Chakraborty,software engineer, dekko isho group

#getting project name
read -p "enter project name: " project_name_var
#echo $project_name_var
cd 
cd Documents
mkdir $project_name_var
cd $project_name_var
#install leatest version of django 
pip3 install django
read -p "django main app name: " django_main_app_name
django-admin startproject $django_main_app_name .
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver
