# sm64-ps2-iso

Build SM64 for the ps2. To verify that it is built, (after finishing build) run the following command:

``` ls build/*_ps2/ | grep sm64.*.elf```

You should see a sm64.us.f3dex2e.elf after running this command. If so, you are good to go!


Now, to build the ISO, run 

sudo chmod +x sm64-ps2-iso/isobuild.sh && ./sm64-ps2-iso/isobuild.sh
