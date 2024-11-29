if [ $AXERON = false ]; then
	echo "Only Support in Laxeron"
fi

$AXFUN
import axeron.prop
wr="\e[38;2;255;80;0m"
nwr="\e[0m"

echo "==========================="
echo "  Maintenace is Runninng"
echo "==========================="
echo
echo "             ════════════════════════════════"
echo "                ${name} | ${version} [${versionCode}] "
echo "             ════════════════════════════════"
echo
sleep 0.5
sleep 1
echo "                 ⟨⟨INFORMATION MODULES⟩⟩"
echo "${wr}        ┌───────────────────────────────────────┐${nwr}"
sleep 1
echo "${wr}            source  : @Reiieja${nwr}"
sleep 1
echo "${wr}            Dev     : ${author}${nwr}"
sleep 1
echo "${wr}            update  : ${version}${nwr}"
sleep 1

if [ -z "$user" ]; then 
   echo "${wr}            user    : username is not detected${nwr}"
else 
   echo "${wr}            user    : ${user}${nwr}"
fi
sleep 1
echo "${wr}        └───────────────────────────────────────┘${nwr}"
echo
sleep 1
echo "              Wait for me in the next update          "
echo " ───────────────┬────────────────────────┬─────────────"
sleep 1
echo "                │ Installing performance │           "
sleep 1
echo "                └────────────────────────┘  "
echo
echo "${wr}      ▒█▀▀█ ▒█▀▀▀ ▀█▀ ▒█▀▀▄ ▀█▀ ▒█▀▀▀█ ▒█▄░▒█ ▀▄▒▄▀${nwr}"
sleep 1
echo "${wr}      ▒█▄▄▀ ▒█▀▀▀ ▒█░ ▒█░▒█ ▒█░ ▒█░░▒█ ▒█▒█▒█ ░▒█░░${nwr}"
sleep 1
echo "${wr}      ▒█░▒█ ▒█▄▄▄ ▄█▄ ▒█▄▄▀ ▄█▄ ▒█▄▄▄█ ▒█░░▀█ ▄▀▒▀▄${nwr}"
echo


if [ -n "$1" ] && [ "$1" == "-p" ];then
    axprop $path_axeronprop runPackage -s "$2"
    runPackage="$2"
    shift 2
fi

if [ -z $runPackage ]; then
    echo "Package is Empty"
    exit 1
else 
    echo "Package is detected :┌[${runPackage}]"
fi
echo "Installing Game     :├[${runPackage}]"
echo "┌────────────────────┘"
echo "├[${runPackage}] PerformanceX Actived📲"
sleep 0.5
echo "├[${runPackage}] Actived Renderer📲"
sleep 0.5
echo "├[${runPackage}] Activerd Beckend Render"
sleep 0.5
echo "├[${runPackage}] Render Slected Vulkan"
sleep 0.5
echo "├[${runPackage}] Driver Game Actived⚙️"
sleep 0.5
echo "├[${runPackage}] Actived Mediatek ️Tun️er⚙️"
sleep 0.5
echo "└[${runPackage}] Open To Menu Laxeron📳 "
  sleep 0.5
  echo
  echo "───────────────────────────────────────────────────────"
  sleep 0.5
  echo 
  echo "| -Have a nice play- |"
  echo "|      -enjoy-       |"