### Running the tests (for development purposes)

There are a couple of ways of testing the tutorial run setups.

#### 1. Manually

This option is dead-simple. If you're on Windows, just launch each tutorial 
variant/run using the bat-files in the `basic` folder and monitor the
progress. All the necessary diagnostic information is printed in the 
run info file of each of the runs (unless Zonation crashes and burns 
completely).

#### 2. Using `zrunner`

[zrunner](https://github.com/cbig/zrunner) is a package written in
Python that comes with 2 command line utilities `zrunner` and `zreader`.
The former can run a set of Zonation runs defined in a bat- or YAML-file
on whatever platform. It also print the results into a YAML-file that
can be inspected using `zreader` or whatever you prefer.

File [ztests_basic.yaml](https://github.com/cbig/zonation-tutorial/blob/master/basic/tests/ztests_basic.yaml)
includes all the tutorial runs in the `basic` folder and can be used as
an input for `zrunner`. You can run the test suite by doing the following:

1. [Install](https://github.com/cbig/zrunner#install) `zrunner`
2. Navigate to this folder(zonation-tutorial/basic/tests) using your 
systems command prompt/terminal
3. Launch the test suite:

```
zrunner -l ztests_basic.yaml 
```

This will launch the Zonation runs in consequtive order. Outputs are produced
in basic/basic_output as with any normal Zonation run. The results are saved
in a YAML-file named `results_[YOUR_COMPUTER_NAME].yaml`. You can inspect the 
results either by opening the file in your text editor of choice or by using
the `zreader` utility:

```
zreader results_[YOUR_COMPUTER_NAME].yaml
```
