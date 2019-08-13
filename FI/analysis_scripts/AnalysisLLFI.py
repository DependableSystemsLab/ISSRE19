import os
import sys
import filecmp

print("\nBegin\n")

# set directory variables
curdir = os.path.dirname(os.path.realpath(__file__))
std_output = curdir + "/std_output"
baseline = curdir + "/baseline"
errdir = curdir + "/error_output"

# read golden output from ./baseline/golden_std_output
print ("Reading golden output...")
file_gld_out = baseline + "/golden_std_output"
print ("Complete.\n")

# read filenames from ./std_output
print ("Reading filenames...")
path, dirs, files = os.walk(std_output).__next__()
run_count = len(files)
print ("Complete. " + str(run_count) + " fault injection runs were performed\n")

# check for SDCs
sdc_count = 0
benign_count = 0
crash_count = 0
print ("Checking files...")
for f in range(0, run_count):
    print ("Checking fault injection run " + str(f) + "...", end="\r")
    file_out = std_output + "/std_outputfile-run-0-" + str(f)
    try:
        file_err = open(errdir + "/errorfile-run-0-" + str(f))
        error_msg = file_err.read()
        file_err.close()
    except FileNotFoundError:   # no error output
        error_msg = ""
    if ("crash" in error_msg) or ("hang" in error_msg):
        crash_count += 1
    elif filecmp.cmp(file_out, file_gld_out):
        benign_count += 1
    else:
        sdc_count += 1
sys.stdout.write("\033[K")
print ("Complete.", end="\r")

# print results
print ("\n")
print ("SDC count    = " + str(sdc_count))
print ("Crash count  = " + str(crash_count))
print ("Benign count = " + str(benign_count))
print ("SDC Rate     = " + str(100 * sdc_count / run_count) + "%\n")

# print results to file
par_dir = os.path.abspath(os.path.join(os.path.dirname( __file__ ), os.pardir))
out = open(curdir + "/../../AnalysisLLFI-" + par_dir[-2:] + ".txt", 'w')
sys.stdout = out
print ("SDC count    = " + str(sdc_count))
print ("Crash count  = " + str(crash_count))
print ("Benign count = " + str(benign_count))
print ("SDC Rate     = " + str(100 * sdc_count / run_count) + "%\n")
out.close()
