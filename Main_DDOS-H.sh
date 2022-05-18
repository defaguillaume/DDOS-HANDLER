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
lamp_install() {
        echo "0  Chossen Lamp install"
}

docker_install() {
        echo "1  Chossen Docker install"
        sh script/docker_install.sh
}

kub_install() {
        echo "2  chossen kub Install"
}

docker_build() {
        echo "3 chossen Docker_build"   
  # GNU nano 5.4                             DDOS-H_main.sh                                     
}

apply_kub() {
        echo "4 chossen apply KUB"
}

launch_website() {
        echo "5 chossen start website"

}

install_vegeta() {
        echo "7 chossen Vegeta"
        sh script/vegeta_install.sh
}

attack_vegeta() {
        echo "8 chossen Vegeta"
}

shutdown() {
        echo  "9 chossen ShutDown"
}

quit() {
        echo "You left DDOS-Handler"

}

print_command() {

echo "*************************************"
echo "*************************************"
echo ""
  # GNU nano 5.4                             DDOS-H_main.sh                                     
echo ""

#echo "0) Install LAMP"
echo "1) Install Docker"
echo "2) Install Kubernetes"
#echo "3) Build your app"
#echo "4) Launch K8S"
#echo "5) Launch DDHOS-Handler"
#echo "6) Connect to DDHOS-Handler"
echo "3) Install Vegeta"
#echo "8) Launch Vegeta Attack"
#echo "9) Shut down"
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
				"0") 
                lamp_install;;
                "1") 
                docker_install;;
                "2") 
                kub_install;;
                "3") 
                docker_build;;
                "4") 
                start_mini;;
                "5") 
                apply_kub;;
                "6") 
                launch_website;;
                "7") 
                install_vegeta;;
                "8")
                attack_vegeta;;
                "9")
                shutdown;;
                "Q")   
                quit;;
        esac
done