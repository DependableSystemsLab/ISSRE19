; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/refine-xsbench/fault injection/llfi-O3/xsbench.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.GridPoint = type { double, i32* }
%struct.NuclideGridPoint = type { double, double, double, double, double, double }
%struct.Inputs = type { i32, i64, i64, i32, i8* }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str3 = private unnamed_addr constant [24 x i8] c"ERROR - Out Of Memory!\0A\00", align 1
@.str5 = private unnamed_addr constant [46 x i8] c"\0DAligning Unionized Grid...(%.0lf%% complete)\00", align 1
@str = private unnamed_addr constant [36 x i8] c"Generating Unionized Energy Grid...\00"
@str7 = private unnamed_addr constant [41 x i8] c"Copying and Sorting all nuclide grids...\00"
@str8 = private unnamed_addr constant [40 x i8] c"Assigning energies to unionized grid...\00"
@str9 = private unnamed_addr constant [47 x i8] c"Assigning pointers to Unionized Energy Grid...\00"
@.str1 = private unnamed_addr constant [41 x i8] c"Developed at Argonne National Laboratory\00", align 1
@.str2 = private unnamed_addr constant [12 x i8] c"Version: %d\00", align 1
@stdout = external global %struct._IO_FILE*
@.str51 = private unnamed_addr constant [8 x i8] c"RESULTS\00", align 1
@.str6 = private unnamed_addr constant [17 x i8] c"Threads:     %d\0A\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"Lookups:     \00", align 1
@.str8 = private unnamed_addr constant [29 x i8] c"Verification checksum: %llu\0A\00", align 1
@.str9 = private unnamed_addr constant [12 x i8] c"results.txt\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"%d\09%d\0A\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"INPUT SUMMARY\00", align 1
@.str14 = private unnamed_addr constant [34 x i8] c"Materials:                    %d\0A\00", align 1
@.str15 = private unnamed_addr constant [34 x i8] c"H-M Benchmark Size:           %s\0A\00", align 1
@.str16 = private unnamed_addr constant [35 x i8] c"Total Nuclides:               %ld\0A\00", align 1
@.str17 = private unnamed_addr constant [31 x i8] c"Gridpoints (per Nuclide):     \00", align 1
@.str18 = private unnamed_addr constant [31 x i8] c"Unionized Energy Gridpoints:  \00", align 1
@.str19 = private unnamed_addr constant [31 x i8] c"XS Lookups:                   \00", align 1
@.str20 = private unnamed_addr constant [34 x i8] c"Threads:                      %d\0A\00", align 1
@.str21 = private unnamed_addr constant [31 x i8] c"Est. Memory Usage (MB):       \00", align 1
@.str22 = private unnamed_addr constant [15 x i8] c"INITIALIZATION\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str25 = private unnamed_addr constant [11 x i8] c"%ld,%03ld\0A\00", align 1
@.str26 = private unnamed_addr constant [17 x i8] c"%ld,%03ld,%03ld\0A\00", align 1
@.str27 = private unnamed_addr constant [23 x i8] c"%ld,%03ld,%03ld,%03ld\0A\00", align 1
@.str40 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@.str41 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@.str42 = private unnamed_addr constant [3 x i8] c"XL\00", align 1
@.str43 = private unnamed_addr constant [4 x i8] c"XXL\00", align 1
@str2 = private unnamed_addr constant [487 x i8] c"                   __   __ ___________                 _                        \0A                   \5C \5C / //  ___| ___ \5C               | |                       \0A                    \5C V / \5C `--.| |_/ / ___ _ __   ___| |__                     \0A                    /   \5C  `--. \5C ___ \5C/ _ \5C '_ \5C / __| '_ \5C                    \0A                   / /^\5C \5C/\5C__/ / |_/ /  __/ | | | (__| | | |                   \0A                   \5C/   \5C/\5C____/\5C____/ \5C___|_| |_|\5C___|_| |_|                   \0A\00"
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
@.str4 = private unnamed_addr constant [11 x i8] c"SIMULATION\00", align 1
@.str53 = private unnamed_addr constant [41 x i8] c"\0DCalculating XS's... (%.0lf%% completed)\00", align 1
@.str64 = private unnamed_addr constant [39 x i8] c"%.5lf %d %.5lf %.5lf %.5lf %.5lf %.5lf\00", align 1
@str5 = private unnamed_addr constant [35 x i8] c"Generating Nuclide Energy Grids...\00"
@str86 = private unnamed_addr constant [32 x i8] c"Sorting Nuclide Energy Grids...\00"
@str97 = private unnamed_addr constant [16 x i8] c"Loading Mats...\00"
@str10 = private unnamed_addr constant [21 x i8] c"Simulation complete.\00"
@load_mats.mats0_Sml = private unnamed_addr constant [34 x i32] [i32 58, i32 59, i32 60, i32 61, i32 40, i32 42, i32 43, i32 44, i32 45, i32 46, i32 1, i32 2, i32 3, i32 7, i32 8, i32 9, i32 10, i32 29, i32 57, i32 47, i32 48, i32 0, i32 62, i32 15, i32 33, i32 34, i32 52, i32 53, i32 54, i32 55, i32 56, i32 18, i32 23, i32 41], align 16
@load_mats.mats0_Lrg = private unnamed_addr constant [321 x i32] [i32 58, i32 59, i32 60, i32 61, i32 40, i32 42, i32 43, i32 44, i32 45, i32 46, i32 1, i32 2, i32 3, i32 7, i32 8, i32 9, i32 10, i32 29, i32 57, i32 47, i32 48, i32 0, i32 62, i32 15, i32 33, i32 34, i32 52, i32 53, i32 54, i32 55, i32 56, i32 18, i32 23, i32 41, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@load_mats.mats1 = private unnamed_addr constant [5 x i32] [i32 63, i32 64, i32 65, i32 66, i32 67], align 16
@load_mats.mats3 = private unnamed_addr constant [4 x i32] [i32 24, i32 41, i32 4, i32 5], align 16
@load_mats.mats4 = private unnamed_addr constant [27 x i32] [i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 26, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14, i32 6, i32 16, i32 17], align 16
@load_mats.mats9 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@load_mats.mats11 = private unnamed_addr constant [9 x i32] [i32 24, i32 41, i32 4, i32 5, i32 63, i32 64, i32 65, i32 66, i32 67], align 16
@rn_v.seed = internal unnamed_addr global i64 1337, align 8
@.str = private unnamed_addr constant [12 x i8] c"XS_data.dat\00", align 1
@.str116 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str217 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

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
  %macro_xs_vector8 = bitcast double* %macro_xs_vector to i8*, !llfi_index !87
  call void @llvm.memset.p0i8.i64(i8* %macro_xs_vector8, i8 0, i64 40, i32 8, i1 false), !llfi_index !88
  %1 = mul nsw i64 %n_gridpoints, %n_isotopes, !llfi_index !89
  %2 = add nsw i64 %1, -1, !llfi_index !90
  %3 = icmp sgt i64 %2, 1, !llfi_index !91
  br i1 %3, label %.lr.ph.i, label %grid_search.exit, !llfi_index !92

.lr.ph.i:                                         ; preds = %.lr.ph.i, %0
  %length.03.i = phi i64 [ %9, %.lr.ph.i ], [ %2, %0 ], !llfi_index !93
  %lowerLimit.02.i = phi i64 [ %lowerLimit.0..i, %.lr.ph.i ], [ 0, %0 ], !llfi_index !94
  %upperLimit.01.i = phi i64 [ %.upperLimit.0.i, %.lr.ph.i ], [ %2, %0 ], !llfi_index !95
  %4 = sdiv i64 %length.03.i, 2, !llfi_index !96
  %5 = add nsw i64 %4, %lowerLimit.02.i, !llfi_index !97
  %6 = getelementptr inbounds %struct.GridPoint* %energy_grid, i64 %5, i32 0, !llfi_index !98
  %7 = load double* %6, align 8, !tbaa !99, !llfi_index !100
  %8 = fcmp ogt double %7, %p_energy, !llfi_index !101
  %.upperLimit.0.i = select i1 %8, i64 %5, i64 %upperLimit.01.i, !llfi_index !102
  %lowerLimit.0..i = select i1 %8, i64 %lowerLimit.02.i, i64 %5, !llfi_index !103
  %9 = sub nsw i64 %.upperLimit.0.i, %lowerLimit.0..i, !llfi_index !104
  %10 = icmp sgt i64 %9, 1, !llfi_index !105
  br i1 %10, label %.lr.ph.i, label %grid_search.exit.loopexit, !llfi_index !106

grid_search.exit.loopexit:                        ; preds = %.lr.ph.i
  %phitmp = shl i64 %lowerLimit.0..i, 32, !llfi_index !107
  %phitmp5 = ashr exact i64 %phitmp, 32, !llfi_index !108
  br label %grid_search.exit, !llfi_index !109

grid_search.exit:                                 ; preds = %grid_search.exit.loopexit, %0
  %lowerLimit.0.lcssa.i = phi i64 [ 0, %0 ], [ %phitmp5, %grid_search.exit.loopexit ], !llfi_index !110
  %11 = sext i32 %mat to i64, !llfi_index !111
  %12 = getelementptr inbounds i32* %num_nucs, i64 %11, !llfi_index !112
  %13 = load i32* %12, align 4, !tbaa !12, !llfi_index !113
  %14 = icmp sgt i32 %13, 0, !llfi_index !114
  br i1 %14, label %.lr.ph, label %._crit_edge, !llfi_index !115

.lr.ph:                                           ; preds = %grid_search.exit
  %15 = getelementptr inbounds i32** %mats, i64 %11, !llfi_index !116
  %16 = load i32** %15, align 8, !tbaa !22, !llfi_index !117
  %17 = getelementptr inbounds double** %concs, i64 %11, !llfi_index !118
  %18 = load double** %17, align 8, !tbaa !22, !llfi_index !119
  %19 = getelementptr inbounds %struct.GridPoint* %energy_grid, i64 %lowerLimit.0.lcssa.i, i32 1, !llfi_index !120
  %20 = load i32** %19, align 8, !tbaa !4, !llfi_index !121
  %21 = add nsw i64 %n_gridpoints, -1, !llfi_index !122
  br label %22, !llfi_index !123

; <label>:22                                      ; preds = %calculate_micro_xs.exit, %.lr.ph
  %23 = phi double [ 0.000000e+00, %.lr.ph ], [ %96, %calculate_micro_xs.exit ], !llfi_index !124
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %calculate_micro_xs.exit ], !llfi_index !125
  %24 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %88, %calculate_micro_xs.exit ], !llfi_index !126
  %25 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %92, %calculate_micro_xs.exit ], !llfi_index !127
  %26 = getelementptr inbounds i32* %16, i64 %indvars.iv, !llfi_index !128
  %27 = load i32* %26, align 4, !tbaa !12, !llfi_index !129
  %28 = getelementptr inbounds double* %18, i64 %indvars.iv, !llfi_index !130
  %29 = load double* %28, align 8, !tbaa !48, !llfi_index !131
  %30 = sext i32 %27 to i64, !llfi_index !132
  %31 = getelementptr inbounds i32* %20, i64 %30, !llfi_index !133
  %32 = load i32* %31, align 4, !tbaa !12, !llfi_index !134
  %33 = sext i32 %32 to i64, !llfi_index !135
  %34 = icmp eq i64 %33, %21, !llfi_index !136
  br i1 %34, label %35, label %41, !llfi_index !137

; <label>:35                                      ; preds = %22
  %36 = add nsw i32 %32, -1, !llfi_index !138
  %37 = sext i32 %36 to i64, !llfi_index !139
  %38 = getelementptr inbounds %struct.NuclideGridPoint** %nuclide_grids, i64 %30, !llfi_index !140
  %39 = load %struct.NuclideGridPoint** %38, align 8, !tbaa !22, !llfi_index !141
  %40 = getelementptr inbounds %struct.NuclideGridPoint* %39, i64 %37, !llfi_index !142
  br label %calculate_micro_xs.exit, !llfi_index !143

; <label>:41                                      ; preds = %22
  %42 = getelementptr inbounds %struct.NuclideGridPoint** %nuclide_grids, i64 %30, !llfi_index !144
  %43 = load %struct.NuclideGridPoint** %42, align 8, !tbaa !22, !llfi_index !145
  %44 = getelementptr inbounds %struct.NuclideGridPoint* %43, i64 %33, !llfi_index !146
  br label %calculate_micro_xs.exit, !llfi_index !147

calculate_micro_xs.exit:                          ; preds = %41, %35
  %low.0.i = phi %struct.NuclideGridPoint* [ %40, %35 ], [ %44, %41 ], !llfi_index !148
  %45 = getelementptr inbounds %struct.NuclideGridPoint* %low.0.i, i64 1, i32 0, !llfi_index !149
  %46 = load double* %45, align 8, !tbaa !32, !llfi_index !150
  %47 = fsub double %46, %p_energy, !llfi_index !151
  %48 = getelementptr inbounds %struct.NuclideGridPoint* %low.0.i, i64 0, i32 0, !llfi_index !152
  %49 = load double* %48, align 8, !tbaa !32, !llfi_index !153
  %50 = fsub double %46, %49, !llfi_index !154
  %51 = fdiv double %47, %50, !llfi_index !155
  %52 = getelementptr inbounds %struct.NuclideGridPoint* %low.0.i, i64 1, i32 1, !llfi_index !156
  %53 = load double* %52, align 8, !tbaa !41, !llfi_index !157
  %54 = getelementptr inbounds %struct.NuclideGridPoint* %low.0.i, i64 0, i32 1, !llfi_index !158
  %55 = getelementptr inbounds %struct.NuclideGridPoint* %low.0.i, i64 1, i32 2, !llfi_index !159
  %56 = load double* %55, align 8, !tbaa !45, !llfi_index !160
  %57 = bitcast double* %54 to <2 x double>*, !llfi_index !161
  %58 = load <2 x double>* %57, align 8, !tbaa !48, !llfi_index !162
  %59 = insertelement <2 x double> undef, double %53, i32 0, !llfi_index !163
  %60 = insertelement <2 x double> %59, double %56, i32 1, !llfi_index !164
  %61 = fsub <2 x double> %60, %58, !llfi_index !165
  %62 = insertelement <2 x double> undef, double %51, i32 0, !llfi_index !166
  %63 = insertelement <2 x double> %62, double %51, i32 1, !llfi_index !167
  %64 = fmul <2 x double> %63, %61, !llfi_index !168
  %65 = fsub <2 x double> %60, %64, !llfi_index !169
  %66 = getelementptr inbounds %struct.NuclideGridPoint* %low.0.i, i64 1, i32 3, !llfi_index !170
  %67 = load double* %66, align 8, !tbaa !60, !llfi_index !171
  %68 = getelementptr inbounds %struct.NuclideGridPoint* %low.0.i, i64 0, i32 3, !llfi_index !172
  %69 = getelementptr inbounds %struct.NuclideGridPoint* %low.0.i, i64 1, i32 4, !llfi_index !173
  %70 = load double* %69, align 8, !tbaa !65, !llfi_index !174
  %71 = bitcast double* %68 to <2 x double>*, !llfi_index !175
  %72 = load <2 x double>* %71, align 8, !tbaa !48, !llfi_index !176
  %73 = insertelement <2 x double> undef, double %67, i32 0, !llfi_index !177
  %74 = insertelement <2 x double> %73, double %70, i32 1, !llfi_index !178
  %75 = fsub <2 x double> %74, %72, !llfi_index !179
  %76 = fmul <2 x double> %63, %75, !llfi_index !180
  %77 = fsub <2 x double> %74, %76, !llfi_index !181
  %78 = getelementptr inbounds %struct.NuclideGridPoint* %low.0.i, i64 1, i32 5, !llfi_index !182
  %79 = load double* %78, align 8, !tbaa !77, !llfi_index !183
  %80 = getelementptr inbounds %struct.NuclideGridPoint* %low.0.i, i64 0, i32 5, !llfi_index !184
  %81 = load double* %80, align 8, !tbaa !77, !llfi_index !185
  %82 = fsub double %79, %81, !llfi_index !186
  %83 = fmul double %51, %82, !llfi_index !187
  %84 = fsub double %79, %83, !llfi_index !188
  %85 = insertelement <2 x double> undef, double %29, i32 0, !llfi_index !189
  %86 = insertelement <2 x double> %85, double %29, i32 1, !llfi_index !190
  %87 = fmul <2 x double> %86, %65, !llfi_index !191
  %88 = fadd <2 x double> %24, %87, !llfi_index !192
  %89 = bitcast double* %macro_xs_vector to <2 x double>*, !llfi_index !193
  store <2 x double> %88, <2 x double>* %89, align 8, !tbaa !48, !llfi_index !194
  %90 = getelementptr inbounds double* %macro_xs_vector, i64 2, !llfi_index !195
  %91 = fmul <2 x double> %86, %77, !llfi_index !196
  %92 = fadd <2 x double> %25, %91, !llfi_index !197
  %93 = bitcast double* %90 to <2 x double>*, !llfi_index !198
  store <2 x double> %92, <2 x double>* %93, align 8, !tbaa !48, !llfi_index !199
  %94 = fmul double %29, %84, !llfi_index !200
  %95 = getelementptr inbounds double* %macro_xs_vector, i64 4, !llfi_index !201
  %96 = fadd double %23, %94, !llfi_index !202
  store double %96, double* %95, align 8, !tbaa !48, !llfi_index !203
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !204
  %97 = trunc i64 %indvars.iv.next to i32, !llfi_index !205
  %98 = icmp slt i32 %97, %13, !llfi_index !206
  br i1 %98, label %22, label %._crit_edge, !llfi_index !207

._crit_edge:                                      ; preds = %calculate_micro_xs.exit, %grid_search.exit
  ret void, !llfi_index !208
}

; Function Attrs: nounwind readonly uwtable
define i64 @grid_search(i64 %n, double %quarry, %struct.GridPoint* nocapture readonly %A) #1 {
  %1 = add nsw i64 %n, -1, !llfi_index !209
  %2 = icmp sgt i64 %1, 1, !llfi_index !210
  br i1 %2, label %.lr.ph, label %._crit_edge, !llfi_index !211

.lr.ph:                                           ; preds = %.lr.ph, %0
  %length.03 = phi i64 [ %8, %.lr.ph ], [ %1, %0 ], !llfi_index !212
  %lowerLimit.02 = phi i64 [ %lowerLimit.0., %.lr.ph ], [ 0, %0 ], !llfi_index !213
  %upperLimit.01 = phi i64 [ %.upperLimit.0, %.lr.ph ], [ %1, %0 ], !llfi_index !214
  %3 = sdiv i64 %length.03, 2, !llfi_index !215
  %4 = add nsw i64 %3, %lowerLimit.02, !llfi_index !216
  %5 = getelementptr inbounds %struct.GridPoint* %A, i64 %4, i32 0, !llfi_index !217
  %6 = load double* %5, align 8, !tbaa !99, !llfi_index !218
  %7 = fcmp ogt double %6, %quarry, !llfi_index !219
  %.upperLimit.0 = select i1 %7, i64 %4, i64 %upperLimit.01, !llfi_index !220
  %lowerLimit.0. = select i1 %7, i64 %lowerLimit.02, i64 %4, !llfi_index !221
  %8 = sub nsw i64 %.upperLimit.0, %lowerLimit.0., !llfi_index !222
  %9 = icmp sgt i64 %8, 1, !llfi_index !223
  br i1 %9, label %.lr.ph, label %._crit_edge, !llfi_index !224

._crit_edge:                                      ; preds = %.lr.ph, %0
  %lowerLimit.0.lcssa = phi i64 [ 0, %0 ], [ %lowerLimit.0., %.lr.ph ], !llfi_index !225
  ret i64 %lowerLimit.0.lcssa, !llfi_index !226
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @generate_grids(%struct.NuclideGridPoint** nocapture readonly %nuclide_grids, i64 %n_isotopes, i64 %n_gridpoints) #0 {
  %1 = icmp sgt i64 %n_isotopes, 0, !llfi_index !227
  %2 = icmp sgt i64 %n_gridpoints, 0, !llfi_index !228
  %or.cond = and i1 %1, %2, !llfi_index !229
  br i1 %or.cond, label %.lr.ph.us, label %._crit_edge3, !llfi_index !230

; <label>:3                                       ; preds = %5
  %4 = add nsw i64 %i.02.us, 1, !llfi_index !231
  %exitcond4 = icmp eq i64 %4, %n_isotopes, !llfi_index !232
  br i1 %exitcond4, label %._crit_edge3, label %.lr.ph.us, !llfi_index !233

; <label>:5                                       ; preds = %.lr.ph.us, %5
  %j.01.us = phi i64 [ 0, %.lr.ph.us ], [ %36, %5 ], !llfi_index !234
  %6 = tail call i32 @rand() #2, !llfi_index !235
  %7 = sitofp i32 %6 to double, !llfi_index !236
  %8 = fdiv double %7, 0x41DFFFFFFFC00000, !llfi_index !237
  %9 = load %struct.NuclideGridPoint** %37, align 8, !tbaa !22, !llfi_index !238
  %10 = getelementptr inbounds %struct.NuclideGridPoint* %9, i64 %j.01.us, i32 0, !llfi_index !239
  store double %8, double* %10, align 8, !tbaa !32, !llfi_index !240
  %11 = tail call i32 @rand() #2, !llfi_index !241
  %12 = sitofp i32 %11 to double, !llfi_index !242
  %13 = fdiv double %12, 0x41DFFFFFFFC00000, !llfi_index !243
  %14 = load %struct.NuclideGridPoint** %37, align 8, !tbaa !22, !llfi_index !244
  %15 = getelementptr inbounds %struct.NuclideGridPoint* %14, i64 %j.01.us, i32 1, !llfi_index !245
  store double %13, double* %15, align 8, !tbaa !41, !llfi_index !246
  %16 = tail call i32 @rand() #2, !llfi_index !247
  %17 = sitofp i32 %16 to double, !llfi_index !248
  %18 = fdiv double %17, 0x41DFFFFFFFC00000, !llfi_index !249
  %19 = load %struct.NuclideGridPoint** %37, align 8, !tbaa !22, !llfi_index !250
  %20 = getelementptr inbounds %struct.NuclideGridPoint* %19, i64 %j.01.us, i32 2, !llfi_index !251
  store double %18, double* %20, align 8, !tbaa !45, !llfi_index !252
  %21 = tail call i32 @rand() #2, !llfi_index !253
  %22 = sitofp i32 %21 to double, !llfi_index !254
  %23 = fdiv double %22, 0x41DFFFFFFFC00000, !llfi_index !255
  %24 = load %struct.NuclideGridPoint** %37, align 8, !tbaa !22, !llfi_index !256
  %25 = getelementptr inbounds %struct.NuclideGridPoint* %24, i64 %j.01.us, i32 3, !llfi_index !257
  store double %23, double* %25, align 8, !tbaa !60, !llfi_index !258
  %26 = tail call i32 @rand() #2, !llfi_index !259
  %27 = sitofp i32 %26 to double, !llfi_index !260
  %28 = fdiv double %27, 0x41DFFFFFFFC00000, !llfi_index !261
  %29 = load %struct.NuclideGridPoint** %37, align 8, !tbaa !22, !llfi_index !262
  %30 = getelementptr inbounds %struct.NuclideGridPoint* %29, i64 %j.01.us, i32 4, !llfi_index !263
  store double %28, double* %30, align 8, !tbaa !65, !llfi_index !264
  %31 = tail call i32 @rand() #2, !llfi_index !265
  %32 = sitofp i32 %31 to double, !llfi_index !266
  %33 = fdiv double %32, 0x41DFFFFFFFC00000, !llfi_index !267
  %34 = load %struct.NuclideGridPoint** %37, align 8, !tbaa !22, !llfi_index !268
  %35 = getelementptr inbounds %struct.NuclideGridPoint* %34, i64 %j.01.us, i32 5, !llfi_index !269
  store double %33, double* %35, align 8, !tbaa !77, !llfi_index !270
  %36 = add nsw i64 %j.01.us, 1, !llfi_index !271
  %exitcond = icmp eq i64 %36, %n_gridpoints, !llfi_index !272
  br i1 %exitcond, label %3, label %5, !llfi_index !273

.lr.ph.us:                                        ; preds = %3, %0
  %i.02.us = phi i64 [ %4, %3 ], [ 0, %0 ], !llfi_index !274
  %37 = getelementptr inbounds %struct.NuclideGridPoint** %nuclide_grids, i64 %i.02.us, !llfi_index !275
  br label %5, !llfi_index !276

._crit_edge3:                                     ; preds = %3, %0
  ret void, !llfi_index !277
}

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: nounwind uwtable
define void @generate_grids_v(%struct.NuclideGridPoint** nocapture readonly %nuclide_grids, i64 %n_isotopes, i64 %n_gridpoints) #0 {
  %1 = icmp sgt i64 %n_isotopes, 0, !llfi_index !278
  %2 = icmp sgt i64 %n_gridpoints, 0, !llfi_index !279
  %or.cond = and i1 %1, %2, !llfi_index !280
  br i1 %or.cond, label %.lr.ph.us, label %._crit_edge3, !llfi_index !281

; <label>:3                                       ; preds = %5
  %4 = add nsw i64 %i.02.us, 1, !llfi_index !282
  %exitcond4 = icmp eq i64 %4, %n_isotopes, !llfi_index !283
  br i1 %exitcond4, label %._crit_edge3, label %.lr.ph.us, !llfi_index !284

; <label>:5                                       ; preds = %.lr.ph.us, %5
  %j.01.us = phi i64 [ 0, %.lr.ph.us ], [ %24, %5 ], !llfi_index !285
  %6 = tail call double @rn_v() #2, !llfi_index !286
  %7 = load %struct.NuclideGridPoint** %25, align 8, !tbaa !22, !llfi_index !287
  %8 = getelementptr inbounds %struct.NuclideGridPoint* %7, i64 %j.01.us, i32 0, !llfi_index !288
  store double %6, double* %8, align 8, !tbaa !32, !llfi_index !289
  %9 = tail call double @rn_v() #2, !llfi_index !290
  %10 = load %struct.NuclideGridPoint** %25, align 8, !tbaa !22, !llfi_index !291
  %11 = getelementptr inbounds %struct.NuclideGridPoint* %10, i64 %j.01.us, i32 1, !llfi_index !292
  store double %9, double* %11, align 8, !tbaa !41, !llfi_index !293
  %12 = tail call double @rn_v() #2, !llfi_index !294
  %13 = load %struct.NuclideGridPoint** %25, align 8, !tbaa !22, !llfi_index !295
  %14 = getelementptr inbounds %struct.NuclideGridPoint* %13, i64 %j.01.us, i32 2, !llfi_index !296
  store double %12, double* %14, align 8, !tbaa !45, !llfi_index !297
  %15 = tail call double @rn_v() #2, !llfi_index !298
  %16 = load %struct.NuclideGridPoint** %25, align 8, !tbaa !22, !llfi_index !299
  %17 = getelementptr inbounds %struct.NuclideGridPoint* %16, i64 %j.01.us, i32 3, !llfi_index !300
  store double %15, double* %17, align 8, !tbaa !60, !llfi_index !301
  %18 = tail call double @rn_v() #2, !llfi_index !302
  %19 = load %struct.NuclideGridPoint** %25, align 8, !tbaa !22, !llfi_index !303
  %20 = getelementptr inbounds %struct.NuclideGridPoint* %19, i64 %j.01.us, i32 4, !llfi_index !304
  store double %18, double* %20, align 8, !tbaa !65, !llfi_index !305
  %21 = tail call double @rn_v() #2, !llfi_index !306
  %22 = load %struct.NuclideGridPoint** %25, align 8, !tbaa !22, !llfi_index !307
  %23 = getelementptr inbounds %struct.NuclideGridPoint* %22, i64 %j.01.us, i32 5, !llfi_index !308
  store double %21, double* %23, align 8, !tbaa !77, !llfi_index !309
  %24 = add nsw i64 %j.01.us, 1, !llfi_index !310
  %exitcond = icmp eq i64 %24, %n_gridpoints, !llfi_index !311
  br i1 %exitcond, label %3, label %5, !llfi_index !312

.lr.ph.us:                                        ; preds = %3, %0
  %i.02.us = phi i64 [ %4, %3 ], [ 0, %0 ], !llfi_index !313
  %25 = getelementptr inbounds %struct.NuclideGridPoint** %nuclide_grids, i64 %i.02.us, !llfi_index !314
  br label %5, !llfi_index !315

._crit_edge3:                                     ; preds = %3, %0
  ret void, !llfi_index !316
}

; Function Attrs: nounwind uwtable
define void @sort_nuclide_grids(%struct.NuclideGridPoint** nocapture readonly %nuclide_grids, i64 %n_isotopes, i64 %n_gridpoints) #0 {
  %1 = icmp sgt i64 %n_isotopes, 0, !llfi_index !317
  br i1 %1, label %.lr.ph, label %._crit_edge, !llfi_index !318

.lr.ph:                                           ; preds = %.lr.ph, %0
  %i.01 = phi i64 [ %5, %.lr.ph ], [ 0, %0 ], !llfi_index !319
  %2 = getelementptr inbounds %struct.NuclideGridPoint** %nuclide_grids, i64 %i.01, !llfi_index !320
  %3 = load %struct.NuclideGridPoint** %2, align 8, !tbaa !22, !llfi_index !321
  %4 = bitcast %struct.NuclideGridPoint* %3 to i8*, !llfi_index !322
  tail call void @qsort(i8* %4, i64 %n_gridpoints, i64 48, i32 (i8*, i8*)* @NGP_compare) #2, !llfi_index !323
  %5 = add nsw i64 %i.01, 1, !llfi_index !324
  %exitcond = icmp eq i64 %5, %n_isotopes, !llfi_index !325
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !326

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void, !llfi_index !327
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #4

; Function Attrs: nounwind uwtable
define noalias %struct.GridPoint* @generate_energy_grid(i64 %n_isotopes, i64 %n_gridpoints, %struct.NuclideGridPoint** nocapture readonly %nuclide_grids) #0 {
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([36 x i8]* @str, i64 0, i64 0)), !llfi_index !328
  %1 = mul i64 %n_gridpoints, %n_isotopes, !llfi_index !329
  %2 = shl i64 %1, 4, !llfi_index !330
  %3 = tail call noalias i8* @malloc(i64 %2) #2, !llfi_index !331
  %4 = bitcast i8* %3 to %struct.GridPoint*, !llfi_index !332
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([41 x i8]* @str7, i64 0, i64 0)), !llfi_index !333
  %5 = tail call %struct.NuclideGridPoint** @gpmatrix(i64 %n_isotopes, i64 %n_gridpoints) #2, !llfi_index !334
  %6 = load %struct.NuclideGridPoint** %5, align 8, !tbaa !22, !llfi_index !335
  %7 = bitcast %struct.NuclideGridPoint* %6 to i8*, !llfi_index !336
  %8 = load %struct.NuclideGridPoint** %nuclide_grids, align 8, !tbaa !22, !llfi_index !337
  %9 = bitcast %struct.NuclideGridPoint* %8 to i8*, !llfi_index !338
  %10 = mul i64 %1, 48, !llfi_index !339
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %9, i64 %10, i32 8, i1 false), !llfi_index !340
  %11 = load %struct.NuclideGridPoint** %5, align 8, !tbaa !22, !llfi_index !341
  %12 = bitcast %struct.NuclideGridPoint* %11 to i8*, !llfi_index !342
  tail call void @qsort(i8* %12, i64 %1, i64 48, i32 (i8*, i8*)* @NGP_compare) #2, !llfi_index !343
  %puts3 = tail call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str8, i64 0, i64 0)), !llfi_index !344
  %13 = icmp sgt i64 %1, 0, !llfi_index !345
  br i1 %13, label %.lr.ph7, label %._crit_edge8, !llfi_index !346

.lr.ph7:                                          ; preds = %0
  %14 = load %struct.NuclideGridPoint** %5, align 8, !tbaa !22, !llfi_index !347
  br label %15, !llfi_index !348

; <label>:15                                      ; preds = %15, %.lr.ph7
  %i.05 = phi i64 [ 0, %.lr.ph7 ], [ %19, %15 ], !llfi_index !349
  %16 = getelementptr inbounds %struct.NuclideGridPoint* %14, i64 %i.05, i32 0, !llfi_index !350
  %17 = load double* %16, align 8, !tbaa !32, !llfi_index !351
  %18 = getelementptr inbounds %struct.GridPoint* %4, i64 %i.05, i32 0, !llfi_index !352
  store double %17, double* %18, align 8, !tbaa !99, !llfi_index !353
  %19 = add nsw i64 %i.05, 1, !llfi_index !354
  %exitcond9 = icmp eq i64 %19, %1, !llfi_index !355
  br i1 %exitcond9, label %._crit_edge8, label %15, !llfi_index !356

._crit_edge8:                                     ; preds = %15, %0
  tail call void @gpmatrix_free(%struct.NuclideGridPoint** %5) #2, !llfi_index !357
  %20 = shl i64 %n_isotopes, 2, !llfi_index !358
  %21 = mul i64 %20, %1, !llfi_index !359
  %22 = tail call noalias i8* @malloc(i64 %21) #2, !llfi_index !360
  %23 = bitcast i8* %22 to i32*, !llfi_index !361
  %24 = icmp eq i8* %22, null, !llfi_index !362
  br i1 %24, label %25, label %.preheader, !llfi_index !363

.preheader:                                       ; preds = %._crit_edge8
  br i1 %13, label %.lr.ph, label %._crit_edge, !llfi_index !364

; <label>:25                                      ; preds = %._crit_edge8
  %26 = load %struct._IO_FILE** @stderr, align 8, !tbaa !22, !llfi_index !365
  %27 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str3, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %26) #9, !llfi_index !366
  tail call void @exit(i32 1) #10, !llfi_index !367
  unreachable, !llfi_index !368

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %i1.04 = phi i64 [ %31, %.lr.ph ], [ 0, %.preheader ], !llfi_index !369
  %28 = mul nsw i64 %i1.04, %n_isotopes, !llfi_index !370
  %29 = getelementptr inbounds i32* %23, i64 %28, !llfi_index !371
  %30 = getelementptr inbounds %struct.GridPoint* %4, i64 %i1.04, i32 1, !llfi_index !372
  store i32* %29, i32** %30, align 8, !tbaa !4, !llfi_index !373
  %31 = add nsw i64 %i1.04, 1, !llfi_index !374
  %exitcond = icmp eq i64 %31, %1, !llfi_index !375
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !376

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  ret %struct.GridPoint* %4, !llfi_index !377
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define void @set_grid_ptrs(%struct.GridPoint* nocapture readonly %energy_grid, %struct.NuclideGridPoint** nocapture readonly %nuclide_grids, i64 %n_isotopes, i64 %n_gridpoints) #0 {
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8]* @str9, i64 0, i64 0)), !llfi_index !378
  %1 = mul i64 %n_gridpoints, %n_isotopes, !llfi_index !379
  %2 = icmp sgt i64 %1, 0, !llfi_index !380
  br i1 %2, label %.lr.ph4, label %._crit_edge5, !llfi_index !381

.lr.ph4:                                          ; preds = %0
  %3 = sitofp i64 %1 to double, !llfi_index !382
  %4 = icmp sgt i64 %n_isotopes, 0, !llfi_index !383
  %5 = trunc i64 %n_gridpoints to i32, !llfi_index !384
  br i1 %4, label %.lr.ph4.split.us, label %.lr.ph4..lr.ph4.split_crit_edge, !llfi_index !385

.lr.ph4.split.us:                                 ; preds = %._crit_edge.us, %.lr.ph4
  %i.02.us = phi i64 [ %15, %._crit_edge.us ], [ 0, %.lr.ph4 ], !llfi_index !386
  %6 = getelementptr inbounds %struct.GridPoint* %energy_grid, i64 %i.02.us, i32 0, !llfi_index !387
  %7 = load double* %6, align 8, !tbaa !99, !llfi_index !388
  %8 = srem i64 %i.02.us, 200, !llfi_index !389
  %9 = icmp eq i64 %8, 0, !llfi_index !390
  br i1 %9, label %10, label %.lr.ph.us, !llfi_index !391

; <label>:10                                      ; preds = %.lr.ph4.split.us
  %11 = sitofp i64 %i.02.us to double, !llfi_index !392
  %12 = fmul double %11, 1.000000e+02, !llfi_index !393
  %13 = fdiv double %12, %3, !llfi_index !394
  %14 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str5, i64 0, i64 0), double %13) #2, !llfi_index !395
  br label %.lr.ph.us, !llfi_index !396

._crit_edge.us:                                   ; preds = %16
  %15 = add nsw i64 %i.02.us, 1, !llfi_index !397
  %exitcond7 = icmp eq i64 %15, %1, !llfi_index !398
  br i1 %exitcond7, label %._crit_edge5, label %.lr.ph4.split.us, !llfi_index !399

; <label>:16                                      ; preds = %.lr.ph.us, %16
  %j.01.us = phi i64 [ 0, %.lr.ph.us ], [ %22, %16 ], !llfi_index !400
  %17 = getelementptr inbounds %struct.NuclideGridPoint** %nuclide_grids, i64 %j.01.us, !llfi_index !401
  %18 = load %struct.NuclideGridPoint** %17, align 8, !tbaa !22, !llfi_index !402
  %19 = tail call i32 @binary_search(%struct.NuclideGridPoint* %18, double %7, i32 %5) #2, !llfi_index !403
  %20 = load i32** %23, align 8, !tbaa !4, !llfi_index !404
  %21 = getelementptr inbounds i32* %20, i64 %j.01.us, !llfi_index !405
  store i32 %19, i32* %21, align 4, !tbaa !12, !llfi_index !406
  %22 = add nsw i64 %j.01.us, 1, !llfi_index !407
  %exitcond6 = icmp eq i64 %22, %n_isotopes, !llfi_index !408
  br i1 %exitcond6, label %._crit_edge.us, label %16, !llfi_index !409

.lr.ph.us:                                        ; preds = %10, %.lr.ph4.split.us
  %23 = getelementptr inbounds %struct.GridPoint* %energy_grid, i64 %i.02.us, i32 1, !llfi_index !410
  br label %16, !llfi_index !411

.lr.ph4..lr.ph4.split_crit_edge:                  ; preds = %.preheader, %.lr.ph4
  %i.02 = phi i64 [ %31, %.preheader ], [ 0, %.lr.ph4 ], !llfi_index !412
  %24 = srem i64 %i.02, 200, !llfi_index !413
  %25 = icmp eq i64 %24, 0, !llfi_index !414
  br i1 %25, label %26, label %.preheader, !llfi_index !415

; <label>:26                                      ; preds = %.lr.ph4..lr.ph4.split_crit_edge
  %27 = sitofp i64 %i.02 to double, !llfi_index !416
  %28 = fmul double %27, 1.000000e+02, !llfi_index !417
  %29 = fdiv double %28, %3, !llfi_index !418
  %30 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str5, i64 0, i64 0), double %29) #2, !llfi_index !419
  br label %.preheader, !llfi_index !420

.preheader:                                       ; preds = %26, %.lr.ph4..lr.ph4.split_crit_edge
  %31 = add nsw i64 %i.02, 1, !llfi_index !421
  %exitcond = icmp eq i64 %31, %1, !llfi_index !422
  br i1 %exitcond, label %._crit_edge5, label %.lr.ph4..lr.ph4.split_crit_edge, !llfi_index !423

._crit_edge5:                                     ; preds = %.preheader, %._crit_edge.us, %0
  %putchar = tail call i32 @putchar(i32 10) #2, !llfi_index !424
  ret void, !llfi_index !425
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i32 @putchar(i32) #2

; Function Attrs: nounwind uwtable
define void @logo(i32 %version) #0 {
.lr.ph.i:
  %v = alloca [100 x i8], align 16, !llfi_index !426
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str44, i64 0, i64 0)) #2, !llfi_index !427
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([487 x i8]* @str2, i64 0, i64 0)), !llfi_index !428
  %puts.i1 = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str44, i64 0, i64 0)) #2, !llfi_index !429
  %0 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !430
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %0) #2, !llfi_index !431
  %1 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !432
  %fputc.i.1 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %1) #2, !llfi_index !433
  %2 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !434
  %fputc.i.2 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %2) #2, !llfi_index !435
  %3 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !436
  %fputc.i.3 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %3) #2, !llfi_index !437
  %4 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !438
  %fputc.i.4 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %4) #2, !llfi_index !439
  %5 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !440
  %fputc.i.5 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %5) #2, !llfi_index !441
  %6 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !442
  %fputc.i.6 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %6) #2, !llfi_index !443
  %7 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !444
  %fputc.i.7 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %7) #2, !llfi_index !445
  %8 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !446
  %fputc.i.8 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %8) #2, !llfi_index !447
  %9 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !448
  %fputc.i.9 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %9) #2, !llfi_index !449
  %10 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !450
  %fputc.i.10 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %10) #2, !llfi_index !451
  %11 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !452
  %fputc.i.11 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %11) #2, !llfi_index !453
  %12 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !454
  %fputc.i.12 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %12) #2, !llfi_index !455
  %13 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !456
  %fputc.i.13 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %13) #2, !llfi_index !457
  %14 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !458
  %fputc.i.14 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %14) #2, !llfi_index !459
  %15 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !460
  %fputc.i.15 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %15) #2, !llfi_index !461
  %16 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !462
  %fputc.i.16 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %16) #2, !llfi_index !463
  %17 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !464
  %fputc.i.17 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %17) #2, !llfi_index !465
  %18 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !466
  %fputc.i.18 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %18) #2, !llfi_index !467
  %19 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !468
  %fputc.i.19 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %19) #2, !llfi_index !469
  %20 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !470
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %20), !llfi_index !471
  %22 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !472
  %fputc3.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %22) #2, !llfi_index !473
  %23 = getelementptr inbounds [100 x i8]* %v, i64 0, i64 0, !llfi_index !474
  call void @llvm.lifetime.start(i64 100, i8* %23) #2, !llfi_index !475
  %24 = call i32 (i8*, i8*, ...)* @sprintf(i8* %23, i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %version) #2, !llfi_index !476
  %25 = call i64 @strlen(i8* %23) #11, !llfi_index !477
  %26 = trunc i64 %25 to i32, !llfi_index !478
  %27 = sub nsw i32 79, %26, !llfi_index !479
  %28 = sdiv i32 %27, 2, !llfi_index !480
  %29 = icmp slt i32 %27, -1, !llfi_index !481
  %30 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !482
  br i1 %29, label %center_print.exit7, label %.lr.ph.i4, !llfi_index !483

.lr.ph.i4:                                        ; preds = %.lr.ph.i4, %.lr.ph.i
  %31 = phi %struct._IO_FILE* [ %34, %.lr.ph.i4 ], [ %30, %.lr.ph.i ], !llfi_index !484
  %i.04.i2 = phi i32 [ %32, %.lr.ph.i4 ], [ 0, %.lr.ph.i ], !llfi_index !485
  %fputc.i3 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %31) #2, !llfi_index !486
  %32 = add nsw i32 %i.04.i2, 1, !llfi_index !487
  %33 = icmp slt i32 %i.04.i2, %28, !llfi_index !488
  %34 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !489
  br i1 %33, label %.lr.ph.i4, label %center_print.exit7, !llfi_index !490

center_print.exit7:                               ; preds = %.lr.ph.i4, %.lr.ph.i
  %.lcssa.i5 = phi %struct._IO_FILE* [ %30, %.lr.ph.i ], [ %34, %.lr.ph.i4 ], !llfi_index !491
  %35 = call i32 @fputs(i8* %23, %struct._IO_FILE* %.lcssa.i5) #2, !llfi_index !492
  %36 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !493
  %fputc3.i6 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %36) #2, !llfi_index !494
  %puts.i8 = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str44, i64 0, i64 0)) #2, !llfi_index !495
  call void @llvm.lifetime.end(i64 100, i8* %23) #2, !llfi_index !496
  ret void, !llfi_index !497
}

; Function Attrs: nounwind uwtable
define void @border_print() #0 {
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str44, i64 0, i64 0)), !llfi_index !498
  ret void, !llfi_index !499
}

; Function Attrs: nounwind uwtable
define void @center_print(i8* nocapture readonly %s, i32 %width) #0 {
  %1 = tail call i64 @strlen(i8* %s) #11, !llfi_index !500
  %2 = trunc i64 %1 to i32, !llfi_index !501
  %3 = sub nsw i32 %width, %2, !llfi_index !502
  %4 = sdiv i32 %3, 2, !llfi_index !503
  %5 = icmp slt i32 %3, -1, !llfi_index !504
  %6 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !505
  br i1 %5, label %._crit_edge, label %.lr.ph, !llfi_index !506

.lr.ph:                                           ; preds = %.lr.ph, %0
  %7 = phi %struct._IO_FILE* [ %10, %.lr.ph ], [ %6, %0 ], !llfi_index !507
  %i.04 = phi i32 [ %8, %.lr.ph ], [ 0, %0 ], !llfi_index !508
  %fputc = tail call i32 @fputc(i32 32, %struct._IO_FILE* %7), !llfi_index !509
  %8 = add nsw i32 %i.04, 1, !llfi_index !510
  %9 = icmp slt i32 %i.04, %4, !llfi_index !511
  %10 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !512
  br i1 %9, label %.lr.ph, label %._crit_edge, !llfi_index !513

._crit_edge:                                      ; preds = %.lr.ph, %0
  %.lcssa = phi %struct._IO_FILE* [ %6, %0 ], [ %10, %.lr.ph ], !llfi_index !514
  %11 = tail call i32 @fputs(i8* %s, %struct._IO_FILE* %.lcssa) #2, !llfi_index !515
  %12 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !516
  %fputc3 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %12), !llfi_index !517
  ret void, !llfi_index !518
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture readonly, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind uwtable
define void @print_results(%struct.Inputs* byval nocapture readonly align 8 %in, i32 %mype, double %runtime, i32 %nprocs, i64 %vhash) #0 {
  %1 = icmp eq i32 %mype, 0, !llfi_index !519
  br i1 %1, label %2, label %23, !llfi_index !520

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 3, !llfi_index !521
  %4 = load i32* %3, align 8, !tbaa !522, !llfi_index !525
  %5 = sitofp i32 %4 to double, !llfi_index !526
  %6 = fdiv double %5, %runtime, !llfi_index !527
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str44, i64 0, i64 0)) #2, !llfi_index !528
  %7 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !529
  br label %.lr.ph.i, !llfi_index !530

.lr.ph.i:                                         ; preds = %.lr.ph.i, %2
  %8 = phi %struct._IO_FILE* [ %10, %.lr.ph.i ], [ %7, %2 ], !llfi_index !531
  %i.04.i = phi i32 [ %9, %.lr.ph.i ], [ 0, %2 ], !llfi_index !532
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %8) #2, !llfi_index !533
  %9 = add nsw i32 %i.04.i, 1, !llfi_index !534
  %10 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !535
  %exitcond = icmp eq i32 %9, 37, !llfi_index !536
  br i1 %exitcond, label %center_print.exit, label %.lr.ph.i, !llfi_index !537

center_print.exit:                                ; preds = %.lr.ph.i
  %11 = fptosi double %6 to i32, !llfi_index !538
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %10), !llfi_index !539
  %13 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !540
  %fputc3.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %13) #2, !llfi_index !541
  %puts.i1 = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str44, i64 0, i64 0)) #2, !llfi_index !542
  %14 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 0, !llfi_index !543
  %15 = load i32* %14, align 8, !tbaa !544, !llfi_index !545
  %16 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i32 %15) #2, !llfi_index !546
  %17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #2, !llfi_index !547
  %18 = sext i32 %4 to i64, !llfi_index !548
  tail call void @fancy_int(i64 %18), !llfi_index !549
  %19 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str8, i64 0, i64 0), i64 %vhash) #2, !llfi_index !550
  %puts.i2 = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str44, i64 0, i64 0)) #2, !llfi_index !551
  %20 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #2, !llfi_index !552
  %21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32 %15, i32 %11) #2, !llfi_index !553
  %22 = tail call i32 @fclose(%struct._IO_FILE* %20) #2, !llfi_index !554
  br label %23, !llfi_index !555

; <label>:23                                      ; preds = %center_print.exit, %0
  ret void, !llfi_index !556
}

; Function Attrs: nounwind uwtable
define void @fancy_int(i64 %a) #0 {
  %1 = icmp slt i64 %a, 1000, !llfi_index !557
  br i1 %1, label %2, label %4, !llfi_index !558

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0), i64 %a) #2, !llfi_index !559
  br label %26, !llfi_index !560

; <label>:4                                       ; preds = %0
  %a.off = add i64 %a, -1000, !llfi_index !561
  %5 = icmp ult i64 %a.off, 999000, !llfi_index !562
  br i1 %5, label %6, label %10, !llfi_index !563

; <label>:6                                       ; preds = %4
  %7 = sdiv i64 %a, 1000, !llfi_index !564
  %8 = srem i64 %a, 1000, !llfi_index !565
  %9 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0), i64 %7, i64 %8) #2, !llfi_index !566
  br label %26, !llfi_index !567

; <label>:10                                      ; preds = %4
  %a.off4 = add i64 %a, -1000000, !llfi_index !568
  %11 = icmp ult i64 %a.off4, 999000000, !llfi_index !569
  br i1 %11, label %12, label %18, !llfi_index !570

; <label>:12                                      ; preds = %10
  %13 = sdiv i64 %a, 1000000, !llfi_index !571
  %14 = srem i64 %a, 1000000, !llfi_index !572
  %15 = sdiv i64 %14, 1000, !llfi_index !573
  %16 = srem i64 %a, 1000, !llfi_index !574
  %17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str26, i64 0, i64 0), i64 %13, i64 %15, i64 %16) #2, !llfi_index !575
  br label %26, !llfi_index !576

; <label>:18                                      ; preds = %10
  %19 = sdiv i64 %a, 1000000000, !llfi_index !577
  %20 = srem i64 %a, 1000000000, !llfi_index !578
  %21 = sdiv i64 %20, 1000000, !llfi_index !579
  %22 = srem i64 %a, 1000000, !llfi_index !580
  %23 = sdiv i64 %22, 1000, !llfi_index !581
  %24 = srem i64 %a, 1000, !llfi_index !582
  %25 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str27, i64 0, i64 0), i64 %19, i64 %21, i64 %23, i64 %24) #2, !llfi_index !583
  br label %26, !llfi_index !584

; <label>:26                                      ; preds = %18, %12, %6, %2
  ret void, !llfi_index !585
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #3

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind uwtable
define void @print_inputs(%struct.Inputs* byval align 8 %in, i32 %nprocs, i32 %version) #0 {
  %1 = tail call i64 @estimate_mem_usage(%struct.Inputs* byval align 8 %in) #2, !llfi_index !586
  tail call void @logo(i32 %version), !llfi_index !587
  %2 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !588
  br label %.lr.ph.i, !llfi_index !589

.lr.ph.i:                                         ; preds = %.lr.ph.i, %0
  %3 = phi %struct._IO_FILE* [ %5, %.lr.ph.i ], [ %2, %0 ], !llfi_index !590
  %i.04.i = phi i32 [ %4, %.lr.ph.i ], [ 0, %0 ], !llfi_index !591
  %fputc.i = tail call i32 @fputc(i32 32, %struct._IO_FILE* %3) #2, !llfi_index !592
  %4 = add nsw i32 %i.04.i, 1, !llfi_index !593
  %5 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !594
  %exitcond11 = icmp eq i32 %4, 34, !llfi_index !595
  br i1 %exitcond11, label %center_print.exit, label %.lr.ph.i, !llfi_index !596

center_print.exit:                                ; preds = %.lr.ph.i
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %5), !llfi_index !597
  %7 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !598
  %fputc3.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %7) #2, !llfi_index !599
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str44, i64 0, i64 0)) #2, !llfi_index !600
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str45, i64 0, i64 0)), !llfi_index !601
  %8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str14, i64 0, i64 0), i32 12) #2, !llfi_index !602
  %9 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 4, !llfi_index !603
  %10 = load i8** %9, align 8, !tbaa !604, !llfi_index !605
  %11 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str15, i64 0, i64 0), i8* %10) #2, !llfi_index !606
  %12 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 1, !llfi_index !607
  %13 = load i64* %12, align 8, !tbaa !608, !llfi_index !609
  %14 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str16, i64 0, i64 0), i64 %13) #2, !llfi_index !610
  %15 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str17, i64 0, i64 0)) #2, !llfi_index !611
  %16 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 2, !llfi_index !612
  %17 = load i64* %16, align 8, !tbaa !613, !llfi_index !614
  tail call void @fancy_int(i64 %17), !llfi_index !615
  %18 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str18, i64 0, i64 0)) #2, !llfi_index !616
  %19 = load i64* %12, align 8, !tbaa !608, !llfi_index !617
  %20 = load i64* %16, align 8, !tbaa !613, !llfi_index !618
  %21 = mul nsw i64 %20, %19, !llfi_index !619
  tail call void @fancy_int(i64 %21), !llfi_index !620
  %22 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str19, i64 0, i64 0)) #2, !llfi_index !621
  %23 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 3, !llfi_index !622
  %24 = load i32* %23, align 8, !tbaa !522, !llfi_index !623
  %25 = sext i32 %24 to i64, !llfi_index !624
  tail call void @fancy_int(i64 %25), !llfi_index !625
  %26 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 0, !llfi_index !626
  %27 = load i32* %26, align 8, !tbaa !544, !llfi_index !627
  %28 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str20, i64 0, i64 0), i32 %27) #2, !llfi_index !628
  %29 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str21, i64 0, i64 0)) #2, !llfi_index !629
  %sext = shl i64 %1, 32, !llfi_index !630
  %30 = ashr exact i64 %sext, 32, !llfi_index !631
  tail call void @fancy_int(i64 %30), !llfi_index !632
  %puts.i1 = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str44, i64 0, i64 0)) #2, !llfi_index !633
  %31 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !634
  br label %.lr.ph.i4, !llfi_index !635

.lr.ph.i4:                                        ; preds = %.lr.ph.i4, %center_print.exit
  %32 = phi %struct._IO_FILE* [ %34, %.lr.ph.i4 ], [ %31, %center_print.exit ], !llfi_index !636
  %i.04.i2 = phi i32 [ %33, %.lr.ph.i4 ], [ 0, %center_print.exit ], !llfi_index !637
  %fputc.i3 = tail call i32 @fputc(i32 32, %struct._IO_FILE* %32) #2, !llfi_index !638
  %33 = add nsw i32 %i.04.i2, 1, !llfi_index !639
  %34 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !640
  %exitcond = icmp eq i32 %33, 33, !llfi_index !641
  br i1 %exitcond, label %center_print.exit7, label %.lr.ph.i4, !llfi_index !642

center_print.exit7:                               ; preds = %.lr.ph.i4
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str22, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %34), !llfi_index !643
  %36 = load %struct._IO_FILE** @stdout, align 8, !tbaa !22, !llfi_index !644
  %fputc3.i6 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %36) #2, !llfi_index !645
  %puts.i8 = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str44, i64 0, i64 0)) #2, !llfi_index !646
  ret void, !llfi_index !647
}

; Function Attrs: noreturn nounwind uwtable
define void @print_CLI_error() #7 {
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8]* @str46, i64 0, i64 0)), !llfi_index !648
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str47, i64 0, i64 0)), !llfi_index !649
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([51 x i8]* @str48, i64 0, i64 0)), !llfi_index !650
  %puts3 = tail call i32 @puts(i8* getelementptr inbounds ([72 x i8]* @str49, i64 0, i64 0)), !llfi_index !651
  %puts4 = tail call i32 @puts(i8* getelementptr inbounds ([76 x i8]* @str50, i64 0, i64 0)), !llfi_index !652
  %puts5 = tail call i32 @puts(i8* getelementptr inbounds ([56 x i8]* @str51, i64 0, i64 0)), !llfi_index !653
  %puts6 = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8]* @str52, i64 0, i64 0)), !llfi_index !654
  %puts7 = tail call i32 @puts(i8* getelementptr inbounds ([54 x i8]* @str53, i64 0, i64 0)), !llfi_index !655
  tail call void @exit(i32 4) #10, !llfi_index !656
  unreachable, !llfi_index !657
}

; Function Attrs: nounwind uwtable
define void @read_CLI(%struct.Inputs* noalias nocapture sret %agg.result, i32 %argc, i8** nocapture readonly %argv) #0 {
  %1 = tail call noalias i8* @malloc(i64 6) #2, !llfi_index !658
  store i8 108, i8* %1, align 1, !tbaa !659, !llfi_index !660
  %2 = getelementptr inbounds i8* %1, i64 1, !llfi_index !661
  store i8 97, i8* %2, align 1, !tbaa !659, !llfi_index !662
  %3 = getelementptr inbounds i8* %1, i64 2, !llfi_index !663
  store i8 114, i8* %3, align 1, !tbaa !659, !llfi_index !664
  %4 = getelementptr inbounds i8* %1, i64 3, !llfi_index !665
  store i8 103, i8* %4, align 1, !tbaa !659, !llfi_index !666
  %5 = getelementptr inbounds i8* %1, i64 4, !llfi_index !667
  store i8 101, i8* %5, align 1, !tbaa !659, !llfi_index !668
  %6 = getelementptr inbounds i8* %1, i64 5, !llfi_index !669
  store i8 0, i8* %6, align 1, !tbaa !659, !llfi_index !670
  %7 = icmp sgt i32 %argc, 1, !llfi_index !671
  br i1 %7, label %.lr.ph, label %.thread90, !llfi_index !672

.lr.ph:                                           ; preds = %104, %0
  %input.sroa.1741.075 = phi i8* [ %input.sroa.1741.1, %104 ], [ %1, %0 ], !llfi_index !673
  %input.sroa.14.074 = phi i32 [ %input.sroa.14.1, %104 ], [ 15000000, %0 ], !llfi_index !674
  %input.sroa.9.073 = phi i64 [ %input.sroa.9.1, %104 ], [ 11303, %0 ], !llfi_index !675
  %input.sroa.0.072 = phi i32 [ %input.sroa.0.1, %104 ], [ 1, %0 ], !llfi_index !676
  %user_g.071 = phi i32 [ %user_g.1, %104 ], [ 0, %0 ], !llfi_index !677
  %i.070 = phi i32 [ %105, %104 ], [ 1, %0 ], !llfi_index !678
  %8 = sext i32 %i.070 to i64, !llfi_index !679
  %9 = getelementptr inbounds i8** %argv, i64 %8, !llfi_index !680
  %10 = load i8** %9, align 8, !tbaa !22, !llfi_index !681
  %11 = load i8* %10, align 1, !tbaa !659, !llfi_index !682
  %12 = zext i8 %11 to i32, !llfi_index !683
  %13 = sub nsw i32 45, %12, !llfi_index !684
  %14 = icmp eq i8 %11, 45, !llfi_index !685
  br i1 %14, label %15, label %26, !llfi_index !686

; <label>:15                                      ; preds = %.lr.ph
  %16 = getelementptr inbounds i8* %10, i64 1, !llfi_index !687
  %17 = load i8* %16, align 1, !tbaa !659, !llfi_index !688
  %18 = zext i8 %17 to i32, !llfi_index !689
  %19 = sub nsw i32 116, %18, !llfi_index !690
  %20 = icmp eq i8 %17, 116, !llfi_index !691
  br i1 %20, label %21, label %26, !llfi_index !692

; <label>:21                                      ; preds = %15
  %22 = getelementptr inbounds i8* %10, i64 2, !llfi_index !693
  %23 = load i8* %22, align 1, !tbaa !659, !llfi_index !694
  %24 = zext i8 %23 to i32, !llfi_index !695
  %25 = sub nsw i32 0, %24, !llfi_index !696
  br label %26, !llfi_index !697

; <label>:26                                      ; preds = %21, %15, %.lr.ph
  %__result.0 = phi i32 [ %25, %21 ], [ %19, %15 ], [ %13, %.lr.ph ], !llfi_index !698
  %phitmp = icmp eq i32 %__result.0, 0, !llfi_index !699
  br i1 %phitmp, label %27, label %37, !llfi_index !700

; <label>:27                                      ; preds = %26
  %28 = add nsw i32 %i.070, 1, !llfi_index !701
  %29 = icmp slt i32 %28, %argc, !llfi_index !702
  br i1 %29, label %30, label %36, !llfi_index !703

; <label>:30                                      ; preds = %27
  %31 = sext i32 %28 to i64, !llfi_index !704
  %32 = getelementptr inbounds i8** %argv, i64 %31, !llfi_index !705
  %33 = load i8** %32, align 8, !tbaa !22, !llfi_index !706
  %34 = tail call i64 @strtol(i8* nocapture %33, i8** null, i32 10) #2, !llfi_index !707
  %35 = trunc i64 %34 to i32, !llfi_index !708
  br label %104, !llfi_index !709

; <label>:36                                      ; preds = %27
  tail call void @print_CLI_error(), !llfi_index !710
  unreachable, !llfi_index !711

; <label>:37                                      ; preds = %26
  br i1 %14, label %38, label %49, !llfi_index !712

; <label>:38                                      ; preds = %37
  %39 = getelementptr inbounds i8* %10, i64 1, !llfi_index !713
  %40 = load i8* %39, align 1, !tbaa !659, !llfi_index !714
  %41 = zext i8 %40 to i32, !llfi_index !715
  %42 = sub nsw i32 103, %41, !llfi_index !716
  %43 = icmp eq i8 %40, 103, !llfi_index !717
  br i1 %43, label %44, label %49, !llfi_index !718

; <label>:44                                      ; preds = %38
  %45 = getelementptr inbounds i8* %10, i64 2, !llfi_index !719
  %46 = load i8* %45, align 1, !tbaa !659, !llfi_index !720
  %47 = zext i8 %46 to i32, !llfi_index !721
  %48 = sub nsw i32 0, %47, !llfi_index !722
  br label %49, !llfi_index !723

; <label>:49                                      ; preds = %44, %38, %37
  %__result4.0 = phi i32 [ %48, %44 ], [ %42, %38 ], [ %13, %37 ], !llfi_index !724
  %phitmp42 = icmp eq i32 %__result4.0, 0, !llfi_index !725
  br i1 %phitmp42, label %50, label %59, !llfi_index !726

; <label>:50                                      ; preds = %49
  %51 = add nsw i32 %i.070, 1, !llfi_index !727
  %52 = icmp slt i32 %51, %argc, !llfi_index !728
  br i1 %52, label %53, label %58, !llfi_index !729

; <label>:53                                      ; preds = %50
  %54 = sext i32 %51 to i64, !llfi_index !730
  %55 = getelementptr inbounds i8** %argv, i64 %54, !llfi_index !731
  %56 = load i8** %55, align 8, !tbaa !22, !llfi_index !732
  %57 = tail call i64 @strtol(i8* nocapture %56, i8** null, i32 10) #2, !llfi_index !733
  br label %104, !llfi_index !734

; <label>:58                                      ; preds = %50
  tail call void @print_CLI_error(), !llfi_index !735
  unreachable, !llfi_index !736

; <label>:59                                      ; preds = %49
  br i1 %14, label %60, label %71, !llfi_index !737

; <label>:60                                      ; preds = %59
  %61 = getelementptr inbounds i8* %10, i64 1, !llfi_index !738
  %62 = load i8* %61, align 1, !tbaa !659, !llfi_index !739
  %63 = zext i8 %62 to i32, !llfi_index !740
  %64 = sub nsw i32 108, %63, !llfi_index !741
  %65 = icmp eq i8 %62, 108, !llfi_index !742
  br i1 %65, label %66, label %71, !llfi_index !743

; <label>:66                                      ; preds = %60
  %67 = getelementptr inbounds i8* %10, i64 2, !llfi_index !744
  %68 = load i8* %67, align 1, !tbaa !659, !llfi_index !745
  %69 = zext i8 %68 to i32, !llfi_index !746
  %70 = sub nsw i32 0, %69, !llfi_index !747
  br label %71, !llfi_index !748

; <label>:71                                      ; preds = %66, %60, %59
  %__result8.0 = phi i32 [ %70, %66 ], [ %64, %60 ], [ %13, %59 ], !llfi_index !749
  %phitmp43 = icmp eq i32 %__result8.0, 0, !llfi_index !750
  br i1 %phitmp43, label %72, label %82, !llfi_index !751

; <label>:72                                      ; preds = %71
  %73 = add nsw i32 %i.070, 1, !llfi_index !752
  %74 = icmp slt i32 %73, %argc, !llfi_index !753
  br i1 %74, label %75, label %81, !llfi_index !754

; <label>:75                                      ; preds = %72
  %76 = sext i32 %73 to i64, !llfi_index !755
  %77 = getelementptr inbounds i8** %argv, i64 %76, !llfi_index !756
  %78 = load i8** %77, align 8, !tbaa !22, !llfi_index !757
  %79 = tail call i64 @strtol(i8* nocapture %78, i8** null, i32 10) #2, !llfi_index !758
  %80 = trunc i64 %79 to i32, !llfi_index !759
  br label %104, !llfi_index !760

; <label>:81                                      ; preds = %72
  tail call void @print_CLI_error(), !llfi_index !761
  unreachable, !llfi_index !762

; <label>:82                                      ; preds = %71
  br i1 %14, label %83, label %94, !llfi_index !763

; <label>:83                                      ; preds = %82
  %84 = getelementptr inbounds i8* %10, i64 1, !llfi_index !764
  %85 = load i8* %84, align 1, !tbaa !659, !llfi_index !765
  %86 = zext i8 %85 to i32, !llfi_index !766
  %87 = sub nsw i32 115, %86, !llfi_index !767
  %88 = icmp eq i8 %85, 115, !llfi_index !768
  br i1 %88, label %89, label %94, !llfi_index !769

; <label>:89                                      ; preds = %83
  %90 = getelementptr inbounds i8* %10, i64 2, !llfi_index !770
  %91 = load i8* %90, align 1, !tbaa !659, !llfi_index !771
  %92 = zext i8 %91 to i32, !llfi_index !772
  %93 = sub nsw i32 0, %92, !llfi_index !773
  br label %94, !llfi_index !774

; <label>:94                                      ; preds = %89, %83, %82
  %__result12.0 = phi i32 [ %93, %89 ], [ %87, %83 ], [ %13, %82 ], !llfi_index !775
  %phitmp44 = icmp eq i32 %__result12.0, 0, !llfi_index !776
  br i1 %phitmp44, label %95, label %103, !llfi_index !777

; <label>:95                                      ; preds = %94
  %96 = add nsw i32 %i.070, 1, !llfi_index !778
  %97 = icmp slt i32 %96, %argc, !llfi_index !779
  br i1 %97, label %98, label %102, !llfi_index !780

; <label>:98                                      ; preds = %95
  %99 = sext i32 %96 to i64, !llfi_index !781
  %100 = getelementptr inbounds i8** %argv, i64 %99, !llfi_index !782
  %101 = load i8** %100, align 8, !tbaa !22, !llfi_index !783
  br label %104, !llfi_index !784

; <label>:102                                     ; preds = %95
  tail call void @print_CLI_error(), !llfi_index !785
  unreachable, !llfi_index !786

; <label>:103                                     ; preds = %94
  tail call void @print_CLI_error(), !llfi_index !787
  unreachable, !llfi_index !788

; <label>:104                                     ; preds = %98, %75, %53, %30
  %i.1 = phi i32 [ %28, %30 ], [ %51, %53 ], [ %73, %75 ], [ %96, %98 ], !llfi_index !789
  %user_g.1 = phi i32 [ %user_g.071, %30 ], [ 1, %53 ], [ %user_g.071, %75 ], [ %user_g.071, %98 ], !llfi_index !790
  %input.sroa.0.1 = phi i32 [ %35, %30 ], [ %input.sroa.0.072, %53 ], [ %input.sroa.0.072, %75 ], [ %input.sroa.0.072, %98 ], !llfi_index !791
  %input.sroa.9.1 = phi i64 [ %input.sroa.9.073, %30 ], [ %57, %53 ], [ %input.sroa.9.073, %75 ], [ %input.sroa.9.073, %98 ], !llfi_index !792
  %input.sroa.14.1 = phi i32 [ %input.sroa.14.074, %30 ], [ %input.sroa.14.074, %53 ], [ %80, %75 ], [ %input.sroa.14.074, %98 ], !llfi_index !793
  %input.sroa.1741.1 = phi i8* [ %input.sroa.1741.075, %30 ], [ %input.sroa.1741.075, %53 ], [ %input.sroa.1741.075, %75 ], [ %101, %98 ], !llfi_index !794
  %105 = add nsw i32 %i.1, 1, !llfi_index !795
  %106 = icmp slt i32 %105, %argc, !llfi_index !796
  br i1 %106, label %.lr.ph, label %._crit_edge, !llfi_index !797

._crit_edge:                                      ; preds = %104
  %107 = icmp slt i32 %input.sroa.0.1, 1, !llfi_index !798
  br i1 %107, label %108, label %109, !llfi_index !799

; <label>:108                                     ; preds = %._crit_edge
  tail call void @print_CLI_error(), !llfi_index !800
  unreachable, !llfi_index !801

; <label>:109                                     ; preds = %._crit_edge
  %110 = icmp slt i64 %input.sroa.9.1, 1, !llfi_index !802
  br i1 %110, label %111, label %112, !llfi_index !803

; <label>:111                                     ; preds = %109
  tail call void @print_CLI_error(), !llfi_index !804
  unreachable, !llfi_index !805

; <label>:112                                     ; preds = %109
  %113 = icmp slt i32 %input.sroa.14.1, 1, !llfi_index !806
  br i1 %113, label %114, label %.thread90, !llfi_index !807

; <label>:114                                     ; preds = %112
  tail call void @print_CLI_error(), !llfi_index !808
  unreachable, !llfi_index !809

.thread90:                                        ; preds = %112, %0
  %user_g.0.lcssa848595 = phi i32 [ %user_g.1, %112 ], [ 0, %0 ], !llfi_index !810
  %input.sroa.0.0.lcssa838694 = phi i32 [ %input.sroa.0.1, %112 ], [ 1, %0 ], !llfi_index !811
  %input.sroa.9.0.lcssa828793 = phi i64 [ %input.sroa.9.1, %112 ], [ 11303, %0 ], !llfi_index !812
  %input.sroa.14.0.lcssa818892 = phi i32 [ %input.sroa.14.1, %112 ], [ 15000000, %0 ], !llfi_index !813
  %input.sroa.1741.0.lcssa808991 = phi i8* [ %input.sroa.1741.1, %112 ], [ %1, %0 ], !llfi_index !814
  %115 = tail call i32 @strcasecmp(i8* %input.sroa.1741.0.lcssa808991, i8* getelementptr inbounds ([6 x i8]* @.str40, i64 0, i64 0)) #11, !llfi_index !815
  %116 = icmp eq i32 %115, 0, !llfi_index !816
  br i1 %116, label %.thread96, label %117, !llfi_index !817

; <label>:117                                     ; preds = %.thread90
  %118 = tail call i32 @strcasecmp(i8* %input.sroa.1741.0.lcssa808991, i8* getelementptr inbounds ([6 x i8]* @.str41, i64 0, i64 0)) #11, !llfi_index !818
  %119 = icmp eq i32 %118, 0, !llfi_index !819
  br i1 %119, label %.thread97, label %120, !llfi_index !820

; <label>:120                                     ; preds = %117
  %121 = tail call i32 @strcasecmp(i8* %input.sroa.1741.0.lcssa808991, i8* getelementptr inbounds ([3 x i8]* @.str42, i64 0, i64 0)) #11, !llfi_index !821
  %122 = icmp eq i32 %121, 0, !llfi_index !822
  br i1 %122, label %127, label %123, !llfi_index !823

; <label>:123                                     ; preds = %120
  %124 = tail call i32 @strcasecmp(i8* %input.sroa.1741.0.lcssa808991, i8* getelementptr inbounds ([4 x i8]* @.str43, i64 0, i64 0)) #11, !llfi_index !824
  %125 = icmp eq i32 %124, 0, !llfi_index !825
  br i1 %125, label %127, label %126, !llfi_index !826

; <label>:126                                     ; preds = %123
  tail call void @print_CLI_error(), !llfi_index !827
  unreachable, !llfi_index !828

; <label>:127                                     ; preds = %123, %120
  br i1 %116, label %.thread96, label %.thread97, !llfi_index !829

.thread97:                                        ; preds = %127, %117
  %128 = tail call i32 @strcasecmp(i8* %input.sroa.1741.0.lcssa808991, i8* getelementptr inbounds ([3 x i8]* @.str42, i64 0, i64 0)) #11, !llfi_index !830
  %129 = or i32 %128, %user_g.0.lcssa848595, !llfi_index !831
  %130 = icmp eq i32 %129, 0, !llfi_index !832
  br i1 %130, label %.thread96, label %131, !llfi_index !833

; <label>:131                                     ; preds = %.thread97
  %132 = tail call i32 @strcasecmp(i8* %input.sroa.1741.0.lcssa808991, i8* getelementptr inbounds ([4 x i8]* @.str43, i64 0, i64 0)) #11, !llfi_index !834
  %133 = or i32 %132, %user_g.0.lcssa848595, !llfi_index !835
  %134 = icmp eq i32 %133, 0, !llfi_index !836
  %.input.sroa.9.0 = select i1 %134, i64 501578, i64 %input.sroa.9.0.lcssa828793, !llfi_index !837
  br label %.thread96, !llfi_index !838

.thread96:                                        ; preds = %131, %.thread97, %127, %.thread90
  %input.sroa.640.0 = phi i64 [ 68, %127 ], [ 355, %.thread97 ], [ 355, %131 ], [ 68, %.thread90 ], !llfi_index !839
  %input.sroa.9.2 = phi i64 [ %input.sroa.9.0.lcssa828793, %127 ], [ 238847, %.thread97 ], [ %.input.sroa.9.0, %131 ], [ %input.sroa.9.0.lcssa828793, %.thread90 ], !llfi_index !840
  %135 = getelementptr inbounds %struct.Inputs* %agg.result, i64 0, i32 0, !llfi_index !841
  store i32 %input.sroa.0.0.lcssa838694, i32* %135, align 8, !llfi_index !842
  %136 = getelementptr inbounds %struct.Inputs* %agg.result, i64 0, i32 1, !llfi_index !843
  store i64 %input.sroa.640.0, i64* %136, align 8, !llfi_index !844
  %137 = getelementptr inbounds %struct.Inputs* %agg.result, i64 0, i32 2, !llfi_index !845
  store i64 %input.sroa.9.2, i64* %137, align 8, !llfi_index !846
  %138 = getelementptr inbounds %struct.Inputs* %agg.result, i64 0, i32 3, !llfi_index !847
  store i32 %input.sroa.14.0.lcssa818892, i32* %138, align 8, !llfi_index !848
  %139 = getelementptr inbounds %struct.Inputs* %agg.result, i64 0, i32 4, !llfi_index !849
  store i8* %input.sroa.1741.0.lcssa808991, i8** %139, align 8, !llfi_index !850
  ret void, !llfi_index !851
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind uwtable
define double @get_wtime() #0 {
  %tv = alloca %struct.timeval, align 8, !llfi_index !852
  %1 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #2, !llfi_index !853
  %2 = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 0, !llfi_index !854
  %3 = load i64* %2, align 8, !tbaa !855, !llfi_index !857
  %4 = sitofp i64 %3 to double, !llfi_index !858
  %5 = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 1, !llfi_index !859
  %6 = load i64* %5, align 8, !tbaa !860, !llfi_index !861
  %7 = sitofp i64 %6 to double, !llfi_index !862
  %8 = fdiv double %7, 1.000000e+06, !llfi_index !863
  %9 = fadd double %4, %8, !llfi_index !864
  ret double %9, !llfi_index !865
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #3

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %tv.i6 = alloca %struct.timeval, align 8, !llfi_index !866
  %tv.i = alloca %struct.timeval, align 8, !llfi_index !867
  %seed = alloca i64, align 8, !llfi_index !868
  %in = alloca %struct.Inputs, align 8, !llfi_index !869
  %macro_xs_vector = alloca [5 x double], align 16, !llfi_index !870
  %line = alloca [256 x i8], align 16, !llfi_index !871
  call void @srand(i32 26) #2, !llfi_index !872
  %1 = bitcast %struct.Inputs* %in to i8*, !llfi_index !873
  call void @llvm.lifetime.start(i64 40, i8* %1) #2, !llfi_index !874
  call void @read_CLI(%struct.Inputs* sret %in, i32 %argc, i8** %argv) #2, !llfi_index !875
  call void @print_inputs(%struct.Inputs* byval align 8 %in, i32 undef, i32 13) #2, !llfi_index !876
  %puts = call i32 @puts(i8* getelementptr inbounds ([35 x i8]* @str5, i64 0, i64 0)), !llfi_index !877
  %2 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 1, !llfi_index !878
  %3 = load i64* %2, align 8, !tbaa !608, !llfi_index !879
  %4 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 2, !llfi_index !880
  %5 = load i64* %4, align 8, !tbaa !613, !llfi_index !881
  %6 = call %struct.NuclideGridPoint** @gpmatrix(i64 %3, i64 %5) #2, !llfi_index !882
  %7 = load i64* %2, align 8, !tbaa !608, !llfi_index !883
  %8 = load i64* %4, align 8, !tbaa !613, !llfi_index !884
  call void @generate_grids_v(%struct.NuclideGridPoint** %6, i64 %7, i64 %8) #2, !llfi_index !885
  %puts2 = call i32 @puts(i8* getelementptr inbounds ([32 x i8]* @str86, i64 0, i64 0)), !llfi_index !886
  %9 = load i64* %2, align 8, !tbaa !608, !llfi_index !887
  %10 = load i64* %4, align 8, !tbaa !613, !llfi_index !888
  call void @sort_nuclide_grids(%struct.NuclideGridPoint** %6, i64 %9, i64 %10) #2, !llfi_index !889
  %11 = load i64* %2, align 8, !tbaa !608, !llfi_index !890
  %12 = load i64* %4, align 8, !tbaa !613, !llfi_index !891
  %13 = call %struct.GridPoint* @generate_energy_grid(i64 %11, i64 %12, %struct.NuclideGridPoint** %6) #2, !llfi_index !892
  %14 = load i64* %2, align 8, !tbaa !608, !llfi_index !893
  %15 = load i64* %4, align 8, !tbaa !613, !llfi_index !894
  call void @set_grid_ptrs(%struct.GridPoint* %13, %struct.NuclideGridPoint** %6, i64 %14, i64 %15) #2, !llfi_index !895
  %puts3 = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str97, i64 0, i64 0)), !llfi_index !896
  %16 = load i64* %2, align 8, !tbaa !608, !llfi_index !897
  %17 = call i32* @load_num_nucs(i64 %16) #2, !llfi_index !898
  %18 = load i64* %2, align 8, !tbaa !608, !llfi_index !899
  %19 = call i32** @load_mats(i32* %17, i64 %18) #2, !llfi_index !900
  %20 = call double** @load_concs_v(i32* %17) #2, !llfi_index !901
  %putchar = call i32 @putchar(i32 10) #2, !llfi_index !902
  call void @border_print() #2, !llfi_index !903
  call void @center_print(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i32 79) #2, !llfi_index !904
  call void @border_print() #2, !llfi_index !905
  %21 = bitcast %struct.timeval* %tv.i to i8*, !llfi_index !906
  call void @llvm.lifetime.start(i64 16, i8* %21) #2, !llfi_index !907
  %22 = call i32 @gettimeofday(%struct.timeval* %tv.i, %struct.timezone* null) #2, !llfi_index !908
  %23 = getelementptr inbounds %struct.timeval* %tv.i, i64 0, i32 0, !llfi_index !909
  %24 = load i64* %23, align 8, !tbaa !855, !llfi_index !910
  %25 = sitofp i64 %24 to double, !llfi_index !911
  %26 = getelementptr inbounds %struct.timeval* %tv.i, i64 0, i32 1, !llfi_index !912
  %27 = load i64* %26, align 8, !tbaa !860, !llfi_index !913
  %28 = sitofp i64 %27 to double, !llfi_index !914
  %29 = fdiv double %28, 1.000000e+06, !llfi_index !915
  %30 = fadd double %25, %29, !llfi_index !916
  call void @llvm.lifetime.end(i64 16, i8* %21) #2, !llfi_index !917
  %31 = bitcast [5 x double]* %macro_xs_vector to i8*, !llfi_index !918
  call void @llvm.lifetime.start(i64 40, i8* %31) #2, !llfi_index !919
  store i64 36, i64* %seed, align 8, !tbaa !920, !llfi_index !921
  %32 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 3, !llfi_index !922
  %33 = load i32* %32, align 8, !tbaa !522, !llfi_index !923
  %34 = icmp sgt i32 %33, 0, !llfi_index !924
  br i1 %34, label %.lr.ph, label %._crit_edge, !llfi_index !925

.lr.ph:                                           ; preds = %0
  %35 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 0, !llfi_index !926
  %36 = getelementptr inbounds [5 x double]* %macro_xs_vector, i64 0, i64 0, !llfi_index !927
  %37 = getelementptr inbounds [256 x i8]* %line, i64 0, i64 0, !llfi_index !928
  %38 = getelementptr inbounds [5 x double]* %macro_xs_vector, i64 0, i64 1, !llfi_index !929
  %39 = getelementptr inbounds [5 x double]* %macro_xs_vector, i64 0, i64 2, !llfi_index !930
  %40 = getelementptr inbounds [5 x double]* %macro_xs_vector, i64 0, i64 3, !llfi_index !931
  %41 = getelementptr inbounds [5 x double]* %macro_xs_vector, i64 0, i64 4, !llfi_index !932
  br label %42, !llfi_index !933

; <label>:42                                      ; preds = %56, %.lr.ph
  %43 = phi i32 [ %33, %.lr.ph ], [ %71, %56 ], !llfi_index !934
  %i.08 = phi i32 [ 0, %.lr.ph ], [ %70, %56 ], !llfi_index !935
  %vhash.07 = phi i64 [ 0, %.lr.ph ], [ %69, %56 ], !llfi_index !936
  %44 = srem i32 %i.08, 1000, !llfi_index !937
  %45 = icmp eq i32 %44, 0, !llfi_index !938
  br i1 %45, label %46, label %56, !llfi_index !939

; <label>:46                                      ; preds = %42
  %47 = sitofp i32 %i.08 to double, !llfi_index !940
  %48 = sitofp i32 %43 to double, !llfi_index !941
  %49 = load i32* %35, align 8, !tbaa !544, !llfi_index !942
  %50 = sitofp i32 %49 to double, !llfi_index !943
  %51 = fdiv double %48, %50, !llfi_index !944
  %52 = fdiv double %47, %51, !llfi_index !945
  %53 = fdiv double %52, %50, !llfi_index !946
  %54 = fmul double %53, 1.000000e+02, !llfi_index !947
  %55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str53, i64 0, i64 0), double %54) #2, !llfi_index !948
  br label %56, !llfi_index !949

; <label>:56                                      ; preds = %46, %42
  %57 = call double @rn_v() #2, !llfi_index !950
  %58 = call i32 @pick_mat(i64* %seed) #2, !llfi_index !951
  %59 = load i64* %2, align 8, !tbaa !608, !llfi_index !952
  %60 = load i64* %4, align 8, !tbaa !613, !llfi_index !953
  call void @calculate_macro_xs(double %57, i32 %58, i64 %59, i64 %60, i32* %17, double** %20, %struct.GridPoint* %13, %struct.NuclideGridPoint** %6, i32** %19, double* %36) #2, !llfi_index !954
  call void @llvm.lifetime.start(i64 256, i8* %37) #2, !llfi_index !955
  %61 = load double* %36, align 16, !tbaa !48, !llfi_index !956
  %62 = load double* %38, align 8, !tbaa !48, !llfi_index !957
  %63 = load double* %39, align 16, !tbaa !48, !llfi_index !958
  %64 = load double* %40, align 8, !tbaa !48, !llfi_index !959
  %65 = load double* %41, align 16, !tbaa !48, !llfi_index !960
  %66 = call i32 (i8*, i8*, ...)* @sprintf(i8* %37, i8* getelementptr inbounds ([39 x i8]* @.str64, i64 0, i64 0), double %57, i32 %58, double %61, double %62, double %63, double %64, double %65) #2, !llfi_index !961
  %67 = call i32 @hash(i8* %37, i32 10000) #2, !llfi_index !962
  %68 = zext i32 %67 to i64, !llfi_index !963
  %69 = add i64 %68, %vhash.07, !llfi_index !964
  call void @llvm.lifetime.end(i64 256, i8* %37) #2, !llfi_index !965
  %70 = add nsw i32 %i.08, 1, !llfi_index !966
  %71 = load i32* %32, align 8, !tbaa !522, !llfi_index !967
  %72 = icmp slt i32 %70, %71, !llfi_index !968
  br i1 %72, label %42, label %._crit_edge, !llfi_index !969

._crit_edge:                                      ; preds = %56, %0
  %vhash.0.lcssa = phi i64 [ 0, %0 ], [ %69, %56 ], !llfi_index !970
  call void @llvm.lifetime.end(i64 40, i8* %31) #2, !llfi_index !971
  %putchar4 = call i32 @putchar(i32 10) #2, !llfi_index !972
  %puts5 = call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str10, i64 0, i64 0)), !llfi_index !973
  %73 = bitcast %struct.timeval* %tv.i6 to i8*, !llfi_index !974
  call void @llvm.lifetime.start(i64 16, i8* %73) #2, !llfi_index !975
  %74 = call i32 @gettimeofday(%struct.timeval* %tv.i6, %struct.timezone* null) #2, !llfi_index !976
  %75 = getelementptr inbounds %struct.timeval* %tv.i6, i64 0, i32 0, !llfi_index !977
  %76 = load i64* %75, align 8, !tbaa !855, !llfi_index !978
  %77 = sitofp i64 %76 to double, !llfi_index !979
  %78 = getelementptr inbounds %struct.timeval* %tv.i6, i64 0, i32 1, !llfi_index !980
  %79 = load i64* %78, align 8, !tbaa !860, !llfi_index !981
  %80 = sitofp i64 %79 to double, !llfi_index !982
  %81 = fdiv double %80, 1.000000e+06, !llfi_index !983
  %82 = fadd double %77, %81, !llfi_index !984
  call void @llvm.lifetime.end(i64 16, i8* %73) #2, !llfi_index !985
  %83 = fsub double %82, %30, !llfi_index !986
  call void @print_results(%struct.Inputs* byval align 8 %in, i32 0, double %83, i32 undef, i64 %vhash.0.lcssa) #2, !llfi_index !987
  call void @llvm.lifetime.end(i64 40, i8* %1) #2, !llfi_index !988
  ret i32 0, !llfi_index !989
}

; Function Attrs: nounwind
declare void @srand(i32) #3

; Function Attrs: nounwind uwtable
define noalias i32* @load_num_nucs(i64 %n_isotopes) #0 {
  %1 = tail call noalias i8* @malloc(i64 48) #2, !llfi_index !990
  %2 = bitcast i8* %1 to i32*, !llfi_index !991
  %3 = icmp eq i64 %n_isotopes, 68, !llfi_index !992
  %. = select i1 %3, i32 34, i32 321, !llfi_index !993
  store i32 %., i32* %2, align 4, !tbaa !12, !llfi_index !994
  %4 = getelementptr inbounds i8* %1, i64 4, !llfi_index !995
  %5 = bitcast i8* %4 to i32*, !llfi_index !996
  store i32 5, i32* %5, align 4, !tbaa !12, !llfi_index !997
  %6 = getelementptr inbounds i8* %1, i64 8, !llfi_index !998
  %7 = bitcast i8* %6 to i32*, !llfi_index !999
  store i32 4, i32* %7, align 4, !tbaa !12, !llfi_index !1000
  %8 = getelementptr inbounds i8* %1, i64 12, !llfi_index !1001
  %9 = bitcast i8* %8 to i32*, !llfi_index !1002
  store i32 4, i32* %9, align 4, !tbaa !12, !llfi_index !1003
  %10 = getelementptr inbounds i8* %1, i64 16, !llfi_index !1004
  %11 = bitcast i8* %10 to i32*, !llfi_index !1005
  store i32 27, i32* %11, align 4, !tbaa !12, !llfi_index !1006
  %12 = getelementptr inbounds i8* %1, i64 20, !llfi_index !1007
  %13 = bitcast i8* %12 to i32*, !llfi_index !1008
  store i32 21, i32* %13, align 4, !tbaa !12, !llfi_index !1009
  %14 = getelementptr inbounds i8* %1, i64 24, !llfi_index !1010
  %15 = bitcast i8* %14 to i32*, !llfi_index !1011
  store i32 21, i32* %15, align 4, !tbaa !12, !llfi_index !1012
  %16 = getelementptr inbounds i8* %1, i64 28, !llfi_index !1013
  %17 = bitcast i8* %16 to i32*, !llfi_index !1014
  store i32 21, i32* %17, align 4, !tbaa !12, !llfi_index !1015
  %18 = getelementptr inbounds i8* %1, i64 32, !llfi_index !1016
  %19 = bitcast i8* %18 to i32*, !llfi_index !1017
  store i32 21, i32* %19, align 4, !tbaa !12, !llfi_index !1018
  %20 = getelementptr inbounds i8* %1, i64 36, !llfi_index !1019
  %21 = bitcast i8* %20 to i32*, !llfi_index !1020
  store i32 21, i32* %21, align 4, !tbaa !12, !llfi_index !1021
  %22 = getelementptr inbounds i8* %1, i64 40, !llfi_index !1022
  %23 = bitcast i8* %22 to i32*, !llfi_index !1023
  store i32 9, i32* %23, align 4, !tbaa !12, !llfi_index !1024
  %24 = getelementptr inbounds i8* %1, i64 44, !llfi_index !1025
  %25 = bitcast i8* %24 to i32*, !llfi_index !1026
  store i32 9, i32* %25, align 4, !tbaa !12, !llfi_index !1027
  ret i32* %2, !llfi_index !1028
}

; Function Attrs: nounwind uwtable
define noalias i32** @load_mats(i32* nocapture readonly %num_nucs, i64 %n_isotopes) #0 {
vector.ph:
  %mats0_Lrg = alloca [321 x i32], align 16, !llfi_index !1029
  %0 = tail call noalias i8* @malloc(i64 96) #2, !llfi_index !1030
  %1 = bitcast i8* %0 to i32**, !llfi_index !1031
  %2 = load i32* %num_nucs, align 4, !tbaa !12, !llfi_index !1032
  %3 = sext i32 %2 to i64, !llfi_index !1033
  %4 = shl nsw i64 %3, 2, !llfi_index !1034
  %5 = tail call noalias i8* @malloc(i64 %4) #2, !llfi_index !1035
  %6 = bitcast i8* %5 to i32*, !llfi_index !1036
  store i32* %6, i32** %1, align 8, !tbaa !22, !llfi_index !1037
  %7 = getelementptr inbounds i32* %num_nucs, i64 1, !llfi_index !1038
  %8 = load i32* %7, align 4, !tbaa !12, !llfi_index !1039
  %9 = sext i32 %8 to i64, !llfi_index !1040
  %10 = shl nsw i64 %9, 2, !llfi_index !1041
  %11 = tail call noalias i8* @malloc(i64 %10) #2, !llfi_index !1042
  %12 = bitcast i8* %11 to i32*, !llfi_index !1043
  %13 = getelementptr inbounds i8* %0, i64 8, !llfi_index !1044
  %14 = bitcast i8* %13 to i32**, !llfi_index !1045
  store i32* %12, i32** %14, align 8, !tbaa !22, !llfi_index !1046
  %15 = getelementptr inbounds i32* %num_nucs, i64 2, !llfi_index !1047
  %16 = load i32* %15, align 4, !tbaa !12, !llfi_index !1048
  %17 = sext i32 %16 to i64, !llfi_index !1049
  %18 = shl nsw i64 %17, 2, !llfi_index !1050
  %19 = tail call noalias i8* @malloc(i64 %18) #2, !llfi_index !1051
  %20 = bitcast i8* %19 to i32*, !llfi_index !1052
  %21 = getelementptr inbounds i8* %0, i64 16, !llfi_index !1053
  %22 = bitcast i8* %21 to i32**, !llfi_index !1054
  store i32* %20, i32** %22, align 8, !tbaa !22, !llfi_index !1055
  %23 = getelementptr inbounds i32* %num_nucs, i64 3, !llfi_index !1056
  %24 = load i32* %23, align 4, !tbaa !12, !llfi_index !1057
  %25 = sext i32 %24 to i64, !llfi_index !1058
  %26 = shl nsw i64 %25, 2, !llfi_index !1059
  %27 = tail call noalias i8* @malloc(i64 %26) #2, !llfi_index !1060
  %28 = bitcast i8* %27 to i32*, !llfi_index !1061
  %29 = getelementptr inbounds i8* %0, i64 24, !llfi_index !1062
  %30 = bitcast i8* %29 to i32**, !llfi_index !1063
  store i32* %28, i32** %30, align 8, !tbaa !22, !llfi_index !1064
  %31 = getelementptr inbounds i32* %num_nucs, i64 4, !llfi_index !1065
  %32 = load i32* %31, align 4, !tbaa !12, !llfi_index !1066
  %33 = sext i32 %32 to i64, !llfi_index !1067
  %34 = shl nsw i64 %33, 2, !llfi_index !1068
  %35 = tail call noalias i8* @malloc(i64 %34) #2, !llfi_index !1069
  %36 = bitcast i8* %35 to i32*, !llfi_index !1070
  %37 = getelementptr inbounds i8* %0, i64 32, !llfi_index !1071
  %38 = bitcast i8* %37 to i32**, !llfi_index !1072
  store i32* %36, i32** %38, align 8, !tbaa !22, !llfi_index !1073
  %39 = getelementptr inbounds i32* %num_nucs, i64 5, !llfi_index !1074
  %40 = load i32* %39, align 4, !tbaa !12, !llfi_index !1075
  %41 = sext i32 %40 to i64, !llfi_index !1076
  %42 = shl nsw i64 %41, 2, !llfi_index !1077
  %43 = tail call noalias i8* @malloc(i64 %42) #2, !llfi_index !1078
  %44 = bitcast i8* %43 to i32*, !llfi_index !1079
  %45 = getelementptr inbounds i8* %0, i64 40, !llfi_index !1080
  %46 = bitcast i8* %45 to i32**, !llfi_index !1081
  store i32* %44, i32** %46, align 8, !tbaa !22, !llfi_index !1082
  %47 = getelementptr inbounds i32* %num_nucs, i64 6, !llfi_index !1083
  %48 = load i32* %47, align 4, !tbaa !12, !llfi_index !1084
  %49 = sext i32 %48 to i64, !llfi_index !1085
  %50 = shl nsw i64 %49, 2, !llfi_index !1086
  %51 = tail call noalias i8* @malloc(i64 %50) #2, !llfi_index !1087
  %52 = bitcast i8* %51 to i32*, !llfi_index !1088
  %53 = getelementptr inbounds i8* %0, i64 48, !llfi_index !1089
  %54 = bitcast i8* %53 to i32**, !llfi_index !1090
  store i32* %52, i32** %54, align 8, !tbaa !22, !llfi_index !1091
  %55 = getelementptr inbounds i32* %num_nucs, i64 7, !llfi_index !1092
  %56 = load i32* %55, align 4, !tbaa !12, !llfi_index !1093
  %57 = sext i32 %56 to i64, !llfi_index !1094
  %58 = shl nsw i64 %57, 2, !llfi_index !1095
  %59 = tail call noalias i8* @malloc(i64 %58) #2, !llfi_index !1096
  %60 = bitcast i8* %59 to i32*, !llfi_index !1097
  %61 = getelementptr inbounds i8* %0, i64 56, !llfi_index !1098
  %62 = bitcast i8* %61 to i32**, !llfi_index !1099
  store i32* %60, i32** %62, align 8, !tbaa !22, !llfi_index !1100
  %63 = getelementptr inbounds i32* %num_nucs, i64 8, !llfi_index !1101
  %64 = load i32* %63, align 4, !tbaa !12, !llfi_index !1102
  %65 = sext i32 %64 to i64, !llfi_index !1103
  %66 = shl nsw i64 %65, 2, !llfi_index !1104
  %67 = tail call noalias i8* @malloc(i64 %66) #2, !llfi_index !1105
  %68 = bitcast i8* %67 to i32*, !llfi_index !1106
  %69 = getelementptr inbounds i8* %0, i64 64, !llfi_index !1107
  %70 = bitcast i8* %69 to i32**, !llfi_index !1108
  store i32* %68, i32** %70, align 8, !tbaa !22, !llfi_index !1109
  %71 = getelementptr inbounds i32* %num_nucs, i64 9, !llfi_index !1110
  %72 = load i32* %71, align 4, !tbaa !12, !llfi_index !1111
  %73 = sext i32 %72 to i64, !llfi_index !1112
  %74 = shl nsw i64 %73, 2, !llfi_index !1113
  %75 = tail call noalias i8* @malloc(i64 %74) #2, !llfi_index !1114
  %76 = bitcast i8* %75 to i32*, !llfi_index !1115
  %77 = getelementptr inbounds i8* %0, i64 72, !llfi_index !1116
  %78 = bitcast i8* %77 to i32**, !llfi_index !1117
  store i32* %76, i32** %78, align 8, !tbaa !22, !llfi_index !1118
  %79 = getelementptr inbounds i32* %num_nucs, i64 10, !llfi_index !1119
  %80 = load i32* %79, align 4, !tbaa !12, !llfi_index !1120
  %81 = sext i32 %80 to i64, !llfi_index !1121
  %82 = shl nsw i64 %81, 2, !llfi_index !1122
  %83 = tail call noalias i8* @malloc(i64 %82) #2, !llfi_index !1123
  %84 = bitcast i8* %83 to i32*, !llfi_index !1124
  %85 = getelementptr inbounds i8* %0, i64 80, !llfi_index !1125
  %86 = bitcast i8* %85 to i32**, !llfi_index !1126
  store i32* %84, i32** %86, align 8, !tbaa !22, !llfi_index !1127
  %87 = getelementptr inbounds i32* %num_nucs, i64 11, !llfi_index !1128
  %88 = load i32* %87, align 4, !tbaa !12, !llfi_index !1129
  %89 = sext i32 %88 to i64, !llfi_index !1130
  %90 = shl nsw i64 %89, 2, !llfi_index !1131
  %91 = tail call noalias i8* @malloc(i64 %90) #2, !llfi_index !1132
  %92 = bitcast i8* %91 to i32*, !llfi_index !1133
  %93 = getelementptr inbounds i8* %0, i64 88, !llfi_index !1134
  %94 = bitcast i8* %93 to i32**, !llfi_index !1135
  store i32* %92, i32** %94, align 8, !tbaa !22, !llfi_index !1136
  %95 = bitcast [321 x i32]* %mats0_Lrg to i8*, !llfi_index !1137
  call void @llvm.lifetime.start(i64 1284, i8* %95) #2, !llfi_index !1138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* bitcast ([321 x i32]* @load_mats.mats0_Lrg to i8*), i64 1284, i32 16, i1 false), !llfi_index !1139
  br label %vector.body, !llfi_index !1140

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !llfi_index !1141
  %broadcast.splatinsert = insertelement <2 x i64> undef, i64 %index, i32 0, !llfi_index !1142
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> undef, <2 x i32> zeroinitializer, !llfi_index !1143
  %96 = add <2 x i64> %broadcast.splat, <i64 68, i64 69>, !llfi_index !1144
  %97 = add <2 x i64> %broadcast.splat, <i64 70, i64 71>, !llfi_index !1145
  %98 = add i64 %index, 34, !llfi_index !1146
  %99 = getelementptr inbounds [321 x i32]* %mats0_Lrg, i64 0, i64 %98, !llfi_index !1147
  %100 = trunc <2 x i64> %96 to <2 x i32>, !llfi_index !1148
  %101 = trunc <2 x i64> %97 to <2 x i32>, !llfi_index !1149
  %102 = bitcast i32* %99 to <2 x i32>*, !llfi_index !1150
  store <2 x i32> %100, <2 x i32>* %102, align 8, !llfi_index !1151
  %.sum = add i64 %index, 36, !llfi_index !1152
  %103 = getelementptr [321 x i32]* %mats0_Lrg, i64 0, i64 %.sum, !llfi_index !1153
  %104 = bitcast i32* %103 to <2 x i32>*, !llfi_index !1154
  store <2 x i32> %101, <2 x i32>* %104, align 16, !llfi_index !1155
  %index.next = add i64 %index, 4, !llfi_index !1156
  %105 = icmp eq i64 %index.next, 284, !llfi_index !1157
  br i1 %105, label %scalar.ph, label %vector.body, !llvm.loop !1158, !llfi_index !1161

scalar.ph:                                        ; preds = %scalar.ph, %vector.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 284, %vector.body ], !llfi_index !1162
  %106 = add nsw i64 %indvars.iv, 68, !llfi_index !1163
  %107 = add nsw i64 %indvars.iv, 34, !llfi_index !1164
  %108 = getelementptr inbounds [321 x i32]* %mats0_Lrg, i64 0, i64 %107, !llfi_index !1165
  %109 = trunc i64 %106 to i32, !llfi_index !1166
  store i32 %109, i32* %108, align 4, !tbaa !12, !llfi_index !1167
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1168
  %exitcond = icmp eq i64 %indvars.iv.next, 287, !llfi_index !1169
  br i1 %exitcond, label %110, label %scalar.ph, !llvm.loop !1170, !llfi_index !1171

; <label>:110                                     ; preds = %scalar.ph
  %111 = icmp eq i64 %n_isotopes, 68, !llfi_index !1172
  br i1 %111, label %112, label %113, !llfi_index !1173

; <label>:112                                     ; preds = %110
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast ([34 x i32]* @load_mats.mats0_Sml to i8*), i64 %4, i32 4, i1 false), !llfi_index !1174
  br label %114, !llfi_index !1175

; <label>:113                                     ; preds = %110
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %95, i64 %4, i32 4, i1 false), !llfi_index !1176
  br label %114, !llfi_index !1177

; <label>:114                                     ; preds = %113, %112
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* bitcast ([5 x i32]* @load_mats.mats1 to i8*), i64 %10, i32 4, i1 false), !llfi_index !1178
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* bitcast ([4 x i32]* @load_mats.mats3 to i8*), i64 %18, i32 4, i1 false), !llfi_index !1179
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* bitcast ([4 x i32]* @load_mats.mats3 to i8*), i64 %26, i32 4, i1 false), !llfi_index !1180
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* bitcast ([27 x i32]* @load_mats.mats4 to i8*), i64 %34, i32 4, i1 false), !llfi_index !1181
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* bitcast ([21 x i32]* @load_mats.mats9 to i8*), i64 %42, i32 4, i1 false), !llfi_index !1182
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* bitcast ([21 x i32]* @load_mats.mats9 to i8*), i64 %50, i32 4, i1 false), !llfi_index !1183
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* bitcast ([21 x i32]* @load_mats.mats9 to i8*), i64 %58, i32 4, i1 false), !llfi_index !1184
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* bitcast ([21 x i32]* @load_mats.mats9 to i8*), i64 %66, i32 4, i1 false), !llfi_index !1185
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* bitcast ([21 x i32]* @load_mats.mats9 to i8*), i64 %74, i32 4, i1 false), !llfi_index !1186
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* bitcast ([9 x i32]* @load_mats.mats11 to i8*), i64 %82, i32 4, i1 false), !llfi_index !1187
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* bitcast ([9 x i32]* @load_mats.mats11 to i8*), i64 %90, i32 4, i1 false), !llfi_index !1188
  call void @llvm.lifetime.end(i64 1284, i8* %95) #2, !llfi_index !1189
  ret i32** %1, !llfi_index !1190
}

; Function Attrs: nounwind uwtable
define noalias double** @load_concs(i32* nocapture readonly %num_nucs) #0 {
.preheader311:
  %0 = tail call noalias i8* @malloc(i64 96) #2, !llfi_index !1191
  %1 = bitcast i8* %0 to double**, !llfi_index !1192
  %2 = load i32* %num_nucs, align 4, !tbaa !12, !llfi_index !1193
  %3 = sext i32 %2 to i64, !llfi_index !1194
  %4 = shl nsw i64 %3, 3, !llfi_index !1195
  %5 = tail call noalias i8* @malloc(i64 %4) #2, !llfi_index !1196
  %6 = bitcast i8* %5 to double*, !llfi_index !1197
  store double* %6, double** %1, align 8, !tbaa !22, !llfi_index !1198
  %7 = getelementptr inbounds i32* %num_nucs, i64 1, !llfi_index !1199
  %8 = load i32* %7, align 4, !tbaa !12, !llfi_index !1200
  %9 = sext i32 %8 to i64, !llfi_index !1201
  %10 = shl nsw i64 %9, 3, !llfi_index !1202
  %11 = tail call noalias i8* @malloc(i64 %10) #2, !llfi_index !1203
  %12 = bitcast i8* %11 to double*, !llfi_index !1204
  %13 = getelementptr inbounds i8* %0, i64 8, !llfi_index !1205
  %14 = bitcast i8* %13 to double**, !llfi_index !1206
  store double* %12, double** %14, align 8, !tbaa !22, !llfi_index !1207
  %15 = getelementptr inbounds i32* %num_nucs, i64 2, !llfi_index !1208
  %16 = load i32* %15, align 4, !tbaa !12, !llfi_index !1209
  %17 = sext i32 %16 to i64, !llfi_index !1210
  %18 = shl nsw i64 %17, 3, !llfi_index !1211
  %19 = tail call noalias i8* @malloc(i64 %18) #2, !llfi_index !1212
  %20 = bitcast i8* %19 to double*, !llfi_index !1213
  %21 = getelementptr inbounds i8* %0, i64 16, !llfi_index !1214
  %22 = bitcast i8* %21 to double**, !llfi_index !1215
  store double* %20, double** %22, align 8, !tbaa !22, !llfi_index !1216
  %23 = getelementptr inbounds i32* %num_nucs, i64 3, !llfi_index !1217
  %24 = load i32* %23, align 4, !tbaa !12, !llfi_index !1218
  %25 = sext i32 %24 to i64, !llfi_index !1219
  %26 = shl nsw i64 %25, 3, !llfi_index !1220
  %27 = tail call noalias i8* @malloc(i64 %26) #2, !llfi_index !1221
  %28 = bitcast i8* %27 to double*, !llfi_index !1222
  %29 = getelementptr inbounds i8* %0, i64 24, !llfi_index !1223
  %30 = bitcast i8* %29 to double**, !llfi_index !1224
  store double* %28, double** %30, align 8, !tbaa !22, !llfi_index !1225
  %31 = getelementptr inbounds i32* %num_nucs, i64 4, !llfi_index !1226
  %32 = load i32* %31, align 4, !tbaa !12, !llfi_index !1227
  %33 = sext i32 %32 to i64, !llfi_index !1228
  %34 = shl nsw i64 %33, 3, !llfi_index !1229
  %35 = tail call noalias i8* @malloc(i64 %34) #2, !llfi_index !1230
  %36 = bitcast i8* %35 to double*, !llfi_index !1231
  %37 = getelementptr inbounds i8* %0, i64 32, !llfi_index !1232
  %38 = bitcast i8* %37 to double**, !llfi_index !1233
  store double* %36, double** %38, align 8, !tbaa !22, !llfi_index !1234
  %39 = getelementptr inbounds i32* %num_nucs, i64 5, !llfi_index !1235
  %40 = load i32* %39, align 4, !tbaa !12, !llfi_index !1236
  %41 = sext i32 %40 to i64, !llfi_index !1237
  %42 = shl nsw i64 %41, 3, !llfi_index !1238
  %43 = tail call noalias i8* @malloc(i64 %42) #2, !llfi_index !1239
  %44 = bitcast i8* %43 to double*, !llfi_index !1240
  %45 = getelementptr inbounds i8* %0, i64 40, !llfi_index !1241
  %46 = bitcast i8* %45 to double**, !llfi_index !1242
  store double* %44, double** %46, align 8, !tbaa !22, !llfi_index !1243
  %47 = getelementptr inbounds i32* %num_nucs, i64 6, !llfi_index !1244
  %48 = load i32* %47, align 4, !tbaa !12, !llfi_index !1245
  %49 = sext i32 %48 to i64, !llfi_index !1246
  %50 = shl nsw i64 %49, 3, !llfi_index !1247
  %51 = tail call noalias i8* @malloc(i64 %50) #2, !llfi_index !1248
  %52 = bitcast i8* %51 to double*, !llfi_index !1249
  %53 = getelementptr inbounds i8* %0, i64 48, !llfi_index !1250
  %54 = bitcast i8* %53 to double**, !llfi_index !1251
  store double* %52, double** %54, align 8, !tbaa !22, !llfi_index !1252
  %55 = getelementptr inbounds i32* %num_nucs, i64 7, !llfi_index !1253
  %56 = load i32* %55, align 4, !tbaa !12, !llfi_index !1254
  %57 = sext i32 %56 to i64, !llfi_index !1255
  %58 = shl nsw i64 %57, 3, !llfi_index !1256
  %59 = tail call noalias i8* @malloc(i64 %58) #2, !llfi_index !1257
  %60 = bitcast i8* %59 to double*, !llfi_index !1258
  %61 = getelementptr inbounds i8* %0, i64 56, !llfi_index !1259
  %62 = bitcast i8* %61 to double**, !llfi_index !1260
  store double* %60, double** %62, align 8, !tbaa !22, !llfi_index !1261
  %63 = getelementptr inbounds i32* %num_nucs, i64 8, !llfi_index !1262
  %64 = load i32* %63, align 4, !tbaa !12, !llfi_index !1263
  %65 = sext i32 %64 to i64, !llfi_index !1264
  %66 = shl nsw i64 %65, 3, !llfi_index !1265
  %67 = tail call noalias i8* @malloc(i64 %66) #2, !llfi_index !1266
  %68 = bitcast i8* %67 to double*, !llfi_index !1267
  %69 = getelementptr inbounds i8* %0, i64 64, !llfi_index !1268
  %70 = bitcast i8* %69 to double**, !llfi_index !1269
  store double* %68, double** %70, align 8, !tbaa !22, !llfi_index !1270
  %71 = getelementptr inbounds i32* %num_nucs, i64 9, !llfi_index !1271
  %72 = load i32* %71, align 4, !tbaa !12, !llfi_index !1272
  %73 = sext i32 %72 to i64, !llfi_index !1273
  %74 = shl nsw i64 %73, 3, !llfi_index !1274
  %75 = tail call noalias i8* @malloc(i64 %74) #2, !llfi_index !1275
  %76 = bitcast i8* %75 to double*, !llfi_index !1276
  %77 = getelementptr inbounds i8* %0, i64 72, !llfi_index !1277
  %78 = bitcast i8* %77 to double**, !llfi_index !1278
  store double* %76, double** %78, align 8, !tbaa !22, !llfi_index !1279
  %79 = getelementptr inbounds i32* %num_nucs, i64 10, !llfi_index !1280
  %80 = load i32* %79, align 4, !tbaa !12, !llfi_index !1281
  %81 = sext i32 %80 to i64, !llfi_index !1282
  %82 = shl nsw i64 %81, 3, !llfi_index !1283
  %83 = tail call noalias i8* @malloc(i64 %82) #2, !llfi_index !1284
  %84 = bitcast i8* %83 to double*, !llfi_index !1285
  %85 = getelementptr inbounds i8* %0, i64 80, !llfi_index !1286
  %86 = bitcast i8* %85 to double**, !llfi_index !1287
  store double* %84, double** %86, align 8, !tbaa !22, !llfi_index !1288
  %87 = getelementptr inbounds i32* %num_nucs, i64 11, !llfi_index !1289
  %88 = load i32* %87, align 4, !tbaa !12, !llfi_index !1290
  %89 = sext i32 %88 to i64, !llfi_index !1291
  %90 = shl nsw i64 %89, 3, !llfi_index !1292
  %91 = tail call noalias i8* @malloc(i64 %90) #2, !llfi_index !1293
  %92 = bitcast i8* %91 to double*, !llfi_index !1294
  %93 = getelementptr inbounds i8* %0, i64 88, !llfi_index !1295
  %94 = bitcast i8* %93 to double**, !llfi_index !1296
  store double* %92, double** %94, align 8, !tbaa !22, !llfi_index !1297
  br label %.preheader, !llfi_index !1298

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader311
  %95 = phi i32 [ %2, %.preheader311 ], [ %.pre, %..preheader_crit_edge ], !llfi_index !1299
  %indvars.iv6 = phi i64 [ 0, %.preheader311 ], [ %indvars.iv.next7, %..preheader_crit_edge ], !llfi_index !1300
  %96 = getelementptr inbounds i32* %num_nucs, i64 %indvars.iv6, !llfi_index !1301
  %97 = icmp sgt i32 %95, 0, !llfi_index !1302
  br i1 %97, label %.lr.ph, label %._crit_edge, !llfi_index !1303

.lr.ph:                                           ; preds = %.preheader
  %98 = getelementptr inbounds double** %1, i64 %indvars.iv6, !llfi_index !1304
  %99 = load double** %98, align 8, !tbaa !22, !llfi_index !1305
  br label %100, !llfi_index !1306

; <label>:100                                     ; preds = %100, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %100 ], !llfi_index !1307
  %101 = tail call i32 @rand() #2, !llfi_index !1308
  %102 = sitofp i32 %101 to double, !llfi_index !1309
  %103 = fdiv double %102, 0x41DFFFFFFFC00000, !llfi_index !1310
  %104 = getelementptr inbounds double* %99, i64 %indvars.iv, !llfi_index !1311
  store double %103, double* %104, align 8, !tbaa !48, !llfi_index !1312
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1313
  %105 = load i32* %96, align 4, !tbaa !12, !llfi_index !1314
  %106 = trunc i64 %indvars.iv.next to i32, !llfi_index !1315
  %107 = icmp slt i32 %106, %105, !llfi_index !1316
  br i1 %107, label %100, label %._crit_edge, !llfi_index !1317

._crit_edge:                                      ; preds = %100, %.preheader
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !llfi_index !1318
  %exitcond = icmp eq i64 %indvars.iv.next7, 12, !llfi_index !1319
  br i1 %exitcond, label %108, label %..preheader_crit_edge, !llfi_index !1320

..preheader_crit_edge:                            ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds i32* %num_nucs, i64 %indvars.iv.next7, !llfi_index !1321
  %.pre = load i32* %.phi.trans.insert, align 4, !tbaa !12, !llfi_index !1322
  br label %.preheader, !llfi_index !1323

; <label>:108                                     ; preds = %._crit_edge
  ret double** %1, !llfi_index !1324
}

; Function Attrs: nounwind uwtable
define noalias double** @load_concs_v(i32* nocapture readonly %num_nucs) #0 {
.preheader311:
  %0 = tail call noalias i8* @malloc(i64 96) #2, !llfi_index !1325
  %1 = bitcast i8* %0 to double**, !llfi_index !1326
  %2 = load i32* %num_nucs, align 4, !tbaa !12, !llfi_index !1327
  %3 = sext i32 %2 to i64, !llfi_index !1328
  %4 = shl nsw i64 %3, 3, !llfi_index !1329
  %5 = tail call noalias i8* @malloc(i64 %4) #2, !llfi_index !1330
  %6 = bitcast i8* %5 to double*, !llfi_index !1331
  store double* %6, double** %1, align 8, !tbaa !22, !llfi_index !1332
  %7 = getelementptr inbounds i32* %num_nucs, i64 1, !llfi_index !1333
  %8 = load i32* %7, align 4, !tbaa !12, !llfi_index !1334
  %9 = sext i32 %8 to i64, !llfi_index !1335
  %10 = shl nsw i64 %9, 3, !llfi_index !1336
  %11 = tail call noalias i8* @malloc(i64 %10) #2, !llfi_index !1337
  %12 = bitcast i8* %11 to double*, !llfi_index !1338
  %13 = getelementptr inbounds i8* %0, i64 8, !llfi_index !1339
  %14 = bitcast i8* %13 to double**, !llfi_index !1340
  store double* %12, double** %14, align 8, !tbaa !22, !llfi_index !1341
  %15 = getelementptr inbounds i32* %num_nucs, i64 2, !llfi_index !1342
  %16 = load i32* %15, align 4, !tbaa !12, !llfi_index !1343
  %17 = sext i32 %16 to i64, !llfi_index !1344
  %18 = shl nsw i64 %17, 3, !llfi_index !1345
  %19 = tail call noalias i8* @malloc(i64 %18) #2, !llfi_index !1346
  %20 = bitcast i8* %19 to double*, !llfi_index !1347
  %21 = getelementptr inbounds i8* %0, i64 16, !llfi_index !1348
  %22 = bitcast i8* %21 to double**, !llfi_index !1349
  store double* %20, double** %22, align 8, !tbaa !22, !llfi_index !1350
  %23 = getelementptr inbounds i32* %num_nucs, i64 3, !llfi_index !1351
  %24 = load i32* %23, align 4, !tbaa !12, !llfi_index !1352
  %25 = sext i32 %24 to i64, !llfi_index !1353
  %26 = shl nsw i64 %25, 3, !llfi_index !1354
  %27 = tail call noalias i8* @malloc(i64 %26) #2, !llfi_index !1355
  %28 = bitcast i8* %27 to double*, !llfi_index !1356
  %29 = getelementptr inbounds i8* %0, i64 24, !llfi_index !1357
  %30 = bitcast i8* %29 to double**, !llfi_index !1358
  store double* %28, double** %30, align 8, !tbaa !22, !llfi_index !1359
  %31 = getelementptr inbounds i32* %num_nucs, i64 4, !llfi_index !1360
  %32 = load i32* %31, align 4, !tbaa !12, !llfi_index !1361
  %33 = sext i32 %32 to i64, !llfi_index !1362
  %34 = shl nsw i64 %33, 3, !llfi_index !1363
  %35 = tail call noalias i8* @malloc(i64 %34) #2, !llfi_index !1364
  %36 = bitcast i8* %35 to double*, !llfi_index !1365
  %37 = getelementptr inbounds i8* %0, i64 32, !llfi_index !1366
  %38 = bitcast i8* %37 to double**, !llfi_index !1367
  store double* %36, double** %38, align 8, !tbaa !22, !llfi_index !1368
  %39 = getelementptr inbounds i32* %num_nucs, i64 5, !llfi_index !1369
  %40 = load i32* %39, align 4, !tbaa !12, !llfi_index !1370
  %41 = sext i32 %40 to i64, !llfi_index !1371
  %42 = shl nsw i64 %41, 3, !llfi_index !1372
  %43 = tail call noalias i8* @malloc(i64 %42) #2, !llfi_index !1373
  %44 = bitcast i8* %43 to double*, !llfi_index !1374
  %45 = getelementptr inbounds i8* %0, i64 40, !llfi_index !1375
  %46 = bitcast i8* %45 to double**, !llfi_index !1376
  store double* %44, double** %46, align 8, !tbaa !22, !llfi_index !1377
  %47 = getelementptr inbounds i32* %num_nucs, i64 6, !llfi_index !1378
  %48 = load i32* %47, align 4, !tbaa !12, !llfi_index !1379
  %49 = sext i32 %48 to i64, !llfi_index !1380
  %50 = shl nsw i64 %49, 3, !llfi_index !1381
  %51 = tail call noalias i8* @malloc(i64 %50) #2, !llfi_index !1382
  %52 = bitcast i8* %51 to double*, !llfi_index !1383
  %53 = getelementptr inbounds i8* %0, i64 48, !llfi_index !1384
  %54 = bitcast i8* %53 to double**, !llfi_index !1385
  store double* %52, double** %54, align 8, !tbaa !22, !llfi_index !1386
  %55 = getelementptr inbounds i32* %num_nucs, i64 7, !llfi_index !1387
  %56 = load i32* %55, align 4, !tbaa !12, !llfi_index !1388
  %57 = sext i32 %56 to i64, !llfi_index !1389
  %58 = shl nsw i64 %57, 3, !llfi_index !1390
  %59 = tail call noalias i8* @malloc(i64 %58) #2, !llfi_index !1391
  %60 = bitcast i8* %59 to double*, !llfi_index !1392
  %61 = getelementptr inbounds i8* %0, i64 56, !llfi_index !1393
  %62 = bitcast i8* %61 to double**, !llfi_index !1394
  store double* %60, double** %62, align 8, !tbaa !22, !llfi_index !1395
  %63 = getelementptr inbounds i32* %num_nucs, i64 8, !llfi_index !1396
  %64 = load i32* %63, align 4, !tbaa !12, !llfi_index !1397
  %65 = sext i32 %64 to i64, !llfi_index !1398
  %66 = shl nsw i64 %65, 3, !llfi_index !1399
  %67 = tail call noalias i8* @malloc(i64 %66) #2, !llfi_index !1400
  %68 = bitcast i8* %67 to double*, !llfi_index !1401
  %69 = getelementptr inbounds i8* %0, i64 64, !llfi_index !1402
  %70 = bitcast i8* %69 to double**, !llfi_index !1403
  store double* %68, double** %70, align 8, !tbaa !22, !llfi_index !1404
  %71 = getelementptr inbounds i32* %num_nucs, i64 9, !llfi_index !1405
  %72 = load i32* %71, align 4, !tbaa !12, !llfi_index !1406
  %73 = sext i32 %72 to i64, !llfi_index !1407
  %74 = shl nsw i64 %73, 3, !llfi_index !1408
  %75 = tail call noalias i8* @malloc(i64 %74) #2, !llfi_index !1409
  %76 = bitcast i8* %75 to double*, !llfi_index !1410
  %77 = getelementptr inbounds i8* %0, i64 72, !llfi_index !1411
  %78 = bitcast i8* %77 to double**, !llfi_index !1412
  store double* %76, double** %78, align 8, !tbaa !22, !llfi_index !1413
  %79 = getelementptr inbounds i32* %num_nucs, i64 10, !llfi_index !1414
  %80 = load i32* %79, align 4, !tbaa !12, !llfi_index !1415
  %81 = sext i32 %80 to i64, !llfi_index !1416
  %82 = shl nsw i64 %81, 3, !llfi_index !1417
  %83 = tail call noalias i8* @malloc(i64 %82) #2, !llfi_index !1418
  %84 = bitcast i8* %83 to double*, !llfi_index !1419
  %85 = getelementptr inbounds i8* %0, i64 80, !llfi_index !1420
  %86 = bitcast i8* %85 to double**, !llfi_index !1421
  store double* %84, double** %86, align 8, !tbaa !22, !llfi_index !1422
  %87 = getelementptr inbounds i32* %num_nucs, i64 11, !llfi_index !1423
  %88 = load i32* %87, align 4, !tbaa !12, !llfi_index !1424
  %89 = sext i32 %88 to i64, !llfi_index !1425
  %90 = shl nsw i64 %89, 3, !llfi_index !1426
  %91 = tail call noalias i8* @malloc(i64 %90) #2, !llfi_index !1427
  %92 = bitcast i8* %91 to double*, !llfi_index !1428
  %93 = getelementptr inbounds i8* %0, i64 88, !llfi_index !1429
  %94 = bitcast i8* %93 to double**, !llfi_index !1430
  store double* %92, double** %94, align 8, !tbaa !22, !llfi_index !1431
  br label %.preheader, !llfi_index !1432

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader311
  %95 = phi i32 [ %2, %.preheader311 ], [ %.pre, %..preheader_crit_edge ], !llfi_index !1433
  %indvars.iv6 = phi i64 [ 0, %.preheader311 ], [ %indvars.iv.next7, %..preheader_crit_edge ], !llfi_index !1434
  %96 = getelementptr inbounds i32* %num_nucs, i64 %indvars.iv6, !llfi_index !1435
  %97 = icmp sgt i32 %95, 0, !llfi_index !1436
  br i1 %97, label %.lr.ph, label %._crit_edge, !llfi_index !1437

.lr.ph:                                           ; preds = %.preheader
  %98 = getelementptr inbounds double** %1, i64 %indvars.iv6, !llfi_index !1438
  %99 = load double** %98, align 8, !tbaa !22, !llfi_index !1439
  br label %100, !llfi_index !1440

; <label>:100                                     ; preds = %100, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %100 ], !llfi_index !1441
  %101 = tail call double @rn_v() #2, !llfi_index !1442
  %102 = getelementptr inbounds double* %99, i64 %indvars.iv, !llfi_index !1443
  store double %101, double* %102, align 8, !tbaa !48, !llfi_index !1444
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1445
  %103 = load i32* %96, align 4, !tbaa !12, !llfi_index !1446
  %104 = trunc i64 %indvars.iv.next to i32, !llfi_index !1447
  %105 = icmp slt i32 %104, %103, !llfi_index !1448
  br i1 %105, label %100, label %._crit_edge, !llfi_index !1449

._crit_edge:                                      ; preds = %100, %.preheader
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !llfi_index !1450
  %exitcond = icmp eq i64 %indvars.iv.next7, 12, !llfi_index !1451
  br i1 %exitcond, label %106, label %..preheader_crit_edge, !llfi_index !1452

..preheader_crit_edge:                            ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds i32* %num_nucs, i64 %indvars.iv.next7, !llfi_index !1453
  %.pre = load i32* %.phi.trans.insert, align 4, !tbaa !12, !llfi_index !1454
  br label %.preheader, !llfi_index !1455

; <label>:106                                     ; preds = %._crit_edge
  ret double** %1, !llfi_index !1456
}

; Function Attrs: nounwind uwtable
define i32 @pick_mat(i64* nocapture readnone %seed) #0 {
  %dist = alloca [12 x double], align 16, !llfi_index !1457
  %1 = bitcast [12 x double]* %dist to i8*, !llfi_index !1458
  call void @llvm.lifetime.start(i64 96, i8* %1) #2, !llfi_index !1459
  %2 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 0, !llfi_index !1460
  store double 1.400000e-01, double* %2, align 16, !tbaa !48, !llfi_index !1461
  %3 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 1, !llfi_index !1462
  store double 5.200000e-02, double* %3, align 8, !tbaa !48, !llfi_index !1463
  %4 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 2, !llfi_index !1464
  store double 2.750000e-01, double* %4, align 16, !tbaa !48, !llfi_index !1465
  %5 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 3, !llfi_index !1466
  store double 1.340000e-01, double* %5, align 8, !tbaa !48, !llfi_index !1467
  %6 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 4, !llfi_index !1468
  store double 1.540000e-01, double* %6, align 16, !tbaa !48, !llfi_index !1469
  %7 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 5, !llfi_index !1470
  store double 6.400000e-02, double* %7, align 8, !tbaa !48, !llfi_index !1471
  %8 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 6, !llfi_index !1472
  store double 6.600000e-02, double* %8, align 16, !tbaa !48, !llfi_index !1473
  %9 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 7, !llfi_index !1474
  store double 5.500000e-02, double* %9, align 8, !tbaa !48, !llfi_index !1475
  %10 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 8, !llfi_index !1476
  store double 8.000000e-03, double* %10, align 16, !tbaa !48, !llfi_index !1477
  %11 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 9, !llfi_index !1478
  store double 1.500000e-02, double* %11, align 8, !tbaa !48, !llfi_index !1479
  %12 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 10, !llfi_index !1480
  store double 2.500000e-02, double* %12, align 16, !tbaa !48, !llfi_index !1481
  %13 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 11, !llfi_index !1482
  store double 1.300000e-02, double* %13, align 8, !tbaa !48, !llfi_index !1483
  %14 = tail call double @rn_v() #2, !llfi_index !1484
  br label %.preheader, !llfi_index !1485

; <label>:15                                      ; preds = %._crit_edge
  %16 = icmp slt i32 %24, 12, !llfi_index !1486
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1487
  br i1 %16, label %.preheader, label %25, !llfi_index !1488

.preheader:                                       ; preds = %15, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %15 ], !llfi_index !1489
  %i.03 = phi i32 [ 0, %0 ], [ %24, %15 ], !llfi_index !1490
  %17 = icmp sgt i32 %i.03, 0, !llfi_index !1491
  br i1 %17, label %.lr.ph, label %._crit_edge, !llfi_index !1492

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %.lr.ph ], [ %indvars.iv, %.preheader ], !llfi_index !1493
  %running.01 = phi double [ %20, %.lr.ph ], [ 0.000000e+00, %.preheader ], !llfi_index !1494
  %18 = getelementptr inbounds [12 x double]* %dist, i64 0, i64 %indvars.iv4, !llfi_index !1495
  %19 = load double* %18, align 8, !tbaa !48, !llfi_index !1496
  %20 = fadd double %running.01, %19, !llfi_index !1497
  %indvars.iv.next5 = add nsw i64 %indvars.iv4, -1, !llfi_index !1498
  %21 = trunc i64 %indvars.iv.next5 to i32, !llfi_index !1499
  %22 = icmp sgt i32 %21, 0, !llfi_index !1500
  br i1 %22, label %.lr.ph, label %._crit_edge, !llfi_index !1501

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %running.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %20, %.lr.ph ], !llfi_index !1502
  %23 = fcmp olt double %14, %running.0.lcssa, !llfi_index !1503
  %24 = add nsw i32 %i.03, 1, !llfi_index !1504
  br i1 %23, label %25, label %15, !llfi_index !1505

; <label>:25                                      ; preds = %._crit_edge, %15
  %.0 = phi i32 [ %i.03, %._crit_edge ], [ 0, %15 ], !llfi_index !1506
  call void @llvm.lifetime.end(i64 96, i8* %1) #2, !llfi_index !1507
  ret i32 %.0, !llfi_index !1508
}

; Function Attrs: nounwind uwtable
define noalias %struct.NuclideGridPoint** @gpmatrix(i64 %m, i64 %n) #0 {
  %1 = mul i64 %n, %m, !llfi_index !1509
  %2 = mul i64 %1, 48, !llfi_index !1510
  %3 = tail call noalias i8* @malloc(i64 %2) #2, !llfi_index !1511
  %4 = bitcast i8* %3 to %struct.NuclideGridPoint*, !llfi_index !1512
  %5 = shl i64 %m, 3, !llfi_index !1513
  %6 = tail call noalias i8* @malloc(i64 %5) #2, !llfi_index !1514
  %7 = bitcast i8* %6 to %struct.NuclideGridPoint**, !llfi_index !1515
  %8 = icmp eq i64 %1, 0, !llfi_index !1516
  br i1 %8, label %._crit_edge, label %.lr.ph, !llfi_index !1517

.lr.ph:                                           ; preds = %16, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %16 ], [ 0, %0 ], !llfi_index !1518
  %j.01 = phi i32 [ %j.1, %16 ], [ 0, %0 ], !llfi_index !1519
  %9 = urem i64 %indvars.iv, %n, !llfi_index !1520
  %10 = icmp eq i64 %9, 0, !llfi_index !1521
  br i1 %10, label %11, label %16, !llfi_index !1522

; <label>:11                                      ; preds = %.lr.ph
  %12 = getelementptr inbounds %struct.NuclideGridPoint* %4, i64 %indvars.iv, !llfi_index !1523
  %13 = add nsw i32 %j.01, 1, !llfi_index !1524
  %14 = sext i32 %j.01 to i64, !llfi_index !1525
  %15 = getelementptr inbounds %struct.NuclideGridPoint** %7, i64 %14, !llfi_index !1526
  store %struct.NuclideGridPoint* %12, %struct.NuclideGridPoint** %15, align 8, !tbaa !22, !llfi_index !1527
  br label %16, !llfi_index !1528

; <label>:16                                      ; preds = %11, %.lr.ph
  %j.1 = phi i32 [ %13, %11 ], [ %j.01, %.lr.ph ], !llfi_index !1529
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1530
  %exitcond = icmp eq i64 %indvars.iv.next, %1, !llfi_index !1531
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !1532

._crit_edge:                                      ; preds = %16, %0
  ret %struct.NuclideGridPoint** %7, !llfi_index !1533
}

; Function Attrs: nounwind uwtable
define void @gpmatrix_free(%struct.NuclideGridPoint** nocapture %M) #0 {
  %1 = load %struct.NuclideGridPoint** %M, align 8, !tbaa !22, !llfi_index !1534
  %2 = bitcast %struct.NuclideGridPoint* %1 to i8*, !llfi_index !1535
  tail call void @free(i8* %2) #2, !llfi_index !1536
  %3 = bitcast %struct.NuclideGridPoint** %M to i8*, !llfi_index !1537
  tail call void @free(i8* %3) #2, !llfi_index !1538
  ret void, !llfi_index !1539
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind readonly uwtable
define i32 @NGP_compare(i8* nocapture readonly %a, i8* nocapture readonly %b) #1 {
  %1 = bitcast i8* %a to double*, !llfi_index !1540
  %2 = load double* %1, align 8, !tbaa !32, !llfi_index !1541
  %3 = bitcast i8* %b to double*, !llfi_index !1542
  %4 = load double* %3, align 8, !tbaa !32, !llfi_index !1543
  %5 = fcmp ogt double %2, %4, !llfi_index !1544
  br i1 %5, label %8, label %6, !llfi_index !1545

; <label>:6                                       ; preds = %0
  %7 = fcmp olt double %2, %4, !llfi_index !1546
  %. = sext i1 %7 to i32, !llfi_index !1547
  br label %8, !llfi_index !1548

; <label>:8                                       ; preds = %6, %0
  %.0 = phi i32 [ 1, %0 ], [ %., %6 ], !llfi_index !1549
  ret i32 %.0, !llfi_index !1550
}

; Function Attrs: nounwind readonly uwtable
define i32 @binary_search(%struct.NuclideGridPoint* nocapture readonly %A, double %quarry, i32 %n) #1 {
  %1 = add nsw i32 %n, -1, !llfi_index !1551
  %2 = getelementptr inbounds %struct.NuclideGridPoint* %A, i64 0, i32 0, !llfi_index !1552
  %3 = load double* %2, align 8, !tbaa !32, !llfi_index !1553
  %4 = fcmp ogt double %3, %quarry, !llfi_index !1554
  br i1 %4, label %.loopexit, label %5, !llfi_index !1555

; <label>:5                                       ; preds = %0
  %6 = sext i32 %1 to i64, !llfi_index !1556
  %7 = getelementptr inbounds %struct.NuclideGridPoint* %A, i64 %6, i32 0, !llfi_index !1557
  %8 = load double* %7, align 8, !tbaa !32, !llfi_index !1558
  %9 = fcmp olt double %8, %quarry, !llfi_index !1559
  br i1 %9, label %11, label %.preheader, !llfi_index !1560

.preheader:                                       ; preds = %5
  %10 = icmp slt i32 %n, 1, !llfi_index !1561
  br i1 %10, label %.loopexit, label %.lr.ph, !llfi_index !1562

; <label>:11                                      ; preds = %5
  %12 = add nsw i32 %n, -2, !llfi_index !1563
  br label %.loopexit, !llfi_index !1564

; <label>:13                                      ; preds = %29
  %14 = icmp sgt i32 %21, %min.0.ph5, !llfi_index !1565
  br i1 %14, label %15, label %.loopexit, !llfi_index !1566

; <label>:15                                      ; preds = %.lr.ph, %13
  %max.02 = phi i32 [ %max.0.ph6, %.lr.ph ], [ %31, %13 ], !llfi_index !1567
  %16 = sub nsw i32 %max.02, %min.0.ph5, !llfi_index !1568
  %17 = sitofp i32 %16 to double, !llfi_index !1569
  %18 = fmul double %17, 5.000000e-01, !llfi_index !1570
  %19 = tail call double @floor(double %18) #12, !llfi_index !1571
  %20 = fadd double %28, %19, !llfi_index !1572
  %21 = fptosi double %20 to i32, !llfi_index !1573
  %22 = sext i32 %21 to i64, !llfi_index !1574
  %23 = getelementptr inbounds %struct.NuclideGridPoint* %A, i64 %22, i32 0, !llfi_index !1575
  %24 = load double* %23, align 8, !tbaa !32, !llfi_index !1576
  %25 = fcmp olt double %24, %quarry, !llfi_index !1577
  br i1 %25, label %.outer, label %29, !llfi_index !1578

.outer:                                           ; preds = %15
  %26 = add nsw i32 %21, 1, !llfi_index !1579
  %27 = icmp slt i32 %max.02, %26, !llfi_index !1580
  br i1 %27, label %.loopexit, label %.lr.ph, !llfi_index !1581

.lr.ph:                                           ; preds = %.outer, %.preheader
  %max.0.ph6 = phi i32 [ %max.02, %.outer ], [ %1, %.preheader ], !llfi_index !1582
  %min.0.ph5 = phi i32 [ %26, %.outer ], [ 0, %.preheader ], !llfi_index !1583
  %28 = sitofp i32 %min.0.ph5 to double, !llfi_index !1584
  br label %15, !llfi_index !1585

; <label>:29                                      ; preds = %15
  %30 = fcmp ogt double %24, %quarry, !llfi_index !1586
  %31 = add nsw i32 %21, -1, !llfi_index !1587
  br i1 %30, label %13, label %.loopexit, !llfi_index !1588

.loopexit:                                        ; preds = %29, %.outer, %13, %11, %.preheader, %0
  %.0 = phi i32 [ %12, %11 ], [ 0, %0 ], [ %1, %.preheader ], [ %21, %29 ], [ %31, %13 ], [ %max.02, %.outer ], !llfi_index !1589
  ret i32 %.0, !llfi_index !1590
}

; Function Attrs: nounwind readnone
declare double @floor(double) #8

; Function Attrs: nounwind uwtable
define double @rn(i64* nocapture %seed) #0 {
  %1 = load i64* %seed, align 8, !tbaa !920, !llfi_index !1591
  %2 = mul i64 %1, 16807, !llfi_index !1592
  %3 = urem i64 %2, 2147483647, !llfi_index !1593
  store i64 %3, i64* %seed, align 8, !tbaa !920, !llfi_index !1594
  %4 = uitofp i64 %3 to double, !llfi_index !1595
  %5 = fdiv double %4, 0x41DFFFFFFFC00000, !llfi_index !1596
  ret double %5, !llfi_index !1597
}

; Function Attrs: nounwind uwtable
define double @rn_v() #0 {
  %1 = load i64* @rn_v.seed, align 8, !tbaa !920, !llfi_index !1598
  %2 = mul i64 %1, 16807, !llfi_index !1599
  %3 = urem i64 %2, 2147483647, !llfi_index !1600
  store i64 %3, i64* @rn_v.seed, align 8, !tbaa !920, !llfi_index !1601
  %4 = uitofp i64 %3 to double, !llfi_index !1602
  %5 = fdiv double %4, 0x41DFFFFFFFC00000, !llfi_index !1603
  ret double %5, !llfi_index !1604
}

; Function Attrs: nounwind readonly uwtable
define i32 @hash(i8* nocapture readonly %str, i32 %nbins) #1 {
  %1 = load i8* %str, align 1, !tbaa !659, !llfi_index !1605
  %2 = icmp eq i8 %1, 0, !llfi_index !1606
  br i1 %2, label %._crit_edge, label %.lr.ph, !llfi_index !1607

.lr.ph:                                           ; preds = %.lr.ph, %0
  %3 = phi i8 [ %8, %.lr.ph ], [ %1, %0 ], !llfi_index !1608
  %.02 = phi i8* [ %5, %.lr.ph ], [ %str, %0 ], !llfi_index !1609
  %hash.01 = phi i32 [ %7, %.lr.ph ], [ 5381, %0 ], !llfi_index !1610
  %4 = zext i8 %3 to i32, !llfi_index !1611
  %5 = getelementptr inbounds i8* %.02, i64 1, !llfi_index !1612
  %6 = mul i32 %hash.01, 33, !llfi_index !1613
  %7 = add i32 %4, %6, !llfi_index !1614
  %8 = load i8* %5, align 1, !tbaa !659, !llfi_index !1615
  %9 = icmp eq i8 %8, 0, !llfi_index !1616
  br i1 %9, label %._crit_edge, label %.lr.ph, !llfi_index !1617

._crit_edge:                                      ; preds = %.lr.ph, %0
  %hash.0.lcssa = phi i32 [ 5381, %0 ], [ %7, %.lr.ph ], !llfi_index !1618
  %10 = urem i32 %hash.0.lcssa, %nbins, !llfi_index !1619
  ret i32 %10, !llfi_index !1620
}

; Function Attrs: nounwind readonly uwtable
define i64 @estimate_mem_usage(%struct.Inputs* byval nocapture readonly align 8 %in) #1 {
  %1 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 2, !llfi_index !1621
  %2 = load i64* %1, align 8, !tbaa !613, !llfi_index !1622
  %3 = getelementptr inbounds %struct.Inputs* %in, i64 0, i32 1, !llfi_index !1623
  %4 = load i64* %3, align 8, !tbaa !608, !llfi_index !1624
  %5 = shl i64 %4, 2, !llfi_index !1625
  %tmp2 = add i64 %5, 64, !llfi_index !1626
  %tmp3 = mul i64 %tmp2, %2, !llfi_index !1627
  %tmp1 = mul i64 %tmp3, %4, !llfi_index !1628
  %6 = lshr i64 %tmp1, 20, !llfi_index !1629
  ret i64 %6, !llfi_index !1630
}

; Function Attrs: nounwind uwtable
define void @binary_dump(i64 %n_isotopes, i64 %n_gridpoints, %struct.NuclideGridPoint** nocapture readonly %nuclide_grids, %struct.GridPoint* nocapture %energy_grid) #0 {
  %1 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str116, i64 0, i64 0)) #2, !llfi_index !1631
  %2 = icmp sgt i64 %n_isotopes, 0, !llfi_index !1632
  br i1 %2, label %.lr.ph5, label %.preheader, !llfi_index !1633

.preheader:                                       ; preds = %.lr.ph5, %0
  %3 = mul i64 %n_gridpoints, %n_isotopes, !llfi_index !1634
  %4 = icmp sgt i64 %3, 0, !llfi_index !1635
  br i1 %4, label %.lr.ph, label %._crit_edge, !llfi_index !1636

.lr.ph5:                                          ; preds = %.lr.ph5, %0
  %i.03 = phi i64 [ %9, %.lr.ph5 ], [ 0, %0 ], !llfi_index !1637
  %5 = getelementptr inbounds %struct.NuclideGridPoint** %nuclide_grids, i64 %i.03, !llfi_index !1638
  %6 = load %struct.NuclideGridPoint** %5, align 8, !tbaa !22, !llfi_index !1639
  %7 = bitcast %struct.NuclideGridPoint* %6 to i8*, !llfi_index !1640
  %8 = tail call i64 @fwrite(i8* %7, i64 48, i64 %n_gridpoints, %struct._IO_FILE* %1) #2, !llfi_index !1641
  %9 = add nsw i64 %i.03, 1, !llfi_index !1642
  %exitcond6 = icmp eq i64 %9, %n_isotopes, !llfi_index !1643
  br i1 %exitcond6, label %.preheader, label %.lr.ph5, !llfi_index !1644

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %i1.02 = phi i64 [ %17, %.lr.ph ], [ 0, %.preheader ], !llfi_index !1645
  %10 = getelementptr inbounds %struct.GridPoint* %energy_grid, i64 %i1.02, !llfi_index !1646
  %11 = bitcast %struct.GridPoint* %10 to i8*, !llfi_index !1647
  %12 = tail call i64 @fwrite(i8* %11, i64 8, i64 1, %struct._IO_FILE* %1) #2, !llfi_index !1648
  %13 = getelementptr inbounds %struct.GridPoint* %energy_grid, i64 %i1.02, i32 1, !llfi_index !1649
  %14 = load i32** %13, align 8, !tbaa !4, !llfi_index !1650
  %15 = bitcast i32* %14 to i8*, !llfi_index !1651
  %16 = tail call i64 @fwrite(i8* %15, i64 4, i64 %n_isotopes, %struct._IO_FILE* %1) #2, !llfi_index !1652
  %17 = add nsw i64 %i1.02, 1, !llfi_index !1653
  %exitcond = icmp eq i64 %17, %3, !llfi_index !1654
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !1655

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %18 = tail call i32 @fclose(%struct._IO_FILE* %1) #2, !llfi_index !1656
  ret void, !llfi_index !1657
}

; Function Attrs: nounwind uwtable
define void @binary_read(i64 %n_isotopes, i64 %n_gridpoints, %struct.NuclideGridPoint** nocapture readonly %nuclide_grids, %struct.GridPoint* nocapture %energy_grid) #0 {
  %1 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str217, i64 0, i64 0)) #2, !llfi_index !1658
  %2 = icmp sgt i64 %n_isotopes, 0, !llfi_index !1659
  br i1 %2, label %.lr.ph5, label %.preheader, !llfi_index !1660

.preheader:                                       ; preds = %.lr.ph5, %0
  %3 = mul i64 %n_gridpoints, %n_isotopes, !llfi_index !1661
  %4 = icmp sgt i64 %3, 0, !llfi_index !1662
  br i1 %4, label %.lr.ph, label %._crit_edge, !llfi_index !1663

.lr.ph5:                                          ; preds = %.lr.ph5, %0
  %i.03 = phi i64 [ %9, %.lr.ph5 ], [ 0, %0 ], !llfi_index !1664
  %5 = getelementptr inbounds %struct.NuclideGridPoint** %nuclide_grids, i64 %i.03, !llfi_index !1665
  %6 = load %struct.NuclideGridPoint** %5, align 8, !tbaa !22, !llfi_index !1666
  %7 = bitcast %struct.NuclideGridPoint* %6 to i8*, !llfi_index !1667
  %8 = tail call i64 @fread(i8* %7, i64 48, i64 %n_gridpoints, %struct._IO_FILE* %1) #2, !llfi_index !1668
  %9 = add nsw i64 %i.03, 1, !llfi_index !1669
  %exitcond6 = icmp eq i64 %9, %n_isotopes, !llfi_index !1670
  br i1 %exitcond6, label %.preheader, label %.lr.ph5, !llfi_index !1671

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %i1.02 = phi i64 [ %17, %.lr.ph ], [ 0, %.preheader ], !llfi_index !1672
  %10 = getelementptr inbounds %struct.GridPoint* %energy_grid, i64 %i1.02, !llfi_index !1673
  %11 = bitcast %struct.GridPoint* %10 to i8*, !llfi_index !1674
  %12 = tail call i64 @fread(i8* %11, i64 8, i64 1, %struct._IO_FILE* %1) #2, !llfi_index !1675
  %13 = getelementptr inbounds %struct.GridPoint* %energy_grid, i64 %i1.02, i32 1, !llfi_index !1676
  %14 = load i32** %13, align 8, !tbaa !4, !llfi_index !1677
  %15 = bitcast i32* %14 to i8*, !llfi_index !1678
  %16 = tail call i64 @fread(i8* %15, i64 4, i64 %n_isotopes, %struct._IO_FILE* %1) #2, !llfi_index !1679
  %17 = add nsw i64 %i1.02, 1, !llfi_index !1680
  %exitcond = icmp eq i64 %17, %3, !llfi_index !1681
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !1682

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %18 = tail call i32 @fclose(%struct._IO_FILE* %1) #2, !llfi_index !1683
  ret void, !llfi_index !1684
}

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind readnone }

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
!99 = metadata !{metadata !5, metadata !6, i64 0}
!100 = metadata !{i64 82}
!101 = metadata !{i64 83}
!102 = metadata !{i64 84}
!103 = metadata !{i64 85}
!104 = metadata !{i64 86}
!105 = metadata !{i64 87}
!106 = metadata !{i64 88}
!107 = metadata !{i64 89}
!108 = metadata !{i64 90}
!109 = metadata !{i64 91}
!110 = metadata !{i64 92}
!111 = metadata !{i64 93}
!112 = metadata !{i64 94}
!113 = metadata !{i64 95}
!114 = metadata !{i64 96}
!115 = metadata !{i64 97}
!116 = metadata !{i64 98}
!117 = metadata !{i64 99}
!118 = metadata !{i64 100}
!119 = metadata !{i64 101}
!120 = metadata !{i64 102}
!121 = metadata !{i64 103}
!122 = metadata !{i64 104}
!123 = metadata !{i64 105}
!124 = metadata !{i64 106}
!125 = metadata !{i64 107}
!126 = metadata !{i64 108}
!127 = metadata !{i64 109}
!128 = metadata !{i64 110}
!129 = metadata !{i64 111}
!130 = metadata !{i64 112}
!131 = metadata !{i64 113}
!132 = metadata !{i64 114}
!133 = metadata !{i64 115}
!134 = metadata !{i64 116}
!135 = metadata !{i64 117}
!136 = metadata !{i64 118}
!137 = metadata !{i64 119}
!138 = metadata !{i64 120}
!139 = metadata !{i64 121}
!140 = metadata !{i64 122}
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
!381 = metadata !{i64 363}
!382 = metadata !{i64 364}
!383 = metadata !{i64 365}
!384 = metadata !{i64 366}
!385 = metadata !{i64 367}
!386 = metadata !{i64 368}
!387 = metadata !{i64 369}
!388 = metadata !{i64 370}
!389 = metadata !{i64 371}
!390 = metadata !{i64 372}
!391 = metadata !{i64 373}
!392 = metadata !{i64 374}
!393 = metadata !{i64 375}
!394 = metadata !{i64 376}
!395 = metadata !{i64 377}
!396 = metadata !{i64 378}
!397 = metadata !{i64 379}
!398 = metadata !{i64 380}
!399 = metadata !{i64 381}
!400 = metadata !{i64 382}
!401 = metadata !{i64 383}
!402 = metadata !{i64 384}
!403 = metadata !{i64 385}
!404 = metadata !{i64 386}
!405 = metadata !{i64 387}
!406 = metadata !{i64 388}
!407 = metadata !{i64 389}
!408 = metadata !{i64 390}
!409 = metadata !{i64 391}
!410 = metadata !{i64 392}
!411 = metadata !{i64 393}
!412 = metadata !{i64 394}
!413 = metadata !{i64 395}
!414 = metadata !{i64 396}
!415 = metadata !{i64 397}
!416 = metadata !{i64 398}
!417 = metadata !{i64 399}
!418 = metadata !{i64 400}
!419 = metadata !{i64 401}
!420 = metadata !{i64 402}
!421 = metadata !{i64 403}
!422 = metadata !{i64 404}
!423 = metadata !{i64 405}
!424 = metadata !{i64 406}
!425 = metadata !{i64 407}
!426 = metadata !{i64 408}
!427 = metadata !{i64 409}
!428 = metadata !{i64 410}
!429 = metadata !{i64 411}
!430 = metadata !{i64 412}
!431 = metadata !{i64 413}
!432 = metadata !{i64 414}
!433 = metadata !{i64 415}
!434 = metadata !{i64 416}
!435 = metadata !{i64 417}
!436 = metadata !{i64 418}
!437 = metadata !{i64 419}
!438 = metadata !{i64 420}
!439 = metadata !{i64 421}
!440 = metadata !{i64 422}
!441 = metadata !{i64 423}
!442 = metadata !{i64 424}
!443 = metadata !{i64 425}
!444 = metadata !{i64 426}
!445 = metadata !{i64 427}
!446 = metadata !{i64 428}
!447 = metadata !{i64 429}
!448 = metadata !{i64 430}
!449 = metadata !{i64 431}
!450 = metadata !{i64 432}
!451 = metadata !{i64 433}
!452 = metadata !{i64 434}
!453 = metadata !{i64 435}
!454 = metadata !{i64 436}
!455 = metadata !{i64 437}
!456 = metadata !{i64 438}
!457 = metadata !{i64 439}
!458 = metadata !{i64 440}
!459 = metadata !{i64 441}
!460 = metadata !{i64 442}
!461 = metadata !{i64 443}
!462 = metadata !{i64 444}
!463 = metadata !{i64 445}
!464 = metadata !{i64 446}
!465 = metadata !{i64 447}
!466 = metadata !{i64 448}
!467 = metadata !{i64 449}
!468 = metadata !{i64 450}
!469 = metadata !{i64 451}
!470 = metadata !{i64 452}
!471 = metadata !{i64 453}
!472 = metadata !{i64 454}
!473 = metadata !{i64 455}
!474 = metadata !{i64 456}
!475 = metadata !{i64 457}
!476 = metadata !{i64 458}
!477 = metadata !{i64 459}
!478 = metadata !{i64 460}
!479 = metadata !{i64 461}
!480 = metadata !{i64 462}
!481 = metadata !{i64 463}
!482 = metadata !{i64 464}
!483 = metadata !{i64 465}
!484 = metadata !{i64 466}
!485 = metadata !{i64 467}
!486 = metadata !{i64 468}
!487 = metadata !{i64 469}
!488 = metadata !{i64 470}
!489 = metadata !{i64 471}
!490 = metadata !{i64 472}
!491 = metadata !{i64 473}
!492 = metadata !{i64 474}
!493 = metadata !{i64 475}
!494 = metadata !{i64 476}
!495 = metadata !{i64 477}
!496 = metadata !{i64 478}
!497 = metadata !{i64 479}
!498 = metadata !{i64 480}
!499 = metadata !{i64 481}
!500 = metadata !{i64 482}
!501 = metadata !{i64 483}
!502 = metadata !{i64 484}
!503 = metadata !{i64 485}
!504 = metadata !{i64 486}
!505 = metadata !{i64 487}
!506 = metadata !{i64 488}
!507 = metadata !{i64 489}
!508 = metadata !{i64 490}
!509 = metadata !{i64 491}
!510 = metadata !{i64 492}
!511 = metadata !{i64 493}
!512 = metadata !{i64 494}
!513 = metadata !{i64 495}
!514 = metadata !{i64 496}
!515 = metadata !{i64 497}
!516 = metadata !{i64 498}
!517 = metadata !{i64 499}
!518 = metadata !{i64 500}
!519 = metadata !{i64 501}
!520 = metadata !{i64 502}
!521 = metadata !{i64 503}
!522 = metadata !{metadata !523, metadata !13, i64 24}
!523 = metadata !{metadata !"", metadata !13, i64 0, metadata !524, i64 8, metadata !524, i64 16, metadata !13, i64 24, metadata !9, i64 32}
!524 = metadata !{metadata !"long", metadata !7, i64 0}
!525 = metadata !{i64 504}
!526 = metadata !{i64 505}
!527 = metadata !{i64 506}
!528 = metadata !{i64 507}
!529 = metadata !{i64 508}
!530 = metadata !{i64 509}
!531 = metadata !{i64 510}
!532 = metadata !{i64 511}
!533 = metadata !{i64 512}
!534 = metadata !{i64 513}
!535 = metadata !{i64 514}
!536 = metadata !{i64 515}
!537 = metadata !{i64 516}
!538 = metadata !{i64 517}
!539 = metadata !{i64 518}
!540 = metadata !{i64 519}
!541 = metadata !{i64 520}
!542 = metadata !{i64 521}
!543 = metadata !{i64 522}
!544 = metadata !{metadata !523, metadata !13, i64 0}
!545 = metadata !{i64 523}
!546 = metadata !{i64 524}
!547 = metadata !{i64 525}
!548 = metadata !{i64 526}
!549 = metadata !{i64 527}
!550 = metadata !{i64 528}
!551 = metadata !{i64 529}
!552 = metadata !{i64 530}
!553 = metadata !{i64 531}
!554 = metadata !{i64 532}
!555 = metadata !{i64 533}
!556 = metadata !{i64 534}
!557 = metadata !{i64 535}
!558 = metadata !{i64 536}
!559 = metadata !{i64 537}
!560 = metadata !{i64 538}
!561 = metadata !{i64 539}
!562 = metadata !{i64 540}
!563 = metadata !{i64 541}
!564 = metadata !{i64 542}
!565 = metadata !{i64 543}
!566 = metadata !{i64 544}
!567 = metadata !{i64 545}
!568 = metadata !{i64 546}
!569 = metadata !{i64 547}
!570 = metadata !{i64 548}
!571 = metadata !{i64 549}
!572 = metadata !{i64 550}
!573 = metadata !{i64 551}
!574 = metadata !{i64 552}
!575 = metadata !{i64 553}
!576 = metadata !{i64 554}
!577 = metadata !{i64 555}
!578 = metadata !{i64 556}
!579 = metadata !{i64 557}
!580 = metadata !{i64 558}
!581 = metadata !{i64 559}
!582 = metadata !{i64 560}
!583 = metadata !{i64 561}
!584 = metadata !{i64 562}
!585 = metadata !{i64 563}
!586 = metadata !{i64 564}
!587 = metadata !{i64 565}
!588 = metadata !{i64 566}
!589 = metadata !{i64 567}
!590 = metadata !{i64 568}
!591 = metadata !{i64 569}
!592 = metadata !{i64 570}
!593 = metadata !{i64 571}
!594 = metadata !{i64 572}
!595 = metadata !{i64 573}
!596 = metadata !{i64 574}
!597 = metadata !{i64 575}
!598 = metadata !{i64 576}
!599 = metadata !{i64 577}
!600 = metadata !{i64 578}
!601 = metadata !{i64 579}
!602 = metadata !{i64 580}
!603 = metadata !{i64 581}
!604 = metadata !{metadata !523, metadata !9, i64 32}
!605 = metadata !{i64 582}
!606 = metadata !{i64 583}
!607 = metadata !{i64 584}
!608 = metadata !{metadata !523, metadata !524, i64 8}
!609 = metadata !{i64 585}
!610 = metadata !{i64 586}
!611 = metadata !{i64 587}
!612 = metadata !{i64 588}
!613 = metadata !{metadata !523, metadata !524, i64 16}
!614 = metadata !{i64 589}
!615 = metadata !{i64 590}
!616 = metadata !{i64 591}
!617 = metadata !{i64 592}
!618 = metadata !{i64 593}
!619 = metadata !{i64 594}
!620 = metadata !{i64 595}
!621 = metadata !{i64 596}
!622 = metadata !{i64 597}
!623 = metadata !{i64 598}
!624 = metadata !{i64 599}
!625 = metadata !{i64 600}
!626 = metadata !{i64 601}
!627 = metadata !{i64 602}
!628 = metadata !{i64 603}
!629 = metadata !{i64 604}
!630 = metadata !{i64 605}
!631 = metadata !{i64 606}
!632 = metadata !{i64 607}
!633 = metadata !{i64 608}
!634 = metadata !{i64 609}
!635 = metadata !{i64 610}
!636 = metadata !{i64 611}
!637 = metadata !{i64 612}
!638 = metadata !{i64 613}
!639 = metadata !{i64 614}
!640 = metadata !{i64 615}
!641 = metadata !{i64 616}
!642 = metadata !{i64 617}
!643 = metadata !{i64 618}
!644 = metadata !{i64 619}
!645 = metadata !{i64 620}
!646 = metadata !{i64 621}
!647 = metadata !{i64 622}
!648 = metadata !{i64 623}
!649 = metadata !{i64 624}
!650 = metadata !{i64 625}
!651 = metadata !{i64 626}
!652 = metadata !{i64 627}
!653 = metadata !{i64 628}
!654 = metadata !{i64 629}
!655 = metadata !{i64 630}
!656 = metadata !{i64 631}
!657 = metadata !{i64 632}
!658 = metadata !{i64 633}
!659 = metadata !{metadata !7, metadata !7, i64 0}
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
!700 = metadata !{i64 674}
!701 = metadata !{i64 675}
!702 = metadata !{i64 676}
!703 = metadata !{i64 677}
!704 = metadata !{i64 678}
!705 = metadata !{i64 679}
!706 = metadata !{i64 680}
!707 = metadata !{i64 681}
!708 = metadata !{i64 682}
!709 = metadata !{i64 683}
!710 = metadata !{i64 684}
!711 = metadata !{i64 685}
!712 = metadata !{i64 686}
!713 = metadata !{i64 687}
!714 = metadata !{i64 688}
!715 = metadata !{i64 689}
!716 = metadata !{i64 690}
!717 = metadata !{i64 691}
!718 = metadata !{i64 692}
!719 = metadata !{i64 693}
!720 = metadata !{i64 694}
!721 = metadata !{i64 695}
!722 = metadata !{i64 696}
!723 = metadata !{i64 697}
!724 = metadata !{i64 698}
!725 = metadata !{i64 699}
!726 = metadata !{i64 700}
!727 = metadata !{i64 701}
!728 = metadata !{i64 702}
!729 = metadata !{i64 703}
!730 = metadata !{i64 704}
!731 = metadata !{i64 705}
!732 = metadata !{i64 706}
!733 = metadata !{i64 707}
!734 = metadata !{i64 708}
!735 = metadata !{i64 709}
!736 = metadata !{i64 710}
!737 = metadata !{i64 711}
!738 = metadata !{i64 712}
!739 = metadata !{i64 713}
!740 = metadata !{i64 714}
!741 = metadata !{i64 715}
!742 = metadata !{i64 716}
!743 = metadata !{i64 717}
!744 = metadata !{i64 718}
!745 = metadata !{i64 719}
!746 = metadata !{i64 720}
!747 = metadata !{i64 721}
!748 = metadata !{i64 722}
!749 = metadata !{i64 723}
!750 = metadata !{i64 724}
!751 = metadata !{i64 725}
!752 = metadata !{i64 726}
!753 = metadata !{i64 727}
!754 = metadata !{i64 728}
!755 = metadata !{i64 729}
!756 = metadata !{i64 730}
!757 = metadata !{i64 731}
!758 = metadata !{i64 732}
!759 = metadata !{i64 733}
!760 = metadata !{i64 734}
!761 = metadata !{i64 735}
!762 = metadata !{i64 736}
!763 = metadata !{i64 737}
!764 = metadata !{i64 738}
!765 = metadata !{i64 739}
!766 = metadata !{i64 740}
!767 = metadata !{i64 741}
!768 = metadata !{i64 742}
!769 = metadata !{i64 743}
!770 = metadata !{i64 744}
!771 = metadata !{i64 745}
!772 = metadata !{i64 746}
!773 = metadata !{i64 747}
!774 = metadata !{i64 748}
!775 = metadata !{i64 749}
!776 = metadata !{i64 750}
!777 = metadata !{i64 751}
!778 = metadata !{i64 752}
!779 = metadata !{i64 753}
!780 = metadata !{i64 754}
!781 = metadata !{i64 755}
!782 = metadata !{i64 756}
!783 = metadata !{i64 757}
!784 = metadata !{i64 758}
!785 = metadata !{i64 759}
!786 = metadata !{i64 760}
!787 = metadata !{i64 761}
!788 = metadata !{i64 762}
!789 = metadata !{i64 763}
!790 = metadata !{i64 764}
!791 = metadata !{i64 765}
!792 = metadata !{i64 766}
!793 = metadata !{i64 767}
!794 = metadata !{i64 768}
!795 = metadata !{i64 769}
!796 = metadata !{i64 770}
!797 = metadata !{i64 771}
!798 = metadata !{i64 772}
!799 = metadata !{i64 773}
!800 = metadata !{i64 774}
!801 = metadata !{i64 775}
!802 = metadata !{i64 776}
!803 = metadata !{i64 777}
!804 = metadata !{i64 778}
!805 = metadata !{i64 779}
!806 = metadata !{i64 780}
!807 = metadata !{i64 781}
!808 = metadata !{i64 782}
!809 = metadata !{i64 783}
!810 = metadata !{i64 784}
!811 = metadata !{i64 785}
!812 = metadata !{i64 786}
!813 = metadata !{i64 787}
!814 = metadata !{i64 788}
!815 = metadata !{i64 789}
!816 = metadata !{i64 790}
!817 = metadata !{i64 791}
!818 = metadata !{i64 792}
!819 = metadata !{i64 793}
!820 = metadata !{i64 794}
!821 = metadata !{i64 795}
!822 = metadata !{i64 796}
!823 = metadata !{i64 797}
!824 = metadata !{i64 798}
!825 = metadata !{i64 799}
!826 = metadata !{i64 800}
!827 = metadata !{i64 801}
!828 = metadata !{i64 802}
!829 = metadata !{i64 803}
!830 = metadata !{i64 804}
!831 = metadata !{i64 805}
!832 = metadata !{i64 806}
!833 = metadata !{i64 807}
!834 = metadata !{i64 808}
!835 = metadata !{i64 809}
!836 = metadata !{i64 810}
!837 = metadata !{i64 811}
!838 = metadata !{i64 812}
!839 = metadata !{i64 813}
!840 = metadata !{i64 814}
!841 = metadata !{i64 815}
!842 = metadata !{i64 816}
!843 = metadata !{i64 817}
!844 = metadata !{i64 818}
!845 = metadata !{i64 819}
!846 = metadata !{i64 820}
!847 = metadata !{i64 821}
!848 = metadata !{i64 822}
!849 = metadata !{i64 823}
!850 = metadata !{i64 824}
!851 = metadata !{i64 825}
!852 = metadata !{i64 826}
!853 = metadata !{i64 827}
!854 = metadata !{i64 828}
!855 = metadata !{metadata !856, metadata !524, i64 0}
!856 = metadata !{metadata !"timeval", metadata !524, i64 0, metadata !524, i64 8}
!857 = metadata !{i64 829}
!858 = metadata !{i64 830}
!859 = metadata !{i64 831}
!860 = metadata !{metadata !856, metadata !524, i64 8}
!861 = metadata !{i64 832}
!862 = metadata !{i64 833}
!863 = metadata !{i64 834}
!864 = metadata !{i64 835}
!865 = metadata !{i64 836}
!866 = metadata !{i64 837}
!867 = metadata !{i64 838}
!868 = metadata !{i64 839}
!869 = metadata !{i64 840}
!870 = metadata !{i64 841}
!871 = metadata !{i64 842}
!872 = metadata !{i64 843}
!873 = metadata !{i64 844}
!874 = metadata !{i64 845}
!875 = metadata !{i64 846}
!876 = metadata !{i64 847}
!877 = metadata !{i64 848}
!878 = metadata !{i64 849}
!879 = metadata !{i64 850}
!880 = metadata !{i64 851}
!881 = metadata !{i64 852}
!882 = metadata !{i64 853}
!883 = metadata !{i64 854}
!884 = metadata !{i64 855}
!885 = metadata !{i64 856}
!886 = metadata !{i64 857}
!887 = metadata !{i64 858}
!888 = metadata !{i64 859}
!889 = metadata !{i64 860}
!890 = metadata !{i64 861}
!891 = metadata !{i64 862}
!892 = metadata !{i64 863}
!893 = metadata !{i64 864}
!894 = metadata !{i64 865}
!895 = metadata !{i64 866}
!896 = metadata !{i64 867}
!897 = metadata !{i64 868}
!898 = metadata !{i64 869}
!899 = metadata !{i64 870}
!900 = metadata !{i64 871}
!901 = metadata !{i64 872}
!902 = metadata !{i64 873}
!903 = metadata !{i64 874}
!904 = metadata !{i64 875}
!905 = metadata !{i64 876}
!906 = metadata !{i64 877}
!907 = metadata !{i64 878}
!908 = metadata !{i64 879}
!909 = metadata !{i64 880}
!910 = metadata !{i64 881}
!911 = metadata !{i64 882}
!912 = metadata !{i64 883}
!913 = metadata !{i64 884}
!914 = metadata !{i64 885}
!915 = metadata !{i64 886}
!916 = metadata !{i64 887}
!917 = metadata !{i64 888}
!918 = metadata !{i64 889}
!919 = metadata !{i64 890}
!920 = metadata !{metadata !524, metadata !524, i64 0}
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
!1158 = metadata !{metadata !1158, metadata !1159, metadata !1160}
!1159 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!1160 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!1161 = metadata !{i64 1128}
!1162 = metadata !{i64 1129}
!1163 = metadata !{i64 1130}
!1164 = metadata !{i64 1131}
!1165 = metadata !{i64 1132}
!1166 = metadata !{i64 1133}
!1167 = metadata !{i64 1134}
!1168 = metadata !{i64 1135}
!1169 = metadata !{i64 1136}
!1170 = metadata !{metadata !1170, metadata !1159, metadata !1160}
!1171 = metadata !{i64 1137}
!1172 = metadata !{i64 1138}
!1173 = metadata !{i64 1139}
!1174 = metadata !{i64 1140}
!1175 = metadata !{i64 1141}
!1176 = metadata !{i64 1142}
!1177 = metadata !{i64 1143}
!1178 = metadata !{i64 1144}
!1179 = metadata !{i64 1145}
!1180 = metadata !{i64 1146}
!1181 = metadata !{i64 1147}
!1182 = metadata !{i64 1148}
!1183 = metadata !{i64 1149}
!1184 = metadata !{i64 1150}
!1185 = metadata !{i64 1151}
!1186 = metadata !{i64 1152}
!1187 = metadata !{i64 1153}
!1188 = metadata !{i64 1154}
!1189 = metadata !{i64 1155}
!1190 = metadata !{i64 1156}
!1191 = metadata !{i64 1157}
!1192 = metadata !{i64 1158}
!1193 = metadata !{i64 1159}
!1194 = metadata !{i64 1160}
!1195 = metadata !{i64 1161}
!1196 = metadata !{i64 1162}
!1197 = metadata !{i64 1163}
!1198 = metadata !{i64 1164}
!1199 = metadata !{i64 1165}
!1200 = metadata !{i64 1166}
!1201 = metadata !{i64 1167}
!1202 = metadata !{i64 1168}
!1203 = metadata !{i64 1169}
!1204 = metadata !{i64 1170}
!1205 = metadata !{i64 1171}
!1206 = metadata !{i64 1172}
!1207 = metadata !{i64 1173}
!1208 = metadata !{i64 1174}
!1209 = metadata !{i64 1175}
!1210 = metadata !{i64 1176}
!1211 = metadata !{i64 1177}
!1212 = metadata !{i64 1178}
!1213 = metadata !{i64 1179}
!1214 = metadata !{i64 1180}
!1215 = metadata !{i64 1181}
!1216 = metadata !{i64 1182}
!1217 = metadata !{i64 1183}
!1218 = metadata !{i64 1184}
!1219 = metadata !{i64 1185}
!1220 = metadata !{i64 1186}
!1221 = metadata !{i64 1187}
!1222 = metadata !{i64 1188}
!1223 = metadata !{i64 1189}
!1224 = metadata !{i64 1190}
!1225 = metadata !{i64 1191}
!1226 = metadata !{i64 1192}
!1227 = metadata !{i64 1193}
!1228 = metadata !{i64 1194}
!1229 = metadata !{i64 1195}
!1230 = metadata !{i64 1196}
!1231 = metadata !{i64 1197}
!1232 = metadata !{i64 1198}
!1233 = metadata !{i64 1199}
!1234 = metadata !{i64 1200}
!1235 = metadata !{i64 1201}
!1236 = metadata !{i64 1202}
!1237 = metadata !{i64 1203}
!1238 = metadata !{i64 1204}
!1239 = metadata !{i64 1205}
!1240 = metadata !{i64 1206}
!1241 = metadata !{i64 1207}
!1242 = metadata !{i64 1208}
!1243 = metadata !{i64 1209}
!1244 = metadata !{i64 1210}
!1245 = metadata !{i64 1211}
!1246 = metadata !{i64 1212}
!1247 = metadata !{i64 1213}
!1248 = metadata !{i64 1214}
!1249 = metadata !{i64 1215}
!1250 = metadata !{i64 1216}
!1251 = metadata !{i64 1217}
!1252 = metadata !{i64 1218}
!1253 = metadata !{i64 1219}
!1254 = metadata !{i64 1220}
!1255 = metadata !{i64 1221}
!1256 = metadata !{i64 1222}
!1257 = metadata !{i64 1223}
!1258 = metadata !{i64 1224}
!1259 = metadata !{i64 1225}
!1260 = metadata !{i64 1226}
!1261 = metadata !{i64 1227}
!1262 = metadata !{i64 1228}
!1263 = metadata !{i64 1229}
!1264 = metadata !{i64 1230}
!1265 = metadata !{i64 1231}
!1266 = metadata !{i64 1232}
!1267 = metadata !{i64 1233}
!1268 = metadata !{i64 1234}
!1269 = metadata !{i64 1235}
!1270 = metadata !{i64 1236}
!1271 = metadata !{i64 1237}
!1272 = metadata !{i64 1238}
!1273 = metadata !{i64 1239}
!1274 = metadata !{i64 1240}
!1275 = metadata !{i64 1241}
!1276 = metadata !{i64 1242}
!1277 = metadata !{i64 1243}
!1278 = metadata !{i64 1244}
!1279 = metadata !{i64 1245}
!1280 = metadata !{i64 1246}
!1281 = metadata !{i64 1247}
!1282 = metadata !{i64 1248}
!1283 = metadata !{i64 1249}
!1284 = metadata !{i64 1250}
!1285 = metadata !{i64 1251}
!1286 = metadata !{i64 1252}
!1287 = metadata !{i64 1253}
!1288 = metadata !{i64 1254}
!1289 = metadata !{i64 1255}
!1290 = metadata !{i64 1256}
!1291 = metadata !{i64 1257}
!1292 = metadata !{i64 1258}
!1293 = metadata !{i64 1259}
!1294 = metadata !{i64 1260}
!1295 = metadata !{i64 1261}
!1296 = metadata !{i64 1262}
!1297 = metadata !{i64 1263}
!1298 = metadata !{i64 1264}
!1299 = metadata !{i64 1265}
!1300 = metadata !{i64 1266}
!1301 = metadata !{i64 1267}
!1302 = metadata !{i64 1268}
!1303 = metadata !{i64 1269}
!1304 = metadata !{i64 1270}
!1305 = metadata !{i64 1271}
!1306 = metadata !{i64 1272}
!1307 = metadata !{i64 1273}
!1308 = metadata !{i64 1274}
!1309 = metadata !{i64 1275}
!1310 = metadata !{i64 1276}
!1311 = metadata !{i64 1277}
!1312 = metadata !{i64 1278}
!1313 = metadata !{i64 1279}
!1314 = metadata !{i64 1280}
!1315 = metadata !{i64 1281}
!1316 = metadata !{i64 1282}
!1317 = metadata !{i64 1283}
!1318 = metadata !{i64 1284}
!1319 = metadata !{i64 1285}
!1320 = metadata !{i64 1286}
!1321 = metadata !{i64 1287}
!1322 = metadata !{i64 1288}
!1323 = metadata !{i64 1289}
!1324 = metadata !{i64 1290}
!1325 = metadata !{i64 1291}
!1326 = metadata !{i64 1292}
!1327 = metadata !{i64 1293}
!1328 = metadata !{i64 1294}
!1329 = metadata !{i64 1295}
!1330 = metadata !{i64 1296}
!1331 = metadata !{i64 1297}
!1332 = metadata !{i64 1298}
!1333 = metadata !{i64 1299}
!1334 = metadata !{i64 1300}
!1335 = metadata !{i64 1301}
!1336 = metadata !{i64 1302}
!1337 = metadata !{i64 1303}
!1338 = metadata !{i64 1304}
!1339 = metadata !{i64 1305}
!1340 = metadata !{i64 1306}
!1341 = metadata !{i64 1307}
!1342 = metadata !{i64 1308}
!1343 = metadata !{i64 1309}
!1344 = metadata !{i64 1310}
!1345 = metadata !{i64 1311}
!1346 = metadata !{i64 1312}
!1347 = metadata !{i64 1313}
!1348 = metadata !{i64 1314}
!1349 = metadata !{i64 1315}
!1350 = metadata !{i64 1316}
!1351 = metadata !{i64 1317}
!1352 = metadata !{i64 1318}
!1353 = metadata !{i64 1319}
!1354 = metadata !{i64 1320}
!1355 = metadata !{i64 1321}
!1356 = metadata !{i64 1322}
!1357 = metadata !{i64 1323}
!1358 = metadata !{i64 1324}
!1359 = metadata !{i64 1325}
!1360 = metadata !{i64 1326}
!1361 = metadata !{i64 1327}
!1362 = metadata !{i64 1328}
!1363 = metadata !{i64 1329}
!1364 = metadata !{i64 1330}
!1365 = metadata !{i64 1331}
!1366 = metadata !{i64 1332}
!1367 = metadata !{i64 1333}
!1368 = metadata !{i64 1334}
!1369 = metadata !{i64 1335}
!1370 = metadata !{i64 1336}
!1371 = metadata !{i64 1337}
!1372 = metadata !{i64 1338}
!1373 = metadata !{i64 1339}
!1374 = metadata !{i64 1340}
!1375 = metadata !{i64 1341}
!1376 = metadata !{i64 1342}
!1377 = metadata !{i64 1343}
!1378 = metadata !{i64 1344}
!1379 = metadata !{i64 1345}
!1380 = metadata !{i64 1346}
!1381 = metadata !{i64 1347}
!1382 = metadata !{i64 1348}
!1383 = metadata !{i64 1349}
!1384 = metadata !{i64 1350}
!1385 = metadata !{i64 1351}
!1386 = metadata !{i64 1352}
!1387 = metadata !{i64 1353}
!1388 = metadata !{i64 1354}
!1389 = metadata !{i64 1355}
!1390 = metadata !{i64 1356}
!1391 = metadata !{i64 1357}
!1392 = metadata !{i64 1358}
!1393 = metadata !{i64 1359}
!1394 = metadata !{i64 1360}
!1395 = metadata !{i64 1361}
!1396 = metadata !{i64 1362}
!1397 = metadata !{i64 1363}
!1398 = metadata !{i64 1364}
!1399 = metadata !{i64 1365}
!1400 = metadata !{i64 1366}
!1401 = metadata !{i64 1367}
!1402 = metadata !{i64 1368}
!1403 = metadata !{i64 1369}
!1404 = metadata !{i64 1370}
!1405 = metadata !{i64 1371}
!1406 = metadata !{i64 1372}
!1407 = metadata !{i64 1373}
!1408 = metadata !{i64 1374}
!1409 = metadata !{i64 1375}
!1410 = metadata !{i64 1376}
!1411 = metadata !{i64 1377}
!1412 = metadata !{i64 1378}
!1413 = metadata !{i64 1379}
!1414 = metadata !{i64 1380}
!1415 = metadata !{i64 1381}
!1416 = metadata !{i64 1382}
!1417 = metadata !{i64 1383}
!1418 = metadata !{i64 1384}
!1419 = metadata !{i64 1385}
!1420 = metadata !{i64 1386}
!1421 = metadata !{i64 1387}
!1422 = metadata !{i64 1388}
!1423 = metadata !{i64 1389}
!1424 = metadata !{i64 1390}
!1425 = metadata !{i64 1391}
!1426 = metadata !{i64 1392}
!1427 = metadata !{i64 1393}
!1428 = metadata !{i64 1394}
!1429 = metadata !{i64 1395}
!1430 = metadata !{i64 1396}
!1431 = metadata !{i64 1397}
!1432 = metadata !{i64 1398}
!1433 = metadata !{i64 1399}
!1434 = metadata !{i64 1400}
!1435 = metadata !{i64 1401}
!1436 = metadata !{i64 1402}
!1437 = metadata !{i64 1403}
!1438 = metadata !{i64 1404}
!1439 = metadata !{i64 1405}
!1440 = metadata !{i64 1406}
!1441 = metadata !{i64 1407}
!1442 = metadata !{i64 1408}
!1443 = metadata !{i64 1409}
!1444 = metadata !{i64 1410}
!1445 = metadata !{i64 1411}
!1446 = metadata !{i64 1412}
!1447 = metadata !{i64 1413}
!1448 = metadata !{i64 1414}
!1449 = metadata !{i64 1415}
!1450 = metadata !{i64 1416}
!1451 = metadata !{i64 1417}
!1452 = metadata !{i64 1418}
!1453 = metadata !{i64 1419}
!1454 = metadata !{i64 1420}
!1455 = metadata !{i64 1421}
!1456 = metadata !{i64 1422}
!1457 = metadata !{i64 1423}
!1458 = metadata !{i64 1424}
!1459 = metadata !{i64 1425}
!1460 = metadata !{i64 1426}
!1461 = metadata !{i64 1427}
!1462 = metadata !{i64 1428}
!1463 = metadata !{i64 1429}
!1464 = metadata !{i64 1430}
!1465 = metadata !{i64 1431}
!1466 = metadata !{i64 1432}
!1467 = metadata !{i64 1433}
!1468 = metadata !{i64 1434}
!1469 = metadata !{i64 1435}
!1470 = metadata !{i64 1436}
!1471 = metadata !{i64 1437}
!1472 = metadata !{i64 1438}
!1473 = metadata !{i64 1439}
!1474 = metadata !{i64 1440}
!1475 = metadata !{i64 1441}
!1476 = metadata !{i64 1442}
!1477 = metadata !{i64 1443}
!1478 = metadata !{i64 1444}
!1479 = metadata !{i64 1445}
!1480 = metadata !{i64 1446}
!1481 = metadata !{i64 1447}
!1482 = metadata !{i64 1448}
!1483 = metadata !{i64 1449}
!1484 = metadata !{i64 1450}
!1485 = metadata !{i64 1451}
!1486 = metadata !{i64 1452}
!1487 = metadata !{i64 1453}
!1488 = metadata !{i64 1454}
!1489 = metadata !{i64 1455}
!1490 = metadata !{i64 1456}
!1491 = metadata !{i64 1457}
!1492 = metadata !{i64 1458}
!1493 = metadata !{i64 1459}
!1494 = metadata !{i64 1460}
!1495 = metadata !{i64 1461}
!1496 = metadata !{i64 1462}
!1497 = metadata !{i64 1463}
!1498 = metadata !{i64 1464}
!1499 = metadata !{i64 1465}
!1500 = metadata !{i64 1466}
!1501 = metadata !{i64 1467}
!1502 = metadata !{i64 1468}
!1503 = metadata !{i64 1469}
!1504 = metadata !{i64 1470}
!1505 = metadata !{i64 1471}
!1506 = metadata !{i64 1472}
!1507 = metadata !{i64 1473}
!1508 = metadata !{i64 1474}
!1509 = metadata !{i64 1475}
!1510 = metadata !{i64 1476}
!1511 = metadata !{i64 1477}
!1512 = metadata !{i64 1478}
!1513 = metadata !{i64 1479}
!1514 = metadata !{i64 1480}
!1515 = metadata !{i64 1481}
!1516 = metadata !{i64 1482}
!1517 = metadata !{i64 1483}
!1518 = metadata !{i64 1484}
!1519 = metadata !{i64 1485}
!1520 = metadata !{i64 1486}
!1521 = metadata !{i64 1487}
!1522 = metadata !{i64 1488}
!1523 = metadata !{i64 1489}
!1524 = metadata !{i64 1490}
!1525 = metadata !{i64 1491}
!1526 = metadata !{i64 1492}
!1527 = metadata !{i64 1493}
!1528 = metadata !{i64 1494}
!1529 = metadata !{i64 1495}
!1530 = metadata !{i64 1496}
!1531 = metadata !{i64 1497}
!1532 = metadata !{i64 1498}
!1533 = metadata !{i64 1499}
!1534 = metadata !{i64 1500}
!1535 = metadata !{i64 1501}
!1536 = metadata !{i64 1502}
!1537 = metadata !{i64 1503}
!1538 = metadata !{i64 1504}
!1539 = metadata !{i64 1505}
!1540 = metadata !{i64 1506}
!1541 = metadata !{i64 1507}
!1542 = metadata !{i64 1508}
!1543 = metadata !{i64 1509}
!1544 = metadata !{i64 1510}
!1545 = metadata !{i64 1511}
!1546 = metadata !{i64 1512}
!1547 = metadata !{i64 1513}
!1548 = metadata !{i64 1514}
!1549 = metadata !{i64 1515}
!1550 = metadata !{i64 1516}
!1551 = metadata !{i64 1517}
!1552 = metadata !{i64 1518}
!1553 = metadata !{i64 1519}
!1554 = metadata !{i64 1520}
!1555 = metadata !{i64 1521}
!1556 = metadata !{i64 1522}
!1557 = metadata !{i64 1523}
!1558 = metadata !{i64 1524}
!1559 = metadata !{i64 1525}
!1560 = metadata !{i64 1526}
!1561 = metadata !{i64 1527}
!1562 = metadata !{i64 1528}
!1563 = metadata !{i64 1529}
!1564 = metadata !{i64 1530}
!1565 = metadata !{i64 1531}
!1566 = metadata !{i64 1532}
!1567 = metadata !{i64 1533}
!1568 = metadata !{i64 1534}
!1569 = metadata !{i64 1535}
!1570 = metadata !{i64 1536}
!1571 = metadata !{i64 1537}
!1572 = metadata !{i64 1538}
!1573 = metadata !{i64 1539}
!1574 = metadata !{i64 1540}
!1575 = metadata !{i64 1541}
!1576 = metadata !{i64 1542}
!1577 = metadata !{i64 1543}
!1578 = metadata !{i64 1544}
!1579 = metadata !{i64 1545}
!1580 = metadata !{i64 1546}
!1581 = metadata !{i64 1547}
!1582 = metadata !{i64 1548}
!1583 = metadata !{i64 1549}
!1584 = metadata !{i64 1550}
!1585 = metadata !{i64 1551}
!1586 = metadata !{i64 1552}
!1587 = metadata !{i64 1553}
!1588 = metadata !{i64 1554}
!1589 = metadata !{i64 1555}
!1590 = metadata !{i64 1556}
!1591 = metadata !{i64 1557}
!1592 = metadata !{i64 1558}
!1593 = metadata !{i64 1559}
!1594 = metadata !{i64 1560}
!1595 = metadata !{i64 1561}
!1596 = metadata !{i64 1562}
!1597 = metadata !{i64 1563}
!1598 = metadata !{i64 1564}
!1599 = metadata !{i64 1565}
!1600 = metadata !{i64 1566}
!1601 = metadata !{i64 1567}
!1602 = metadata !{i64 1568}
!1603 = metadata !{i64 1569}
!1604 = metadata !{i64 1570}
!1605 = metadata !{i64 1571}
!1606 = metadata !{i64 1572}
!1607 = metadata !{i64 1573}
!1608 = metadata !{i64 1574}
!1609 = metadata !{i64 1575}
!1610 = metadata !{i64 1576}
!1611 = metadata !{i64 1577}
!1612 = metadata !{i64 1578}
!1613 = metadata !{i64 1579}
!1614 = metadata !{i64 1580}
!1615 = metadata !{i64 1581}
!1616 = metadata !{i64 1582}
!1617 = metadata !{i64 1583}
!1618 = metadata !{i64 1584}
!1619 = metadata !{i64 1585}
!1620 = metadata !{i64 1586}
!1621 = metadata !{i64 1587}
!1622 = metadata !{i64 1588}
!1623 = metadata !{i64 1589}
!1624 = metadata !{i64 1590}
!1625 = metadata !{i64 1591}
!1626 = metadata !{i64 1592}
!1627 = metadata !{i64 1593}
!1628 = metadata !{i64 1594}
!1629 = metadata !{i64 1595}
!1630 = metadata !{i64 1596}
!1631 = metadata !{i64 1597}
!1632 = metadata !{i64 1598}
!1633 = metadata !{i64 1599}
!1634 = metadata !{i64 1600}
!1635 = metadata !{i64 1601}
!1636 = metadata !{i64 1602}
!1637 = metadata !{i64 1603}
!1638 = metadata !{i64 1604}
!1639 = metadata !{i64 1605}
!1640 = metadata !{i64 1606}
!1641 = metadata !{i64 1607}
!1642 = metadata !{i64 1608}
!1643 = metadata !{i64 1609}
!1644 = metadata !{i64 1610}
!1645 = metadata !{i64 1611}
!1646 = metadata !{i64 1612}
!1647 = metadata !{i64 1613}
!1648 = metadata !{i64 1614}
!1649 = metadata !{i64 1615}
!1650 = metadata !{i64 1616}
!1651 = metadata !{i64 1617}
!1652 = metadata !{i64 1618}
!1653 = metadata !{i64 1619}
!1654 = metadata !{i64 1620}
!1655 = metadata !{i64 1621}
!1656 = metadata !{i64 1622}
!1657 = metadata !{i64 1623}
!1658 = metadata !{i64 1624}
!1659 = metadata !{i64 1625}
!1660 = metadata !{i64 1626}
!1661 = metadata !{i64 1627}
!1662 = metadata !{i64 1628}
!1663 = metadata !{i64 1629}
!1664 = metadata !{i64 1630}
!1665 = metadata !{i64 1631}
!1666 = metadata !{i64 1632}
!1667 = metadata !{i64 1633}
!1668 = metadata !{i64 1634}
!1669 = metadata !{i64 1635}
!1670 = metadata !{i64 1636}
!1671 = metadata !{i64 1637}
!1672 = metadata !{i64 1638}
!1673 = metadata !{i64 1639}
!1674 = metadata !{i64 1640}
!1675 = metadata !{i64 1641}
!1676 = metadata !{i64 1642}
!1677 = metadata !{i64 1643}
!1678 = metadata !{i64 1644}
!1679 = metadata !{i64 1645}
!1680 = metadata !{i64 1646}
!1681 = metadata !{i64 1647}
!1682 = metadata !{i64 1648}
!1683 = metadata !{i64 1649}
!1684 = metadata !{i64 1650}
