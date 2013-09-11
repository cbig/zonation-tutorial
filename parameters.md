## Parameters available for the run settings file (.dat-file)

From the manual (p. 97):  
"It is very important that all the parameters in your run settings file are written exactly like
presented here. If there are errors in the spelling of parameters, the program can not find
them and will use default settings instead. The order of parameters on the other hand is
not obligatory. If necessary, you can enter comments in your species list file on separate
rows starting with the symbol # . Remember also to use decimal points, not commas, in
all the input files."

Table below lists all the available parameters by category with default values (if applicable). 
File [all_parameters.dat]() also lists the the same parameters as a proper dat-file.

Parameter value 0/1 means:

```
0 = off
1 = on
```

### Settings

| Parameter 							| Default |
|---------------------------------------|---------|
| removal rule							| 1 	  |
| warp factor							| 100     |
| edge removal 							| 1       |
| add edge points 						| 0       |
| use SSI 								| 0       |
| SSI file name 						| -       |
| use planning unit layer 				| 0       |
| planning unit layer file 				| - 	  |
| initial removal percent 				| 0.0 	  |
| use cost								| 0		  |
| cost file 							| -		  |
| use mask	 							| 0		  |
| mask file 							| -		  |
| use boundary quality penalty   		| 0       |
| BQP profiles file 					| -		  |		
| BQP Mode 	 							| 1       |
| BLP 	 								| 0       |
| use tree connectivity 				| 0		  |
| tree connectivity file 				| - 	  | 
| use interactions	 					| 0	 	  |
| interaction file 						| - 	  | 
| annotate name 						| 0	 	  |
| logit space 							| 0	 	  |
| treat zero-areas as missing data 		| 0	 	  |
| z 									| 0.25    |
| resample species						| 0	 	  |
| post-processing list file         	| - 	  | 
| memory save mode 						| 0	 	  |
| use groups 							| 0	 	  |
| groups file 							| - 	  | 	
| use condition layer 					| 0	 	  |
| condition file 						| - 	  | 
| use retention layer 					| 0	 	  |
| retention file 						| - 	  | 
| retention layers relative weight 		| 1.0	  |
| mask missing areas 					| 0	 	  |
| area mask file 						| - 	  | 

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
