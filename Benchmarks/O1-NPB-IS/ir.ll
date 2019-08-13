; ModuleID = '/home/lucas/DependableSystemsLab/benchmarks/NPB-IS/fi/llfi-O1/npb-is.ll'
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
@.str4 = private unnamed_addr constant [57 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER) - IS Benchmark\0A\0A\00", align 1
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
@.str17 = private unnamed_addr constant [22 x i8] c"\0AAdditional timers -\0A\00", align 1
@.str18 = private unnamed_addr constant [25 x i8] c" Total execution: %8.3f\0A\00", align 1
@.str19 = private unnamed_addr constant [35 x i8] c" Initialization : %8.3f (%5.2f%%)\0A\00", align 1
@.str20 = private unnamed_addr constant [35 x i8] c" Benchmarking   : %8.3f (%5.2f%%)\0A\00", align 1
@.str21 = private unnamed_addr constant [35 x i8] c" Sorting        : %8.3f (%5.2f%%)\0A\00", align 1
@str = private unnamed_addr constant [56 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER) - IS Benchmark\0A\00"
@str22 = private unnamed_addr constant [21 x i8] c"\0AAdditional timers -\00"
@elapsed = internal unnamed_addr global [64 x double] zeroinitializer, align 16
@start = internal unnamed_addr global [64 x double] zeroinitializer, align 16
@.str22 = private unnamed_addr constant [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", align 1
@.str123 = private unnamed_addr constant [46 x i8] c" Class           =                        %c\0A\00", align 1
@.str224 = private unnamed_addr constant [38 x i8] c" Size            =             %12ld\0A\00", align 1
@.str325 = private unnamed_addr constant [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", align 1
@.str426 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str527 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str628 = private unnamed_addr constant [45 x i8] c" Verification    =            NOT PERFORMED\0A\00", align 1
@.str729 = private unnamed_addr constant [45 x i8] c" Verification    =               SUCCESSFUL\0A\00", align 1
@.str830 = private unnamed_addr constant [45 x i8] c" Verification    =             UNSUCCESSFUL\0A\00", align 1
@.str931 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str1032 = private unnamed_addr constant [41 x i8] c"\0A--------------------------------------\0A\00", align 1
@.str1133 = private unnamed_addr constant [39 x i8] c" Please send all errors/feedbacks to:\0A\00", align 1
@.str1234 = private unnamed_addr constant [34 x i8] c" Center for Manycore Programming\0A\00", align 1
@.str1335 = private unnamed_addr constant [21 x i8] c" cmp@aces.snu.ac.kr\0A\00", align 1
@.str1436 = private unnamed_addr constant [24 x i8] c" http://aces.snu.ac.kr\0A\00", align 1
@.str1537 = private unnamed_addr constant [40 x i8] c"--------------------------------------\0A\00", align 1
@str38 = private unnamed_addr constant [44 x i8] c" Verification    =             UNSUCCESSFUL\00"
@str16 = private unnamed_addr constant [40 x i8] c"\0A--------------------------------------\00"
@str17 = private unnamed_addr constant [38 x i8] c" Please send all errors/feedbacks to:\00"
@str18 = private unnamed_addr constant [33 x i8] c" Center for Manycore Programming\00"
@str19 = private unnamed_addr constant [20 x i8] c" cmp@aces.snu.ac.kr\00"
@str20 = private unnamed_addr constant [23 x i8] c" http://aces.snu.ac.kr\00"
@str21 = private unnamed_addr constant [39 x i8] c"--------------------------------------\00"
@str2239 = private unnamed_addr constant [44 x i8] c" Verification    =               SUCCESSFUL\00"
@str23 = private unnamed_addr constant [44 x i8] c" Verification    =            NOT PERFORMED\00"
@wtime_.sec = internal unnamed_addr global i32 -1, align 4
@.str44 = private unnamed_addr constant [28 x i8] c"\0A\0A %s Benchmark Completed.\0A\00", align 1
@.str145 = private unnamed_addr constant [37 x i8] c" Class           =             %12c\0A\00", align 1
@.str246 = private unnamed_addr constant [8 x i8] c"%15.0lf\00", align 1
@.str347 = private unnamed_addr constant [34 x i8] c" Size            =          %15s\0A\00", align 1
@.str448 = private unnamed_addr constant [37 x i8] c" Size            =             %12d\0A\00", align 1
@.str549 = private unnamed_addr constant [42 x i8] c" Size            =           %4dx%4dx%4d\0A\00", align 1
@.str650 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str751 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str852 = private unnamed_addr constant [37 x i8] c" Verification    =             %12s\0A\00", align 1
@.str953 = private unnamed_addr constant [11 x i8] c"SUCCESSFUL\00", align 1
@.str1054 = private unnamed_addr constant [13 x i8] c"UNSUCCESSFUL\00", align 1
@.str1155 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str1256 = private unnamed_addr constant [195 x i8] c"\0A--------------------------------------\0A Please send all errors/feedbacks to:\0A Center for Manycore Programming\0A cmp@aces.snu.ac.kr\0A http://aces.snu.ac.kr\0A--------------------------------------\0A\0A\00", align 1
@str57 = private unnamed_addr constant [194 x i8] c"\0A--------------------------------------\0A Please send all errors/feedbacks to:\0A Center for Manycore Programming\0A cmp@aces.snu.ac.kr\0A http://aces.snu.ac.kr\0A--------------------------------------\0A\00"

; Function Attrs: nounwind uwtable
define double @randlc(double* nocapture %X, double* nocapture readonly %A) #0 {
  %.b = load i1* @randlc.KS, align 1, !llfi_index !1
  br i1 %.b, label %15, label %1, !llfi_index !2

; <label>:1                                       ; preds = %0
  store double 1.000000e+00, double* @randlc.R23, align 8, !tbaa !3, !llfi_index !7
  store double 1.000000e+00, double* @randlc.R46, align 8, !tbaa !3, !llfi_index !8
  store double 1.000000e+00, double* @randlc.T23, align 8, !tbaa !3, !llfi_index !9
  store double 1.000000e+00, double* @randlc.T46, align 8, !tbaa !3, !llfi_index !10
  br label %4, !llfi_index !11

.preheader:                                       ; preds = %4
  %2 = extractelement <2 x double> %6, i32 1, !llfi_index !12
  store double %2, double* @randlc.R23, align 8, !tbaa !3, !llfi_index !13
  %3 = extractelement <2 x double> %6, i32 0, !llfi_index !14
  store double %3, double* @randlc.T23, align 8, !tbaa !3, !llfi_index !15
  %randlc.R46.promoted = load double* @randlc.R46, align 8, !tbaa !3, !llfi_index !16
  %randlc.T46.promoted = load double* @randlc.T46, align 8, !tbaa !3, !llfi_index !17
  br label %8, !llfi_index !18

; <label>:4                                       ; preds = %4, %1
  %i.03 = phi i32 [ 1, %1 ], [ %7, %4 ], !llfi_index !19
  %5 = phi <2 x double> [ <double 1.000000e+00, double 1.000000e+00>, %1 ], [ %6, %4 ], !llfi_index !20
  %6 = fmul <2 x double> %5, <double 2.000000e+00, double 5.000000e-01>, !llfi_index !21
  %7 = add nsw i32 %i.03, 1, !llfi_index !22
  %exitcond9 = icmp eq i32 %7, 24, !llfi_index !23
  br i1 %exitcond9, label %.preheader, label %4, !llfi_index !24

; <label>:8                                       ; preds = %8, %.preheader
  %9 = phi double [ %randlc.T46.promoted, %.preheader ], [ %12, %8 ], !llfi_index !25
  %10 = phi double [ %randlc.R46.promoted, %.preheader ], [ %11, %8 ], !llfi_index !26
  %i.11 = phi i32 [ 1, %.preheader ], [ %13, %8 ], !llfi_index !27
  %11 = fmul double %10, 5.000000e-01, !llfi_index !28
  %12 = fmul double %9, 2.000000e+00, !llfi_index !29
  %13 = add nsw i32 %i.11, 1, !llfi_index !30
  %exitcond = icmp eq i32 %13, 47, !llfi_index !31
  br i1 %exitcond, label %14, label %8, !llfi_index !32

; <label>:14                                      ; preds = %8
  store double %11, double* @randlc.R46, align 8, !tbaa !3, !llfi_index !33
  store double %12, double* @randlc.T46, align 8, !tbaa !3, !llfi_index !34
  store i1 true, i1* @randlc.KS, align 1, !llfi_index !35
  br label %15, !llfi_index !36

; <label>:15                                      ; preds = %14, %0
  %16 = load double* @randlc.R23, align 8, !tbaa !3, !llfi_index !37
  %17 = load double* %A, align 8, !tbaa !3, !llfi_index !38
  %18 = fmul double %16, %17, !llfi_index !39
  %19 = fptosi double %18 to i32, !llfi_index !40
  %20 = sitofp i32 %19 to double, !llfi_index !41
  %21 = load double* @randlc.T23, align 8, !tbaa !3, !llfi_index !42
  %22 = fmul double %21, %20, !llfi_index !43
  %23 = fsub double %17, %22, !llfi_index !44
  %24 = load double* %X, align 8, !tbaa !3, !llfi_index !45
  %25 = fmul double %16, %24, !llfi_index !46
  %26 = fptosi double %25 to i32, !llfi_index !47
  %27 = sitofp i32 %26 to double, !llfi_index !48
  %28 = fmul double %21, %27, !llfi_index !49
  %29 = fsub double %24, %28, !llfi_index !50
  %30 = fmul double %20, %29, !llfi_index !51
  %31 = fmul double %23, %27, !llfi_index !52
  %32 = fadd double %31, %30, !llfi_index !53
  %33 = fmul double %16, %32, !llfi_index !54
  %34 = fptosi double %33 to i32, !llfi_index !55
  %35 = sitofp i32 %34 to double, !llfi_index !56
  %36 = fmul double %21, %35, !llfi_index !57
  %37 = fsub double %32, %36, !llfi_index !58
  %38 = fmul double %21, %37, !llfi_index !59
  %39 = fmul double %23, %29, !llfi_index !60
  %40 = fadd double %39, %38, !llfi_index !61
  %41 = load double* @randlc.R46, align 8, !tbaa !3, !llfi_index !62
  %42 = fmul double %41, %40, !llfi_index !63
  %43 = fptosi double %42 to i32, !llfi_index !64
  %44 = sitofp i32 %43 to double, !llfi_index !65
  %45 = load double* @randlc.T46, align 8, !tbaa !3, !llfi_index !66
  %46 = fmul double %45, %44, !llfi_index !67
  %47 = fsub double %40, %46, !llfi_index !68
  store double %47, double* %X, align 8, !tbaa !3, !llfi_index !69
  %48 = load double* @randlc.R46, align 8, !tbaa !3, !llfi_index !70
  %49 = fmul double %48, %47, !llfi_index !71
  ret double %49, !llfi_index !72
}

; Function Attrs: nounwind uwtable
define void @create_seq(double %seed, double %a) #0 {
  %1 = alloca double, align 8, !llfi_index !73
  %2 = alloca double, align 8, !llfi_index !74
  store double %seed, double* %1, align 8, !tbaa !3, !llfi_index !75
  store double %a, double* %2, align 8, !tbaa !3, !llfi_index !76
  br label %3, !llfi_index !77

; <label>:3                                       ; preds = %3, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %3 ], !llfi_index !78
  %4 = call double @randlc(double* %1, double* %2), !llfi_index !79
  %5 = call double @randlc(double* %1, double* %2), !llfi_index !80
  %6 = fadd double %4, %5, !llfi_index !81
  %7 = call double @randlc(double* %1, double* %2), !llfi_index !82
  %8 = fadd double %6, %7, !llfi_index !83
  %9 = call double @randlc(double* %1, double* %2), !llfi_index !84
  %10 = fadd double %8, %9, !llfi_index !85
  %11 = fmul double %10, 5.120000e+02, !llfi_index !86
  %12 = fptosi double %11 to i32, !llfi_index !87
  %13 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %indvars.iv, !llfi_index !88
  store i32 %12, i32* %13, align 4, !tbaa !89, !llfi_index !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !92
  %exitcond = icmp eq i64 %indvars.iv.next, 65536, !llfi_index !93
  br i1 %exitcond, label %14, label %3, !llfi_index !94

; <label>:14                                      ; preds = %3
  ret void, !llfi_index !95
}

; Function Attrs: nounwind uwtable
define void @full_verify() #0 {
  %1 = load i32** @key_buff_ptr_global, align 8, !tbaa !96, !llfi_index !98
  br label %2, !llfi_index !99

; <label>:2                                       ; preds = %2, %0
  %indvars.iv4 = phi i64 [ 0, %0 ], [ %indvars.iv.next5, %2 ], !llfi_index !100
  %3 = getelementptr inbounds [65536 x i32]* @key_buff2, i64 0, i64 %indvars.iv4, !llfi_index !101
  %4 = load i32* %3, align 4, !tbaa !89, !llfi_index !102
  %5 = sext i32 %4 to i64, !llfi_index !103
  %6 = getelementptr inbounds i32* %1, i64 %5, !llfi_index !104
  %7 = load i32* %6, align 4, !tbaa !89, !llfi_index !105
  %8 = add nsw i32 %7, -1, !llfi_index !106
  store i32 %8, i32* %6, align 4, !tbaa !89, !llfi_index !107
  %9 = sext i32 %8 to i64, !llfi_index !108
  %10 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %9, !llfi_index !109
  store i32 %4, i32* %10, align 4, !tbaa !89, !llfi_index !110
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !llfi_index !111
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 65536, !llfi_index !112
  br i1 %exitcond6, label %.preheader, label %2, !llfi_index !113

.preheader:                                       ; preds = %.preheader, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 1, %2 ], !llfi_index !114
  %j.02 = phi i32 [ %.j.0, %.preheader ], [ 0, %2 ], !llfi_index !115
  %11 = add nsw i64 %indvars.iv, -1, !llfi_index !116
  %12 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %11, !llfi_index !117
  %13 = load i32* %12, align 4, !tbaa !89, !llfi_index !118
  %14 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %indvars.iv, !llfi_index !119
  %15 = load i32* %14, align 4, !tbaa !89, !llfi_index !120
  %16 = icmp sgt i32 %13, %15, !llfi_index !121
  %17 = zext i1 %16 to i32, !llfi_index !122
  %.j.0 = add nsw i32 %17, %j.02, !llfi_index !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !124
  %exitcond = icmp eq i64 %indvars.iv.next, 65536, !llfi_index !125
  br i1 %exitcond, label %18, label %.preheader, !llfi_index !126

; <label>:18                                      ; preds = %.preheader
  %19 = icmp eq i32 %.j.0, 0, !llfi_index !127
  br i1 %19, label %23, label %20, !llfi_index !128

; <label>:20                                      ; preds = %18
  %21 = sext i32 %.j.0 to i64, !llfi_index !129
  %22 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), i64 %21) #2, !llfi_index !130
  br label %26, !llfi_index !131

; <label>:23                                      ; preds = %18
  %24 = load i32* @passed_verification, align 4, !tbaa !89, !llfi_index !132
  %25 = add nsw i32 %24, 1, !llfi_index !133
  store i32 %25, i32* @passed_verification, align 4, !tbaa !89, !llfi_index !134
  br label %26, !llfi_index !135

; <label>:26                                      ; preds = %23, %20
  ret void, !llfi_index !136
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind uwtable
define void @rank(i32 %iteration) #0 {
  %1 = sext i32 %iteration to i64, !llfi_index !137
  %2 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %1, !llfi_index !138
  store i32 %iteration, i32* %2, align 4, !tbaa !89, !llfi_index !139
  %3 = sub nsw i32 2048, %iteration, !llfi_index !140
  %4 = add nsw i32 %iteration, 10, !llfi_index !141
  %5 = sext i32 %4 to i64, !llfi_index !142
  %6 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %5, !llfi_index !143
  store i32 %3, i32* %6, align 4, !tbaa !89, !llfi_index !144
  br label %7, !llfi_index !145

; <label>:7                                       ; preds = %7, %0
  %indvars.iv39 = phi i64 [ 0, %0 ], [ %indvars.iv.next40, %7 ], !llfi_index !146
  %8 = getelementptr inbounds [5 x i32]* @test_index_array, i64 0, i64 %indvars.iv39, !llfi_index !147
  %9 = load i32* %8, align 4, !tbaa !89, !llfi_index !148
  %10 = sext i32 %9 to i64, !llfi_index !149
  %11 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %10, !llfi_index !150
  %12 = load i32* %11, align 4, !tbaa !89, !llfi_index !151
  %13 = getelementptr inbounds [5 x i32]* @partial_verify_vals, i64 0, i64 %indvars.iv39, !llfi_index !152
  store i32 %12, i32* %13, align 4, !tbaa !89, !llfi_index !153
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1, !llfi_index !154
  %exitcond41 = icmp eq i64 %indvars.iv.next40, 5, !llfi_index !155
  br i1 %exitcond41, label %.preheader13, label %7, !llfi_index !156

.preheader13:                                     ; preds = %7
  call void @llvm.memset.p0i8.i64(i8* bitcast ([512 x i32]* @bucket_size to i8*), i8 0, i64 2048, i32 16, i1 false), !llfi_index !157
  br label %14, !llfi_index !158

; <label>:14                                      ; preds = %14, %.preheader13
  %indvars.iv33 = phi i64 [ 0, %.preheader13 ], [ %indvars.iv.next34, %14 ], !llfi_index !159
  %15 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %indvars.iv33, !llfi_index !160
  %16 = load i32* %15, align 4, !tbaa !89, !llfi_index !161
  %17 = ashr i32 %16, 2, !llfi_index !162
  %18 = sext i32 %17 to i64, !llfi_index !163
  %19 = getelementptr inbounds [512 x i32]* @bucket_size, i64 0, i64 %18, !llfi_index !164
  %20 = load i32* %19, align 4, !tbaa !89, !llfi_index !165
  %21 = add nsw i32 %20, 1, !llfi_index !166
  store i32 %21, i32* %19, align 4, !tbaa !89, !llfi_index !167
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1, !llfi_index !168
  %exitcond35 = icmp eq i64 %indvars.iv.next34, 65536, !llfi_index !169
  br i1 %exitcond35, label %22, label %14, !llfi_index !170

; <label>:22                                      ; preds = %14
  store i32 0, i32* getelementptr inbounds ([512 x i32]* @bucket_ptrs, i64 0, i64 0), align 16, !tbaa !89, !llfi_index !171
  br label %23, !llfi_index !172

; <label>:23                                      ; preds = %23, %22
  %indvars.iv30 = phi i64 [ 1, %22 ], [ %indvars.iv.next31, %23 ], !llfi_index !173
  %24 = add nsw i64 %indvars.iv30, -1, !llfi_index !174
  %25 = getelementptr inbounds [512 x i32]* @bucket_ptrs, i64 0, i64 %24, !llfi_index !175
  %26 = load i32* %25, align 4, !tbaa !89, !llfi_index !176
  %27 = getelementptr inbounds [512 x i32]* @bucket_size, i64 0, i64 %24, !llfi_index !177
  %28 = load i32* %27, align 4, !tbaa !89, !llfi_index !178
  %29 = add nsw i32 %28, %26, !llfi_index !179
  %30 = getelementptr inbounds [512 x i32]* @bucket_ptrs, i64 0, i64 %indvars.iv30, !llfi_index !180
  store i32 %29, i32* %30, align 4, !tbaa !89, !llfi_index !181
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1, !llfi_index !182
  %exitcond32 = icmp eq i64 %indvars.iv.next31, 512, !llfi_index !183
  br i1 %exitcond32, label %.preheader10, label %23, !llfi_index !184

.preheader10:                                     ; preds = %.preheader10, %23
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %.preheader10 ], [ 0, %23 ], !llfi_index !185
  %31 = getelementptr inbounds [65536 x i32]* @key_array, i64 0, i64 %indvars.iv27, !llfi_index !186
  %32 = load i32* %31, align 4, !tbaa !89, !llfi_index !187
  %33 = ashr i32 %32, 2, !llfi_index !188
  %34 = sext i32 %33 to i64, !llfi_index !189
  %35 = getelementptr inbounds [512 x i32]* @bucket_ptrs, i64 0, i64 %34, !llfi_index !190
  %36 = load i32* %35, align 4, !tbaa !89, !llfi_index !191
  %37 = add nsw i32 %36, 1, !llfi_index !192
  store i32 %37, i32* %35, align 4, !tbaa !89, !llfi_index !193
  %38 = sext i32 %36 to i64, !llfi_index !194
  %39 = getelementptr inbounds [65536 x i32]* @key_buff2, i64 0, i64 %38, !llfi_index !195
  store i32 %32, i32* %39, align 4, !tbaa !89, !llfi_index !196
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1, !llfi_index !197
  %exitcond29 = icmp eq i64 %indvars.iv.next28, 65536, !llfi_index !198
  br i1 %exitcond29, label %.preheader6, label %.preheader10, !llfi_index !199

.preheader6:                                      ; preds = %.preheader10
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2048 x i32]* @key_buff1 to i8*), i8 0, i64 8192, i32 16, i1 false), !llfi_index !200
  br label %40, !llfi_index !201

; <label>:40                                      ; preds = %40, %.preheader6
  %indvars.iv21 = phi i64 [ 0, %.preheader6 ], [ %indvars.iv.next22, %40 ], !llfi_index !202
  %41 = getelementptr inbounds [65536 x i32]* @key_buff2, i64 0, i64 %indvars.iv21, !llfi_index !203
  %42 = load i32* %41, align 4, !tbaa !89, !llfi_index !204
  %43 = sext i32 %42 to i64, !llfi_index !205
  %44 = getelementptr inbounds [2048 x i32]* @key_buff1, i64 0, i64 %43, !llfi_index !206
  %45 = load i32* %44, align 4, !tbaa !89, !llfi_index !207
  %46 = add nsw i32 %45, 1, !llfi_index !208
  store i32 %46, i32* %44, align 4, !tbaa !89, !llfi_index !209
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !llfi_index !210
  %exitcond23 = icmp eq i64 %indvars.iv.next22, 65536, !llfi_index !211
  br i1 %exitcond23, label %.preheader4, label %40, !llfi_index !212

.preheader4:                                      ; preds = %.preheader4, %40
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %.preheader4 ], [ 0, %40 ], !llfi_index !213
  %47 = getelementptr inbounds [2048 x i32]* @key_buff1, i64 0, i64 %indvars.iv18, !llfi_index !214
  %48 = load i32* %47, align 4, !tbaa !89, !llfi_index !215
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1, !llfi_index !216
  %49 = getelementptr inbounds [2048 x i32]* @key_buff1, i64 0, i64 %indvars.iv.next19, !llfi_index !217
  %50 = load i32* %49, align 4, !tbaa !89, !llfi_index !218
  %51 = add nsw i32 %50, %48, !llfi_index !219
  store i32 %51, i32* %49, align 4, !tbaa !89, !llfi_index !220
  %exitcond20 = icmp eq i64 %indvars.iv.next19, 2047, !llfi_index !221
  br i1 %exitcond20, label %.preheader, label %.preheader4, !llfi_index !222

.preheader:                                       ; preds = %77, %.preheader4
  %indvars.iv = phi i64 [ %indvars.iv.next, %77 ], [ 0, %.preheader4 ], !llfi_index !223
  %52 = getelementptr inbounds [5 x i32]* @partial_verify_vals, i64 0, i64 %indvars.iv, !llfi_index !224
  %53 = load i32* %52, align 4, !tbaa !89, !llfi_index !225
  %.off = add i32 %53, -1, !llfi_index !226
  %54 = icmp ult i32 %.off, 65535, !llfi_index !227
  br i1 %54, label %55, label %77, !llfi_index !228

; <label>:55                                      ; preds = %.preheader
  %56 = add nsw i32 %53, -1, !llfi_index !229
  %57 = sext i32 %56 to i64, !llfi_index !230
  %58 = getelementptr inbounds [2048 x i32]* @key_buff1, i64 0, i64 %57, !llfi_index !231
  %59 = load i32* %58, align 4, !tbaa !89, !llfi_index !232
  %60 = trunc i64 %indvars.iv to i32, !llfi_index !233
  %61 = icmp slt i32 %60, 3, !llfi_index !234
  %62 = getelementptr inbounds [5 x i32]* @test_rank_array, i64 0, i64 %indvars.iv, !llfi_index !235
  %63 = load i32* %62, align 4, !tbaa !89, !llfi_index !236
  br i1 %61, label %64, label %69, !llfi_index !237

; <label>:64                                      ; preds = %55
  %65 = add nsw i32 %63, %iteration, !llfi_index !238
  %66 = icmp eq i32 %59, %65, !llfi_index !239
  br i1 %66, label %.critedge, label %74, !llfi_index !240

.critedge:                                        ; preds = %64
  %67 = load i32* @passed_verification, align 4, !tbaa !89, !llfi_index !241
  %68 = add nsw i32 %67, 1, !llfi_index !242
  store i32 %68, i32* @passed_verification, align 4, !tbaa !89, !llfi_index !243
  br label %77, !llfi_index !244

; <label>:69                                      ; preds = %55
  %70 = sub nsw i32 %63, %iteration, !llfi_index !245
  %71 = icmp eq i32 %59, %70, !llfi_index !246
  br i1 %71, label %.critedge2, label %74, !llfi_index !247

.critedge2:                                       ; preds = %69
  %72 = load i32* @passed_verification, align 4, !tbaa !89, !llfi_index !248
  %73 = add nsw i32 %72, 1, !llfi_index !249
  store i32 %73, i32* @passed_verification, align 4, !tbaa !89, !llfi_index !250
  br label %77, !llfi_index !251

; <label>:74                                      ; preds = %69, %64
  %75 = trunc i64 %indvars.iv to i32, !llfi_index !252
  %76 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 %iteration, i32 %75) #2, !llfi_index !253
  br label %77, !llfi_index !254

; <label>:77                                      ; preds = %74, %.critedge2, %.critedge, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !255
  %exitcond = icmp eq i64 %indvars.iv.next, 5, !llfi_index !256
  br i1 %exitcond, label %78, label %.preheader, !llfi_index !257

; <label>:78                                      ; preds = %77
  %79 = icmp eq i32 %iteration, 10, !llfi_index !258
  br i1 %79, label %80, label %81, !llfi_index !259

; <label>:80                                      ; preds = %78
  store i32* getelementptr inbounds ([2048 x i32]* @key_buff1, i64 0, i64 0), i32** @key_buff_ptr_global, align 8, !tbaa !96, !llfi_index !260
  br label %81, !llfi_index !261

; <label>:81                                      ; preds = %80, %78
  ret void, !llfi_index !262
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) #0 {
  %1 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #2, !llfi_index !263
  %2 = icmp eq %struct._IO_FILE* %1, null, !llfi_index !264
  br i1 %2, label %3, label %4, !llfi_index !265

; <label>:3                                       ; preds = %0
  tail call void @timer_clear(i32 0) #2, !llfi_index !266
  br label %6, !llfi_index !267

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @fclose(%struct._IO_FILE* %1) #2, !llfi_index !268
  tail call void @timer_clear(i32 0) #2, !llfi_index !269
  tail call void @timer_clear(i32 1) #2, !llfi_index !270
  tail call void @timer_clear(i32 2) #2, !llfi_index !271
  tail call void @timer_clear(i32 3) #2, !llfi_index !272
  tail call void @timer_start(i32 3) #2, !llfi_index !273
  br label %6, !llfi_index !274

; <label>:6                                       ; preds = %4, %3
  %timer_on.05.ph = phi i1 [ false, %3 ], [ true, %4 ], !llfi_index !275
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([5 x i32]* @test_index_array to i8*), i8* bitcast ([5 x i32]* @S_test_index_array to i8*), i64 20, i32 16, i1 false), !llfi_index !276
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast ([5 x i32]* @test_rank_array to i8*), i8* bitcast ([5 x i32]* @S_test_rank_array to i8*), i64 20, i32 16, i1 false), !llfi_index !277
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([56 x i8]* @str, i64 0, i64 0)), !llfi_index !278
  %7 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str5, i64 0, i64 0), i64 65536, i32 83) #2, !llfi_index !279
  %8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str6, i64 0, i64 0), i32 10) #2, !llfi_index !280
  br i1 %timer_on.05.ph, label %9, label %.critedge2, !llfi_index !281

; <label>:9                                       ; preds = %6
  tail call void @timer_start(i32 1) #2, !llfi_index !282
  tail call void @create_seq(double 0x41B2B9B0A1000000, double 0x41D2309CE5400000), !llfi_index !283
  tail call void @timer_stop(i32 1) #2, !llfi_index !284
  br label %10, !llfi_index !285

.critedge2:                                       ; preds = %6
  tail call void @create_seq(double 0x41B2B9B0A1000000, double 0x41D2309CE5400000), !llfi_index !286
  br label %10, !llfi_index !287

; <label>:10                                      ; preds = %.critedge2, %9
  tail call void @rank(i32 1), !llfi_index !288
  store i32 0, i32* @passed_verification, align 4, !tbaa !89, !llfi_index !289
  tail call void @timer_start(i32 0) #2, !llfi_index !290
  br label %11, !llfi_index !291

; <label>:11                                      ; preds = %11, %10
  %iteration.08 = phi i32 [ 1, %10 ], [ %12, %11 ], !llfi_index !292
  tail call void @rank(i32 %iteration.08), !llfi_index !293
  %12 = add nsw i32 %iteration.08, 1, !llfi_index !294
  %exitcond = icmp eq i32 %12, 11, !llfi_index !295
  br i1 %exitcond, label %13, label %11, !llfi_index !296

; <label>:13                                      ; preds = %11
  tail call void @timer_stop(i32 0) #2, !llfi_index !297
  %14 = tail call double @timer_read(i32 0) #2, !llfi_index !298
  br i1 %timer_on.05.ph, label %15, label %.thread7, !llfi_index !299

.thread7:                                         ; preds = %13
  tail call void @full_verify(), !llfi_index !300
  br label %.critedge4, !llfi_index !301

; <label>:15                                      ; preds = %13
  tail call void @timer_start(i32 2) #2, !llfi_index !302
  tail call void @full_verify(), !llfi_index !303
  tail call void @timer_stop(i32 2) #2, !llfi_index !304
  tail call void @timer_stop(i32 3) #2, !llfi_index !305
  br label %.critedge4, !llfi_index !306

.critedge4:                                       ; preds = %15, %.thread7
  %16 = load i32* @passed_verification, align 4, !tbaa !89, !llfi_index !307
  %17 = icmp eq i32 %16, 51, !llfi_index !308
  br i1 %17, label %19, label %18, !llfi_index !309

; <label>:18                                      ; preds = %.critedge4
  store i32 0, i32* @passed_verification, align 4, !tbaa !89, !llfi_index !310
  br label %19, !llfi_index !311

; <label>:19                                      ; preds = %18, %.critedge4
  %20 = fdiv double 6.553600e+05, %14, !llfi_index !312
  %21 = fdiv double %20, 1.000000e+06, !llfi_index !313
  %22 = load i32* @passed_verification, align 4, !tbaa !89, !llfi_index !314
  tail call void @c_print_results(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8 signext 83, i32 1024, i32 64, i32 0, i32 10, double %14, double %21, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i32 %22, i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str16, i64 0, i64 0)) #2, !llfi_index !315
  br i1 %timer_on.05.ph, label %23, label %39, !llfi_index !316

; <label>:23                                      ; preds = %19
  %24 = tail call double @timer_read(i32 3) #2, !llfi_index !317
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str22, i64 0, i64 0)), !llfi_index !318
  %25 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str18, i64 0, i64 0), double %24) #2, !llfi_index !319
  %26 = fcmp oeq double %24, 0.000000e+00, !llfi_index !320
  %t_total.0 = select i1 %26, double 1.000000e+00, double %24, !llfi_index !321
  %27 = tail call double @timer_read(i32 1) #2, !llfi_index !322
  %28 = fdiv double %27, %t_total.0, !llfi_index !323
  %29 = fmul double %28, 1.000000e+02, !llfi_index !324
  %30 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str19, i64 0, i64 0), double %27, double %29) #2, !llfi_index !325
  %31 = tail call double @timer_read(i32 0) #2, !llfi_index !326
  %32 = fdiv double %31, %t_total.0, !llfi_index !327
  %33 = fmul double %32, 1.000000e+02, !llfi_index !328
  %34 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str20, i64 0, i64 0), double %31, double %33) #2, !llfi_index !329
  %35 = tail call double @timer_read(i32 2) #2, !llfi_index !330
  %36 = fdiv double %35, %t_total.0, !llfi_index !331
  %37 = fmul double %36, 1.000000e+02, !llfi_index !332
  %38 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str21, i64 0, i64 0), double %35, double %37) #2, !llfi_index !333
  br label %39, !llfi_index !334

; <label>:39                                      ; preds = %23, %19
  ret i32 0, !llfi_index !335
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
  %1 = sext i32 %n to i64, !llfi_index !336
  %2 = getelementptr inbounds [64 x double]* @elapsed, i64 0, i64 %1, !llfi_index !337
  store double 0.000000e+00, double* %2, align 8, !tbaa !3, !llfi_index !338
  ret void, !llfi_index !339
}

; Function Attrs: nounwind uwtable
define void @timer_start(i32 %n) #0 {
  %1 = tail call fastcc double @elapsed_time(), !llfi_index !340
  %2 = sext i32 %n to i64, !llfi_index !341
  %3 = getelementptr inbounds [64 x double]* @start, i64 0, i64 %2, !llfi_index !342
  store double %1, double* %3, align 8, !tbaa !3, !llfi_index !343
  ret void, !llfi_index !344
}

; Function Attrs: nounwind uwtable
define void @timer_stop(i32 %n) #0 {
  %1 = tail call fastcc double @elapsed_time(), !llfi_index !345
  %2 = sext i32 %n to i64, !llfi_index !346
  %3 = getelementptr inbounds [64 x double]* @start, i64 0, i64 %2, !llfi_index !347
  %4 = load double* %3, align 8, !tbaa !3, !llfi_index !348
  %5 = fsub double %1, %4, !llfi_index !349
  %6 = getelementptr inbounds [64 x double]* @elapsed, i64 0, i64 %2, !llfi_index !350
  %7 = load double* %6, align 8, !tbaa !3, !llfi_index !351
  %8 = fadd double %7, %5, !llfi_index !352
  store double %8, double* %6, align 8, !tbaa !3, !llfi_index !353
  ret void, !llfi_index !354
}

; Function Attrs: nounwind readonly uwtable
define double @timer_read(i32 %n) #3 {
  %1 = sext i32 %n to i64, !llfi_index !355
  %2 = getelementptr inbounds [64 x double]* @elapsed, i64 0, i64 %1, !llfi_index !356
  %3 = load double* %2, align 8, !tbaa !3, !llfi_index !357
  ret double %3, !llfi_index !358
}

; Function Attrs: nounwind uwtable
define internal fastcc double @elapsed_time() #0 {
  %t = alloca double, align 8, !llfi_index !359
  call void @wtime_(double* %t) #2, !llfi_index !360
  %1 = load double* %t, align 8, !tbaa !3, !llfi_index !361
  ret double %1, !llfi_index !362
}

; Function Attrs: nounwind uwtable
define void @c_print_results(i8* %name, i8 signext %class, i32 %n1, i32 %n2, i32 %n3, i32 %niter, double %t, double %mops, i8* %optype, i32 %passed_verification, i8* %npbversion, i8* nocapture readnone %compiletime, i8* nocapture readnone %cc, i8* nocapture readnone %clink, i8* nocapture readnone %c_lib, i8* nocapture readnone %c_inc, i8* nocapture readnone %cflags, i8* nocapture readnone %clinkflags) #0 {
  %1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str22, i64 0, i64 0), i8* %name) #2, !llfi_index !363
  %2 = sext i8 %class to i32, !llfi_index !364
  %3 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str123, i64 0, i64 0), i32 %2) #2, !llfi_index !365
  %4 = icmp eq i32 %n3, 0, !llfi_index !366
  br i1 %4, label %5, label %13, !llfi_index !367

; <label>:5                                       ; preds = %0
  %6 = sext i32 %n1 to i64, !llfi_index !368
  %7 = icmp eq i32 %n2, 0, !llfi_index !369
  br i1 %7, label %11, label %8, !llfi_index !370

; <label>:8                                       ; preds = %5
  %9 = sext i32 %n2 to i64, !llfi_index !371
  %10 = mul nsw i64 %9, %6, !llfi_index !372
  br label %11, !llfi_index !373

; <label>:11                                      ; preds = %8, %5
  %nn.0 = phi i64 [ %10, %8 ], [ %6, %5 ], !llfi_index !374
  %12 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str224, i64 0, i64 0), i64 %nn.0) #2, !llfi_index !375
  br label %15, !llfi_index !376

; <label>:13                                      ; preds = %0
  %14 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str325, i64 0, i64 0), i32 %n1, i32 %n2, i32 %n3) #2, !llfi_index !377
  br label %15, !llfi_index !378

; <label>:15                                      ; preds = %13, %11
  %16 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str426, i64 0, i64 0), i32 %niter) #2, !llfi_index !379
  %17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str527, i64 0, i64 0), i8* %optype) #2, !llfi_index !380
  %18 = icmp slt i32 %passed_verification, 0, !llfi_index !381
  br i1 %18, label %19, label %20, !llfi_index !382

; <label>:19                                      ; preds = %15
  %puts8 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str23, i64 0, i64 0)), !llfi_index !383
  br label %24, !llfi_index !384

; <label>:20                                      ; preds = %15
  %21 = icmp eq i32 %passed_verification, 0, !llfi_index !385
  br i1 %21, label %23, label %22, !llfi_index !386

; <label>:22                                      ; preds = %20
  %puts7 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str2239, i64 0, i64 0)), !llfi_index !387
  br label %24, !llfi_index !388

; <label>:23                                      ; preds = %20
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str38, i64 0, i64 0)), !llfi_index !389
  br label %24, !llfi_index !390

; <label>:24                                      ; preds = %23, %22, %19
  %25 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str931, i64 0, i64 0), i8* %npbversion) #2, !llfi_index !391
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str16, i64 0, i64 0)), !llfi_index !392
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([38 x i8]* @str17, i64 0, i64 0)), !llfi_index !393
  %puts3 = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str18, i64 0, i64 0)), !llfi_index !394
  %puts4 = tail call i32 @puts(i8* getelementptr inbounds ([20 x i8]* @str19, i64 0, i64 0)), !llfi_index !395
  %puts5 = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str20, i64 0, i64 0)), !llfi_index !396
  %puts6 = tail call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @str21, i64 0, i64 0)), !llfi_index !397
  ret void, !llfi_index !398
}

; Function Attrs: nounwind uwtable
define void @wtime_(double* nocapture %t) #0 {
  %tv = alloca %struct.timeval, align 8, !llfi_index !399
  %1 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #2, !llfi_index !400
  %2 = load i32* @wtime_.sec, align 4, !tbaa !89, !llfi_index !401
  %3 = icmp slt i32 %2, 0, !llfi_index !402
  br i1 %3, label %4, label %8, !llfi_index !403

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 0, !llfi_index !404
  %6 = load i64* %5, align 8, !tbaa !405, !llfi_index !408
  %7 = trunc i64 %6 to i32, !llfi_index !409
  store i32 %7, i32* @wtime_.sec, align 4, !tbaa !89, !llfi_index !410
  br label %8, !llfi_index !411

; <label>:8                                       ; preds = %4, %0
  %9 = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 0, !llfi_index !412
  %10 = load i64* %9, align 8, !tbaa !405, !llfi_index !413
  %11 = load i32* @wtime_.sec, align 4, !tbaa !89, !llfi_index !414
  %12 = sext i32 %11 to i64, !llfi_index !415
  %13 = sub nsw i64 %10, %12, !llfi_index !416
  %14 = sitofp i64 %13 to double, !llfi_index !417
  %15 = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 1, !llfi_index !418
  %16 = load i64* %15, align 8, !tbaa !419, !llfi_index !420
  %17 = sitofp i64 %16 to double, !llfi_index !421
  %18 = fmul double %17, 1.000000e-06, !llfi_index !422
  %19 = fadd double %14, %18, !llfi_index !423
  store double %19, double* %t, align 8, !tbaa !3, !llfi_index !424
  ret void, !llfi_index !425
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #1

; Function Attrs: nounwind uwtable
define void @print_results(i8* %name, i8 signext %class, i32 %n1, i32 %n2, i32 %n3, i32 %niter, double %t, double %mops, i8* %optype, i32 %verified, i8* %npbversion, i8* nocapture readnone %compiletime, i8* nocapture readnone %cs1, i8* nocapture readnone %cs2, i8* nocapture readnone %cs3, i8* nocapture readnone %cs4, i8* nocapture readnone %cs5, i8* nocapture readnone %cs6, i8* nocapture readnone %cs7) #0 {
  %size = alloca [16 x i8], align 16, !llfi_index !426
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str44, i64 0, i64 0), i8* %name) #2, !llfi_index !427
  %2 = sext i8 %class to i32, !llfi_index !428
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str145, i64 0, i64 0), i32 %2) #2, !llfi_index !429
  %4 = or i32 %n3, %n2, !llfi_index !430
  %5 = icmp eq i32 %4, 0, !llfi_index !431
  br i1 %5, label %6, label %26, !llfi_index !432

; <label>:6                                       ; preds = %0
  %7 = load i8* %name, align 1, !tbaa !433, !llfi_index !434
  %8 = icmp eq i8 %7, 69, !llfi_index !435
  br i1 %8, label %9, label %24, !llfi_index !436

; <label>:9                                       ; preds = %6
  %10 = getelementptr inbounds i8* %name, i64 1, !llfi_index !437
  %11 = load i8* %10, align 1, !tbaa !433, !llfi_index !438
  %12 = icmp eq i8 %11, 80, !llfi_index !439
  br i1 %12, label %13, label %24, !llfi_index !440

; <label>:13                                      ; preds = %9
  %14 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 0, !llfi_index !441
  %15 = call double @ldexp(double 1.000000e+00, i32 %n1) #2, !llfi_index !442
  %16 = call i32 (i8*, i8*, ...)* @sprintf(i8* %14, i8* getelementptr inbounds ([8 x i8]* @.str246, i64 0, i64 0), double %15) #2, !llfi_index !443
  %17 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 14, !llfi_index !444
  %18 = load i8* %17, align 2, !tbaa !433, !llfi_index !445
  %19 = icmp eq i8 %18, 46, !llfi_index !446
  br i1 %19, label %20, label %21, !llfi_index !447

; <label>:20                                      ; preds = %13
  store i8 32, i8* %17, align 2, !tbaa !433, !llfi_index !448
  br label %21, !llfi_index !449

; <label>:21                                      ; preds = %20, %13
  %j.0 = phi i64 [ 14, %20 ], [ 15, %13 ], !llfi_index !450
  %22 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 %j.0, !llfi_index !451
  store i8 0, i8* %22, align 1, !tbaa !433, !llfi_index !452
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str347, i64 0, i64 0), i8* %14) #2, !llfi_index !453
  br label %28, !llfi_index !454

; <label>:24                                      ; preds = %9, %6
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str448, i64 0, i64 0), i32 %n1) #2, !llfi_index !455
  br label %28, !llfi_index !456

; <label>:26                                      ; preds = %0
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str549, i64 0, i64 0), i32 %n1, i32 %n2, i32 %n3) #2, !llfi_index !457
  br label %28, !llfi_index !458

; <label>:28                                      ; preds = %26, %24, %21
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str650, i64 0, i64 0), i32 %niter) #2, !llfi_index !459
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str751, i64 0, i64 0), i8* %optype) #2, !llfi_index !460
  %31 = icmp eq i32 %verified, 0, !llfi_index !461
  br i1 %31, label %34, label %32, !llfi_index !462

; <label>:32                                      ; preds = %28
  %33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str852, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str953, i64 0, i64 0)) #2, !llfi_index !463
  br label %36, !llfi_index !464

; <label>:34                                      ; preds = %28
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str852, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str1054, i64 0, i64 0)) #2, !llfi_index !465
  br label %36, !llfi_index !466

; <label>:36                                      ; preds = %34, %32
  %37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str1155, i64 0, i64 0), i8* %npbversion) #2, !llfi_index !467
  %puts = call i32 @puts(i8* getelementptr inbounds ([194 x i8]* @str57, i64 0, i64 0)), !llfi_index !468
  ret void, !llfi_index !469
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
!89 = metadata !{metadata !90, metadata !90, i64 0}
!90 = metadata !{metadata !"int", metadata !5, i64 0}
!91 = metadata !{i64 85}
!92 = metadata !{i64 86}
!93 = metadata !{i64 87}
!94 = metadata !{i64 88}
!95 = metadata !{i64 89}
!96 = metadata !{metadata !97, metadata !97, i64 0}
!97 = metadata !{metadata !"any pointer", metadata !5, i64 0}
!98 = metadata !{i64 90}
!99 = metadata !{i64 91}
!100 = metadata !{i64 92}
!101 = metadata !{i64 93}
!102 = metadata !{i64 94}
!103 = metadata !{i64 95}
!104 = metadata !{i64 96}
!105 = metadata !{i64 97}
!106 = metadata !{i64 98}
!107 = metadata !{i64 99}
!108 = metadata !{i64 100}
!109 = metadata !{i64 101}
!110 = metadata !{i64 102}
!111 = metadata !{i64 103}
!112 = metadata !{i64 104}
!113 = metadata !{i64 105}
!114 = metadata !{i64 106}
!115 = metadata !{i64 107}
!116 = metadata !{i64 108}
!117 = metadata !{i64 109}
!118 = metadata !{i64 110}
!119 = metadata !{i64 111}
!120 = metadata !{i64 112}
!121 = metadata !{i64 113}
!122 = metadata !{i64 114}
!123 = metadata !{i64 115}
!124 = metadata !{i64 116}
!125 = metadata !{i64 117}
!126 = metadata !{i64 118}
!127 = metadata !{i64 119}
!128 = metadata !{i64 120}
!129 = metadata !{i64 121}
!130 = metadata !{i64 122}
!131 = metadata !{i64 123}
!132 = metadata !{i64 124}
!133 = metadata !{i64 125}
!134 = metadata !{i64 126}
!135 = metadata !{i64 127}
!136 = metadata !{i64 128}
!137 = metadata !{i64 129}
!138 = metadata !{i64 130}
!139 = metadata !{i64 131}
!140 = metadata !{i64 132}
!141 = metadata !{i64 133}
!142 = metadata !{i64 134}
!143 = metadata !{i64 135}
!144 = metadata !{i64 136}
!145 = metadata !{i64 137}
!146 = metadata !{i64 138}
!147 = metadata !{i64 139}
!148 = metadata !{i64 140}
!149 = metadata !{i64 141}
!150 = metadata !{i64 142}
!151 = metadata !{i64 143}
!152 = metadata !{i64 144}
!153 = metadata !{i64 145}
!154 = metadata !{i64 146}
!155 = metadata !{i64 147}
!156 = metadata !{i64 148}
!157 = metadata !{i64 149}
!158 = metadata !{i64 150}
!159 = metadata !{i64 151}
!160 = metadata !{i64 152}
!161 = metadata !{i64 153}
!162 = metadata !{i64 154}
!163 = metadata !{i64 155}
!164 = metadata !{i64 156}
!165 = metadata !{i64 157}
!166 = metadata !{i64 158}
!167 = metadata !{i64 159}
!168 = metadata !{i64 160}
!169 = metadata !{i64 161}
!170 = metadata !{i64 162}
!171 = metadata !{i64 163}
!172 = metadata !{i64 164}
!173 = metadata !{i64 165}
!174 = metadata !{i64 166}
!175 = metadata !{i64 167}
!176 = metadata !{i64 168}
!177 = metadata !{i64 169}
!178 = metadata !{i64 170}
!179 = metadata !{i64 171}
!180 = metadata !{i64 172}
!181 = metadata !{i64 173}
!182 = metadata !{i64 174}
!183 = metadata !{i64 175}
!184 = metadata !{i64 176}
!185 = metadata !{i64 177}
!186 = metadata !{i64 178}
!187 = metadata !{i64 179}
!188 = metadata !{i64 180}
!189 = metadata !{i64 181}
!190 = metadata !{i64 182}
!191 = metadata !{i64 183}
!192 = metadata !{i64 184}
!193 = metadata !{i64 185}
!194 = metadata !{i64 186}
!195 = metadata !{i64 187}
!196 = metadata !{i64 188}
!197 = metadata !{i64 189}
!198 = metadata !{i64 190}
!199 = metadata !{i64 191}
!200 = metadata !{i64 192}
!201 = metadata !{i64 193}
!202 = metadata !{i64 194}
!203 = metadata !{i64 195}
!204 = metadata !{i64 196}
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
!405 = metadata !{metadata !406, metadata !407, i64 0}
!406 = metadata !{metadata !"timeval", metadata !407, i64 0, metadata !407, i64 8}
!407 = metadata !{metadata !"long", metadata !5, i64 0}
!408 = metadata !{i64 397}
!409 = metadata !{i64 398}
!410 = metadata !{i64 399}
!411 = metadata !{i64 400}
!412 = metadata !{i64 401}
!413 = metadata !{i64 402}
!414 = metadata !{i64 403}
!415 = metadata !{i64 404}
!416 = metadata !{i64 405}
!417 = metadata !{i64 406}
!418 = metadata !{i64 407}
!419 = metadata !{metadata !406, metadata !407, i64 8}
!420 = metadata !{i64 408}
!421 = metadata !{i64 409}
!422 = metadata !{i64 410}
!423 = metadata !{i64 411}
!424 = metadata !{i64 412}
!425 = metadata !{i64 413}
!426 = metadata !{i64 414}
!427 = metadata !{i64 415}
!428 = metadata !{i64 416}
!429 = metadata !{i64 417}
!430 = metadata !{i64 418}
!431 = metadata !{i64 419}
!432 = metadata !{i64 420}
!433 = metadata !{metadata !5, metadata !5, i64 0}
!434 = metadata !{i64 421}
!435 = metadata !{i64 422}
!436 = metadata !{i64 423}
!437 = metadata !{i64 424}
!438 = metadata !{i64 425}
!439 = metadata !{i64 426}
!440 = metadata !{i64 427}
!441 = metadata !{i64 428}
!442 = metadata !{i64 429}
!443 = metadata !{i64 430}
!444 = metadata !{i64 431}
!445 = metadata !{i64 432}
!446 = metadata !{i64 433}
!447 = metadata !{i64 434}
!448 = metadata !{i64 435}
!449 = metadata !{i64 436}
!450 = metadata !{i64 437}
!451 = metadata !{i64 438}
!452 = metadata !{i64 439}
!453 = metadata !{i64 440}
!454 = metadata !{i64 441}
!455 = metadata !{i64 442}
!456 = metadata !{i64 443}
!457 = metadata !{i64 444}
!458 = metadata !{i64 445}
!459 = metadata !{i64 446}
!460 = metadata !{i64 447}
!461 = metadata !{i64 448}
!462 = metadata !{i64 449}
!463 = metadata !{i64 450}
!464 = metadata !{i64 451}
!465 = metadata !{i64 452}
!466 = metadata !{i64 453}
!467 = metadata !{i64 454}
!468 = metadata !{i64 455}
!469 = metadata !{i64 456}
