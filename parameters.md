## Parameters available for the run settings file (.dat-file)

From the manual (p. 97):  
"It is very important that all the parameters in your run settings file are written exactly like
presented here. If there are errors in the spelling of parameters, the program can not find
them and will use default settings instead. The order of parameters on the other hand is
not obligatory. If necessary, you can enter comments in your species list file on separate
rows starting with the symbol # . Remember also to use decimal points, not commas, in
all the input files."

Table below lists all the available parameters by category with default values (if applicable), and a short explanation. For more thorough documentation, please see [the manual](http://www.helsinki.fi/bioscience/consplan/software/Zonation/ZONATION_v3.1_Manual_120416.pdf).  
File [all_parameters.dat](https://github.com/cbig/zonation-tutorial/blob/master/all_parameters.dat) also lists the the same parameters as a proper dat-file.

Parameter value 0/1 means:

```
0 = off
1 = on
```

### Settings

| Parameter 							| Default | Explanation |
|---------------------------------------|---------|-------------------------|
| removal rule							| 1 	  | Determines which cell removal rule will be used. 1 = Basic core-area Zonation, 2 = Additive benefit function, 3 = Target-based planning, 4 = Generalized benefit function, 5 = random removal. |
| warp factor							| 100     | Defines how many cells are removed at a time. If warp factor is 100, it means that 100 cells are removed at each iteration. Thus a lower warp factor leads to a finer solution, but also to a prolonged running time, whereas a high warp factor keeps the running time short, but might result in a more coarse solution. |
| edge removal 							| 1       | Determines whether the program removes cells from the edges of remaining landscape (value = 1) or anywhere from the landscape (value = 0). |
| add edge points 						| 0       | Randomly selects additional cells inside the landscape that will be initially classified as edge-cells, from which removal can proceed. The value of this parameter determines the number of cells that are selected. This parameter allows a compromise between using and not using edge removal. |
| use SSI 								| 0       | Determines whether Species of Special Interest (SSI) are included into the analysis (value = 1) or not (value = 0).|
| SSI file name 						| -       | Similar to the biodiversity feature list file, except indicates a file that contains the list of SSI species used in the analysis.|
| use planning unit layer 				| 0       |  Determines whether a planning unit layer is used (value = 1) or not (value = 0). |
| planning unit layer file 				| - 	  | Indicates the planning unit layer file (integer grid) to be used.|
| use cost								| 0		  | Determines whether land costs are included in the analysis (value = 1). If no land costs are used, this parameter should be set to 0. Default = 0.|
| cost file 							| -		  | Indicates the land cost file to be used. Default is that a cost file is not used. |
| use mask	 							| 0		  | Determines whether a removal mask layer is used (value = 1) or not (value = 0).|
| mask file 							| -		  | Indicates the mask layer file to be used. Default is that a mask file is not used. |
| use boundary quality penalty   		| 0       |  Determines whether BQP connectivity is used (value = 1) or not (value = 0). |
| BQP profiles file 					| -		  |	Indicates the BQP profiles file to be used.|
| BQP Mode 	 							| 1       | Determines how the program will calculate the effects of fragmentation from species distribution data.|
| BLP 	 								| 0       | Defines a penalty given for the boundary length of the reserve. The value of BLP should be a small decimal number. The value of this penalty cannot be decided in advance based on some numeric criterion; rather a suitable value needs to be found by experimentation. |
| use tree connectivity 				| 0		  | Determines whether directed connectivity (Neighborhood Quality Penalty; NQP) is used (value = 1) or not (value = 0).|
| tree connectivity file 				| - 	  |  Indicates which tree connectivity file will be used when including NQP into the analysis. |
| use interactions	 					| 0	 	  | Determines whether ecological interactions are included (value = 1) into the analysis or not (value = 0).|
| interaction file 						| - 	  |  Indicates which interactions definitions file will be used.|
| annotate name 						| 1	 	  | With this option you can mark your output file names to show which analyses have been used to produce them (value = 1).|
| logit space 							| 0	 	  | A special option relevant for probability of occurrence models using logistic link functions. Determines whether the biological values of cells will be transformed from logit space (value = 1) for processing.|
| treat zero-areas as missing data 		| 0	 	  |  This option changes all cells with no species occurrences to missing data. This function might be useful in some cases, for example, if the missing data is in fact marked with the value 0 in your species distribution files due to some technical reasons.|
| z 									| 0.25    | This value is used to calculate the extinction risks of species as their distribution sizes are decreasing. z is the exponent of the species-area curve (S = cAz ), which has been widely used in ecological studies. |
| resample species						| 0	 	  | This option allows you to, for example, test analyses using only a subset of species. The program selects a random set of species from your species list file and uses them to run the analysis.|
| post-processing list file         	| - 	  | Indicates the list file of automatically executed post-processing analyses to be performed after landscape ranking. |
| memory save mode 						| 0	 	  | Here you can choose to use Zonation in a memory save mode.|
| use groups 							| 0	 	  | Determines whether a groups file is used (value = 1) or not (value = 0).|
| groups file 							| - 	  | Indicates the groups file to be used in the analysis. |
| use condition layer 					| 0	 	  |  Determines whether feature-group specific landscape condition is used in the analysis (value = 1) or not (value = 0).|
| condition file 						| - 	  |  Indicates the file describing linkage of features to landscape condition.|
| use retention layer 					| 0	 	  |  Determines whether feature-group specific retention layers are used in the analysis (value = 1) or not (value = 0).|
| retention file 						| - 	  |  Indicates the file describing linkage of features to landscape retention. |
| retention layers relative weight 		| 1.0	  | Determines the relative weight of retention layers (as a group) compared to representation.|
| mask missing areas 					| 0	 	  | Determines whether some areas of the landscape are masked out (filled with missing data) for all input grid layers (value = 1) or not (value = 0).|
| area mask file 						| - 	  |  Indicates the raster file to be used for masking the areas with missing information. |

### Info-gap settings

| Parameter 							| Default |
|---------------------------------------|---------|
| Info-gap proportional 				| 0	 	  |
| use info-gap weights  				| 1	 	  |
| Info-gap weights file 				| - 	  | 

### Community analysis settings

| Parameter 							| Default |
|---------------------------------------|---------|
| load similarity matrix 				| 0	 	  |
| connectivity similarity matrix file  	| - 	  |
| apply to connectivity 				| 0	 	  |
| connectivity edge effect fix file 	| - 	  |
| community similarity matrix file 		| - 	  | 
| apply to representation 				| 0	 	  |

### Administrative units

| Parameter 							| Default |
|---------------------------------------|---------|
| use ADMUs 							| 0	 	  |
| ADMU mode 							| 1	 	  |
| ADMU layer file 						| - 	  |
| ADMU descriptions file 				| - 	  | 
| ADMU weight matrix 					| - 	  |
| calculate local weights from condition| 0	 	  |
| Mode 2 global weight 					| - 	  |
| row count for per ADMU output curves 	| 0	 	  |
