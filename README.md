# IoT-42

## Install Vagrant
```
mkdir -p ~/sgoinfre/vagrant ~/sgoinfre/.vagrant.d
cd ~/sgoinfre/vagrant
wget https://releases.hashicorp.com/vagrant/2.4.5/vagrant_2.4.5_linux_amd64.zip
unzip vagrant_2.4.5_linux_amd64.zip
rm vagrant_2.4.5_linux_amd64.zip
echo 'export PATH="$HOME/sgoinfre/vagrant:$PATH"' >> ~/.bashrc
echo 'export VAGRANT_HOME="$HOME/sgoinfre/.vagrant.d"' >> ~/.bashrc
source ~/.bashrc
vagrant --version
```

## Part 1
```
vagrant up
vagrant status
vagrant reload --provision
vagrant destroy -f
vagrant ssh wilS
vagrant ssh wilSW
```

## Network Interface
### On macOS
```
ifconfig eth1
```
### On Linux
```
ip a show eth1
```

## Part 2
```
k get nodes -o wide
k get all
```

## Part 3
```
k get ns
k get pods -n dev
cat deployment.yaml | grep v1
curl http://localhost:8888/
sed -i 's/wil42\/playground\:v1/wil42\/playground\:v2/g' deployment.yaml
cat deployment.yaml | grep v2
curl http://localhost:8888/
```

### Bonus
```
find -maxdepth 2 -ls
```