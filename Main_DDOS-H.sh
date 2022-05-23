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
██████╗ ██████╗  ██████╗ ███████╗      ██╗  ██╗ █████╗ ███╗   ██╗██████╗ ██╗     ██████
██╔══██╗██╔══██╗██╔═══██╗██╔════╝      ██║  ██║██╔══██╗████╗  ██║██╔══██╗██║     ██╔═══
██║  ██║██║  ██║██║   ██║███████╗█████╗███████║███████║██╔██╗ ██║██║  ██║██║     █████╗
██║  ██║██║  ██║██║   ██║╚════██║╚════╝██╔══██║██╔══██║██║╚██╗██║██║  ██║██║     ██╔══╝
██████╔╝██████╔╝╚██████╔╝███████║      ██║  ██║██║  ██║██║ ╚████║██████╔╝███████╗██████
╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝      ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═════
                                                                                       
"
sleep 1

docker_install() {
        echo "1  Chossen Docker install"
        sh script/docker_install.sh
}

kub_install() {
        echo "2  chossen kub Install"
        sh script/kubernetes_install.sh
}

install_vegeta() {
        echo "3 chossen Vegeta"
        sh script/vegeta_install.sh
}

quit() {
        echo "You left DDOS-Handler"

}

print_command() {

echo "*************************************"
echo "*************************************"
echo ""                                    
echo ""

echo "1) Install Docker"
echo "2) Install Kubernetes"
echo "3) Install Vegeta"
echo "Q) Exit"

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
                install_vegeta;;

                "Q")   
                quit;;
        esac
done