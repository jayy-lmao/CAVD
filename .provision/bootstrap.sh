#!/usr/bin/env bash

spinner()
{
    local pid=$!
    local delay=0.75
    local spinstr='|/-\'
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b"
}


echo "Setting up base dependencies (nodejs, zsh, git)"
{
sudo apt-get -y install nodejs zsh git
} &> .log & spinner

echo "Installing Ruby on Rails Development environment"
{
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --ruby
gem install rails
} &> .log & spinner

echo "Installing postgresql"
{
sudo apt-get -y install postgresql postgresql-contrib libpq-dev
gem install postgres
} &> .log & spinner

echo "Installing Oh My Zsh"
{
echo 'vagrant' | sudo -u vagrant "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i 's/robbyrussel/dpoggi/'
} &> .log & spinner

echo -e "\e[32mDone"

