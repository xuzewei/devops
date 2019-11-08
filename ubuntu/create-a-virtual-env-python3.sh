# your begin
sudo apt update
sudo apt install virtualenv
cd
mkdir python3-environments
cd python3-environments

# create a vurtual env in python3
virtualenv -p python3 env
ls env/lib

# active env
source ~/python3-environments/env/bin/activate

#deactivate
