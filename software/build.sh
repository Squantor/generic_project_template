# build all the templates and clean afterwards
#!/bin/bash
make -j18 PROJECT=PC CONFIG=release
make -j18 PROJECT=PC CONFIG=debug
make -j18 PROJECT=PC doc
make -j18 PROJECT=PC_bare CONFIG=release
make -j18 PROJECT=PC_bare CONFIG=debug
make -j18 PROJECT=PC_bare doc
make -j18 PROJECT=CortexM0 CONFIG=release
make -j18 PROJECT=CortexM0 CONFIG=debug
make -j18 PROJECT=CortexM0plus CONFIG=release
make -j18 PROJECT=CortexM0plus CONFIG=debug
make -j18 PROJECT=CortexM3 CONFIG=release
make -j18 PROJECT=CortexM3 CONFIG=debug
make -j18 PROJECT=CortexM4 CONFIG=release
make -j18 PROJECT=CortexM4 CONFIG=debug
make -j18 PROJECT=LPC812 CONFIG=release
make -j18 PROJECT=LPC812 CONFIG=debug
make -j18 PROJECT=LPC824 CONFIG=release
make -j18 PROJECT=LPC824 CONFIG=debug
make -j18 PROJECT=LPC845 CONFIG=release
make -j18 PROJECT=LPC845 CONFIG=debug
make -j18 PROJECT=LPC824M201DH20_blinky CONFIG=release
make -j18 PROJECT=LPC824M201DH20_blinky CONFIG=debug
make -j18 PROJECT=LPC845M301HI48_blinky CONFIG=release
make -j18 PROJECT=LPC845M301HI48_blinky CONFIG=debug
make clean
