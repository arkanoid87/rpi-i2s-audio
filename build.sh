for km in /lib/modules/* ; do
  kv="$(basename $km)"
  echo Entering "$kv"
  make -C "$km"/build M=$(pwd) modules || exit 1
  mkdir -p dist/"$kv"
  mv *.ko dist/"$kv"
done
