; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/NPB-EP/fault injection/llfi-O3/npb-ep.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", align 1
@.str1 = private unnamed_addr constant [46 x i8] c" Class           =                        %c\0A\00", align 1
@.str2 = private unnamed_addr constant [38 x i8] c" Size            =             %12ld\0A\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", align 1
@.str4 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str5 = private unnamed_addr constant [39 x i8] c" Time in seconds =             %12.2f\0A\00", align 1
@.str6 = private unnamed_addr constant [39 x i8] c" Mop/s total     =             %12.2f\0A\00", align 1
@.str7 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str11 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str12 = private unnamed_addr constant [37 x i8] c" Compile date    =             %12s\0A\00", align 1
@.str14 = private unnamed_addr constant [23 x i8] c"    CC           = %s\0A\00", align 1
@.str15 = private unnamed_addr constant [23 x i8] c"    CLINK        = %s\0A\00", align 1
@.str16 = private unnamed_addr constant [23 x i8] c"    C_LIB        = %s\0A\00", align 1
@.str17 = private unnamed_addr constant [23 x i8] c"    C_INC        = %s\0A\00", align 1
@.str18 = private unnamed_addr constant [23 x i8] c"    CFLAGS       = %s\0A\00", align 1
@.str19 = private unnamed_addr constant [23 x i8] c"    CLINKFLAGS   = %s\0A\00", align 1
@str = private unnamed_addr constant [44 x i8] c" Verification    =             UNSUCCESSFUL\00"
@str26 = private unnamed_addr constant [19 x i8] c"\0A Compile options:\00"
@str27 = private unnamed_addr constant [40 x i8] c"\0A--------------------------------------\00"
@str28 = private unnamed_addr constant [38 x i8] c" Please send all errors/feedbacks to:\00"
@str29 = private unnamed_addr constant [33 x i8] c" Center for Manycore Programming\00"
@str30 = private unnamed_addr constant [20 x i8] c" cmp@aces.snu.ac.kr\00"
@str31 = private unnamed_addr constant [23 x i8] c" http://aces.snu.ac.kr\00"
@str32 = private unnamed_addr constant [39 x i8] c"--------------------------------------\00"
@str33 = private unnamed_addr constant [44 x i8] c" Verification    =               SUCCESSFUL\00"
@str34 = private unnamed_addr constant [44 x i8] c" Verification    =            NOT PERFORMED\00"
@elapsed = internal unnamed_addr global [64 x double] zeroinitializer, align 16
@start = internal unnamed_addr global [64 x double] zeroinitializer, align 16
@main.dum = private unnamed_addr constant [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], align 16
@.str8 = private unnamed_addr constant [11 x i8] c"timer.flag\00", align 1
@.str110 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str211 = private unnamed_addr constant [8 x i8] c"%15.0lf\00", align 1
@.str412 = private unnamed_addr constant [44 x i8] c"\0A Number of random numbers generated: %15s\0A\00", align 1
@x = internal global [131072 x double] zeroinitializer, align 16
@q = internal unnamed_addr global [10 x double] zeroinitializer, align 16
@.str613 = private unnamed_addr constant [11 x i8] c"N = 2^%5d\0A\00", align 1
@.str714 = private unnamed_addr constant [30 x i8] c"No. Gaussian Pairs = %15.0lf\0A\00", align 1
@.str815 = private unnamed_addr constant [26 x i8] c"Sums = %25.15lE %25.15lE\0A\00", align 1
@.str10 = private unnamed_addr constant [12 x i8] c"%3d%15.0lf\0A\00", align 1
@.str1116 = private unnamed_addr constant [3 x i8] c"EP\00", align 1
@.str1217 = private unnamed_addr constant [25 x i8] c"Random numbers generated\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"3.3.1\00", align 1
@.str1418 = private unnamed_addr constant [12 x i8] c"14 Feb 2018\00", align 1
@.str1519 = private unnamed_addr constant [34 x i8] c"$(LLFI_BUILD_ROOT)/llvm/bin/clang\00", align 1
@.str1620 = private unnamed_addr constant [6 x i8] c"$(CC)\00", align 1
@.str1721 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str1822 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str1923 = private unnamed_addr constant [14 x i8] c"-g -Wall -O3 \00", align 1
@.str20 = private unnamed_addr constant [7 x i8] c"-O3 -v\00", align 1
@.str21 = private unnamed_addr constant [7 x i8] c"randdp\00", align 1
@.str22 = private unnamed_addr constant [34 x i8] c"\0ATotal time:     %9.3lf (%6.2lf)\0A\00", align 1
@.str23 = private unnamed_addr constant [33 x i8] c"Gaussian pairs: %9.3lf (%6.2lf)\0A\00", align 1
@.str24 = private unnamed_addr constant [33 x i8] c"Random numbers: %9.3lf (%6.2lf)\0A\00", align 1
@str24 = private unnamed_addr constant [57 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER-C) - EP Benchmark\00"
@str25 = private unnamed_addr constant [24 x i8] c"\0AEP Benchmark Results:\0A\00"
@str2625 = private unnamed_addr constant [9 x i8] c"Counts: \00"
@.str26 = private unnamed_addr constant [28 x i8] c"\0A\0A %s Benchmark Completed.\0A\00", align 1
@.str127 = private unnamed_addr constant [37 x i8] c" Class           =             %12c\0A\00", align 1
@.str228 = private unnamed_addr constant [8 x i8] c"%15.0lf\00", align 1
@.str329 = private unnamed_addr constant [34 x i8] c" Size            =          %15s\0A\00", align 1
@.str430 = private unnamed_addr constant [37 x i8] c" Size            =             %12d\0A\00", align 1
@.str531 = private unnamed_addr constant [42 x i8] c" Size            =           %4dx%4dx%4d\0A\00", align 1
@.str632 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str733 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str834 = private unnamed_addr constant [37 x i8] c" Verification    =             %12s\0A\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"SUCCESSFUL\00", align 1
@.str1035 = private unnamed_addr constant [13 x i8] c"UNSUCCESSFUL\00", align 1
@.str1136 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@str37 = private unnamed_addr constant [194 x i8] c"\0A--------------------------------------\0A Please send all errors/feedbacks to:\0A Center for Manycore Programming\0A cmp@aces.snu.ac.kr\0A http://aces.snu.ac.kr\0A--------------------------------------\0A\00"
@wtime_.sec = internal unnamed_addr global i32 -1, align 4

; Function Attrs: nounwind uwtable
define void @c_print_results(i8* %name, i8 signext %class, i32 %n1, i32 %n2, i32 %n3, i32 %niter, double %t, double %mops, i8* %optype, i32 %passed_verification, i8* %npbversion, i8* %compiletime, i8* %cc, i8* %clink, i8* %c_lib, i8* %c_inc, i8* %cflags, i8* %clinkflags) #0 {
  %1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str, i64 0, i64 0), i8* %name) #2, !llfi_index !1
  %2 = sext i8 %class to i32, !llfi_index !2
  %3 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str1, i64 0, i64 0), i32 %2) #2, !llfi_index !3
  %4 = icmp eq i32 %n3, 0, !llfi_index !4
  br i1 %4, label %5, label %13, !llfi_index !5

; <label>:5                                       ; preds = %0
  %6 = sext i32 %n1 to i64, !llfi_index !6
  %7 = icmp eq i32 %n2, 0, !llfi_index !7
  br i1 %7, label %11, label %8, !llfi_index !8

; <label>:8                                       ; preds = %5
  %9 = sext i32 %n2 to i64, !llfi_index !9
  %10 = mul nsw i64 %9, %6, !llfi_index !10
  br label %11, !llfi_index !11

; <label>:11                                      ; preds = %8, %5
  %nn.0 = phi i64 [ %10, %8 ], [ %6, %5 ], !llfi_index !12
  %12 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str2, i64 0, i64 0), i64 %nn.0) #2, !llfi_index !13
  br label %15, !llfi_index !14

; <label>:13                                      ; preds = %0
  %14 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), i32 %n1, i32 %n2, i32 %n3) #2, !llfi_index !15
  br label %15, !llfi_index !16

; <label>:15                                      ; preds = %13, %11
  %16 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str4, i64 0, i64 0), i32 %niter) #2, !llfi_index !17
  %17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str5, i64 0, i64 0), double %t) #2, !llfi_index !18
  %18 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str6, i64 0, i64 0), double %mops) #2, !llfi_index !19
  %19 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str7, i64 0, i64 0), i8* %optype) #2, !llfi_index !20
  %20 = icmp slt i32 %passed_verification, 0, !llfi_index !21
  br i1 %20, label %21, label %22, !llfi_index !22

; <label>:21                                      ; preds = %15
  %puts9 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str34, i64 0, i64 0)), !llfi_index !23
  br label %26, !llfi_index !24

; <label>:22                                      ; preds = %15
  %23 = icmp eq i32 %passed_verification, 0, !llfi_index !25
  br i1 %23, label %25, label %24, !llfi_index !26

; <label>:24                                      ; preds = %22
  %puts8 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str33, i64 0, i64 0)), !llfi_index !27
  br label %26, !llfi_index !28

; <label>:25                                      ; preds = %22
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str, i64 0, i64 0)), !llfi_index !29
  br label %26, !llfi_index !30

; <label>:26                                      ; preds = %25, %24, %21
  %27 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str11, i64 0, i64 0), i8* %npbversion) #2, !llfi_index !31
  %28 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str12, i64 0, i64 0), i8* %compiletime) #2, !llfi_index !32
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str26, i64 0, i64 0)), !llfi_index !33
  %29 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str14, i64 0, i64 0), i8* %cc) #2, !llfi_index !34
  %30 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str15, i64 0, i64 0), i8* %clink) #2, !llfi_index !35
  %31 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str16, i64 0, i64 0), i8* %c_lib) #2, !llfi_index !36
  %32 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str17, i64 0, i64 0), i8* %c_inc) #2, !llfi_index !37
  %33 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str18, i64 0, i64 0), i8* %cflags) #2, !llfi_index !38
  %34 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str19, i64 0, i64 0), i8* %clinkflags) #2, !llfi_index !39
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str27, i64 0, i64 0)), !llfi_index !40
  %puts3 = tail call i32 @puts(i8* getelementptr inbounds ([38 x i8]* @str28, i64 0, i64 0)), !llfi_index !41
  %puts4 = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str29, i64 0, i64 0)), !llfi_index !42
  %puts5 = tail call i32 @puts(i8* getelementptr inbounds ([20 x i8]* @str30, i64 0, i64 0)), !llfi_index !43
  %puts6 = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str31, i64 0, i64 0)), !llfi_index !44
  %puts7 = tail call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @str32, i64 0, i64 0)), !llfi_index !45
  ret void, !llfi_index !46
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #2

; Function Attrs: nounwind uwtable
define void @timer_clear(i32 %n) #0 {
  %1 = sext i32 %n to i64, !llfi_index !47
  %2 = getelementptr inbounds [64 x double]* @elapsed, i64 0, i64 %1, !llfi_index !48
  store double 0.000000e+00, double* %2, align 8, !tbaa !49, !llfi_index !53
  ret void, !llfi_index !54
}

; Function Attrs: nounwind uwtable
define void @timer_start(i32 %n) #0 {
  %t.i = alloca double, align 8, !llfi_index !55
  %1 = bitcast double* %t.i to i8*, !llfi_index !56
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !llfi_index !57
  call void @wtime_(double* %t.i) #2, !llfi_index !58
  %2 = load double* %t.i, align 8, !tbaa !49, !llfi_index !59
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !llfi_index !60
  %3 = sext i32 %n to i64, !llfi_index !61
  %4 = getelementptr inbounds [64 x double]* @start, i64 0, i64 %3, !llfi_index !62
  store double %2, double* %4, align 8, !tbaa !49, !llfi_index !63
  ret void, !llfi_index !64
}

; Function Attrs: nounwind uwtable
define void @timer_stop(i32 %n) #0 {
  %t.i = alloca double, align 8, !llfi_index !65
  %1 = bitcast double* %t.i to i8*, !llfi_index !66
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !llfi_index !67
  call void @wtime_(double* %t.i) #2, !llfi_index !68
  %2 = load double* %t.i, align 8, !tbaa !49, !llfi_index !69
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !llfi_index !70
  %3 = sext i32 %n to i64, !llfi_index !71
  %4 = getelementptr inbounds [64 x double]* @start, i64 0, i64 %3, !llfi_index !72
  %5 = load double* %4, align 8, !tbaa !49, !llfi_index !73
  %6 = fsub double %2, %5, !llfi_index !74
  %7 = getelementptr inbounds [64 x double]* @elapsed, i64 0, i64 %3, !llfi_index !75
  %8 = load double* %7, align 8, !tbaa !49, !llfi_index !76
  %9 = fadd double %8, %6, !llfi_index !77
  store double %9, double* %7, align 8, !tbaa !49, !llfi_index !78
  ret void, !llfi_index !79
}

; Function Attrs: nounwind readonly uwtable
define double @timer_read(i32 %n) #3 {
  %1 = sext i32 %n to i64, !llfi_index !80
  %2 = getelementptr inbounds [64 x double]* @elapsed, i64 0, i64 %1, !llfi_index !81
  %3 = load double* %2, align 8, !tbaa !49, !llfi_index !82
  ret double %3, !llfi_index !83
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %t1 = alloca double, align 8, !llfi_index !84
  %t2 = alloca double, align 8, !llfi_index !85
  %dum = alloca [3 x double], align 16, !llfi_index !86
  %size = alloca [16 x i8], align 16, !llfi_index !87
  %1 = bitcast [3 x double]* %dum to i8*, !llfi_index !88
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([3 x double]* @main.dum to i8*), i64 24, i32 16, i1 false), !llfi_index !89
  %2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str110, i64 0, i64 0)) #2, !llfi_index !90
  %3 = icmp eq %struct._IO_FILE* %2, null, !llfi_index !91
  br i1 %3, label %vector.ph, label %4, !llfi_index !92

; <label>:4                                       ; preds = %0
  %5 = call i32 @fclose(%struct._IO_FILE* %2) #2, !llfi_index !93
  br label %vector.ph, !llfi_index !94

vector.ph:                                        ; preds = %4, %0
  %timers_enabled.0 = phi i32 [ 1, %4 ], [ 0, %0 ], !llfi_index !95
  %6 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 0, !llfi_index !96
  %7 = call i32 (i8*, i8*, ...)* @sprintf(i8* %6, i8* getelementptr inbounds ([8 x i8]* @.str211, i64 0, i64 0), double 0x4190000000000000) #2, !llfi_index !97
  %8 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 14, !llfi_index !98
  %9 = load i8* %8, align 2, !tbaa !99, !llfi_index !100
  %10 = icmp eq i8 %9, 46, !llfi_index !101
  %. = select i1 %10, i64 14, i64 15, !llfi_index !102
  %11 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 %., !llfi_index !103
  store i8 0, i8* %11, align 1, !tbaa !99, !llfi_index !104
  %puts = call i32 @puts(i8* getelementptr inbounds ([57 x i8]* @str24, i64 0, i64 0)), !llfi_index !105
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str412, i64 0, i64 0), i8* %6) #2, !llfi_index !106
  %13 = getelementptr inbounds [3 x double]* %dum, i64 0, i64 0, !llfi_index !107
  %14 = getelementptr inbounds [3 x double]* %dum, i64 0, i64 1, !llfi_index !108
  %15 = load double* %14, align 8, !tbaa !49, !llfi_index !109
  %16 = getelementptr inbounds [3 x double]* %dum, i64 0, i64 2, !llfi_index !110
  call void @vranlc(i32 0, double* %13, double %15, double* %16) #2, !llfi_index !111
  %17 = load double* %16, align 16, !tbaa !49, !llfi_index !112
  %18 = call double @randlc(double* %14, double %17) #2, !llfi_index !113
  store double %18, double* %13, align 16, !tbaa !49, !llfi_index !114
  br label %vector.body, !llfi_index !115

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !llfi_index !116
  %19 = getelementptr inbounds [131072 x double]* @x, i64 0, i64 %index, !llfi_index !117
  %20 = bitcast double* %19 to <2 x double>*, !llfi_index !118
  store <2 x double> <double -1.000000e+99, double -1.000000e+99>, <2 x double>* %20, align 16, !llfi_index !119
  %.sum36 = or i64 %index, 2, !llfi_index !120
  %21 = getelementptr [131072 x double]* @x, i64 0, i64 %.sum36, !llfi_index !121
  %22 = bitcast double* %21 to <2 x double>*, !llfi_index !122
  store <2 x double> <double -1.000000e+99, double -1.000000e+99>, <2 x double>* %22, align 16, !llfi_index !123
  %index.next = add i64 %index, 4, !llfi_index !124
  %23 = icmp eq i64 %index.next, 131072, !llfi_index !125
  br i1 %23, label %.preheader1625, label %vector.body, !llvm.loop !126, !llfi_index !129

.preheader1625:                                   ; preds = %vector.body
  call void @timer_clear(i32 0) #2, !llfi_index !130
  call void @timer_clear(i32 1) #2, !llfi_index !131
  call void @timer_clear(i32 2) #2, !llfi_index !132
  call void @timer_start(i32 0) #2, !llfi_index !133
  store double 0x41D2309CE5400000, double* %t1, align 8, !tbaa !49, !llfi_index !134
  call void @vranlc(i32 0, double* %t1, double 0x41D2309CE5400000, double* getelementptr inbounds ([131072 x double]* @x, i64 0, i64 0)) #2, !llfi_index !135
  store double 0x41D2309CE5400000, double* %t1, align 8, !tbaa !49, !llfi_index !136
  %24 = call double @randlc(double* %t1, double 0x41D2309CE5400000) #2, !llfi_index !137
  store double %24, double* %t2, align 8, !tbaa !49, !llfi_index !138
  %25 = load double* %t1, align 8, !tbaa !49, !llfi_index !139
  %26 = call double @randlc(double* %t1, double %25) #2, !llfi_index !140
  store double %26, double* %t2, align 8, !tbaa !49, !llfi_index !141
  %27 = load double* %t1, align 8, !tbaa !49, !llfi_index !142
  %28 = call double @randlc(double* %t1, double %27) #2, !llfi_index !143
  store double %28, double* %t2, align 8, !tbaa !49, !llfi_index !144
  %29 = load double* %t1, align 8, !tbaa !49, !llfi_index !145
  %30 = call double @randlc(double* %t1, double %29) #2, !llfi_index !146
  store double %30, double* %t2, align 8, !tbaa !49, !llfi_index !147
  %31 = load double* %t1, align 8, !tbaa !49, !llfi_index !148
  %32 = call double @randlc(double* %t1, double %31) #2, !llfi_index !149
  store double %32, double* %t2, align 8, !tbaa !49, !llfi_index !150
  %33 = load double* %t1, align 8, !tbaa !49, !llfi_index !151
  %34 = call double @randlc(double* %t1, double %33) #2, !llfi_index !152
  store double %34, double* %t2, align 8, !tbaa !49, !llfi_index !153
  %35 = load double* %t1, align 8, !tbaa !49, !llfi_index !154
  %36 = call double @randlc(double* %t1, double %35) #2, !llfi_index !155
  store double %36, double* %t2, align 8, !tbaa !49, !llfi_index !156
  %37 = load double* %t1, align 8, !tbaa !49, !llfi_index !157
  %38 = call double @randlc(double* %t1, double %37) #2, !llfi_index !158
  store double %38, double* %t2, align 8, !tbaa !49, !llfi_index !159
  %39 = load double* %t1, align 8, !tbaa !49, !llfi_index !160
  %40 = call double @randlc(double* %t1, double %39) #2, !llfi_index !161
  store double %40, double* %t2, align 8, !tbaa !49, !llfi_index !162
  %41 = load double* %t1, align 8, !tbaa !49, !llfi_index !163
  %42 = call double @randlc(double* %t1, double %41) #2, !llfi_index !164
  store double %42, double* %t2, align 8, !tbaa !49, !llfi_index !165
  %43 = load double* %t1, align 8, !tbaa !49, !llfi_index !166
  %44 = call double @randlc(double* %t1, double %43) #2, !llfi_index !167
  store double %44, double* %t2, align 8, !tbaa !49, !llfi_index !168
  %45 = load double* %t1, align 8, !tbaa !49, !llfi_index !169
  %46 = call double @randlc(double* %t1, double %45) #2, !llfi_index !170
  store double %46, double* %t2, align 8, !tbaa !49, !llfi_index !171
  %47 = load double* %t1, align 8, !tbaa !49, !llfi_index !172
  %48 = call double @randlc(double* %t1, double %47) #2, !llfi_index !173
  store double %48, double* %t2, align 8, !tbaa !49, !llfi_index !174
  %49 = load double* %t1, align 8, !tbaa !49, !llfi_index !175
  %50 = call double @randlc(double* %t1, double %49) #2, !llfi_index !176
  store double %50, double* %t2, align 8, !tbaa !49, !llfi_index !177
  %51 = load double* %t1, align 8, !tbaa !49, !llfi_index !178
  %52 = call double @randlc(double* %t1, double %51) #2, !llfi_index !179
  store double %52, double* %t2, align 8, !tbaa !49, !llfi_index !180
  %53 = load double* %t1, align 8, !tbaa !49, !llfi_index !181
  %54 = call double @randlc(double* %t1, double %53) #2, !llfi_index !182
  store double %54, double* %t2, align 8, !tbaa !49, !llfi_index !183
  %55 = load double* %t1, align 8, !tbaa !49, !llfi_index !184
  %56 = call double @randlc(double* %t1, double %55) #2, !llfi_index !185
  store double %56, double* %t2, align 8, !tbaa !49, !llfi_index !186
  %57 = load double* %t1, align 8, !tbaa !49, !llfi_index !187
  call void @llvm.memset.p0i8.i64(i8* bitcast ([10 x double]* @q to i8*), i8 0, i64 80, i32 16, i1 false), !llfi_index !188
  %58 = icmp eq i32 %timers_enabled.0, 0, !llfi_index !189
  br i1 %58, label %.preheader12..preheader12.split_crit_edge, label %.preheader12.split.us, !llfi_index !190

.preheader12.split.us:                            ; preds = %75, %.preheader1625
  %k.014.us = phi i32 [ %76, %75 ], [ 1, %.preheader1625 ], !llfi_index !191
  %59 = phi <2 x double> [ %111, %75 ], [ zeroinitializer, %.preheader1625 ], !llfi_index !192
  %60 = add nsw i32 %k.014.us, -1, !llfi_index !193
  store double 0x41B033C4D7000000, double* %t1, align 8, !tbaa !49, !llfi_index !194
  store double %57, double* %t2, align 8, !tbaa !49, !llfi_index !195
  br label %61, !llfi_index !196

; <label>:61                                      ; preds = %70, %.preheader12.split.us
  %kk.08.us = phi i32 [ %60, %.preheader12.split.us ], [ %62, %70 ], !llfi_index !197
  %i.37.us = phi i32 [ 1, %.preheader12.split.us ], [ %73, %70 ], !llfi_index !198
  %62 = sdiv i32 %kk.08.us, 2, !llfi_index !199
  %63 = shl nsw i32 %62, 1, !llfi_index !200
  %64 = icmp eq i32 %63, %kk.08.us, !llfi_index !201
  br i1 %64, label %68, label %65, !llfi_index !202

; <label>:65                                      ; preds = %61
  %66 = load double* %t2, align 8, !tbaa !49, !llfi_index !203
  %67 = call double @randlc(double* %t1, double %66) #2, !llfi_index !204
  br label %68, !llfi_index !205

; <label>:68                                      ; preds = %65, %61
  %kk.0.off.us = add i32 %kk.08.us, 1, !llfi_index !206
  %69 = icmp ult i32 %kk.0.off.us, 3, !llfi_index !207
  br i1 %69, label %.critedge3.preheader.us, label %70, !llfi_index !208

; <label>:70                                      ; preds = %68
  %71 = load double* %t2, align 8, !tbaa !49, !llfi_index !209
  %72 = call double @randlc(double* %t2, double %71) #2, !llfi_index !210
  %73 = add nsw i32 %i.37.us, 1, !llfi_index !211
  %74 = icmp slt i32 %73, 101, !llfi_index !212
  br i1 %74, label %61, label %.critedge3.preheader.us, !llfi_index !213

; <label>:75                                      ; preds = %.critedge3.us
  call void @timer_stop(i32 1) #2, !llfi_index !214
  %76 = add nsw i32 %k.014.us, 1, !llfi_index !215
  %exitcond32 = icmp eq i32 %76, 513, !llfi_index !216
  br i1 %exitcond32, label %.preheader, label %.preheader12.split.us, !llfi_index !217

; <label>:77                                      ; preds = %.critedge3.preheader.us, %.critedge3.us
  %indvars.iv29 = phi i64 [ 0, %.critedge3.preheader.us ], [ %indvars.iv.next30, %.critedge3.us ], !llfi_index !218
  %78 = phi <2 x double> [ %59, %.critedge3.preheader.us ], [ %111, %.critedge3.us ], !llfi_index !219
  %79 = shl nsw i64 %indvars.iv29, 1, !llfi_index !220
  %80 = getelementptr inbounds [131072 x double]* @x, i64 0, i64 %79, !llfi_index !221
  %81 = bitcast double* %80 to <2 x double>*, !llfi_index !222
  %82 = load <2 x double>* %81, align 16, !tbaa !49, !llfi_index !223
  %83 = fmul <2 x double> %82, <double 2.000000e+00, double 2.000000e+00>, !llfi_index !224
  %84 = fadd <2 x double> %83, <double -1.000000e+00, double -1.000000e+00>, !llfi_index !225
  %85 = fmul <2 x double> %84, %84, !llfi_index !226
  %86 = extractelement <2 x double> %85, i32 0, !llfi_index !227
  %87 = extractelement <2 x double> %85, i32 1, !llfi_index !228
  %88 = fadd double %86, %87, !llfi_index !229
  store double %88, double* %t1, align 8, !tbaa !49, !llfi_index !230
  %89 = fcmp ugt double %88, 1.000000e+00, !llfi_index !231
  br i1 %89, label %.critedge3.us, label %90, !llfi_index !232

; <label>:90                                      ; preds = %77
  %91 = call double @log(double %88) #2, !llfi_index !233
  %92 = fmul double %91, -2.000000e+00, !llfi_index !234
  %93 = load double* %t1, align 8, !tbaa !49, !llfi_index !235
  %94 = fdiv double %92, %93, !llfi_index !236
  %95 = call double @sqrt(double %94) #2, !llfi_index !237
  store double %95, double* %t2, align 8, !tbaa !49, !llfi_index !238
  %96 = insertelement <2 x double> undef, double %95, i32 0, !llfi_index !239
  %97 = insertelement <2 x double> %96, double %95, i32 1, !llfi_index !240
  %98 = fmul <2 x double> %84, %97, !llfi_index !241
  %99 = extractelement <2 x double> %98, i32 0, !llfi_index !242
  %100 = call double @fabs(double %99) #5, !llfi_index !243
  %101 = extractelement <2 x double> %98, i32 1, !llfi_index !244
  %102 = call double @fabs(double %101) #5, !llfi_index !245
  %103 = fcmp ogt double %100, %102, !llfi_index !246
  %.sink.us = select i1 %103, double %99, double %101, !llfi_index !247
  %104 = call double @fabs(double %.sink.us) #5, !llfi_index !248
  %105 = fptosi double %104 to i32, !llfi_index !249
  %106 = sext i32 %105 to i64, !llfi_index !250
  %107 = getelementptr inbounds [10 x double]* @q, i64 0, i64 %106, !llfi_index !251
  %108 = load double* %107, align 8, !tbaa !49, !llfi_index !252
  %109 = fadd double %108, 1.000000e+00, !llfi_index !253
  store double %109, double* %107, align 8, !tbaa !49, !llfi_index !254
  %110 = fadd <2 x double> %78, %98, !llfi_index !255
  br label %.critedge3.us, !llfi_index !256

.critedge3.us:                                    ; preds = %90, %77
  %111 = phi <2 x double> [ %110, %90 ], [ %78, %77 ], !llfi_index !257
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1, !llfi_index !258
  %exitcond31 = icmp eq i64 %indvars.iv.next30, 65536, !llfi_index !259
  br i1 %exitcond31, label %75, label %77, !llfi_index !260

.critedge3.preheader.us:                          ; preds = %70, %68
  call void @timer_start(i32 2) #2, !llfi_index !261
  call void @vranlc(i32 131072, double* %t1, double 0x41D2309CE5400000, double* getelementptr inbounds ([131072 x double]* @x, i64 0, i64 0)) #2, !llfi_index !262
  call void @timer_stop(i32 2) #2, !llfi_index !263
  call void @timer_start(i32 1) #2, !llfi_index !264
  br label %77, !llfi_index !265

.preheader:                                       ; preds = %191, %75
  %112 = phi <2 x double> [ %190, %191 ], [ %111, %75 ], !llfi_index !266
  %113 = extractelement <2 x double> %112, i32 1, !llfi_index !267
  %114 = extractelement <2 x double> %112, i32 0, !llfi_index !268
  %115 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 0), align 16, !tbaa !49, !llfi_index !269
  %116 = fadd double %115, 0.000000e+00, !llfi_index !270
  %117 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 1), align 8, !tbaa !49, !llfi_index !271
  %118 = fadd double %116, %117, !llfi_index !272
  %119 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 2), align 16, !tbaa !49, !llfi_index !273
  %120 = fadd double %118, %119, !llfi_index !274
  %121 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 3), align 8, !tbaa !49, !llfi_index !275
  %122 = fadd double %120, %121, !llfi_index !276
  %123 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 4), align 16, !tbaa !49, !llfi_index !277
  %124 = fadd double %122, %123, !llfi_index !278
  %125 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 5), align 8, !tbaa !49, !llfi_index !279
  %126 = fadd double %124, %125, !llfi_index !280
  %127 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 6), align 16, !tbaa !49, !llfi_index !281
  %128 = fadd double %126, %127, !llfi_index !282
  %129 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 7), align 8, !tbaa !49, !llfi_index !283
  %130 = fadd double %128, %129, !llfi_index !284
  %131 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 8), align 16, !tbaa !49, !llfi_index !285
  %132 = fadd double %130, %131, !llfi_index !286
  %133 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 9), align 8, !tbaa !49, !llfi_index !287
  %134 = fadd double %132, %133, !llfi_index !288
  call void @timer_stop(i32 0) #2, !llfi_index !289
  %135 = call double @timer_read(i32 0) #2, !llfi_index !290
  %136 = fadd double %114, 0x40A65EA3B3DDC403, !llfi_index !291
  %137 = fdiv double %136, 0xC0A65EA3B3DDC403, !llfi_index !292
  %138 = call double @fabs(double %137) #5, !llfi_index !293
  %139 = fcmp ugt double %138, 1.000000e-08, !llfi_index !294
  br i1 %139, label %198, label %193, !llfi_index !295

.preheader12..preheader12.split_crit_edge:        ; preds = %191, %.preheader1625
  %k.014 = phi i32 [ %192, %191 ], [ 1, %.preheader1625 ], !llfi_index !296
  %140 = phi <2 x double> [ %190, %191 ], [ zeroinitializer, %.preheader1625 ], !llfi_index !297
  %141 = add nsw i32 %k.014, -1, !llfi_index !298
  store double 0x41B033C4D7000000, double* %t1, align 8, !tbaa !49, !llfi_index !299
  store double %57, double* %t2, align 8, !tbaa !49, !llfi_index !300
  br label %142, !llfi_index !301

; <label>:142                                     ; preds = %151, %.preheader12..preheader12.split_crit_edge
  %kk.08 = phi i32 [ %141, %.preheader12..preheader12.split_crit_edge ], [ %143, %151 ], !llfi_index !302
  %i.37 = phi i32 [ 1, %.preheader12..preheader12.split_crit_edge ], [ %154, %151 ], !llfi_index !303
  %143 = sdiv i32 %kk.08, 2, !llfi_index !304
  %144 = shl nsw i32 %143, 1, !llfi_index !305
  %145 = icmp eq i32 %144, %kk.08, !llfi_index !306
  br i1 %145, label %149, label %146, !llfi_index !307

; <label>:146                                     ; preds = %142
  %147 = load double* %t2, align 8, !tbaa !49, !llfi_index !308
  %148 = call double @randlc(double* %t1, double %147) #2, !llfi_index !309
  br label %149, !llfi_index !310

; <label>:149                                     ; preds = %146, %142
  %kk.0.off = add i32 %kk.08, 1, !llfi_index !311
  %150 = icmp ult i32 %kk.0.off, 3, !llfi_index !312
  br i1 %150, label %.critedge3.preheader, label %151, !llfi_index !313

; <label>:151                                     ; preds = %149
  %152 = load double* %t2, align 8, !tbaa !49, !llfi_index !314
  %153 = call double @randlc(double* %t2, double %152) #2, !llfi_index !315
  %154 = add nsw i32 %i.37, 1, !llfi_index !316
  %155 = icmp slt i32 %154, 101, !llfi_index !317
  br i1 %155, label %142, label %.critedge3.preheader, !llfi_index !318

.critedge3.preheader:                             ; preds = %151, %149
  call void @vranlc(i32 131072, double* %t1, double 0x41D2309CE5400000, double* getelementptr inbounds ([131072 x double]* @x, i64 0, i64 0)) #2, !llfi_index !319
  br label %156, !llfi_index !320

; <label>:156                                     ; preds = %.critedge3, %.critedge3.preheader
  %indvars.iv = phi i64 [ 0, %.critedge3.preheader ], [ %indvars.iv.next, %.critedge3 ], !llfi_index !321
  %157 = phi <2 x double> [ %140, %.critedge3.preheader ], [ %190, %.critedge3 ], !llfi_index !322
  %158 = shl nsw i64 %indvars.iv, 1, !llfi_index !323
  %159 = getelementptr inbounds [131072 x double]* @x, i64 0, i64 %158, !llfi_index !324
  %160 = bitcast double* %159 to <2 x double>*, !llfi_index !325
  %161 = load <2 x double>* %160, align 16, !tbaa !49, !llfi_index !326
  %162 = fmul <2 x double> %161, <double 2.000000e+00, double 2.000000e+00>, !llfi_index !327
  %163 = fadd <2 x double> %162, <double -1.000000e+00, double -1.000000e+00>, !llfi_index !328
  %164 = fmul <2 x double> %163, %163, !llfi_index !329
  %165 = extractelement <2 x double> %164, i32 0, !llfi_index !330
  %166 = extractelement <2 x double> %164, i32 1, !llfi_index !331
  %167 = fadd double %165, %166, !llfi_index !332
  store double %167, double* %t1, align 8, !tbaa !49, !llfi_index !333
  %168 = fcmp ugt double %167, 1.000000e+00, !llfi_index !334
  br i1 %168, label %.critedge3, label %169, !llfi_index !335

; <label>:169                                     ; preds = %156
  %170 = call double @log(double %167) #2, !llfi_index !336
  %171 = fmul double %170, -2.000000e+00, !llfi_index !337
  %172 = load double* %t1, align 8, !tbaa !49, !llfi_index !338
  %173 = fdiv double %171, %172, !llfi_index !339
  %174 = call double @sqrt(double %173) #2, !llfi_index !340
  store double %174, double* %t2, align 8, !tbaa !49, !llfi_index !341
  %175 = insertelement <2 x double> undef, double %174, i32 0, !llfi_index !342
  %176 = insertelement <2 x double> %175, double %174, i32 1, !llfi_index !343
  %177 = fmul <2 x double> %163, %176, !llfi_index !344
  %178 = extractelement <2 x double> %177, i32 0, !llfi_index !345
  %179 = call double @fabs(double %178) #5, !llfi_index !346
  %180 = extractelement <2 x double> %177, i32 1, !llfi_index !347
  %181 = call double @fabs(double %180) #5, !llfi_index !348
  %182 = fcmp ogt double %179, %181, !llfi_index !349
  %.sink = select i1 %182, double %178, double %180, !llfi_index !350
  %183 = call double @fabs(double %.sink) #5, !llfi_index !351
  %184 = fptosi double %183 to i32, !llfi_index !352
  %185 = sext i32 %184 to i64, !llfi_index !353
  %186 = getelementptr inbounds [10 x double]* @q, i64 0, i64 %185, !llfi_index !354
  %187 = load double* %186, align 8, !tbaa !49, !llfi_index !355
  %188 = fadd double %187, 1.000000e+00, !llfi_index !356
  store double %188, double* %186, align 8, !tbaa !49, !llfi_index !357
  %189 = fadd <2 x double> %157, %177, !llfi_index !358
  br label %.critedge3, !llfi_index !359

.critedge3:                                       ; preds = %169, %156
  %190 = phi <2 x double> [ %189, %169 ], [ %157, %156 ], !llfi_index !360
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !361
  %exitcond = icmp eq i64 %indvars.iv.next, 65536, !llfi_index !362
  br i1 %exitcond, label %191, label %156, !llfi_index !363

; <label>:191                                     ; preds = %.critedge3
  %192 = add nsw i32 %k.014, 1, !llfi_index !364
  %exitcond20 = icmp eq i32 %192, 513, !llfi_index !365
  br i1 %exitcond20, label %.preheader, label %.preheader12..preheader12.split_crit_edge, !llfi_index !366

; <label>:193                                     ; preds = %.preheader
  %194 = fadd double %113, 0x40B8B00DBDEA03C7, !llfi_index !367
  %195 = fdiv double %194, 0xC0B8B00DBDEA03C7, !llfi_index !368
  %196 = call double @fabs(double %195) #5, !llfi_index !369
  %197 = fcmp ole double %196, 1.000000e-08, !llfi_index !370
  br label %198, !llfi_index !371

; <label>:198                                     ; preds = %193, %.preheader
  %199 = phi i1 [ false, %.preheader ], [ %197, %193 ], !llfi_index !372
  %200 = fdiv double 0x4190000000000000, %135, !llfi_index !373
  %puts1 = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str25, i64 0, i64 0)), !llfi_index !374
  %201 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str613, i64 0, i64 0), i32 25) #2, !llfi_index !375
  %202 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str714, i64 0, i64 0), double %134) #2, !llfi_index !376
  %203 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str815, i64 0, i64 0), double %114, double %113) #2, !llfi_index !377
  %puts2 = call i32 @puts(i8* getelementptr inbounds ([9 x i8]* @str2625, i64 0, i64 0)), !llfi_index !378
  %204 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 0), align 16, !tbaa !49, !llfi_index !379
  %205 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i32 0, double %204) #2, !llfi_index !380
  %206 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 1), align 8, !tbaa !49, !llfi_index !381
  %207 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i32 1, double %206) #2, !llfi_index !382
  %208 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 2), align 16, !tbaa !49, !llfi_index !383
  %209 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i32 2, double %208) #2, !llfi_index !384
  %210 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 3), align 8, !tbaa !49, !llfi_index !385
  %211 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i32 3, double %210) #2, !llfi_index !386
  %212 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 4), align 16, !tbaa !49, !llfi_index !387
  %213 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i32 4, double %212) #2, !llfi_index !388
  %214 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 5), align 8, !tbaa !49, !llfi_index !389
  %215 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i32 5, double %214) #2, !llfi_index !390
  %216 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 6), align 16, !tbaa !49, !llfi_index !391
  %217 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i32 6, double %216) #2, !llfi_index !392
  %218 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 7), align 8, !tbaa !49, !llfi_index !393
  %219 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i32 7, double %218) #2, !llfi_index !394
  %220 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 8), align 16, !tbaa !49, !llfi_index !395
  %221 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i32 8, double %220) #2, !llfi_index !396
  %222 = load double* getelementptr inbounds ([10 x double]* @q, i64 0, i64 9), align 8, !tbaa !49, !llfi_index !397
  %223 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i32 9, double %222) #2, !llfi_index !398
  %224 = zext i1 %199 to i32, !llfi_index !399
  %225 = fdiv double %200, 1.000000e+06, !llfi_index !400
  call void @print_results(i8* getelementptr inbounds ([3 x i8]* @.str1116, i64 0, i64 0), i8 signext 87, i32 26, i32 0, i32 0, i32 0, double %135, double %225, i8* getelementptr inbounds ([25 x i8]* @.str1217, i64 0, i64 0), i32 %224, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1418, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str1519, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str1620, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str1721, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1822, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1923, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str21, i64 0, i64 0)) #2, !llfi_index !401
  br i1 %58, label %240, label %226, !llfi_index !402

; <label>:226                                     ; preds = %198
  %227 = fcmp ugt double %135, 0.000000e+00, !llfi_index !403
  %tm.0 = select i1 %227, double %135, double 1.000000e+00, !llfi_index !404
  %228 = call double @timer_read(i32 0) #2, !llfi_index !405
  %229 = fmul double %228, 1.000000e+02, !llfi_index !406
  %230 = fdiv double %229, %tm.0, !llfi_index !407
  %231 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str22, i64 0, i64 0), double %228, double %230) #2, !llfi_index !408
  %232 = call double @timer_read(i32 1) #2, !llfi_index !409
  %233 = fmul double %232, 1.000000e+02, !llfi_index !410
  %234 = fdiv double %233, %tm.0, !llfi_index !411
  %235 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str23, i64 0, i64 0), double %232, double %234) #2, !llfi_index !412
  %236 = call double @timer_read(i32 2) #2, !llfi_index !413
  %237 = fmul double %236, 1.000000e+02, !llfi_index !414
  %238 = fdiv double %237, %tm.0, !llfi_index !415
  %239 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str24, i64 0, i64 0), double %236, double %238) #2, !llfi_index !416
  br label %240, !llfi_index !417

; <label>:240                                     ; preds = %226, %198
  ret i32 0, !llfi_index !418
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @print_results(i8* %name, i8 signext %class, i32 %n1, i32 %n2, i32 %n3, i32 %niter, double %t, double %mops, i8* %optype, i32 %verified, i8* %npbversion, i8* nocapture readnone %compiletime, i8* nocapture readnone %cs1, i8* nocapture readnone %cs2, i8* nocapture readnone %cs3, i8* nocapture readnone %cs4, i8* nocapture readnone %cs5, i8* nocapture readnone %cs6, i8* nocapture readnone %cs7) #0 {
  %size = alloca [16 x i8], align 16, !llfi_index !419
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str26, i64 0, i64 0), i8* %name) #2, !llfi_index !420
  %2 = sext i8 %class to i32, !llfi_index !421
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str127, i64 0, i64 0), i32 %2) #2, !llfi_index !422
  %4 = or i32 %n3, %n2, !llfi_index !423
  %5 = icmp eq i32 %4, 0, !llfi_index !424
  br i1 %5, label %6, label %26, !llfi_index !425

; <label>:6                                       ; preds = %0
  %7 = load i8* %name, align 1, !tbaa !99, !llfi_index !426
  %8 = icmp eq i8 %7, 69, !llfi_index !427
  br i1 %8, label %9, label %24, !llfi_index !428

; <label>:9                                       ; preds = %6
  %10 = getelementptr inbounds i8* %name, i64 1, !llfi_index !429
  %11 = load i8* %10, align 1, !tbaa !99, !llfi_index !430
  %12 = icmp eq i8 %11, 80, !llfi_index !431
  br i1 %12, label %13, label %24, !llfi_index !432

; <label>:13                                      ; preds = %9
  %14 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 0, !llfi_index !433
  %15 = call double @ldexp(double 1.000000e+00, i32 %n1) #2, !llfi_index !434
  %16 = call i32 (i8*, i8*, ...)* @sprintf(i8* %14, i8* getelementptr inbounds ([8 x i8]* @.str228, i64 0, i64 0), double %15) #2, !llfi_index !435
  %17 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 14, !llfi_index !436
  %18 = load i8* %17, align 2, !tbaa !99, !llfi_index !437
  %19 = icmp eq i8 %18, 46, !llfi_index !438
  br i1 %19, label %20, label %21, !llfi_index !439

; <label>:20                                      ; preds = %13
  store i8 32, i8* %17, align 2, !tbaa !99, !llfi_index !440
  br label %21, !llfi_index !441

; <label>:21                                      ; preds = %20, %13
  %j.0 = phi i64 [ 14, %20 ], [ 15, %13 ], !llfi_index !442
  %22 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 %j.0, !llfi_index !443
  store i8 0, i8* %22, align 1, !tbaa !99, !llfi_index !444
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str329, i64 0, i64 0), i8* %14) #2, !llfi_index !445
  br label %28, !llfi_index !446

; <label>:24                                      ; preds = %9, %6
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str430, i64 0, i64 0), i32 %n1) #2, !llfi_index !447
  br label %28, !llfi_index !448

; <label>:26                                      ; preds = %0
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str531, i64 0, i64 0), i32 %n1, i32 %n2, i32 %n3) #2, !llfi_index !449
  br label %28, !llfi_index !450

; <label>:28                                      ; preds = %26, %24, %21
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str632, i64 0, i64 0), i32 %niter) #2, !llfi_index !451
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str733, i64 0, i64 0), i8* %optype) #2, !llfi_index !452
  %31 = icmp eq i32 %verified, 0, !llfi_index !453
  br i1 %31, label %34, label %32, !llfi_index !454

; <label>:32                                      ; preds = %28
  %33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str834, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0)) #2, !llfi_index !455
  br label %36, !llfi_index !456

; <label>:34                                      ; preds = %28
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str834, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str1035, i64 0, i64 0)) #2, !llfi_index !457
  br label %36, !llfi_index !458

; <label>:36                                      ; preds = %34, %32
  %37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str1136, i64 0, i64 0), i8* %npbversion) #2, !llfi_index !459
  %puts = call i32 @puts(i8* getelementptr inbounds ([194 x i8]* @str37, i64 0, i64 0)), !llfi_index !460
  ret void, !llfi_index !461
}

declare double @ldexp(double, i32)

; Function Attrs: nounwind uwtable
define double @randlc(double* nocapture %x, double %a) #0 {
  %1 = fmul double %a, 0x3E80000000000000, !llfi_index !462
  %2 = fptosi double %1 to i32, !llfi_index !463
  %3 = sitofp i32 %2 to double, !llfi_index !464
  %4 = fmul double %3, 8.388608e+06, !llfi_index !465
  %5 = fsub double %a, %4, !llfi_index !466
  %6 = load double* %x, align 8, !tbaa !49, !llfi_index !467
  %7 = fmul double %6, 0x3E80000000000000, !llfi_index !468
  %8 = fptosi double %7 to i32, !llfi_index !469
  %9 = sitofp i32 %8 to double, !llfi_index !470
  %10 = fmul double %9, 8.388608e+06, !llfi_index !471
  %11 = fsub double %6, %10, !llfi_index !472
  %12 = fmul double %3, %11, !llfi_index !473
  %13 = fmul double %5, %9, !llfi_index !474
  %14 = fadd double %13, %12, !llfi_index !475
  %15 = fmul double %14, 0x3E80000000000000, !llfi_index !476
  %16 = fptosi double %15 to i32, !llfi_index !477
  %17 = sitofp i32 %16 to double, !llfi_index !478
  %18 = fmul double %17, 8.388608e+06, !llfi_index !479
  %19 = fsub double %14, %18, !llfi_index !480
  %20 = fmul double %19, 8.388608e+06, !llfi_index !481
  %21 = fmul double %5, %11, !llfi_index !482
  %22 = fadd double %21, %20, !llfi_index !483
  %23 = fmul double %22, 0x3D10000000000000, !llfi_index !484
  %24 = fptosi double %23 to i32, !llfi_index !485
  %25 = sitofp i32 %24 to double, !llfi_index !486
  %26 = fmul double %25, 0x42D0000000000000, !llfi_index !487
  %27 = fsub double %22, %26, !llfi_index !488
  store double %27, double* %x, align 8, !tbaa !49, !llfi_index !489
  %28 = fmul double %27, 0x3D10000000000000, !llfi_index !490
  ret double %28, !llfi_index !491
}

; Function Attrs: nounwind uwtable
define void @vranlc(i32 %n, double* nocapture %x, double %a, double* nocapture %y) #0 {
  %1 = fmul double %a, 0x3E80000000000000, !llfi_index !492
  %2 = fptosi double %1 to i32, !llfi_index !493
  %3 = sitofp i32 %2 to double, !llfi_index !494
  %4 = fmul double %3, 8.388608e+06, !llfi_index !495
  %5 = fsub double %a, %4, !llfi_index !496
  %6 = icmp sgt i32 %n, 0, !llfi_index !497
  br i1 %6, label %.lr.ph, label %._crit_edge, !llfi_index !498

.lr.ph:                                           ; preds = %.lr.ph, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ], !llfi_index !499
  %7 = load double* %x, align 8, !tbaa !49, !llfi_index !500
  %8 = fmul double %7, 0x3E80000000000000, !llfi_index !501
  %9 = fptosi double %8 to i32, !llfi_index !502
  %10 = sitofp i32 %9 to double, !llfi_index !503
  %11 = fmul double %10, 8.388608e+06, !llfi_index !504
  %12 = fsub double %7, %11, !llfi_index !505
  %13 = fmul double %3, %12, !llfi_index !506
  %14 = fmul double %5, %10, !llfi_index !507
  %15 = fadd double %14, %13, !llfi_index !508
  %16 = fmul double %15, 0x3E80000000000000, !llfi_index !509
  %17 = fptosi double %16 to i32, !llfi_index !510
  %18 = sitofp i32 %17 to double, !llfi_index !511
  %19 = fmul double %18, 8.388608e+06, !llfi_index !512
  %20 = fsub double %15, %19, !llfi_index !513
  %21 = fmul double %20, 8.388608e+06, !llfi_index !514
  %22 = fmul double %5, %12, !llfi_index !515
  %23 = fadd double %22, %21, !llfi_index !516
  %24 = fmul double %23, 0x3D10000000000000, !llfi_index !517
  %25 = fptosi double %24 to i32, !llfi_index !518
  %26 = sitofp i32 %25 to double, !llfi_index !519
  %27 = fmul double %26, 0x42D0000000000000, !llfi_index !520
  %28 = fsub double %23, %27, !llfi_index !521
  store double %28, double* %x, align 8, !tbaa !49, !llfi_index !522
  %29 = fmul double %28, 0x3D10000000000000, !llfi_index !523
  %30 = getelementptr inbounds double* %y, i64 %indvars.iv, !llfi_index !524
  store double %29, double* %30, align 8, !tbaa !49, !llfi_index !525
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !526
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !527
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !llfi_index !528
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !529

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void, !llfi_index !530
}

; Function Attrs: nounwind uwtable
define void @wtime_(double* nocapture %t) #0 {
  %tv = alloca %struct.timeval, align 8, !llfi_index !531
  %1 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #2, !llfi_index !532
  %2 = load i32* @wtime_.sec, align 4, !tbaa !533, !llfi_index !535
  %3 = icmp slt i32 %2, 0, !llfi_index !536
  %4 = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 0, !llfi_index !537
  %5 = load i64* %4, align 8, !tbaa !538, !llfi_index !541
  br i1 %3, label %6, label %._crit_edge, !llfi_index !542

; <label>:6                                       ; preds = %0
  %7 = trunc i64 %5 to i32, !llfi_index !543
  store i32 %7, i32* @wtime_.sec, align 4, !tbaa !533, !llfi_index !544
  br label %._crit_edge, !llfi_index !545

._crit_edge:                                      ; preds = %6, %0
  %8 = phi i32 [ %7, %6 ], [ %2, %0 ], !llfi_index !546
  %9 = sext i32 %8 to i64, !llfi_index !547
  %10 = sub nsw i64 %5, %9, !llfi_index !548
  %11 = sitofp i64 %10 to double, !llfi_index !549
  %12 = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 1, !llfi_index !550
  %13 = load i64* %12, align 8, !tbaa !551, !llfi_index !552
  %14 = sitofp i64 %13 to double, !llfi_index !553
  %15 = fmul double %14, 1.000000e-06, !llfi_index !554
  %16 = fadd double %11, %15, !llfi_index !555
  store double %16, double* %t, align 8, !tbaa !49, !llfi_index !556
  ret void, !llfi_index !557
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!1 = metadata !{i64 1}
!2 = metadata !{i64 2}
!3 = metadata !{i64 3}
!4 = metadata !{i64 4}
!5 = metadata !{i64 5}
!6 = metadata !{i64 6}
!7 = metadata !{i64 7}
!8 = metadata !{i64 8}
!9 = metadata !{i64 9}
!10 = metadata !{i64 10}
!11 = metadata !{i64 11}
!12 = metadata !{i64 12}
!13 = metadata !{i64 13}
!14 = metadata !{i64 14}
!15 = metadata !{i64 15}
!16 = metadata !{i64 16}
!17 = metadata !{i64 17}
!18 = metadata !{i64 18}
!19 = metadata !{i64 19}
!20 = metadata !{i64 20}
!21 = metadata !{i64 21}
!22 = metadata !{i64 22}
!23 = metadata !{i64 23}
!24 = metadata !{i64 24}
!25 = metadata !{i64 25}
!26 = metadata !{i64 26}
!27 = metadata !{i64 27}
!28 = metadata !{i64 28}
!29 = metadata !{i64 29}
!30 = metadata !{i64 30}
!31 = metadata !{i64 31}
!32 = metadata !{i64 32}
!33 = metadata !{i64 33}
!34 = metadata !{i64 34}
!35 = metadata !{i64 35}
!36 = metadata !{i64 36}
!37 = metadata !{i64 37}
!38 = metadata !{i64 38}
!39 = metadata !{i64 39}
!40 = metadata !{i64 40}
!41 = metadata !{i64 41}
!42 = metadata !{i64 42}
!43 = metadata !{i64 43}
!44 = metadata !{i64 44}
!45 = metadata !{i64 45}
!46 = metadata !{i64 46}
!47 = metadata !{i64 47}
!48 = metadata !{i64 48}
!49 = metadata !{metadata !50, metadata !50, i64 0}
!50 = metadata !{metadata !"double", metadata !51, i64 0}
!51 = metadata !{metadata !"omnipotent char", metadata !52, i64 0}
!52 = metadata !{metadata !"Simple C/C++ TBAA"}
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
!99 = metadata !{metadata !51, metadata !51, i64 0}
!100 = metadata !{i64 95}
!101 = metadata !{i64 96}
!102 = metadata !{i64 97}
!103 = metadata !{i64 98}
!104 = metadata !{i64 99}
!105 = metadata !{i64 100}
!106 = metadata !{i64 101}
!107 = metadata !{i64 102}
!108 = metadata !{i64 103}
!109 = metadata !{i64 104}
!110 = metadata !{i64 105}
!111 = metadata !{i64 106}
!112 = metadata !{i64 107}
!113 = metadata !{i64 108}
!114 = metadata !{i64 109}
!115 = metadata !{i64 110}
!116 = metadata !{i64 111}
!117 = metadata !{i64 112}
!118 = metadata !{i64 113}
!119 = metadata !{i64 114}
!120 = metadata !{i64 115}
!121 = metadata !{i64 116}
!122 = metadata !{i64 117}
!123 = metadata !{i64 118}
!124 = metadata !{i64 119}
!125 = metadata !{i64 120}
!126 = metadata !{metadata !126, metadata !127, metadata !128}
!127 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!128 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
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
!533 = metadata !{metadata !534, metadata !534, i64 0}
!534 = metadata !{metadata !"int", metadata !51, i64 0}
!535 = metadata !{i64 525}
!536 = metadata !{i64 526}
!537 = metadata !{i64 527}
!538 = metadata !{metadata !539, metadata !540, i64 0}
!539 = metadata !{metadata !"timeval", metadata !540, i64 0, metadata !540, i64 8}
!540 = metadata !{metadata !"long", metadata !51, i64 0}
!541 = metadata !{i64 528}
!542 = metadata !{i64 529}
!543 = metadata !{i64 530}
!544 = metadata !{i64 531}
!545 = metadata !{i64 532}
!546 = metadata !{i64 533}
!547 = metadata !{i64 534}
!548 = metadata !{i64 535}
!549 = metadata !{i64 536}
!550 = metadata !{i64 537}
!551 = metadata !{metadata !539, metadata !540, i64 8}
!552 = metadata !{i64 538}
!553 = metadata !{i64 539}
!554 = metadata !{i64 540}
!555 = metadata !{i64 541}
!556 = metadata !{i64 542}
!557 = metadata !{i64 543}
