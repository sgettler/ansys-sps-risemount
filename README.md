# ANSYS SPS Terrace Rise-Mounted Seats

[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)

Generates a static model using solid elements and checks seating loads. Macros
written in ANSYS APDL.

#### Installation and Use

To use the macros, clone this repo and use the `model` folder as your ANSYS
working directory. To build the model, run `01-00-Model.inp` and to solve the
static loading, run `02-00-Static.inp`.

Everything should work with ANSYS Mechanical, ANSYS Structural, or the
Structural Solver (though there is not yet any postprocessing function).

#### Parameters

Parameters for modifying the model geometry are found in the
`00-01-geoparams.inp` file. All dimensions are assumed to be in metres.

###### SPS Terrace Dimensions
|Name|Description|
|----|-----------|
|SPS_TP|tread top faceplate thickness|
|SPS_CORE|tread core thickness|
|SPS_BP|tread bottom faceplate thickness|
|SPS_S|tread slope as rise/run ratio|
|SPS_L|terrace length|
|SPS_W|tread width|
|SPS_H|rise height nose to nose|

###### Seat Bracket Baseplate Dimensions
|Name|Description|
|----|-----------|
|BRK_END|first bracket location; if value is 0, brackets will be centred in the terrace length|
|BRK_SPC|bracket spacing c/c|
|BRK_W|bracket baseplate width|
|BRK_H|bracket baseplate height|
|BRK_T|bracket baseplate thickness|
|BRK_Z|elevation of baseplate above the heel of the terrace|
|BRK_BZ|elevation of the bottom row of bolts above the heel of the terrace|
|BRK_BSV|vertical spacing between rows of bolts; if value is 0, only one row is created|
|BRK_BSH|horizontal spacing between columns of bolts; if value is 0, only one column is created|

Parameters for the loading are found in the `00-02-loadparams.inp` file. The
default loading is 120plf per ICC-300. Loads are automatically distributed to
the stanchions based on bracket spacing.
