(qemu-system-x86_64 build/boot.bin)
result=$?

if [ $result -eq "0" ]
then
    echo "Ran succesfully"
else
    echo "Build failed with error code $result. See output for more info."
fi
