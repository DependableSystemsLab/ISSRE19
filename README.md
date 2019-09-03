# ISSRE19
Public repository of the tools and benchmarks used in our paper "A Tale of Two Injectors: End-to-End Comparison of IR-level and Assembly-Level Fault Injection" published in the 30th International Symposium on Software Reliability Engineering (ISSRE 2019)

# Notes
All experiments in this study were performed using LLVM/Clang version 3.4. The provided IR code for the benchmarks are thus compiled using this version and we cannot guarantee that the code will execute properly using different versions of LLVM.

The compiled x86 assembly code files are provided only for reference, as they were compiled specifically for the machines on which our own experiments were conducted. You will need to compile the provided IR files down to executables on your own machines in order to reproduce the experiments using PINFI. Be sure to apply the appropriate compiler optimizations when doing so (-O0, -O1, -O2, or -O3).

# Overview of repository
1. ./Benchmarks/ holds all of the benchmark files used for the fault injection experiments. Each subfolder contains the program .ll IR file, compiled x86 assembly file, input.txt file containing the command line arguments for the input used in the paper's experiments, as well as any other input files required for each benchmark's execution. To execute a program's IR code using LLVM, one should use the command `lli ir.ll $(cat input.txt)`.

2. ./FI/ holds the files required to run the FI experiments. For LLFI, one only requires the input.yaml file to be included in the same directory as the .ll IR file for the program under test. For PINFI, the faultinject.py script is provided for executing PINFI (note that PINFI-v2 has its own faultinject.py script, which is found in the PINFI-v2 source code folder). Instructions on LLFI and PINFI installations and usage can be found in their respective repositories. We also provide analysis scripts for measuring the number of SDC, crash, and benign outputs from LLFI and PINFI fault injection logs, respectively.

3. ./Tools/ holds the source code for all of the different versions of PINFI used in our study. Each version is slightly different, and one should refer to the paper to understand the differences between them. We also provide source code for PIN versions 3.0 and 3.5, as these are difficult to find. PIN 3.0 is used to run PINFI-v2, while PIN 3.5 is used to run both PINFI-v1 and PINFI-v3. The source code and installation instructions for LLFI can be found at <https://github.com/DependableSystemsLab/LLFI>. The installation instructions for PINFI can be found in their respective README files under ./Tools/<PINFI-version>/.

4. ./Results-Analysis.xlsx holds the experiment data and all statistical analyses included in the paper.

# Instructions for Launching FI experiments
1. For a given benchmark, make sure the given IR file is compiled to x86 for your machine. In order to properly reproduce the results of our own experiments, the correct optimization flags must be included during the compilation from IR to assembly. E.g., to compile from IR to assembly using LLVM and -O3 optimization, use the commands `llc -O3 ir.ll && clang -O3 -lm ir.s -o x86`.

2. For LLFI, copy the file ./FI/input.yaml to the benchmark's folder. Edit the input.yaml file according to the desired number of runs and/or desired timeout. The timeout should be sufficiently long enough for the benchmark to complete a normal execution. Follow the [LLFI documentation](https://github.com/DependableSystemsLab/LLFI#running) to execute the LLFI fault injection campaign.

3. For PINFI, copy the ./FI/pinfi/ folder to the benchmark's folder. Edit faultinject.py script for the following: the path to the benchmark and your PINFI installation (lines 12-16), the timeout (line 32, similar to that of LLFI), and the program's command line inputs (line 34). The command line inputs should be formatted in the form of a list of strings, as per the Python [subprocess module](https://docs.python.org/2/library/subprocess.html). Simply run the script to execute the PINFI fault injection campaign, e.g., `python faultinject.py 1000`.

