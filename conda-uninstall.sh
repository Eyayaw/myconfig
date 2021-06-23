conda install anaconda-clean
anaconda-clean --yes
read -p "Are you sure you wanna remove anaconda3? [y/n]: " "ans"

if [[ $ans = "y" ]]; then
  echo True;
  rm -rf ~/opt/anaconda3;
  rm -rf ~/anaconda3;
  rm -rf ~/.anaconda_backup/;
  rm -rf ~/.condarc ~/.conda ~/.continuum ;
else return
fi
