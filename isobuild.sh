#This will build isos, WIP.
mkdir sm64iso
cp build/*_ps2/*.elf sm64iso/'SLUS_064.64'


# if ntsc, copy ntsc system.cnf

#if pal, copy pal system.cnf


echo -n "What is the rom region $Region ? Options: NTSC, PAL. "
read Region

case $Region in

  NTSC)
    echo -n "Executing for NTSC"
    cp sm64-ps2-iso/isoneeds/ntsc/*.CNF sm64iso
    ;;

  PAL)
    echo -n "Executing for PAL"
    cp sm64-ps2-iso/isoneeds/pal/*.CNF sm64iso
    
    ;;

  #JP")
  #  echo -n "Executing for JP-NTSC"
 #   #cp isoneeds/jp/*.cnf sm64iso
 #   ;;

  *)
    echo -n "unknown"
    echo -n "Invalid options entered, correct options are: NTSC, PAL"
    ;;
esac
echo -n "The following command will error out if you don't have mkisofs. We will try to install it. Install it manually if you face errors."
sudo apt-get update && sudo apt-get install mkisofs
sudo pacman -S cdrkit
 mkisofs -o sm64.iso sm64iso
