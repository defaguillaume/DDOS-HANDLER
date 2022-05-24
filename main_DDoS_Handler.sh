#!/bin/bash
echo "DDOS-HANDLER LOADING"
sleep 0.5
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'
sleep 1
echo -e "
██████╗ ██████╗  ██████╗ ███████╗      ██╗  ██╗ █████╗ ███╗   ██╗██████╗ ██╗     ██████>
██╔══██╗██╔══██╗██╔═══██╗██╔════╝      ██║  ██║██╔══██╗████╗  ██║██╔══██╗██║     ██╔═══>
██║  ██║██║  ██║██║   ██║███████╗█████╗███████║███████║██╔██╗ ██║██║  ██║██║     █████╗>
██║  ██║██║  ██║██║   ██║╚════██║╚════╝██╔══██║██╔══██║██║╚██╗██║██║  ██║██║     ██╔══╝>
██████╔╝██████╔╝╚██████╔╝███████║      ██║  ██║██║  ██║██║ ╚████║██████╔╝███████╗██████>
╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝      ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═════>
                                                                                       >
"

docker_install() {
        echo "1  Chossen Docker install"
		sh script/docker_install.sh
}

kub_install() {
        echo "2  chossen kube Install"
		sh script/kube_install.sh
}

nginx_install() {
        echo "3 chossen Nginx"   
		sh script/nginx_install.sh
}

master_kub() {
        echo "4 chossen apply KUB master"
		sh script/kube_config_master.sh
}

#
#NGNIX
#
#
#

cluster_kub() {
        echo "6 chossen apply KUB cluster"
		sh script/kube_config_cluster.sh
}
 
install_vegeta() {
        echo "7 chossen Vegeta"
		sh script/install_vegeta.sh
}

attack_vegeta() {
        echo "8 chossen Vegeta"
		sh script/attack_vegeta.sh
}

shutdown() {
        echo  "9 chossen ShutDown"
		exit
}

quit() {
        echo "You left the DDoS Handler !"
		exit
}

print_command() {

echo "*************************************"
echo "*************************************"
echo ""
  # GNU nano 5.4                             DDOS-H_main.sh                                     
echo ""

echo "1) Install Docker"
echo "2) Install Kubernetes"
echo "3) Nginx Install"
echo "4) Configure Kubernetes Master Server"
echo "5) Add Slave and Deploy NGINX to the Kubernetes Cluster"
echo "6) Install Vegeta"
echo "7) Launch Vegeta Attack"
echo "8) Shut down"
echo "Q) Quit"

echo ""
echo "*************************************"
echo "*************************************"
echo ""


}

rep="stay"
while [ $rep != 'Q' ]
do

        print_command
        echo "Select your action: "
        read rep

        echo ""

        case $rep in
                "1") 
                docker_install;;
                "2") 
                kub_install;;
                "3") 
                nginx_install;;
                "4") 
                master_kub;;
                "5") 
                cluster_kub;;
                "6") 
                install_vegeta;;
                "7")
                attack_vegeta;;
                "8")
                shutdown;;
                "Q")   
                quit;;
        esac
done