hostnamectl set-hostname master.Dabloo
bash
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
# Add the repository to Apt sources:
echo   "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
systemctl enable --now docker
systemctl status docker
vim /etc/containerd/config.toml
systemctl restart containerd
systemctl status containerd
clear
kubectl get pods
kubectl get nodes
kubectl run mywebsite --image nginx
kubectl get pods
kubectl get pods -o wide
kubectl run dabloo --image nginx
kubectl get pods
kubectl get pods -o wide
kubectl get nodes
kubectl describe node worker1.Dabloo
kubectl describe node worker1.dabloo 
clear
kubectl get pods
kubectl run aary --image httpd
kubectl get pods
kubectl get pods -o wide
kubectl delete pods aary
kubectl get pod
kubectl exec dabloo -it --bash
kubectl exec dabloo -it -- bash
kubectl get pod
touch aary
ls
kubectl cp ./aary dabloo /
kubectl cp ./aary dabloo/
kubectl cp ./aary dabloo:/
kubectl exec dabloo -- ls /
clear
vim pod.yaml
kubectl create -f pod.yaml
vim pod.yaml
kubectl create -f pod.yaml
vim pod.yaml
kubectl create -f pod.yaml
vim pod.yaml
kubectl create -f pod.yaml
vim pod.yaml
kubectl create -f pod.yaml
vim pod.yaml
kubectl create -f pod.yaml
clear
vim pod.yaml
kubectl create -f pod.yaml
vim pod.yaml
kubectl create -f pod.yaml
kubectl get pod
kubectl get pod -o wide
vim pod.yaml
kubectl create -f pod.yaml
kubectl get pods
kubectl get pods -o wide
kubectl delete pod nginx
kubectl get pod
kubectl describe pods my-pod | grep -l container
kubectl describe pods my-pod | grep -i container
curl -fsSLo /etc/apt/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo        tee /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubelet kubeadm kubectl
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
vim .bashrc
kubectl get nodes
vim .bashrc
vim join
vim .bashrc
export KUBECONFIG=/etc/kubernetes/admin.conf
vim join
kubeadm init
clear
kubectl get nodes
ls
curl https://raw.githubusercontent.com/projectcalico/calico/v3.25.1/manifests/calico.yaml -O
ls
kubectl apply -f calico.yaml 
kubectl completion bash | sudo tee /etc/bash_completion.d/kubectl > /dev/null
bash
ls
clear
vim pod.yaml
kubectl create -f pod.yaml
kubectl delete pod my-pod
kubectl create -f pod.yaml
kubectl get pods
kubectl get pods --show-labels
kubectl get pods -l app=webserver
kubectl run amit --image nginx
kubectl run rohit --image nginx
kubectl run idrees --image httpd
kubectl get pod
kubectl edit pods idress
kubectl edit pods idrees
clear
kubectl label pods idrees work=teach
kubectl get pods --show-labels
kubectl run ashish --image nginx -l name=tiwari
kubectl get pod --show-labels
vim rc.yaml
kubectl create -f rc.yaml
vim rc.yaml
kubectl create -f rc.yaml
vim rc.yaml
kubectl create -f rc.yaml
vim rc.yaml
kubectl create -f rc.yaml
clear
kubectl get rc
kubectl get pods
kubectl get rc myapp
vim rc.yaml
kubectl create -f rc.yaml
kubectl delete -f rc.yaml
kubectl create -f rc.yaml
vim rc.yaml
kubectl create -f rc.yaml
kubectl get rc
kubectl get pod
vim rc.yaml
kubectl delete pod myapp-4kcbf 
kubectl get pod
kubectl scale rc myapp --replicas 20
kubectl get pod
kubectl delete rc myapp
kubectl get pod
clear
cp -rvf rc.yaml rs.yaml
ls
vim rs.yaml
kubectl get rc
kubectl create -f rs.yaml
kubectl get rs
kubectl get pod
kubectl get pod --show-labels
kubectl get pod -l app=nginx
kubectl get pod -l love=coffee
clear
vim deploy.yaml
kubectl create deploy.yaml
kubectl create -f deploy.yaml
vim deploy.yaml
kubectl create -f deploy.yaml
vim deploy.yaml
kubectl create -f deploy.yaml
vim deploy.yaml
kubectl create -f deploy.yaml
vim deploy.yaml
kubectl create -f deploy.yaml
kubectl get deployment
kubectl get rs
kubectl get pods
vim deploy.yaml
clear
kubectl set image deployment mydeployment raj=nginx:alpine
kubectl rollout status deployment mydeployment
kubectl get rs
kubectl delete mydeployment-994dc9656 
kubectl delete rs mydeployment-994dc9656 
kubectl get rs
kubectl get pod
kubectl get deployment
kubectl rollout history deployment  my deployment
kubectl rollout history deployment  mydeployment
vim deploy.yaml
kubectl apply -f deploy.yaml
kubectl rollout history deployment  mydeployment
kubectl rollout undo deployment mydeployment --to-revision 2
kubectl rollout history deployment  mydeployment
kubectl rollout status deployment  mydeployment
kubectl get deployment.apps
kubectl describe  deployment.apps mydeployment
clear
vim service.yaml 
kubectl get pod
kubectl delete myrs
ls
kubectl delete rs.yaml
kubectl delete rs myrs
kubectl get pod
kubectl delete deployment  mydeployment
kubectl get pod
kubectl delete pod amit ashish 
kubectl get pod
kubectl delete dabloo idrees myweb mywebsite
kubectl delete pod dabloo idrees myweb mywebsite
kubectl get pod
kubectl delete pod rohit
ls
ls
vim service.yaml
kubect create -f service.yaml
kubectl create -f service.yaml
vim service.yaml
kubectl get pod
ls
kubectl apply -f deploy.yaml
kubectl get pod
kubectl get pod --show-labels
vim service.yaml
kubectl create -f service.yaml
kubectl get svc
kubectl get pod -o wide
vim deploy.yaml
kubectl apply -f deploy.yaml
ls
cp deploy.yaml newdp.yaml
ls
vim newdp.yaml
vim service.yaml
vim newdp.yaml
kubectl create -f newdp.yaml
vim newdp.yaml
kubectl create -f newdp.yaml
kubectl apply -f newdp.yaml
kubectl get svc
clear 
cp service.yaml clusterip.yaml
ls
vim clusterip.yaml
vim newdp.yaml
kubectl apply -f newdp.yaml
kubectl get svc
curl 10.101.80.120
vim newdp.yaml
clear
kubectl create namespace devops
kubectl get pods -n devops
kubectl run mypod --image httpd -n devops
kubectl get pods -n devops
vim namespace.yaml
kubectl create -f namespace.yaml
vim namespace.yaml
kubectl create -f namespace.yaml
kubectl get ns
kubectl config set-context --current --namespace=dabloo
kubectl get ns
kubectl get pod
kubectl config set-context --current --namespace=default
kubectl get pod
clear
kubectl create deployment grass --replicas 3 --image httpd --dry-run=client -o yaml > abc.yaml
vim abc.yaml
ls
vim daemon.yaml
kubectl apply -f daemon.yaml
vim daemon.yaml
kubectl apply -f daemon.yaml
vim daemon.yaml
kubectl get daemonsets.app
kubectl get node
kubectl get pod -o wide
clear
kubectl delete -f deploy.yaml
kubectl get pod -o wide
kubectl delete -f newdp.yaml
kubectl get pod -o wide
clear
vim deploy.yaml
kubectl get node
vim deploy.yaml
kubectl create -f deploy.yaml
vim deploy.yaml
kubectl create -f deploy.yaml
kubectl get deployments.apps mydeployment
kubectl get pod -o wide
vim deploy.yaml
clear
kubectl delete deployment deploy.yaml
history
kubectl get pod -o wide
clear
kubectl get node
kubectl taint node worker1.dabloo  type=paper:NoSchedule
kubectl taint node worker2.dabloo  type=paper:NoSchedule
kubectl describe node worker1.dabloo  | grep -i taint
kubectl describe node worker2.dabloo  | grep -i taint
kubectl apply -f deploy.yaml
kubectl get deployments.apps mydeployment
kubectl get pods -o wide
kubectl delete deployments.apps mydeployment
kubectl get pods -o wide
kubectl taint node worker3.dabloo  type=paper:NoSchedule
kubectl apply -f deploy.yaml
kubectl get pods -o wide
clear
vim deploy.yaml
kubectl apply -f deploy.yaml
vim deploy.yaml
kubectl apply -f deploy.yaml
kubectl get pods
kubectl get pods -o wide
vim deploy.yaml
clear
kubectl get nodes
ls
clear
vim role.yaml
kubectl get pod
kubectl create -f role.yaml
vim role.yaml
kubectl create -f role.yaml
kubectl api-resources -o wide | grep pod
kubectl get roles
vim role.yaml
vim rolebinding.yaml
kubectl create -f rolebinding.yaml
vim rolebinding.yaml
kubectl create -f rolebinding.yaml
vim rolebinding.yaml
kubectl create -f rolebinding.yaml
vim rolebinding.yaml
kubectl create -f rolebinding.yaml
vim rolebinding.yaml
kubectl apply -f rolebinding.yaml
clear
kubectl get rolebinding.rbac.authorization.k8s.io
kubectl auth can-i get pod --as singh
kubectl auth can-i create pod --as singh
kubectl auth can-i list pod --as singh
kubectl auth can-i watch pod --as singh
kubectl auth can-i get pod --as jane
vim rolebinding.yaml
kubectl apply -f rolebinding.yaml
kubectl auth can-i get pod --as jane
kubectl auth can-i watch pod --as jane
vim rolebinding.yaml
kubectl apply -f rolebinding.yaml
kubectl auth can-i watch pod --as Jane
vim rolebinding.yaml
vim role.yaml
kubectl apply -f role.yaml
kubectl apply -f rolebinding.yaml
kubectl auth can-i watch pod --as jane
vim role.yaml
kubectl apply -f role.yaml
kubectl apply -f rolebinding.yaml
kubectl auth can-i watch pod --as jane
vim role.yaml
vim rolebinding.yaml
clear
cat role.yaml
cat rolebinding.yaml
clear
kubectl get pod
kubectl delete daemon mydaemon
kubectl delete deployment mydaemon
kubectl delete pod  mydaemon-6mpfg mydaemon-rs96v  mydaemon-wgt9m 
kubectl get pod
clear
mkdir database
ls
cd database
ls
cp deploy.yaml database.yaml .
cd
vim deploy.yaml
cd database
vim database.yaml
kubectl apply -f database
kubectl apply -f database.yaml
kubectl create -f database.yaml
vim database.yaml
kubectl create -f database.yaml
vim database.yaml
kubectl create -f database.yaml
vim database.yaml
kubectl create -f database.yaml
vim database.yaml
kubectl create -f database.yaml
kubectl get pods
history
cd
kubectl get pod
kubectl get nodes
kubectl get pod
ls
clear
ls
cd database
ls
l
clear
ls
cd database
ls
database.yaml
vim database.yaml
kubectl apply -f database.yaml
vim database.yaml
kubectl apply -f database.yaml
kubectl get ns mywebsite
kubectl get deployments.apps -n mywebsite
vim database.yaml
kubectl taint node worker3.dabloo  type=paper:NoSchedule-
kubectl taint node worker2.dabloo  type=paper:NoSchedule-
kubectl taint node worker1.dabloo  type=paper:NoSchedule-
kubectl get pod
cd database
vim database.yaml
kubectl apply -f database.yaml
kubectl get pod
vim database.yaml
kubectl create namespace mywebsite
kubectl apply -f database.yaml
kubectl config set-context --current --namespace=mywebsite
kubectl get pods
kubectl exec mydb-598db9ffd8-4jpsz -it --bash
kubectl exec mydb-598db9ffd8-4jpsz -it -- bash
kubectl get deployments.apps
kubectl get svc
kubectl get namespaces
exit
clear
clear
cd database
ls
vim database.yaml
kubectl apply -f database.yaml
kubectl get svc
vim database.yaml
kubectl apply -f database.yaml
vim database.yaml
kubectl apply -f database.yaml
kubectl get svc
kubectl get pod
kubectl get pod -o wide
kubectl config set-context
kubectl config set-context --current
kubectl get pod -o wide
kubectl get nodes
kubectl get pod
kubectl describe pod mydb-598db9ffd8-p6pht 
ls
cd
ls
kubectl get pod
kubectl run pod ram --image nginx
kubectl get pod
kubectl create configmap app-db --from-literal=MYSQL_ROOT_PASSWORD=redhat --from-literal=MYSQL_DATABASE=grras -n mywebsite
kubectl get configmap -n mywebsite
kubectl create configmap app-wp -n mywebsite --from-literal=WORDPRESS_DB_HOST=
kubectl get svc 
kubectl create configmap app-wp -n mywebsite --from-literal=WORDPRESS_DB_HOST=10.104.204.11 --from-literal=WORDPRESS_DB_USER=root --from-literal=WORDPRESS_DB_PASSWORD=redhat --from-literal=WORDPRESS_DB_NAME=grras
kubectl get configmap
kubectl delete configmap app-wp 
kubectl create configmap app-wp -n mywebsite --from-literal=WORDPRESS_DB_HOST=10.104.204.11 --from-literal=WORDPRESS_DB_USER=root --from-literal=WORDPRESS_DB_PASSWORD=redhat --from-literal=WORDPRESS_DB_NAME=grras
kubectl describe configmap app-wp
kubectl delete deployments.apps mywp
kubectl delete deployments.apps mydb
cd database/
vim database.yaml
history
kubectl taint node worker3.dabloo  type=paper:NoSchedule only 
kubectl get pod
cd database/
kubectl get svc
clear
mkdir wordpress/
ls
cd wordpress/
ls
cp -rvf /root/database/database.yaml ./wordpress.yaml
ls
vim wordpress.yaml
kubectl get svc
vim wordpress.yaml
kubectl create -f wordpress.yaml
kubectl get deployments.apps
kubectl get pod
vim wordpress.yaml
kubectl expose deployment mywp --port 80 --target-port 80 --type NodePort
kubectl get exposed
kubectl get svc
kubectl get pod -o wide
cd database/
kubectl delete svc db-svc
kubectl delete svc mywp
kubectl create -f database.yaml
kubectl get deployments.apps
vim database.yaml
kubectl apply -f database.yaml
cd database/
kubectl apply -f database.yaml
kubectl get svc
vim database.yaml
kubectl apply -f database.yaml
vim database.yaml
kubectl apply -f database.yaml
kubectl get svc
vim database.yaml
clear
kubectl get pod
kubectl exec mydb-68fffc9df9-7256w  -it -- bash
kubectl get pod
kubectl get pod -o wide
vim database.yaml
kubectl apply -f database.yaml
kubectl get pod -o wide
kubectl get svc
kubectl exec mydb-68fffc9df9-7256w  -it -- bash
kubectl get pod
kubectl exec mydb-888ddd7dd-7gqcn   -it -- bash
kubectl get svc
clear
history
ls
clear
ls
vim config.yaml
kubectl create -f config.yaml
vim config.yaml
kubectl get svc
vim config.yaml
kubectl create -f config.yaml
kubectl get configmaps app-wp1
kubectl describe configmaps app-wp1
clear
cd ..
cd wordpress.yaml/
cd wordpress/
ls
vim wordpress.yaml
kubectl create -f wordpress.yaml
kubectl get pods
kubectl get pods -o wide
kubectl expose deployment mywp --port 80 --target-port 80 --type Nodeport 
kubectl expose deployment mywp1 --port 80 --target-port 80 --type Nodeport 
vim wordpress.yaml
kubectl expose deployment mywp --port 80 --target-port 80 --type Nodeport exposed 
kubectl get pods -o wide
kubectl expose deployment mywp --port 80 --target-port 80 --type Nodeport 
clear
kubectl expose deployment mywp --port 80 --target-port 80 --type NodePort
kubectl expose deployment mywp --port 80 --target-port 80 --type NodePort --dry-run=client -o yaml > mywpsvc.yaml
ls
vim mywpsvc.yaml
kubectl create -f mywpsvc.yaml
vim mywpsvc.yaml
kubectl create -f mywpsvc.yaml
kubectl get svc
vim mywpsvc.yaml
clear
ls
clear
ls
mkdir volume
cd volume/
ls
clear
cd volume/
ls
vim db-pvc.yaml
kubectl create -f db-pvc.yaml
kubectl get pvc
cd ..
ls
cd database
cp -rvf database.yaml /root/volume/
cd 
cd volume/
ls
vim database.yaml
kubectl create -f database.yaml
kubectl delete deployment database.yaml
kubectl delete deployments.apps database.yaml
kubectl get deployment
cd volume/kubectl delete deployment mydb
cd 
kubectl delete deployment mydb
cd volume/
ls
vim database.yaml
kubectl create -f database.yaml
vim database.yaml
kubectl create -f database.yaml
vim database.yaml
kubectl create -f database.yaml
clear
kubectl get deployment
kubectl delete -f deployment.apps database.yaml
kubectl delete -f deployment database.yaml
kubectl delete -f  database.yaml
kubectl create -f database.yaml
kubectl get deployments.apps
watch kubectl get deployments.apps
kubectl get pod
kubectl get pod -o wide
kubectl get cm
clear
cp -rvf db-pv.yaml wp-pv.yaml
ls
cp -rvf db-pvc.yaml  wp-pvc.yaml
ls
vim wp-pv.yaml
kubectl create -f wp-pv.yaml
kubectl get pv
vim wp-pvc.yaml
kubectl create -f wp-pvc.yaml
kubectl get pvc
cd
cd wordpress
cp -rvf wordpress.yaml /root/volume/
ls
cd
cd volume/
ls
vim wordpress.yaml
kubectl create -f wordpress.yaml
kubectl delete -f wordpress.yaml
kubectl create -f wordpress.yaml
vim wordpress.yaml
clear
kubectl get cm
kubectl get svc
kubectl get deployment.apps
clear
ls
cd volume/
vim db-pv.yaml
kubectl create -f db-pv.yaml
kubectl get pv
vim db-pv.yaml
clear
cd volume
ls
vim db-pvc.yaml
clear
kubectl get node
kubectl get pod
kubectl describe pod mywp-89457b8d6-4smkv
kubectl get pod
clear

kubectl expose deployment mywp --port 80 --target-port 80 NodePort
kubectl expose deployment mywp1 --port 80 --target-port 80 NodePort
kubectl get deployment.apps
cd database/
vim database.yaml
kubectl get deployment.apps
kubectl apply -f database.yaml
kubectl get deployment.apps
cd
cd wordpress/
vim wordpress.yaml
cd
cd database/
ls
kubectl delet -f deployments.apps mydb1 
kubectl delete -f deployments.apps mydb1 
kubectl delete -f deployment mydb1 
kubectl delete -f  mydb1 
history
kubectl get deployment.apps
cd
cd volume/
ls
vim database.yaml
kubectl apply -f database.yaml
kubectl get deployments.apps
