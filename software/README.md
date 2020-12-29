# generic project template software
This is a generic template for the software used in a project
## Project list
Here is a list of the various projects.
* PC: template project for PC software development
* PC_bare: template project for PC development with no libc/startupcode
## Building
There are multiple projects present in this directory. Invoking compilation of any project is done with the ```PROJECT``` variable that needs to be passed on, see the following example:
```
make PROJECT=example
```
Building can be done with various configurations that set up flags and other settings, this configuration is set with the ```CONFIG``` variable. Most projects have the ```release``` and ```debug``` where the ```debug``` configuration is default.
The ```release``` configuration has optimizations enabled (usually for size) and minimal included debugging information. The ```debug``` configuration has NO optimization and full debugging information. There might be specific configurations available per project. When no ```CONFIG``` is defined the default is the ```debug``` configuration.
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
The templates have a few dependencies that are automatically cloned when you do a clone with ```--recurses-submodules
* squantorLibC for minimal LibC functionality
* squantorLibEmbeddedC for various embedded helper functions
* squantorLibEmbedded newer embedded helper functions library
## Usage
To use the software you need the following hardware:
* [Black magic probe](https://github.com/blacksphere/blackmagic)
* Describe additional electronics prerequisites
# Additional information
If the project needs further explanation like commands, theory of operation or something else, Describe it here.
# TODO
Open tasks still to complete.
* completing this readme

