# generic project template software
This is a generic template for software used in a project, uses Makefiles as build system.
## Help functions
The command ```make help``` gives an overview of various help commands:
* ```make projects``` gives a list of available projects
* ```make libraries``` gives a list of available libraries
* passing the variable ```VERBOSE=1``` gives full command output
## Project list
Running the command ```make projects``` gives an overview of the projects available.
* PC_bare: Bare metal PC empty project
* PC: PC empty project
* CortexM0: CortexM0 empty project
* CortexM0plus: CortexM0+ empty project
* CortexM3: CortexM3 empty project
* CortexM4: CortexM4 empty project
* CortexM7: CortexM7 empty project
* LPC812M101DH20_empty: LPC812 TSSOP20 empty project
* LPC812M101DH20_blinky: LPC812 TSSOP20 blinking LED
* LPC824M201DH20_blinky: LPC824 TSSOP20 blinking LED
* LPC824M201HI33_empty: LPC824 QFN33 empty project
* LPC824M201HI33_blinky: LPC824 QFN33 blinking LED
* LPC844M201BD64_empty: LPC844 PQFP64 empty project
* LPC845M301BD48_empty: LPC845 PQFP48 empty project
* LPC845M301BD48_blinky: LPC845 PQFP48 blinking LED
* LPC1114BD48_323_empty: LPC1114 PQFP48 empty project
* LPC1125BD48_303_empty: LPC1125 PQFP48 empty project
* STM32F030K6_blinky: STM32F030K6 blinkying LED
* STM32F031K6_blinky: STM32F030K6 blinkying LED
## Building
The ```projects``` directory contains all the projects. Invoking compilation of any project is done with the ```PROJECT``` variable that needs to be passed on, see the following example:
```
make PROJECT=PC
```
Building can be done with various configurations that set up flags and other settings, this configuration is set with the ```CONFIG``` variable. Most projects have the ```release``` and ```debug``` where the ```debug``` configuration is default.
The ```release``` configuration has optimizations enabled (usually for size) and minimal included debugging information. The ```debug``` configuration has NO optimization and full debugging information. There might be specific configurations available per project.
For cleaning execute the following command:
```
make clean
```
### Debugging embedded projects
For debugging on embedded targets, the [Black Magic Probe](https://github.com/blacksphere/blackmagic/wiki) is used, scripts to use this debugger are present in the ```gdb_scripts``` directory. make can be used to invoke debugging:
```
make gdbusbdebug
make gdbusbrelease
```
This will build, if needed, the debug or release build respectivly and load it into the target.
```
make tpwrdisable
make tpwrenable
```
The black magic probe is capable of powering the target, these commands enable/disable this function.
### Depedencies
The templates have a few dependencies that are automatically cloned when you do a clone with ```--recurses-submodules```
* squantorLibC for minimal LibC functionality
* squantorLibEmbedded for various helper functions
## Usage
To use the software you need the following hardware:
* [Black magic probe](https://github.com/blacksphere/blackmagic)
* gnu make
* [bear]() for generating compilation database to be used by vscode intellisense
* visual studio code with c/c++ language support and [Cortex-debug]() for debugging embedded targets
# Additional information
If the project needs further explanation like commands, theory of operation or something else, Describe it here.
# TODO
Open tasks still to complete.
* completing this readme

