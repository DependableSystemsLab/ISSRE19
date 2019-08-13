; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/NPB-EP/fault injection/llfi-O1/npb-ep.ll'
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
@.str8 = private unnamed_addr constant [45 x i8] c" Verification    =            NOT PERFORMED\0A\00", align 1
@.str9 = private unnamed_addr constant [45 x i8] c" Verification    =               SUCCESSFUL\0A\00", align 1
@.str10 = private unnamed_addr constant [45 x i8] c" Verification    =             UNSUCCESSFUL\0A\00", align 1
@.str11 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str12 = private unnamed_addr constant [37 x i8] c" Compile date    =             %12s\0A\00", align 1
@.str13 = private unnamed_addr constant [20 x i8] c"\0A Compile options:\0A\00", align 1
@.str14 = private unnamed_addr constant [23 x i8] c"    CC           = %s\0A\00", align 1
@.str15 = private unnamed_addr constant [23 x i8] c"    CLINK        = %s\0A\00", align 1
@.str16 = private unnamed_addr constant [23 x i8] c"    C_LIB        = %s\0A\00", align 1
@.str17 = private unnamed_addr constant [23 x i8] c"    C_INC        = %s\0A\00", align 1
@.str18 = private unnamed_addr constant [23 x i8] c"    CFLAGS       = %s\0A\00", align 1
@.str19 = private unnamed_addr constant [23 x i8] c"    CLINKFLAGS   = %s\0A\00", align 1
@.str20 = private unnamed_addr constant [41 x i8] c"\0A--------------------------------------\0A\00", align 1
@.str21 = private unnamed_addr constant [39 x i8] c" Please send all errors/feedbacks to:\0A\00", align 1
@.str22 = private unnamed_addr constant [34 x i8] c" Center for Manycore Programming\0A\00", align 1
@.str23 = private unnamed_addr constant [21 x i8] c" cmp@aces.snu.ac.kr\0A\00", align 1
@.str24 = private unnamed_addr constant [24 x i8] c" http://aces.snu.ac.kr\0A\00", align 1
@.str25 = private unnamed_addr constant [40 x i8] c"--------------------------------------\0A\00", align 1
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
@.str26 = private unnamed_addr constant [11 x i8] c"timer.flag\00", align 1
@.str127 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str228 = private unnamed_addr constant [8 x i8] c"%15.0lf\00", align 1
@.str329 = private unnamed_addr constant [58 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER-C) - EP Benchmark\0A\00", align 1
@.str430 = private unnamed_addr constant [44 x i8] c"\0A Number of random numbers generated: %15s\0A\00", align 1
@x = internal global [131072 x double] zeroinitializer, align 16
@q = internal unnamed_addr global [10 x double] zeroinitializer, align 16
@.str531 = private unnamed_addr constant [25 x i8] c"\0AEP Benchmark Results:\0A\0A\00", align 1
@.str632 = private unnamed_addr constant [11 x i8] c"N = 2^%5d\0A\00", align 1
@.str733 = private unnamed_addr constant [30 x i8] c"No. Gaussian Pairs = %15.0lf\0A\00", align 1
@.str834 = private unnamed_addr constant [26 x i8] c"Sums = %25.15lE %25.15lE\0A\00", align 1
@.str935 = private unnamed_addr constant [10 x i8] c"Counts: \0A\00", align 1
@.str1036 = private unnamed_addr constant [12 x i8] c"%3d%15.0lf\0A\00", align 1
@.str1137 = private unnamed_addr constant [3 x i8] c"EP\00", align 1
@.str1238 = private unnamed_addr constant [25 x i8] c"Random numbers generated\00", align 1
@.str1339 = private unnamed_addr constant [6 x i8] c"3.3.1\00", align 1
@.str1440 = private unnamed_addr constant [12 x i8] c"14 Feb 2018\00", align 1
@.str1541 = private unnamed_addr constant [34 x i8] c"$(LLFI_BUILD_ROOT)/llvm/bin/clang\00", align 1
@.str1642 = private unnamed_addr constant [6 x i8] c"$(CC)\00", align 1
@.str1743 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str1844 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str1945 = private unnamed_addr constant [14 x i8] c"-g -Wall -O3 \00", align 1
@.str2046 = private unnamed_addr constant [7 x i8] c"-O3 -v\00", align 1
@.str2147 = private unnamed_addr constant [7 x i8] c"randdp\00", align 1
@.str2248 = private unnamed_addr constant [34 x i8] c"\0ATotal time:     %9.3lf (%6.2lf)\0A\00", align 1
@.str2349 = private unnamed_addr constant [33 x i8] c"Gaussian pairs: %9.3lf (%6.2lf)\0A\00", align 1
@.str2450 = private unnamed_addr constant [33 x i8] c"Random numbers: %9.3lf (%6.2lf)\0A\00", align 1
@str51 = private unnamed_addr constant [57 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER-C) - EP Benchmark\00"
@str25 = private unnamed_addr constant [24 x i8] c"\0AEP Benchmark Results:\0A\00"
@str2652 = private unnamed_addr constant [9 x i8] c"Counts: \00"
@.str53 = private unnamed_addr constant [28 x i8] c"\0A\0A %s Benchmark Completed.\0A\00", align 1
@.str154 = private unnamed_addr constant [37 x i8] c" Class           =             %12c\0A\00", align 1
@.str255 = private unnamed_addr constant [8 x i8] c"%15.0lf\00", align 1
@.str356 = private unnamed_addr constant [34 x i8] c" Size            =          %15s\0A\00", align 1
@.str457 = private unnamed_addr constant [37 x i8] c" Size            =             %12d\0A\00", align 1
@.str558 = private unnamed_addr constant [42 x i8] c" Size            =           %4dx%4dx%4d\0A\00", align 1
@.str659 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str760 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str861 = private unnamed_addr constant [37 x i8] c" Verification    =             %12s\0A\00", align 1
@.str962 = private unnamed_addr constant [11 x i8] c"SUCCESSFUL\00", align 1
@.str1063 = private unnamed_addr constant [13 x i8] c"UNSUCCESSFUL\00", align 1
@.str1164 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str1265 = private unnamed_addr constant [195 x i8] c"\0A--------------------------------------\0A Please send all errors/feedbacks to:\0A Center for Manycore Programming\0A cmp@aces.snu.ac.kr\0A http://aces.snu.ac.kr\0A--------------------------------------\0A\0A\00", align 1
@str66 = private unnamed_addr constant [194 x i8] c"\0A--------------------------------------\0A Please send all errors/feedbacks to:\0A Center for Manycore Programming\0A cmp@aces.snu.ac.kr\0A http://aces.snu.ac.kr\0A--------------------------------------\0A\00"
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
  %1 = tail call fastcc double @elapsed_time(), !llfi_index !55
  %2 = sext i32 %n to i64, !llfi_index !56
  %3 = getelementptr inbounds [64 x double]* @start, i64 0, i64 %2, !llfi_index !57
  store double %1, double* %3, align 8, !tbaa !49, !llfi_index !58
  ret void, !llfi_index !59
}

; Function Attrs: nounwind uwtable
define void @timer_stop(i32 %n) #0 {
  %1 = tail call fastcc double @elapsed_time(), !llfi_index !60
  %2 = sext i32 %n to i64, !llfi_index !61
  %3 = getelementptr inbounds [64 x double]* @start, i64 0, i64 %2, !llfi_index !62
  %4 = load double* %3, align 8, !tbaa !49, !llfi_index !63
  %5 = fsub double %1, %4, !llfi_index !64
  %6 = getelementptr inbounds [64 x double]* @elapsed, i64 0, i64 %2, !llfi_index !65
  %7 = load double* %6, align 8, !tbaa !49, !llfi_index !66
  %8 = fadd double %7, %5, !llfi_index !67
  store double %8, double* %6, align 8, !tbaa !49, !llfi_index !68
  ret void, !llfi_index !69
}

; Function Attrs: nounwind readonly uwtable
define double @timer_read(i32 %n) #3 {
  %1 = sext i32 %n to i64, !llfi_index !70
  %2 = getelementptr inbounds [64 x double]* @elapsed, i64 0, i64 %1, !llfi_index !71
  %3 = load double* %2, align 8, !tbaa !49, !llfi_index !72
  ret double %3, !llfi_index !73
}

; Function Attrs: nounwind uwtable
define internal fastcc double @elapsed_time() #0 {
  %t = alloca double, align 8, !llfi_index !74
  call void @wtime_(double* %t) #2, !llfi_index !75
  %1 = load double* %t, align 8, !tbaa !49, !llfi_index !76
  ret double %1, !llfi_index !77
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %t1 = alloca double, align 8, !llfi_index !78
  %t2 = alloca double, align 8, !llfi_index !79
  %dum = alloca [3 x double], align 16, !llfi_index !80
  %size = alloca [16 x i8], align 16, !llfi_index !81
  %1 = bitcast [3 x double]* %dum to i8*, !llfi_index !82
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([3 x double]* @main.dum to i8*), i64 24, i32 16, i1 false), !llfi_index !83
  %2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str127, i64 0, i64 0)) #2, !llfi_index !84
  %3 = icmp eq %struct._IO_FILE* %2, null, !llfi_index !85
  br i1 %3, label %6, label %4, !llfi_index !86

; <label>:4                                       ; preds = %0
  %5 = call i32 @fclose(%struct._IO_FILE* %2) #2, !llfi_index !87
  br label %6, !llfi_index !88

; <label>:6                                       ; preds = %4, %0
  %timers_enabled.0 = phi i32 [ 1, %4 ], [ 0, %0 ], !llfi_index !89
  %7 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 0, !llfi_index !90
  %8 = call i32 (i8*, i8*, ...)* @sprintf(i8* %7, i8* getelementptr inbounds ([8 x i8]* @.str228, i64 0, i64 0), double 0x4190000000000000) #2, !llfi_index !91
  %9 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 14, !llfi_index !92
  %10 = load i8* %9, align 2, !tbaa !93, !llfi_index !94
  %11 = icmp eq i8 %10, 46, !llfi_index !95
  %. = select i1 %11, i64 14, i64 15, !llfi_index !96
  %12 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 %., !llfi_index !97
  store i8 0, i8* %12, align 1, !tbaa !93, !llfi_index !98
  %puts = call i32 @puts(i8* getelementptr inbounds ([57 x i8]* @str51, i64 0, i64 0)), !llfi_index !99
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str430, i64 0, i64 0), i8* %7) #2, !llfi_index !100
  %14 = getelementptr inbounds [3 x double]* %dum, i64 0, i64 0, !llfi_index !101
  %15 = getelementptr inbounds [3 x double]* %dum, i64 0, i64 1, !llfi_index !102
  %16 = load double* %15, align 8, !tbaa !49, !llfi_index !103
  %17 = getelementptr inbounds [3 x double]* %dum, i64 0, i64 2, !llfi_index !104
  call void @vranlc(i32 0, double* %14, double %16, double* %17) #2, !llfi_index !105
  %18 = load double* %17, align 16, !tbaa !49, !llfi_index !106
  %19 = call double @randlc(double* %15, double %18) #2, !llfi_index !107
  store double %19, double* %14, align 16, !tbaa !49, !llfi_index !108
  br label %20, !llfi_index !109

; <label>:20                                      ; preds = %20, %6
  %indvars.iv32 = phi i64 [ 0, %6 ], [ %indvars.iv.next33, %20 ], !llfi_index !110
  %21 = getelementptr inbounds [131072 x double]* @x, i64 0, i64 %indvars.iv32, !llfi_index !111
  store double -1.000000e+99, double* %21, align 8, !tbaa !49, !llfi_index !112
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1, !llfi_index !113
  %exitcond34 = icmp eq i64 %indvars.iv.next33, 131072, !llfi_index !114
  br i1 %exitcond34, label %22, label %20, !llfi_index !115

; <label>:22                                      ; preds = %20
  call void @timer_clear(i32 0) #2, !llfi_index !116
  call void @timer_clear(i32 1) #2, !llfi_index !117
  call void @timer_clear(i32 2) #2, !llfi_index !118
  call void @timer_start(i32 0) #2, !llfi_index !119
  store double 0x41D2309CE5400000, double* %t1, align 8, !tbaa !49, !llfi_index !120
  call void @vranlc(i32 0, double* %t1, double 0x41D2309CE5400000, double* getelementptr inbounds ([131072 x double]* @x, i64 0, i64 0)) #2, !llfi_index !121
  store double 0x41D2309CE5400000, double* %t1, align 8, !tbaa !49, !llfi_index !122
  br label %23, !llfi_index !123

; <label>:23                                      ; preds = %23, %22
  %24 = phi double [ 0x41D2309CE5400000, %22 ], [ %27, %23 ], !llfi_index !124
  %i.118 = phi i32 [ 0, %22 ], [ %26, %23 ], !llfi_index !125
  %25 = call double @randlc(double* %t1, double %24) #2, !llfi_index !126
  store double %25, double* %t2, align 8, !tbaa !49, !llfi_index !127
  %26 = add nsw i32 %i.118, 1, !llfi_index !128
  %27 = load double* %t1, align 8, !tbaa !49, !llfi_index !129
  %exitcond31 = icmp eq i32 %26, 17, !llfi_index !130
  br i1 %exitcond31, label %.preheader12, label %23, !llfi_index !131

.preheader12:                                     ; preds = %23
  call void @llvm.memset.p0i8.i64(i8* bitcast ([10 x double]* @q to i8*), i8 0, i64 80, i32 16, i1 false), !llfi_index !132
  %28 = icmp ne i32 %timers_enabled.0, 0, !llfi_index !133
  br label %29, !llfi_index !134

; <label>:29                                      ; preds = %88, %.preheader12
  %k.014 = phi i32 [ 1, %.preheader12 ], [ %89, %88 ], !llfi_index !135
  %30 = phi <2 x double> [ zeroinitializer, %.preheader12 ], [ %83, %88 ], !llfi_index !136
  %31 = add nsw i32 %k.014, -1, !llfi_index !137
  store double 0x41B033C4D7000000, double* %t1, align 8, !tbaa !49, !llfi_index !138
  store double %27, double* %t2, align 8, !tbaa !49, !llfi_index !139
  br label %32, !llfi_index !140

; <label>:32                                      ; preds = %41, %29
  %kk.08 = phi i32 [ %31, %29 ], [ %33, %41 ], !llfi_index !141
  %i.37 = phi i32 [ 1, %29 ], [ %44, %41 ], !llfi_index !142
  %33 = sdiv i32 %kk.08, 2, !llfi_index !143
  %34 = shl nsw i32 %33, 1, !llfi_index !144
  %35 = icmp eq i32 %34, %kk.08, !llfi_index !145
  br i1 %35, label %39, label %36, !llfi_index !146

; <label>:36                                      ; preds = %32
  %37 = load double* %t2, align 8, !tbaa !49, !llfi_index !147
  %38 = call double @randlc(double* %t1, double %37) #2, !llfi_index !148
  br label %39, !llfi_index !149

; <label>:39                                      ; preds = %36, %32
  %kk.0.off = add i32 %kk.08, 1, !llfi_index !150
  %40 = icmp ult i32 %kk.0.off, 3, !llfi_index !151
  br i1 %40, label %46, label %41, !llfi_index !152

; <label>:41                                      ; preds = %39
  %42 = load double* %t2, align 8, !tbaa !49, !llfi_index !153
  %43 = call double @randlc(double* %t2, double %42) #2, !llfi_index !154
  %44 = add nsw i32 %i.37, 1, !llfi_index !155
  %45 = icmp slt i32 %44, 101, !llfi_index !156
  br i1 %45, label %32, label %46, !llfi_index !157

; <label>:46                                      ; preds = %41, %39
  br i1 %28, label %48, label %47, !llfi_index !158

; <label>:47                                      ; preds = %46
  call void @vranlc(i32 131072, double* %t1, double 0x41D2309CE5400000, double* getelementptr inbounds ([131072 x double]* @x, i64 0, i64 0)) #2, !llfi_index !159
  br label %.critedge3.preheader, !llfi_index !160

; <label>:48                                      ; preds = %46
  call void @timer_start(i32 2) #2, !llfi_index !161
  call void @vranlc(i32 131072, double* %t1, double 0x41D2309CE5400000, double* getelementptr inbounds ([131072 x double]* @x, i64 0, i64 0)) #2, !llfi_index !162
  call void @timer_stop(i32 2) #2, !llfi_index !163
  call void @timer_start(i32 1) #2, !llfi_index !164
  br label %.critedge3.preheader, !llfi_index !165

.critedge3.preheader:                             ; preds = %.critedge3, %48, %47
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %.critedge3 ], [ 0, %48 ], [ 0, %47 ], !llfi_index !166
  %49 = phi <2 x double> [ %83, %.critedge3 ], [ %30, %48 ], [ %30, %47 ], !llfi_index !167
  %50 = shl nsw i64 %indvars.iv23, 1, !llfi_index !168
  %51 = getelementptr inbounds [131072 x double]* @x, i64 0, i64 %50, !llfi_index !169
  %52 = bitcast double* %51 to <2 x double>*, !llfi_index !170
  %53 = load <2 x double>* %52, align 16, !tbaa !49, !llfi_index !171
  %54 = fmul <2 x double> %53, <double 2.000000e+00, double 2.000000e+00>, !llfi_index !172
  %55 = fadd <2 x double> %54, <double -1.000000e+00, double -1.000000e+00>, !llfi_index !173
  %56 = extractelement <2 x double> %55, i32 0, !llfi_index !174
  %57 = fmul double %56, %56, !llfi_index !175
  %58 = extractelement <2 x double> %55, i32 1, !llfi_index !176
  %59 = fmul double %58, %58, !llfi_index !177
  %60 = fadd double %57, %59, !llfi_index !178
  store double %60, double* %t1, align 8, !tbaa !49, !llfi_index !179
  %61 = fcmp ugt double %60, 1.000000e+00, !llfi_index !180
  br i1 %61, label %.critedge3, label %62, !llfi_index !181

; <label>:62                                      ; preds = %.critedge3.preheader
  %63 = call double @log(double %60) #2, !llfi_index !182
  %64 = fmul double %63, -2.000000e+00, !llfi_index !183
  %65 = load double* %t1, align 8, !tbaa !49, !llfi_index !184
  %66 = fdiv double %64, %65, !llfi_index !185
  %67 = call double @sqrt(double %66) #2, !llfi_index !186
  store double %67, double* %t2, align 8, !tbaa !49, !llfi_index !187
  %68 = insertelement <2 x double> undef, double %67, i32 0, !llfi_index !188
  %69 = insertelement <2 x double> %68, double %67, i32 1, !llfi_index !189
  %70 = fmul <2 x double> %55, %69, !llfi_index !190
  %71 = extractelement <2 x double> %70, i32 0, !llfi_index !191
  %72 = call double @fabs(double %71) #5, !llfi_index !192
  %73 = extractelement <2 x double> %70, i32 1, !llfi_index !193
  %74 = call double @fabs(double %73) #5, !llfi_index !194
  %75 = fcmp ogt double %72, %74, !llfi_index !195
  %.sink = select i1 %75, double %71, double %73, !llfi_index !196
  %76 = call double @fabs(double %.sink) #5, !llfi_index !197
  %77 = fptosi double %76 to i32, !llfi_index !198
  %78 = sext i32 %77 to i64, !llfi_index !199
  %79 = getelementptr inbounds [10 x double]* @q, i64 0, i64 %78, !llfi_index !200
  %80 = load double* %79, align 8, !tbaa !49, !llfi_index !201
  %81 = fadd double %80, 1.000000e+00, !llfi_index !202
  store double %81, double* %79, align 8, !tbaa !49, !llfi_index !203
  %82 = fadd <2 x double> %49, %70, !llfi_index !204
  br label %.critedge3, !llfi_index !205

.critedge3:                                       ; preds = %62, %.critedge3.preheader
  %83 = phi <2 x double> [ %82, %62 ], [ %49, %.critedge3.preheader ], !llfi_index !206
  %84 = extractelement <2 x double> %83, i32 1, !llfi_index !207
  %85 = extractelement <2 x double> %83, i32 0, !llfi_index !208
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1, !llfi_index !209
  %exitcond25 = icmp eq i64 %indvars.iv.next24, 65536, !llfi_index !210
  br i1 %exitcond25, label %86, label %.critedge3.preheader, !llfi_index !211

; <label>:86                                      ; preds = %.critedge3
  br i1 %28, label %87, label %88, !llfi_index !212

; <label>:87                                      ; preds = %86
  call void @timer_stop(i32 1) #2, !llfi_index !213
  br label %88, !llfi_index !214

; <label>:88                                      ; preds = %87, %86
  %89 = add nsw i32 %k.014, 1, !llfi_index !215
  %exitcond26 = icmp eq i32 %89, 513, !llfi_index !216
  br i1 %exitcond26, label %.preheader, label %29, !llfi_index !217

.preheader:                                       ; preds = %.preheader, %88
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %.preheader ], [ 0, %88 ], !llfi_index !218
  %gc.05 = phi double [ %92, %.preheader ], [ 0.000000e+00, %88 ], !llfi_index !219
  %90 = getelementptr inbounds [10 x double]* @q, i64 0, i64 %indvars.iv20, !llfi_index !220
  %91 = load double* %90, align 8, !tbaa !49, !llfi_index !221
  %92 = fadd double %gc.05, %91, !llfi_index !222
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1, !llfi_index !223
  %exitcond22 = icmp eq i64 %indvars.iv.next21, 10, !llfi_index !224
  br i1 %exitcond22, label %93, label %.preheader, !llfi_index !225

; <label>:93                                      ; preds = %.preheader
  call void @timer_stop(i32 0) #2, !llfi_index !226
  %94 = call double @timer_read(i32 0) #2, !llfi_index !227
  %95 = fadd double %85, 0x40A65EA3B3DDC403, !llfi_index !228
  %96 = fdiv double %95, 0xC0A65EA3B3DDC403, !llfi_index !229
  %97 = call double @fabs(double %96) #5, !llfi_index !230
  %98 = fcmp ugt double %97, 1.000000e-08, !llfi_index !231
  br i1 %98, label %104, label %99, !llfi_index !232

; <label>:99                                      ; preds = %93
  %100 = fadd double %84, 0x40B8B00DBDEA03C7, !llfi_index !233
  %101 = fdiv double %100, 0xC0B8B00DBDEA03C7, !llfi_index !234
  %102 = call double @fabs(double %101) #5, !llfi_index !235
  %103 = fcmp ole double %102, 1.000000e-08, !llfi_index !236
  br label %104, !llfi_index !237

; <label>:104                                     ; preds = %99, %93
  %105 = phi i1 [ false, %93 ], [ %103, %99 ], !llfi_index !238
  %106 = fdiv double 0x4190000000000000, %94, !llfi_index !239
  %puts1 = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str25, i64 0, i64 0)), !llfi_index !240
  %107 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str632, i64 0, i64 0), i32 25) #2, !llfi_index !241
  %108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str733, i64 0, i64 0), double %92) #2, !llfi_index !242
  %109 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str834, i64 0, i64 0), double %85, double %84) #2, !llfi_index !243
  %puts2 = call i32 @puts(i8* getelementptr inbounds ([9 x i8]* @str2652, i64 0, i64 0)), !llfi_index !244
  br label %110, !llfi_index !245

; <label>:110                                     ; preds = %110, %104
  %indvars.iv = phi i64 [ 0, %104 ], [ %indvars.iv.next, %110 ], !llfi_index !246
  %111 = getelementptr inbounds [10 x double]* @q, i64 0, i64 %indvars.iv, !llfi_index !247
  %112 = load double* %111, align 8, !tbaa !49, !llfi_index !248
  %113 = trunc i64 %indvars.iv to i32, !llfi_index !249
  %114 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str1036, i64 0, i64 0), i32 %113, double %112) #2, !llfi_index !250
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !251
  %exitcond = icmp eq i64 %indvars.iv.next, 10, !llfi_index !252
  br i1 %exitcond, label %115, label %110, !llfi_index !253

; <label>:115                                     ; preds = %110
  %116 = zext i1 %105 to i32, !llfi_index !254
  %117 = fdiv double %106, 1.000000e+06, !llfi_index !255
  call void @print_results(i8* getelementptr inbounds ([3 x i8]* @.str1137, i64 0, i64 0), i8 signext 87, i32 26, i32 0, i32 0, i32 0, double %94, double %117, i8* getelementptr inbounds ([25 x i8]* @.str1238, i64 0, i64 0), i32 %116, i8* getelementptr inbounds ([6 x i8]* @.str1339, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1440, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str1541, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str1642, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str1743, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1844, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str1945, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2046, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2147, i64 0, i64 0)) #2, !llfi_index !256
  %118 = icmp eq i32 %timers_enabled.0, 0, !llfi_index !257
  br i1 %118, label %133, label %119, !llfi_index !258

; <label>:119                                     ; preds = %115
  %120 = fcmp ugt double %94, 0.000000e+00, !llfi_index !259
  %tm.0 = select i1 %120, double %94, double 1.000000e+00, !llfi_index !260
  %121 = call double @timer_read(i32 0) #2, !llfi_index !261
  %122 = fmul double %121, 1.000000e+02, !llfi_index !262
  %123 = fdiv double %122, %tm.0, !llfi_index !263
  %124 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str2248, i64 0, i64 0), double %121, double %123) #2, !llfi_index !264
  %125 = call double @timer_read(i32 1) #2, !llfi_index !265
  %126 = fmul double %125, 1.000000e+02, !llfi_index !266
  %127 = fdiv double %126, %tm.0, !llfi_index !267
  %128 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str2349, i64 0, i64 0), double %125, double %127) #2, !llfi_index !268
  %129 = call double @timer_read(i32 2) #2, !llfi_index !269
  %130 = fmul double %129, 1.000000e+02, !llfi_index !270
  %131 = fdiv double %130, %tm.0, !llfi_index !271
  %132 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str2450, i64 0, i64 0), double %129, double %131) #2, !llfi_index !272
  br label %133, !llfi_index !273

; <label>:133                                     ; preds = %119, %115
  ret i32 0, !llfi_index !274
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
  %size = alloca [16 x i8], align 16, !llfi_index !275
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str53, i64 0, i64 0), i8* %name) #2, !llfi_index !276
  %2 = sext i8 %class to i32, !llfi_index !277
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str154, i64 0, i64 0), i32 %2) #2, !llfi_index !278
  %4 = or i32 %n3, %n2, !llfi_index !279
  %5 = icmp eq i32 %4, 0, !llfi_index !280
  br i1 %5, label %6, label %26, !llfi_index !281

; <label>:6                                       ; preds = %0
  %7 = load i8* %name, align 1, !tbaa !93, !llfi_index !282
  %8 = icmp eq i8 %7, 69, !llfi_index !283
  br i1 %8, label %9, label %24, !llfi_index !284

; <label>:9                                       ; preds = %6
  %10 = getelementptr inbounds i8* %name, i64 1, !llfi_index !285
  %11 = load i8* %10, align 1, !tbaa !93, !llfi_index !286
  %12 = icmp eq i8 %11, 80, !llfi_index !287
  br i1 %12, label %13, label %24, !llfi_index !288

; <label>:13                                      ; preds = %9
  %14 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 0, !llfi_index !289
  %15 = call double @ldexp(double 1.000000e+00, i32 %n1) #2, !llfi_index !290
  %16 = call i32 (i8*, i8*, ...)* @sprintf(i8* %14, i8* getelementptr inbounds ([8 x i8]* @.str255, i64 0, i64 0), double %15) #2, !llfi_index !291
  %17 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 14, !llfi_index !292
  %18 = load i8* %17, align 2, !tbaa !93, !llfi_index !293
  %19 = icmp eq i8 %18, 46, !llfi_index !294
  br i1 %19, label %20, label %21, !llfi_index !295

; <label>:20                                      ; preds = %13
  store i8 32, i8* %17, align 2, !tbaa !93, !llfi_index !296
  br label %21, !llfi_index !297

; <label>:21                                      ; preds = %20, %13
  %j.0 = phi i64 [ 14, %20 ], [ 15, %13 ], !llfi_index !298
  %22 = getelementptr inbounds [16 x i8]* %size, i64 0, i64 %j.0, !llfi_index !299
  store i8 0, i8* %22, align 1, !tbaa !93, !llfi_index !300
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str356, i64 0, i64 0), i8* %14) #2, !llfi_index !301
  br label %28, !llfi_index !302

; <label>:24                                      ; preds = %9, %6
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str457, i64 0, i64 0), i32 %n1) #2, !llfi_index !303
  br label %28, !llfi_index !304

; <label>:26                                      ; preds = %0
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str558, i64 0, i64 0), i32 %n1, i32 %n2, i32 %n3) #2, !llfi_index !305
  br label %28, !llfi_index !306

; <label>:28                                      ; preds = %26, %24, %21
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str659, i64 0, i64 0), i32 %niter) #2, !llfi_index !307
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str760, i64 0, i64 0), i8* %optype) #2, !llfi_index !308
  %31 = icmp eq i32 %verified, 0, !llfi_index !309
  br i1 %31, label %34, label %32, !llfi_index !310

; <label>:32                                      ; preds = %28
  %33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str861, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str962, i64 0, i64 0)) #2, !llfi_index !311
  br label %36, !llfi_index !312

; <label>:34                                      ; preds = %28
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str861, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str1063, i64 0, i64 0)) #2, !llfi_index !313
  br label %36, !llfi_index !314

; <label>:36                                      ; preds = %34, %32
  %37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str1164, i64 0, i64 0), i8* %npbversion) #2, !llfi_index !315
  %puts = call i32 @puts(i8* getelementptr inbounds ([194 x i8]* @str66, i64 0, i64 0)), !llfi_index !316
  ret void, !llfi_index !317
}

declare double @ldexp(double, i32)

; Function Attrs: nounwind uwtable
define double @randlc(double* nocapture %x, double %a) #0 {
  %1 = fmul double %a, 0x3E80000000000000, !llfi_index !318
  %2 = fptosi double %1 to i32, !llfi_index !319
  %3 = sitofp i32 %2 to double, !llfi_index !320
  %4 = fmul double %3, 8.388608e+06, !llfi_index !321
  %5 = fsub double %a, %4, !llfi_index !322
  %6 = load double* %x, align 8, !tbaa !49, !llfi_index !323
  %7 = fmul double %6, 0x3E80000000000000, !llfi_index !324
  %8 = fptosi double %7 to i32, !llfi_index !325
  %9 = sitofp i32 %8 to double, !llfi_index !326
  %10 = fmul double %9, 8.388608e+06, !llfi_index !327
  %11 = fsub double %6, %10, !llfi_index !328
  %12 = fmul double %3, %11, !llfi_index !329
  %13 = fmul double %5, %9, !llfi_index !330
  %14 = fadd double %13, %12, !llfi_index !331
  %15 = fmul double %14, 0x3E80000000000000, !llfi_index !332
  %16 = fptosi double %15 to i32, !llfi_index !333
  %17 = sitofp i32 %16 to double, !llfi_index !334
  %18 = fmul double %17, 8.388608e+06, !llfi_index !335
  %19 = fsub double %14, %18, !llfi_index !336
  %20 = fmul double %19, 8.388608e+06, !llfi_index !337
  %21 = fmul double %5, %11, !llfi_index !338
  %22 = fadd double %21, %20, !llfi_index !339
  %23 = fmul double %22, 0x3D10000000000000, !llfi_index !340
  %24 = fptosi double %23 to i32, !llfi_index !341
  %25 = sitofp i32 %24 to double, !llfi_index !342
  %26 = fmul double %25, 0x42D0000000000000, !llfi_index !343
  %27 = fsub double %22, %26, !llfi_index !344
  store double %27, double* %x, align 8, !tbaa !49, !llfi_index !345
  %28 = fmul double %27, 0x3D10000000000000, !llfi_index !346
  ret double %28, !llfi_index !347
}

; Function Attrs: nounwind uwtable
define void @vranlc(i32 %n, double* nocapture %x, double %a, double* nocapture %y) #0 {
  %1 = fmul double %a, 0x3E80000000000000, !llfi_index !348
  %2 = fptosi double %1 to i32, !llfi_index !349
  %3 = sitofp i32 %2 to double, !llfi_index !350
  %4 = fmul double %3, 8.388608e+06, !llfi_index !351
  %5 = fsub double %a, %4, !llfi_index !352
  %6 = icmp sgt i32 %n, 0, !llfi_index !353
  br i1 %6, label %.lr.ph, label %._crit_edge, !llfi_index !354

.lr.ph:                                           ; preds = %.lr.ph, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ], !llfi_index !355
  %7 = load double* %x, align 8, !tbaa !49, !llfi_index !356
  %8 = fmul double %7, 0x3E80000000000000, !llfi_index !357
  %9 = fptosi double %8 to i32, !llfi_index !358
  %10 = sitofp i32 %9 to double, !llfi_index !359
  %11 = fmul double %10, 8.388608e+06, !llfi_index !360
  %12 = fsub double %7, %11, !llfi_index !361
  %13 = fmul double %3, %12, !llfi_index !362
  %14 = fmul double %5, %10, !llfi_index !363
  %15 = fadd double %14, %13, !llfi_index !364
  %16 = fmul double %15, 0x3E80000000000000, !llfi_index !365
  %17 = fptosi double %16 to i32, !llfi_index !366
  %18 = sitofp i32 %17 to double, !llfi_index !367
  %19 = fmul double %18, 8.388608e+06, !llfi_index !368
  %20 = fsub double %15, %19, !llfi_index !369
  %21 = fmul double %20, 8.388608e+06, !llfi_index !370
  %22 = fmul double %5, %12, !llfi_index !371
  %23 = fadd double %22, %21, !llfi_index !372
  %24 = fmul double %23, 0x3D10000000000000, !llfi_index !373
  %25 = fptosi double %24 to i32, !llfi_index !374
  %26 = sitofp i32 %25 to double, !llfi_index !375
  %27 = fmul double %26, 0x42D0000000000000, !llfi_index !376
  %28 = fsub double %23, %27, !llfi_index !377
  store double %28, double* %x, align 8, !tbaa !49, !llfi_index !378
  %29 = fmul double %28, 0x3D10000000000000, !llfi_index !379
  %30 = getelementptr inbounds double* %y, i64 %indvars.iv, !llfi_index !380
  store double %29, double* %30, align 8, !tbaa !49, !llfi_index !381
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !382
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !383
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !llfi_index !384
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !385

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void, !llfi_index !386
}

; Function Attrs: nounwind uwtable
define void @wtime_(double* nocapture %t) #0 {
  %tv = alloca %struct.timeval, align 8, !llfi_index !387
  %1 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #2, !llfi_index !388
  %2 = load i32* @wtime_.sec, align 4, !tbaa !389, !llfi_index !391
  %3 = icmp slt i32 %2, 0, !llfi_index !392
  br i1 %3, label %4, label %8, !llfi_index !393

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 0, !llfi_index !394
  %6 = load i64* %5, align 8, !tbaa !395, !llfi_index !398
  %7 = trunc i64 %6 to i32, !llfi_index !399
  store i32 %7, i32* @wtime_.sec, align 4, !tbaa !389, !llfi_index !400
  br label %8, !llfi_index !401

; <label>:8                                       ; preds = %4, %0
  %9 = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 0, !llfi_index !402
  %10 = load i64* %9, align 8, !tbaa !395, !llfi_index !403
  %11 = load i32* @wtime_.sec, align 4, !tbaa !389, !llfi_index !404
  %12 = sext i32 %11 to i64, !llfi_index !405
  %13 = sub nsw i64 %10, %12, !llfi_index !406
  %14 = sitofp i64 %13 to double, !llfi_index !407
  %15 = getelementptr inbounds %struct.timeval* %tv, i64 0, i32 1, !llfi_index !408
  %16 = load i64* %15, align 8, !tbaa !409, !llfi_index !410
  %17 = sitofp i64 %16 to double, !llfi_index !411
  %18 = fmul double %17, 1.000000e-06, !llfi_index !412
  %19 = fadd double %14, %18, !llfi_index !413
  store double %19, double* %t, align 8, !tbaa !49, !llfi_index !414
  ret void, !llfi_index !415
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
!93 = metadata !{metadata !51, metadata !51, i64 0}
!94 = metadata !{i64 89}
!95 = metadata !{i64 90}
!96 = metadata !{i64 91}
!97 = metadata !{i64 92}
!98 = metadata !{i64 93}
!99 = metadata !{i64 94}
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
!126 = metadata !{i64 121}
!127 = metadata !{i64 122}
!128 = metadata !{i64 123}
!129 = metadata !{i64 124}
!130 = metadata !{i64 125}
!131 = metadata !{i64 126}
!132 = metadata !{i64 127}
!133 = metadata !{i64 128}
!134 = metadata !{i64 129}
!135 = metadata !{i64 130}
!136 = metadata !{i64 131}
!137 = metadata !{i64 132}
!138 = metadata !{i64 133}
!139 = metadata !{i64 134}
!140 = metadata !{i64 135}
!141 = metadata !{i64 136}
!142 = metadata !{i64 137}
!143 = metadata !{i64 138}
!144 = metadata !{i64 139}
!145 = metadata !{i64 140}
!146 = metadata !{i64 141}
!147 = metadata !{i64 142}
!148 = metadata !{i64 143}
!149 = metadata !{i64 144}
!150 = metadata !{i64 145}
!151 = metadata !{i64 146}
!152 = metadata !{i64 147}
!153 = metadata !{i64 148}
!154 = metadata !{i64 149}
!155 = metadata !{i64 150}
!156 = metadata !{i64 151}
!157 = metadata !{i64 152}
!158 = metadata !{i64 153}
!159 = metadata !{i64 154}
!160 = metadata !{i64 155}
!161 = metadata !{i64 156}
!162 = metadata !{i64 157}
!163 = metadata !{i64 158}
!164 = metadata !{i64 159}
!165 = metadata !{i64 160}
!166 = metadata !{i64 161}
!167 = metadata !{i64 162}
!168 = metadata !{i64 163}
!169 = metadata !{i64 164}
!170 = metadata !{i64 165}
!171 = metadata !{i64 166}
!172 = metadata !{i64 167}
!173 = metadata !{i64 168}
!174 = metadata !{i64 169}
!175 = metadata !{i64 170}
!176 = metadata !{i64 171}
!177 = metadata !{i64 172}
!178 = metadata !{i64 173}
!179 = metadata !{i64 174}
!180 = metadata !{i64 175}
!181 = metadata !{i64 176}
!182 = metadata !{i64 177}
!183 = metadata !{i64 178}
!184 = metadata !{i64 179}
!185 = metadata !{i64 180}
!186 = metadata !{i64 181}
!187 = metadata !{i64 182}
!188 = metadata !{i64 183}
!189 = metadata !{i64 184}
!190 = metadata !{i64 185}
!191 = metadata !{i64 186}
!192 = metadata !{i64 187}
!193 = metadata !{i64 188}
!194 = metadata !{i64 189}
!195 = metadata !{i64 190}
!196 = metadata !{i64 191}
!197 = metadata !{i64 192}
!198 = metadata !{i64 193}
!199 = metadata !{i64 194}
!200 = metadata !{i64 195}
!201 = metadata !{i64 196}
!202 = metadata !{i64 197}
!203 = metadata !{i64 198}
!204 = metadata !{i64 199}
!205 = metadata !{i64 200}
!206 = metadata !{i64 201}
!207 = metadata !{i64 202}
!208 = metadata !{i64 203}
!209 = metadata !{i64 204}
!210 = metadata !{i64 205}
!211 = metadata !{i64 206}
!212 = metadata !{i64 207}
!213 = metadata !{i64 208}
!214 = metadata !{i64 209}
!215 = metadata !{i64 210}
!216 = metadata !{i64 211}
!217 = metadata !{i64 212}
!218 = metadata !{i64 213}
!219 = metadata !{i64 214}
!220 = metadata !{i64 215}
!221 = metadata !{i64 216}
!222 = metadata !{i64 217}
!223 = metadata !{i64 218}
!224 = metadata !{i64 219}
!225 = metadata !{i64 220}
!226 = metadata !{i64 221}
!227 = metadata !{i64 222}
!228 = metadata !{i64 223}
!229 = metadata !{i64 224}
!230 = metadata !{i64 225}
!231 = metadata !{i64 226}
!232 = metadata !{i64 227}
!233 = metadata !{i64 228}
!234 = metadata !{i64 229}
!235 = metadata !{i64 230}
!236 = metadata !{i64 231}
!237 = metadata !{i64 232}
!238 = metadata !{i64 233}
!239 = metadata !{i64 234}
!240 = metadata !{i64 235}
!241 = metadata !{i64 236}
!242 = metadata !{i64 237}
!243 = metadata !{i64 238}
!244 = metadata !{i64 239}
!245 = metadata !{i64 240}
!246 = metadata !{i64 241}
!247 = metadata !{i64 242}
!248 = metadata !{i64 243}
!249 = metadata !{i64 244}
!250 = metadata !{i64 245}
!251 = metadata !{i64 246}
!252 = metadata !{i64 247}
!253 = metadata !{i64 248}
!254 = metadata !{i64 249}
!255 = metadata !{i64 250}
!256 = metadata !{i64 251}
!257 = metadata !{i64 252}
!258 = metadata !{i64 253}
!259 = metadata !{i64 254}
!260 = metadata !{i64 255}
!261 = metadata !{i64 256}
!262 = metadata !{i64 257}
!263 = metadata !{i64 258}
!264 = metadata !{i64 259}
!265 = metadata !{i64 260}
!266 = metadata !{i64 261}
!267 = metadata !{i64 262}
!268 = metadata !{i64 263}
!269 = metadata !{i64 264}
!270 = metadata !{i64 265}
!271 = metadata !{i64 266}
!272 = metadata !{i64 267}
!273 = metadata !{i64 268}
!274 = metadata !{i64 269}
!275 = metadata !{i64 270}
!276 = metadata !{i64 271}
!277 = metadata !{i64 272}
!278 = metadata !{i64 273}
!279 = metadata !{i64 274}
!280 = metadata !{i64 275}
!281 = metadata !{i64 276}
!282 = metadata !{i64 277}
!283 = metadata !{i64 278}
!284 = metadata !{i64 279}
!285 = metadata !{i64 280}
!286 = metadata !{i64 281}
!287 = metadata !{i64 282}
!288 = metadata !{i64 283}
!289 = metadata !{i64 284}
!290 = metadata !{i64 285}
!291 = metadata !{i64 286}
!292 = metadata !{i64 287}
!293 = metadata !{i64 288}
!294 = metadata !{i64 289}
!295 = metadata !{i64 290}
!296 = metadata !{i64 291}
!297 = metadata !{i64 292}
!298 = metadata !{i64 293}
!299 = metadata !{i64 294}
!300 = metadata !{i64 295}
!301 = metadata !{i64 296}
!302 = metadata !{i64 297}
!303 = metadata !{i64 298}
!304 = metadata !{i64 299}
!305 = metadata !{i64 300}
!306 = metadata !{i64 301}
!307 = metadata !{i64 302}
!308 = metadata !{i64 303}
!309 = metadata !{i64 304}
!310 = metadata !{i64 305}
!311 = metadata !{i64 306}
!312 = metadata !{i64 307}
!313 = metadata !{i64 308}
!314 = metadata !{i64 309}
!315 = metadata !{i64 310}
!316 = metadata !{i64 311}
!317 = metadata !{i64 312}
!318 = metadata !{i64 313}
!319 = metadata !{i64 314}
!320 = metadata !{i64 315}
!321 = metadata !{i64 316}
!322 = metadata !{i64 317}
!323 = metadata !{i64 318}
!324 = metadata !{i64 319}
!325 = metadata !{i64 320}
!326 = metadata !{i64 321}
!327 = metadata !{i64 322}
!328 = metadata !{i64 323}
!329 = metadata !{i64 324}
!330 = metadata !{i64 325}
!331 = metadata !{i64 326}
!332 = metadata !{i64 327}
!333 = metadata !{i64 328}
!334 = metadata !{i64 329}
!335 = metadata !{i64 330}
!336 = metadata !{i64 331}
!337 = metadata !{i64 332}
!338 = metadata !{i64 333}
!339 = metadata !{i64 334}
!340 = metadata !{i64 335}
!341 = metadata !{i64 336}
!342 = metadata !{i64 337}
!343 = metadata !{i64 338}
!344 = metadata !{i64 339}
!345 = metadata !{i64 340}
!346 = metadata !{i64 341}
!347 = metadata !{i64 342}
!348 = metadata !{i64 343}
!349 = metadata !{i64 344}
!350 = metadata !{i64 345}
!351 = metadata !{i64 346}
!352 = metadata !{i64 347}
!353 = metadata !{i64 348}
!354 = metadata !{i64 349}
!355 = metadata !{i64 350}
!356 = metadata !{i64 351}
!357 = metadata !{i64 352}
!358 = metadata !{i64 353}
!359 = metadata !{i64 354}
!360 = metadata !{i64 355}
!361 = metadata !{i64 356}
!362 = metadata !{i64 357}
!363 = metadata !{i64 358}
!364 = metadata !{i64 359}
!365 = metadata !{i64 360}
!366 = metadata !{i64 361}
!367 = metadata !{i64 362}
!368 = metadata !{i64 363}
!369 = metadata !{i64 364}
!370 = metadata !{i64 365}
!371 = metadata !{i64 366}
!372 = metadata !{i64 367}
!373 = metadata !{i64 368}
!374 = metadata !{i64 369}
!375 = metadata !{i64 370}
!376 = metadata !{i64 371}
!377 = metadata !{i64 372}
!378 = metadata !{i64 373}
!379 = metadata !{i64 374}
!380 = metadata !{i64 375}
!381 = metadata !{i64 376}
!382 = metadata !{i64 377}
!383 = metadata !{i64 378}
!384 = metadata !{i64 379}
!385 = metadata !{i64 380}
!386 = metadata !{i64 381}
!387 = metadata !{i64 382}
!388 = metadata !{i64 383}
!389 = metadata !{metadata !390, metadata !390, i64 0}
!390 = metadata !{metadata !"int", metadata !51, i64 0}
!391 = metadata !{i64 384}
!392 = metadata !{i64 385}
!393 = metadata !{i64 386}
!394 = metadata !{i64 387}
!395 = metadata !{metadata !396, metadata !397, i64 0}
!396 = metadata !{metadata !"timeval", metadata !397, i64 0, metadata !397, i64 8}
!397 = metadata !{metadata !"long", metadata !51, i64 0}
!398 = metadata !{i64 388}
!399 = metadata !{i64 389}
!400 = metadata !{i64 390}
!401 = metadata !{i64 391}
!402 = metadata !{i64 392}
!403 = metadata !{i64 393}
!404 = metadata !{i64 394}
!405 = metadata !{i64 395}
!406 = metadata !{i64 396}
!407 = metadata !{i64 397}
!408 = metadata !{i64 398}
!409 = metadata !{metadata !396, metadata !397, i64 8}
!410 = metadata !{i64 399}
!411 = metadata !{i64 400}
!412 = metadata !{i64 401}
!413 = metadata !{i64 402}
!414 = metadata !{i64 403}
!415 = metadata !{i64 404}
