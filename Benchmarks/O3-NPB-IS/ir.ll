; ModuleID = '/home/lucas/DependableSystemsLab/benchmarks/NPB-IS/fi/llfi-O3/npb-is.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@S_test_index_array = global [5 x i32] [i32 48427, i32 17148, i32 23627, i32 62548, i32 4431], align 16
@S_test_rank_array = global [5 x i32] [i32 0, i32 18, i32 346, i32 64917, i32 65463], align 16
@W_test_index_array = global [5 x i32] [i32 357773, i32 934767, i32 875723, i32 898999, i32 404505], align 16
@W_test_rank_array = global [5 x i32] [i32 1249, i32 11698, i32 1039987, i32 1043896, i32 1048018], align 16
@A_test_index_array = global [5 x i32] [i32 2112377, i32 662041, i32 5336171, i32 3642833, i32 4250760], align 16
@A_test_rank_array = global [5 x i32] [i32 104, i32 17523, i32 123928, i32 8288932, i32 8388264], align 16
@B_test_index_array = global [5 x i32] [i32 41869, i32 812306, i32 5102857, i32 18232239, i32 26860214], align 16
@B_test_rank_array = global [5 x i32] [i32 33422937, i32 10244, i32 59149, i32 33135281, i32 99], align 16
@C_test_index_array = global [5 x i32] [i32 44172927, i32 72999161, i32 74326391, i32 129606274, i32 21736814], align 16
@C_test_rank_array = global [5 x i32] [i32 61147, i32 882988, i32 266290, i32 133997595, i32 133525895], align 16
@D_test_index_array = global [5 x i32] [i32 1317351170, i32 995930646, i32 1157283250, i32 1503301535, i32 1453734525], align 16
@D_test_rank_array = global [5 x i32] [i32 1, i32 36538729, i32 1978098519, i32 2145192618, i32 2147425337], align 16
@randlc.KS = internal unnamed_addr global i1 false
@randlc.R23 = internal unnamed_addr global double 0.000000e+00, align 8
@randlc.R46 = internal unnamed_addr global double 0.000000e+00, align 8
@randlc.T23 = internal unnamed_addr global double 0.000000e+00, align 8
@randlc.T46 = internal unnamed_addr global double 0.000000e+00, align 8
@key_array = common global [65536 x i32] zeroinitializer, align 16
@key_buff2 = common global [65536 x i32] zeroinitializer, align 16
@key_buff_ptr_global = common global i32* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"Full_verify: number of keys out of sort: %ld\0A\00", align 1
@passed_verification = common global i32 0, align 4
@test_index_array = common global [5 x i32] zeroinitializer, align 16
@partial_verify_vals = common global [5 x i32] zeroinitializer, align 16
@bucket_size = common global [512 x i32] zeroinitializer, align 16
@bucket_ptrs = common global [512 x i32] zeroinitializer, align 16
@key_buff1 = common global [2048 x i32] zeroinitializer, align 16
@test_rank_array = common global [5 x i32] zeroinitializer, align 16
@.str1 = private unnamed_addr constant [56 x i8] c"Failed partial verification: iteration %d, test key %d\0A\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"timer.flag\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str5 = private unnamed_addr constant [25 x i8] c" Size:  %ld  (class %c)\0A\00", align 1
@.str6 = private unnamed_addr constant [19 x i8] c" Iterations:   %d\0A\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"IS\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"keys ranked\00", align 1
@.str9 = private unnamed_addr constant [6 x i8] c"3.3.1\00", align 1
@.str10 = private unnamed_addr constant [12 x i8] c"26 Jul 2018\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"clang\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"$(CC)\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str14 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str15 = private unnamed_addr constant [14 x i8] c"-g -Wall -O3 \00", align 1
@.str16 = private unnamed_addr constant [7 x i8] c"-O3 -v\00", align 1
@.str18 = private unnamed_addr constant [25 x i8] c" Total execution: %8.3f\0A\00", align 1
@.str19 = private unnamed_addr constant [35 x i8] c" Initialization : %8.3f (%5.2f%%)\0A\00", align 1
@.str20 = private unnamed_addr constant [35 x i8] c" Benchmarking   : %8.3f (%5.2f%%)\0A\00", align 1
@.str21 = private unnamed_addr constant [35 x i8] c" Sorting        : %8.3f (%5.2f%%)\0A\00", align 1
@str = private unnamed_addr constant [56 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER) - IS Benchmark\0A\00"
@str22 = private unnamed_addr constant [21 x i8] c"\0AAdditional timers -\00"
@elapsed = internal unnamed_addr global [64 x double] zeroinitializer, align 16
@start = internal unnamed_addr global [64 x double] zeroinitializer, align 16
@.str17 = private unnamed_addr constant [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", align 1
@.str118 = private unnamed_addr constant [46 x i8] c" Class           =                        %c\0A\00", align 1
@.str219 = private unnamed_addr constant [38 x i8] c" Size            =             %12ld\0A\00", align 1
@.str320 = private unnamed_addr constant [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", align 1
@.str4 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str521 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str922 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@str23 = private unnamed_addr constant [44 x i8] c" Verification    =             UNSUCCESSFUL\00"
@str16 = private unnamed_addr constant [40 x i8] c"\0A--------------------------------------\00"
@str17 = private unnamed_addr constant [38 x i8] c" Please send all errors/feedbacks to:\00"
@str18 = private unnamed_addr constant [33 x i8] c" Center for Manycore Programming\00"
@str19 = private unnamed_addr constant [20 x i8] c" cmp@aces.snu.ac.kr\00"
@str20 = private unnamed_addr constant [23 x i8] c" http://aces.snu.ac.kr\00"
@str21 = private unnamed_addr constant [39 x i8] c"--------------------------------------\00"
@str2224 = private unnamed_addr constant [44 x i8] c" Verification    =               SUCCESSFUL\00"
@str2325 = private unnamed_addr constant [44 x i8] c" Verification    =            NOT PERFORMED\00"
@wtime_.sec = internal unnamed_addr global i32 -1, align 4
@.str30 = private unnamed_addr constant [28 x i8] c"\0A\0A %s Benchmark Completed.\0A\00", align 1
@.str131 = private unnamed_addr constant [37 x i8] c" Class           =             %12c\0A\00", align 1
@.str232 = private unnamed_addr constant [8 x i8] c"%15.0lf\00", align 1
@.str333 = private unnamed_addr constant [34 x i8] c" Size            =          %15s\0A\00", align 1
@.str434 = private unnamed_addr constant [37 x i8] c" Size            =             %12d\0A\00", align 1
@.str535 = private unnamed_addr constant [42 x i8] c" Size            =           %4dx%4dx%4d\0A\00", align 1
@.str636 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str737 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str838 = private unnamed_addr constant [37 x i8] c" Verification    =             %12s\0A\00", align 1
@.str939 = private unnamed_addr constant [11 x i8] c"SUCCESSFUL\00", align 1
@.str1040 = private unnamed_addr constant [13 x i8] c"UNSUCCESSFUL\00", align 1
@.str1141 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@str42 = private unnamed_addr constant [194 x i8] c"\0A--------------------------------------\0A Please send all errors/feedbacks to:\0A Center for Manycore Programming\0A cmp@aces.snu.ac.kr\0A http://aces.snu.ac.kr\0A--------------------------------------\0A\00"

; Function Attrs: nounwind uwtable
define double @randlc(double* nocapture %X, double* nocapture readonly %A) #0 {
  %.b = load i1* @randlc.KS, align 1, !llfi_index !1
  br i1 %.b, label %._crit_edge, label %.preheader10, !llfi_index !2

._crit_edge:                                      ; preds = %0
  %.pre = load double* @randlc.R23, align 8, !tbaa !3, !llfi_index !7
  %.pre11 = load double* @randlc.T23, align 8, !tbaa !3, !llfi_index !8
  %.pre12 = load double* @randlc.R46, align 8, !tbaa !3, !llfi_index !9
  %.pre13 = load double* @randlc.T46, align 8, !tbaa !3, !llfi_index !10
  br label %8, !llfi_index !11

.preheader10:                                     ; preds = %0
  store double 1.000000e+00, double* @randlc.R46, align 8, !tbaa !3, !llfi_index !12
  store double 1.000000e+00, double* @randlc.T46, align 8, !tbaa !3, !llfi_index !13
  store double 0x3E80000000000000, double* @randlc.R23, align 8, !tbaa !3, !llfi_index !14
  store double 8.388608e+06, double* @randlc.T23, align 8, !tbaa !3, !llfi_index !15
  br label %1, !llfi_index !16

; <label>:1                                       ; preds = %1, %.preheader10
  %2 = phi double [ 1.000000e+00, %.preheader10 ], [ %5, %1 ], !llfi_index !17
  %3 = phi double [ 1.000000e+00, %.preheader10 ], [ %4, %1 ], !llfi_index !18
  %i.11 = phi i32 [ 1, %.preheader10 ], [ %6, %1 ], !llfi_index !19
  %4 = fmul double %3, 5.000000e-01, !llfi_index !20
  %5 = fmul double %2, 2.000000e+00, !llfi_index !21
  %6 = add nsw i32 %i.11, 1, !llfi_index !22
  %exitcond = icmp eq i32 %6, 47, !llfi_index !23
  br i1 %exitcond, label %7, label %1, !llfi_index !24

; <label>:7                                       ; preds = %1
  store double %4, double* @randlc.R46, align 8, !tbaa !3, !llfi_index !25
  store double %5, double* @randlc.T46, align 8, !tbaa !3, !llfi_index !26
  store i1 true, i1* @randlc.KS, align 1, !llfi_index !27
  br label %8, !llfi_index !28

; <label>:8                                       ; preds = %7, %._crit_edge
  %9 = phi double [ %.pre13, %._crit_edge ], [ %5, %7 ], !llfi_index !29
  %10 = phi double [ %.pre12, %._crit_edge ], [ %4, %7 ], !llfi_index !30
  %11 = phi double [ %.pre11, %._crit_edge ], [ 8.388608e+06, %7 ], !llfi_index !31
  %12 = phi double [ %.pre, %._crit_edge ], [ 0x3E80000000000000, %7 ], !llfi_index !32
  %13 = load double* %A, align 8, !tbaa !3, !llfi_index !33
  %14 = fmul double %12, %13, !llfi_index !34
  %15 = fptosi double %14 to i32, !llfi_index !35
  %16 = sitofp i32 %15 to double, !llfi_index !36
  %17 = fmul double %11, %16, !llfi_index !37
  %18 = fsub double %13, %17, !llfi_index !38
  %19 = load double* %X, align 8, !tbaa !3, !llfi_index !39
  %20 = fmul double %12, %19, !llfi_index !40
  %21 = fptosi double %20 to i32, !llfi_index !41
  %22 = sitofp i32 %21 to double, !llfi_index !42
  %23 = fmul double %11, %22, !llfi_index !43
  %24 = fsub double %19, %23, !llfi_index !44
  %25 = fmul double %16, %24, !llfi_index !45
  %26 = fmul double %18, %22, !llfi_index !46
  %27 = fadd double %26, %25, !llfi_index !47
  %28 = fmul double %12, %27, !llfi_index !48
  %29 = fptosi double %28 to i32, !llfi_index !49
  %30 = sitofp i32 %29 to double, !llfi_index !50
  %31 = fmul double %11, %30, !llfi_index !51
  %32 = fsub double %27, %31, !llfi_index !52
  %33 = fmul double %11, %32, !llfi_index !53
  %34 = fmul double %18, %24, !llfi_index !54
  %35 = fadd double %34, %33, !llfi_index !55
  %36 = fmul double %10, %35, !llfi_index !56
  %37 = fptosi double %36 to i32, !llfi_index !57
  %38 = sitofp i32 %37 to double, !llfi_index !58
  %39 = fmul double %9, %38, !llfi_index !59
  %40 = fsub double %35, %39, !llfi_index !60
  store double %40, double* %X, align 8, !tbaa !3, !llfi_index !61
  %41 = load double* @randlc.R46, align 8, !tbaa !3, !llfi_index !62
  %42 = fmul double %41, %40, !llfi_index !63
  ret double %42, !llfi_index !64
}

; Function Attrs: nounwind uwtable
define void @create_seq(double %seed, double %a) #0 {
  %.b.i.pre = load i1* @randlc.KS, align 1, !llfi_index !65
  br label %1, !llfi_index !66

; <label>:1                                       ; preds = %randlc.exit10, %0
  %.b.i = phi i1 [ %.b.i.pre, %0 ], [ true, %randlc.exit10 ], !llfi_index !67
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %randlc.exit10 ], !llfi_index !68
  %seed3139 = phi double [ %seed, %0 ], [ %103, %randlc.exit10 ], !llfi_index !69
  br i1 %.b.i, label %._crit_edge.i, label %.preheader10.i, !llfi_index !70

._crit_edge.i:                                    ; preds = %1
  %.pre.i = load double* @randlc.R23, align 8, !tbaa !3, !llfi_index !71
  %.pre11.i = load double* @randlc.T23, align 8, !tbaa !3, !llfi_index !72
  %.pre12.i = load double* @randlc.R46, align 8, !tbaa !3, !llfi_index !73
  %.pre13.i = load double* @randlc.T46, align 8, !tbaa !3, !llfi_index !74
  br label %randlc.exit10, !llfi_index !75

.preheader10.i:                                   ; preds = %1
  store double 1.000000e+00, double* @randlc.R46, align 8, !tbaa !3, !llfi_index !76
  store double 1.000000e+00, double* @randlc.T46, align 8, !tbaa !3, !llfi_index !77
  store double 0x3E80000000000000, double* @randlc.R23, align 8, !tbaa !3, !llfi_index !78
  store double 8.388608e+06, double* @randlc.T23, align 8, !tbaa !3, !llfi_index !79
  br label %2, !llfi_index !80

; <label>:2                                       ; preds = %2, %.preheader10.i
  %3 = phi double [ 1.000000e+00, %.preheader10.i ], [ %6, %2 ], !llfi_index !81
  %4 = phi double [ 1.000000e+00, %.preheader10.i ], [ %5, %2 ], !llfi_index !82
  %i.11.i = phi i32 [ 1, %.preheader10.i ], [ %7, %2 ], !llfi_index !83
  %5 = fmul double %4, 5.000000e-01, !llfi_index !84
  %6 = fmul double %3, 2.000000e+00, !llfi_index !85
  %7 = add nsw i32 %i.11.i, 1, !llfi_index !86
  %exitcond.i = icmp eq i32 %7, 47, !llfi_index !87
  br i1 %exitcond.i, label %8, label %2, !llfi_index !88

; <label>:8                                       ; preds = %2
  store double %5, double* @randlc.R46, align 8, !tbaa !3, !llfi_index !89
  store double %6, double* @randlc.T46, align 8, !tbaa !3, !llfi_index !90
  store i1 true, i1* @randlc.KS, align 1, !llfi_index !91
  br label %randlc.exit10, !llfi_index !92

randlc.exit10:                                    ; preds = %8, %._crit_edge.i
  %.pre13.i25 = phi double [ %.pre13.i, %._crit_edge.i ], [ %6, %8 ], !llfi_index !93
  %9 = phi double [ %.pre12.i, %._crit_edge.i ], [ %5, %8 ], !llfi_index !94
  %.pre11.i23 = phi double [ %.pre11.i, %._crit_edge.i ], [ 8.388608e+06, %8 ], !llfi_index !95
  %.pre.i22 = phi double [ %.pre.i, %._crit_edge.i ], [ 0x3E80000000000000, %8 ], !llfi_index !96
  %10 = fmul double %.pre.i22, %a, !llfi_index !97
  %11 = fptosi double %10 to i32, !llfi_index !98
  %12 = sitofp i32 %11 to double, !llfi_index !99
  %13 = fmul double %.pre11.i23, %12, !llfi_index !100
  %14 = fsub double %a, %13, !llfi_index !101
  %15 = fmul double %seed3139, %.pre.i22, !llfi_index !102
  %16 = fptosi double %15 to i32, !llfi_index !103
  %17 = sitofp i32 %16 to double, !llfi_index !104
  %18 = fmul double %.pre11.i23, %17, !llfi_index !105
  %19 = fsub double %seed3139, %18, !llfi_index !106
  %20 = fmul double %12, %19, !llfi_index !107
  %21 = fmul double %17, %14, !llfi_index !108
  %22 = fadd double %21, %20, !llfi_index !109
  %23 = fmul double %.pre.i22, %22, !llfi_index !110
  %24 = fptosi double %23 to i32, !llfi_index !111
  %25 = sitofp i32 %24 to double, !llfi_index !112
  %26 = fmul double %.pre11.i23, %25, !llfi_index !113
  %27 = fsub double %22, %26, !llfi_index !114
  %28 = fmul double %.pre11.i23, %27, !llfi_index !115
  %29 = fmul double %14, %19, !llfi_index !116
  %30 = fadd double %29, %28, !llfi_index !117
  %31 = fmul double %9, %30, !llfi_index !118
  %32 = fptosi double %31 to i32, !llfi_index !119
  %33 = sitofp i32 %32 to double, !llfi_index !120
  %34 = fmul double %.pre13.i25, %33, !llfi_index !121
  %35 = fsub double %30, %34, !llfi_index !122
  %36 = fmul double %9, %35, !llfi_index !123
  %37 = fmul double %35, %.pre.i22, !llfi_index !124
  %38 = fptosi double %37 to i32, !llfi_index !125
  %39 = sitofp i32 %38 to double, !llfi_index !126
  %40 = fmul double %.pre11.i23, %39, !llfi_index !127
  %41 = fsub double %35, %40, !llfi_index !128
  %42 = fmul double %12, %41, !llfi_index !129
  %43 = fmul double %39, %14, !llfi_index !130
  %44 = fadd double %43, %42, !llfi_index !131
  %45 = fmul double %.pre.i22, %44, !llfi_index !132
  %46 = fptosi double %45 to i32, !llfi_index !133
  %47 = sitofp i32 %46 to double, !llfi_index !134
  %48 = fmul double %.pre11.i23, %47, !llfi_index !135
  %49 = fsub double %44, %48, !llfi_index !136
  %50 = fmul double %.pre11.i23, %49, !llfi_index !137
  %51 = fmul double %14, %41, !llfi_index !138
  %52 = fadd double %51, %50, !llfi_index !139
  %53 = fmul double %9, %52, !llfi_index !140
  %54 = fptosi double %53 to i32, !llfi_index !141
  %55 = sitofp i32 %54 to double, !llfi_index !142
  %56 = fmul double %.pre13.i25, %55, !llfi_index !143
  %57 = fsub double %52, %56, !llfi_index !144
  %58 = fmul double %9, %57, !llfi_index !145
  %59 = fadd double %36, %58, !llfi_index !146
  %60 = fmul double %57, %.pre.i22, !llfi_index !147
  %61 = fptosi double %60 to i32, !llfi_index !148
  %62 = sitofp i32 %61 to double, !llfi_index !149
  %63 = fmul double %.pre11.i23, %62, !llfi_index !150
  %64 = fsub double %57, %63, !llfi_index !151
  %65 = fmul double %12, %64, !llfi_index !152
  %66 = fmul double %62, %14, !llfi_index !153
  %67 = fadd double %66, %65, !llfi_index !154
  %68 = fmul double %.pre.i22, %67, !llfi_index !155
  %69 = fptosi double %68 to i32, !llfi_index !156
  %70 = sitofp i32 %69 to double, !llfi_index !157
  %71 = fmul double %.pre11.i23, %70, !llfi_index !158
  %72 = fsub double %67, %71, !llfi_index !159
  %73 = fmul double %.pre11.i23, %72, !llfi_index !160
  %74 = fmul double %14, %64, !llfi_index !161
  %75 = fadd double %74, %73, !llfi_index !162
  %76 = fmul double %9, %75, !llfi_index !163
  %77 = fptosi double %76 to i32, !llfi_index !164
  %78 = sitofp i32 %77 to double, !llfi_index !165
  %79 = fmul double %.pre13.i25, %78, !llfi_index !166
  %80 = fsub double %75, %79, !llfi_index !167
  %81 = fmul double %9, %80, !llfi_index !168
  %82 = fadd double %59, %81, !llfi_index !169
  %83 = fmul double %80, %.pre.i22, !llfi_index !170
  %84 = fptosi double %83 to i32, !llfi_index !171
  %85 = sitofp i32 %84 to double, !llfi_index !172
  %86 = fmul double %.pre11.i23, %85, !llfi_index !173
  %87 = fsub double %80, %86, !llfi_index !174
  %88 = fmul double %12, %87, !llfi_index !175
  %89 = fmul double %85, %14, !llfi_index !176
  %90 = fadd double %89, %88, !llfi_index !177
  %91 = fmul double %.pre.i22, %90, !llfi_index !178
  %92 = fptosi double %91 to i32, !llfi_index !179
  %93 = sitofp i32 %92 to double, !llfi_index !180
  %94 = fmul double %.pre11.i23, %93, !llfi_index !181
  %95 = fsub double %90, %94, !llfi_index !182
  %96 = fmul double %.pre11.i23, %95, !llfi_index !183
  %97 = fmul double %14, %87, !llfi_index !184
  %98 = fadd double %97, %96, !llfi_index !185
  %99 = fmul double %9, %98, !llfi_index !186
  %100 = fptosi double %99 to i32, !llfi_index !187
  %101 = sitofp i32 %100 to double, !llfi_index !188
  %102 = fmul double %.pre13.i25, %101, !llfi_index !189
  %103 = fsub double %98, %102, !llfi_index !190
  %104 = fmul double %9, %103, !llfi_index !191
  %105 = fadd double %82, %104, !llfi_index !192
  %106 = fmul double %105, 5.120000e+02, !llfi_index !193
  %107 = fptosi double %106 to i32, !llfi_index !194
  %108 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %indvars.iv, !llfi_index !195
  store i32 %107, i32* %108, align 4, !tbaa !196, !llfi_index !198
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !199
  %exitcond = icmp eq i64 %indvars.iv.next, 65536, !llfi_index !200
  br i1 %exitcond, label %109, label %1, !llfi_index !201

; <label>:109                                     ; preds = %randlc.exit10
  ret void, !llfi_index !202
}

; Function Attrs: nounwind uwtable
define void @full_verify() #0 {
  %1 = load i32** @key_buff_ptr_global, align 8, !tbaa !203, !llfi_index !205
  br label %2, !llfi_index !206

.preheader:                                       ; preds = %2
  %.pre = load i32* getelementptr inbounds ([65536 x i32]* @key_array, i64 0, i64 0), align 16, !tbaa !196, !llfi_index !207
  br label %11, !llfi_index !208

; <label>:2                                       ; preds = %2, %0
  %indvars.iv4 = phi i64 [ 0, %0 ], [ %indvars.iv.next5, %2 ], !llfi_index !209
  %3 = getelementptr inbounds [65536 x i32]* @key_buff2, i64 0, i64 %indvars.iv4, !llfi_index !210
  %4 = load i32* %3, align 4, !tbaa !196, !llfi_index !211
  %5 = sext i32 %4 to i64, !llfi_index !212
  %6 = getelementptr inbounds i32* %1, i64 %5, !llfi_index !213
  %7 = load i32* %6, align 4, !tbaa !196, !llfi_index !214
  %8 = add nsw i32 %7, -1, !llfi_index !215
  store i32 %8, i32* %6, align 4, !tbaa !196, !llfi_index !216
  %9 = sext i32 %8 to i64, !llfi_index !217
  %10 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %9, !llfi_index !218
  store i32 %4, i32* %10, align 4, !tbaa !196, !llfi_index !219
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !llfi_index !220
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 65536, !llfi_index !221
  br i1 %exitcond6, label %.preheader, label %2, !llfi_index !222

; <label>:11                                      ; preds = %11, %.preheader
  %12 = phi i32 [ %.pre, %.preheader ], [ %14, %11 ], !llfi_index !223
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %11 ], !llfi_index !224
  %j.02 = phi i32 [ 0, %.preheader ], [ %.j.0, %11 ], !llfi_index !225
  %13 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %indvars.iv, !llfi_index !226
  %14 = load i32* %13, align 4, !tbaa !196, !llfi_index !227
  %15 = icmp sgt i32 %12, %14, !llfi_index !228
  %16 = zext i1 %15 to i32, !llfi_index !229
  %.j.0 = add nsw i32 %16, %j.02, !llfi_index !230
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !231
  %exitcond = icmp eq i64 %indvars.iv.next, 65536, !llfi_index !232
  br i1 %exitcond, label %17, label %11, !llfi_index !233

; <label>:17                                      ; preds = %11
  %18 = icmp eq i32 %.j.0, 0, !llfi_index !234
  br i1 %18, label %22, label %19, !llfi_index !235

; <label>:19                                      ; preds = %17
  %20 = sext i32 %.j.0 to i64, !llfi_index !236
  %21 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), i64 %20) #2, !llfi_index !237
  br label %25, !llfi_index !238

; <label>:22                                      ; preds = %17
  %23 = load i32* @passed_verification, align 4, !tbaa !196, !llfi_index !239
  %24 = add nsw i32 %23, 1, !llfi_index !240
  store i32 %24, i32* @passed_verification, align 4, !tbaa !196, !llfi_index !241
  br label %25, !llfi_index !242

; <label>:25                                      ; preds = %22, %19
  ret void, !llfi_index !243
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind uwtable
define void @rank(i32 %iteration) #0 {
.preheader1542:
  %0 = sext i32 %iteration to i64, !llfi_index !244
  %1 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %0, !llfi_index !245
  store i32 %iteration, i32* %1, align 4, !tbaa !196, !llfi_index !246
  %2 = sub nsw i32 2048, %iteration, !llfi_index !247
  %3 = add nsw i32 %iteration, 10, !llfi_index !248
  %4 = sext i32 %3 to i64, !llfi_index !249
  %5 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %4, !llfi_index !250
  store i32 %2, i32* %5, align 4, !tbaa !196, !llfi_index !251
  %6 = load i32* getelementptr inbounds ([5 x i32]* @test_index_array, i64 0, i64 0), align 16, !tbaa !196, !llfi_index !252
  %7 = sext i32 %6 to i64, !llfi_index !253
  %8 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %7, !llfi_index !254
  %9 = load i32* %8, align 4, !tbaa !196, !llfi_index !255
  store i32 %9, i32* getelementptr inbounds ([5 x i32]* @partial_verify_vals, i64 0, i64 0), align 16, !tbaa !196, !llfi_index !256
  %10 = load i32* getelementptr inbounds ([5 x i32]* @test_index_array, i64 0, i64 1), align 4, !tbaa !196, !llfi_index !257
  %11 = sext i32 %10 to i64, !llfi_index !258
  %12 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %11, !llfi_index !259
  %13 = load i32* %12, align 4, !tbaa !196, !llfi_index !260
  store i32 %13, i32* getelementptr inbounds ([5 x i32]* @partial_verify_vals, i64 0, i64 1), align 4, !tbaa !196, !llfi_index !261
  %14 = load i32* getelementptr inbounds ([5 x i32]* @test_index_array, i64 0, i64 2), align 8, !tbaa !196, !llfi_index !262
  %15 = sext i32 %14 to i64, !llfi_index !263
  %16 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %15, !llfi_index !264
  %17 = load i32* %16, align 4, !tbaa !196, !llfi_index !265
  store i32 %17, i32* getelementptr inbounds ([5 x i32]* @partial_verify_vals, i64 0, i64 2), align 8, !tbaa !196, !llfi_index !266
  %18 = load i32* getelementptr inbounds ([5 x i32]* @test_index_array, i64 0, i64 3), align 4, !tbaa !196, !llfi_index !267
  %19 = sext i32 %18 to i64, !llfi_index !268
  %20 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %19, !llfi_index !269
  %21 = load i32* %20, align 4, !tbaa !196, !llfi_index !270
  store i32 %21, i32* getelementptr inbounds ([5 x i32]* @partial_verify_vals, i64 0, i64 3), align 4, !tbaa !196, !llfi_index !271
  %22 = load i32* getelementptr inbounds ([5 x i32]* @test_index_array, i64 0, i64 4), align 16, !tbaa !196, !llfi_index !272
  %23 = sext i32 %22 to i64, !llfi_index !273
  %24 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %23, !llfi_index !274
  %25 = load i32* %24, align 4, !tbaa !196, !llfi_index !275
  store i32 %25, i32* getelementptr inbounds ([5 x i32]* @partial_verify_vals, i64 0, i64 4), align 16, !tbaa !196, !llfi_index !276
  call void @llvm.memset.p0i8.i64(i8* bitcast ([512 x i32]* @bucket_size to i8*), i8 0, i64 2048, i32 16, i1 false), !llfi_index !277
  br label %26, !llfi_index !278

; <label>:26                                      ; preds = %26, %.preheader1542
  %indvars.iv33 = phi i64 [ 0, %.preheader1542 ], [ %indvars.iv.next34, %26 ], !llfi_index !279
  %27 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %indvars.iv33, !llfi_index !280
  %28 = load i32* %27, align 4, !tbaa !196, !llfi_index !281
  %29 = ashr i32 %28, 2, !llfi_index !282
  %30 = sext i32 %29 to i64, !llfi_index !283
  %31 = getelementptr inbounds [512 x i32]* @bucket_size, i64 0, i64 %30, !llfi_index !284
  %32 = load i32* %31, align 4, !tbaa !196, !llfi_index !285
  %33 = add nsw i32 %32, 1, !llfi_index !286
  store i32 %33, i32* %31, align 4, !tbaa !196, !llfi_index !287
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1, !llfi_index !288
  %exitcond35 = icmp eq i64 %indvars.iv.next34, 65536, !llfi_index !289
  br i1 %exitcond35, label %34, label %26, !llfi_index !290

; <label>:34                                      ; preds = %26
  store i32 0, i32* getelementptr inbounds ([512 x i32]* @bucket_ptrs, i64 0, i64 0), align 16, !tbaa !196, !llfi_index !291
  br label %35, !llfi_index !292

; <label>:35                                      ; preds = %35, %34
  %36 = phi i32 [ 0, %34 ], [ %40, %35 ], !llfi_index !293
  %indvars.iv30 = phi i64 [ 1, %34 ], [ %indvars.iv.next31, %35 ], !llfi_index !294
  %37 = add nsw i64 %indvars.iv30, -1, !llfi_index !295
  %38 = getelementptr inbounds [512 x i32]* @bucket_size, i64 0, i64 %37, !llfi_index !296
  %39 = load i32* %38, align 4, !tbaa !196, !llfi_index !297
  %40 = add nsw i32 %39, %36, !llfi_index !298
  %41 = getelementptr inbounds [512 x i32]* @bucket_ptrs, i64 0, i64 %indvars.iv30, !llfi_index !299
  store i32 %40, i32* %41, align 4, !tbaa !196, !llfi_index !300
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1, !llfi_index !301
  %exitcond32 = icmp eq i64 %indvars.iv.next31, 512, !llfi_index !302
  br i1 %exitcond32, label %.preheader10, label %35, !llfi_index !303

.preheader8:                                      ; preds = %.preheader10
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2048 x i32]* @key_buff1 to i8*), i8 0, i64 8192, i32 16, i1 false), !llfi_index !304
  br label %51, !llfi_index !305

.preheader10:                                     ; preds = %.preheader10, %35
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %.preheader10 ], [ 0, %35 ], !llfi_index !306
  %42 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %indvars.iv27, !llfi_index !307
  %43 = load i32* %42, align 4, !tbaa !196, !llfi_index !308
  %44 = ashr i32 %43, 2, !llfi_index !309
  %45 = sext i32 %44 to i64, !llfi_index !310
  %46 = getelementptr inbounds [512 x i32]* @bucket_ptrs, i64 0, i64 %45, !llfi_index !311
  %47 = load i32* %46, align 4, !tbaa !196, !llfi_index !312
  %48 = add nsw i32 %47, 1, !llfi_index !313
  store i32 %48, i32* %46, align 4, !tbaa !196, !llfi_index !314
  %49 = sext i32 %47 to i64, !llfi_index !315
  %50 = getelementptr inbounds [65536 x i32]* @key_buff2, i64 0, i64 %49, !llfi_index !316
  store i32 %43, i32* %50, align 4, !tbaa !196, !llfi_index !317
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1, !llfi_index !318
  %exitcond29 = icmp eq i64 %indvars.iv.next28, 65536, !llfi_index !319
  br i1 %exitcond29, label %.preheader8, label %.preheader10, !llfi_index !320

.preheader4:                                      ; preds = %51
  %.pre = load i32* getelementptr inbounds ([2048 x i32]* @key_buff1, i64 0, i64 0), align 16, !tbaa !196, !llfi_index !321
  br label %58, !llfi_index !322

; <label>:51                                      ; preds = %51, %.preheader8
  %indvars.iv21 = phi i64 [ 0, %.preheader8 ], [ %indvars.iv.next22, %51 ], !llfi_index !323
  %52 = getelementptr inbounds [65536 x i32]* @key_buff2, i64 0, i64 %indvars.iv21, !llfi_index !324
  %53 = load i32* %52, align 4, !tbaa !196, !llfi_index !325
  %54 = sext i32 %53 to i64, !llfi_index !326
  %55 = getelementptr inbounds [2048 x i32]* @key_buff1, i64 0, i64 %54, !llfi_index !327
  %56 = load i32* %55, align 4, !tbaa !196, !llfi_index !328
  %57 = add nsw i32 %56, 1, !llfi_index !329
  store i32 %57, i32* %55, align 4, !tbaa !196, !llfi_index !330
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !llfi_index !331
  %exitcond23 = icmp eq i64 %indvars.iv.next22, 65536, !llfi_index !332
  br i1 %exitcond23, label %.preheader4, label %51, !llfi_index !333

; <label>:58                                      ; preds = %58, %.preheader4
  %59 = phi i32 [ %.pre, %.preheader4 ], [ %62, %58 ], !llfi_index !334
  %indvars.iv18 = phi i64 [ 0, %.preheader4 ], [ %indvars.iv.next19, %58 ], !llfi_index !335
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1, !llfi_index !336
  %60 = getelementptr inbounds [2048 x i32]* @key_buff1, i64 0, i64 %indvars.iv.next19, !llfi_index !337
  %61 = load i32* %60, align 4, !tbaa !196, !llfi_index !338
  %62 = add nsw i32 %61, %59, !llfi_index !339
  store i32 %62, i32* %60, align 4, !tbaa !196, !llfi_index !340
  %exitcond20 = icmp eq i64 %indvars.iv.next19, 2047, !llfi_index !341
  br i1 %exitcond20, label %.preheader, label %58, !llfi_index !342

.preheader:                                       ; preds = %._crit_edge, %58
  %63 = phi i32 [ %.pre43, %._crit_edge ], [ %9, %58 ], !llfi_index !343
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %58 ], !llfi_index !344
  %.off = add i32 %63, -1, !llfi_index !345
  %64 = icmp ult i32 %.off, 65535, !llfi_index !346
  br i1 %64, label %65, label %85, !llfi_index !347

; <label>:65                                      ; preds = %.preheader
  %66 = sext i32 %.off to i64, !llfi_index !348
  %67 = getelementptr inbounds [2048 x i32]* @key_buff1, i64 0, i64 %66, !llfi_index !349
  %68 = load i32* %67, align 4, !tbaa !196, !llfi_index !350
  %69 = trunc i64 %indvars.iv to i32, !llfi_index !351
  %70 = icmp slt i32 %69, 3, !llfi_index !352
  %71 = getelementptr inbounds [5 x i32]* @test_rank_array, i64 0, i64 %indvars.iv, !llfi_index !353
  %72 = load i32* %71, align 4, !tbaa !196, !llfi_index !354
  br i1 %70, label %73, label %78, !llfi_index !355

; <label>:73                                      ; preds = %65
  %74 = add nsw i32 %72, %iteration, !llfi_index !356
  %75 = icmp eq i32 %68, %74, !llfi_index !357
  br i1 %75, label %.critedge, label %83, !llfi_index !358

.critedge:                                        ; preds = %73
  %76 = load i32* @passed_verification, align 4, !tbaa !196, !llfi_index !359
  %77 = add nsw i32 %76, 1, !llfi_index !360
  store i32 %77, i32* @passed_verification, align 4, !tbaa !196, !llfi_index !361
  br label %85, !llfi_index !362

; <label>:78                                      ; preds = %65
  %79 = sub nsw i32 %72, %iteration, !llfi_index !363
  %80 = icmp eq i32 %68, %79, !llfi_index !364
  br i1 %80, label %.critedge2, label %83, !llfi_index !365

.critedge2:                                       ; preds = %78
  %81 = load i32* @passed_verification, align 4, !tbaa !196, !llfi_index !366
  %82 = add nsw i32 %81, 1, !llfi_index !367
  store i32 %82, i32* @passed_verification, align 4, !tbaa !196, !llfi_index !368
  br label %85, !llfi_index !369

; <label>:83                                      ; preds = %78, %73
  %84 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 %iteration, i32 %69) #2, !llfi_index !370
  br label %85, !llfi_index !371

; <label>:85                                      ; preds = %83, %.critedge2, %.critedge, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !372
  %exitcond = icmp eq i64 %indvars.iv.next, 5, !llfi_index !373
  br i1 %exitcond, label %86, label %._crit_edge, !llfi_index !374

._crit_edge:                                      ; preds = %85
  %.phi.trans.insert = getelementptr inbounds [5 x i32]* @partial_verify_vals, i64 0, i64 %indvars.iv.next, !llfi_index !375
  %.pre43 = load i32* %.phi.trans.insert, align 4, !tbaa !196, !llfi_index !376
  br label %.preheader, !llfi_index !377

; <label>:86                                      ; preds = %85
  %87 = icmp eq i32 %iteration, 10, !llfi_index !378
  br i1 %87, label %88, label %89, !llfi_index !379

; <label>:88                                      ; preds = %86
  store i32* getelementptr inbounds ([2048 x i32]* @key_buff1, i64 0, i64 0), i32** @key_buff_ptr_global, align 8, !tbaa !203, !llfi_index !380
  br label %89, !llfi_index !381

; <label>:89                                      ; preds = %88, %86
  ret void, !llfi_index !382
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) #0 {
  %1 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #2, !llfi_index !383
  %2 = icmp eq %struct._IO_FILE* %1, null, !llfi_index !384
  br i1 %2, label %3, label %4, !llfi_index !385

; <label>:3                                       ; preds = %0
  tail call void @timer_clear(i32 0) #2, !llfi_index !386
  br label %.critedge.preheader, !llfi_index !387

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @fclose(%struct._IO_FILE* %1) #2, !llfi_index !388
  tail call void @timer_clear(i32 0) #2, !llfi_index !389
  tail call void @timer_clear(i32 1) #2, !llfi_index !390
  tail call void @timer_clear(i32 2) #2, !llfi_index !391
  tail call void @timer_clear(i32 3) #2, !llfi_index !392
  tail call void @timer_start(i32 3) #2, !llfi_index !393
  br label %.critedge.preheader, !llfi_index !394

.critedge.preheader:                              ; preds = %4, %3
  %timer_on.016.ph = phi i1 [ false, %3 ], [ true, %4 ], !llfi_index !395
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([5 x i32]* @test_index_array to i8*), i8* bitcast ([5 x i32]* @S_test_index_array to i8*), i64 20, i32 16, i1 false), !llfi_index !396
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([5 x i32]* @test_rank_array to i8*), i8* bitcast ([5 x i32]* @S_test_rank_array to i8*), i64 20, i32 16, i1 false), !llfi_index !397
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([56 x i8]* @str, i64 0, i64 0)), !llfi_index !398
  %6 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str5, i64 0, i64 0), i64 65536, i32 83) #2, !llfi_index !399
  %7 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str6, i64 0, i64 0), i32 10) #2, !llfi_index !400
  br i1 %timer_on.016.ph, label %8, label %.critedge2, !llfi_index !401

; <label>:8                                       ; preds = %.critedge.preheader
  tail call void @timer_start(i32 1) #2, !llfi_index !402
  tail call void @create_seq(double 0x41B2B9B0A1000000, double 0x41D2309CE5400000), !llfi_index !403
  tail call void @timer_stop(i32 1) #2, !llfi_index !404
  br label %9, !llfi_index !405

.critedge2:                                       ; preds = %.critedge.preheader
  tail call void @create_seq(double 0x41B2B9B0A1000000, double 0x41D2309CE5400000), !llfi_index !406
  br label %9, !llfi_index !407

; <label>:9                                       ; preds = %.critedge2, %8
  tail call void @rank(i32 1), !llfi_index !408
  store i32 0, i32* @passed_verification, align 4, !tbaa !196, !llfi_index !409
  tail call void @timer_start(i32 0) #2, !llfi_index !410
  tail call void @rank(i32 1), !llfi_index !411
  tail call void @rank(i32 2), !llfi_index !412
  tail call void @rank(i32 3), !llfi_index !413
  tail call void @rank(i32 4), !llfi_index !414
  tail call void @rank(i32 5), !llfi_index !415
  tail call void @rank(i32 6), !llfi_index !416
  tail call void @rank(i32 7), !llfi_index !417
  tail call void @rank(i32 8), !llfi_index !418
  tail call void @rank(i32 9), !llfi_index !419
  tail call void @rank(i32 10), !llfi_index !420
  tail call void @timer_stop(i32 0) #2, !llfi_index !421
  %10 = tail call double @timer_read(i32 0) #2, !llfi_index !422
  br i1 %timer_on.016.ph, label %11, label %.critedge3, !llfi_index !423

; <label>:11                                      ; preds = %9
  tail call void @timer_start(i32 2) #2, !llfi_index !424
  %12 = load i32** @key_buff_ptr_global, align 8, !tbaa !203, !llfi_index !425
  br label %13, !llfi_index !426

.preheader.i:                                     ; preds = %13
  %.pre.i = load i32* getelementptr inbounds ([65536 x i32]* @key_array, i64 0, i64 0), align 16, !tbaa !196, !llfi_index !427
  br label %22, !llfi_index !428

; <label>:13                                      ; preds = %13, %11
  %indvars.iv4.i = phi i64 [ 0, %11 ], [ %indvars.iv.next5.i, %13 ], !llfi_index !429
  %14 = getelementptr inbounds [65536 x i32]* @key_buff2, i64 0, i64 %indvars.iv4.i, !llfi_index !430
  %15 = load i32* %14, align 4, !tbaa !196, !llfi_index !431
  %16 = sext i32 %15 to i64, !llfi_index !432
  %17 = getelementptr inbounds i32* %12, i64 %16, !llfi_index !433
  %18 = load i32* %17, align 4, !tbaa !196, !llfi_index !434
  %19 = add nsw i32 %18, -1, !llfi_index !435
  store i32 %19, i32* %17, align 4, !tbaa !196, !llfi_index !436
  %20 = sext i32 %19 to i64, !llfi_index !437
  %21 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %20, !llfi_index !438
  store i32 %15, i32* %21, align 4, !tbaa !196, !llfi_index !439
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1, !llfi_index !440
  %exitcond6.i = icmp eq i64 %indvars.iv.next5.i, 65536, !llfi_index !441
  br i1 %exitcond6.i, label %.preheader.i, label %13, !llfi_index !442

; <label>:22                                      ; preds = %22, %.preheader.i
  %23 = phi i32 [ %.pre.i, %.preheader.i ], [ %25, %22 ], !llfi_index !443
  %indvars.iv.i = phi i64 [ 1, %.preheader.i ], [ %indvars.iv.next.i, %22 ], !llfi_index !444
  %j.02.i = phi i32 [ 0, %.preheader.i ], [ %.j.0.i, %22 ], !llfi_index !445
  %24 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %indvars.iv.i, !llfi_index !446
  %25 = load i32* %24, align 4, !tbaa !196, !llfi_index !447
  %26 = icmp sgt i32 %23, %25, !llfi_index !448
  %27 = zext i1 %26 to i32, !llfi_index !449
  %.j.0.i = add nsw i32 %27, %j.02.i, !llfi_index !450
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !llfi_index !451
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 65536, !llfi_index !452
  br i1 %exitcond.i, label %28, label %22, !llfi_index !453

; <label>:28                                      ; preds = %22
  %29 = icmp eq i32 %.j.0.i, 0, !llfi_index !454
  br i1 %29, label %33, label %30, !llfi_index !455

; <label>:30                                      ; preds = %28
  %31 = sext i32 %.j.0.i to i64, !llfi_index !456
  %32 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), i64 %31) #2, !llfi_index !457
  br label %full_verify.exit, !llfi_index !458

; <label>:33                                      ; preds = %28
  %34 = load i32* @passed_verification, align 4, !tbaa !196, !llfi_index !459
  %35 = add nsw i32 %34, 1, !llfi_index !460
  store i32 %35, i32* @passed_verification, align 4, !tbaa !196, !llfi_index !461
  br label %full_verify.exit, !llfi_index !462

full_verify.exit:                                 ; preds = %33, %30
  tail call void @timer_stop(i32 2) #2, !llfi_index !463
  br label %full_verify.exit15, !llfi_index !464

.critedge3:                                       ; preds = %9
  %36 = load i32** @key_buff_ptr_global, align 8, !tbaa !203, !llfi_index !465
  br label %37, !llfi_index !466

.preheader.i6:                                    ; preds = %37
  %.pre.i5 = load i32* getelementptr inbounds ([65536 x i32]* @key_array, i64 0, i64 0), align 16, !tbaa !196, !llfi_index !467
  br label %46, !llfi_index !468

; <label>:37                                      ; preds = %37, %.critedge3
  %indvars.iv4.i7 = phi i64 [ 0, %.critedge3 ], [ %indvars.iv.next5.i8, %37 ], !llfi_index !469
  %38 = getelementptr inbounds [65536 x i32]* @key_buff2, i64 0, i64 %indvars.iv4.i7, !llfi_index !470
  %39 = load i32* %38, align 4, !tbaa !196, !llfi_index !471
  %40 = sext i32 %39 to i64, !llfi_index !472
  %41 = getelementptr inbounds i32* %36, i64 %40, !llfi_index !473
  %42 = load i32* %41, align 4, !tbaa !196, !llfi_index !474
  %43 = add nsw i32 %42, -1, !llfi_index !475
  store i32 %43, i32* %41, align 4, !tbaa !196, !llfi_index !476
  %44 = sext i32 %43 to i64, !llfi_index !477
  %45 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %44, !llfi_index !478
  store i32 %39, i32* %45, align 4, !tbaa !196, !llfi_index !479
  %indvars.iv.next5.i8 = add nuw nsw i64 %indvars.iv4.i7, 1, !llfi_index !480
  %exitcond6.i9 = icmp eq i64 %indvars.iv.next5.i8, 65536, !llfi_index !481
  br i1 %exitcond6.i9, label %.preheader.i6, label %37, !llfi_index !482

; <label>:46                                      ; preds = %46, %.preheader.i6
  %47 = phi i32 [ %.pre.i5, %.preheader.i6 ], [ %49, %46 ], !llfi_index !483
  %indvars.iv.i10 = phi i64 [ 1, %.preheader.i6 ], [ %indvars.iv.next.i13, %46 ], !llfi_index !484
  %j.02.i11 = phi i32 [ 0, %.preheader.i6 ], [ %.j.0.i12, %46 ], !llfi_index !485
  %48 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %indvars.iv.i10, !llfi_index !486
  %49 = load i32* %48, align 4, !tbaa !196, !llfi_index !487
  %50 = icmp sgt i32 %47, %49, !llfi_index !488
  %51 = zext i1 %50 to i32, !llfi_index !489
  %.j.0.i12 = add nsw i32 %51, %j.02.i11, !llfi_index !490
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i10, 1, !llfi_index !491
  %exitcond.i14 = icmp eq i64 %indvars.iv.next.i13, 65536, !llfi_index !492
  br i1 %exitcond.i14, label %52, label %46, !llfi_index !493

; <label>:52                                      ; preds = %46
  %53 = icmp eq i32 %.j.0.i12, 0, !llfi_index !494
  br i1 %53, label %57, label %54, !llfi_index !495

; <label>:54                                      ; preds = %52
  %55 = sext i32 %.j.0.i12 to i64, !llfi_index !496
  %56 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), i64 %55) #2, !llfi_index !497
  br label %full_verify.exit15, !llfi_index !498

; <label>:57                                      ; preds = %52
  %58 = load i32* @passed_verification, align 4, !tbaa !196, !llfi_index !499
  %59 = add nsw i32 %58, 1, !llfi_index !500
  store i32 %59, i32* @passed_verification, align 4, !tbaa !196, !llfi_index !501
  br label %full_verify.exit15, !llfi_index !502

full_verify.exit15:                               ; preds = %57, %54, %full_verify.exit
  br i1 %timer_on.016.ph, label %60, label %.critedge4, !llfi_index !503

; <label>:60                                      ; preds = %full_verify.exit15
  tail call void @timer_stop(i32 3) #2, !llfi_index !504
  br label %.critedge4, !llfi_index !505

.critedge4:                                       ; preds = %60, %full_verify.exit15
  %61 = load i32* @passed_verification, align 4, !tbaa !196, !llfi_index !506
  %62 = icmp eq i32 %61, 51, !llfi_index !507
  br i1 %62, label %64, label %63, !llfi_index !508

; <label>:63                                      ; preds = %.critedge4
  store i32 0, i32* @passed_verification, align 4, !tbaa !196, !llfi_index !509
  br label %64, !llfi_index !510

; <label>:64                                      ; preds = %63, %.critedge4
  %65 = phi i32 [ 51, %.critedge4 ], [ 0, %63 ], !llfi_index !511
  %66 = fdiv double 6.553600e+05, %10, !llfi_index !512
  %67 = fdiv double %66, 1.000000e+06, !llfi_index !513
  tail call void @c_print_results(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8 signext 83, i32 1024, i32 64, i32 0, i32 10, double %10, double %67, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i32 %65, i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str16, i64 0, i64 0)) #2, !llfi_index !514
  br i1 %timer_on.016.ph, label %68, label %84, !llfi_index !515

; <label>:68                                      ; preds = %64
  %69 = tail call double @timer_read(i32 3) #2, !llfi_index !516
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str22, i64 0, i64 0)), !llfi_index !517
  %70 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str18, i64 0, i64 0), double %69) #2, !llfi_index !518
  %71 = fcmp oeq double %69, 0.000000e+00, !llfi_index !519
  %t_total.0 = select i1 %71, double 1.000000e+00, double %69, !llfi_index !520
  %72 = tail call double @timer_read(i32 1) #2, !llfi_index !521
  %73 = fdiv double %72, %t_total.0, !llfi_index !522
  %74 = fmul double %73, 1.000000e+02, !llfi_index !523
  %75 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str19, i64 0, i64 0), double %72, double %74) #2, !llfi_index !524
  %76 = tail call double @timer_read(i32 0) #2, !llfi_index !525
  %77 = fdiv double %76, %t_total.0, !llfi_index !526
  %78 = fmul double %77, 1.000000e+02, !llfi_index !527
  %79 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str20, i64 0, i64 0), double %76, double %78) #2, !llfi_index !528
  %80 = tail call double @timer_read(i32 2) #2, !llfi_index !529
  %81 = fdiv double %80, %t_total.0, !llfi_index !530
  %82 = fmul double %81, 1.000000e+02, !llfi_index !531
  %83 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str21, i64 0, i64 0), double %80, double %82) #2, !llfi_index !532
  br label %84, !llfi_index !533

; <label>:84                                      ; preds = %68, %64
  ret i32 0, !llfi_index !534
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @timer_clear(i32 %n) #0 {
  %1 = sext i32 %n to i64, !llfi_index !535
  %2 = getelementptr inbounds [64 x double]* @elapsed, i64 0, i64 %1, !llfi_index !536
  store double 0.000000e+00, double* %2, align 8, !tbaa !3, !llfi_index !537
  ret void, !llfi_index !538
}

; Function Attrs: nounwind uwtable
define void @timer_start(i32 %n) #0 {
  %t.i = alloca double, align 8, !llfi_index !539
  %1 = bitcast double* %t.i to i8*, !llfi_index !540
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !llfi_index !541
  call void @wtime_(double* %t.i) #2, !llfi_index !542
  %2 = load double* %t.i, align 8, !tbaa !3, !llfi_index !543
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !llfi_index !544
  %3 = sext i32 %n to i64, !llfi_index !545
  %4 = getelementptr inbounds [64 x double]* @start, i64 0, i64 %3, !llfi_index !546
  store double %2, double* %4, align 8, !tbaa !3, !llfi_index !547
  ret void, !llfi_index !548
}

; Function Attrs: nounwind uwtable
define void @timer_stop(i32 %n) #0 {
  %t.i = alloca double, align 8, !llfi_index !549
  %1 = bitcast double* %t.i to i8*, !llfi_index !550
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !llfi_index !551
  call void @wtime_(double* %t.i) #2, !llfi_index !552
  %2 = load double* %t.i, align 8, !tbaa !3, !llfi_index !553
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !llfi_index !554
  %3 = sext i32 %n to i64, !llfi_index !555
  %4 = getelementptr inbounds [64 x double]* @start, i64 0, i64 %3, !llfi_index !556
  %5 = load double* %4, align 8, !tbaa !3, !llfi_index !557
  %6 = fsub double %2, %5, !llfi_index !558
  %7 = getelementptr inbounds [64 x double]* @elapsed, i64 0, i64 %3, !llfi_index !559
  %8 = load double* %7, align 8, !tbaa !3, !llfi_index !560
  %9 = fadd double %8, %6, !llfi_index !561
  store double %9, double* %7, align 8, !tbaa !3, !llfi_index !562
  ret void, !llfi_index !563
}

; Function Attrs: nounwind readonly uwtable
define double @timer_read(i32 %n) #3 {
  %1 = sext i32 %n to i64, !llfi_index !564
  %2 = getelementptr inbounds [64 x double]* @elapsed, i64 0, i64 %1, !llfi_index !565
  %3 = load double* %2, align 8, !tbaa !3, !llfi_index !566
  ret double %3, !llfi_index !567
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @c_print_results(i8* %name, i8 signext %class, i32 %n1, i32 %n2, i32 %n3, i32 %niter, double %t, double %mops, i8* %optype, i32 %passed_verification, i8* %npbversion, i8* nocapture readnone %compiletime, i8* nocapture readnone %cc, i8* nocapture readnone %clink, i8* nocapture readnone %c_lib, i8* nocapture readnone %c_inc, i8* nocapture readnone %cflags, i8* nocapture readnone %clinkflags) #0 {
  %1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str17, i64 0, i64 0), i8* %name) #2, !llfi_index !568
  %2 = sext i8 %class to i32, !llfi_index !569
  %3 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str118, i64 0, i64 0), i32 %2) #2, !llfi_index !570
  %4 = icmp eq i32 %n3, 0, !llfi_index !571
  br i1 %4, label %5, label %13, !llfi_index !572

; <label>:5                                       ; preds = %0
  %6 = sext i32 %n1 to i64, !llfi_index !573
  %7 = icmp eq i32 %n2, 0, !llfi_index !574
  br i1 %7, label %11, label %8, !llfi_index !575

; <label>:8                                       ; preds = %5
  %9 = sext i32 %n2 to i64, !llfi_index !576
  %10 = mul nsw i64 %9, %6, !llfi_index !577
  br label %11, !llfi_index !578

; <label>:11                                      ; preds = %8, %5
  %nn.0 = phi i64 [ %10, %8 ], [ %6, %5 ], !llfi_index !579
  %12 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str219, i64 0, i64 0), i64 %nn.0) #2, !llfi_index !580
  br label %15, !llfi_index !581

; <label>:13                                      ; preds = %0
  %14 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str320, i64 0, i64 0), i32 %n1, i32 %n2, i32 %n3) #2, !llfi_index !582
  br label %15, !llfi_index !583

; <label>:15                                      ; preds = %13, %11
  %16 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str4, i64 0, i64 0), i32 %niter) #2, !llfi_index !584
  %17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str521, i64 0, i64 0), i8* %optype) #2, !llfi_index !585
  %18 = icmp slt i32 %passed_verification, 0, !llfi_index !586
  br i1 %18, label %19, label %20, !llfi_index !587

; <label>:19                                      ; preds = %15
  %puts8 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str2325, i64 0, i64 0)), !llfi_index !588
  br label %24, !llfi_index !589

; <label>:20                                      ; preds = %15
  %21 = icmp eq i32 %passed_verification, 0, !llfi_index !590
  br i1 %21, label %23, label %22, !llfi_index !591

; <label>:22                                      ; preds = %20
  %puts7 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str2224, i64 0, i64 0)), !llfi_index !592
  br label %24, !llfi_index !593

; <label>:23                                      ; preds = %20
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str23, i64 0, i64 0)), !llfi_index !594
  br label %24, !llfi_index !595

; <label>:24                                      ; preds = %23, %22, %19
  %25 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str922, i64 0, i64 0), i8* %npbversion) #2, !llfi_index !596
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str16, i64 0, i64 0)), !llfi_index !597
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([38 x i8]* @str17, i64 0, i64 0)), !llfi_index !598
  %puts3 = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str18, i64 0, i64 0)), !llfi_index !599
  %puts4 = tail call i32 @puts(i8* getelementptr inbounds ([20 x i8]* @str19, i64 0, i64 0)), !llfi_index !600
  %puts5 = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str20, i64 0, i64 0)), !llfi_index !601
  %puts6 = tail call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @str21, i64 0, i64 0)), !llfi_index !602
  ret void, !llfi_index !603
}

; Function Attrs: nounwind uwtable
define void @wtime_(double* nocapture %t) #0 {
  %tv = alloca %struct.timeval, align 8, !llfi_index !604
  %1 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #2, !llfi_index !605
  %2 = load i32* @wtime_.sec, align 4, !tbaa !196, !llfi_index !606
  %3 = icmp slt i32 %2, 0, !llfi_index !607
  %4 = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 0, !llfi_index !608
  %5 = load i64* %4, align 8, !tbaa !609, !llfi_index !612
  br i1 %3, label %6, label %._crit_edge, !llfi_index !613

; <label>:6                                       ; preds = %0
  %7 = trunc i64 %5 to i32, !llfi_index !614
  store i32 %7, i32* @wtime_.sec, align 4, !tbaa !196, !llfi_index !615
  br label %._crit_edge, !llfi_index !616

._crit_edge:                                      ; preds = %6, %0
  %8 = phi i32 [ %7, %6 ], [ %2, %0 ], !llfi_index !617
  %9 = sext i32 %8 to i64, !llfi_index !618
  %10 = sub nsw i64 %5, %9, !llfi_index !619
  %11 = sitofp i64 %10 to double, !llfi_index !620
  %12 = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 1, !llfi_index !621
  %13 = load i64* %12, align 8, !tbaa !622, !llfi_index !623
  %14 = sitofp i64 %13 to double, !llfi_index !624
  %15 = fmul double %14, 1.000000e-06, !llfi_index !625
  %16 = fadd double %11, %15, !llfi_index !626
  store double %16, double* %t, align 8, !tbaa !3, !llfi_index !627
  ret void, !llfi_index !628
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #1

; Function Attrs: nounwind uwtable
define void @print_results(i8* %name, i8 signext %class, i32 %n1, i32 %n2, i32 %n3, i32 %niter, double %t, double %mops, i8* %optype, i32 %verified, i8* %npbversion, i8* nocapture readnone %compiletime, i8* nocapture readnone %cs1, i8* nocapture readnone %cs2, i8* nocapture readnone %cs3, i8* nocapture readnone %cs4, i8* nocapture readnone %cs5, i8* nocapture readnone %cs6, i8* nocapture readnone %cs7) #0 {
  %size = alloca [16 x i8], align 16, !llfi_index !629
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str30, i64 0, i64 0), i8* %name) #2, !llfi_index !630
  %2 = sext i8 %class to i32, !llfi_index !631
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str131, i64 0, i64 0), i32 %2) #2, !llfi_index !632
  %4 = or i32 %n3, %n2, !llfi_index !633
  %5 = icmp eq i32 %4, 0, !llfi_index !634
  br i1 %5, label %6, label %26, !llfi_index !635

; <label>:6                                       ; preds = %0
  %7 = load i8* %name, align 1, !tbaa !636, !llfi_index !637
  %8 = icmp eq i8 %7, 69, !llfi_index !638
  br i1 %8, label %9, label %24, !llfi_index !639

; <label>:9                                       ; preds = %6
  %10 = getelementptr inbounds i8* %name, i64 1, !llfi_index !640
  %11 = load i8* %10, align 1, !tbaa !636, !llfi_index !641
  %12 = icmp eq i8 %11, 80, !llfi_index !642
  br i1 %12, label %13, label %24, !llfi_index !643

; <label>:13                                      ; preds = %9
  %14 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 0, !llfi_index !644
  %15 = call double @ldexp(double 1.000000e+00, i32 %n1) #2, !llfi_index !645
  %16 = call i32 (i8*, i8*, ...)* @sprintf(i8* %14, i8* getelementptr inbounds ([8 x i8]* @.str232, i64 0, i64 0), double %15) #2, !llfi_index !646
  %17 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 14, !llfi_index !647
  %18 = load i8* %17, align 2, !tbaa !636, !llfi_index !648
  %19 = icmp eq i8 %18, 46, !llfi_index !649
  br i1 %19, label %20, label %21, !llfi_index !650

; <label>:20                                      ; preds = %13
  store i8 32, i8* %17, align 2, !tbaa !636, !llfi_index !651
  br label %21, !llfi_index !652

; <label>:21                                      ; preds = %20, %13
  %j.0 = phi i64 [ 14, %20 ], [ 15, %13 ], !llfi_index !653
  %22 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 %j.0, !llfi_index !654
  store i8 0, i8* %22, align 1, !tbaa !636, !llfi_index !655
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str333, i64 0, i64 0), i8* %14) #2, !llfi_index !656
  br label %28, !llfi_index !657

; <label>:24                                      ; preds = %9, %6
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str434, i64 0, i64 0), i32 %n1) #2, !llfi_index !658
  br label %28, !llfi_index !659

; <label>:26                                      ; preds = %0
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str535, i64 0, i64 0), i32 %n1, i32 %n2, i32 %n3) #2, !llfi_index !660
  br label %28, !llfi_index !661

; <label>:28                                      ; preds = %26, %24, %21
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str636, i64 0, i64 0), i32 %niter) #2, !llfi_index !662
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str737, i64 0, i64 0), i8* %optype) #2, !llfi_index !663
  %31 = icmp eq i32 %verified, 0, !llfi_index !664
  br i1 %31, label %34, label %32, !llfi_index !665

; <label>:32                                      ; preds = %28
  %33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str838, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str939, i64 0, i64 0)) #2, !llfi_index !666
  br label %36, !llfi_index !667

; <label>:34                                      ; preds = %28
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str838, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str1040, i64 0, i64 0)) #2, !llfi_index !668
  br label %36, !llfi_index !669

; <label>:36                                      ; preds = %34, %32
  %37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str1141, i64 0, i64 0), i8* %npbversion) #2, !llfi_index !670
  %puts = call i32 @puts(i8* getelementptr inbounds ([194 x i8]* @str42, i64 0, i64 0)), !llfi_index !671
  ret void, !llfi_index !672
}

; Function Attrs: nounwind
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) #1

declare double @ldexp(double, i32)

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!1 = metadata !{i64 1}
!2 = metadata !{i64 2}
!3 = metadata !{metadata !4, metadata !4, i64 0}
!4 = metadata !{metadata !"double", metadata !5, i64 0}
!5 = metadata !{metadata !"omnipotent char", metadata !6, i64 0}
!6 = metadata !{metadata !"Simple C/C++ TBAA"}
!7 = metadata !{i64 3}
!8 = metadata !{i64 4}
!9 = metadata !{i64 5}
!10 = metadata !{i64 6}
!11 = metadata !{i64 7}
!12 = metadata !{i64 8}
!13 = metadata !{i64 9}
!14 = metadata !{i64 10}
!15 = metadata !{i64 11}
!16 = metadata !{i64 12}
!17 = metadata !{i64 13}
!18 = metadata !{i64 14}
!19 = metadata !{i64 15}
!20 = metadata !{i64 16}
!21 = metadata !{i64 17}
!22 = metadata !{i64 18}
!23 = metadata !{i64 19}
!24 = metadata !{i64 20}
!25 = metadata !{i64 21}
!26 = metadata !{i64 22}
!27 = metadata !{i64 23}
!28 = metadata !{i64 24}
!29 = metadata !{i64 25}
!30 = metadata !{i64 26}
!31 = metadata !{i64 27}
!32 = metadata !{i64 28}
!33 = metadata !{i64 29}
!34 = metadata !{i64 30}
!35 = metadata !{i64 31}
!36 = metadata !{i64 32}
!37 = metadata !{i64 33}
!38 = metadata !{i64 34}
!39 = metadata !{i64 35}
!40 = metadata !{i64 36}
!41 = metadata !{i64 37}
!42 = metadata !{i64 38}
!43 = metadata !{i64 39}
!44 = metadata !{i64 40}
!45 = metadata !{i64 41}
!46 = metadata !{i64 42}
!47 = metadata !{i64 43}
!48 = metadata !{i64 44}
!49 = metadata !{i64 45}
!50 = metadata !{i64 46}
!51 = metadata !{i64 47}
!52 = metadata !{i64 48}
!53 = metadata !{i64 49}
!54 = metadata !{i64 50}
!55 = metadata !{i64 51}
!56 = metadata !{i64 52}
!57 = metadata !{i64 53}
!58 = metadata !{i64 54}
!59 = metadata !{i64 55}
!60 = metadata !{i64 56}
!61 = metadata !{i64 57}
!62 = metadata !{i64 58}
!63 = metadata !{i64 59}
!64 = metadata !{i64 60}
!65 = metadata !{i64 61}
!66 = metadata !{i64 62}
!67 = metadata !{i64 63}
!68 = metadata !{i64 64}
!69 = metadata !{i64 65}
!70 = metadata !{i64 66}
!71 = metadata !{i64 67}
!72 = metadata !{i64 68}
!73 = metadata !{i64 69}
!74 = metadata !{i64 70}
!75 = metadata !{i64 71}
!76 = metadata !{i64 72}
!77 = metadata !{i64 73}
!78 = metadata !{i64 74}
!79 = metadata !{i64 75}
!80 = metadata !{i64 76}
!81 = metadata !{i64 77}
!82 = metadata !{i64 78}
!83 = metadata !{i64 79}
!84 = metadata !{i64 80}
!85 = metadata !{i64 81}
!86 = metadata !{i64 82}
!87 = metadata !{i64 83}
!88 = metadata !{i64 84}
!89 = metadata !{i64 85}
!90 = metadata !{i64 86}
!91 = metadata !{i64 87}
!92 = metadata !{i64 88}
!93 = metadata !{i64 89}
!94 = metadata !{i64 90}
!95 = metadata !{i64 91}
!96 = metadata !{i64 92}
!97 = metadata !{i64 93}
!98 = metadata !{i64 94}
!99 = metadata !{i64 95}
!100 = metadata !{i64 96}
!101 = metadata !{i64 97}
!102 = metadata !{i64 98}
!103 = metadata !{i64 99}
!104 = metadata !{i64 100}
!105 = metadata !{i64 101}
!106 = metadata !{i64 102}
!107 = metadata !{i64 103}
!108 = metadata !{i64 104}
!109 = metadata !{i64 105}
!110 = metadata !{i64 106}
!111 = metadata !{i64 107}
!112 = metadata !{i64 108}
!113 = metadata !{i64 109}
!114 = metadata !{i64 110}
!115 = metadata !{i64 111}
!116 = metadata !{i64 112}
!117 = metadata !{i64 113}
!118 = metadata !{i64 114}
!119 = metadata !{i64 115}
!120 = metadata !{i64 116}
!121 = metadata !{i64 117}
!122 = metadata !{i64 118}
!123 = metadata !{i64 119}
!124 = metadata !{i64 120}
!125 = metadata !{i64 121}
!126 = metadata !{i64 122}
!127 = metadata !{i64 123}
!128 = metadata !{i64 124}
!129 = metadata !{i64 125}
!130 = metadata !{i64 126}
!131 = metadata !{i64 127}
!132 = metadata !{i64 128}
!133 = metadata !{i64 129}
!134 = metadata !{i64 130}
!135 = metadata !{i64 131}
!136 = metadata !{i64 132}
!137 = metadata !{i64 133}
!138 = metadata !{i64 134}
!139 = metadata !{i64 135}
!140 = metadata !{i64 136}
!141 = metadata !{i64 137}
!142 = metadata !{i64 138}
!143 = metadata !{i64 139}
!144 = metadata !{i64 140}
!145 = metadata !{i64 141}
!146 = metadata !{i64 142}
!147 = metadata !{i64 143}
!148 = metadata !{i64 144}
!149 = metadata !{i64 145}
!150 = metadata !{i64 146}
!151 = metadata !{i64 147}
!152 = metadata !{i64 148}
!153 = metadata !{i64 149}
!154 = metadata !{i64 150}
!155 = metadata !{i64 151}
!156 = metadata !{i64 152}
!157 = metadata !{i64 153}
!158 = metadata !{i64 154}
!159 = metadata !{i64 155}
!160 = metadata !{i64 156}
!161 = metadata !{i64 157}
!162 = metadata !{i64 158}
!163 = metadata !{i64 159}
!164 = metadata !{i64 160}
!165 = metadata !{i64 161}
!166 = metadata !{i64 162}
!167 = metadata !{i64 163}
!168 = metadata !{i64 164}
!169 = metadata !{i64 165}
!170 = metadata !{i64 166}
!171 = metadata !{i64 167}
!172 = metadata !{i64 168}
!173 = metadata !{i64 169}
!174 = metadata !{i64 170}
!175 = metadata !{i64 171}
!176 = metadata !{i64 172}
!177 = metadata !{i64 173}
!178 = metadata !{i64 174}
!179 = metadata !{i64 175}
!180 = metadata !{i64 176}
!181 = metadata !{i64 177}
!182 = metadata !{i64 178}
!183 = metadata !{i64 179}
!184 = metadata !{i64 180}
!185 = metadata !{i64 181}
!186 = metadata !{i64 182}
!187 = metadata !{i64 183}
!188 = metadata !{i64 184}
!189 = metadata !{i64 185}
!190 = metadata !{i64 186}
!191 = metadata !{i64 187}
!192 = metadata !{i64 188}
!193 = metadata !{i64 189}
!194 = metadata !{i64 190}
!195 = metadata !{i64 191}
!196 = metadata !{metadata !197, metadata !197, i64 0}
!197 = metadata !{metadata !"int", metadata !5, i64 0}
!198 = metadata !{i64 192}
!199 = metadata !{i64 193}
!200 = metadata !{i64 194}
!201 = metadata !{i64 195}
!202 = metadata !{i64 196}
!203 = metadata !{metadata !204, metadata !204, i64 0}
!204 = metadata !{metadata !"any pointer", metadata !5, i64 0}
!205 = metadata !{i64 197}
!206 = metadata !{i64 198}
!207 = metadata !{i64 199}
!208 = metadata !{i64 200}
!209 = metadata !{i64 201}
!210 = metadata !{i64 202}
!211 = metadata !{i64 203}
!212 = metadata !{i64 204}
!213 = metadata !{i64 205}
!214 = metadata !{i64 206}
!215 = metadata !{i64 207}
!216 = metadata !{i64 208}
!217 = metadata !{i64 209}
!218 = metadata !{i64 210}
!219 = metadata !{i64 211}
!220 = metadata !{i64 212}
!221 = metadata !{i64 213}
!222 = metadata !{i64 214}
!223 = metadata !{i64 215}
!224 = metadata !{i64 216}
!225 = metadata !{i64 217}
!226 = metadata !{i64 218}
!227 = metadata !{i64 219}
!228 = metadata !{i64 220}
!229 = metadata !{i64 221}
!230 = metadata !{i64 222}
!231 = metadata !{i64 223}
!232 = metadata !{i64 224}
!233 = metadata !{i64 225}
!234 = metadata !{i64 226}
!235 = metadata !{i64 227}
!236 = metadata !{i64 228}
!237 = metadata !{i64 229}
!238 = metadata !{i64 230}
!239 = metadata !{i64 231}
!240 = metadata !{i64 232}
!241 = metadata !{i64 233}
!242 = metadata !{i64 234}
!243 = metadata !{i64 235}
!244 = metadata !{i64 236}
!245 = metadata !{i64 237}
!246 = metadata !{i64 238}
!247 = metadata !{i64 239}
!248 = metadata !{i64 240}
!249 = metadata !{i64 241}
!250 = metadata !{i64 242}
!251 = metadata !{i64 243}
!252 = metadata !{i64 244}
!253 = metadata !{i64 245}
!254 = metadata !{i64 246}
!255 = metadata !{i64 247}
!256 = metadata !{i64 248}
!257 = metadata !{i64 249}
!258 = metadata !{i64 250}
!259 = metadata !{i64 251}
!260 = metadata !{i64 252}
!261 = metadata !{i64 253}
!262 = metadata !{i64 254}
!263 = metadata !{i64 255}
!264 = metadata !{i64 256}
!265 = metadata !{i64 257}
!266 = metadata !{i64 258}
!267 = metadata !{i64 259}
!268 = metadata !{i64 260}
!269 = metadata !{i64 261}
!270 = metadata !{i64 262}
!271 = metadata !{i64 263}
!272 = metadata !{i64 264}
!273 = metadata !{i64 265}
!274 = metadata !{i64 266}
!275 = metadata !{i64 267}
!276 = metadata !{i64 268}
!277 = metadata !{i64 269}
!278 = metadata !{i64 270}
!279 = metadata !{i64 271}
!280 = metadata !{i64 272}
!281 = metadata !{i64 273}
!282 = metadata !{i64 274}
!283 = metadata !{i64 275}
!284 = metadata !{i64 276}
!285 = metadata !{i64 277}
!286 = metadata !{i64 278}
!287 = metadata !{i64 279}
!288 = metadata !{i64 280}
!289 = metadata !{i64 281}
!290 = metadata !{i64 282}
!291 = metadata !{i64 283}
!292 = metadata !{i64 284}
!293 = metadata !{i64 285}
!294 = metadata !{i64 286}
!295 = metadata !{i64 287}
!296 = metadata !{i64 288}
!297 = metadata !{i64 289}
!298 = metadata !{i64 290}
!299 = metadata !{i64 291}
!300 = metadata !{i64 292}
!301 = metadata !{i64 293}
!302 = metadata !{i64 294}
!303 = metadata !{i64 295}
!304 = metadata !{i64 296}
!305 = metadata !{i64 297}
!306 = metadata !{i64 298}
!307 = metadata !{i64 299}
!308 = metadata !{i64 300}
!309 = metadata !{i64 301}
!310 = metadata !{i64 302}
!311 = metadata !{i64 303}
!312 = metadata !{i64 304}
!313 = metadata !{i64 305}
!314 = metadata !{i64 306}
!315 = metadata !{i64 307}
!316 = metadata !{i64 308}
!317 = metadata !{i64 309}
!318 = metadata !{i64 310}
!319 = metadata !{i64 311}
!320 = metadata !{i64 312}
!321 = metadata !{i64 313}
!322 = metadata !{i64 314}
!323 = metadata !{i64 315}
!324 = metadata !{i64 316}
!325 = metadata !{i64 317}
!326 = metadata !{i64 318}
!327 = metadata !{i64 319}
!328 = metadata !{i64 320}
!329 = metadata !{i64 321}
!330 = metadata !{i64 322}
!331 = metadata !{i64 323}
!332 = metadata !{i64 324}
!333 = metadata !{i64 325}
!334 = metadata !{i64 326}
!335 = metadata !{i64 327}
!336 = metadata !{i64 328}
!337 = metadata !{i64 329}
!338 = metadata !{i64 330}
!339 = metadata !{i64 331}
!340 = metadata !{i64 332}
!341 = metadata !{i64 333}
!342 = metadata !{i64 334}
!343 = metadata !{i64 335}
!344 = metadata !{i64 336}
!345 = metadata !{i64 337}
!346 = metadata !{i64 338}
!347 = metadata !{i64 339}
!348 = metadata !{i64 340}
!349 = metadata !{i64 341}
!350 = metadata !{i64 342}
!351 = metadata !{i64 343}
!352 = metadata !{i64 344}
!353 = metadata !{i64 345}
!354 = metadata !{i64 346}
!355 = metadata !{i64 347}
!356 = metadata !{i64 348}
!357 = metadata !{i64 349}
!358 = metadata !{i64 350}
!359 = metadata !{i64 351}
!360 = metadata !{i64 352}
!361 = metadata !{i64 353}
!362 = metadata !{i64 354}
!363 = metadata !{i64 355}
!364 = metadata !{i64 356}
!365 = metadata !{i64 357}
!366 = metadata !{i64 358}
!367 = metadata !{i64 359}
!368 = metadata !{i64 360}
!369 = metadata !{i64 361}
!370 = metadata !{i64 362}
!371 = metadata !{i64 363}
!372 = metadata !{i64 364}
!373 = metadata !{i64 365}
!374 = metadata !{i64 366}
!375 = metadata !{i64 367}
!376 = metadata !{i64 368}
!377 = metadata !{i64 369}
!378 = metadata !{i64 370}
!379 = metadata !{i64 371}
!380 = metadata !{i64 372}
!381 = metadata !{i64 373}
!382 = metadata !{i64 374}
!383 = metadata !{i64 375}
!384 = metadata !{i64 376}
!385 = metadata !{i64 377}
!386 = metadata !{i64 378}
!387 = metadata !{i64 379}
!388 = metadata !{i64 380}
!389 = metadata !{i64 381}
!390 = metadata !{i64 382}
!391 = metadata !{i64 383}
!392 = metadata !{i64 384}
!393 = metadata !{i64 385}
!394 = metadata !{i64 386}
!395 = metadata !{i64 387}
!396 = metadata !{i64 388}
!397 = metadata !{i64 389}
!398 = metadata !{i64 390}
!399 = metadata !{i64 391}
!400 = metadata !{i64 392}
!401 = metadata !{i64 393}
!402 = metadata !{i64 394}
!403 = metadata !{i64 395}
!404 = metadata !{i64 396}
!405 = metadata !{i64 397}
!406 = metadata !{i64 398}
!407 = metadata !{i64 399}
!408 = metadata !{i64 400}
!409 = metadata !{i64 401}
!410 = metadata !{i64 402}
!411 = metadata !{i64 403}
!412 = metadata !{i64 404}
!413 = metadata !{i64 405}
!414 = metadata !{i64 406}
!415 = metadata !{i64 407}
!416 = metadata !{i64 408}
!417 = metadata !{i64 409}
!418 = metadata !{i64 410}
!419 = metadata !{i64 411}
!420 = metadata !{i64 412}
!421 = metadata !{i64 413}
!422 = metadata !{i64 414}
!423 = metadata !{i64 415}
!424 = metadata !{i64 416}
!425 = metadata !{i64 417}
!426 = metadata !{i64 418}
!427 = metadata !{i64 419}
!428 = metadata !{i64 420}
!429 = metadata !{i64 421}
!430 = metadata !{i64 422}
!431 = metadata !{i64 423}
!432 = metadata !{i64 424}
!433 = metadata !{i64 425}
!434 = metadata !{i64 426}
!435 = metadata !{i64 427}
!436 = metadata !{i64 428}
!437 = metadata !{i64 429}
!438 = metadata !{i64 430}
!439 = metadata !{i64 431}
!440 = metadata !{i64 432}
!441 = metadata !{i64 433}
!442 = metadata !{i64 434}
!443 = metadata !{i64 435}
!444 = metadata !{i64 436}
!445 = metadata !{i64 437}
!446 = metadata !{i64 438}
!447 = metadata !{i64 439}
!448 = metadata !{i64 440}
!449 = metadata !{i64 441}
!450 = metadata !{i64 442}
!451 = metadata !{i64 443}
!452 = metadata !{i64 444}
!453 = metadata !{i64 445}
!454 = metadata !{i64 446}
!455 = metadata !{i64 447}
!456 = metadata !{i64 448}
!457 = metadata !{i64 449}
!458 = metadata !{i64 450}
!459 = metadata !{i64 451}
!460 = metadata !{i64 452}
!461 = metadata !{i64 453}
!462 = metadata !{i64 454}
!463 = metadata !{i64 455}
!464 = metadata !{i64 456}
!465 = metadata !{i64 457}
!466 = metadata !{i64 458}
!467 = metadata !{i64 459}
!468 = metadata !{i64 460}
!469 = metadata !{i64 461}
!470 = metadata !{i64 462}
!471 = metadata !{i64 463}
!472 = metadata !{i64 464}
!473 = metadata !{i64 465}
!474 = metadata !{i64 466}
!475 = metadata !{i64 467}
!476 = metadata !{i64 468}
!477 = metadata !{i64 469}
!478 = metadata !{i64 470}
!479 = metadata !{i64 471}
!480 = metadata !{i64 472}
!481 = metadata !{i64 473}
!482 = metadata !{i64 474}
!483 = metadata !{i64 475}
!484 = metadata !{i64 476}
!485 = metadata !{i64 477}
!486 = metadata !{i64 478}
!487 = metadata !{i64 479}
!488 = metadata !{i64 480}
!489 = metadata !{i64 481}
!490 = metadata !{i64 482}
!491 = metadata !{i64 483}
!492 = metadata !{i64 484}
!493 = metadata !{i64 485}
!494 = metadata !{i64 486}
!495 = metadata !{i64 487}
!496 = metadata !{i64 488}
!497 = metadata !{i64 489}
!498 = metadata !{i64 490}
!499 = metadata !{i64 491}
!500 = metadata !{i64 492}
!501 = metadata !{i64 493}
!502 = metadata !{i64 494}
!503 = metadata !{i64 495}
!504 = metadata !{i64 496}
!505 = metadata !{i64 497}
!506 = metadata !{i64 498}
!507 = metadata !{i64 499}
!508 = metadata !{i64 500}
!509 = metadata !{i64 501}
!510 = metadata !{i64 502}
!511 = metadata !{i64 503}
!512 = metadata !{i64 504}
!513 = metadata !{i64 505}
!514 = metadata !{i64 506}
!515 = metadata !{i64 507}
!516 = metadata !{i64 508}
!517 = metadata !{i64 509}
!518 = metadata !{i64 510}
!519 = metadata !{i64 511}
!520 = metadata !{i64 512}
!521 = metadata !{i64 513}
!522 = metadata !{i64 514}
!523 = metadata !{i64 515}
!524 = metadata !{i64 516}
!525 = metadata !{i64 517}
!526 = metadata !{i64 518}
!527 = metadata !{i64 519}
!528 = metadata !{i64 520}
!529 = metadata !{i64 521}
!530 = metadata !{i64 522}
!531 = metadata !{i64 523}
!532 = metadata !{i64 524}
!533 = metadata !{i64 525}
!534 = metadata !{i64 526}
!535 = metadata !{i64 527}
!536 = metadata !{i64 528}
!537 = metadata !{i64 529}
!538 = metadata !{i64 530}
!539 = metadata !{i64 531}
!540 = metadata !{i64 532}
!541 = metadata !{i64 533}
!542 = metadata !{i64 534}
!543 = metadata !{i64 535}
!544 = metadata !{i64 536}
!545 = metadata !{i64 537}
!546 = metadata !{i64 538}
!547 = metadata !{i64 539}
!548 = metadata !{i64 540}
!549 = metadata !{i64 541}
!550 = metadata !{i64 542}
!551 = metadata !{i64 543}
!552 = metadata !{i64 544}
!553 = metadata !{i64 545}
!554 = metadata !{i64 546}
!555 = metadata !{i64 547}
!556 = metadata !{i64 548}
!557 = metadata !{i64 549}
!558 = metadata !{i64 550}
!559 = metadata !{i64 551}
!560 = metadata !{i64 552}
!561 = metadata !{i64 553}
!562 = metadata !{i64 554}
!563 = metadata !{i64 555}
!564 = metadata !{i64 556}
!565 = metadata !{i64 557}
!566 = metadata !{i64 558}
!567 = metadata !{i64 559}
!568 = metadata !{i64 560}
!569 = metadata !{i64 561}
!570 = metadata !{i64 562}
!571 = metadata !{i64 563}
!572 = metadata !{i64 564}
!573 = metadata !{i64 565}
!574 = metadata !{i64 566}
!575 = metadata !{i64 567}
!576 = metadata !{i64 568}
!577 = metadata !{i64 569}
!578 = metadata !{i64 570}
!579 = metadata !{i64 571}
!580 = metadata !{i64 572}
!581 = metadata !{i64 573}
!582 = metadata !{i64 574}
!583 = metadata !{i64 575}
!584 = metadata !{i64 576}
!585 = metadata !{i64 577}
!586 = metadata !{i64 578}
!587 = metadata !{i64 579}
!588 = metadata !{i64 580}
!589 = metadata !{i64 581}
!590 = metadata !{i64 582}
!591 = metadata !{i64 583}
!592 = metadata !{i64 584}
!593 = metadata !{i64 585}
!594 = metadata !{i64 586}
!595 = metadata !{i64 587}
!596 = metadata !{i64 588}
!597 = metadata !{i64 589}
!598 = metadata !{i64 590}
!599 = metadata !{i64 591}
!600 = metadata !{i64 592}
!601 = metadata !{i64 593}
!602 = metadata !{i64 594}
!603 = metadata !{i64 595}
!604 = metadata !{i64 596}
!605 = metadata !{i64 597}
!606 = metadata !{i64 598}
!607 = metadata !{i64 599}
!608 = metadata !{i64 600}
!609 = metadata !{metadata !610, metadata !611, i64 0}
!610 = metadata !{metadata !"timeval", metadata !611, i64 0, metadata !611, i64 8}
!611 = metadata !{metadata !"long", metadata !5, i64 0}
!612 = metadata !{i64 601}
!613 = metadata !{i64 602}
!614 = metadata !{i64 603}
!615 = metadata !{i64 604}
!616 = metadata !{i64 605}
!617 = metadata !{i64 606}
!618 = metadata !{i64 607}
!619 = metadata !{i64 608}
!620 = metadata !{i64 609}
!621 = metadata !{i64 610}
!622 = metadata !{metadata !610, metadata !611, i64 8}
!623 = metadata !{i64 611}
!624 = metadata !{i64 612}
!625 = metadata !{i64 613}
!626 = metadata !{i64 614}
!627 = metadata !{i64 615}
!628 = metadata !{i64 616}
!629 = metadata !{i64 617}
!630 = metadata !{i64 618}
!631 = metadata !{i64 619}
!632 = metadata !{i64 620}
!633 = metadata !{i64 621}
!634 = metadata !{i64 622}
!635 = metadata !{i64 623}
!636 = metadata !{metadata !5, metadata !5, i64 0}
!637 = metadata !{i64 624}
!638 = metadata !{i64 625}
!639 = metadata !{i64 626}
!640 = metadata !{i64 627}
!641 = metadata !{i64 628}
!642 = metadata !{i64 629}
!643 = metadata !{i64 630}
!644 = metadata !{i64 631}
!645 = metadata !{i64 632}
!646 = metadata !{i64 633}
!647 = metadata !{i64 634}
!648 = metadata !{i64 635}
!649 = metadata !{i64 636}
!650 = metadata !{i64 637}
!651 = metadata !{i64 638}
!652 = metadata !{i64 639}
!653 = metadata !{i64 640}
!654 = metadata !{i64 641}
!655 = metadata !{i64 642}
!656 = metadata !{i64 643}
!657 = metadata !{i64 644}
!658 = metadata !{i64 645}
!659 = metadata !{i64 646}
!660 = metadata !{i64 647}
!661 = metadata !{i64 648}
!662 = metadata !{i64 649}
!663 = metadata !{i64 650}
!664 = metadata !{i64 651}
!665 = metadata !{i64 652}
!666 = metadata !{i64 653}
!667 = metadata !{i64 654}
!668 = metadata !{i64 655}
!669 = metadata !{i64 656}
!670 = metadata !{i64 657}
!671 = metadata !{i64 658}
!672 = metadata !{i64 659}
