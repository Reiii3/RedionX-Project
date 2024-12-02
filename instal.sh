if [ $AXERON = false ]; then
	echo "Only Support in Laxeron"
fi

$AXFUN
import axeron.prop
local core="r17rYI0tYD6Cp9pPOtlQ2c0rYMzuOEctdEmseIcseHlP29kC2QyrYAcvaZ1Ez9DPOyctd9lC21yrN4mt2ycsXnmP29pQJ5qrR=="
wr="\e[38;2;188;61;0m"
nwr="\e[0m"
runPackage2=${runPackage}

#// Running Code
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
sleep 1

renderer="opengl"
usefl=false
	
if [ -n "$1" ] && [ "$1" == "-p" ];then
    axprop $path_axeronprop runPackage -s "$2"
    runPackage="$2"
    shift 2
fi

if [ -z $runPackage ]; then
    echo "Package is Empty"
    exit 1
fi

if [ ${runPackage2} = ${runPackage} ]; then
    echo "Game Detected : [${runPackage}]"
    sleep 0.5
    echo
else
    echo " Add Game   : [${runPackage}]"
    echo "Remove Game : [${runPackage2}]"
    sleep 0.5
fi

if [ -n "$1" ] && [ "$1" == "-fl" ]; then
	usefl=true
	shift
fi

if [ -n "$1" ] && [ "$1" == "-vk" ]; then
	if ls /system/lib/libvulkan.so > /dev/null 2>&1; then
    	renderer="vulkan"
		shift
    else
    	echo "Vulkan not supported"
    	exit 1
	fi
fi

if [ ${runPackage} = ${runPackage2} ]; then

  echo "┌[${runPackage}] PerformanceX Actived📲"
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
  if [ $usefl = true ]; then
	    flaunch $runPackage
  else
      echo "└[${runPackage}] Open To Menu Laxeron📳 "
      sleep 0.5
      echo
      echo "───────────────────────────────────────────────────────"
      sleep 0.5
      echo 
      echo "| -Have a nice play- |"
      echo "|      -enjoy-       |"
	    xtorm $core
  fi

else

echo "Installing Game     :┌[${runPackage}]"
echo "┌────────────────────┘"
sleep 1

case $1 in
	"--battery")
		setprop debug.sf.hw 0
		setprop debug.egl.hw 0
		setprop debug.egl.sync 1
		setprop debug.gpuprio 5
    setprop debug.cpuprio 5
    setprop debug.performance.tuning 0
    setprop debug.performance.profile 0
		performance=false
		setprop debug.composition.type cpu
		echo "┌[${runPackage}] battery composing"
		sleep 0.5
		;;
	"--performance" | *)
		setprop debug.sf.hw 1
		setprop debug.egl.hw 1
		setprop debug.egl.sync 0
		setprop debug.cpuprio 6
    setprop debug.gpuprio 7
    setprop debug.ioprio 7
    setprop debug.performance.tuning 1
    setprop debug.performance.profile 1
    setprop debug.performance.force true
    setprop debug.power.profile high_performance
    setprop debug.performance_schema 1
    setprop debug.multicore.processing 1
    setprop debug.systemuicompilerfilter speed
		performance=true
		setprop debug.composition.type gpu
		echo "├[${runPackage}] PerformanceX Actived📲"
		sleep 0.5
		;;
esac

#// Performance code By Reii
 setprop debug.hwui.renderer ${renderer}
 setprop debug.renderengine.backend skiavkthreaded
 am force-stop ${runPackage}
 cmd thermalservice override-status 0
 cmd power set-fixed-performance-mode-enabled true
 cmd power set-adaptive-power-saver-enabled false
 cmd power set-mode 0
echo "├[${runPackage}] Actived Renderer📲"
sleep 0.5
echo "├[${runPackage}] Activerd Beckend Render"
sleep 0.5
echo "├[${runPackage}] Render Slected ${renderer}"
sleep 0.5

#// Driver Game
settings put global updatable_driver_production_opt_in_apps ${runPackage}
echo "├[${runPackage}] Driver Game Actived⚙️"
sleep 0.5

#//  New Optimazion
if [ $(getprop ro.hardware.egl) == meow ]; then
#// Mediatek Perf
 setprop debug.mtk.chiptuning.enable 1
 setprop debug.mtk.gpu.dcvs.level 6
 setprop debug.mtk.gpuframecontrol 1
 setprop debug.mtk.gpu.mode 1
 setprop debug.mediatek.disp_decompress 1
 setprop debug.mediatek.game_pq_enable 1
 setprop debug.mediatek.appgamepq_compress 1
 echo "├[${runPackage}] Actived Mediatek ️Tun️er⚙️"
 sleep 0.5
 else
 echo "├[$(getprop ro.product.brand)] not supported"
 sleep 0.5
fi

   if [ $usefl = true ]; then
	     flaunch $runPackage
    else
       echo "└[${runPackage}] Open To Menu Laxeron📳 "
       sleep 0.5
       echo
       echo "───────────────────────────────────────────────────────"
       sleep 0.5
       echo 
       echo "| -Have a nice play- |"
       echo "|      -enjoy-       |"
	     xtorm $core
   fi
fi