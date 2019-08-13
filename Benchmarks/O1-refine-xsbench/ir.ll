; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/refine-xsbench/fault injection/llfi-O1/xsbench.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.GridPoint = type { double, i32* }
%struct.NuclideGridPoint = type { double, double, double, double, double, double }
%struct.Inputs = type { i32, i64, i64, i32, i8* }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Generating Unionized Energy Grid...\0A\00", align 1
@.str1 = private unnamed_addr constant [42 x i8] c"Copying and Sorting all nuclide grids...\0A\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"Assigning energies to unionized grid...\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str3 = private unnamed_addr constant [24 x i8] c"ERROR - Out Of Memory!\0A\00", align 1
@.str4 = private unnamed_addr constant [48 x i8] c"Assigning pointers to Unionized Energy Grid...\0A\00", align 1
@.str5 = private unnamed_addr constant [46 x i8] c"\0DAligning Unionized Grid...(%.0lf%% complete)\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str = private unnamed_addr constant [36 x i8] c"Generating Unionized Energy Grid...\00"
@str7 = private unnamed_addr constant [41 x i8] c"Copying and Sorting all nuclide grids...\00"
@str8 = private unnamed_addr constant [40 x i8] c"Assigning energies to unionized grid...\00"
@str9 = private unnamed_addr constant [47 x i8] c"Assigning pointers to Unionized Energy Grid...\00"
@.str7 = private unnamed_addr constant [488 x i8] c"                   __   __ ___________                 _                        \0A                   \5C \5C / //  ___| ___ \5C               | |                       \0A                    \5C V / \5C `--.| |_/ / ___ _ __   ___| |__                     \0A                    /   \5C  `--. \5C ___ \5C/ _ \5C '_ \5C / __| '_ \5C                    \0A                   / /^\5C \5C/\5C__/ / |_/ /  __/ | | | (__| | | |                   \0A                   \5C/   \5C/\5C____/\5C____/ \5C___|_| |_|\5C___|_| |_|                   \0A\0A\00", align 1
@.str18 = private unnamed_addr constant [41 x i8] c"Developed at Argonne National Laboratory\00", align 1
@.str29 = private unnamed_addr constant [12 x i8] c"Version: %d\00", align 1
@.str310 = private unnamed_addr constant [2 x i8] c" \00", align 1
@stdout = external global %struct._IO_FILE*
@.str411 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str512 = private unnamed_addr constant [8 x i8] c"RESULTS\00", align 1
@.str613 = private unnamed_addr constant [17 x i8] c"Threads:     %d\0A\00", align 1
@.str714 = private unnamed_addr constant [14 x i8] c"Lookups:     \00", align 1
@.str8 = private unnamed_addr constant [29 x i8] c"Verification checksum: %llu\0A\00", align 1
@.str9 = private unnamed_addr constant [12 x i8] c"results.txt\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"%d\09%d\0A\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"INPUT SUMMARY\00", align 1
@.str13 = private unnamed_addr constant [34 x i8] c"Verification Mode:            on\0A\00", align 1
@.str14 = private unnamed_addr constant [34 x i8] c"Materials:                    %d\0A\00", align 1
@.str15 = private unnamed_addr constant [34 x i8] c"H-M Benchmark Size:           %s\0A\00", align 1
@.str16 = private unnamed_addr constant [35 x i8] c"Total Nuclides:               %ld\0A\00", align 1
@.str17 = private unnamed_addr constant [31 x i8] c"Gridpoints (per Nuclide):     \00", align 1
@.str1815 = private unnamed_addr constant [31 x i8] c"Unionized Energy Gridpoints:  \00", align 1
@.str19 = private unnamed_addr constant [31 x i8] c"XS Lookups:                   \00", align 1
@.str20 = private unnamed_addr constant [34 x i8] c"Threads:                      %d\0A\00", align 1
@.str21 = private unnamed_addr constant [31 x i8] c"Est. Memory Usage (MB):       \00", align 1
@.str22 = private unnamed_addr constant [15 x i8] c"INITIALIZATION\00", align 1
@.str23 = private unnamed_addr constant [82 x i8] c"================================================================================\0A\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str25 = private unnamed_addr constant [11 x i8] c"%ld,%03ld\0A\00", align 1
@.str26 = private unnamed_addr constant [17 x i8] c"%ld,%03ld,%03ld\0A\00", align 1
@.str27 = private unnamed_addr constant [23 x i8] c"%ld,%03ld,%03ld,%03ld\0A\00", align 1
@.str28 = private unnamed_addr constant [28 x i8] c"Usage: ./XSBench <options>\0A\00", align 1
@.str2916 = private unnamed_addr constant [18 x i8] c"Options include:\0A\00", align 1
@.str30 = private unnamed_addr constant [52 x i8] c"  -t <threads>     Number of OpenMP threads to run\0A\00", align 1
@.str31 = private unnamed_addr constant [73 x i8] c"  -s <size>        Size of H-M Benchmark to run (small, large, XL, XXL)\0A\00", align 1
@.str32 = private unnamed_addr constant [77 x i8] c"  -g <gridpoints>  Number of gridpoints per nuclide (overrides -s defaults)\0A\00", align 1
@.str33 = private unnamed_addr constant [57 x i8] c"  -l <lookups>     Number of Cross-section (XS) lookups\0A\00", align 1
@.str34 = private unnamed_addr constant [48 x i8] c"Default is equivalent to: -s large -l 15000000\0A\00", align 1
@.str35 = private unnamed_addr constant [55 x i8] c"See readme for full description of default run values\0A\00", align 1
@.str36 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str37 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@.str38 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str39 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str40 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@.str41 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@.str42 = private unnamed_addr constant [3 x i8] c"XL\00", align 1
@.str43 = private unnamed_addr constant [4 x i8] c"XXL\00", align 1
@str17 = private unnamed_addr constant [487 x i8] c"                   __   __ ___________                 _                        \0A                   \5C \5C / //  ___| ___ \5C               | |                       \0A                    \5C V / \5C `--.| |_/ / ___ _ __   ___| |__                     \0A                    /   \5C  `--. \5C ___ \5C/ _ \5C '_ \5C / __| '_ \5C                    \0A                   / /^\5C \5C/\5C__/ / |_/ /  __/ | | | (__| | | |                   \0A                   \5C/   \5C/\5C____/\5C____/ \5C___|_| |_|\5C___|_| |_|                   \0A\00"
@str44 = private unnamed_addr constant [81 x i8] c"================================================================================\00"
@str45 = private unnamed_addr constant [33 x i8] c"Verification Mode:            on\00"
@str46 = private unnamed_addr constant [27 x i8] c"Usage: ./XSBench <options>\00"
@str47 = private unnamed_addr constant [17 x i8] c"Options include:\00"
@str48 = private unnamed_addr constant [51 x i8] c"  -t <threads>     Number of OpenMP threads to run\00"
@str49 = private unnamed_addr constant [72 x i8] c"  -s <size>        Size of H-M Benchmark to run (small, large, XL, XXL)\00"
@str50 = private unnamed_addr constant [76 x i8] c"  -g <gridpoints>  Number of gridpoints per nuclide (overrides -s defaults)\00"
@str51 = private unnamed_addr constant [56 x i8] c"  -l <lookups>     Number of Cross-section (XS) lookups\00"
@str52 = private unnamed_addr constant [47 x i8] c"Default is equivalent to: -s large -l 15000000\00"
@str53 = private unnamed_addr constant [54 x i8] c"See readme for full description of default run values\00"
@.str44 = private unnamed_addr constant [36 x i8] c"Generating Nuclide Energy Grids...\0A\00", align 1
@.str145 = private unnamed_addr constant [33 x i8] c"Sorting Nuclide Energy Grids...\0A\00", align 1
@.str246 = private unnamed_addr constant [17 x i8] c"Loading Mats...\0A\00", align 1
@.str347 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str448 = private unnamed_addr constant [11 x i8] c"SIMULATION\00", align 1
@.str549 = private unnamed_addr constant [41 x i8] c"\0DCalculating XS's... (%.0lf%% completed)\00", align 1
@.str650 = private unnamed_addr constant [39 x i8] c"%.5lf %d %.5lf %.5lf %.5lf %.5lf %.5lf\00", align 1
@.str751 = private unnamed_addr constant [22 x i8] c"Simulation complete.\0A\00", align 1
@str54 = private unnamed_addr constant [35 x i8] c"Generating Nuclide Energy Grids...\00"
@str855 = private unnamed_addr constant [32 x i8] c"Sorting Nuclide Energy Grids...\00"
@str956 = private unnamed_addr constant [16 x i8] c"Loading Mats...\00"
@str10 = private unnamed_addr constant [21 x i8] c"Simulation complete.\00"
@load_mats.mats0_Sml = private unnamed_addr constant [34 x i32] [i32 58, i32 59, i32 60, i32 61, i32 40, i32 42, i32 43, i32 44, i32 45, i32 46, i32 1, i32 2, i32 3, i32 7, i32 8, i32 9, i32 10, i32 29, i32 57, i32 47, i32 48, i32 0, i32 62, i32 15, i32 33, i32 34, i32 52, i32 53, i32 54, i32 55, i32 56, i32 18, i32 23, i32 41], align 16
@load_mats.mats0_Lrg = private unnamed_addr constant [321 x i32] [i32 58, i32 59, i32 60, i32 61, i32 40, i32 42, i32 43, i32 44, i32 45, i32 46, i32 1, i32 2, i32 3, i32 7, i32 8, i32 9, i32 10, i32 29, i32 57, i32 47, i32 48, i32 0, i32 62, i32 15, i32 33, i32 34, i32 52, i32 53, i32 54, i32 55, i32 56, i32 18, i32 23, i32 41, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@load_mats.mats1 = private unnamed_addr constant [5 x i32] [i32 63, i32 64, i32 65, i32 66, i32 67], align 16
@load_mats.mats2 = private unnamed_addr constant [4 x i32] [i32 24, i32 41, i32 4, i32 5], align 16
@load_mats.mats3 = private unnamed_addr constant [4 x i32] [i32 24, i32 41, i32 4, i32 5], align 16
@load_mats.mats4 = private unnamed_addr constant [27 x i32] [i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 26, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14, i32 6, i32 16, i32 17], align 16
@load_mats.mats5 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@load_mats.mats6 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@load_mats.mats7 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@load_mats.mats8 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@load_mats.mats9 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@load_mats.mats10 = private unnamed_addr constant [9 x i32] [i32 24, i32 41, i32 4, i32 5, i32 63, i32 64, i32 65, i32 66, i32 67], align 16
@load_mats.mats11 = private unnamed_addr constant [9 x i32] [i32 24, i32 41, i32 4, i32 5, i32 63, i32 64, i32 65, i32 66, i32 67], align 16
@rn_v.seed = internal unnamed_addr global i64 1337, align 8
@.str65 = private unnamed_addr constant [12 x i8] c"XS_data.dat\00", align 1
@.str166 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str267 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: nounwind uwtable
define void @calculate_micro_xs(double %p_energy, i32 %nuc, i64 %n_isotopes, i64 %n_gridpoints, %struct.GridPoint* noalias nocapture readonly %energy_grid, %struct.NuclideGridPoint** noalias nocapture readonly %nuclide_grids, i32 %idx, double* noalias nocapture %xs_vector) #0 {
  %1 = sext i32 %nuc to i64, !llfi_index !1
  %2 = sext i32 %idx to i64, !llfi_index !2
  %3 = getelementptr inbounds %struct.GridPoint* %energy_grid, i64 %2, i32 1, !llfi_index !3
  %4 = load i32** %3, align 8, !tbaa !4, !llfi_index !10
  %5 = getelementptr inbounds i32* %4, i64 %1, !llfi_index !11
  %6 = load i32* %5, align 4, !tbaa !12, !llfi_index !14
  %7 = sext i32 %6 to i64, !llfi_index !15
  %8 = add nsw i64 %n_gridpoints, -1, !llfi_index !16
  %9 = icmp eq i64 %7, %8, !llfi_index !17
  br i1 %9, label %10, label %16, !llfi_index !18

; <label>:10                                      ; preds = %0
  %11 = add nsw i32 %6, -1, !llfi_index !19
  %12 = sext i32 %11 to i64, !llfi_index !20
  %13 = getelementptr inbounds %struct.NuclideGridPoint** %nuclide_grids, i64 %1, !llfi_index !21
  %14 = load %struct.NuclideGridPoint** %13, align 8, !tbaa !22, !llfi_index !23
  %15 = getelementptr inbounds %struct.NuclideGridPoint* %14, i64 %12, !llfi_index !24
  br label %20, !llfi_index !25

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %struct.NuclideGridPoint** %nuclide_grids, i64 %1, !llfi_index !26
  %18 = load %struct.NuclideGridPoint** %17, align 8, !tbaa !22, !llfi_index !27
  %19 = getelementptr inbounds %struct.NuclideGridPoint* %18, i64 %7, !llfi_index !28
  br label %20, !llfi_index !29

; <label>:20                                      ; preds = %16, %10
  %low.0 = phi %struct.NuclideGridPoint* [ %15, %10 ], [ %19, %16 ], !llfi_index !30
  %21 = getelementptr inbounds %struct.NuclideGridPoint* %low.0, i64 1, i32 0, !llfi_index !31
  %22 = load double* %21, align 8, !tbaa !32, !llfi_index !34
  %23 = fsub double %22, %p_energy, !llfi_index !35
  %24 = getelementptr inbounds %struct.NuclideGridPoint* %low.0, i64 0, i32 0, !llfi_index !36
  %25 = load double* %24, align 8, !tbaa !32, !llfi_index !37
  %26 = fsub double %22, %25, !llfi_index !38
  %27 = fdiv double %23, %26, !llfi_index !39
  %28 = getelementptr inbounds %struct.NuclideGridPoint* %low.0, i64 1, i32 1, !llfi_index !40
  %29 = load double* %28, align 8, !tbaa !41, !llfi_index !42
  %30 = getelementptr inbounds %struct.NuclideGridPoint* %low.0, i64 0, i32 1, !llfi_index !43
  %31 = getelementptr inbounds %struct.NuclideGridPoint* %low.0, i64 1, i32 2, !llfi_index !44
  %32 = load double* %31, align 8, !tbaa !45, !llfi_index !46
  %33 = bitcast double* %30 to <2 x double>*, !llfi_index !47
  %34 = load <2 x double>* %33, align 8, !tbaa !48, !llfi_index !49
  %35 = insertelement <2 x double> undef, double %29, i32 0, !llfi_index !50
  %36 = insertelement <2 x double> %35, double %32, i32 1, !llfi_index !51
  %37 = fsub <2 x double> %36, %34, !llfi_index !52
  %38 = insertelement <2 x double> undef, double %27, i32 0, !llfi_index !53
  %39 = insertelement <2 x double> %38, double %27, i32 1, !llfi_index !54
  %40 = fmul <2 x double> %37, %39, !llfi_index !55
  %41 = fsub <2 x double> %36, %40, !llfi_index !56
  %42 = bitcast double* %xs_vector to <2 x double>*, !llfi_index !57
  store <2 x double> %41, <2 x double>* %42, align 8, !tbaa !48, !llfi_index !58
  %43 = getelementptr inbounds %struct.NuclideGridPoint* %low.0, i64 1, i32 3, !llfi_index !59
  %44 = load double* %43, align 8, !tbaa !60, !llfi_index !61
  %45 = getelementptr inbounds %struct.NuclideGridPoint* %low.0, i64 0, i32 3, !llfi_index !62
  %46 = getelementptr inbounds double* %xs_vector, i64 2, !llfi_index !63
  %47 = getelementptr inbounds %struct.NuclideGridPoint* %low.0, i64 1, i32 4, !llfi_index !64
  %48 = load double* %47, align 8, !tbaa !65, !llfi_index !66
  %49 = bitcast double* %45 to <2 x double>*, !llfi_index !67
  %50 = load <2 x double>* %49, align 8, !tbaa !48, !llfi_index !68
  %51 = insertelement <2 x double> undef, double %44, i32 0, !llfi_index !69
  %52 = insertelement <2 x double> %51, double %48, i32 1, !llfi_index !70
  %53 = fsub <2 x double> %52, %50, !llfi_index !71
  %54 = fmul <2 x double> %53, %39, !llfi_index !72
  %55 = fsub <2 x double> %52, %54, !llfi_index !73
  %56 = bitcast double* %46 to <2 x double>*, !llfi_index !74
  store <2 x double> %55, <2 x double>* %56, align 8, !tbaa !48, !llfi_index !75
  %57 = getelementptr inbounds %struct.NuclideGridPoint* %low.0, i64 1, i32 5, !llfi_index !76
  %58 = load double* %57, align 8, !tbaa !77, !llfi_index !78
  %59 = getelementptr inbounds %struct.NuclideGridPoint* %low.0, i64 0, i32 5, !llfi_index !79
  %60 = load double* %59, align 8, !tbaa !77, !llfi_index !80
  %61 = fsub double %58, %60, !llfi_index !81
  %62 = fmul double %27, %61, !llfi_index !82
  %63 = fsub double %58, %62, !llfi_index !83
  %64 = getelementptr inbounds double* %xs_vector, i64 4, !llfi_index !84
  store double %63, double* %64, align 8, !tbaa !48, !llfi_index !85
  ret void, !llfi_index !86
}

; Function Attrs: nounwind uwtable
define void @calculate_macro_xs(double %p_energy, i32 %mat, i64 %n_isotopes, i64 %n_gridpoints, i32* noalias nocapture readonly %num_nucs, double** noalias nocapture readonly %concs, %struct.GridPoint* noalias nocapture readonly %energy_grid, %struct.NuclideGridPoint** noalias nocapture readonly %nuclide_grids, i32** noalias nocapture readonly %mats, double* noalias nocapture %macro_xs_vector) #0 {
  %macro_xs_vector10 = bitcast double* %macro_xs_vector to i8*, !llfi_index !87
  %xs_vector = alloca [5 x double], align 16, !llfi_index !88
  %1 = bitcast [5 x double]* %xs_vector to i8*, !llfi_index !89
  call void @llvm.lifetime.start(i64 40, i8* %1) #1, !llfi_index !90
  call void @llvm.memset.p0i8.i64(i8* %macro_xs_vector10, i8 0, i64 40, i32 8, i1 false), !llfi_index !91
  %2 = sext i32 %mat to i64, !llfi_index !92
  %3 = getelementptr inbounds i32* %num_nucs, i64 %2, !llfi_index !93
  %4 = load i32* %3, align 4, !tbaa !12, !llfi_index !94
  %5 = icmp sgt i32 %4, 0, !llfi_index !95
  br i1 %5, label %.lr.ph, label %._crit_edge, !llfi_index !96

.lr.ph:                                           ; preds = %0
  %6 = mul nsw i64 %n_gridpoints, %n_isotopes, !llfi_index !97
  %7 = tail call i64 @grid_search(i64 %6, double %p_energy, %struct.GridPoint* %energy_grid), !llfi_index !98
  %8 = getelementptr inbounds i32** %mats, i64 %2, !llfi_index !99
  %9 = load i32** %8, align 8, !tbaa !22, !llfi_index !100
  %10 = getelementptr inbounds double** %concs, i64 %2, !llfi_index !101
  %11 = load double** %10, align 8, !tbaa !22, !llfi_index !102
  %12 = trunc i64 %7 to i32, !llfi_index !103
  %13 = getelementptr inbounds [5 x double]* %xs_vector, i64 0, i64 0, !llfi_index !104
  %14 = load i32* %3, align 4, !tbaa !12, !llfi_index !105
  br label %15, !llfi_index !106

; <label>:15                                      ; preds = %27, %.lr.ph
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next6, %27 ], !llfi_index !107
  %16 = getelementptr inbounds i32* %9, i64 %indvars.iv5, !llfi_index !108
  %17 = load i32* %16, align 4, !tbaa !12, !llfi_index !109
  %18 = getelementptr inbounds double* %11, i64 %indvars.iv5, !llfi_index !110
  %19 = load double* %18, align 8, !tbaa !48, !llfi_index !111
  call void @calculate_micro_xs(double %p_energy, i32 %17, i64 undef, i64 %n_gridpoints, %struct.GridPoint* %energy_grid, %struct.NuclideGridPoint** %nuclide_grids, i32 %12, double* %13), !llfi_index !112
  br label %20, !llfi_index !113

; <label>:20                                      ; preds = %20, %15
  %indvars.iv = phi i64 [ 0, %15 ], [ %indvars.iv.next, %20 ], !llfi_index !114
  %21 = getelementptr inbounds [5 x double]* %xs_vector, i64 0, i64 %indvars.iv, !llfi_index !115
  %22 = load double* %21, align 8, !tbaa !48, !llfi_index !116
  %23 = fmul double %19, %22, !llfi_index !117
  %24 = getelementptr inbounds double* %macro_xs_vector, i64 %indvars.iv, !llfi_index !118
  %25 = load double* %24, align 8, !tbaa !48, !llfi_index !119
  %26 = fadd double %25, %23, !llfi_index !120
  store double %26, double* %24, align 8, !tbaa !48, !llfi_index !121
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !122
  %exitcond = icmp eq i64 %indvars.iv.next, 5, !llfi_index !123
  br i1 %exitcond, label %27, label %20, !llfi_index !124

; <label>:27                                      ; preds = %20
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !llfi_index !125
  %28 = trunc i64 %indvars.iv.next6 to i32, !llfi_index !126
  %29 = icmp slt i32 %28, %14, !llfi_index !127
  br i1 %29, label %15, label %._crit_edge, !llfi_index !128

._crit_edge:                                      ; preds = %27, %0
  call void @llvm.lifetime.end(i64 40, i8* %1) #1, !llfi_index !129
  ret void, !llfi_index !130
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readonly uwtable
define i64 @grid_search(i64 %n, double %quarry, %struct.GridPoint* nocapture readonly %A) #2 {
  %1 = add nsw i64 %n, -1, !llfi_index !131
  %2 = icmp sgt i64 %1, 1, !llfi_index !132
  br i1 %2, label %.lr.ph, label %._crit_edge, !llfi_index !133

.lr.ph:                                           ; preds = %.lr.ph, %0
  %length.03 = phi i64 [ %8, %.lr.ph ], [ %1, %0 ], !llfi_index !134
  %lowerLimit.02 = phi i64 [ %lowerLimit.0., %.lr.ph ], [ 0, %0 ], !llfi_index !135
  %upperLimit.01 = phi i64 [ %.upperLimit.0, %.lr.ph ], [ %1, %0 ], !llfi_index !136
  %3 = sdiv i64 %length.03, 2, !llfi_index !137
  %4 = add nsw i64 %3, %lowerLimit.02, !llfi_index !138
  %5 = getelementptr inbounds %struct.GridPoint* %A, i64 %4, i32 0, !llfi_index !139
  %6 = load double* %5, align 8, !tbaa !140, !llfi_index !141
  %7 = fcmp ogt double %6, %quarry, !llfi_index !142
  %.upperLimit.0 = select i1 %7, i64 %4, i64 %upperLimit.01, !llfi_index !143
  %lowerLimit.0. = select i1 %7, i64 %lowerLimit.02, i64 %4, !llfi_index !144
  %8 = sub nsw i64 %.upperLimit.0, %lowerLimit.0., !llfi_index !145
  %9 = icmp sgt i64 %8, 1, !llfi_index !146
  br i1 %9, label %.lr.ph, label %._crit_edge, !llfi_index !147

._crit_edge:                                      ; preds = %.lr.ph, %0
  %lowerLimit.0.lcssa = phi i64 [ 0, %0 ], [ %lowerLimit.0., %.lr.ph ], !llfi_index !148
  ret i64 %lowerLimit.0.lcssa, !llfi_index !149
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @generate_grids(%struct.NuclideGridPoint** nocapture readonly %nuclide_grids, i64 %n_isotopes, i64 %n_gridpoints) #0 {
  %1 = icmp sgt i64 %n_isotopes, 0, !llfi_index !150
  br i1 %1, label %.preheader.lr.ph, label %._crit_edge3, !llfi_index !151

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp sgt i64 %n_gridpoints, 0, !llfi_index !152
  br label %.preheader, !llfi_index !153

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %i.02 = phi i64 [ 0, %.preheader.lr.ph ], [ %36, %._crit_edge ], !llfi_index !154
  br i1 %2, label %.lr.ph, label %._crit_edge, !llfi_index !155

.lr.ph:                                           ; preds = %.preheader
  %3 = getelementptr inbounds %struct.NuclideGridPoint** %nuclide_grids, i64 %i.02, !llfi_index !156
  br label %4, !llfi_index !157

; <label>:4                                       ; preds = %4, %.lr.ph
  %j.01 = phi i64 [ 0, %.lr.ph ], [ %35, %4 ], !llfi_index !158
  %5 = tail call i32 @rand() #1, !llfi_index !159
  %6 = sitofp i32 %5 to double, !llfi_index !160
  %7 = fdiv double %6, 0x41DFFFFFFFC00000, !llfi_index !161
  %8 = load %struct.NuclideGridPoint** %3, align 8, !tbaa !22, !llfi_index !162
  %9 = getelementptr inbounds %struct.NuclideGridPoint* %8, i64 %j.01, i32 0, !llfi_index !163
  store double %7, double* %9, align 8, !tbaa !32, !llfi_index !164
  %10 = tail call i32 @rand() #1, !llfi_index !165
  %11 = sitofp i32 %10 to double, !llfi_index !166
  %12 = fdiv double %11, 0x41DFFFFFFFC00000, !llfi_index !167
  %13 = load %struct.NuclideGridPoint** %3, align 8, !tbaa !22, !llfi_index !168
  %14 = getelementptr inbounds %struct.NuclideGridPoint* %13, i64 %j.01, i32 1, !llfi_index !169
  store double %12, double* %14, align 8, !tbaa !41, !llfi_index !170
  %15 = tail call i32 @rand() #1, !llfi_index !171
  %16 = sitofp i32 %15 to double, !llfi_index !172
  %17 = fdiv double %16, 0x41DFFFFFFFC00000, !llfi_index !173
  %18 = load %struct.NuclideGridPoint** %3, align 8, !tbaa !22, !llfi_index !174
  %19 = getelementptr inbounds %struct.NuclideGridPoint* %18, i64 %j.01, i32 2, !llfi_index !175
  store double %17, double* %19, align 8, !tbaa !45, !llfi_index !176
  %20 = tail call i32 @rand() #1, !llfi_index !177
  %21 = sitofp i32 %20 to double, !llfi_index !178
  %22 = fdiv double %21, 0x41DFFFFFFFC00000, !llfi_index !179
  %23 = load %struct.NuclideGridPoint** %3, align 8, !tbaa !22, !llfi_index !180
  %24 = getelementptr inbounds %struct.NuclideGridPoint* %23, i64 %j.01, i32 3, !llfi_index !181
  store double %22, double* %24, align 8, !tbaa !60, !llfi_index !182
  %25 = tail call i32 @rand() #1, !llfi_index !183
  %26 = sitofp i32 %25 to double, !llfi_index !184
  %27 = fdiv double %26, 0x41DFFFFFFFC00000, !llfi_index !185
  %28 = load %struct.NuclideGridPoint** %3, align 8, !tbaa !22, !llfi_index !186
  %29 = getelementptr inbounds %struct.NuclideGridPoint* %28, i64 %j.01, i32 4, !llfi_index !187
  store double %27, double* %29, align 8, !tbaa !65, !llfi_index !188
  %30 = tail call i32 @rand() #1, !llfi_index !189
  %31 = sitofp i32 %30 to double, !llfi_index !190
  %32 = fdiv double %31, 0x41DFFFFFFFC00000, !llfi_index !191
  %33 = load %struct.NuclideGridPoint** %3, align 8, !tbaa !22, !llfi_index !192
  %34 = getelementptr inbounds %struct.NuclideGridPoint* %33, i64 %j.01, i32 5, !llfi_index !193
  store double %32, double* %34, align 8, !tbaa !77, !llfi_index !194
  %35 = add nsw i64 %j.01, 1, !llfi_index !195
  %exitcond = icmp eq i64 %35, %n_gridpoints, !llfi_index !196
  br i1 %exitcond, label %._crit_edge, label %4, !llfi_index !197

._crit_edge:                                      ; preds = %4, %.preheader
  %36 = add nsw i64 %i.02, 1, !llfi_index !198
  %exitcond4 = icmp eq i64 %36, %n_isotopes, !llfi_index !199
  br i1 %exitcond4, label %._crit_edge3, label %.preheader, !llfi_index !200

._crit_edge3:                                     ; preds = %._crit_edge, %0
  ret void, !llfi_index !201
}

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: nounwind uwtable
define void @generate_grids_v(%struct.NuclideGridPoint** nocapture readonly %nuclide_grids, i64 %n_isotopes, i64 %n_gridpoints) #0 {
  %1 = icmp sgt i64 %n_isotopes, 0, !llfi_index !202
  br i1 %1, label %.preheader.lr.ph, label %._crit_edge3, !llfi_index !203

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp sgt i64 %n_gridpoints, 0, !llfi_index !204
  br label %.preheader, !llfi_index !205

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %i.02 = phi i64 [ 0, %.preheader.lr.ph ], [ %24, %._crit_edge ], !llfi_index !206
  br i1 %2, label %.lr.ph, label %._crit_edge, !llfi_index !207

.lr.ph:                                           ; preds = %.preheader
  %3 = getelementptr inbounds %struct.NuclideGridPoint** %nuclide_grids, i64 %i.02, !llfi_index !208
  br label %4, !llfi_index !209

; <label>:4                                       ; preds = %4, %.lr.ph
  %j.01 = phi i64 [ 0, %.lr.ph ], [ %23, %4 ], !llfi_index !210
  %5 = tail call double @rn_v() #1, !llfi_index !211
  %6 = load %struct.NuclideGridPoint** %3, align 8, !tbaa !22, !llfi_index !212
  %7 = getelementptr inbounds %struct.NuclideGridPoint* %6, i64 %j.01, i32 0, !llfi_index !213
  store double %5, double* %7, align 8, !tbaa !32, !llfi_index !214
  %8 = tail call double @rn_v() #1, !llfi_index !215
  %9 = load %struct.NuclideGridPoint** %3, align 8, !tbaa !22, !llfi_index !216
  %10 = getelementptr inbounds %struct.NuclideGridPoint* %9, i64 %j.01, i32 1, !llfi_index !217
  store double %8, double* %10, align 8, !tbaa !41, !llfi_index !218
  %11 = tail call double @rn_v() #1, !llfi_index !219
  %12 = load %struct.NuclideGridPoint** %3, align 8, !tbaa !22, !llfi_index !220
  %13 = getelementptr inbounds %struct.NuclideGridPoint* %12, i64 %j.01, i32 2, !llfi_index !221
  store double %11, double* %13, align 8, !tbaa !45, !llfi_index !222
  %14 = tail call double @rn_v() #1, !llfi_index !223
  %15 = load %struct.NuclideGridPoint** %3, align 8, !tbaa !22, !llfi_index !224
  %16 = getelementptr inbounds %struct.NuclideGridPoint* %15, i64 %j.01, i32 3, !llfi_index !225
  store double %14, double* %16, align 8, !tbaa !60, !llfi_index !226
  %17 = tail call double @rn_v() #1, !llfi_index !227
  %18 = load %struct.NuclideGridPoint** %3, align 8, !tbaa !22, !llfi_index !228
  %19 = getelementptr inbounds %struct.NuclideGridPoint* %18, i64 %j.01, i32 4, !llfi_index !229
  store double %17, double* %19, align 8, !tbaa !65, !llfi_index !230
  %20 = tail call double @rn_v() #1, !llfi_index !231
  %21 = load %struct.NuclideGridPoint** %3, align 8, !tbaa !22, !llfi_index !232
  %22 = getelementptr inbounds %struct.NuclideGridPoint* %21, i64 %j.01, i32 5, !llfi_index !233
  store double %20, double* %22, align 8, !tbaa !77, !llfi_index !234
  %23 = add nsw i64 %j.01, 1, !llfi_index !235
  %exitcond = icmp eq i64 %23, %n_gridpoints, !llfi_index !236
  br i1 %exitcond, label %._crit_edge, label %4, !llfi_index !237

._crit_edge:                                      ; preds = %4, %.preheader
  %24 = add nsw i64 %i.02, 1, !llfi_index !238
  %exitcond4 = icmp eq i64 %24, %n_isotopes, !llfi_index !239
  br i1 %exitcond4, label %._crit_edge3, label %.preheader, !llfi_index !240

._crit_edge3:                                     ; preds = %._crit_edge, %0
  ret void, !llfi_index !241
}

; Function Attrs: nounwind uwtable
define void @sort_nuclide_grids(%struct.NuclideGridPoint** nocapture readonly %nuclide_grids, i64 %n_isotopes, i64 %n_gridpoints) #0 {
  %1 = icmp sgt i64 %n_isotopes, 0, !llfi_index !242
  br i1 %1, label %.lr.ph, label %._crit_edge, !llfi_index !243

.lr.ph:                                           ; preds = %.lr.ph, %0
  %i.01 = phi i64 [ %5, %.lr.ph ], [ 0, %0 ], !llfi_index !244
  %2 = getelementptr inbounds %struct.NuclideGridPoint** %nuclide_grids, i64 %i.01, !llfi_index !245
  %3 = load %struct.NuclideGridPoint** %2, align 8, !tbaa !22, !llfi_index !246
  %4 = bitcast %struct.NuclideGridPoint* %3 to i8*, !llfi_index !247
  tail call void @qsort(i8* %4, i64 %n_gridpoints, i64 48, i32 (i8*, i8*)* @NGP_compare) #1, !llfi_index !248
  %5 = add nsw i64 %i.01, 1, !llfi_index !249
  %exitcond = icmp eq i64 %5, %n_isotopes, !llfi_index !250
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !251

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void, !llfi_index !252
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #4

; Function Attrs: nounwind uwtable
define noalias %struct.GridPoint* @generate_energy_grid(i64 %n_isotopes, i64 %n_gridpoints, %struct.NuclideGridPoint** nocapture readonly %nuclide_grids) #0 {
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([36 x i8]* @str, i64 0, i64 0)), !llfi_index !253
  %1 = mul nsw i64 %n_gridpoints, %n_isotopes, !llfi_index !254
  %2 = shl i64 %1, 4, !llfi_index !255
  %3 = tail call noalias i8* @malloc(i64 %2) #1, !llfi_index !256
  %4 = bitcast i8* %3 to %struct.GridPoint*, !llfi_index !257
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([41 x i8]* @str7, i64 0, i64 0)), !llfi_index !258
  %5 = tail call %struct.NuclideGridPoint** @gpmatrix(i64 %n_isotopes, i64 %n_gridpoints) #1, !llfi_index !259
  %6 = load %struct.NuclideGridPoint** %5, align 8, !tbaa !22, !llfi_index !260
  %7 = bitcast %struct.NuclideGridPoint* %6 to i8*, !llfi_index !261
  %8 = load %struct.NuclideGridPoint** %nuclide_grids, align 8, !tbaa !22, !llfi_index !262
  %9 = bitcast %struct.NuclideGridPoint* %8 to i8*, !llfi_index !263
  %10 = mul i64 %1, 48, !llfi_index !264
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %9, i64 %10, i32 8, i1 false), !llfi_index !265
  %11 = load %struct.NuclideGridPoint** %5, align 8, !tbaa !22, !llfi_index !266
  %12 = bitcast %struct.NuclideGridPoint* %11 to i8*, !llfi_index !267
  tail call void @qsort(i8* %12, i64 %1, i64 48, i32 (i8*, i8*)* @NGP_compare) #1, !llfi_index !268
  %puts3 = tail call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str8, i64 0, i64 0)), !llfi_index !269
  %13 = icmp sgt i64 %1, 0, !llfi_index !270
  br i1 %13, label %.lr.ph7, label %._crit_edge8, !llfi_index !271

.lr.ph7:                                          ; preds = %0
  %14 = load %struct.NuclideGridPoint** %5, align 8, !tbaa !22, !llfi_index !272
  %15 = mul i64 %n_gridpoints, %n_isotopes, !llfi_index !273
  br label %16, !llfi_index !274

; <label>:16                                      ; preds = %16, %.lr.ph7
  %i.05 = phi i64 [ 0, %.lr.ph7 ], [ %20, %16 ], !llfi_index !275
  %17 = getelementptr inbounds %struct.NuclideGridPoint* %14, i64 %i.05, i32 0, !llfi_index !276
  %18 = load double* %17, align 8, !tbaa !32, !llfi_index !277
  %19 = getelementptr inbounds %struct.GridPoint* %4, i64 %i.05, i32 0, !llfi_index !278
  store double %18, double* %19, align 8, !tbaa !140, !llfi_index !279
  %20 = add nsw i64 %i.05, 1, !llfi_index !280
  %exitcond9 = icmp eq i64 %20, %15, !llfi_index !281
  br i1 %exitcond9, label %._crit_edge8, label %16, !llfi_index !282

._crit_edge8:                                     ; preds = %16, %0
  tail call void @gpmatrix_free(%struct.NuclideGridPoint** %5) #1, !llfi_index !283
  %21 = shl i64 %n_isotopes, 2, !llfi_index !284
  %22 = mul i64 %21, %1, !llfi_index !285
  %23 = tail call noalias i8* @malloc(i64 %22) #1, !llfi_index !286
  %24 = bitcast i8* %23 to i32*, !llfi_index !287
  %25 = icmp eq i8* %23, null, !llfi_index !288
  br i1 %25, label %28, label %.preheader, !llfi_index !289

.preheader:                                       ; preds = %._crit_edge8
  %26 = icmp sgt i64 %1, 0, !llfi_index !290
  br i1 %26, label %.lr.ph, label %._crit_edge, !llfi_index !291

.lr.ph:                                           ; preds = %.preheader
  %27 = mul i64 %n_gridpoints, %n_isotopes, !llfi_index !292
  br label %31, !llfi_index !293

; <label>:28                                      ; preds = %._crit_edge8
  %29 = load %struct._IO_FILE** @stderr, align 8, !tbaa !22, !llfi_index !294
  %30 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str3, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %29) #10, !llfi_index !295
  tail call void @exit(i32 1) #11, !llfi_index !296
  unreachable, !llfi_index !297

; <label>:31                                      ; preds = %31, %.lr.ph
  %i1.04 = phi i64 [ 0, %.lr.ph ], [ %35, %31 ], !llfi_index !298
  %32 = mul nsw i64 %i1.04, %n_isotopes, !llfi_index !299
  %33 = getelementptr inbounds i32* %24, i64 %32, !llfi_index !300
  %34 = getelementptr inbounds %struct.GridPoint* %4, i64 %i1.04, i32 1, !llfi_index !301
  store i32* %33, i32** %34, align 8, !tbaa !4, !llfi_index !302
  %35 = add nsw i64 %i1.04, 1, !llfi_index !303
  %exitcond = icmp eq i64 %35, %27, !llfi_index !304
  br i1 %exitcond, label %._crit_edge, label %31, !llfi_index !305

._crit_edge:                                      ; preds = %31, %.preheader
  ret %struct.GridPoint* %4, !llfi_index !306
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define void @set_grid_ptrs(%struct.GridPoint* nocapture readonly %energy_grid, %struct.NuclideGridPoint** nocapture readonly %nuclide_grids, i64 %n_isotopes, i64 %n_gridpoints) #0 {
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8]* @str9, i64 0, i64 0)), !llfi_index !307
  %1 = mul nsw i64 %n_gridpoints, %n_isotopes, !llfi_index !308
  %2 = icmp sgt i64 %1, 0, !llfi_index !309
  br i1 %2, label %.lr.ph4, label %._crit_edge5, !llfi_index !310

.lr.ph4:                                          ; preds = %0
  %3 = sitofp i64 %1 to double, !llfi_index !311
  %4 = icmp sgt i64 %n_isotopes, 0, !llfi_index !312
  %5 = trunc i64 %n_gridpoints to i32, !llfi_index !313
  %6 = mul i64 %n_gridpoints, %n_isotopes, !llfi_index !314
  br label %7, !llfi_index !315

; <label>:7                                       ; preds = %._crit_edge, %.lr.ph4
  %i.02 = phi i64 [ 0, %.lr.ph4 ], [ %25, %._crit_edge ], !llfi_index !316
  %8 = getelementptr inbounds %struct.GridPoint* %energy_grid, i64 %i.02, i32 0, !llfi_index !317
  %9 = load double* %8, align 8, !tbaa !140, !llfi_index !318
  %10 = srem i64 %i.02, 200, !llfi_index !319
  %11 = icmp eq i64 %10, 0, !llfi_index !320
  br i1 %11, label %12, label %.preheader, !llfi_index !321

; <label>:12                                      ; preds = %7
  %13 = sitofp i64 %i.02 to double, !llfi_index !322
  %14 = fmul double %13, 1.000000e+02, !llfi_index !323
  %15 = fdiv double %14, %3, !llfi_index !324
  %16 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str5, i64 0, i64 0), double %15) #1, !llfi_index !325
  br label %.preheader, !llfi_index !326

.preheader:                                       ; preds = %12, %7
  br i1 %4, label %.lr.ph, label %._crit_edge, !llfi_index !327

.lr.ph:                                           ; preds = %.preheader
  %17 = getelementptr inbounds %struct.GridPoint* %energy_grid, i64 %i.02, i32 1, !llfi_index !328
  br label %18, !llfi_index !329

; <label>:18                                      ; preds = %18, %.lr.ph
  %j.01 = phi i64 [ 0, %.lr.ph ], [ %24, %18 ], !llfi_index !330
  %19 = getelementptr inbounds %struct.NuclideGridPoint** %nuclide_grids, i64 %j.01, !llfi_index !331
  %20 = load %struct.NuclideGridPoint** %19, align 8, !tbaa !22, !llfi_index !332
  %21 = tail call i32 @binary_search(%struct.NuclideGridPoint* %20, double %9, i32 %5) #1, !llfi_index !333
  %22 = load i32** %17, align 8, !tbaa !4, !llfi_index !334
  %23 = getelementptr inbounds i32* %22, i64 %j.01, !llfi_index !335
  store i32 %21, i32* %23, align 4, !tbaa !12, !llfi_index !336
  %24 = add nsw i64 %j.01, 1, !llfi_index !337
  %exitcond = icmp eq i64 %24, %n_isotopes, !llfi_index !338
  br i1 %exitcond, label %._crit_edge, label %18, !llfi_index !339

._crit_edge:                                      ; preds = %18, %.preheader
  %25 = add nsw i64 %i.02, 1, !llfi_index !340
  %exitcond6 = icmp eq i64 %25, %6, !llfi_index !341
  br i1 %exitcond6, label %._crit_edge5, label %7, !llfi_index !342

._crit_edge5:                                     ; preds = %._crit_edge, %0
  %putchar = tail call i32 @putchar(i32 10) #1, !llfi_index !343
  ret void, !llfi_index !344
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @putchar(i32) #1

; Function Attrs: nounwind uwtable
define void @logo(i32 %version) #0 {
  %v = alloca [100 x i8], align 16, !llfi_index !345
  tail call void @border_print(), !llfi_index !346
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([487 x i8]* @str17, i64 0, i64 0)), !llfi_index !347
  tail call void @border_print(), !llfi_index !348
  tail call void @center_print(i8* getelementptr inbounds ([41 x i8]* @.str18, i64 0, i64 0), i32 79), !llfi_index !349
  %1 = getelementptr inbounds [100 x i8]* %v, i64 0, i64 0, !llfi_index !350
  call void @llvm.lifetime.start(i64 100, i8* %1) #1, !llfi_index !351
  %2 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([12 x i8]* @.str29, i64 0, i64 0), i32 %version) #1, !llfi_index !352
  call void @center_print(i8* %1, i32 79), !llfi_index !353
  tail call void @border_print(), !llfi_index !354
  call void @llvm.lifetime.end(i64 100, i8* %1) #1, !llfi_index !355
  ret void, !llfi_index !356
}

; Function Attrs: nounwind uwtable
define void @border_print() #0 {
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str44, i64 0, i64 0)), !llfi_index !357
  ret void, !llfi_index !358
}

; Function Attrs: nounwind uwtable
define void @center_print(i8* nocapture readonly %s, i32 %width) #0 {
  %1 = tail call i64 @strlen(i8* %s) #12, !llfi_index !359
  %2 = trunc i64 %1 to i32, !llfi_index !360
  %3 = sub nsw i32 %width, %2, !llfi_index !361
  %4 = sdiv i32 %3, 2, !llfi_index !362
  %5 = icmp slt i32 %3, -1, !llfi_index !363
  %6 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !364
  br i1 %5, label %._crit_edge, label %.lr.ph, !llfi_index !365

.lr.ph:                                           ; preds = %.lr.ph, %0
  %7 = phi %struct._IO_FILE* [ %10, %.lr.ph ], [ %6, %0 ], !llfi_index !366
  %i.04 = phi i32 [ %8, %.lr.ph ], [ 0, %0 ], !llfi_index !367
  %fputc = tail call i32 @fputc(i32 32, %struct._IO_FILE* %7), !llfi_index !368
  %8 = add nsw i32 %i.04, 1, !llfi_index !369
  %9 = icmp slt i32 %i.04, %4, !llfi_index !370
  %10 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !371
  br i1 %9, label %.lr.ph, label %._crit_edge, !llfi_index !372

._crit_edge:                                      ; preds = %.lr.ph, %0
  %.lcssa = phi %struct._IO_FILE* [ %6, %0 ], [ %10, %.lr.ph ], !llfi_index !373
  %11 = tail call i32 @fputs(i8* %s, %struct._IO_FILE* %.lcssa) #1, !llfi_index !374
  %12 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !375
  %fputc3 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %12), !llfi_index !376
  ret void, !llfi_index !377
}

; Function Attrs: nounwind
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture readonly, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind uwtable
define void @print_results(%struct.Inputs* byval nocapture readonly align 8 %in, i32 %mype, double %runtime, i32 %nprocs, i64 %vhash) #0 {
  %1 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 3, !llfi_index !378
  %2 = icmp eq i32 %mype, 0, !llfi_index !379
  br i1 %2, label %3, label %19, !llfi_index !380

; <label>:3                                       ; preds = %0
  %4 = load i32* %1, align 8, !tbaa !381, !llfi_index !384
  %5 = sitofp i32 %4 to double, !llfi_index !385
  %6 = fdiv double %5, %runtime, !llfi_index !386
  %7 = fptosi double %6 to i32, !llfi_index !387
  tail call void @border_print(), !llfi_index !388
  tail call void @center_print(i8* getelementptr inbounds ([8 x i8]* @.str512, i64 0, i64 0), i32 79), !llfi_index !389
  tail call void @border_print(), !llfi_index !390
  %8 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 0, !llfi_index !391
  %9 = load i32* %8, align 8, !tbaa !392, !llfi_index !393
  %10 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str613, i64 0, i64 0), i32 %9) #1, !llfi_index !394
  %11 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str714, i64 0, i64 0)) #1, !llfi_index !395
  %12 = load i32* %1, align 8, !tbaa !381, !llfi_index !396
  %13 = sext i32 %12 to i64, !llfi_index !397
  tail call void @fancy_int(i64 %13), !llfi_index !398
  %14 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str8, i64 0, i64 0), i64 %vhash) #1, !llfi_index !399
  tail call void @border_print(), !llfi_index !400
  %15 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #1, !llfi_index !401
  %16 = load i32* %8, align 8, !tbaa !392, !llfi_index !402
  %17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32 %16, i32 %7) #1, !llfi_index !403
  %18 = tail call i32 @fclose(%struct._IO_FILE* %15) #1, !llfi_index !404
  br label %19, !llfi_index !405

; <label>:19                                      ; preds = %3, %0
  ret void, !llfi_index !406
}

; Function Attrs: nounwind uwtable
define void @fancy_int(i64 %a) #0 {
  %1 = icmp slt i64 %a, 1000, !llfi_index !407
  br i1 %1, label %2, label %4, !llfi_index !408

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0), i64 %a) #1, !llfi_index !409
  br label %26, !llfi_index !410

; <label>:4                                       ; preds = %0
  %a.off = add i64 %a, -1000, !llfi_index !411
  %5 = icmp ult i64 %a.off, 999000, !llfi_index !412
  br i1 %5, label %6, label %10, !llfi_index !413

; <label>:6                                       ; preds = %4
  %7 = sdiv i64 %a, 1000, !llfi_index !414
  %8 = srem i64 %a, 1000, !llfi_index !415
  %9 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i64 %7, i64 %8) #1, !llfi_index !416
  br label %26, !llfi_index !417

; <label>:10                                      ; preds = %4
  %a.off4 = add i64 %a, -1000000, !llfi_index !418
  %11 = icmp ult i64 %a.off4, 999000000, !llfi_index !419
  br i1 %11, label %12, label %18, !llfi_index !420

; <label>:12                                      ; preds = %10
  %13 = sdiv i64 %a, 1000000, !llfi_index !421
  %14 = srem i64 %a, 1000000, !llfi_index !422
  %15 = sdiv i64 %14, 1000, !llfi_index !423
  %16 = srem i64 %a, 1000, !llfi_index !424
  %17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str26, i64 0, i64 0), i64 %13, i64 %15, i64 %16) #1, !llfi_index !425
  br label %26, !llfi_index !426

; <label>:18                                      ; preds = %10
  %19 = sdiv i64 %a, 1000000000, !llfi_index !427
  %20 = srem i64 %a, 1000000000, !llfi_index !428
  %21 = sdiv i64 %20, 1000000, !llfi_index !429
  %22 = srem i64 %a, 1000000, !llfi_index !430
  %23 = sdiv i64 %22, 1000, !llfi_index !431
  %24 = srem i64 %a, 1000, !llfi_index !432
  %25 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str27, i64 0, i64 0), i64 %19, i64 %21, i64 %23, i64 %24) #1, !llfi_index !433
  br label %26, !llfi_index !434

; <label>:26                                      ; preds = %18, %12, %6, %2
  ret void, !llfi_index !435
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #3

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind uwtable
define void @print_inputs(%struct.Inputs* byval align 8 %in, i32 %nprocs, i32 %version) #0 {
  %1 = tail call i64 @estimate_mem_usage(%struct.Inputs* byval align 8 %in) #1, !llfi_index !436
  tail call void @logo(i32 %version), !llfi_index !437
  tail call void @center_print(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i32 79), !llfi_index !438
  tail call void @border_print(), !llfi_index !439
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str45, i64 0, i64 0)), !llfi_index !440
  %2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str14, i64 0, i64 0), i32 12) #1, !llfi_index !441
  %3 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 4, !llfi_index !442
  %4 = load i8** %3, align 8, !tbaa !443, !llfi_index !444
  %5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str15, i64 0, i64 0), i8* %4) #1, !llfi_index !445
  %6 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 1, !llfi_index !446
  %7 = load i64* %6, align 8, !tbaa !447, !llfi_index !448
  %8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str16, i64 0, i64 0), i64 %7) #1, !llfi_index !449
  %9 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str17, i64 0, i64 0)) #1, !llfi_index !450
  %10 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 2, !llfi_index !451
  %11 = load i64* %10, align 8, !tbaa !452, !llfi_index !453
  tail call void @fancy_int(i64 %11), !llfi_index !454
  %12 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str1815, i64 0, i64 0)) #1, !llfi_index !455
  %13 = load i64* %6, align 8, !tbaa !447, !llfi_index !456
  %14 = load i64* %10, align 8, !tbaa !452, !llfi_index !457
  %15 = mul nsw i64 %14, %13, !llfi_index !458
  tail call void @fancy_int(i64 %15), !llfi_index !459
  %16 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str19, i64 0, i64 0)) #1, !llfi_index !460
  %17 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 3, !llfi_index !461
  %18 = load i32* %17, align 8, !tbaa !381, !llfi_index !462
  %19 = sext i32 %18 to i64, !llfi_index !463
  tail call void @fancy_int(i64 %19), !llfi_index !464
  %20 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 0, !llfi_index !465
  %21 = load i32* %20, align 8, !tbaa !392, !llfi_index !466
  %22 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str20, i64 0, i64 0), i32 %21) #1, !llfi_index !467
  %23 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str21, i64 0, i64 0)) #1, !llfi_index !468
  %sext = shl i64 %1, 32, !llfi_index !469
  %24 = ashr exact i64 %sext, 32, !llfi_index !470
  tail call void @fancy_int(i64 %24), !llfi_index !471
  tail call void @border_print(), !llfi_index !472
  tail call void @center_print(i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0), i32 79), !llfi_index !473
  tail call void @border_print(), !llfi_index !474
  ret void, !llfi_index !475
}

; Function Attrs: noreturn nounwind uwtable
define void @print_CLI_error() #7 {
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8]* @str46, i64 0, i64 0)), !llfi_index !476
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str47, i64 0, i64 0)), !llfi_index !477
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([51 x i8]* @str48, i64 0, i64 0)), !llfi_index !478
  %puts3 = tail call i32 @puts(i8* getelementptr inbounds ([72 x i8]* @str49, i64 0, i64 0)), !llfi_index !479
  %puts4 = tail call i32 @puts(i8* getelementptr inbounds ([76 x i8]* @str50, i64 0, i64 0)), !llfi_index !480
  %puts5 = tail call i32 @puts(i8* getelementptr inbounds ([56 x i8]* @str51, i64 0, i64 0)), !llfi_index !481
  %puts6 = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8]* @str52, i64 0, i64 0)), !llfi_index !482
  %puts7 = tail call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str53, i64 0, i64 0)), !llfi_index !483
  tail call void @exit(i32 4) #11, !llfi_index !484
  unreachable, !llfi_index !485
}

; Function Attrs: nounwind uwtable
define void @read_CLI(%struct.Inputs* noalias nocapture sret %agg.result, i32 %argc, i8** nocapture readonly %argv) #0 {
  %1 = tail call noalias i8* @malloc(i64 6) #1, !llfi_index !486
  store i8 108, i8* %1, align 1, !tbaa !487, !llfi_index !488
  %2 = getelementptr inbounds i8* %1, i64 1, !llfi_index !489
  store i8 97, i8* %2, align 1, !tbaa !487, !llfi_index !490
  %3 = getelementptr inbounds i8* %1, i64 2, !llfi_index !491
  store i8 114, i8* %3, align 1, !tbaa !487, !llfi_index !492
  %4 = getelementptr inbounds i8* %1, i64 3, !llfi_index !493
  store i8 103, i8* %4, align 1, !tbaa !487, !llfi_index !494
  %5 = getelementptr inbounds i8* %1, i64 4, !llfi_index !495
  store i8 101, i8* %5, align 1, !tbaa !487, !llfi_index !496
  %6 = getelementptr inbounds i8* %1, i64 5, !llfi_index !497
  store i8 0, i8* %6, align 1, !tbaa !487, !llfi_index !498
  %7 = icmp sgt i32 %argc, 1, !llfi_index !499
  br i1 %7, label %.lr.ph, label %.thread90, !llfi_index !500

.lr.ph:                                           ; preds = %114, %0
  %input.sroa.1741.075 = phi i8* [ %input.sroa.1741.1, %114 ], [ %1, %0 ], !llfi_index !501
  %input.sroa.14.074 = phi i32 [ %input.sroa.14.1, %114 ], [ 15000000, %0 ], !llfi_index !502
  %input.sroa.9.073 = phi i64 [ %input.sroa.9.1, %114 ], [ 11303, %0 ], !llfi_index !503
  %input.sroa.0.072 = phi i32 [ %input.sroa.0.1, %114 ], [ 1, %0 ], !llfi_index !504
  %user_g.071 = phi i32 [ %user_g.1, %114 ], [ 0, %0 ], !llfi_index !505
  %i.070 = phi i32 [ %115, %114 ], [ 1, %0 ], !llfi_index !506
  %8 = sext i32 %i.070 to i64, !llfi_index !507
  %9 = getelementptr inbounds i8** %argv, i64 %8, !llfi_index !508
  %10 = load i8** %9, align 8, !tbaa !22, !llfi_index !509
  %11 = load i8* %10, align 1, !tbaa !487, !llfi_index !510
  %12 = zext i8 %11 to i32, !llfi_index !511
  %13 = sub nsw i32 45, %12, !llfi_index !512
  %14 = icmp eq i8 %11, 45, !llfi_index !513
  br i1 %14, label %15, label %26, !llfi_index !514

; <label>:15                                      ; preds = %.lr.ph
  %16 = getelementptr inbounds i8* %10, i64 1, !llfi_index !515
  %17 = load i8* %16, align 1, !tbaa !487, !llfi_index !516
  %18 = zext i8 %17 to i32, !llfi_index !517
  %19 = sub nsw i32 116, %18, !llfi_index !518
  %20 = icmp eq i8 %17, 116, !llfi_index !519
  br i1 %20, label %21, label %26, !llfi_index !520

; <label>:21                                      ; preds = %15
  %22 = getelementptr inbounds i8* %10, i64 2, !llfi_index !521
  %23 = load i8* %22, align 1, !tbaa !487, !llfi_index !522
  %24 = zext i8 %23 to i32, !llfi_index !523
  %25 = sub nsw i32 0, %24, !llfi_index !524
  br label %26, !llfi_index !525

; <label>:26                                      ; preds = %21, %15, %.lr.ph
  %__result.0 = phi i32 [ %25, %21 ], [ %19, %15 ], [ %13, %.lr.ph ], !llfi_index !526
  %phitmp = icmp eq i32 %__result.0, 0, !llfi_index !527
  br i1 %phitmp, label %27, label %36, !llfi_index !528

; <label>:27                                      ; preds = %26
  %28 = add nsw i32 %i.070, 1, !llfi_index !529
  %29 = icmp slt i32 %28, %argc, !llfi_index !530
  br i1 %29, label %30, label %35, !llfi_index !531

; <label>:30                                      ; preds = %27
  %31 = sext i32 %28 to i64, !llfi_index !532
  %32 = getelementptr inbounds i8** %argv, i64 %31, !llfi_index !533
  %33 = load i8** %32, align 8, !tbaa !22, !llfi_index !534
  %34 = tail call i32 @atoi(i8* %33) #12, !llfi_index !535
  br label %114, !llfi_index !536

; <label>:35                                      ; preds = %27
  tail call void @print_CLI_error(), !llfi_index !537
  unreachable, !llfi_index !538

; <label>:36                                      ; preds = %26
  %37 = load i8* %10, align 1, !tbaa !487, !llfi_index !539
  %38 = zext i8 %37 to i32, !llfi_index !540
  %39 = sub nsw i32 45, %38, !llfi_index !541
  %40 = icmp eq i8 %37, 45, !llfi_index !542
  br i1 %40, label %41, label %52, !llfi_index !543

; <label>:41                                      ; preds = %36
  %42 = getelementptr inbounds i8* %10, i64 1, !llfi_index !544
  %43 = load i8* %42, align 1, !tbaa !487, !llfi_index !545
  %44 = zext i8 %43 to i32, !llfi_index !546
  %45 = sub nsw i32 103, %44, !llfi_index !547
  %46 = icmp eq i8 %43, 103, !llfi_index !548
  br i1 %46, label %47, label %52, !llfi_index !549

; <label>:47                                      ; preds = %41
  %48 = getelementptr inbounds i8* %10, i64 2, !llfi_index !550
  %49 = load i8* %48, align 1, !tbaa !487, !llfi_index !551
  %50 = zext i8 %49 to i32, !llfi_index !552
  %51 = sub nsw i32 0, %50, !llfi_index !553
  br label %52, !llfi_index !554

; <label>:52                                      ; preds = %47, %41, %36
  %__result4.0 = phi i32 [ %51, %47 ], [ %45, %41 ], [ %39, %36 ], !llfi_index !555
  %phitmp42 = icmp eq i32 %__result4.0, 0, !llfi_index !556
  br i1 %phitmp42, label %53, label %62, !llfi_index !557

; <label>:53                                      ; preds = %52
  %54 = add nsw i32 %i.070, 1, !llfi_index !558
  %55 = icmp slt i32 %54, %argc, !llfi_index !559
  br i1 %55, label %56, label %61, !llfi_index !560

; <label>:56                                      ; preds = %53
  %57 = sext i32 %54 to i64, !llfi_index !561
  %58 = getelementptr inbounds i8** %argv, i64 %57, !llfi_index !562
  %59 = load i8** %58, align 8, !tbaa !22, !llfi_index !563
  %60 = tail call i64 @atol(i8* %59) #12, !llfi_index !564
  br label %114, !llfi_index !565

; <label>:61                                      ; preds = %53
  tail call void @print_CLI_error(), !llfi_index !566
  unreachable, !llfi_index !567

; <label>:62                                      ; preds = %52
  %63 = load i8* %10, align 1, !tbaa !487, !llfi_index !568
  %64 = zext i8 %63 to i32, !llfi_index !569
  %65 = sub nsw i32 45, %64, !llfi_index !570
  %66 = icmp eq i8 %63, 45, !llfi_index !571
  br i1 %66, label %67, label %78, !llfi_index !572

; <label>:67                                      ; preds = %62
  %68 = getelementptr inbounds i8* %10, i64 1, !llfi_index !573
  %69 = load i8* %68, align 1, !tbaa !487, !llfi_index !574
  %70 = zext i8 %69 to i32, !llfi_index !575
  %71 = sub nsw i32 108, %70, !llfi_index !576
  %72 = icmp eq i8 %69, 108, !llfi_index !577
  br i1 %72, label %73, label %78, !llfi_index !578

; <label>:73                                      ; preds = %67
  %74 = getelementptr inbounds i8* %10, i64 2, !llfi_index !579
  %75 = load i8* %74, align 1, !tbaa !487, !llfi_index !580
  %76 = zext i8 %75 to i32, !llfi_index !581
  %77 = sub nsw i32 0, %76, !llfi_index !582
  br label %78, !llfi_index !583

; <label>:78                                      ; preds = %73, %67, %62
  %__result8.0 = phi i32 [ %77, %73 ], [ %71, %67 ], [ %65, %62 ], !llfi_index !584
  %phitmp43 = icmp eq i32 %__result8.0, 0, !llfi_index !585
  br i1 %phitmp43, label %79, label %88, !llfi_index !586

; <label>:79                                      ; preds = %78
  %80 = add nsw i32 %i.070, 1, !llfi_index !587
  %81 = icmp slt i32 %80, %argc, !llfi_index !588
  br i1 %81, label %82, label %87, !llfi_index !589

; <label>:82                                      ; preds = %79
  %83 = sext i32 %80 to i64, !llfi_index !590
  %84 = getelementptr inbounds i8** %argv, i64 %83, !llfi_index !591
  %85 = load i8** %84, align 8, !tbaa !22, !llfi_index !592
  %86 = tail call i32 @atoi(i8* %85) #12, !llfi_index !593
  br label %114, !llfi_index !594

; <label>:87                                      ; preds = %79
  tail call void @print_CLI_error(), !llfi_index !595
  unreachable, !llfi_index !596

; <label>:88                                      ; preds = %78
  %89 = load i8* %10, align 1, !tbaa !487, !llfi_index !597
  %90 = zext i8 %89 to i32, !llfi_index !598
  %91 = sub nsw i32 45, %90, !llfi_index !599
  %92 = icmp eq i8 %89, 45, !llfi_index !600
  br i1 %92, label %93, label %104, !llfi_index !601

; <label>:93                                      ; preds = %88
  %94 = getelementptr inbounds i8* %10, i64 1, !llfi_index !602
  %95 = load i8* %94, align 1, !tbaa !487, !llfi_index !603
  %96 = zext i8 %95 to i32, !llfi_index !604
  %97 = sub nsw i32 115, %96, !llfi_index !605
  %98 = icmp eq i8 %95, 115, !llfi_index !606
  br i1 %98, label %99, label %104, !llfi_index !607

; <label>:99                                      ; preds = %93
  %100 = getelementptr inbounds i8* %10, i64 2, !llfi_index !608
  %101 = load i8* %100, align 1, !tbaa !487, !llfi_index !609
  %102 = zext i8 %101 to i32, !llfi_index !610
  %103 = sub nsw i32 0, %102, !llfi_index !611
  br label %104, !llfi_index !612

; <label>:104                                     ; preds = %99, %93, %88
  %__result12.0 = phi i32 [ %103, %99 ], [ %97, %93 ], [ %91, %88 ], !llfi_index !613
  %phitmp44 = icmp eq i32 %__result12.0, 0, !llfi_index !614
  br i1 %phitmp44, label %105, label %113, !llfi_index !615

; <label>:105                                     ; preds = %104
  %106 = add nsw i32 %i.070, 1, !llfi_index !616
  %107 = icmp slt i32 %106, %argc, !llfi_index !617
  br i1 %107, label %108, label %112, !llfi_index !618

; <label>:108                                     ; preds = %105
  %109 = sext i32 %106 to i64, !llfi_index !619
  %110 = getelementptr inbounds i8** %argv, i64 %109, !llfi_index !620
  %111 = load i8** %110, align 8, !tbaa !22, !llfi_index !621
  br label %114, !llfi_index !622

; <label>:112                                     ; preds = %105
  tail call void @print_CLI_error(), !llfi_index !623
  unreachable, !llfi_index !624

; <label>:113                                     ; preds = %104
  tail call void @print_CLI_error(), !llfi_index !625
  unreachable, !llfi_index !626

; <label>:114                                     ; preds = %108, %82, %56, %30
  %i.1 = phi i32 [ %28, %30 ], [ %54, %56 ], [ %80, %82 ], [ %106, %108 ], !llfi_index !627
  %user_g.1 = phi i32 [ %user_g.071, %30 ], [ 1, %56 ], [ %user_g.071, %82 ], [ %user_g.071, %108 ], !llfi_index !628
  %input.sroa.0.1 = phi i32 [ %34, %30 ], [ %input.sroa.0.072, %56 ], [ %input.sroa.0.072, %82 ], [ %input.sroa.0.072, %108 ], !llfi_index !629
  %input.sroa.9.1 = phi i64 [ %input.sroa.9.073, %30 ], [ %60, %56 ], [ %input.sroa.9.073, %82 ], [ %input.sroa.9.073, %108 ], !llfi_index !630
  %input.sroa.14.1 = phi i32 [ %input.sroa.14.074, %30 ], [ %input.sroa.14.074, %56 ], [ %86, %82 ], [ %input.sroa.14.074, %108 ], !llfi_index !631
  %input.sroa.1741.1 = phi i8* [ %input.sroa.1741.075, %30 ], [ %input.sroa.1741.075, %56 ], [ %input.sroa.1741.075, %82 ], [ %111, %108 ], !llfi_index !632
  %115 = add nsw i32 %i.1, 1, !llfi_index !633
  %116 = icmp slt i32 %115, %argc, !llfi_index !634
  br i1 %116, label %.lr.ph, label %._crit_edge, !llfi_index !635

._crit_edge:                                      ; preds = %114
  %117 = icmp slt i32 %input.sroa.0.1, 1, !llfi_index !636
  br i1 %117, label %118, label %119, !llfi_index !637

; <label>:118                                     ; preds = %._crit_edge
  tail call void @print_CLI_error(), !llfi_index !638
  unreachable, !llfi_index !639

; <label>:119                                     ; preds = %._crit_edge
  %120 = icmp slt i64 %input.sroa.9.1, 1, !llfi_index !640
  br i1 %120, label %121, label %122, !llfi_index !641

; <label>:121                                     ; preds = %119
  tail call void @print_CLI_error(), !llfi_index !642
  unreachable, !llfi_index !643

; <label>:122                                     ; preds = %119
  %123 = icmp slt i32 %input.sroa.14.1, 1, !llfi_index !644
  br i1 %123, label %124, label %.thread90, !llfi_index !645

; <label>:124                                     ; preds = %122
  tail call void @print_CLI_error(), !llfi_index !646
  unreachable, !llfi_index !647

.thread90:                                        ; preds = %122, %0
  %user_g.0.lcssa848595 = phi i32 [ %user_g.1, %122 ], [ 0, %0 ], !llfi_index !648
  %input.sroa.0.0.lcssa838694 = phi i32 [ %input.sroa.0.1, %122 ], [ 1, %0 ], !llfi_index !649
  %input.sroa.9.0.lcssa828793 = phi i64 [ %input.sroa.9.1, %122 ], [ 11303, %0 ], !llfi_index !650
  %input.sroa.14.0.lcssa818892 = phi i32 [ %input.sroa.14.1, %122 ], [ 15000000, %0 ], !llfi_index !651
  %input.sroa.1741.0.lcssa808991 = phi i8* [ %input.sroa.1741.1, %122 ], [ %1, %0 ], !llfi_index !652
  %125 = tail call i32 @strcasecmp(i8* %input.sroa.1741.0.lcssa808991, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0)) #12, !llfi_index !653
  %126 = icmp eq i32 %125, 0, !llfi_index !654
  br i1 %126, label %137, label %127, !llfi_index !655

; <label>:127                                     ; preds = %.thread90
  %128 = tail call i32 @strcasecmp(i8* %input.sroa.1741.0.lcssa808991, i8* getelementptr inbounds ([6 x i8]* @.str41, i64 0, i64 0)) #12, !llfi_index !656
  %129 = icmp eq i32 %128, 0, !llfi_index !657
  br i1 %129, label %137, label %130, !llfi_index !658

; <label>:130                                     ; preds = %127
  %131 = tail call i32 @strcasecmp(i8* %input.sroa.1741.0.lcssa808991, i8* getelementptr inbounds ([3 x i8]* @.str42, i64 0, i64 0)) #12, !llfi_index !659
  %132 = icmp eq i32 %131, 0, !llfi_index !660
  br i1 %132, label %137, label %133, !llfi_index !661

; <label>:133                                     ; preds = %130
  %134 = tail call i32 @strcasecmp(i8* %input.sroa.1741.0.lcssa808991, i8* getelementptr inbounds ([4 x i8]* @.str43, i64 0, i64 0)) #12, !llfi_index !662
  %135 = icmp eq i32 %134, 0, !llfi_index !663
  br i1 %135, label %137, label %136, !llfi_index !664

; <label>:136                                     ; preds = %133
  tail call void @print_CLI_error(), !llfi_index !665
  unreachable, !llfi_index !666

; <label>:137                                     ; preds = %133, %130, %127, %.thread90
  %138 = tail call i32 @strcasecmp(i8* %input.sroa.1741.0.lcssa808991, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0)) #12, !llfi_index !667
  %139 = icmp eq i32 %138, 0, !llfi_index !668
  br i1 %139, label %148, label %140, !llfi_index !669

; <label>:140                                     ; preds = %137
  %141 = tail call i32 @strcasecmp(i8* %input.sroa.1741.0.lcssa808991, i8* getelementptr inbounds ([3 x i8]* @.str42, i64 0, i64 0)) #12, !llfi_index !670
  %142 = or i32 %141, %user_g.0.lcssa848595, !llfi_index !671
  %143 = icmp eq i32 %142, 0, !llfi_index !672
  br i1 %143, label %148, label %144, !llfi_index !673

; <label>:144                                     ; preds = %140
  %145 = tail call i32 @strcasecmp(i8* %input.sroa.1741.0.lcssa808991, i8* getelementptr inbounds ([4 x i8]* @.str43, i64 0, i64 0)) #12, !llfi_index !674
  %146 = or i32 %145, %user_g.0.lcssa848595, !llfi_index !675
  %147 = icmp eq i32 %146, 0, !llfi_index !676
  %.input.sroa.9.0 = select i1 %147, i64 501578, i64 %input.sroa.9.0.lcssa828793, !llfi_index !677
  br label %148, !llfi_index !678

; <label>:148                                     ; preds = %144, %140, %137
  %input.sroa.640.0 = phi i64 [ 68, %137 ], [ 355, %140 ], [ 355, %144 ], !llfi_index !679
  %input.sroa.9.2 = phi i64 [ %input.sroa.9.0.lcssa828793, %137 ], [ 238847, %140 ], [ %.input.sroa.9.0, %144 ], !llfi_index !680
  %149 = getelementptr inbounds %struct.Inputs* %agg.result, i64 0, i32 0, !llfi_index !681
  store i32 %input.sroa.0.0.lcssa838694, i32* %149, align 8, !llfi_index !682
  %150 = getelementptr inbounds %struct.Inputs* %agg.result, i64 0, i32 1, !llfi_index !683
  store i64 %input.sroa.640.0, i64* %150, align 8, !llfi_index !684
  %151 = getelementptr inbounds %struct.Inputs* %agg.result, i64 0, i32 2, !llfi_index !685
  store i64 %input.sroa.9.2, i64* %151, align 8, !llfi_index !686
  %152 = getelementptr inbounds %struct.Inputs* %agg.result, i64 0, i32 3, !llfi_index !687
  store i32 %input.sroa.14.0.lcssa818892, i32* %152, align 8, !llfi_index !688
  %153 = getelementptr inbounds %struct.Inputs* %agg.result, i64 0, i32 4, !llfi_index !689
  store i8* %input.sroa.1741.0.lcssa808991, i8** %153, align 8, !llfi_index !690
  ret void, !llfi_index !691
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nocapture readonly %__nptr) #8 {
  %1 = tail call i64 @strtol(i8* nocapture %__nptr, i8** null, i32 10) #1, !llfi_index !692
  %2 = trunc i64 %1 to i32, !llfi_index !693
  ret i32 %2, !llfi_index !694
}

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i64 @atol(i8* nocapture readonly %__nptr) #8 {
  %1 = tail call i64 @strtol(i8* nocapture %__nptr, i8** null, i32 10) #1, !llfi_index !695
  ret i64 %1, !llfi_index !696
}

; Function Attrs: nounwind uwtable
define double @get_wtime() #0 {
  %tv = alloca %struct.timeval, align 8, !llfi_index !697
  %1 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #1, !llfi_index !698
  %2 = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 0, !llfi_index !699
  %3 = load i64* %2, align 8, !tbaa !700, !llfi_index !702
  %4 = sitofp i64 %3 to double, !llfi_index !703
  %5 = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 1, !llfi_index !704
  %6 = load i64* %5, align 8, !tbaa !705, !llfi_index !706
  %7 = sitofp i64 %6 to double, !llfi_index !707
  %8 = fdiv double %7, 1.000000e+06, !llfi_index !708
  %9 = fadd double %4, %8, !llfi_index !709
  ret double %9, !llfi_index !710
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #3

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %seed = alloca i64, align 8, !llfi_index !711
  %in = alloca %struct.Inputs, align 8, !llfi_index !712
  %macro_xs_vector = alloca [5 x double], align 16, !llfi_index !713
  %line = alloca [256 x i8], align 16, !llfi_index !714
  call void @srand(i32 26) #1, !llfi_index !715
  %1 = bitcast %struct.Inputs* %in to i8*, !llfi_index !716
  call void @llvm.lifetime.start(i64 40, i8* %1) #1, !llfi_index !717
  call void @read_CLI(%struct.Inputs* sret %in, i32 %argc, i8** %argv) #1, !llfi_index !718
  call void @print_inputs(%struct.Inputs* byval align 8 %in, i32 undef, i32 13) #1, !llfi_index !719
  %puts = call i32 @puts(i8* getelementptr inbounds ([35 x i8]* @str54, i64 0, i64 0)), !llfi_index !720
  %2 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 1, !llfi_index !721
  %3 = load i64* %2, align 8, !tbaa !447, !llfi_index !722
  %4 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 2, !llfi_index !723
  %5 = load i64* %4, align 8, !tbaa !452, !llfi_index !724
  %6 = call %struct.NuclideGridPoint** @gpmatrix(i64 %3, i64 %5) #1, !llfi_index !725
  %7 = load i64* %2, align 8, !tbaa !447, !llfi_index !726
  %8 = load i64* %4, align 8, !tbaa !452, !llfi_index !727
  call void @generate_grids_v(%struct.NuclideGridPoint** %6, i64 %7, i64 %8) #1, !llfi_index !728
  %puts2 = call i32 @puts(i8* getelementptr inbounds ([32 x i8]* @str855, i64 0, i64 0)), !llfi_index !729
  %9 = load i64* %2, align 8, !tbaa !447, !llfi_index !730
  %10 = load i64* %4, align 8, !tbaa !452, !llfi_index !731
  call void @sort_nuclide_grids(%struct.NuclideGridPoint** %6, i64 %9, i64 %10) #1, !llfi_index !732
  %11 = load i64* %2, align 8, !tbaa !447, !llfi_index !733
  %12 = load i64* %4, align 8, !tbaa !452, !llfi_index !734
  %13 = call %struct.GridPoint* @generate_energy_grid(i64 %11, i64 %12, %struct.NuclideGridPoint** %6) #1, !llfi_index !735
  %14 = load i64* %2, align 8, !tbaa !447, !llfi_index !736
  %15 = load i64* %4, align 8, !tbaa !452, !llfi_index !737
  call void @set_grid_ptrs(%struct.GridPoint* %13, %struct.NuclideGridPoint** %6, i64 %14, i64 %15) #1, !llfi_index !738
  %puts3 = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str956, i64 0, i64 0)), !llfi_index !739
  %16 = load i64* %2, align 8, !tbaa !447, !llfi_index !740
  %17 = call i32* @load_num_nucs(i64 %16) #1, !llfi_index !741
  %18 = load i64* %2, align 8, !tbaa !447, !llfi_index !742
  %19 = call i32** @load_mats(i32* %17, i64 %18) #1, !llfi_index !743
  %20 = call double** @load_concs_v(i32* %17) #1, !llfi_index !744
  %putchar = call i32 @putchar(i32 10) #1, !llfi_index !745
  call void @border_print() #1, !llfi_index !746
  call void @center_print(i8* getelementptr inbounds ([11 x i8]* @.str448, i64 0, i64 0), i32 79) #1, !llfi_index !747
  call void @border_print() #1, !llfi_index !748
  %21 = call double @get_wtime(), !llfi_index !749
  %22 = bitcast [5 x double]* %macro_xs_vector to i8*, !llfi_index !750
  call void @llvm.lifetime.start(i64 40, i8* %22) #1, !llfi_index !751
  store i64 36, i64* %seed, align 8, !tbaa !752, !llfi_index !753
  %23 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 3, !llfi_index !754
  %24 = load i32* %23, align 8, !tbaa !381, !llfi_index !755
  %25 = icmp sgt i32 %24, 0, !llfi_index !756
  br i1 %25, label %.lr.ph, label %._crit_edge, !llfi_index !757

.lr.ph:                                           ; preds = %0
  %26 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 0, !llfi_index !758
  %27 = getelementptr inbounds [5 x double]* %macro_xs_vector, i64 0, i64 0, !llfi_index !759
  %28 = getelementptr inbounds [256 x i8]* %line, i64 0, i64 0, !llfi_index !760
  %29 = getelementptr inbounds [5 x double]* %macro_xs_vector, i64 0, i64 1, !llfi_index !761
  %30 = getelementptr inbounds [5 x double]* %macro_xs_vector, i64 0, i64 2, !llfi_index !762
  %31 = getelementptr inbounds [5 x double]* %macro_xs_vector, i64 0, i64 3, !llfi_index !763
  %32 = getelementptr inbounds [5 x double]* %macro_xs_vector, i64 0, i64 4, !llfi_index !764
  br label %33, !llfi_index !765

; <label>:33                                      ; preds = %47, %.lr.ph
  %34 = phi i32 [ %24, %.lr.ph ], [ %62, %47 ], !llfi_index !766
  %i.07 = phi i32 [ 0, %.lr.ph ], [ %61, %47 ], !llfi_index !767
  %vhash.06 = phi i64 [ 0, %.lr.ph ], [ %60, %47 ], !llfi_index !768
  %35 = srem i32 %i.07, 1000, !llfi_index !769
  %36 = icmp eq i32 %35, 0, !llfi_index !770
  br i1 %36, label %37, label %47, !llfi_index !771

; <label>:37                                      ; preds = %33
  %38 = sitofp i32 %i.07 to double, !llfi_index !772
  %39 = sitofp i32 %34 to double, !llfi_index !773
  %40 = load i32* %26, align 8, !tbaa !392, !llfi_index !774
  %41 = sitofp i32 %40 to double, !llfi_index !775
  %42 = fdiv double %39, %41, !llfi_index !776
  %43 = fdiv double %38, %42, !llfi_index !777
  %44 = fdiv double %43, %41, !llfi_index !778
  %45 = fmul double %44, 1.000000e+02, !llfi_index !779
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str549, i64 0, i64 0), double %45) #1, !llfi_index !780
  br label %47, !llfi_index !781

; <label>:47                                      ; preds = %37, %33
  %48 = call double @rn_v() #1, !llfi_index !782
  %49 = call i32 @pick_mat(i64* %seed) #1, !llfi_index !783
  %50 = load i64* %2, align 8, !tbaa !447, !llfi_index !784
  %51 = load i64* %4, align 8, !tbaa !452, !llfi_index !785
  call void @calculate_macro_xs(double %48, i32 %49, i64 %50, i64 %51, i32* %17, double** %20, %struct.GridPoint* %13, %struct.NuclideGridPoint** %6, i32** %19, double* %27) #1, !llfi_index !786
  call void @llvm.lifetime.start(i64 256, i8* %28) #1, !llfi_index !787
  %52 = load double* %27, align 16, !tbaa !48, !llfi_index !788
  %53 = load double* %29, align 8, !tbaa !48, !llfi_index !789
  %54 = load double* %30, align 16, !tbaa !48, !llfi_index !790
  %55 = load double* %31, align 8, !tbaa !48, !llfi_index !791
  %56 = load double* %32, align 16, !tbaa !48, !llfi_index !792
  %57 = call i32 (i8*, i8*, ...)* @sprintf(i8* %28, i8* getelementptr inbounds ([39 x i8]* @.str650, i64 0, i64 0), double %48, i32 %49, double %52, double %53, double %54, double %55, double %56) #1, !llfi_index !793
  %58 = call i32 @hash(i8* %28, i32 10000) #1, !llfi_index !794
  %59 = zext i32 %58 to i64, !llfi_index !795
  %60 = add i64 %59, %vhash.06, !llfi_index !796
  call void @llvm.lifetime.end(i64 256, i8* %28) #1, !llfi_index !797
  %61 = add nsw i32 %i.07, 1, !llfi_index !798
  %62 = load i32* %23, align 8, !tbaa !381, !llfi_index !799
  %63 = icmp slt i32 %61, %62, !llfi_index !800
  br i1 %63, label %33, label %._crit_edge, !llfi_index !801

._crit_edge:                                      ; preds = %47, %0
  %vhash.0.lcssa = phi i64 [ 0, %0 ], [ %60, %47 ], !llfi_index !802
  call void @llvm.lifetime.end(i64 40, i8* %22) #1, !llfi_index !803
  %putchar4 = call i32 @putchar(i32 10) #1, !llfi_index !804
  %puts5 = call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str10, i64 0, i64 0)), !llfi_index !805
  %64 = call double @get_wtime(), !llfi_index !806
  %65 = fsub double %64, %21, !llfi_index !807
  call void @print_results(%struct.Inputs* byval align 8 %in, i32 0, double %65, i32 undef, i64 %vhash.0.lcssa) #1, !llfi_index !808
  call void @llvm.lifetime.end(i64 40, i8* %1) #1, !llfi_index !809
  ret i32 0, !llfi_index !810
}

; Function Attrs: nounwind
declare void @srand(i32) #3

; Function Attrs: nounwind uwtable
define noalias i32* @load_num_nucs(i64 %n_isotopes) #0 {
  %1 = tail call noalias i8* @malloc(i64 48) #1, !llfi_index !811
  %2 = bitcast i8* %1 to i32*, !llfi_index !812
  %3 = icmp eq i64 %n_isotopes, 68, !llfi_index !813
  %. = select i1 %3, i32 34, i32 321, !llfi_index !814
  store i32 %., i32* %2, align 4, !tbaa !12, !llfi_index !815
  %4 = getelementptr inbounds i8* %1, i64 4, !llfi_index !816
  %5 = bitcast i8* %4 to i32*, !llfi_index !817
  store i32 5, i32* %5, align 4, !tbaa !12, !llfi_index !818
  %6 = getelementptr inbounds i8* %1, i64 8, !llfi_index !819
  %7 = bitcast i8* %6 to i32*, !llfi_index !820
  store i32 4, i32* %7, align 4, !tbaa !12, !llfi_index !821
  %8 = getelementptr inbounds i8* %1, i64 12, !llfi_index !822
  %9 = bitcast i8* %8 to i32*, !llfi_index !823
  store i32 4, i32* %9, align 4, !tbaa !12, !llfi_index !824
  %10 = getelementptr inbounds i8* %1, i64 16, !llfi_index !825
  %11 = bitcast i8* %10 to i32*, !llfi_index !826
  store i32 27, i32* %11, align 4, !tbaa !12, !llfi_index !827
  %12 = getelementptr inbounds i8* %1, i64 20, !llfi_index !828
  %13 = bitcast i8* %12 to i32*, !llfi_index !829
  store i32 21, i32* %13, align 4, !tbaa !12, !llfi_index !830
  %14 = getelementptr inbounds i8* %1, i64 24, !llfi_index !831
  %15 = bitcast i8* %14 to i32*, !llfi_index !832
  store i32 21, i32* %15, align 4, !tbaa !12, !llfi_index !833
  %16 = getelementptr inbounds i8* %1, i64 28, !llfi_index !834
  %17 = bitcast i8* %16 to i32*, !llfi_index !835
  store i32 21, i32* %17, align 4, !tbaa !12, !llfi_index !836
  %18 = getelementptr inbounds i8* %1, i64 32, !llfi_index !837
  %19 = bitcast i8* %18 to i32*, !llfi_index !838
  store i32 21, i32* %19, align 4, !tbaa !12, !llfi_index !839
  %20 = getelementptr inbounds i8* %1, i64 36, !llfi_index !840
  %21 = bitcast i8* %20 to i32*, !llfi_index !841
  store i32 21, i32* %21, align 4, !tbaa !12, !llfi_index !842
  %22 = getelementptr inbounds i8* %1, i64 40, !llfi_index !843
  %23 = bitcast i8* %22 to i32*, !llfi_index !844
  store i32 9, i32* %23, align 4, !tbaa !12, !llfi_index !845
  %24 = getelementptr inbounds i8* %1, i64 44, !llfi_index !846
  %25 = bitcast i8* %24 to i32*, !llfi_index !847
  store i32 9, i32* %25, align 4, !tbaa !12, !llfi_index !848
  ret i32* %2, !llfi_index !849
}

; Function Attrs: nounwind uwtable
define noalias i32** @load_mats(i32* nocapture readonly %num_nucs, i64 %n_isotopes) #0 {
  %mats0_Lrg = alloca [321 x i32], align 16, !llfi_index !850
  %1 = tail call noalias i8* @malloc(i64 96) #1, !llfi_index !851
  %2 = bitcast i8* %1 to i32**, !llfi_index !852
  br label %3, !llfi_index !853

; <label>:3                                       ; preds = %3, %0
  %indvars.iv4 = phi i64 [ 0, %0 ], [ %indvars.iv.next5, %3 ], !llfi_index !854
  %4 = getelementptr inbounds i32* %num_nucs, i64 %indvars.iv4, !llfi_index !855
  %5 = load i32* %4, align 4, !tbaa !12, !llfi_index !856
  %6 = sext i32 %5 to i64, !llfi_index !857
  %7 = shl nsw i64 %6, 2, !llfi_index !858
  %8 = tail call noalias i8* @malloc(i64 %7) #1, !llfi_index !859
  %9 = bitcast i8* %8 to i32*, !llfi_index !860
  %10 = getelementptr inbounds i32** %2, i64 %indvars.iv4, !llfi_index !861
  store i32* %9, i32** %10, align 8, !tbaa !22, !llfi_index !862
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !llfi_index !863
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 12, !llfi_index !864
  br i1 %exitcond6, label %11, label %3, !llfi_index !865

; <label>:11                                      ; preds = %3
  %12 = bitcast [321 x i32]* %mats0_Lrg to i8*, !llfi_index !866
  call void @llvm.lifetime.start(i64 1284, i8* %12) #1, !llfi_index !867
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast ([321 x i32]* @load_mats.mats0_Lrg to i8*), i64 1284, i32 16, i1 false), !llfi_index !868
  br label %13, !llfi_index !869

; <label>:13                                      ; preds = %13, %11
  %indvars.iv = phi i64 [ 0, %11 ], [ %indvars.iv.next, %13 ], !llfi_index !870
  %14 = add nsw i64 %indvars.iv, 68, !llfi_index !871
  %15 = add nsw i64 %indvars.iv, 34, !llfi_index !872
  %16 = getelementptr inbounds [321 x i32]* %mats0_Lrg, i64 0, i64 %15, !llfi_index !873
  %17 = trunc i64 %14 to i32, !llfi_index !874
  store i32 %17, i32* %16, align 4, !tbaa !12, !llfi_index !875
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !876
  %exitcond = icmp eq i64 %indvars.iv.next, 287, !llfi_index !877
  br i1 %exitcond, label %18, label %13, !llfi_index !878

; <label>:18                                      ; preds = %13
  %19 = icmp eq i64 %n_isotopes, 68, !llfi_index !879
  %20 = load i32** %2, align 8, !tbaa !22, !llfi_index !880
  %21 = bitcast i32* %20 to i8*, !llfi_index !881
  %22 = load i32* %num_nucs, align 4, !tbaa !12, !llfi_index !882
  %23 = sext i32 %22 to i64, !llfi_index !883
  %24 = shl nsw i64 %23, 2, !llfi_index !884
  br i1 %19, label %25, label %26, !llfi_index !885

; <label>:25                                      ; preds = %18
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* bitcast ([34 x i32]* @load_mats.mats0_Sml to i8*), i64 %24, i32 4, i1 false), !llfi_index !886
  br label %27, !llfi_index !887

; <label>:26                                      ; preds = %18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %12, i64 %24, i32 4, i1 false), !llfi_index !888
  br label %27, !llfi_index !889

; <label>:27                                      ; preds = %26, %25
  %28 = getelementptr inbounds i8* %1, i64 8, !llfi_index !890
  %29 = bitcast i8* %28 to i32**, !llfi_index !891
  %30 = load i32** %29, align 8, !tbaa !22, !llfi_index !892
  %31 = bitcast i32* %30 to i8*, !llfi_index !893
  %32 = getelementptr inbounds i32* %num_nucs, i64 1, !llfi_index !894
  %33 = load i32* %32, align 4, !tbaa !12, !llfi_index !895
  %34 = sext i32 %33 to i64, !llfi_index !896
  %35 = shl nsw i64 %34, 2, !llfi_index !897
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* bitcast ([5 x i32]* @load_mats.mats1 to i8*), i64 %35, i32 4, i1 false), !llfi_index !898
  %36 = getelementptr inbounds i8* %1, i64 16, !llfi_index !899
  %37 = bitcast i8* %36 to i32**, !llfi_index !900
  %38 = load i32** %37, align 8, !tbaa !22, !llfi_index !901
  %39 = bitcast i32* %38 to i8*, !llfi_index !902
  %40 = getelementptr inbounds i32* %num_nucs, i64 2, !llfi_index !903
  %41 = load i32* %40, align 4, !tbaa !12, !llfi_index !904
  %42 = sext i32 %41 to i64, !llfi_index !905
  %43 = shl nsw i64 %42, 2, !llfi_index !906
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* bitcast ([4 x i32]* @load_mats.mats2 to i8*), i64 %43, i32 4, i1 false), !llfi_index !907
  %44 = getelementptr inbounds i8* %1, i64 24, !llfi_index !908
  %45 = bitcast i8* %44 to i32**, !llfi_index !909
  %46 = load i32** %45, align 8, !tbaa !22, !llfi_index !910
  %47 = bitcast i32* %46 to i8*, !llfi_index !911
  %48 = getelementptr inbounds i32* %num_nucs, i64 3, !llfi_index !912
  %49 = load i32* %48, align 4, !tbaa !12, !llfi_index !913
  %50 = sext i32 %49 to i64, !llfi_index !914
  %51 = shl nsw i64 %50, 2, !llfi_index !915
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* bitcast ([4 x i32]* @load_mats.mats3 to i8*), i64 %51, i32 4, i1 false), !llfi_index !916
  %52 = getelementptr inbounds i8* %1, i64 32, !llfi_index !917
  %53 = bitcast i8* %52 to i32**, !llfi_index !918
  %54 = load i32** %53, align 8, !tbaa !22, !llfi_index !919
  %55 = bitcast i32* %54 to i8*, !llfi_index !920
  %56 = getelementptr inbounds i32* %num_nucs, i64 4, !llfi_index !921
  %57 = load i32* %56, align 4, !tbaa !12, !llfi_index !922
  %58 = sext i32 %57 to i64, !llfi_index !923
  %59 = shl nsw i64 %58, 2, !llfi_index !924
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* bitcast ([27 x i32]* @load_mats.mats4 to i8*), i64 %59, i32 4, i1 false), !llfi_index !925
  %60 = getelementptr inbounds i8* %1, i64 40, !llfi_index !926
  %61 = bitcast i8* %60 to i32**, !llfi_index !927
  %62 = load i32** %61, align 8, !tbaa !22, !llfi_index !928
  %63 = bitcast i32* %62 to i8*, !llfi_index !929
  %64 = getelementptr inbounds i32* %num_nucs, i64 5, !llfi_index !930
  %65 = load i32* %64, align 4, !tbaa !12, !llfi_index !931
  %66 = sext i32 %65 to i64, !llfi_index !932
  %67 = shl nsw i64 %66, 2, !llfi_index !933
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* bitcast ([21 x i32]* @load_mats.mats5 to i8*), i64 %67, i32 4, i1 false), !llfi_index !934
  %68 = getelementptr inbounds i8* %1, i64 48, !llfi_index !935
  %69 = bitcast i8* %68 to i32**, !llfi_index !936
  %70 = load i32** %69, align 8, !tbaa !22, !llfi_index !937
  %71 = bitcast i32* %70 to i8*, !llfi_index !938
  %72 = getelementptr inbounds i32* %num_nucs, i64 6, !llfi_index !939
  %73 = load i32* %72, align 4, !tbaa !12, !llfi_index !940
  %74 = sext i32 %73 to i64, !llfi_index !941
  %75 = shl nsw i64 %74, 2, !llfi_index !942
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* bitcast ([21 x i32]* @load_mats.mats6 to i8*), i64 %75, i32 4, i1 false), !llfi_index !943
  %76 = getelementptr inbounds i8* %1, i64 56, !llfi_index !944
  %77 = bitcast i8* %76 to i32**, !llfi_index !945
  %78 = load i32** %77, align 8, !tbaa !22, !llfi_index !946
  %79 = bitcast i32* %78 to i8*, !llfi_index !947
  %80 = getelementptr inbounds i32* %num_nucs, i64 7, !llfi_index !948
  %81 = load i32* %80, align 4, !tbaa !12, !llfi_index !949
  %82 = sext i32 %81 to i64, !llfi_index !950
  %83 = shl nsw i64 %82, 2, !llfi_index !951
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* bitcast ([21 x i32]* @load_mats.mats7 to i8*), i64 %83, i32 4, i1 false), !llfi_index !952
  %84 = getelementptr inbounds i8* %1, i64 64, !llfi_index !953
  %85 = bitcast i8* %84 to i32**, !llfi_index !954
  %86 = load i32** %85, align 8, !tbaa !22, !llfi_index !955
  %87 = bitcast i32* %86 to i8*, !llfi_index !956
  %88 = getelementptr inbounds i32* %num_nucs, i64 8, !llfi_index !957
  %89 = load i32* %88, align 4, !tbaa !12, !llfi_index !958
  %90 = sext i32 %89 to i64, !llfi_index !959
  %91 = shl nsw i64 %90, 2, !llfi_index !960
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* bitcast ([21 x i32]* @load_mats.mats8 to i8*), i64 %91, i32 4, i1 false), !llfi_index !961
  %92 = getelementptr inbounds i8* %1, i64 72, !llfi_index !962
  %93 = bitcast i8* %92 to i32**, !llfi_index !963
  %94 = load i32** %93, align 8, !tbaa !22, !llfi_index !964
  %95 = bitcast i32* %94 to i8*, !llfi_index !965
  %96 = getelementptr inbounds i32* %num_nucs, i64 9, !llfi_index !966
  %97 = load i32* %96, align 4, !tbaa !12, !llfi_index !967
  %98 = sext i32 %97 to i64, !llfi_index !968
  %99 = shl nsw i64 %98, 2, !llfi_index !969
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* bitcast ([21 x i32]* @load_mats.mats9 to i8*), i64 %99, i32 4, i1 false), !llfi_index !970
  %100 = getelementptr inbounds i8* %1, i64 80, !llfi_index !971
  %101 = bitcast i8* %100 to i32**, !llfi_index !972
  %102 = load i32** %101, align 8, !tbaa !22, !llfi_index !973
  %103 = bitcast i32* %102 to i8*, !llfi_index !974
  %104 = getelementptr inbounds i32* %num_nucs, i64 10, !llfi_index !975
  %105 = load i32* %104, align 4, !tbaa !12, !llfi_index !976
  %106 = sext i32 %105 to i64, !llfi_index !977
  %107 = shl nsw i64 %106, 2, !llfi_index !978
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* bitcast ([9 x i32]* @load_mats.mats10 to i8*), i64 %107, i32 4, i1 false), !llfi_index !979
  %108 = getelementptr inbounds i8* %1, i64 88, !llfi_index !980
  %109 = bitcast i8* %108 to i32**, !llfi_index !981
  %110 = load i32** %109, align 8, !tbaa !22, !llfi_index !982
  %111 = bitcast i32* %110 to i8*, !llfi_index !983
  %112 = getelementptr inbounds i32* %num_nucs, i64 11, !llfi_index !984
  %113 = load i32* %112, align 4, !tbaa !12, !llfi_index !985
  %114 = sext i32 %113 to i64, !llfi_index !986
  %115 = shl nsw i64 %114, 2, !llfi_index !987
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* bitcast ([9 x i32]* @load_mats.mats11 to i8*), i64 %115, i32 4, i1 false), !llfi_index !988
  call void @llvm.lifetime.end(i64 1284, i8* %12) #1, !llfi_index !989
  ret i32** %2, !llfi_index !990
}

; Function Attrs: nounwind uwtable
define noalias double** @load_concs(i32* nocapture readonly %num_nucs) #0 {
  %1 = tail call noalias i8* @malloc(i64 96) #1, !llfi_index !991
  %2 = bitcast i8* %1 to double**, !llfi_index !992
  br label %3, !llfi_index !993

; <label>:3                                       ; preds = %3, %0
  %indvars.iv8 = phi i64 [ 0, %0 ], [ %indvars.iv.next9, %3 ], !llfi_index !994
  %4 = getelementptr inbounds i32* %num_nucs, i64 %indvars.iv8, !llfi_index !995
  %5 = load i32* %4, align 4, !tbaa !12, !llfi_index !996
  %6 = sext i32 %5 to i64, !llfi_index !997
  %7 = shl nsw i64 %6, 3, !llfi_index !998
  %8 = tail call noalias i8* @malloc(i64 %7) #1, !llfi_index !999
  %9 = bitcast i8* %8 to double*, !llfi_index !1000
  %10 = getelementptr inbounds double** %2, i64 %indvars.iv8, !llfi_index !1001
  store double* %9, double** %10, align 8, !tbaa !22, !llfi_index !1002
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !llfi_index !1003
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 12, !llfi_index !1004
  br i1 %exitcond10, label %.preheader, label %3, !llfi_index !1005

.preheader:                                       ; preds = %._crit_edge, %3
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %._crit_edge ], [ 0, %3 ], !llfi_index !1006
  %11 = getelementptr inbounds i32* %num_nucs, i64 %indvars.iv6, !llfi_index !1007
  %12 = load i32* %11, align 4, !tbaa !12, !llfi_index !1008
  %13 = icmp sgt i32 %12, 0, !llfi_index !1009
  br i1 %13, label %.lr.ph, label %._crit_edge, !llfi_index !1010

.lr.ph:                                           ; preds = %.preheader
  %14 = getelementptr inbounds double** %2, i64 %indvars.iv6, !llfi_index !1011
  %15 = load double** %14, align 8, !tbaa !22, !llfi_index !1012
  br label %16, !llfi_index !1013

; <label>:16                                      ; preds = %16, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %16 ], !llfi_index !1014
  %17 = tail call i32 @rand() #1, !llfi_index !1015
  %18 = sitofp i32 %17 to double, !llfi_index !1016
  %19 = fdiv double %18, 0x41DFFFFFFFC00000, !llfi_index !1017
  %20 = getelementptr inbounds double* %15, i64 %indvars.iv, !llfi_index !1018
  store double %19, double* %20, align 8, !tbaa !48, !llfi_index !1019
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1020
  %21 = load i32* %11, align 4, !tbaa !12, !llfi_index !1021
  %22 = trunc i64 %indvars.iv.next to i32, !llfi_index !1022
  %23 = icmp slt i32 %22, %21, !llfi_index !1023
  br i1 %23, label %16, label %._crit_edge, !llfi_index !1024

._crit_edge:                                      ; preds = %16, %.preheader
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !llfi_index !1025
  %exitcond = icmp eq i64 %indvars.iv.next7, 12, !llfi_index !1026
  br i1 %exitcond, label %24, label %.preheader, !llfi_index !1027

; <label>:24                                      ; preds = %._crit_edge
  ret double** %2, !llfi_index !1028
}

; Function Attrs: nounwind uwtable
define noalias double** @load_concs_v(i32* nocapture readonly %num_nucs) #0 {
  %1 = tail call noalias i8* @malloc(i64 96) #1, !llfi_index !1029
  %2 = bitcast i8* %1 to double**, !llfi_index !1030
  br label %3, !llfi_index !1031

; <label>:3                                       ; preds = %3, %0
  %indvars.iv8 = phi i64 [ 0, %0 ], [ %indvars.iv.next9, %3 ], !llfi_index !1032
  %4 = getelementptr inbounds i32* %num_nucs, i64 %indvars.iv8, !llfi_index !1033
  %5 = load i32* %4, align 4, !tbaa !12, !llfi_index !1034
  %6 = sext i32 %5 to i64, !llfi_index !1035
  %7 = shl nsw i64 %6, 3, !llfi_index !1036
  %8 = tail call noalias i8* @malloc(i64 %7) #1, !llfi_index !1037
  %9 = bitcast i8* %8 to double*, !llfi_index !1038
  %10 = getelementptr inbounds double** %2, i64 %indvars.iv8, !llfi_index !1039
  store double* %9, double** %10, align 8, !tbaa !22, !llfi_index !1040
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !llfi_index !1041
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 12, !llfi_index !1042
  br i1 %exitcond10, label %.preheader, label %3, !llfi_index !1043

.preheader:                                       ; preds = %._crit_edge, %3
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %._crit_edge ], [ 0, %3 ], !llfi_index !1044
  %11 = getelementptr inbounds i32* %num_nucs, i64 %indvars.iv6, !llfi_index !1045
  %12 = load i32* %11, align 4, !tbaa !12, !llfi_index !1046
  %13 = icmp sgt i32 %12, 0, !llfi_index !1047
  br i1 %13, label %.lr.ph, label %._crit_edge, !llfi_index !1048

.lr.ph:                                           ; preds = %.preheader
  %14 = getelementptr inbounds double** %2, i64 %indvars.iv6, !llfi_index !1049
  %15 = load double** %14, align 8, !tbaa !22, !llfi_index !1050
  br label %16, !llfi_index !1051

; <label>:16                                      ; preds = %16, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %16 ], !llfi_index !1052
  %17 = tail call double @rn_v() #1, !llfi_index !1053
  %18 = getelementptr inbounds double* %15, i64 %indvars.iv, !llfi_index !1054
  store double %17, double* %18, align 8, !tbaa !48, !llfi_index !1055
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1056
  %19 = load i32* %11, align 4, !tbaa !12, !llfi_index !1057
  %20 = trunc i64 %indvars.iv.next to i32, !llfi_index !1058
  %21 = icmp slt i32 %20, %19, !llfi_index !1059
  br i1 %21, label %16, label %._crit_edge, !llfi_index !1060

._crit_edge:                                      ; preds = %16, %.preheader
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !llfi_index !1061
  %exitcond = icmp eq i64 %indvars.iv.next7, 12, !llfi_index !1062
  br i1 %exitcond, label %22, label %.preheader, !llfi_index !1063

; <label>:22                                      ; preds = %._crit_edge
  ret double** %2, !llfi_index !1064
}

; Function Attrs: nounwind uwtable
define i32 @pick_mat(i64* nocapture readnone %seed) #0 {
  %dist = alloca [12 x double], align 16, !llfi_index !1065
  %1 = bitcast [12 x double]* %dist to i8*, !llfi_index !1066
  call void @llvm.lifetime.start(i64 96, i8* %1) #1, !llfi_index !1067
  %2 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 0, !llfi_index !1068
  store double 1.400000e-01, double* %2, align 16, !tbaa !48, !llfi_index !1069
  %3 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 1, !llfi_index !1070
  store double 5.200000e-02, double* %3, align 8, !tbaa !48, !llfi_index !1071
  %4 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 2, !llfi_index !1072
  store double 2.750000e-01, double* %4, align 16, !tbaa !48, !llfi_index !1073
  %5 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 3, !llfi_index !1074
  store double 1.340000e-01, double* %5, align 8, !tbaa !48, !llfi_index !1075
  %6 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 4, !llfi_index !1076
  store double 1.540000e-01, double* %6, align 16, !tbaa !48, !llfi_index !1077
  %7 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 5, !llfi_index !1078
  store double 6.400000e-02, double* %7, align 8, !tbaa !48, !llfi_index !1079
  %8 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 6, !llfi_index !1080
  store double 6.600000e-02, double* %8, align 16, !tbaa !48, !llfi_index !1081
  %9 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 7, !llfi_index !1082
  store double 5.500000e-02, double* %9, align 8, !tbaa !48, !llfi_index !1083
  %10 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 8, !llfi_index !1084
  store double 8.000000e-03, double* %10, align 16, !tbaa !48, !llfi_index !1085
  %11 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 9, !llfi_index !1086
  store double 1.500000e-02, double* %11, align 8, !tbaa !48, !llfi_index !1087
  %12 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 10, !llfi_index !1088
  store double 2.500000e-02, double* %12, align 16, !tbaa !48, !llfi_index !1089
  %13 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 11, !llfi_index !1090
  store double 1.300000e-02, double* %13, align 8, !tbaa !48, !llfi_index !1091
  %14 = tail call double @rn_v() #1, !llfi_index !1092
  br label %.preheader, !llfi_index !1093

; <label>:15                                      ; preds = %._crit_edge
  %16 = icmp slt i32 %24, 12, !llfi_index !1094
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1095
  br i1 %16, label %.preheader, label %25, !llfi_index !1096

.preheader:                                       ; preds = %15, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %15 ], !llfi_index !1097
  %i.03 = phi i32 [ 0, %0 ], [ %24, %15 ], !llfi_index !1098
  %17 = icmp sgt i32 %i.03, 0, !llfi_index !1099
  br i1 %17, label %.lr.ph, label %._crit_edge, !llfi_index !1100

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %.lr.ph ], [ %indvars.iv, %.preheader ], !llfi_index !1101
  %running.01 = phi double [ %20, %.lr.ph ], [ 0.000000e+00, %.preheader ], !llfi_index !1102
  %18 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 %indvars.iv4, !llfi_index !1103
  %19 = load double* %18, align 8, !tbaa !48, !llfi_index !1104
  %20 = fadd double %running.01, %19, !llfi_index !1105
  %indvars.iv.next5 = add nsw i64 %indvars.iv4, -1, !llfi_index !1106
  %21 = trunc i64 %indvars.iv.next5 to i32, !llfi_index !1107
  %22 = icmp sgt i32 %21, 0, !llfi_index !1108
  br i1 %22, label %.lr.ph, label %._crit_edge, !llfi_index !1109

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %running.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %20, %.lr.ph ], !llfi_index !1110
  %23 = fcmp olt double %14, %running.0.lcssa, !llfi_index !1111
  %24 = add nsw i32 %i.03, 1, !llfi_index !1112
  br i1 %23, label %25, label %15, !llfi_index !1113

; <label>:25                                      ; preds = %._crit_edge, %15
  %.0 = phi i32 [ %i.03, %._crit_edge ], [ 0, %15 ], !llfi_index !1114
  call void @llvm.lifetime.end(i64 96, i8* %1) #1, !llfi_index !1115
  ret i32 %.0, !llfi_index !1116
}

; Function Attrs: nounwind uwtable
define noalias %struct.NuclideGridPoint** @gpmatrix(i64 %m, i64 %n) #0 {
  %1 = mul i64 %n, %m, !llfi_index !1117
  %2 = mul i64 %1, 48, !llfi_index !1118
  %3 = tail call noalias i8* @malloc(i64 %2) #1, !llfi_index !1119
  %4 = bitcast i8* %3 to %struct.NuclideGridPoint*, !llfi_index !1120
  %5 = shl i64 %m, 3, !llfi_index !1121
  %6 = tail call noalias i8* @malloc(i64 %5) #1, !llfi_index !1122
  %7 = bitcast i8* %6 to %struct.NuclideGridPoint**, !llfi_index !1123
  %8 = icmp eq i64 %1, 0, !llfi_index !1124
  br i1 %8, label %._crit_edge, label %.lr.ph, !llfi_index !1125

.lr.ph:                                           ; preds = %0
  %9 = mul i64 %n, %m, !llfi_index !1126
  br label %10, !llfi_index !1127

; <label>:10                                      ; preds = %18, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %18 ], !llfi_index !1128
  %j.01 = phi i32 [ 0, %.lr.ph ], [ %j.1, %18 ], !llfi_index !1129
  %11 = urem i64 %indvars.iv, %n, !llfi_index !1130
  %12 = icmp eq i64 %11, 0, !llfi_index !1131
  br i1 %12, label %13, label %18, !llfi_index !1132

; <label>:13                                      ; preds = %10
  %14 = getelementptr inbounds %struct.NuclideGridPoint* %4, i64 %indvars.iv, !llfi_index !1133
  %15 = add nsw i32 %j.01, 1, !llfi_index !1134
  %16 = sext i32 %j.01 to i64, !llfi_index !1135
  %17 = getelementptr inbounds %struct.NuclideGridPoint** %7, i64 %16, !llfi_index !1136
  store %struct.NuclideGridPoint* %14, %struct.NuclideGridPoint** %17, align 8, !tbaa !22, !llfi_index !1137
  br label %18, !llfi_index !1138

; <label>:18                                      ; preds = %13, %10
  %j.1 = phi i32 [ %15, %13 ], [ %j.01, %10 ], !llfi_index !1139
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1140
  %exitcond = icmp eq i64 %indvars.iv.next, %9, !llfi_index !1141
  br i1 %exitcond, label %._crit_edge, label %10, !llfi_index !1142

._crit_edge:                                      ; preds = %18, %0
  ret %struct.NuclideGridPoint** %7, !llfi_index !1143
}

; Function Attrs: nounwind uwtable
define void @gpmatrix_free(%struct.NuclideGridPoint** nocapture %M) #0 {
  %1 = load %struct.NuclideGridPoint** %M, align 8, !tbaa !22, !llfi_index !1144
  %2 = bitcast %struct.NuclideGridPoint* %1 to i8*, !llfi_index !1145
  tail call void @free(i8* %2) #1, !llfi_index !1146
  %3 = bitcast %struct.NuclideGridPoint** %M to i8*, !llfi_index !1147
  tail call void @free(i8* %3) #1, !llfi_index !1148
  ret void, !llfi_index !1149
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind readonly uwtable
define i32 @NGP_compare(i8* nocapture readonly %a, i8* nocapture readonly %b) #2 {
  %1 = bitcast i8* %a to double*, !llfi_index !1150
  %2 = load double* %1, align 8, !tbaa !32, !llfi_index !1151
  %3 = bitcast i8* %b to double*, !llfi_index !1152
  %4 = load double* %3, align 8, !tbaa !32, !llfi_index !1153
  %5 = fcmp ogt double %2, %4, !llfi_index !1154
  br i1 %5, label %8, label %6, !llfi_index !1155

; <label>:6                                       ; preds = %0
  %7 = fcmp olt double %2, %4, !llfi_index !1156
  %. = sext i1 %7 to i32, !llfi_index !1157
  br label %8, !llfi_index !1158

; <label>:8                                       ; preds = %6, %0
  %.0 = phi i32 [ 1, %0 ], [ %., %6 ], !llfi_index !1159
  ret i32 %.0, !llfi_index !1160
}

; Function Attrs: nounwind readonly uwtable
define i32 @binary_search(%struct.NuclideGridPoint* nocapture readonly %A, double %quarry, i32 %n) #2 {
  %1 = add nsw i32 %n, -1, !llfi_index !1161
  %2 = getelementptr inbounds %struct.NuclideGridPoint* %A, i64 0, i32 0, !llfi_index !1162
  %3 = load double* %2, align 8, !tbaa !32, !llfi_index !1163
  %4 = fcmp ogt double %3, %quarry, !llfi_index !1164
  br i1 %4, label %.loopexit, label %5, !llfi_index !1165

; <label>:5                                       ; preds = %0
  %6 = sext i32 %1 to i64, !llfi_index !1166
  %7 = getelementptr inbounds %struct.NuclideGridPoint* %A, i64 %6, i32 0, !llfi_index !1167
  %8 = load double* %7, align 8, !tbaa !32, !llfi_index !1168
  %9 = fcmp olt double %8, %quarry, !llfi_index !1169
  br i1 %9, label %11, label %.preheader, !llfi_index !1170

.preheader:                                       ; preds = %5
  %10 = icmp slt i32 %n, 1, !llfi_index !1171
  br i1 %10, label %.loopexit, label %.lr.ph, !llfi_index !1172

; <label>:11                                      ; preds = %5
  %12 = add nsw i32 %n, -2, !llfi_index !1173
  br label %.loopexit, !llfi_index !1174

; <label>:13                                      ; preds = %29
  %14 = icmp sgt i32 %21, %min.0.ph5, !llfi_index !1175
  br i1 %14, label %15, label %.loopexit, !llfi_index !1176

; <label>:15                                      ; preds = %.lr.ph, %13
  %max.02 = phi i32 [ %max.0.ph6, %.lr.ph ], [ %31, %13 ], !llfi_index !1177
  %16 = sub nsw i32 %max.02, %min.0.ph5, !llfi_index !1178
  %17 = sitofp i32 %16 to double, !llfi_index !1179
  %18 = fmul double %17, 5.000000e-01, !llfi_index !1180
  %19 = tail call double @floor(double %18) #13, !llfi_index !1181
  %20 = fadd double %28, %19, !llfi_index !1182
  %21 = fptosi double %20 to i32, !llfi_index !1183
  %22 = sext i32 %21 to i64, !llfi_index !1184
  %23 = getelementptr inbounds %struct.NuclideGridPoint* %A, i64 %22, i32 0, !llfi_index !1185
  %24 = load double* %23, align 8, !tbaa !32, !llfi_index !1186
  %25 = fcmp olt double %24, %quarry, !llfi_index !1187
  br i1 %25, label %.outer, label %29, !llfi_index !1188

.outer:                                           ; preds = %15
  %26 = add nsw i32 %21, 1, !llfi_index !1189
  %27 = icmp slt i32 %max.02, %26, !llfi_index !1190
  br i1 %27, label %.loopexit, label %.lr.ph, !llfi_index !1191

.lr.ph:                                           ; preds = %.outer, %.preheader
  %max.0.ph6 = phi i32 [ %max.02, %.outer ], [ %1, %.preheader ], !llfi_index !1192
  %min.0.ph5 = phi i32 [ %26, %.outer ], [ 0, %.preheader ], !llfi_index !1193
  %28 = sitofp i32 %min.0.ph5 to double, !llfi_index !1194
  br label %15, !llfi_index !1195

; <label>:29                                      ; preds = %15
  %30 = fcmp ogt double %24, %quarry, !llfi_index !1196
  %31 = add nsw i32 %21, -1, !llfi_index !1197
  br i1 %30, label %13, label %.loopexit, !llfi_index !1198

.loopexit:                                        ; preds = %29, %.outer, %13, %11, %.preheader, %0
  %.0 = phi i32 [ %12, %11 ], [ 0, %0 ], [ %21, %29 ], [ %31, %13 ], [ %1, %.preheader ], [ %max.02, %.outer ], !llfi_index !1199
  ret i32 %.0, !llfi_index !1200
}

; Function Attrs: nounwind readnone
declare double @floor(double) #9

; Function Attrs: nounwind uwtable
define double @rn(i64* nocapture %seed) #0 {
  %1 = load i64* %seed, align 8, !tbaa !752, !llfi_index !1201
  %2 = mul i64 %1, 16807, !llfi_index !1202
  %3 = urem i64 %2, 2147483647, !llfi_index !1203
  store i64 %3, i64* %seed, align 8, !tbaa !752, !llfi_index !1204
  %4 = uitofp i64 %3 to double, !llfi_index !1205
  %5 = fdiv double %4, 0x41DFFFFFFFC00000, !llfi_index !1206
  ret double %5, !llfi_index !1207
}

; Function Attrs: nounwind uwtable
define double @rn_v() #0 {
  %1 = load i64* @rn_v.seed, align 8, !tbaa !752, !llfi_index !1208
  %2 = mul i64 %1, 16807, !llfi_index !1209
  %3 = urem i64 %2, 2147483647, !llfi_index !1210
  store i64 %3, i64* @rn_v.seed, align 8, !tbaa !752, !llfi_index !1211
  %4 = uitofp i64 %3 to double, !llfi_index !1212
  %5 = fdiv double %4, 0x41DFFFFFFFC00000, !llfi_index !1213
  ret double %5, !llfi_index !1214
}

; Function Attrs: nounwind readonly uwtable
define i32 @hash(i8* nocapture readonly %str, i32 %nbins) #2 {
  %1 = load i8* %str, align 1, !tbaa !487, !llfi_index !1215
  %2 = icmp eq i8 %1, 0, !llfi_index !1216
  br i1 %2, label %._crit_edge, label %.lr.ph, !llfi_index !1217

.lr.ph:                                           ; preds = %.lr.ph, %0
  %3 = phi i8 [ %8, %.lr.ph ], [ %1, %0 ], !llfi_index !1218
  %.02 = phi i8* [ %5, %.lr.ph ], [ %str, %0 ], !llfi_index !1219
  %hash.01 = phi i32 [ %7, %.lr.ph ], [ 5381, %0 ], !llfi_index !1220
  %4 = zext i8 %3 to i32, !llfi_index !1221
  %5 = getelementptr inbounds i8* %.02, i64 1, !llfi_index !1222
  %6 = mul i32 %hash.01, 33, !llfi_index !1223
  %7 = add i32 %4, %6, !llfi_index !1224
  %8 = load i8* %5, align 1, !tbaa !487, !llfi_index !1225
  %9 = icmp eq i8 %8, 0, !llfi_index !1226
  br i1 %9, label %._crit_edge, label %.lr.ph, !llfi_index !1227

._crit_edge:                                      ; preds = %.lr.ph, %0
  %hash.0.lcssa = phi i32 [ 5381, %0 ], [ %7, %.lr.ph ], !llfi_index !1228
  %10 = urem i32 %hash.0.lcssa, %nbins, !llfi_index !1229
  ret i32 %10, !llfi_index !1230
}

; Function Attrs: nounwind readonly uwtable
define i64 @estimate_mem_usage(%struct.Inputs* byval nocapture readonly align 8 %in) #2 {
  %1 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 2, !llfi_index !1231
  %2 = load i64* %1, align 8, !tbaa !452, !llfi_index !1232
  %3 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 1, !llfi_index !1233
  %4 = load i64* %3, align 8, !tbaa !447, !llfi_index !1234
  %5 = shl i64 %4, 2, !llfi_index !1235
  %tmp2 = add i64 %5, 64, !llfi_index !1236
  %tmp3 = mul i64 %tmp2, %2, !llfi_index !1237
  %tmp1 = mul i64 %tmp3, %4, !llfi_index !1238
  %6 = lshr i64 %tmp1, 20, !llfi_index !1239
  ret i64 %6, !llfi_index !1240
}

; Function Attrs: nounwind uwtable
define void @binary_dump(i64 %n_isotopes, i64 %n_gridpoints, %struct.NuclideGridPoint** nocapture readonly %nuclide_grids, %struct.GridPoint* nocapture %energy_grid) #0 {
  %1 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str166, i64 0, i64 0)) #1, !llfi_index !1241
  %2 = icmp sgt i64 %n_isotopes, 0, !llfi_index !1242
  br i1 %2, label %.lr.ph5, label %.preheader, !llfi_index !1243

.preheader:                                       ; preds = %.lr.ph5, %0
  %3 = mul nsw i64 %n_gridpoints, %n_isotopes, !llfi_index !1244
  %4 = icmp sgt i64 %3, 0, !llfi_index !1245
  br i1 %4, label %.lr.ph, label %._crit_edge, !llfi_index !1246

.lr.ph:                                           ; preds = %.preheader
  %5 = mul i64 %n_gridpoints, %n_isotopes, !llfi_index !1247
  br label %11, !llfi_index !1248

.lr.ph5:                                          ; preds = %.lr.ph5, %0
  %i.03 = phi i64 [ %10, %.lr.ph5 ], [ 0, %0 ], !llfi_index !1249
  %6 = getelementptr inbounds %struct.NuclideGridPoint** %nuclide_grids, i64 %i.03, !llfi_index !1250
  %7 = load %struct.NuclideGridPoint** %6, align 8, !tbaa !22, !llfi_index !1251
  %8 = bitcast %struct.NuclideGridPoint* %7 to i8*, !llfi_index !1252
  %9 = tail call i64 @fwrite(i8* %8, i64 48, i64 %n_gridpoints, %struct._IO_FILE* %1) #1, !llfi_index !1253
  %10 = add nsw i64 %i.03, 1, !llfi_index !1254
  %exitcond6 = icmp eq i64 %10, %n_isotopes, !llfi_index !1255
  br i1 %exitcond6, label %.preheader, label %.lr.ph5, !llfi_index !1256

; <label>:11                                      ; preds = %11, %.lr.ph
  %i1.02 = phi i64 [ 0, %.lr.ph ], [ %19, %11 ], !llfi_index !1257
  %12 = getelementptr inbounds %struct.GridPoint* %energy_grid, i64 %i1.02, !llfi_index !1258
  %13 = bitcast %struct.GridPoint* %12 to i8*, !llfi_index !1259
  %14 = tail call i64 @fwrite(i8* %13, i64 8, i64 1, %struct._IO_FILE* %1) #1, !llfi_index !1260
  %15 = getelementptr inbounds %struct.GridPoint* %energy_grid, i64 %i1.02, i32 1, !llfi_index !1261
  %16 = load i32** %15, align 8, !tbaa !4, !llfi_index !1262
  %17 = bitcast i32* %16 to i8*, !llfi_index !1263
  %18 = tail call i64 @fwrite(i8* %17, i64 4, i64 %n_isotopes, %struct._IO_FILE* %1) #1, !llfi_index !1264
  %19 = add nsw i64 %i1.02, 1, !llfi_index !1265
  %exitcond = icmp eq i64 %19, %5, !llfi_index !1266
  br i1 %exitcond, label %._crit_edge, label %11, !llfi_index !1267

._crit_edge:                                      ; preds = %11, %.preheader
  %20 = tail call i32 @fclose(%struct._IO_FILE* %1) #1, !llfi_index !1268
  ret void, !llfi_index !1269
}

; Function Attrs: nounwind uwtable
define void @binary_read(i64 %n_isotopes, i64 %n_gridpoints, %struct.NuclideGridPoint** nocapture readonly %nuclide_grids, %struct.GridPoint* nocapture %energy_grid) #0 {
  %1 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str267, i64 0, i64 0)) #1, !llfi_index !1270
  %2 = icmp sgt i64 %n_isotopes, 0, !llfi_index !1271
  br i1 %2, label %.lr.ph5, label %.preheader, !llfi_index !1272

.preheader:                                       ; preds = %.lr.ph5, %0
  %3 = mul nsw i64 %n_gridpoints, %n_isotopes, !llfi_index !1273
  %4 = icmp sgt i64 %3, 0, !llfi_index !1274
  br i1 %4, label %.lr.ph, label %._crit_edge, !llfi_index !1275

.lr.ph:                                           ; preds = %.preheader
  %5 = mul i64 %n_gridpoints, %n_isotopes, !llfi_index !1276
  br label %11, !llfi_index !1277

.lr.ph5:                                          ; preds = %.lr.ph5, %0
  %i.03 = phi i64 [ %10, %.lr.ph5 ], [ 0, %0 ], !llfi_index !1278
  %6 = getelementptr inbounds %struct.NuclideGridPoint** %nuclide_grids, i64 %i.03, !llfi_index !1279
  %7 = load %struct.NuclideGridPoint** %6, align 8, !tbaa !22, !llfi_index !1280
  %8 = bitcast %struct.NuclideGridPoint* %7 to i8*, !llfi_index !1281
  %9 = tail call i64 @fread(i8* %8, i64 48, i64 %n_gridpoints, %struct._IO_FILE* %1) #1, !llfi_index !1282
  %10 = add nsw i64 %i.03, 1, !llfi_index !1283
  %exitcond6 = icmp eq i64 %10, %n_isotopes, !llfi_index !1284
  br i1 %exitcond6, label %.preheader, label %.lr.ph5, !llfi_index !1285

; <label>:11                                      ; preds = %11, %.lr.ph
  %i1.02 = phi i64 [ 0, %.lr.ph ], [ %19, %11 ], !llfi_index !1286
  %12 = getelementptr inbounds %struct.GridPoint* %energy_grid, i64 %i1.02, !llfi_index !1287
  %13 = bitcast %struct.GridPoint* %12 to i8*, !llfi_index !1288
  %14 = tail call i64 @fread(i8* %13, i64 8, i64 1, %struct._IO_FILE* %1) #1, !llfi_index !1289
  %15 = getelementptr inbounds %struct.GridPoint* %energy_grid, i64 %i1.02, i32 1, !llfi_index !1290
  %16 = load i32** %15, align 8, !tbaa !4, !llfi_index !1291
  %17 = bitcast i32* %16 to i8*, !llfi_index !1292
  %18 = tail call i64 @fread(i8* %17, i64 4, i64 %n_isotopes, %struct._IO_FILE* %1) #1, !llfi_index !1293
  %19 = add nsw i64 %i1.02, 1, !llfi_index !1294
  %exitcond = icmp eq i64 %19, %5, !llfi_index !1295
  br i1 %exitcond, label %._crit_edge, label %11, !llfi_index !1296

._crit_edge:                                      ; preds = %11, %.preheader
  %20 = tail call i32 @fclose(%struct._IO_FILE* %1) #1, !llfi_index !1297
  ret void, !llfi_index !1298
}

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!1 = metadata !{i64 1}
!2 = metadata !{i64 2}
!3 = metadata !{i64 3}
!4 = metadata !{metadata !5, metadata !9, i64 8}
!5 = metadata !{metadata !"", metadata !6, i64 0, metadata !9, i64 8}
!6 = metadata !{metadata !"double", metadata !7, i64 0}
!7 = metadata !{metadata !"omnipotent char", metadata !8, i64 0}
!8 = metadata !{metadata !"Simple C/C++ TBAA"}
!9 = metadata !{metadata !"any pointer", metadata !7, i64 0}
!10 = metadata !{i64 4}
!11 = metadata !{i64 5}
!12 = metadata !{metadata !13, metadata !13, i64 0}
!13 = metadata !{metadata !"int", metadata !7, i64 0}
!14 = metadata !{i64 6}
!15 = metadata !{i64 7}
!16 = metadata !{i64 8}
!17 = metadata !{i64 9}
!18 = metadata !{i64 10}
!19 = metadata !{i64 11}
!20 = metadata !{i64 12}
!21 = metadata !{i64 13}
!22 = metadata !{metadata !9, metadata !9, i64 0}
!23 = metadata !{i64 14}
!24 = metadata !{i64 15}
!25 = metadata !{i64 16}
!26 = metadata !{i64 17}
!27 = metadata !{i64 18}
!28 = metadata !{i64 19}
!29 = metadata !{i64 20}
!30 = metadata !{i64 21}
!31 = metadata !{i64 22}
!32 = metadata !{metadata !33, metadata !6, i64 0}
!33 = metadata !{metadata !"", metadata !6, i64 0, metadata !6, i64 8, metadata !6, i64 16, metadata !6, i64 24, metadata !6, i64 32, metadata !6, i64 40}
!34 = metadata !{i64 23}
!35 = metadata !{i64 24}
!36 = metadata !{i64 25}
!37 = metadata !{i64 26}
!38 = metadata !{i64 27}
!39 = metadata !{i64 28}
!40 = metadata !{i64 29}
!41 = metadata !{metadata !33, metadata !6, i64 8}
!42 = metadata !{i64 30}
!43 = metadata !{i64 31}
!44 = metadata !{i64 32}
!45 = metadata !{metadata !33, metadata !6, i64 16}
!46 = metadata !{i64 33}
!47 = metadata !{i64 34}
!48 = metadata !{metadata !6, metadata !6, i64 0}
!49 = metadata !{i64 35}
!50 = metadata !{i64 36}
!51 = metadata !{i64 37}
!52 = metadata !{i64 38}
!53 = metadata !{i64 39}
!54 = metadata !{i64 40}
!55 = metadata !{i64 41}
!56 = metadata !{i64 42}
!57 = metadata !{i64 43}
!58 = metadata !{i64 44}
!59 = metadata !{i64 45}
!60 = metadata !{metadata !33, metadata !6, i64 24}
!61 = metadata !{i64 46}
!62 = metadata !{i64 47}
!63 = metadata !{i64 48}
!64 = metadata !{i64 49}
!65 = metadata !{metadata !33, metadata !6, i64 32}
!66 = metadata !{i64 50}
!67 = metadata !{i64 51}
!68 = metadata !{i64 52}
!69 = metadata !{i64 53}
!70 = metadata !{i64 54}
!71 = metadata !{i64 55}
!72 = metadata !{i64 56}
!73 = metadata !{i64 57}
!74 = metadata !{i64 58}
!75 = metadata !{i64 59}
!76 = metadata !{i64 60}
!77 = metadata !{metadata !33, metadata !6, i64 40}
!78 = metadata !{i64 61}
!79 = metadata !{i64 62}
!80 = metadata !{i64 63}
!81 = metadata !{i64 64}
!82 = metadata !{i64 65}
!83 = metadata !{i64 66}
!84 = metadata !{i64 67}
!85 = metadata !{i64 68}
!86 = metadata !{i64 69}
!87 = metadata !{i64 70}
!88 = metadata !{i64 71}
!89 = metadata !{i64 72}
!90 = metadata !{i64 73}
!91 = metadata !{i64 74}
!92 = metadata !{i64 75}
!93 = metadata !{i64 76}
!94 = metadata !{i64 77}
!95 = metadata !{i64 78}
!96 = metadata !{i64 79}
!97 = metadata !{i64 80}
!98 = metadata !{i64 81}
!99 = metadata !{i64 82}
!100 = metadata !{i64 83}
!101 = metadata !{i64 84}
!102 = metadata !{i64 85}
!103 = metadata !{i64 86}
!104 = metadata !{i64 87}
!105 = metadata !{i64 88}
!106 = metadata !{i64 89}
!107 = metadata !{i64 90}
!108 = metadata !{i64 91}
!109 = metadata !{i64 92}
!110 = metadata !{i64 93}
!111 = metadata !{i64 94}
!112 = metadata !{i64 95}
!113 = metadata !{i64 96}
!114 = metadata !{i64 97}
!115 = metadata !{i64 98}
!116 = metadata !{i64 99}
!117 = metadata !{i64 100}
!118 = metadata !{i64 101}
!119 = metadata !{i64 102}
!120 = metadata !{i64 103}
!121 = metadata !{i64 104}
!122 = metadata !{i64 105}
!123 = metadata !{i64 106}
!124 = metadata !{i64 107}
!125 = metadata !{i64 108}
!126 = metadata !{i64 109}
!127 = metadata !{i64 110}
!128 = metadata !{i64 111}
!129 = metadata !{i64 112}
!130 = metadata !{i64 113}
!131 = metadata !{i64 114}
!132 = metadata !{i64 115}
!133 = metadata !{i64 116}
!134 = metadata !{i64 117}
!135 = metadata !{i64 118}
!136 = metadata !{i64 119}
!137 = metadata !{i64 120}
!138 = metadata !{i64 121}
!139 = metadata !{i64 122}
!140 = metadata !{metadata !5, metadata !6, i64 0}
!141 = metadata !{i64 123}
!142 = metadata !{i64 124}
!143 = metadata !{i64 125}
!144 = metadata !{i64 126}
!145 = metadata !{i64 127}
!146 = metadata !{i64 128}
!147 = metadata !{i64 129}
!148 = metadata !{i64 130}
!149 = metadata !{i64 131}
!150 = metadata !{i64 132}
!151 = metadata !{i64 133}
!152 = metadata !{i64 134}
!153 = metadata !{i64 135}
!154 = metadata !{i64 136}
!155 = metadata !{i64 137}
!156 = metadata !{i64 138}
!157 = metadata !{i64 139}
!158 = metadata !{i64 140}
!159 = metadata !{i64 141}
!160 = metadata !{i64 142}
!161 = metadata !{i64 143}
!162 = metadata !{i64 144}
!163 = metadata !{i64 145}
!164 = metadata !{i64 146}
!165 = metadata !{i64 147}
!166 = metadata !{i64 148}
!167 = metadata !{i64 149}
!168 = metadata !{i64 150}
!169 = metadata !{i64 151}
!170 = metadata !{i64 152}
!171 = metadata !{i64 153}
!172 = metadata !{i64 154}
!173 = metadata !{i64 155}
!174 = metadata !{i64 156}
!175 = metadata !{i64 157}
!176 = metadata !{i64 158}
!177 = metadata !{i64 159}
!178 = metadata !{i64 160}
!179 = metadata !{i64 161}
!180 = metadata !{i64 162}
!181 = metadata !{i64 163}
!182 = metadata !{i64 164}
!183 = metadata !{i64 165}
!184 = metadata !{i64 166}
!185 = metadata !{i64 167}
!186 = metadata !{i64 168}
!187 = metadata !{i64 169}
!188 = metadata !{i64 170}
!189 = metadata !{i64 171}
!190 = metadata !{i64 172}
!191 = metadata !{i64 173}
!192 = metadata !{i64 174}
!193 = metadata !{i64 175}
!194 = metadata !{i64 176}
!195 = metadata !{i64 177}
!196 = metadata !{i64 178}
!197 = metadata !{i64 179}
!198 = metadata !{i64 180}
!199 = metadata !{i64 181}
!200 = metadata !{i64 182}
!201 = metadata !{i64 183}
!202 = metadata !{i64 184}
!203 = metadata !{i64 185}
!204 = metadata !{i64 186}
!205 = metadata !{i64 187}
!206 = metadata !{i64 188}
!207 = metadata !{i64 189}
!208 = metadata !{i64 190}
!209 = metadata !{i64 191}
!210 = metadata !{i64 192}
!211 = metadata !{i64 193}
!212 = metadata !{i64 194}
!213 = metadata !{i64 195}
!214 = metadata !{i64 196}
!215 = metadata !{i64 197}
!216 = metadata !{i64 198}
!217 = metadata !{i64 199}
!218 = metadata !{i64 200}
!219 = metadata !{i64 201}
!220 = metadata !{i64 202}
!221 = metadata !{i64 203}
!222 = metadata !{i64 204}
!223 = metadata !{i64 205}
!224 = metadata !{i64 206}
!225 = metadata !{i64 207}
!226 = metadata !{i64 208}
!227 = metadata !{i64 209}
!228 = metadata !{i64 210}
!229 = metadata !{i64 211}
!230 = metadata !{i64 212}
!231 = metadata !{i64 213}
!232 = metadata !{i64 214}
!233 = metadata !{i64 215}
!234 = metadata !{i64 216}
!235 = metadata !{i64 217}
!236 = metadata !{i64 218}
!237 = metadata !{i64 219}
!238 = metadata !{i64 220}
!239 = metadata !{i64 221}
!240 = metadata !{i64 222}
!241 = metadata !{i64 223}
!242 = metadata !{i64 224}
!243 = metadata !{i64 225}
!244 = metadata !{i64 226}
!245 = metadata !{i64 227}
!246 = metadata !{i64 228}
!247 = metadata !{i64 229}
!248 = metadata !{i64 230}
!249 = metadata !{i64 231}
!250 = metadata !{i64 232}
!251 = metadata !{i64 233}
!252 = metadata !{i64 234}
!253 = metadata !{i64 235}
!254 = metadata !{i64 236}
!255 = metadata !{i64 237}
!256 = metadata !{i64 238}
!257 = metadata !{i64 239}
!258 = metadata !{i64 240}
!259 = metadata !{i64 241}
!260 = metadata !{i64 242}
!261 = metadata !{i64 243}
!262 = metadata !{i64 244}
!263 = metadata !{i64 245}
!264 = metadata !{i64 246}
!265 = metadata !{i64 247}
!266 = metadata !{i64 248}
!267 = metadata !{i64 249}
!268 = metadata !{i64 250}
!269 = metadata !{i64 251}
!270 = metadata !{i64 252}
!271 = metadata !{i64 253}
!272 = metadata !{i64 254}
!273 = metadata !{i64 255}
!274 = metadata !{i64 256}
!275 = metadata !{i64 257}
!276 = metadata !{i64 258}
!277 = metadata !{i64 259}
!278 = metadata !{i64 260}
!279 = metadata !{i64 261}
!280 = metadata !{i64 262}
!281 = metadata !{i64 263}
!282 = metadata !{i64 264}
!283 = metadata !{i64 265}
!284 = metadata !{i64 266}
!285 = metadata !{i64 267}
!286 = metadata !{i64 268}
!287 = metadata !{i64 269}
!288 = metadata !{i64 270}
!289 = metadata !{i64 271}
!290 = metadata !{i64 272}
!291 = metadata !{i64 273}
!292 = metadata !{i64 274}
!293 = metadata !{i64 275}
!294 = metadata !{i64 276}
!295 = metadata !{i64 277}
!296 = metadata !{i64 278}
!297 = metadata !{i64 279}
!298 = metadata !{i64 280}
!299 = metadata !{i64 281}
!300 = metadata !{i64 282}
!301 = metadata !{i64 283}
!302 = metadata !{i64 284}
!303 = metadata !{i64 285}
!304 = metadata !{i64 286}
!305 = metadata !{i64 287}
!306 = metadata !{i64 288}
!307 = metadata !{i64 289}
!308 = metadata !{i64 290}
!309 = metadata !{i64 291}
!310 = metadata !{i64 292}
!311 = metadata !{i64 293}
!312 = metadata !{i64 294}
!313 = metadata !{i64 295}
!314 = metadata !{i64 296}
!315 = metadata !{i64 297}
!316 = metadata !{i64 298}
!317 = metadata !{i64 299}
!318 = metadata !{i64 300}
!319 = metadata !{i64 301}
!320 = metadata !{i64 302}
!321 = metadata !{i64 303}
!322 = metadata !{i64 304}
!323 = metadata !{i64 305}
!324 = metadata !{i64 306}
!325 = metadata !{i64 307}
!326 = metadata !{i64 308}
!327 = metadata !{i64 309}
!328 = metadata !{i64 310}
!329 = metadata !{i64 311}
!330 = metadata !{i64 312}
!331 = metadata !{i64 313}
!332 = metadata !{i64 314}
!333 = metadata !{i64 315}
!334 = metadata !{i64 316}
!335 = metadata !{i64 317}
!336 = metadata !{i64 318}
!337 = metadata !{i64 319}
!338 = metadata !{i64 320}
!339 = metadata !{i64 321}
!340 = metadata !{i64 322}
!341 = metadata !{i64 323}
!342 = metadata !{i64 324}
!343 = metadata !{i64 325}
!344 = metadata !{i64 326}
!345 = metadata !{i64 327}
!346 = metadata !{i64 328}
!347 = metadata !{i64 329}
!348 = metadata !{i64 330}
!349 = metadata !{i64 331}
!350 = metadata !{i64 332}
!351 = metadata !{i64 333}
!352 = metadata !{i64 334}
!353 = metadata !{i64 335}
!354 = metadata !{i64 336}
!355 = metadata !{i64 337}
!356 = metadata !{i64 338}
!357 = metadata !{i64 339}
!358 = metadata !{i64 340}
!359 = metadata !{i64 341}
!360 = metadata !{i64 342}
!361 = metadata !{i64 343}
!362 = metadata !{i64 344}
!363 = metadata !{i64 345}
!364 = metadata !{i64 346}
!365 = metadata !{i64 347}
!366 = metadata !{i64 348}
!367 = metadata !{i64 349}
!368 = metadata !{i64 350}
!369 = metadata !{i64 351}
!370 = metadata !{i64 352}
!371 = metadata !{i64 353}
!372 = metadata !{i64 354}
!373 = metadata !{i64 355}
!374 = metadata !{i64 356}
!375 = metadata !{i64 357}
!376 = metadata !{i64 358}
!377 = metadata !{i64 359}
!378 = metadata !{i64 360}
!379 = metadata !{i64 361}
!380 = metadata !{i64 362}
!381 = metadata !{metadata !382, metadata !13, i64 24}
!382 = metadata !{metadata !"", metadata !13, i64 0, metadata !383, i64 8, metadata !383, i64 16, metadata !13, i64 24, metadata !9, i64 32}
!383 = metadata !{metadata !"long", metadata !7, i64 0}
!384 = metadata !{i64 363}
!385 = metadata !{i64 364}
!386 = metadata !{i64 365}
!387 = metadata !{i64 366}
!388 = metadata !{i64 367}
!389 = metadata !{i64 368}
!390 = metadata !{i64 369}
!391 = metadata !{i64 370}
!392 = metadata !{metadata !382, metadata !13, i64 0}
!393 = metadata !{i64 371}
!394 = metadata !{i64 372}
!395 = metadata !{i64 373}
!396 = metadata !{i64 374}
!397 = metadata !{i64 375}
!398 = metadata !{i64 376}
!399 = metadata !{i64 377}
!400 = metadata !{i64 378}
!401 = metadata !{i64 379}
!402 = metadata !{i64 380}
!403 = metadata !{i64 381}
!404 = metadata !{i64 382}
!405 = metadata !{i64 383}
!406 = metadata !{i64 384}
!407 = metadata !{i64 385}
!408 = metadata !{i64 386}
!409 = metadata !{i64 387}
!410 = metadata !{i64 388}
!411 = metadata !{i64 389}
!412 = metadata !{i64 390}
!413 = metadata !{i64 391}
!414 = metadata !{i64 392}
!415 = metadata !{i64 393}
!416 = metadata !{i64 394}
!417 = metadata !{i64 395}
!418 = metadata !{i64 396}
!419 = metadata !{i64 397}
!420 = metadata !{i64 398}
!421 = metadata !{i64 399}
!422 = metadata !{i64 400}
!423 = metadata !{i64 401}
!424 = metadata !{i64 402}
!425 = metadata !{i64 403}
!426 = metadata !{i64 404}
!427 = metadata !{i64 405}
!428 = metadata !{i64 406}
!429 = metadata !{i64 407}
!430 = metadata !{i64 408}
!431 = metadata !{i64 409}
!432 = metadata !{i64 410}
!433 = metadata !{i64 411}
!434 = metadata !{i64 412}
!435 = metadata !{i64 413}
!436 = metadata !{i64 414}
!437 = metadata !{i64 415}
!438 = metadata !{i64 416}
!439 = metadata !{i64 417}
!440 = metadata !{i64 418}
!441 = metadata !{i64 419}
!442 = metadata !{i64 420}
!443 = metadata !{metadata !382, metadata !9, i64 32}
!444 = metadata !{i64 421}
!445 = metadata !{i64 422}
!446 = metadata !{i64 423}
!447 = metadata !{metadata !382, metadata !383, i64 8}
!448 = metadata !{i64 424}
!449 = metadata !{i64 425}
!450 = metadata !{i64 426}
!451 = metadata !{i64 427}
!452 = metadata !{metadata !382, metadata !383, i64 16}
!453 = metadata !{i64 428}
!454 = metadata !{i64 429}
!455 = metadata !{i64 430}
!456 = metadata !{i64 431}
!457 = metadata !{i64 432}
!458 = metadata !{i64 433}
!459 = metadata !{i64 434}
!460 = metadata !{i64 435}
!461 = metadata !{i64 436}
!462 = metadata !{i64 437}
!463 = metadata !{i64 438}
!464 = metadata !{i64 439}
!465 = metadata !{i64 440}
!466 = metadata !{i64 441}
!467 = metadata !{i64 442}
!468 = metadata !{i64 443}
!469 = metadata !{i64 444}
!470 = metadata !{i64 445}
!471 = metadata !{i64 446}
!472 = metadata !{i64 447}
!473 = metadata !{i64 448}
!474 = metadata !{i64 449}
!475 = metadata !{i64 450}
!476 = metadata !{i64 451}
!477 = metadata !{i64 452}
!478 = metadata !{i64 453}
!479 = metadata !{i64 454}
!480 = metadata !{i64 455}
!481 = metadata !{i64 456}
!482 = metadata !{i64 457}
!483 = metadata !{i64 458}
!484 = metadata !{i64 459}
!485 = metadata !{i64 460}
!486 = metadata !{i64 461}
!487 = metadata !{metadata !7, metadata !7, i64 0}
!488 = metadata !{i64 462}
!489 = metadata !{i64 463}
!490 = metadata !{i64 464}
!491 = metadata !{i64 465}
!492 = metadata !{i64 466}
!493 = metadata !{i64 467}
!494 = metadata !{i64 468}
!495 = metadata !{i64 469}
!496 = metadata !{i64 470}
!497 = metadata !{i64 471}
!498 = metadata !{i64 472}
!499 = metadata !{i64 473}
!500 = metadata !{i64 474}
!501 = metadata !{i64 475}
!502 = metadata !{i64 476}
!503 = metadata !{i64 477}
!504 = metadata !{i64 478}
!505 = metadata !{i64 479}
!506 = metadata !{i64 480}
!507 = metadata !{i64 481}
!508 = metadata !{i64 482}
!509 = metadata !{i64 483}
!510 = metadata !{i64 484}
!511 = metadata !{i64 485}
!512 = metadata !{i64 486}
!513 = metadata !{i64 487}
!514 = metadata !{i64 488}
!515 = metadata !{i64 489}
!516 = metadata !{i64 490}
!517 = metadata !{i64 491}
!518 = metadata !{i64 492}
!519 = metadata !{i64 493}
!520 = metadata !{i64 494}
!521 = metadata !{i64 495}
!522 = metadata !{i64 496}
!523 = metadata !{i64 497}
!524 = metadata !{i64 498}
!525 = metadata !{i64 499}
!526 = metadata !{i64 500}
!527 = metadata !{i64 501}
!528 = metadata !{i64 502}
!529 = metadata !{i64 503}
!530 = metadata !{i64 504}
!531 = metadata !{i64 505}
!532 = metadata !{i64 506}
!533 = metadata !{i64 507}
!534 = metadata !{i64 508}
!535 = metadata !{i64 509}
!536 = metadata !{i64 510}
!537 = metadata !{i64 511}
!538 = metadata !{i64 512}
!539 = metadata !{i64 513}
!540 = metadata !{i64 514}
!541 = metadata !{i64 515}
!542 = metadata !{i64 516}
!543 = metadata !{i64 517}
!544 = metadata !{i64 518}
!545 = metadata !{i64 519}
!546 = metadata !{i64 520}
!547 = metadata !{i64 521}
!548 = metadata !{i64 522}
!549 = metadata !{i64 523}
!550 = metadata !{i64 524}
!551 = metadata !{i64 525}
!552 = metadata !{i64 526}
!553 = metadata !{i64 527}
!554 = metadata !{i64 528}
!555 = metadata !{i64 529}
!556 = metadata !{i64 530}
!557 = metadata !{i64 531}
!558 = metadata !{i64 532}
!559 = metadata !{i64 533}
!560 = metadata !{i64 534}
!561 = metadata !{i64 535}
!562 = metadata !{i64 536}
!563 = metadata !{i64 537}
!564 = metadata !{i64 538}
!565 = metadata !{i64 539}
!566 = metadata !{i64 540}
!567 = metadata !{i64 541}
!568 = metadata !{i64 542}
!569 = metadata !{i64 543}
!570 = metadata !{i64 544}
!571 = metadata !{i64 545}
!572 = metadata !{i64 546}
!573 = metadata !{i64 547}
!574 = metadata !{i64 548}
!575 = metadata !{i64 549}
!576 = metadata !{i64 550}
!577 = metadata !{i64 551}
!578 = metadata !{i64 552}
!579 = metadata !{i64 553}
!580 = metadata !{i64 554}
!581 = metadata !{i64 555}
!582 = metadata !{i64 556}
!583 = metadata !{i64 557}
!584 = metadata !{i64 558}
!585 = metadata !{i64 559}
!586 = metadata !{i64 560}
!587 = metadata !{i64 561}
!588 = metadata !{i64 562}
!589 = metadata !{i64 563}
!590 = metadata !{i64 564}
!591 = metadata !{i64 565}
!592 = metadata !{i64 566}
!593 = metadata !{i64 567}
!594 = metadata !{i64 568}
!595 = metadata !{i64 569}
!596 = metadata !{i64 570}
!597 = metadata !{i64 571}
!598 = metadata !{i64 572}
!599 = metadata !{i64 573}
!600 = metadata !{i64 574}
!601 = metadata !{i64 575}
!602 = metadata !{i64 576}
!603 = metadata !{i64 577}
!604 = metadata !{i64 578}
!605 = metadata !{i64 579}
!606 = metadata !{i64 580}
!607 = metadata !{i64 581}
!608 = metadata !{i64 582}
!609 = metadata !{i64 583}
!610 = metadata !{i64 584}
!611 = metadata !{i64 585}
!612 = metadata !{i64 586}
!613 = metadata !{i64 587}
!614 = metadata !{i64 588}
!615 = metadata !{i64 589}
!616 = metadata !{i64 590}
!617 = metadata !{i64 591}
!618 = metadata !{i64 592}
!619 = metadata !{i64 593}
!620 = metadata !{i64 594}
!621 = metadata !{i64 595}
!622 = metadata !{i64 596}
!623 = metadata !{i64 597}
!624 = metadata !{i64 598}
!625 = metadata !{i64 599}
!626 = metadata !{i64 600}
!627 = metadata !{i64 601}
!628 = metadata !{i64 602}
!629 = metadata !{i64 603}
!630 = metadata !{i64 604}
!631 = metadata !{i64 605}
!632 = metadata !{i64 606}
!633 = metadata !{i64 607}
!634 = metadata !{i64 608}
!635 = metadata !{i64 609}
!636 = metadata !{i64 610}
!637 = metadata !{i64 611}
!638 = metadata !{i64 612}
!639 = metadata !{i64 613}
!640 = metadata !{i64 614}
!641 = metadata !{i64 615}
!642 = metadata !{i64 616}
!643 = metadata !{i64 617}
!644 = metadata !{i64 618}
!645 = metadata !{i64 619}
!646 = metadata !{i64 620}
!647 = metadata !{i64 621}
!648 = metadata !{i64 622}
!649 = metadata !{i64 623}
!650 = metadata !{i64 624}
!651 = metadata !{i64 625}
!652 = metadata !{i64 626}
!653 = metadata !{i64 627}
!654 = metadata !{i64 628}
!655 = metadata !{i64 629}
!656 = metadata !{i64 630}
!657 = metadata !{i64 631}
!658 = metadata !{i64 632}
!659 = metadata !{i64 633}
!660 = metadata !{i64 634}
!661 = metadata !{i64 635}
!662 = metadata !{i64 636}
!663 = metadata !{i64 637}
!664 = metadata !{i64 638}
!665 = metadata !{i64 639}
!666 = metadata !{i64 640}
!667 = metadata !{i64 641}
!668 = metadata !{i64 642}
!669 = metadata !{i64 643}
!670 = metadata !{i64 644}
!671 = metadata !{i64 645}
!672 = metadata !{i64 646}
!673 = metadata !{i64 647}
!674 = metadata !{i64 648}
!675 = metadata !{i64 649}
!676 = metadata !{i64 650}
!677 = metadata !{i64 651}
!678 = metadata !{i64 652}
!679 = metadata !{i64 653}
!680 = metadata !{i64 654}
!681 = metadata !{i64 655}
!682 = metadata !{i64 656}
!683 = metadata !{i64 657}
!684 = metadata !{i64 658}
!685 = metadata !{i64 659}
!686 = metadata !{i64 660}
!687 = metadata !{i64 661}
!688 = metadata !{i64 662}
!689 = metadata !{i64 663}
!690 = metadata !{i64 664}
!691 = metadata !{i64 665}
!692 = metadata !{i64 666}
!693 = metadata !{i64 667}
!694 = metadata !{i64 668}
!695 = metadata !{i64 669}
!696 = metadata !{i64 670}
!697 = metadata !{i64 671}
!698 = metadata !{i64 672}
!699 = metadata !{i64 673}
!700 = metadata !{metadata !701, metadata !383, i64 0}
!701 = metadata !{metadata !"timeval", metadata !383, i64 0, metadata !383, i64 8}
!702 = metadata !{i64 674}
!703 = metadata !{i64 675}
!704 = metadata !{i64 676}
!705 = metadata !{metadata !701, metadata !383, i64 8}
!706 = metadata !{i64 677}
!707 = metadata !{i64 678}
!708 = metadata !{i64 679}
!709 = metadata !{i64 680}
!710 = metadata !{i64 681}
!711 = metadata !{i64 682}
!712 = metadata !{i64 683}
!713 = metadata !{i64 684}
!714 = metadata !{i64 685}
!715 = metadata !{i64 686}
!716 = metadata !{i64 687}
!717 = metadata !{i64 688}
!718 = metadata !{i64 689}
!719 = metadata !{i64 690}
!720 = metadata !{i64 691}
!721 = metadata !{i64 692}
!722 = metadata !{i64 693}
!723 = metadata !{i64 694}
!724 = metadata !{i64 695}
!725 = metadata !{i64 696}
!726 = metadata !{i64 697}
!727 = metadata !{i64 698}
!728 = metadata !{i64 699}
!729 = metadata !{i64 700}
!730 = metadata !{i64 701}
!731 = metadata !{i64 702}
!732 = metadata !{i64 703}
!733 = metadata !{i64 704}
!734 = metadata !{i64 705}
!735 = metadata !{i64 706}
!736 = metadata !{i64 707}
!737 = metadata !{i64 708}
!738 = metadata !{i64 709}
!739 = metadata !{i64 710}
!740 = metadata !{i64 711}
!741 = metadata !{i64 712}
!742 = metadata !{i64 713}
!743 = metadata !{i64 714}
!744 = metadata !{i64 715}
!745 = metadata !{i64 716}
!746 = metadata !{i64 717}
!747 = metadata !{i64 718}
!748 = metadata !{i64 719}
!749 = metadata !{i64 720}
!750 = metadata !{i64 721}
!751 = metadata !{i64 722}
!752 = metadata !{metadata !383, metadata !383, i64 0}
!753 = metadata !{i64 723}
!754 = metadata !{i64 724}
!755 = metadata !{i64 725}
!756 = metadata !{i64 726}
!757 = metadata !{i64 727}
!758 = metadata !{i64 728}
!759 = metadata !{i64 729}
!760 = metadata !{i64 730}
!761 = metadata !{i64 731}
!762 = metadata !{i64 732}
!763 = metadata !{i64 733}
!764 = metadata !{i64 734}
!765 = metadata !{i64 735}
!766 = metadata !{i64 736}
!767 = metadata !{i64 737}
!768 = metadata !{i64 738}
!769 = metadata !{i64 739}
!770 = metadata !{i64 740}
!771 = metadata !{i64 741}
!772 = metadata !{i64 742}
!773 = metadata !{i64 743}
!774 = metadata !{i64 744}
!775 = metadata !{i64 745}
!776 = metadata !{i64 746}
!777 = metadata !{i64 747}
!778 = metadata !{i64 748}
!779 = metadata !{i64 749}
!780 = metadata !{i64 750}
!781 = metadata !{i64 751}
!782 = metadata !{i64 752}
!783 = metadata !{i64 753}
!784 = metadata !{i64 754}
!785 = metadata !{i64 755}
!786 = metadata !{i64 756}
!787 = metadata !{i64 757}
!788 = metadata !{i64 758}
!789 = metadata !{i64 759}
!790 = metadata !{i64 760}
!791 = metadata !{i64 761}
!792 = metadata !{i64 762}
!793 = metadata !{i64 763}
!794 = metadata !{i64 764}
!795 = metadata !{i64 765}
!796 = metadata !{i64 766}
!797 = metadata !{i64 767}
!798 = metadata !{i64 768}
!799 = metadata !{i64 769}
!800 = metadata !{i64 770}
!801 = metadata !{i64 771}
!802 = metadata !{i64 772}
!803 = metadata !{i64 773}
!804 = metadata !{i64 774}
!805 = metadata !{i64 775}
!806 = metadata !{i64 776}
!807 = metadata !{i64 777}
!808 = metadata !{i64 778}
!809 = metadata !{i64 779}
!810 = metadata !{i64 780}
!811 = metadata !{i64 781}
!812 = metadata !{i64 782}
!813 = metadata !{i64 783}
!814 = metadata !{i64 784}
!815 = metadata !{i64 785}
!816 = metadata !{i64 786}
!817 = metadata !{i64 787}
!818 = metadata !{i64 788}
!819 = metadata !{i64 789}
!820 = metadata !{i64 790}
!821 = metadata !{i64 791}
!822 = metadata !{i64 792}
!823 = metadata !{i64 793}
!824 = metadata !{i64 794}
!825 = metadata !{i64 795}
!826 = metadata !{i64 796}
!827 = metadata !{i64 797}
!828 = metadata !{i64 798}
!829 = metadata !{i64 799}
!830 = metadata !{i64 800}
!831 = metadata !{i64 801}
!832 = metadata !{i64 802}
!833 = metadata !{i64 803}
!834 = metadata !{i64 804}
!835 = metadata !{i64 805}
!836 = metadata !{i64 806}
!837 = metadata !{i64 807}
!838 = metadata !{i64 808}
!839 = metadata !{i64 809}
!840 = metadata !{i64 810}
!841 = metadata !{i64 811}
!842 = metadata !{i64 812}
!843 = metadata !{i64 813}
!844 = metadata !{i64 814}
!845 = metadata !{i64 815}
!846 = metadata !{i64 816}
!847 = metadata !{i64 817}
!848 = metadata !{i64 818}
!849 = metadata !{i64 819}
!850 = metadata !{i64 820}
!851 = metadata !{i64 821}
!852 = metadata !{i64 822}
!853 = metadata !{i64 823}
!854 = metadata !{i64 824}
!855 = metadata !{i64 825}
!856 = metadata !{i64 826}
!857 = metadata !{i64 827}
!858 = metadata !{i64 828}
!859 = metadata !{i64 829}
!860 = metadata !{i64 830}
!861 = metadata !{i64 831}
!862 = metadata !{i64 832}
!863 = metadata !{i64 833}
!864 = metadata !{i64 834}
!865 = metadata !{i64 835}
!866 = metadata !{i64 836}
!867 = metadata !{i64 837}
!868 = metadata !{i64 838}
!869 = metadata !{i64 839}
!870 = metadata !{i64 840}
!871 = metadata !{i64 841}
!872 = metadata !{i64 842}
!873 = metadata !{i64 843}
!874 = metadata !{i64 844}
!875 = metadata !{i64 845}
!876 = metadata !{i64 846}
!877 = metadata !{i64 847}
!878 = metadata !{i64 848}
!879 = metadata !{i64 849}
!880 = metadata !{i64 850}
!881 = metadata !{i64 851}
!882 = metadata !{i64 852}
!883 = metadata !{i64 853}
!884 = metadata !{i64 854}
!885 = metadata !{i64 855}
!886 = metadata !{i64 856}
!887 = metadata !{i64 857}
!888 = metadata !{i64 858}
!889 = metadata !{i64 859}
!890 = metadata !{i64 860}
!891 = metadata !{i64 861}
!892 = metadata !{i64 862}
!893 = metadata !{i64 863}
!894 = metadata !{i64 864}
!895 = metadata !{i64 865}
!896 = metadata !{i64 866}
!897 = metadata !{i64 867}
!898 = metadata !{i64 868}
!899 = metadata !{i64 869}
!900 = metadata !{i64 870}
!901 = metadata !{i64 871}
!902 = metadata !{i64 872}
!903 = metadata !{i64 873}
!904 = metadata !{i64 874}
!905 = metadata !{i64 875}
!906 = metadata !{i64 876}
!907 = metadata !{i64 877}
!908 = metadata !{i64 878}
!909 = metadata !{i64 879}
!910 = metadata !{i64 880}
!911 = metadata !{i64 881}
!912 = metadata !{i64 882}
!913 = metadata !{i64 883}
!914 = metadata !{i64 884}
!915 = metadata !{i64 885}
!916 = metadata !{i64 886}
!917 = metadata !{i64 887}
!918 = metadata !{i64 888}
!919 = metadata !{i64 889}
!920 = metadata !{i64 890}
!921 = metadata !{i64 891}
!922 = metadata !{i64 892}
!923 = metadata !{i64 893}
!924 = metadata !{i64 894}
!925 = metadata !{i64 895}
!926 = metadata !{i64 896}
!927 = metadata !{i64 897}
!928 = metadata !{i64 898}
!929 = metadata !{i64 899}
!930 = metadata !{i64 900}
!931 = metadata !{i64 901}
!932 = metadata !{i64 902}
!933 = metadata !{i64 903}
!934 = metadata !{i64 904}
!935 = metadata !{i64 905}
!936 = metadata !{i64 906}
!937 = metadata !{i64 907}
!938 = metadata !{i64 908}
!939 = metadata !{i64 909}
!940 = metadata !{i64 910}
!941 = metadata !{i64 911}
!942 = metadata !{i64 912}
!943 = metadata !{i64 913}
!944 = metadata !{i64 914}
!945 = metadata !{i64 915}
!946 = metadata !{i64 916}
!947 = metadata !{i64 917}
!948 = metadata !{i64 918}
!949 = metadata !{i64 919}
!950 = metadata !{i64 920}
!951 = metadata !{i64 921}
!952 = metadata !{i64 922}
!953 = metadata !{i64 923}
!954 = metadata !{i64 924}
!955 = metadata !{i64 925}
!956 = metadata !{i64 926}
!957 = metadata !{i64 927}
!958 = metadata !{i64 928}
!959 = metadata !{i64 929}
!960 = metadata !{i64 930}
!961 = metadata !{i64 931}
!962 = metadata !{i64 932}
!963 = metadata !{i64 933}
!964 = metadata !{i64 934}
!965 = metadata !{i64 935}
!966 = metadata !{i64 936}
!967 = metadata !{i64 937}
!968 = metadata !{i64 938}
!969 = metadata !{i64 939}
!970 = metadata !{i64 940}
!971 = metadata !{i64 941}
!972 = metadata !{i64 942}
!973 = metadata !{i64 943}
!974 = metadata !{i64 944}
!975 = metadata !{i64 945}
!976 = metadata !{i64 946}
!977 = metadata !{i64 947}
!978 = metadata !{i64 948}
!979 = metadata !{i64 949}
!980 = metadata !{i64 950}
!981 = metadata !{i64 951}
!982 = metadata !{i64 952}
!983 = metadata !{i64 953}
!984 = metadata !{i64 954}
!985 = metadata !{i64 955}
!986 = metadata !{i64 956}
!987 = metadata !{i64 957}
!988 = metadata !{i64 958}
!989 = metadata !{i64 959}
!990 = metadata !{i64 960}
!991 = metadata !{i64 961}
!992 = metadata !{i64 962}
!993 = metadata !{i64 963}
!994 = metadata !{i64 964}
!995 = metadata !{i64 965}
!996 = metadata !{i64 966}
!997 = metadata !{i64 967}
!998 = metadata !{i64 968}
!999 = metadata !{i64 969}
!1000 = metadata !{i64 970}
!1001 = metadata !{i64 971}
!1002 = metadata !{i64 972}
!1003 = metadata !{i64 973}
!1004 = metadata !{i64 974}
!1005 = metadata !{i64 975}
!1006 = metadata !{i64 976}
!1007 = metadata !{i64 977}
!1008 = metadata !{i64 978}
!1009 = metadata !{i64 979}
!1010 = metadata !{i64 980}
!1011 = metadata !{i64 981}
!1012 = metadata !{i64 982}
!1013 = metadata !{i64 983}
!1014 = metadata !{i64 984}
!1015 = metadata !{i64 985}
!1016 = metadata !{i64 986}
!1017 = metadata !{i64 987}
!1018 = metadata !{i64 988}
!1019 = metadata !{i64 989}
!1020 = metadata !{i64 990}
!1021 = metadata !{i64 991}
!1022 = metadata !{i64 992}
!1023 = metadata !{i64 993}
!1024 = metadata !{i64 994}
!1025 = metadata !{i64 995}
!1026 = metadata !{i64 996}
!1027 = metadata !{i64 997}
!1028 = metadata !{i64 998}
!1029 = metadata !{i64 999}
!1030 = metadata !{i64 1000}
!1031 = metadata !{i64 1001}
!1032 = metadata !{i64 1002}
!1033 = metadata !{i64 1003}
!1034 = metadata !{i64 1004}
!1035 = metadata !{i64 1005}
!1036 = metadata !{i64 1006}
!1037 = metadata !{i64 1007}
!1038 = metadata !{i64 1008}
!1039 = metadata !{i64 1009}
!1040 = metadata !{i64 1010}
!1041 = metadata !{i64 1011}
!1042 = metadata !{i64 1012}
!1043 = metadata !{i64 1013}
!1044 = metadata !{i64 1014}
!1045 = metadata !{i64 1015}
!1046 = metadata !{i64 1016}
!1047 = metadata !{i64 1017}
!1048 = metadata !{i64 1018}
!1049 = metadata !{i64 1019}
!1050 = metadata !{i64 1020}
!1051 = metadata !{i64 1021}
!1052 = metadata !{i64 1022}
!1053 = metadata !{i64 1023}
!1054 = metadata !{i64 1024}
!1055 = metadata !{i64 1025}
!1056 = metadata !{i64 1026}
!1057 = metadata !{i64 1027}
!1058 = metadata !{i64 1028}
!1059 = metadata !{i64 1029}
!1060 = metadata !{i64 1030}
!1061 = metadata !{i64 1031}
!1062 = metadata !{i64 1032}
!1063 = metadata !{i64 1033}
!1064 = metadata !{i64 1034}
!1065 = metadata !{i64 1035}
!1066 = metadata !{i64 1036}
!1067 = metadata !{i64 1037}
!1068 = metadata !{i64 1038}
!1069 = metadata !{i64 1039}
!1070 = metadata !{i64 1040}
!1071 = metadata !{i64 1041}
!1072 = metadata !{i64 1042}
!1073 = metadata !{i64 1043}
!1074 = metadata !{i64 1044}
!1075 = metadata !{i64 1045}
!1076 = metadata !{i64 1046}
!1077 = metadata !{i64 1047}
!1078 = metadata !{i64 1048}
!1079 = metadata !{i64 1049}
!1080 = metadata !{i64 1050}
!1081 = metadata !{i64 1051}
!1082 = metadata !{i64 1052}
!1083 = metadata !{i64 1053}
!1084 = metadata !{i64 1054}
!1085 = metadata !{i64 1055}
!1086 = metadata !{i64 1056}
!1087 = metadata !{i64 1057}
!1088 = metadata !{i64 1058}
!1089 = metadata !{i64 1059}
!1090 = metadata !{i64 1060}
!1091 = metadata !{i64 1061}
!1092 = metadata !{i64 1062}
!1093 = metadata !{i64 1063}
!1094 = metadata !{i64 1064}
!1095 = metadata !{i64 1065}
!1096 = metadata !{i64 1066}
!1097 = metadata !{i64 1067}
!1098 = metadata !{i64 1068}
!1099 = metadata !{i64 1069}
!1100 = metadata !{i64 1070}
!1101 = metadata !{i64 1071}
!1102 = metadata !{i64 1072}
!1103 = metadata !{i64 1073}
!1104 = metadata !{i64 1074}
!1105 = metadata !{i64 1075}
!1106 = metadata !{i64 1076}
!1107 = metadata !{i64 1077}
!1108 = metadata !{i64 1078}
!1109 = metadata !{i64 1079}
!1110 = metadata !{i64 1080}
!1111 = metadata !{i64 1081}
!1112 = metadata !{i64 1082}
!1113 = metadata !{i64 1083}
!1114 = metadata !{i64 1084}
!1115 = metadata !{i64 1085}
!1116 = metadata !{i64 1086}
!1117 = metadata !{i64 1087}
!1118 = metadata !{i64 1088}
!1119 = metadata !{i64 1089}
!1120 = metadata !{i64 1090}
!1121 = metadata !{i64 1091}
!1122 = metadata !{i64 1092}
!1123 = metadata !{i64 1093}
!1124 = metadata !{i64 1094}
!1125 = metadata !{i64 1095}
!1126 = metadata !{i64 1096}
!1127 = metadata !{i64 1097}
!1128 = metadata !{i64 1098}
!1129 = metadata !{i64 1099}
!1130 = metadata !{i64 1100}
!1131 = metadata !{i64 1101}
!1132 = metadata !{i64 1102}
!1133 = metadata !{i64 1103}
!1134 = metadata !{i64 1104}
!1135 = metadata !{i64 1105}
!1136 = metadata !{i64 1106}
!1137 = metadata !{i64 1107}
!1138 = metadata !{i64 1108}
!1139 = metadata !{i64 1109}
!1140 = metadata !{i64 1110}
!1141 = metadata !{i64 1111}
!1142 = metadata !{i64 1112}
!1143 = metadata !{i64 1113}
!1144 = metadata !{i64 1114}
!1145 = metadata !{i64 1115}
!1146 = metadata !{i64 1116}
!1147 = metadata !{i64 1117}
!1148 = metadata !{i64 1118}
!1149 = metadata !{i64 1119}
!1150 = metadata !{i64 1120}
!1151 = metadata !{i64 1121}
!1152 = metadata !{i64 1122}
!1153 = metadata !{i64 1123}
!1154 = metadata !{i64 1124}
!1155 = metadata !{i64 1125}
!1156 = metadata !{i64 1126}
!1157 = metadata !{i64 1127}
!1158 = metadata !{i64 1128}
!1159 = metadata !{i64 1129}
!1160 = metadata !{i64 1130}
!1161 = metadata !{i64 1131}
!1162 = metadata !{i64 1132}
!1163 = metadata !{i64 1133}
!1164 = metadata !{i64 1134}
!1165 = metadata !{i64 1135}
!1166 = metadata !{i64 1136}
!1167 = metadata !{i64 1137}
!1168 = metadata !{i64 1138}
!1169 = metadata !{i64 1139}
!1170 = metadata !{i64 1140}
!1171 = metadata !{i64 1141}
!1172 = metadata !{i64 1142}
!1173 = metadata !{i64 1143}
!1174 = metadata !{i64 1144}
!1175 = metadata !{i64 1145}
!1176 = metadata !{i64 1146}
!1177 = metadata !{i64 1147}
!1178 = metadata !{i64 1148}
!1179 = metadata !{i64 1149}
!1180 = metadata !{i64 1150}
!1181 = metadata !{i64 1151}
!1182 = metadata !{i64 1152}
!1183 = metadata !{i64 1153}
!1184 = metadata !{i64 1154}
!1185 = metadata !{i64 1155}
!1186 = metadata !{i64 1156}
!1187 = metadata !{i64 1157}
!1188 = metadata !{i64 1158}
!1189 = metadata !{i64 1159}
!1190 = metadata !{i64 1160}
!1191 = metadata !{i64 1161}
!1192 = metadata !{i64 1162}
!1193 = metadata !{i64 1163}
!1194 = metadata !{i64 1164}
!1195 = metadata !{i64 1165}
!1196 = metadata !{i64 1166}
!1197 = metadata !{i64 1167}
!1198 = metadata !{i64 1168}
!1199 = metadata !{i64 1169}
!1200 = metadata !{i64 1170}
!1201 = metadata !{i64 1171}
!1202 = metadata !{i64 1172}
!1203 = metadata !{i64 1173}
!1204 = metadata !{i64 1174}
!1205 = metadata !{i64 1175}
!1206 = metadata !{i64 1176}
!1207 = metadata !{i64 1177}
!1208 = metadata !{i64 1178}
!1209 = metadata !{i64 1179}
!1210 = metadata !{i64 1180}
!1211 = metadata !{i64 1181}
!1212 = metadata !{i64 1182}
!1213 = metadata !{i64 1183}
!1214 = metadata !{i64 1184}
!1215 = metadata !{i64 1185}
!1216 = metadata !{i64 1186}
!1217 = metadata !{i64 1187}
!1218 = metadata !{i64 1188}
!1219 = metadata !{i64 1189}
!1220 = metadata !{i64 1190}
!1221 = metadata !{i64 1191}
!1222 = metadata !{i64 1192}
!1223 = metadata !{i64 1193}
!1224 = metadata !{i64 1194}
!1225 = metadata !{i64 1195}
!1226 = metadata !{i64 1196}
!1227 = metadata !{i64 1197}
!1228 = metadata !{i64 1198}
!1229 = metadata !{i64 1199}
!1230 = metadata !{i64 1200}
!1231 = metadata !{i64 1201}
!1232 = metadata !{i64 1202}
!1233 = metadata !{i64 1203}
!1234 = metadata !{i64 1204}
!1235 = metadata !{i64 1205}
!1236 = metadata !{i64 1206}
!1237 = metadata !{i64 1207}
!1238 = metadata !{i64 1208}
!1239 = metadata !{i64 1209}
!1240 = metadata !{i64 1210}
!1241 = metadata !{i64 1211}
!1242 = metadata !{i64 1212}
!1243 = metadata !{i64 1213}
!1244 = metadata !{i64 1214}
!1245 = metadata !{i64 1215}
!1246 = metadata !{i64 1216}
!1247 = metadata !{i64 1217}
!1248 = metadata !{i64 1218}
!1249 = metadata !{i64 1219}
!1250 = metadata !{i64 1220}
!1251 = metadata !{i64 1221}
!1252 = metadata !{i64 1222}
!1253 = metadata !{i64 1223}
!1254 = metadata !{i64 1224}
!1255 = metadata !{i64 1225}
!1256 = metadata !{i64 1226}
!1257 = metadata !{i64 1227}
!1258 = metadata !{i64 1228}
!1259 = metadata !{i64 1229}
!1260 = metadata !{i64 1230}
!1261 = metadata !{i64 1231}
!1262 = metadata !{i64 1232}
!1263 = metadata !{i64 1233}
!1264 = metadata !{i64 1234}
!1265 = metadata !{i64 1235}
!1266 = metadata !{i64 1236}
!1267 = metadata !{i64 1237}
!1268 = metadata !{i64 1238}
!1269 = metadata !{i64 1239}
!1270 = metadata !{i64 1240}
!1271 = metadata !{i64 1241}
!1272 = metadata !{i64 1242}
!1273 = metadata !{i64 1243}
!1274 = metadata !{i64 1244}
!1275 = metadata !{i64 1245}
!1276 = metadata !{i64 1246}
!1277 = metadata !{i64 1247}
!1278 = metadata !{i64 1248}
!1279 = metadata !{i64 1249}
!1280 = metadata !{i64 1250}
!1281 = metadata !{i64 1251}
!1282 = metadata !{i64 1252}
!1283 = metadata !{i64 1253}
!1284 = metadata !{i64 1254}
!1285 = metadata !{i64 1255}
!1286 = metadata !{i64 1256}
!1287 = metadata !{i64 1257}
!1288 = metadata !{i64 1258}
!1289 = metadata !{i64 1259}
!1290 = metadata !{i64 1260}
!1291 = metadata !{i64 1261}
!1292 = metadata !{i64 1262}
!1293 = metadata !{i64 1263}
!1294 = metadata !{i64 1264}
!1295 = metadata !{i64 1265}
!1296 = metadata !{i64 1266}
!1297 = metadata !{i64 1267}
!1298 = metadata !{i64 1268}
