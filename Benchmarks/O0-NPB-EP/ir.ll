; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/NPB-EP/fault injection/llfi-O0/npb-ep.ll'
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
@elapsed = internal global [64 x double] zeroinitializer, align 16
@start = internal global [64 x double] zeroinitializer, align 16
@main.dum = private unnamed_addr constant [3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], align 16
@.str26 = private unnamed_addr constant [11 x i8] c"timer.flag\00", align 1
@.str127 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str228 = private unnamed_addr constant [8 x i8] c"%15.0lf\00", align 1
@.str329 = private unnamed_addr constant [58 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER-C) - EP Benchmark\0A\00", align 1
@.str430 = private unnamed_addr constant [44 x i8] c"\0A Number of random numbers generated: %15s\0A\00", align 1
@x = internal global [131072 x double] zeroinitializer, align 16
@q = internal global [10 x double] zeroinitializer, align 16
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
@.str51 = private unnamed_addr constant [28 x i8] c"\0A\0A %s Benchmark Completed.\0A\00", align 1
@.str152 = private unnamed_addr constant [37 x i8] c" Class           =             %12c\0A\00", align 1
@.str253 = private unnamed_addr constant [8 x i8] c"%15.0lf\00", align 1
@.str354 = private unnamed_addr constant [34 x i8] c" Size            =          %15s\0A\00", align 1
@.str455 = private unnamed_addr constant [37 x i8] c" Size            =             %12d\0A\00", align 1
@.str556 = private unnamed_addr constant [42 x i8] c" Size            =           %4dx%4dx%4d\0A\00", align 1
@.str657 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str758 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str859 = private unnamed_addr constant [37 x i8] c" Verification    =             %12s\0A\00", align 1
@.str960 = private unnamed_addr constant [11 x i8] c"SUCCESSFUL\00", align 1
@.str1061 = private unnamed_addr constant [13 x i8] c"UNSUCCESSFUL\00", align 1
@.str1162 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str1263 = private unnamed_addr constant [195 x i8] c"\0A--------------------------------------\0A Please send all errors/feedbacks to:\0A Center for Manycore Programming\0A cmp@aces.snu.ac.kr\0A http://aces.snu.ac.kr\0A--------------------------------------\0A\0A\00", align 1
@wtime_.sec = internal global i32 -1, align 4

; Function Attrs: nounwind uwtable
define void @c_print_results(i8* %name, i8 signext %class, i32 %n1, i32 %n2, i32 %n3, i32 %niter, double %t, double %mops, i8* %optype, i32 %passed_verification, i8* %npbversion, i8* %compiletime, i8* %cc, i8* %clink, i8* %c_lib, i8* %c_inc, i8* %cflags, i8* %clinkflags) #0 {
  %1 = alloca i8*, align 8, !llfi_index !1
  %2 = alloca i8, align 1, !llfi_index !2
  %3 = alloca i32, align 4, !llfi_index !3
  %4 = alloca i32, align 4, !llfi_index !4
  %5 = alloca i32, align 4, !llfi_index !5
  %6 = alloca i32, align 4, !llfi_index !6
  %7 = alloca double, align 8, !llfi_index !7
  %8 = alloca double, align 8, !llfi_index !8
  %9 = alloca i8*, align 8, !llfi_index !9
  %10 = alloca i32, align 4, !llfi_index !10
  %11 = alloca i8*, align 8, !llfi_index !11
  %12 = alloca i8*, align 8, !llfi_index !12
  %13 = alloca i8*, align 8, !llfi_index !13
  %14 = alloca i8*, align 8, !llfi_index !14
  %15 = alloca i8*, align 8, !llfi_index !15
  %16 = alloca i8*, align 8, !llfi_index !16
  %17 = alloca i8*, align 8, !llfi_index !17
  %18 = alloca i8*, align 8, !llfi_index !18
  %nn = alloca i64, align 8, !llfi_index !19
  store i8* %name, i8** %1, align 8, !llfi_index !20
  store i8 %class, i8* %2, align 1, !llfi_index !21
  store i32 %n1, i32* %3, align 4, !llfi_index !22
  store i32 %n2, i32* %4, align 4, !llfi_index !23
  store i32 %n3, i32* %5, align 4, !llfi_index !24
  store i32 %niter, i32* %6, align 4, !llfi_index !25
  store double %t, double* %7, align 8, !llfi_index !26
  store double %mops, double* %8, align 8, !llfi_index !27
  store i8* %optype, i8** %9, align 8, !llfi_index !28
  store i32 %passed_verification, i32* %10, align 4, !llfi_index !29
  store i8* %npbversion, i8** %11, align 8, !llfi_index !30
  store i8* %compiletime, i8** %12, align 8, !llfi_index !31
  store i8* %cc, i8** %13, align 8, !llfi_index !32
  store i8* %clink, i8** %14, align 8, !llfi_index !33
  store i8* %c_lib, i8** %15, align 8, !llfi_index !34
  store i8* %c_inc, i8** %16, align 8, !llfi_index !35
  store i8* %cflags, i8** %17, align 8, !llfi_index !36
  store i8* %clinkflags, i8** %18, align 8, !llfi_index !37
  %19 = load i8** %1, align 8, !llfi_index !38
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str, i32 0, i32 0), i8* %19), !llfi_index !39
  %21 = load i8* %2, align 1, !llfi_index !40
  %22 = sext i8 %21 to i32, !llfi_index !41
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([46 x i8]* @.str1, i32 0, i32 0), i32 %22), !llfi_index !42
  %24 = load i32* %5, align 4, !llfi_index !43
  %25 = icmp eq i32 %24, 0, !llfi_index !44
  br i1 %25, label %26, label %39, !llfi_index !45

; <label>:26                                      ; preds = %0
  %27 = load i32* %3, align 4, !llfi_index !46
  %28 = sext i32 %27 to i64, !llfi_index !47
  store i64 %28, i64* %nn, align 8, !llfi_index !48
  %29 = load i32* %4, align 4, !llfi_index !49
  %30 = icmp ne i32 %29, 0, !llfi_index !50
  br i1 %30, label %31, label %36, !llfi_index !51

; <label>:31                                      ; preds = %26
  %32 = load i32* %4, align 4, !llfi_index !52
  %33 = sext i32 %32 to i64, !llfi_index !53
  %34 = load i64* %nn, align 8, !llfi_index !54
  %35 = mul nsw i64 %34, %33, !llfi_index !55
  store i64 %35, i64* %nn, align 8, !llfi_index !56
  br label %36, !llfi_index !57

; <label>:36                                      ; preds = %31, %26
  %37 = load i64* %nn, align 8, !llfi_index !58
  %38 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str2, i32 0, i32 0), i64 %37), !llfi_index !59
  br label %44, !llfi_index !60

; <label>:39                                      ; preds = %0
  %40 = load i32* %3, align 4, !llfi_index !61
  %41 = load i32* %4, align 4, !llfi_index !62
  %42 = load i32* %5, align 4, !llfi_index !63
  %43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str3, i32 0, i32 0), i32 %40, i32 %41, i32 %42), !llfi_index !64
  br label %44, !llfi_index !65

; <label>:44                                      ; preds = %39, %36
  %45 = load i32* %6, align 4, !llfi_index !66
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str4, i32 0, i32 0), i32 %45), !llfi_index !67
  %47 = load double* %7, align 8, !llfi_index !68
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str5, i32 0, i32 0), double %47), !llfi_index !69
  %49 = load double* %8, align 8, !llfi_index !70
  %50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str6, i32 0, i32 0), double %49), !llfi_index !71
  %51 = load i8** %9, align 8, !llfi_index !72
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str7, i32 0, i32 0), i8* %51), !llfi_index !73
  %53 = load i32* %10, align 4, !llfi_index !74
  %54 = icmp slt i32 %53, 0, !llfi_index !75
  br i1 %54, label %55, label %57, !llfi_index !76

; <label>:55                                      ; preds = %44
  %56 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str8, i32 0, i32 0)), !llfi_index !77
  br label %65, !llfi_index !78

; <label>:57                                      ; preds = %44
  %58 = load i32* %10, align 4, !llfi_index !79
  %59 = icmp ne i32 %58, 0, !llfi_index !80
  br i1 %59, label %60, label %62, !llfi_index !81

; <label>:60                                      ; preds = %57
  %61 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str9, i32 0, i32 0)), !llfi_index !82
  br label %64, !llfi_index !83

; <label>:62                                      ; preds = %57
  %63 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([45 x i8]* @.str10, i32 0, i32 0)), !llfi_index !84
  br label %64, !llfi_index !85

; <label>:64                                      ; preds = %62, %60
  br label %65, !llfi_index !86

; <label>:65                                      ; preds = %64, %55
  %66 = load i8** %11, align 8, !llfi_index !87
  %67 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str11, i32 0, i32 0), i8* %66), !llfi_index !88
  %68 = load i8** %12, align 8, !llfi_index !89
  %69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str12, i32 0, i32 0), i8* %68), !llfi_index !90
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str13, i32 0, i32 0)), !llfi_index !91
  %71 = load i8** %13, align 8, !llfi_index !92
  %72 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str14, i32 0, i32 0), i8* %71), !llfi_index !93
  %73 = load i8** %14, align 8, !llfi_index !94
  %74 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str15, i32 0, i32 0), i8* %73), !llfi_index !95
  %75 = load i8** %15, align 8, !llfi_index !96
  %76 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str16, i32 0, i32 0), i8* %75), !llfi_index !97
  %77 = load i8** %16, align 8, !llfi_index !98
  %78 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str17, i32 0, i32 0), i8* %77), !llfi_index !99
  %79 = load i8** %17, align 8, !llfi_index !100
  %80 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str18, i32 0, i32 0), i8* %79), !llfi_index !101
  %81 = load i8** %18, align 8, !llfi_index !102
  %82 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str19, i32 0, i32 0), i8* %81), !llfi_index !103
  %83 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str20, i32 0, i32 0)), !llfi_index !104
  %84 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str21, i32 0, i32 0)), !llfi_index !105
  %85 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str22, i32 0, i32 0)), !llfi_index !106
  %86 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str23, i32 0, i32 0)), !llfi_index !107
  %87 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str24, i32 0, i32 0)), !llfi_index !108
  %88 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str25, i32 0, i32 0)), !llfi_index !109
  ret void, !llfi_index !110
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @timer_clear(i32 %n) #0 {
  %1 = alloca i32, align 4, !llfi_index !111
  store i32 %n, i32* %1, align 4, !llfi_index !112
  %2 = load i32* %1, align 4, !llfi_index !113
  %3 = sext i32 %2 to i64, !llfi_index !114
  %4 = getelementptr inbounds [64 x double]* @elapsed, i32 0, i64 %3, !llfi_index !115
  store double 0.000000e+00, double* %4, align 8, !llfi_index !116
  ret void, !llfi_index !117
}

; Function Attrs: nounwind uwtable
define void @timer_start(i32 %n) #0 {
  %1 = alloca i32, align 4, !llfi_index !118
  store i32 %n, i32* %1, align 4, !llfi_index !119
  %2 = call double @elapsed_time(), !llfi_index !120
  %3 = load i32* %1, align 4, !llfi_index !121
  %4 = sext i32 %3 to i64, !llfi_index !122
  %5 = getelementptr inbounds [64 x double]* @start, i32 0, i64 %4, !llfi_index !123
  store double %2, double* %5, align 8, !llfi_index !124
  ret void, !llfi_index !125
}

; Function Attrs: nounwind uwtable
define void @timer_stop(i32 %n) #0 {
  %1 = alloca i32, align 4, !llfi_index !126
  %t = alloca double, align 8, !llfi_index !127
  %now = alloca double, align 8, !llfi_index !128
  store i32 %n, i32* %1, align 4, !llfi_index !129
  %2 = call double @elapsed_time(), !llfi_index !130
  store double %2, double* %now, align 8, !llfi_index !131
  %3 = load double* %now, align 8, !llfi_index !132
  %4 = load i32* %1, align 4, !llfi_index !133
  %5 = sext i32 %4 to i64, !llfi_index !134
  %6 = getelementptr inbounds [64 x double]* @start, i32 0, i64 %5, !llfi_index !135
  %7 = load double* %6, align 8, !llfi_index !136
  %8 = fsub double %3, %7, !llfi_index !137
  store double %8, double* %t, align 8, !llfi_index !138
  %9 = load double* %t, align 8, !llfi_index !139
  %10 = load i32* %1, align 4, !llfi_index !140
  %11 = sext i32 %10 to i64, !llfi_index !141
  %12 = getelementptr inbounds [64 x double]* @elapsed, i32 0, i64 %11, !llfi_index !142
  %13 = load double* %12, align 8, !llfi_index !143
  %14 = fadd double %13, %9, !llfi_index !144
  store double %14, double* %12, align 8, !llfi_index !145
  ret void, !llfi_index !146
}

; Function Attrs: nounwind uwtable
define double @timer_read(i32 %n) #0 {
  %1 = alloca i32, align 4, !llfi_index !147
  store i32 %n, i32* %1, align 4, !llfi_index !148
  %2 = load i32* %1, align 4, !llfi_index !149
  %3 = sext i32 %2 to i64, !llfi_index !150
  %4 = getelementptr inbounds [64 x double]* @elapsed, i32 0, i64 %3, !llfi_index !151
  %5 = load double* %4, align 8, !llfi_index !152
  ret double %5, !llfi_index !153
}

; Function Attrs: nounwind uwtable
define internal double @elapsed_time() #0 {
  %t = alloca double, align 8, !llfi_index !154
  call void @wtime_(double* %t), !llfi_index !155
  %1 = load double* %t, align 8, !llfi_index !156
  ret double %1, !llfi_index !157
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4, !llfi_index !158
  %Mops = alloca double, align 8, !llfi_index !159
  %t1 = alloca double, align 8, !llfi_index !160
  %t2 = alloca double, align 8, !llfi_index !161
  %t3 = alloca double, align 8, !llfi_index !162
  %t4 = alloca double, align 8, !llfi_index !163
  %x1 = alloca double, align 8, !llfi_index !164
  %x2 = alloca double, align 8, !llfi_index !165
  %sx = alloca double, align 8, !llfi_index !166
  %sy = alloca double, align 8, !llfi_index !167
  %tm = alloca double, align 8, !llfi_index !168
  %an = alloca double, align 8, !llfi_index !169
  %tt = alloca double, align 8, !llfi_index !170
  %gc = alloca double, align 8, !llfi_index !171
  %sx_verify_value = alloca double, align 8, !llfi_index !172
  %sy_verify_value = alloca double, align 8, !llfi_index !173
  %sx_err = alloca double, align 8, !llfi_index !174
  %sy_err = alloca double, align 8, !llfi_index !175
  %np = alloca i32, align 4, !llfi_index !176
  %i = alloca i32, align 4, !llfi_index !177
  %ik = alloca i32, align 4, !llfi_index !178
  %kk = alloca i32, align 4, !llfi_index !179
  %l = alloca i32, align 4, !llfi_index !180
  %k = alloca i32, align 4, !llfi_index !181
  %nit = alloca i32, align 4, !llfi_index !182
  %k_offset = alloca i32, align 4, !llfi_index !183
  %j = alloca i32, align 4, !llfi_index !184
  %verified = alloca i32, align 4, !llfi_index !185
  %timers_enabled = alloca i32, align 4, !llfi_index !186
  %dum = alloca [3 x double], align 16, !llfi_index !187
  %size = alloca [16 x i8], align 16, !llfi_index !188
  %fp = alloca %struct._IO_FILE*, align 8, !llfi_index !189
  store i32 0, i32* %1, !llfi_index !190
  %2 = bitcast [3 x double]* %dum to i8*, !llfi_index !191
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([3 x double]* @main.dum to i8*), i64 24, i32 16, i1 false), !llfi_index !192
  %3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str127, i32 0, i32 0)), !llfi_index !193
  store %struct._IO_FILE* %3, %struct._IO_FILE** %fp, align 8, !llfi_index !194
  %4 = icmp eq %struct._IO_FILE* %3, null, !llfi_index !195
  br i1 %4, label %5, label %6, !llfi_index !196

; <label>:5                                       ; preds = %0
  store i32 0, i32* %timers_enabled, align 4, !llfi_index !197
  br label %9, !llfi_index !198

; <label>:6                                       ; preds = %0
  store i32 1, i32* %timers_enabled, align 4, !llfi_index !199
  %7 = load %struct._IO_FILE** %fp, align 8, !llfi_index !200
  %8 = call i32 @fclose(%struct._IO_FILE* %7), !llfi_index !201
  br label %9, !llfi_index !202

; <label>:9                                       ; preds = %6, %5
  %10 = getelementptr inbounds [16 x i8]* %size, i32 0, i32 0, !llfi_index !203
  %11 = call double @pow(double 2.000000e+00, double 2.600000e+01) #2, !llfi_index !204
  %12 = call i32 (i8*, i8*, ...)* @sprintf(i8* %10, i8* getelementptr inbounds ([8 x i8]* @.str228, i32 0, i32 0), double %11) #2, !llfi_index !205
  store i32 14, i32* %j, align 4, !llfi_index !206
  %13 = load i32* %j, align 4, !llfi_index !207
  %14 = sext i32 %13 to i64, !llfi_index !208
  %15 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %14, !llfi_index !209
  %16 = load i8* %15, align 1, !llfi_index !210
  %17 = sext i8 %16 to i32, !llfi_index !211
  %18 = icmp eq i32 %17, 46, !llfi_index !212
  br i1 %18, label %19, label %22, !llfi_index !213

; <label>:19                                      ; preds = %9
  %20 = load i32* %j, align 4, !llfi_index !214
  %21 = add nsw i32 %20, -1, !llfi_index !215
  store i32 %21, i32* %j, align 4, !llfi_index !216
  br label %22, !llfi_index !217

; <label>:22                                      ; preds = %19, %9
  %23 = load i32* %j, align 4, !llfi_index !218
  %24 = add nsw i32 %23, 1, !llfi_index !219
  %25 = sext i32 %24 to i64, !llfi_index !220
  %26 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %25, !llfi_index !221
  store i8 0, i8* %26, align 1, !llfi_index !222
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([58 x i8]* @.str329, i32 0, i32 0)), !llfi_index !223
  %28 = getelementptr inbounds [16 x i8]* %size, i32 0, i32 0, !llfi_index !224
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([44 x i8]* @.str430, i32 0, i32 0), i8* %28), !llfi_index !225
  store i32 0, i32* %verified, align 4, !llfi_index !226
  store i32 512, i32* %np, align 4, !llfi_index !227
  %30 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 0, !llfi_index !228
  %31 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 1, !llfi_index !229
  %32 = load double* %31, align 8, !llfi_index !230
  %33 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 2, !llfi_index !231
  call void @vranlc(i32 0, double* %30, double %32, double* %33), !llfi_index !232
  %34 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 1, !llfi_index !233
  %35 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 2, !llfi_index !234
  %36 = load double* %35, align 8, !llfi_index !235
  %37 = call double @randlc(double* %34, double %36), !llfi_index !236
  %38 = getelementptr inbounds [3 x double]* %dum, i32 0, i64 0, !llfi_index !237
  store double %37, double* %38, align 8, !llfi_index !238
  store i32 0, i32* %i, align 4, !llfi_index !239
  br label %39, !llfi_index !240

; <label>:39                                      ; preds = %46, %22
  %40 = load i32* %i, align 4, !llfi_index !241
  %41 = icmp slt i32 %40, 131072, !llfi_index !242
  br i1 %41, label %42, label %49, !llfi_index !243

; <label>:42                                      ; preds = %39
  %43 = load i32* %i, align 4, !llfi_index !244
  %44 = sext i32 %43 to i64, !llfi_index !245
  %45 = getelementptr inbounds [131072 x double]* @x, i32 0, i64 %44, !llfi_index !246
  store double -1.000000e+99, double* %45, align 8, !llfi_index !247
  br label %46, !llfi_index !248

; <label>:46                                      ; preds = %42
  %47 = load i32* %i, align 4, !llfi_index !249
  %48 = add nsw i32 %47, 1, !llfi_index !250
  store i32 %48, i32* %i, align 4, !llfi_index !251
  br label %39, !llfi_index !252

; <label>:49                                      ; preds = %39
  %50 = call double @fabs(double 1.000000e+00) #5, !llfi_index !253
  %51 = call double @sqrt(double %50) #2, !llfi_index !254
  %52 = call double @log(double %51) #2, !llfi_index !255
  store double %52, double* %Mops, align 8, !llfi_index !256
  call void @timer_clear(i32 0), !llfi_index !257
  call void @timer_clear(i32 1), !llfi_index !258
  call void @timer_clear(i32 2), !llfi_index !259
  call void @timer_start(i32 0), !llfi_index !260
  store double 0x41D2309CE5400000, double* %t1, align 8, !llfi_index !261
  call void @vranlc(i32 0, double* %t1, double 0x41D2309CE5400000, double* getelementptr inbounds ([131072 x double]* @x, i32 0, i32 0)), !llfi_index !262
  store double 0x41D2309CE5400000, double* %t1, align 8, !llfi_index !263
  store i32 0, i32* %i, align 4, !llfi_index !264
  br label %53, !llfi_index !265

; <label>:53                                      ; preds = %59, %49
  %54 = load i32* %i, align 4, !llfi_index !266
  %55 = icmp slt i32 %54, 17, !llfi_index !267
  br i1 %55, label %56, label %62, !llfi_index !268

; <label>:56                                      ; preds = %53
  %57 = load double* %t1, align 8, !llfi_index !269
  %58 = call double @randlc(double* %t1, double %57), !llfi_index !270
  store double %58, double* %t2, align 8, !llfi_index !271
  br label %59, !llfi_index !272

; <label>:59                                      ; preds = %56
  %60 = load i32* %i, align 4, !llfi_index !273
  %61 = add nsw i32 %60, 1, !llfi_index !274
  store i32 %61, i32* %i, align 4, !llfi_index !275
  br label %53, !llfi_index !276

; <label>:62                                      ; preds = %53
  %63 = load double* %t1, align 8, !llfi_index !277
  store double %63, double* %an, align 8, !llfi_index !278
  store double 0x41B033C4D7000000, double* %tt, align 8, !llfi_index !279
  store double 0.000000e+00, double* %gc, align 8, !llfi_index !280
  store double 0.000000e+00, double* %sx, align 8, !llfi_index !281
  store double 0.000000e+00, double* %sy, align 8, !llfi_index !282
  store i32 0, i32* %i, align 4, !llfi_index !283
  br label %64, !llfi_index !284

; <label>:64                                      ; preds = %71, %62
  %65 = load i32* %i, align 4, !llfi_index !285
  %66 = icmp slt i32 %65, 10, !llfi_index !286
  br i1 %66, label %67, label %74, !llfi_index !287

; <label>:67                                      ; preds = %64
  %68 = load i32* %i, align 4, !llfi_index !288
  %69 = sext i32 %68 to i64, !llfi_index !289
  %70 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %69, !llfi_index !290
  store double 0.000000e+00, double* %70, align 8, !llfi_index !291
  br label %71, !llfi_index !292

; <label>:71                                      ; preds = %67
  %72 = load i32* %i, align 4, !llfi_index !293
  %73 = add nsw i32 %72, 1, !llfi_index !294
  store i32 %73, i32* %i, align 4, !llfi_index !295
  br label %64, !llfi_index !296

; <label>:74                                      ; preds = %64
  store i32 -1, i32* %k_offset, align 4, !llfi_index !297
  store i32 1, i32* %k, align 4, !llfi_index !298
  br label %75, !llfi_index !299

; <label>:75                                      ; preds = %199, %74
  %76 = load i32* %k, align 4, !llfi_index !300
  %77 = load i32* %np, align 4, !llfi_index !301
  %78 = icmp sle i32 %76, %77, !llfi_index !302
  br i1 %78, label %79, label %202, !llfi_index !303

; <label>:79                                      ; preds = %75
  %80 = load i32* %k_offset, align 4, !llfi_index !304
  %81 = load i32* %k, align 4, !llfi_index !305
  %82 = add nsw i32 %80, %81, !llfi_index !306
  store i32 %82, i32* %kk, align 4, !llfi_index !307
  store double 0x41B033C4D7000000, double* %t1, align 8, !llfi_index !308
  %83 = load double* %an, align 8, !llfi_index !309
  store double %83, double* %t2, align 8, !llfi_index !310
  store i32 1, i32* %i, align 4, !llfi_index !311
  br label %84, !llfi_index !312

; <label>:84                                      ; preds = %105, %79
  %85 = load i32* %i, align 4, !llfi_index !313
  %86 = icmp sle i32 %85, 100, !llfi_index !314
  br i1 %86, label %87, label %108, !llfi_index !315

; <label>:87                                      ; preds = %84
  %88 = load i32* %kk, align 4, !llfi_index !316
  %89 = sdiv i32 %88, 2, !llfi_index !317
  store i32 %89, i32* %ik, align 4, !llfi_index !318
  %90 = load i32* %ik, align 4, !llfi_index !319
  %91 = mul nsw i32 2, %90, !llfi_index !320
  %92 = load i32* %kk, align 4, !llfi_index !321
  %93 = icmp ne i32 %91, %92, !llfi_index !322
  br i1 %93, label %94, label %97, !llfi_index !323

; <label>:94                                      ; preds = %87
  %95 = load double* %t2, align 8, !llfi_index !324
  %96 = call double @randlc(double* %t1, double %95), !llfi_index !325
  store double %96, double* %t3, align 8, !llfi_index !326
  br label %97, !llfi_index !327

; <label>:97                                      ; preds = %94, %87
  %98 = load i32* %ik, align 4, !llfi_index !328
  %99 = icmp eq i32 %98, 0, !llfi_index !329
  br i1 %99, label %100, label %101, !llfi_index !330

; <label>:100                                     ; preds = %97
  br label %108, !llfi_index !331

; <label>:101                                     ; preds = %97
  %102 = load double* %t2, align 8, !llfi_index !332
  %103 = call double @randlc(double* %t2, double %102), !llfi_index !333
  store double %103, double* %t3, align 8, !llfi_index !334
  %104 = load i32* %ik, align 4, !llfi_index !335
  store i32 %104, i32* %kk, align 4, !llfi_index !336
  br label %105, !llfi_index !337

; <label>:105                                     ; preds = %101
  %106 = load i32* %i, align 4, !llfi_index !338
  %107 = add nsw i32 %106, 1, !llfi_index !339
  store i32 %107, i32* %i, align 4, !llfi_index !340
  br label %84, !llfi_index !341

; <label>:108                                     ; preds = %100, %84
  %109 = load i32* %timers_enabled, align 4, !llfi_index !342
  %110 = icmp ne i32 %109, 0, !llfi_index !343
  br i1 %110, label %111, label %112, !llfi_index !344

; <label>:111                                     ; preds = %108
  call void @timer_start(i32 2), !llfi_index !345
  br label %112, !llfi_index !346

; <label>:112                                     ; preds = %111, %108
  call void @vranlc(i32 131072, double* %t1, double 0x41D2309CE5400000, double* getelementptr inbounds ([131072 x double]* @x, i32 0, i32 0)), !llfi_index !347
  %113 = load i32* %timers_enabled, align 4, !llfi_index !348
  %114 = icmp ne i32 %113, 0, !llfi_index !349
  br i1 %114, label %115, label %116, !llfi_index !350

; <label>:115                                     ; preds = %112
  call void @timer_stop(i32 2), !llfi_index !351
  br label %116, !llfi_index !352

; <label>:116                                     ; preds = %115, %112
  %117 = load i32* %timers_enabled, align 4, !llfi_index !353
  %118 = icmp ne i32 %117, 0, !llfi_index !354
  br i1 %118, label %119, label %120, !llfi_index !355

; <label>:119                                     ; preds = %116
  call void @timer_start(i32 1), !llfi_index !356
  br label %120, !llfi_index !357

; <label>:120                                     ; preds = %119, %116
  store i32 0, i32* %i, align 4, !llfi_index !358
  br label %121, !llfi_index !359

; <label>:121                                     ; preds = %191, %120
  %122 = load i32* %i, align 4, !llfi_index !360
  %123 = icmp slt i32 %122, 65536, !llfi_index !361
  br i1 %123, label %124, label %194, !llfi_index !362

; <label>:124                                     ; preds = %121
  %125 = load i32* %i, align 4, !llfi_index !363
  %126 = mul nsw i32 2, %125, !llfi_index !364
  %127 = sext i32 %126 to i64, !llfi_index !365
  %128 = getelementptr inbounds [131072 x double]* @x, i32 0, i64 %127, !llfi_index !366
  %129 = load double* %128, align 8, !llfi_index !367
  %130 = fmul double 2.000000e+00, %129, !llfi_index !368
  %131 = fsub double %130, 1.000000e+00, !llfi_index !369
  store double %131, double* %x1, align 8, !llfi_index !370
  %132 = load i32* %i, align 4, !llfi_index !371
  %133 = mul nsw i32 2, %132, !llfi_index !372
  %134 = add nsw i32 %133, 1, !llfi_index !373
  %135 = sext i32 %134 to i64, !llfi_index !374
  %136 = getelementptr inbounds [131072 x double]* @x, i32 0, i64 %135, !llfi_index !375
  %137 = load double* %136, align 8, !llfi_index !376
  %138 = fmul double 2.000000e+00, %137, !llfi_index !377
  %139 = fsub double %138, 1.000000e+00, !llfi_index !378
  store double %139, double* %x2, align 8, !llfi_index !379
  %140 = load double* %x1, align 8, !llfi_index !380
  %141 = load double* %x1, align 8, !llfi_index !381
  %142 = fmul double %140, %141, !llfi_index !382
  %143 = load double* %x2, align 8, !llfi_index !383
  %144 = load double* %x2, align 8, !llfi_index !384
  %145 = fmul double %143, %144, !llfi_index !385
  %146 = fadd double %142, %145, !llfi_index !386
  store double %146, double* %t1, align 8, !llfi_index !387
  %147 = load double* %t1, align 8, !llfi_index !388
  %148 = fcmp ole double %147, 1.000000e+00, !llfi_index !389
  br i1 %148, label %149, label %190, !llfi_index !390

; <label>:149                                     ; preds = %124
  %150 = load double* %t1, align 8, !llfi_index !391
  %151 = call double @log(double %150) #2, !llfi_index !392
  %152 = fmul double -2.000000e+00, %151, !llfi_index !393
  %153 = load double* %t1, align 8, !llfi_index !394
  %154 = fdiv double %152, %153, !llfi_index !395
  %155 = call double @sqrt(double %154) #2, !llfi_index !396
  store double %155, double* %t2, align 8, !llfi_index !397
  %156 = load double* %x1, align 8, !llfi_index !398
  %157 = load double* %t2, align 8, !llfi_index !399
  %158 = fmul double %156, %157, !llfi_index !400
  store double %158, double* %t3, align 8, !llfi_index !401
  %159 = load double* %x2, align 8, !llfi_index !402
  %160 = load double* %t2, align 8, !llfi_index !403
  %161 = fmul double %159, %160, !llfi_index !404
  store double %161, double* %t4, align 8, !llfi_index !405
  %162 = load double* %t3, align 8, !llfi_index !406
  %163 = call double @fabs(double %162) #5, !llfi_index !407
  %164 = load double* %t4, align 8, !llfi_index !408
  %165 = call double @fabs(double %164) #5, !llfi_index !409
  %166 = fcmp ogt double %163, %165, !llfi_index !410
  br i1 %166, label %167, label %170, !llfi_index !411

; <label>:167                                     ; preds = %149
  %168 = load double* %t3, align 8, !llfi_index !412
  %169 = call double @fabs(double %168) #5, !llfi_index !413
  br label %173, !llfi_index !414

; <label>:170                                     ; preds = %149
  %171 = load double* %t4, align 8, !llfi_index !415
  %172 = call double @fabs(double %171) #5, !llfi_index !416
  br label %173, !llfi_index !417

; <label>:173                                     ; preds = %170, %167
  %174 = phi double [ %169, %167 ], [ %172, %170 ], !llfi_index !418
  %175 = fptosi double %174 to i32, !llfi_index !419
  store i32 %175, i32* %l, align 4, !llfi_index !420
  %176 = load i32* %l, align 4, !llfi_index !421
  %177 = sext i32 %176 to i64, !llfi_index !422
  %178 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %177, !llfi_index !423
  %179 = load double* %178, align 8, !llfi_index !424
  %180 = fadd double %179, 1.000000e+00, !llfi_index !425
  %181 = load i32* %l, align 4, !llfi_index !426
  %182 = sext i32 %181 to i64, !llfi_index !427
  %183 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %182, !llfi_index !428
  store double %180, double* %183, align 8, !llfi_index !429
  %184 = load double* %sx, align 8, !llfi_index !430
  %185 = load double* %t3, align 8, !llfi_index !431
  %186 = fadd double %184, %185, !llfi_index !432
  store double %186, double* %sx, align 8, !llfi_index !433
  %187 = load double* %sy, align 8, !llfi_index !434
  %188 = load double* %t4, align 8, !llfi_index !435
  %189 = fadd double %187, %188, !llfi_index !436
  store double %189, double* %sy, align 8, !llfi_index !437
  br label %190, !llfi_index !438

; <label>:190                                     ; preds = %173, %124
  br label %191, !llfi_index !439

; <label>:191                                     ; preds = %190
  %192 = load i32* %i, align 4, !llfi_index !440
  %193 = add nsw i32 %192, 1, !llfi_index !441
  store i32 %193, i32* %i, align 4, !llfi_index !442
  br label %121, !llfi_index !443

; <label>:194                                     ; preds = %121
  %195 = load i32* %timers_enabled, align 4, !llfi_index !444
  %196 = icmp ne i32 %195, 0, !llfi_index !445
  br i1 %196, label %197, label %198, !llfi_index !446

; <label>:197                                     ; preds = %194
  call void @timer_stop(i32 1), !llfi_index !447
  br label %198, !llfi_index !448

; <label>:198                                     ; preds = %197, %194
  br label %199, !llfi_index !449

; <label>:199                                     ; preds = %198
  %200 = load i32* %k, align 4, !llfi_index !450
  %201 = add nsw i32 %200, 1, !llfi_index !451
  store i32 %201, i32* %k, align 4, !llfi_index !452
  br label %75, !llfi_index !453

; <label>:202                                     ; preds = %75
  store i32 0, i32* %i, align 4, !llfi_index !454
  br label %203, !llfi_index !455

; <label>:203                                     ; preds = %213, %202
  %204 = load i32* %i, align 4, !llfi_index !456
  %205 = icmp slt i32 %204, 10, !llfi_index !457
  br i1 %205, label %206, label %216, !llfi_index !458

; <label>:206                                     ; preds = %203
  %207 = load double* %gc, align 8, !llfi_index !459
  %208 = load i32* %i, align 4, !llfi_index !460
  %209 = sext i32 %208 to i64, !llfi_index !461
  %210 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %209, !llfi_index !462
  %211 = load double* %210, align 8, !llfi_index !463
  %212 = fadd double %207, %211, !llfi_index !464
  store double %212, double* %gc, align 8, !llfi_index !465
  br label %213, !llfi_index !466

; <label>:213                                     ; preds = %206
  %214 = load i32* %i, align 4, !llfi_index !467
  %215 = add nsw i32 %214, 1, !llfi_index !468
  store i32 %215, i32* %i, align 4, !llfi_index !469
  br label %203, !llfi_index !470

; <label>:216                                     ; preds = %203
  call void @timer_stop(i32 0), !llfi_index !471
  %217 = call double @timer_read(i32 0), !llfi_index !472
  store double %217, double* %tm, align 8, !llfi_index !473
  store i32 0, i32* %nit, align 4, !llfi_index !474
  store i32 1, i32* %verified, align 4, !llfi_index !475
  store double 0xC0A65EA3B3DDC403, double* %sx_verify_value, align 8, !llfi_index !476
  store double 0xC0B8B00DBDEA03C7, double* %sy_verify_value, align 8, !llfi_index !477
  %218 = load i32* %verified, align 4, !llfi_index !478
  %219 = icmp ne i32 %218, 0, !llfi_index !479
  br i1 %219, label %220, label %241, !llfi_index !480

; <label>:220                                     ; preds = %216
  %221 = load double* %sx, align 8, !llfi_index !481
  %222 = load double* %sx_verify_value, align 8, !llfi_index !482
  %223 = fsub double %221, %222, !llfi_index !483
  %224 = load double* %sx_verify_value, align 8, !llfi_index !484
  %225 = fdiv double %223, %224, !llfi_index !485
  %226 = call double @fabs(double %225) #5, !llfi_index !486
  store double %226, double* %sx_err, align 8, !llfi_index !487
  %227 = load double* %sy, align 8, !llfi_index !488
  %228 = load double* %sy_verify_value, align 8, !llfi_index !489
  %229 = fsub double %227, %228, !llfi_index !490
  %230 = load double* %sy_verify_value, align 8, !llfi_index !491
  %231 = fdiv double %229, %230, !llfi_index !492
  %232 = call double @fabs(double %231) #5, !llfi_index !493
  store double %232, double* %sy_err, align 8, !llfi_index !494
  %233 = load double* %sx_err, align 8, !llfi_index !495
  %234 = fcmp ole double %233, 1.000000e-08, !llfi_index !496
  br i1 %234, label %235, label %238, !llfi_index !497

; <label>:235                                     ; preds = %220
  %236 = load double* %sy_err, align 8, !llfi_index !498
  %237 = fcmp ole double %236, 1.000000e-08, !llfi_index !499
  br label %238, !llfi_index !500

; <label>:238                                     ; preds = %235, %220
  %239 = phi i1 [ false, %220 ], [ %237, %235 ], !llfi_index !501
  %240 = zext i1 %239 to i32, !llfi_index !502
  store i32 %240, i32* %verified, align 4, !llfi_index !503
  br label %241, !llfi_index !504

; <label>:241                                     ; preds = %238, %216
  %242 = call double @pow(double 2.000000e+00, double 2.600000e+01) #2, !llfi_index !505
  %243 = load double* %tm, align 8, !llfi_index !506
  %244 = fdiv double %242, %243, !llfi_index !507
  %245 = fdiv double %244, 1.000000e+06, !llfi_index !508
  store double %245, double* %Mops, align 8, !llfi_index !509
  %246 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str531, i32 0, i32 0)), !llfi_index !510
  %247 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str632, i32 0, i32 0), i32 25), !llfi_index !511
  %248 = load double* %gc, align 8, !llfi_index !512
  %249 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str733, i32 0, i32 0), double %248), !llfi_index !513
  %250 = load double* %sx, align 8, !llfi_index !514
  %251 = load double* %sy, align 8, !llfi_index !515
  %252 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str834, i32 0, i32 0), double %250, double %251), !llfi_index !516
  %253 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str935, i32 0, i32 0)), !llfi_index !517
  store i32 0, i32* %i, align 4, !llfi_index !518
  br label %254, !llfi_index !519

; <label>:254                                     ; preds = %264, %241
  %255 = load i32* %i, align 4, !llfi_index !520
  %256 = icmp slt i32 %255, 10, !llfi_index !521
  br i1 %256, label %257, label %267, !llfi_index !522

; <label>:257                                     ; preds = %254
  %258 = load i32* %i, align 4, !llfi_index !523
  %259 = load i32* %i, align 4, !llfi_index !524
  %260 = sext i32 %259 to i64, !llfi_index !525
  %261 = getelementptr inbounds [10 x double]* @q, i32 0, i64 %260, !llfi_index !526
  %262 = load double* %261, align 8, !llfi_index !527
  %263 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str1036, i32 0, i32 0), i32 %258, double %262), !llfi_index !528
  br label %264, !llfi_index !529

; <label>:264                                     ; preds = %257
  %265 = load i32* %i, align 4, !llfi_index !530
  %266 = add nsw i32 %265, 1, !llfi_index !531
  store i32 %266, i32* %i, align 4, !llfi_index !532
  br label %254, !llfi_index !533

; <label>:267                                     ; preds = %254
  %268 = load i32* %nit, align 4, !llfi_index !534
  %269 = load double* %tm, align 8, !llfi_index !535
  %270 = load double* %Mops, align 8, !llfi_index !536
  %271 = load i32* %verified, align 4, !llfi_index !537
  call void @print_results(i8* getelementptr inbounds ([3 x i8]* @.str1137, i32 0, i32 0), i8 signext 87, i32 26, i32 0, i32 0, i32 %268, double %269, double %270, i8* getelementptr inbounds ([25 x i8]* @.str1238, i32 0, i32 0), i32 %271, i8* getelementptr inbounds ([6 x i8]* @.str1339, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1440, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8]* @.str1541, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1642, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str1743, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str1844, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str1945, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str2046, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str2147, i32 0, i32 0)), !llfi_index !538
  %272 = load i32* %timers_enabled, align 4, !llfi_index !539
  %273 = icmp ne i32 %272, 0, !llfi_index !540
  br i1 %273, label %274, label %300, !llfi_index !541

; <label>:274                                     ; preds = %267
  %275 = load double* %tm, align 8, !llfi_index !542
  %276 = fcmp ole double %275, 0.000000e+00, !llfi_index !543
  br i1 %276, label %277, label %278, !llfi_index !544

; <label>:277                                     ; preds = %274
  store double 1.000000e+00, double* %tm, align 8, !llfi_index !545
  br label %278, !llfi_index !546

; <label>:278                                     ; preds = %277, %274
  %279 = call double @timer_read(i32 0), !llfi_index !547
  store double %279, double* %tt, align 8, !llfi_index !548
  %280 = load double* %tt, align 8, !llfi_index !549
  %281 = load double* %tt, align 8, !llfi_index !550
  %282 = fmul double %281, 1.000000e+02, !llfi_index !551
  %283 = load double* %tm, align 8, !llfi_index !552
  %284 = fdiv double %282, %283, !llfi_index !553
  %285 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str2248, i32 0, i32 0), double %280, double %284), !llfi_index !554
  %286 = call double @timer_read(i32 1), !llfi_index !555
  store double %286, double* %tt, align 8, !llfi_index !556
  %287 = load double* %tt, align 8, !llfi_index !557
  %288 = load double* %tt, align 8, !llfi_index !558
  %289 = fmul double %288, 1.000000e+02, !llfi_index !559
  %290 = load double* %tm, align 8, !llfi_index !560
  %291 = fdiv double %289, %290, !llfi_index !561
  %292 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str2349, i32 0, i32 0), double %287, double %291), !llfi_index !562
  %293 = call double @timer_read(i32 2), !llfi_index !563
  store double %293, double* %tt, align 8, !llfi_index !564
  %294 = load double* %tt, align 8, !llfi_index !565
  %295 = load double* %tt, align 8, !llfi_index !566
  %296 = fmul double %295, 1.000000e+02, !llfi_index !567
  %297 = load double* %tm, align 8, !llfi_index !568
  %298 = fdiv double %296, %297, !llfi_index !569
  %299 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str2450, i32 0, i32 0), double %294, double %298), !llfi_index !570
  br label %300, !llfi_index !571

; <label>:300                                     ; preds = %278, %267
  ret i32 0, !llfi_index !572
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind uwtable
define void @print_results(i8* %name, i8 signext %class, i32 %n1, i32 %n2, i32 %n3, i32 %niter, double %t, double %mops, i8* %optype, i32 %verified, i8* %npbversion, i8* %compiletime, i8* %cs1, i8* %cs2, i8* %cs3, i8* %cs4, i8* %cs5, i8* %cs6, i8* %cs7) #0 {
  %1 = alloca i8*, align 8, !llfi_index !573
  %2 = alloca i8, align 1, !llfi_index !574
  %3 = alloca i32, align 4, !llfi_index !575
  %4 = alloca i32, align 4, !llfi_index !576
  %5 = alloca i32, align 4, !llfi_index !577
  %6 = alloca i32, align 4, !llfi_index !578
  %7 = alloca double, align 8, !llfi_index !579
  %8 = alloca double, align 8, !llfi_index !580
  %9 = alloca i8*, align 8, !llfi_index !581
  %10 = alloca i32, align 4, !llfi_index !582
  %11 = alloca i8*, align 8, !llfi_index !583
  %12 = alloca i8*, align 8, !llfi_index !584
  %13 = alloca i8*, align 8, !llfi_index !585
  %14 = alloca i8*, align 8, !llfi_index !586
  %15 = alloca i8*, align 8, !llfi_index !587
  %16 = alloca i8*, align 8, !llfi_index !588
  %17 = alloca i8*, align 8, !llfi_index !589
  %18 = alloca i8*, align 8, !llfi_index !590
  %19 = alloca i8*, align 8, !llfi_index !591
  %size = alloca [16 x i8], align 16, !llfi_index !592
  %j = alloca i32, align 4, !llfi_index !593
  store i8* %name, i8** %1, align 8, !llfi_index !594
  store i8 %class, i8* %2, align 1, !llfi_index !595
  store i32 %n1, i32* %3, align 4, !llfi_index !596
  store i32 %n2, i32* %4, align 4, !llfi_index !597
  store i32 %n3, i32* %5, align 4, !llfi_index !598
  store i32 %niter, i32* %6, align 4, !llfi_index !599
  store double %t, double* %7, align 8, !llfi_index !600
  store double %mops, double* %8, align 8, !llfi_index !601
  store i8* %optype, i8** %9, align 8, !llfi_index !602
  store i32 %verified, i32* %10, align 4, !llfi_index !603
  store i8* %npbversion, i8** %11, align 8, !llfi_index !604
  store i8* %compiletime, i8** %12, align 8, !llfi_index !605
  store i8* %cs1, i8** %13, align 8, !llfi_index !606
  store i8* %cs2, i8** %14, align 8, !llfi_index !607
  store i8* %cs3, i8** %15, align 8, !llfi_index !608
  store i8* %cs4, i8** %16, align 8, !llfi_index !609
  store i8* %cs5, i8** %17, align 8, !llfi_index !610
  store i8* %cs6, i8** %18, align 8, !llfi_index !611
  store i8* %cs7, i8** %19, align 8, !llfi_index !612
  %20 = load i8** %1, align 8, !llfi_index !613
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str51, i32 0, i32 0), i8* %20), !llfi_index !614
  %22 = load i8* %2, align 1, !llfi_index !615
  %23 = sext i8 %22 to i32, !llfi_index !616
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str152, i32 0, i32 0), i32 %23), !llfi_index !617
  %25 = load i32* %4, align 4, !llfi_index !618
  %26 = icmp eq i32 %25, 0, !llfi_index !619
  br i1 %26, label %27, label %71, !llfi_index !620

; <label>:27                                      ; preds = %0
  %28 = load i32* %5, align 4, !llfi_index !621
  %29 = icmp eq i32 %28, 0, !llfi_index !622
  br i1 %29, label %30, label %71, !llfi_index !623

; <label>:30                                      ; preds = %27
  %31 = load i8** %1, align 8, !llfi_index !624
  %32 = getelementptr inbounds i8* %31, i64 0, !llfi_index !625
  %33 = load i8* %32, align 1, !llfi_index !626
  %34 = sext i8 %33 to i32, !llfi_index !627
  %35 = icmp eq i32 %34, 69, !llfi_index !628
  br i1 %35, label %36, label %67, !llfi_index !629

; <label>:36                                      ; preds = %30
  %37 = load i8** %1, align 8, !llfi_index !630
  %38 = getelementptr inbounds i8* %37, i64 1, !llfi_index !631
  %39 = load i8* %38, align 1, !llfi_index !632
  %40 = sext i8 %39 to i32, !llfi_index !633
  %41 = icmp eq i32 %40, 80, !llfi_index !634
  br i1 %41, label %42, label %67, !llfi_index !635

; <label>:42                                      ; preds = %36
  %43 = getelementptr inbounds [16 x i8]* %size, i32 0, i32 0, !llfi_index !636
  %44 = load i32* %3, align 4, !llfi_index !637
  %45 = sitofp i32 %44 to double, !llfi_index !638
  %46 = call double @pow(double 2.000000e+00, double %45) #2, !llfi_index !639
  %47 = call i32 (i8*, i8*, ...)* @sprintf(i8* %43, i8* getelementptr inbounds ([8 x i8]* @.str253, i32 0, i32 0), double %46) #2, !llfi_index !640
  store i32 14, i32* %j, align 4, !llfi_index !641
  %48 = load i32* %j, align 4, !llfi_index !642
  %49 = sext i32 %48 to i64, !llfi_index !643
  %50 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %49, !llfi_index !644
  %51 = load i8* %50, align 1, !llfi_index !645
  %52 = sext i8 %51 to i32, !llfi_index !646
  %53 = icmp eq i32 %52, 46, !llfi_index !647
  br i1 %53, label %54, label %60, !llfi_index !648

; <label>:54                                      ; preds = %42
  %55 = load i32* %j, align 4, !llfi_index !649
  %56 = sext i32 %55 to i64, !llfi_index !650
  %57 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %56, !llfi_index !651
  store i8 32, i8* %57, align 1, !llfi_index !652
  %58 = load i32* %j, align 4, !llfi_index !653
  %59 = add nsw i32 %58, -1, !llfi_index !654
  store i32 %59, i32* %j, align 4, !llfi_index !655
  br label %60, !llfi_index !656

; <label>:60                                      ; preds = %54, %42
  %61 = load i32* %j, align 4, !llfi_index !657
  %62 = add nsw i32 %61, 1, !llfi_index !658
  %63 = sext i32 %62 to i64, !llfi_index !659
  %64 = getelementptr inbounds [16 x i8]* %size, i32 0, i64 %63, !llfi_index !660
  store i8 0, i8* %64, align 1, !llfi_index !661
  %65 = getelementptr inbounds [16 x i8]* %size, i32 0, i32 0, !llfi_index !662
  %66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str354, i32 0, i32 0), i8* %65), !llfi_index !663
  br label %70, !llfi_index !664

; <label>:67                                      ; preds = %36, %30
  %68 = load i32* %3, align 4, !llfi_index !665
  %69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str455, i32 0, i32 0), i32 %68), !llfi_index !666
  br label %70, !llfi_index !667

; <label>:70                                      ; preds = %67, %60
  br label %76, !llfi_index !668

; <label>:71                                      ; preds = %27, %0
  %72 = load i32* %3, align 4, !llfi_index !669
  %73 = load i32* %4, align 4, !llfi_index !670
  %74 = load i32* %5, align 4, !llfi_index !671
  %75 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str556, i32 0, i32 0), i32 %72, i32 %73, i32 %74), !llfi_index !672
  br label %76, !llfi_index !673

; <label>:76                                      ; preds = %71, %70
  %77 = load i32* %6, align 4, !llfi_index !674
  %78 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str657, i32 0, i32 0), i32 %77), !llfi_index !675
  %79 = load i8** %9, align 8, !llfi_index !676
  %80 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str758, i32 0, i32 0), i8* %79), !llfi_index !677
  %81 = load i32* %10, align 4, !llfi_index !678
  %82 = icmp ne i32 %81, 0, !llfi_index !679
  br i1 %82, label %83, label %85, !llfi_index !680

; <label>:83                                      ; preds = %76
  %84 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str859, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str960, i32 0, i32 0)), !llfi_index !681
  br label %87, !llfi_index !682

; <label>:85                                      ; preds = %76
  %86 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str859, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str1061, i32 0, i32 0)), !llfi_index !683
  br label %87, !llfi_index !684

; <label>:87                                      ; preds = %85, %83
  %88 = load i8** %11, align 8, !llfi_index !685
  %89 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str1162, i32 0, i32 0), i8* %88), !llfi_index !686
  %90 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([195 x i8]* @.str1263, i32 0, i32 0)), !llfi_index !687
  ret void, !llfi_index !688
}

; Function Attrs: nounwind uwtable
define double @randlc(double* %x, double %a) #0 {
  %1 = alloca double*, align 8, !llfi_index !689
  %2 = alloca double, align 8, !llfi_index !690
  %r23 = alloca double, align 8, !llfi_index !691
  %r46 = alloca double, align 8, !llfi_index !692
  %t23 = alloca double, align 8, !llfi_index !693
  %t46 = alloca double, align 8, !llfi_index !694
  %t1 = alloca double, align 8, !llfi_index !695
  %t2 = alloca double, align 8, !llfi_index !696
  %t3 = alloca double, align 8, !llfi_index !697
  %t4 = alloca double, align 8, !llfi_index !698
  %a1 = alloca double, align 8, !llfi_index !699
  %a2 = alloca double, align 8, !llfi_index !700
  %x1 = alloca double, align 8, !llfi_index !701
  %x2 = alloca double, align 8, !llfi_index !702
  %z = alloca double, align 8, !llfi_index !703
  %r = alloca double, align 8, !llfi_index !704
  store double* %x, double** %1, align 8, !llfi_index !705
  store double %a, double* %2, align 8, !llfi_index !706
  store double 0x3E80000000000000, double* %r23, align 8, !llfi_index !707
  store double 0x3D10000000000000, double* %r46, align 8, !llfi_index !708
  store double 8.388608e+06, double* %t23, align 8, !llfi_index !709
  store double 0x42D0000000000000, double* %t46, align 8, !llfi_index !710
  %3 = load double* %2, align 8, !llfi_index !711
  %4 = fmul double 0x3E80000000000000, %3, !llfi_index !712
  store double %4, double* %t1, align 8, !llfi_index !713
  %5 = load double* %t1, align 8, !llfi_index !714
  %6 = fptosi double %5 to i32, !llfi_index !715
  %7 = sitofp i32 %6 to double, !llfi_index !716
  store double %7, double* %a1, align 8, !llfi_index !717
  %8 = load double* %2, align 8, !llfi_index !718
  %9 = load double* %a1, align 8, !llfi_index !719
  %10 = fmul double 8.388608e+06, %9, !llfi_index !720
  %11 = fsub double %8, %10, !llfi_index !721
  store double %11, double* %a2, align 8, !llfi_index !722
  %12 = load double** %1, align 8, !llfi_index !723
  %13 = load double* %12, align 8, !llfi_index !724
  %14 = fmul double 0x3E80000000000000, %13, !llfi_index !725
  store double %14, double* %t1, align 8, !llfi_index !726
  %15 = load double* %t1, align 8, !llfi_index !727
  %16 = fptosi double %15 to i32, !llfi_index !728
  %17 = sitofp i32 %16 to double, !llfi_index !729
  store double %17, double* %x1, align 8, !llfi_index !730
  %18 = load double** %1, align 8, !llfi_index !731
  %19 = load double* %18, align 8, !llfi_index !732
  %20 = load double* %x1, align 8, !llfi_index !733
  %21 = fmul double 8.388608e+06, %20, !llfi_index !734
  %22 = fsub double %19, %21, !llfi_index !735
  store double %22, double* %x2, align 8, !llfi_index !736
  %23 = load double* %a1, align 8, !llfi_index !737
  %24 = load double* %x2, align 8, !llfi_index !738
  %25 = fmul double %23, %24, !llfi_index !739
  %26 = load double* %a2, align 8, !llfi_index !740
  %27 = load double* %x1, align 8, !llfi_index !741
  %28 = fmul double %26, %27, !llfi_index !742
  %29 = fadd double %25, %28, !llfi_index !743
  store double %29, double* %t1, align 8, !llfi_index !744
  %30 = load double* %t1, align 8, !llfi_index !745
  %31 = fmul double 0x3E80000000000000, %30, !llfi_index !746
  %32 = fptosi double %31 to i32, !llfi_index !747
  %33 = sitofp i32 %32 to double, !llfi_index !748
  store double %33, double* %t2, align 8, !llfi_index !749
  %34 = load double* %t1, align 8, !llfi_index !750
  %35 = load double* %t2, align 8, !llfi_index !751
  %36 = fmul double 8.388608e+06, %35, !llfi_index !752
  %37 = fsub double %34, %36, !llfi_index !753
  store double %37, double* %z, align 8, !llfi_index !754
  %38 = load double* %z, align 8, !llfi_index !755
  %39 = fmul double 8.388608e+06, %38, !llfi_index !756
  %40 = load double* %a2, align 8, !llfi_index !757
  %41 = load double* %x2, align 8, !llfi_index !758
  %42 = fmul double %40, %41, !llfi_index !759
  %43 = fadd double %39, %42, !llfi_index !760
  store double %43, double* %t3, align 8, !llfi_index !761
  %44 = load double* %t3, align 8, !llfi_index !762
  %45 = fmul double 0x3D10000000000000, %44, !llfi_index !763
  %46 = fptosi double %45 to i32, !llfi_index !764
  %47 = sitofp i32 %46 to double, !llfi_index !765
  store double %47, double* %t4, align 8, !llfi_index !766
  %48 = load double* %t3, align 8, !llfi_index !767
  %49 = load double* %t4, align 8, !llfi_index !768
  %50 = fmul double 0x42D0000000000000, %49, !llfi_index !769
  %51 = fsub double %48, %50, !llfi_index !770
  %52 = load double** %1, align 8, !llfi_index !771
  store double %51, double* %52, align 8, !llfi_index !772
  %53 = load double** %1, align 8, !llfi_index !773
  %54 = load double* %53, align 8, !llfi_index !774
  %55 = fmul double 0x3D10000000000000, %54, !llfi_index !775
  store double %55, double* %r, align 8, !llfi_index !776
  %56 = load double* %r, align 8, !llfi_index !777
  ret double %56, !llfi_index !778
}

; Function Attrs: nounwind uwtable
define void @vranlc(i32 %n, double* %x, double %a, double* %y) #0 {
  %1 = alloca i32, align 4, !llfi_index !779
  %2 = alloca double*, align 8, !llfi_index !780
  %3 = alloca double, align 8, !llfi_index !781
  %4 = alloca double*, align 8, !llfi_index !782
  %r23 = alloca double, align 8, !llfi_index !783
  %r46 = alloca double, align 8, !llfi_index !784
  %t23 = alloca double, align 8, !llfi_index !785
  %t46 = alloca double, align 8, !llfi_index !786
  %t1 = alloca double, align 8, !llfi_index !787
  %t2 = alloca double, align 8, !llfi_index !788
  %t3 = alloca double, align 8, !llfi_index !789
  %t4 = alloca double, align 8, !llfi_index !790
  %a1 = alloca double, align 8, !llfi_index !791
  %a2 = alloca double, align 8, !llfi_index !792
  %x1 = alloca double, align 8, !llfi_index !793
  %x2 = alloca double, align 8, !llfi_index !794
  %z = alloca double, align 8, !llfi_index !795
  %i = alloca i32, align 4, !llfi_index !796
  store i32 %n, i32* %1, align 4, !llfi_index !797
  store double* %x, double** %2, align 8, !llfi_index !798
  store double %a, double* %3, align 8, !llfi_index !799
  store double* %y, double** %4, align 8, !llfi_index !800
  store double 0x3E80000000000000, double* %r23, align 8, !llfi_index !801
  store double 0x3D10000000000000, double* %r46, align 8, !llfi_index !802
  store double 8.388608e+06, double* %t23, align 8, !llfi_index !803
  store double 0x42D0000000000000, double* %t46, align 8, !llfi_index !804
  %5 = load double* %3, align 8, !llfi_index !805
  %6 = fmul double 0x3E80000000000000, %5, !llfi_index !806
  store double %6, double* %t1, align 8, !llfi_index !807
  %7 = load double* %t1, align 8, !llfi_index !808
  %8 = fptosi double %7 to i32, !llfi_index !809
  %9 = sitofp i32 %8 to double, !llfi_index !810
  store double %9, double* %a1, align 8, !llfi_index !811
  %10 = load double* %3, align 8, !llfi_index !812
  %11 = load double* %a1, align 8, !llfi_index !813
  %12 = fmul double 8.388608e+06, %11, !llfi_index !814
  %13 = fsub double %10, %12, !llfi_index !815
  store double %13, double* %a2, align 8, !llfi_index !816
  store i32 0, i32* %i, align 4, !llfi_index !817
  br label %14, !llfi_index !818

; <label>:14                                      ; preds = %67, %0
  %15 = load i32* %i, align 4, !llfi_index !819
  %16 = load i32* %1, align 4, !llfi_index !820
  %17 = icmp slt i32 %15, %16, !llfi_index !821
  br i1 %17, label %18, label %70, !llfi_index !822

; <label>:18                                      ; preds = %14
  %19 = load double** %2, align 8, !llfi_index !823
  %20 = load double* %19, align 8, !llfi_index !824
  %21 = fmul double 0x3E80000000000000, %20, !llfi_index !825
  store double %21, double* %t1, align 8, !llfi_index !826
  %22 = load double* %t1, align 8, !llfi_index !827
  %23 = fptosi double %22 to i32, !llfi_index !828
  %24 = sitofp i32 %23 to double, !llfi_index !829
  store double %24, double* %x1, align 8, !llfi_index !830
  %25 = load double** %2, align 8, !llfi_index !831
  %26 = load double* %25, align 8, !llfi_index !832
  %27 = load double* %x1, align 8, !llfi_index !833
  %28 = fmul double 8.388608e+06, %27, !llfi_index !834
  %29 = fsub double %26, %28, !llfi_index !835
  store double %29, double* %x2, align 8, !llfi_index !836
  %30 = load double* %a1, align 8, !llfi_index !837
  %31 = load double* %x2, align 8, !llfi_index !838
  %32 = fmul double %30, %31, !llfi_index !839
  %33 = load double* %a2, align 8, !llfi_index !840
  %34 = load double* %x1, align 8, !llfi_index !841
  %35 = fmul double %33, %34, !llfi_index !842
  %36 = fadd double %32, %35, !llfi_index !843
  store double %36, double* %t1, align 8, !llfi_index !844
  %37 = load double* %t1, align 8, !llfi_index !845
  %38 = fmul double 0x3E80000000000000, %37, !llfi_index !846
  %39 = fptosi double %38 to i32, !llfi_index !847
  %40 = sitofp i32 %39 to double, !llfi_index !848
  store double %40, double* %t2, align 8, !llfi_index !849
  %41 = load double* %t1, align 8, !llfi_index !850
  %42 = load double* %t2, align 8, !llfi_index !851
  %43 = fmul double 8.388608e+06, %42, !llfi_index !852
  %44 = fsub double %41, %43, !llfi_index !853
  store double %44, double* %z, align 8, !llfi_index !854
  %45 = load double* %z, align 8, !llfi_index !855
  %46 = fmul double 8.388608e+06, %45, !llfi_index !856
  %47 = load double* %a2, align 8, !llfi_index !857
  %48 = load double* %x2, align 8, !llfi_index !858
  %49 = fmul double %47, %48, !llfi_index !859
  %50 = fadd double %46, %49, !llfi_index !860
  store double %50, double* %t3, align 8, !llfi_index !861
  %51 = load double* %t3, align 8, !llfi_index !862
  %52 = fmul double 0x3D10000000000000, %51, !llfi_index !863
  %53 = fptosi double %52 to i32, !llfi_index !864
  %54 = sitofp i32 %53 to double, !llfi_index !865
  store double %54, double* %t4, align 8, !llfi_index !866
  %55 = load double* %t3, align 8, !llfi_index !867
  %56 = load double* %t4, align 8, !llfi_index !868
  %57 = fmul double 0x42D0000000000000, %56, !llfi_index !869
  %58 = fsub double %55, %57, !llfi_index !870
  %59 = load double** %2, align 8, !llfi_index !871
  store double %58, double* %59, align 8, !llfi_index !872
  %60 = load double** %2, align 8, !llfi_index !873
  %61 = load double* %60, align 8, !llfi_index !874
  %62 = fmul double 0x3D10000000000000, %61, !llfi_index !875
  %63 = load i32* %i, align 4, !llfi_index !876
  %64 = sext i32 %63 to i64, !llfi_index !877
  %65 = load double** %4, align 8, !llfi_index !878
  %66 = getelementptr inbounds double* %65, i64 %64, !llfi_index !879
  store double %62, double* %66, align 8, !llfi_index !880
  br label %67, !llfi_index !881

; <label>:67                                      ; preds = %18
  %68 = load i32* %i, align 4, !llfi_index !882
  %69 = add nsw i32 %68, 1, !llfi_index !883
  store i32 %69, i32* %i, align 4, !llfi_index !884
  br label %14, !llfi_index !885

; <label>:70                                      ; preds = %14
  ret void, !llfi_index !886
}

; Function Attrs: nounwind uwtable
define void @wtime_(double* %t) #0 {
  %1 = alloca double*, align 8, !llfi_index !887
  %tv = alloca %struct.timeval, align 8, !llfi_index !888
  store double* %t, double** %1, align 8, !llfi_index !889
  %2 = call i32 @gettimeofday(%struct.timeval* %tv, %struct.timezone* null) #2, !llfi_index !890
  %3 = load i32* @wtime_.sec, align 4, !llfi_index !891
  %4 = icmp slt i32 %3, 0, !llfi_index !892
  br i1 %4, label %5, label %9, !llfi_index !893

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0, !llfi_index !894
  %7 = load i64* %6, align 8, !llfi_index !895
  %8 = trunc i64 %7 to i32, !llfi_index !896
  store i32 %8, i32* @wtime_.sec, align 4, !llfi_index !897
  br label %9, !llfi_index !898

; <label>:9                                       ; preds = %5, %0
  %10 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 0, !llfi_index !899
  %11 = load i64* %10, align 8, !llfi_index !900
  %12 = load i32* @wtime_.sec, align 4, !llfi_index !901
  %13 = sext i32 %12 to i64, !llfi_index !902
  %14 = sub nsw i64 %11, %13, !llfi_index !903
  %15 = sitofp i64 %14 to double, !llfi_index !904
  %16 = getelementptr inbounds %struct.timeval* %tv, i32 0, i32 1, !llfi_index !905
  %17 = load i64* %16, align 8, !llfi_index !906
  %18 = sitofp i64 %17 to double, !llfi_index !907
  %19 = fmul double 1.000000e-06, %18, !llfi_index !908
  %20 = fadd double %15, %19, !llfi_index !909
  %21 = load double** %1, align 8, !llfi_index !910
  store double %20, double* %21, align 8, !llfi_index !911
  ret void, !llfi_index !912
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!49 = metadata !{i64 49}
!50 = metadata !{i64 50}
!51 = metadata !{i64 51}
!52 = metadata !{i64 52}
!53 = metadata !{i64 53}
!54 = metadata !{i64 54}
!55 = metadata !{i64 55}
!56 = metadata !{i64 56}
!57 = metadata !{i64 57}
!58 = metadata !{i64 58}
!59 = metadata !{i64 59}
!60 = metadata !{i64 60}
!61 = metadata !{i64 61}
!62 = metadata !{i64 62}
!63 = metadata !{i64 63}
!64 = metadata !{i64 64}
!65 = metadata !{i64 65}
!66 = metadata !{i64 66}
!67 = metadata !{i64 67}
!68 = metadata !{i64 68}
!69 = metadata !{i64 69}
!70 = metadata !{i64 70}
!71 = metadata !{i64 71}
!72 = metadata !{i64 72}
!73 = metadata !{i64 73}
!74 = metadata !{i64 74}
!75 = metadata !{i64 75}
!76 = metadata !{i64 76}
!77 = metadata !{i64 77}
!78 = metadata !{i64 78}
!79 = metadata !{i64 79}
!80 = metadata !{i64 80}
!81 = metadata !{i64 81}
!82 = metadata !{i64 82}
!83 = metadata !{i64 83}
!84 = metadata !{i64 84}
!85 = metadata !{i64 85}
!86 = metadata !{i64 86}
!87 = metadata !{i64 87}
!88 = metadata !{i64 88}
!89 = metadata !{i64 89}
!90 = metadata !{i64 90}
!91 = metadata !{i64 91}
!92 = metadata !{i64 92}
!93 = metadata !{i64 93}
!94 = metadata !{i64 94}
!95 = metadata !{i64 95}
!96 = metadata !{i64 96}
!97 = metadata !{i64 97}
!98 = metadata !{i64 98}
!99 = metadata !{i64 99}
!100 = metadata !{i64 100}
!101 = metadata !{i64 101}
!102 = metadata !{i64 102}
!103 = metadata !{i64 103}
!104 = metadata !{i64 104}
!105 = metadata !{i64 105}
!106 = metadata !{i64 106}
!107 = metadata !{i64 107}
!108 = metadata !{i64 108}
!109 = metadata !{i64 109}
!110 = metadata !{i64 110}
!111 = metadata !{i64 111}
!112 = metadata !{i64 112}
!113 = metadata !{i64 113}
!114 = metadata !{i64 114}
!115 = metadata !{i64 115}
!116 = metadata !{i64 116}
!117 = metadata !{i64 117}
!118 = metadata !{i64 118}
!119 = metadata !{i64 119}
!120 = metadata !{i64 120}
!121 = metadata !{i64 121}
!122 = metadata !{i64 122}
!123 = metadata !{i64 123}
!124 = metadata !{i64 124}
!125 = metadata !{i64 125}
!126 = metadata !{i64 126}
!127 = metadata !{i64 127}
!128 = metadata !{i64 128}
!129 = metadata !{i64 129}
!130 = metadata !{i64 130}
!131 = metadata !{i64 131}
!132 = metadata !{i64 132}
!133 = metadata !{i64 133}
!134 = metadata !{i64 134}
!135 = metadata !{i64 135}
!136 = metadata !{i64 136}
!137 = metadata !{i64 137}
!138 = metadata !{i64 138}
!139 = metadata !{i64 139}
!140 = metadata !{i64 140}
!141 = metadata !{i64 141}
!142 = metadata !{i64 142}
!143 = metadata !{i64 143}
!144 = metadata !{i64 144}
!145 = metadata !{i64 145}
!146 = metadata !{i64 146}
!147 = metadata !{i64 147}
!148 = metadata !{i64 148}
!149 = metadata !{i64 149}
!150 = metadata !{i64 150}
!151 = metadata !{i64 151}
!152 = metadata !{i64 152}
!153 = metadata !{i64 153}
!154 = metadata !{i64 154}
!155 = metadata !{i64 155}
!156 = metadata !{i64 156}
!157 = metadata !{i64 157}
!158 = metadata !{i64 158}
!159 = metadata !{i64 159}
!160 = metadata !{i64 160}
!161 = metadata !{i64 161}
!162 = metadata !{i64 162}
!163 = metadata !{i64 163}
!164 = metadata !{i64 164}
!165 = metadata !{i64 165}
!166 = metadata !{i64 166}
!167 = metadata !{i64 167}
!168 = metadata !{i64 168}
!169 = metadata !{i64 169}
!170 = metadata !{i64 170}
!171 = metadata !{i64 171}
!172 = metadata !{i64 172}
!173 = metadata !{i64 173}
!174 = metadata !{i64 174}
!175 = metadata !{i64 175}
!176 = metadata !{i64 176}
!177 = metadata !{i64 177}
!178 = metadata !{i64 178}
!179 = metadata !{i64 179}
!180 = metadata !{i64 180}
!181 = metadata !{i64 181}
!182 = metadata !{i64 182}
!183 = metadata !{i64 183}
!184 = metadata !{i64 184}
!185 = metadata !{i64 185}
!186 = metadata !{i64 186}
!187 = metadata !{i64 187}
!188 = metadata !{i64 188}
!189 = metadata !{i64 189}
!190 = metadata !{i64 190}
!191 = metadata !{i64 191}
!192 = metadata !{i64 192}
!193 = metadata !{i64 193}
!194 = metadata !{i64 194}
!195 = metadata !{i64 195}
!196 = metadata !{i64 196}
!197 = metadata !{i64 197}
!198 = metadata !{i64 198}
!199 = metadata !{i64 199}
!200 = metadata !{i64 200}
!201 = metadata !{i64 201}
!202 = metadata !{i64 202}
!203 = metadata !{i64 203}
!204 = metadata !{i64 204}
!205 = metadata !{i64 205}
!206 = metadata !{i64 206}
!207 = metadata !{i64 207}
!208 = metadata !{i64 208}
!209 = metadata !{i64 209}
!210 = metadata !{i64 210}
!211 = metadata !{i64 211}
!212 = metadata !{i64 212}
!213 = metadata !{i64 213}
!214 = metadata !{i64 214}
!215 = metadata !{i64 215}
!216 = metadata !{i64 216}
!217 = metadata !{i64 217}
!218 = metadata !{i64 218}
!219 = metadata !{i64 219}
!220 = metadata !{i64 220}
!221 = metadata !{i64 221}
!222 = metadata !{i64 222}
!223 = metadata !{i64 223}
!224 = metadata !{i64 224}
!225 = metadata !{i64 225}
!226 = metadata !{i64 226}
!227 = metadata !{i64 227}
!228 = metadata !{i64 228}
!229 = metadata !{i64 229}
!230 = metadata !{i64 230}
!231 = metadata !{i64 231}
!232 = metadata !{i64 232}
!233 = metadata !{i64 233}
!234 = metadata !{i64 234}
!235 = metadata !{i64 235}
!236 = metadata !{i64 236}
!237 = metadata !{i64 237}
!238 = metadata !{i64 238}
!239 = metadata !{i64 239}
!240 = metadata !{i64 240}
!241 = metadata !{i64 241}
!242 = metadata !{i64 242}
!243 = metadata !{i64 243}
!244 = metadata !{i64 244}
!245 = metadata !{i64 245}
!246 = metadata !{i64 246}
!247 = metadata !{i64 247}
!248 = metadata !{i64 248}
!249 = metadata !{i64 249}
!250 = metadata !{i64 250}
!251 = metadata !{i64 251}
!252 = metadata !{i64 252}
!253 = metadata !{i64 253}
!254 = metadata !{i64 254}
!255 = metadata !{i64 255}
!256 = metadata !{i64 256}
!257 = metadata !{i64 257}
!258 = metadata !{i64 258}
!259 = metadata !{i64 259}
!260 = metadata !{i64 260}
!261 = metadata !{i64 261}
!262 = metadata !{i64 262}
!263 = metadata !{i64 263}
!264 = metadata !{i64 264}
!265 = metadata !{i64 265}
!266 = metadata !{i64 266}
!267 = metadata !{i64 267}
!268 = metadata !{i64 268}
!269 = metadata !{i64 269}
!270 = metadata !{i64 270}
!271 = metadata !{i64 271}
!272 = metadata !{i64 272}
!273 = metadata !{i64 273}
!274 = metadata !{i64 274}
!275 = metadata !{i64 275}
!276 = metadata !{i64 276}
!277 = metadata !{i64 277}
!278 = metadata !{i64 278}
!279 = metadata !{i64 279}
!280 = metadata !{i64 280}
!281 = metadata !{i64 281}
!282 = metadata !{i64 282}
!283 = metadata !{i64 283}
!284 = metadata !{i64 284}
!285 = metadata !{i64 285}
!286 = metadata !{i64 286}
!287 = metadata !{i64 287}
!288 = metadata !{i64 288}
!289 = metadata !{i64 289}
!290 = metadata !{i64 290}
!291 = metadata !{i64 291}
!292 = metadata !{i64 292}
!293 = metadata !{i64 293}
!294 = metadata !{i64 294}
!295 = metadata !{i64 295}
!296 = metadata !{i64 296}
!297 = metadata !{i64 297}
!298 = metadata !{i64 298}
!299 = metadata !{i64 299}
!300 = metadata !{i64 300}
!301 = metadata !{i64 301}
!302 = metadata !{i64 302}
!303 = metadata !{i64 303}
!304 = metadata !{i64 304}
!305 = metadata !{i64 305}
!306 = metadata !{i64 306}
!307 = metadata !{i64 307}
!308 = metadata !{i64 308}
!309 = metadata !{i64 309}
!310 = metadata !{i64 310}
!311 = metadata !{i64 311}
!312 = metadata !{i64 312}
!313 = metadata !{i64 313}
!314 = metadata !{i64 314}
!315 = metadata !{i64 315}
!316 = metadata !{i64 316}
!317 = metadata !{i64 317}
!318 = metadata !{i64 318}
!319 = metadata !{i64 319}
!320 = metadata !{i64 320}
!321 = metadata !{i64 321}
!322 = metadata !{i64 322}
!323 = metadata !{i64 323}
!324 = metadata !{i64 324}
!325 = metadata !{i64 325}
!326 = metadata !{i64 326}
!327 = metadata !{i64 327}
!328 = metadata !{i64 328}
!329 = metadata !{i64 329}
!330 = metadata !{i64 330}
!331 = metadata !{i64 331}
!332 = metadata !{i64 332}
!333 = metadata !{i64 333}
!334 = metadata !{i64 334}
!335 = metadata !{i64 335}
!336 = metadata !{i64 336}
!337 = metadata !{i64 337}
!338 = metadata !{i64 338}
!339 = metadata !{i64 339}
!340 = metadata !{i64 340}
!341 = metadata !{i64 341}
!342 = metadata !{i64 342}
!343 = metadata !{i64 343}
!344 = metadata !{i64 344}
!345 = metadata !{i64 345}
!346 = metadata !{i64 346}
!347 = metadata !{i64 347}
!348 = metadata !{i64 348}
!349 = metadata !{i64 349}
!350 = metadata !{i64 350}
!351 = metadata !{i64 351}
!352 = metadata !{i64 352}
!353 = metadata !{i64 353}
!354 = metadata !{i64 354}
!355 = metadata !{i64 355}
!356 = metadata !{i64 356}
!357 = metadata !{i64 357}
!358 = metadata !{i64 358}
!359 = metadata !{i64 359}
!360 = metadata !{i64 360}
!361 = metadata !{i64 361}
!362 = metadata !{i64 362}
!363 = metadata !{i64 363}
!364 = metadata !{i64 364}
!365 = metadata !{i64 365}
!366 = metadata !{i64 366}
!367 = metadata !{i64 367}
!368 = metadata !{i64 368}
!369 = metadata !{i64 369}
!370 = metadata !{i64 370}
!371 = metadata !{i64 371}
!372 = metadata !{i64 372}
!373 = metadata !{i64 373}
!374 = metadata !{i64 374}
!375 = metadata !{i64 375}
!376 = metadata !{i64 376}
!377 = metadata !{i64 377}
!378 = metadata !{i64 378}
!379 = metadata !{i64 379}
!380 = metadata !{i64 380}
!381 = metadata !{i64 381}
!382 = metadata !{i64 382}
!383 = metadata !{i64 383}
!384 = metadata !{i64 384}
!385 = metadata !{i64 385}
!386 = metadata !{i64 386}
!387 = metadata !{i64 387}
!388 = metadata !{i64 388}
!389 = metadata !{i64 389}
!390 = metadata !{i64 390}
!391 = metadata !{i64 391}
!392 = metadata !{i64 392}
!393 = metadata !{i64 393}
!394 = metadata !{i64 394}
!395 = metadata !{i64 395}
!396 = metadata !{i64 396}
!397 = metadata !{i64 397}
!398 = metadata !{i64 398}
!399 = metadata !{i64 399}
!400 = metadata !{i64 400}
!401 = metadata !{i64 401}
!402 = metadata !{i64 402}
!403 = metadata !{i64 403}
!404 = metadata !{i64 404}
!405 = metadata !{i64 405}
!406 = metadata !{i64 406}
!407 = metadata !{i64 407}
!408 = metadata !{i64 408}
!409 = metadata !{i64 409}
!410 = metadata !{i64 410}
!411 = metadata !{i64 411}
!412 = metadata !{i64 412}
!413 = metadata !{i64 413}
!414 = metadata !{i64 414}
!415 = metadata !{i64 415}
!416 = metadata !{i64 416}
!417 = metadata !{i64 417}
!418 = metadata !{i64 418}
!419 = metadata !{i64 419}
!420 = metadata !{i64 420}
!421 = metadata !{i64 421}
!422 = metadata !{i64 422}
!423 = metadata !{i64 423}
!424 = metadata !{i64 424}
!425 = metadata !{i64 425}
!426 = metadata !{i64 426}
!427 = metadata !{i64 427}
!428 = metadata !{i64 428}
!429 = metadata !{i64 429}
!430 = metadata !{i64 430}
!431 = metadata !{i64 431}
!432 = metadata !{i64 432}
!433 = metadata !{i64 433}
!434 = metadata !{i64 434}
!435 = metadata !{i64 435}
!436 = metadata !{i64 436}
!437 = metadata !{i64 437}
!438 = metadata !{i64 438}
!439 = metadata !{i64 439}
!440 = metadata !{i64 440}
!441 = metadata !{i64 441}
!442 = metadata !{i64 442}
!443 = metadata !{i64 443}
!444 = metadata !{i64 444}
!445 = metadata !{i64 445}
!446 = metadata !{i64 446}
!447 = metadata !{i64 447}
!448 = metadata !{i64 448}
!449 = metadata !{i64 449}
!450 = metadata !{i64 450}
!451 = metadata !{i64 451}
!452 = metadata !{i64 452}
!453 = metadata !{i64 453}
!454 = metadata !{i64 454}
!455 = metadata !{i64 455}
!456 = metadata !{i64 456}
!457 = metadata !{i64 457}
!458 = metadata !{i64 458}
!459 = metadata !{i64 459}
!460 = metadata !{i64 460}
!461 = metadata !{i64 461}
!462 = metadata !{i64 462}
!463 = metadata !{i64 463}
!464 = metadata !{i64 464}
!465 = metadata !{i64 465}
!466 = metadata !{i64 466}
!467 = metadata !{i64 467}
!468 = metadata !{i64 468}
!469 = metadata !{i64 469}
!470 = metadata !{i64 470}
!471 = metadata !{i64 471}
!472 = metadata !{i64 472}
!473 = metadata !{i64 473}
!474 = metadata !{i64 474}
!475 = metadata !{i64 475}
!476 = metadata !{i64 476}
!477 = metadata !{i64 477}
!478 = metadata !{i64 478}
!479 = metadata !{i64 479}
!480 = metadata !{i64 480}
!481 = metadata !{i64 481}
!482 = metadata !{i64 482}
!483 = metadata !{i64 483}
!484 = metadata !{i64 484}
!485 = metadata !{i64 485}
!486 = metadata !{i64 486}
!487 = metadata !{i64 487}
!488 = metadata !{i64 488}
!489 = metadata !{i64 489}
!490 = metadata !{i64 490}
!491 = metadata !{i64 491}
!492 = metadata !{i64 492}
!493 = metadata !{i64 493}
!494 = metadata !{i64 494}
!495 = metadata !{i64 495}
!496 = metadata !{i64 496}
!497 = metadata !{i64 497}
!498 = metadata !{i64 498}
!499 = metadata !{i64 499}
!500 = metadata !{i64 500}
!501 = metadata !{i64 501}
!502 = metadata !{i64 502}
!503 = metadata !{i64 503}
!504 = metadata !{i64 504}
!505 = metadata !{i64 505}
!506 = metadata !{i64 506}
!507 = metadata !{i64 507}
!508 = metadata !{i64 508}
!509 = metadata !{i64 509}
!510 = metadata !{i64 510}
!511 = metadata !{i64 511}
!512 = metadata !{i64 512}
!513 = metadata !{i64 513}
!514 = metadata !{i64 514}
!515 = metadata !{i64 515}
!516 = metadata !{i64 516}
!517 = metadata !{i64 517}
!518 = metadata !{i64 518}
!519 = metadata !{i64 519}
!520 = metadata !{i64 520}
!521 = metadata !{i64 521}
!522 = metadata !{i64 522}
!523 = metadata !{i64 523}
!524 = metadata !{i64 524}
!525 = metadata !{i64 525}
!526 = metadata !{i64 526}
!527 = metadata !{i64 527}
!528 = metadata !{i64 528}
!529 = metadata !{i64 529}
!530 = metadata !{i64 530}
!531 = metadata !{i64 531}
!532 = metadata !{i64 532}
!533 = metadata !{i64 533}
!534 = metadata !{i64 534}
!535 = metadata !{i64 535}
!536 = metadata !{i64 536}
!537 = metadata !{i64 537}
!538 = metadata !{i64 538}
!539 = metadata !{i64 539}
!540 = metadata !{i64 540}
!541 = metadata !{i64 541}
!542 = metadata !{i64 542}
!543 = metadata !{i64 543}
!544 = metadata !{i64 544}
!545 = metadata !{i64 545}
!546 = metadata !{i64 546}
!547 = metadata !{i64 547}
!548 = metadata !{i64 548}
!549 = metadata !{i64 549}
!550 = metadata !{i64 550}
!551 = metadata !{i64 551}
!552 = metadata !{i64 552}
!553 = metadata !{i64 553}
!554 = metadata !{i64 554}
!555 = metadata !{i64 555}
!556 = metadata !{i64 556}
!557 = metadata !{i64 557}
!558 = metadata !{i64 558}
!559 = metadata !{i64 559}
!560 = metadata !{i64 560}
!561 = metadata !{i64 561}
!562 = metadata !{i64 562}
!563 = metadata !{i64 563}
!564 = metadata !{i64 564}
!565 = metadata !{i64 565}
!566 = metadata !{i64 566}
!567 = metadata !{i64 567}
!568 = metadata !{i64 568}
!569 = metadata !{i64 569}
!570 = metadata !{i64 570}
!571 = metadata !{i64 571}
!572 = metadata !{i64 572}
!573 = metadata !{i64 573}
!574 = metadata !{i64 574}
!575 = metadata !{i64 575}
!576 = metadata !{i64 576}
!577 = metadata !{i64 577}
!578 = metadata !{i64 578}
!579 = metadata !{i64 579}
!580 = metadata !{i64 580}
!581 = metadata !{i64 581}
!582 = metadata !{i64 582}
!583 = metadata !{i64 583}
!584 = metadata !{i64 584}
!585 = metadata !{i64 585}
!586 = metadata !{i64 586}
!587 = metadata !{i64 587}
!588 = metadata !{i64 588}
!589 = metadata !{i64 589}
!590 = metadata !{i64 590}
!591 = metadata !{i64 591}
!592 = metadata !{i64 592}
!593 = metadata !{i64 593}
!594 = metadata !{i64 594}
!595 = metadata !{i64 595}
!596 = metadata !{i64 596}
!597 = metadata !{i64 597}
!598 = metadata !{i64 598}
!599 = metadata !{i64 599}
!600 = metadata !{i64 600}
!601 = metadata !{i64 601}
!602 = metadata !{i64 602}
!603 = metadata !{i64 603}
!604 = metadata !{i64 604}
!605 = metadata !{i64 605}
!606 = metadata !{i64 606}
!607 = metadata !{i64 607}
!608 = metadata !{i64 608}
!609 = metadata !{i64 609}
!610 = metadata !{i64 610}
!611 = metadata !{i64 611}
!612 = metadata !{i64 612}
!613 = metadata !{i64 613}
!614 = metadata !{i64 614}
!615 = metadata !{i64 615}
!616 = metadata !{i64 616}
!617 = metadata !{i64 617}
!618 = metadata !{i64 618}
!619 = metadata !{i64 619}
!620 = metadata !{i64 620}
!621 = metadata !{i64 621}
!622 = metadata !{i64 622}
!623 = metadata !{i64 623}
!624 = metadata !{i64 624}
!625 = metadata !{i64 625}
!626 = metadata !{i64 626}
!627 = metadata !{i64 627}
!628 = metadata !{i64 628}
!629 = metadata !{i64 629}
!630 = metadata !{i64 630}
!631 = metadata !{i64 631}
!632 = metadata !{i64 632}
!633 = metadata !{i64 633}
!634 = metadata !{i64 634}
!635 = metadata !{i64 635}
!636 = metadata !{i64 636}
!637 = metadata !{i64 637}
!638 = metadata !{i64 638}
!639 = metadata !{i64 639}
!640 = metadata !{i64 640}
!641 = metadata !{i64 641}
!642 = metadata !{i64 642}
!643 = metadata !{i64 643}
!644 = metadata !{i64 644}
!645 = metadata !{i64 645}
!646 = metadata !{i64 646}
!647 = metadata !{i64 647}
!648 = metadata !{i64 648}
!649 = metadata !{i64 649}
!650 = metadata !{i64 650}
!651 = metadata !{i64 651}
!652 = metadata !{i64 652}
!653 = metadata !{i64 653}
!654 = metadata !{i64 654}
!655 = metadata !{i64 655}
!656 = metadata !{i64 656}
!657 = metadata !{i64 657}
!658 = metadata !{i64 658}
!659 = metadata !{i64 659}
!660 = metadata !{i64 660}
!661 = metadata !{i64 661}
!662 = metadata !{i64 662}
!663 = metadata !{i64 663}
!664 = metadata !{i64 664}
!665 = metadata !{i64 665}
!666 = metadata !{i64 666}
!667 = metadata !{i64 667}
!668 = metadata !{i64 668}
!669 = metadata !{i64 669}
!670 = metadata !{i64 670}
!671 = metadata !{i64 671}
!672 = metadata !{i64 672}
!673 = metadata !{i64 673}
!674 = metadata !{i64 674}
!675 = metadata !{i64 675}
!676 = metadata !{i64 676}
!677 = metadata !{i64 677}
!678 = metadata !{i64 678}
!679 = metadata !{i64 679}
!680 = metadata !{i64 680}
!681 = metadata !{i64 681}
!682 = metadata !{i64 682}
!683 = metadata !{i64 683}
!684 = metadata !{i64 684}
!685 = metadata !{i64 685}
!686 = metadata !{i64 686}
!687 = metadata !{i64 687}
!688 = metadata !{i64 688}
!689 = metadata !{i64 689}
!690 = metadata !{i64 690}
!691 = metadata !{i64 691}
!692 = metadata !{i64 692}
!693 = metadata !{i64 693}
!694 = metadata !{i64 694}
!695 = metadata !{i64 695}
!696 = metadata !{i64 696}
!697 = metadata !{i64 697}
!698 = metadata !{i64 698}
!699 = metadata !{i64 699}
!700 = metadata !{i64 700}
!701 = metadata !{i64 701}
!702 = metadata !{i64 702}
!703 = metadata !{i64 703}
!704 = metadata !{i64 704}
!705 = metadata !{i64 705}
!706 = metadata !{i64 706}
!707 = metadata !{i64 707}
!708 = metadata !{i64 708}
!709 = metadata !{i64 709}
!710 = metadata !{i64 710}
!711 = metadata !{i64 711}
!712 = metadata !{i64 712}
!713 = metadata !{i64 713}
!714 = metadata !{i64 714}
!715 = metadata !{i64 715}
!716 = metadata !{i64 716}
!717 = metadata !{i64 717}
!718 = metadata !{i64 718}
!719 = metadata !{i64 719}
!720 = metadata !{i64 720}
!721 = metadata !{i64 721}
!722 = metadata !{i64 722}
!723 = metadata !{i64 723}
!724 = metadata !{i64 724}
!725 = metadata !{i64 725}
!726 = metadata !{i64 726}
!727 = metadata !{i64 727}
!728 = metadata !{i64 728}
!729 = metadata !{i64 729}
!730 = metadata !{i64 730}
!731 = metadata !{i64 731}
!732 = metadata !{i64 732}
!733 = metadata !{i64 733}
!734 = metadata !{i64 734}
!735 = metadata !{i64 735}
!736 = metadata !{i64 736}
!737 = metadata !{i64 737}
!738 = metadata !{i64 738}
!739 = metadata !{i64 739}
!740 = metadata !{i64 740}
!741 = metadata !{i64 741}
!742 = metadata !{i64 742}
!743 = metadata !{i64 743}
!744 = metadata !{i64 744}
!745 = metadata !{i64 745}
!746 = metadata !{i64 746}
!747 = metadata !{i64 747}
!748 = metadata !{i64 748}
!749 = metadata !{i64 749}
!750 = metadata !{i64 750}
!751 = metadata !{i64 751}
!752 = metadata !{i64 752}
!753 = metadata !{i64 753}
!754 = metadata !{i64 754}
!755 = metadata !{i64 755}
!756 = metadata !{i64 756}
!757 = metadata !{i64 757}
!758 = metadata !{i64 758}
!759 = metadata !{i64 759}
!760 = metadata !{i64 760}
!761 = metadata !{i64 761}
!762 = metadata !{i64 762}
!763 = metadata !{i64 763}
!764 = metadata !{i64 764}
!765 = metadata !{i64 765}
!766 = metadata !{i64 766}
!767 = metadata !{i64 767}
!768 = metadata !{i64 768}
!769 = metadata !{i64 769}
!770 = metadata !{i64 770}
!771 = metadata !{i64 771}
!772 = metadata !{i64 772}
!773 = metadata !{i64 773}
!774 = metadata !{i64 774}
!775 = metadata !{i64 775}
!776 = metadata !{i64 776}
!777 = metadata !{i64 777}
!778 = metadata !{i64 778}
!779 = metadata !{i64 779}
!780 = metadata !{i64 780}
!781 = metadata !{i64 781}
!782 = metadata !{i64 782}
!783 = metadata !{i64 783}
!784 = metadata !{i64 784}
!785 = metadata !{i64 785}
!786 = metadata !{i64 786}
!787 = metadata !{i64 787}
!788 = metadata !{i64 788}
!789 = metadata !{i64 789}
!790 = metadata !{i64 790}
!791 = metadata !{i64 791}
!792 = metadata !{i64 792}
!793 = metadata !{i64 793}
!794 = metadata !{i64 794}
!795 = metadata !{i64 795}
!796 = metadata !{i64 796}
!797 = metadata !{i64 797}
!798 = metadata !{i64 798}
!799 = metadata !{i64 799}
!800 = metadata !{i64 800}
!801 = metadata !{i64 801}
!802 = metadata !{i64 802}
!803 = metadata !{i64 803}
!804 = metadata !{i64 804}
!805 = metadata !{i64 805}
!806 = metadata !{i64 806}
!807 = metadata !{i64 807}
!808 = metadata !{i64 808}
!809 = metadata !{i64 809}
!810 = metadata !{i64 810}
!811 = metadata !{i64 811}
!812 = metadata !{i64 812}
!813 = metadata !{i64 813}
!814 = metadata !{i64 814}
!815 = metadata !{i64 815}
!816 = metadata !{i64 816}
!817 = metadata !{i64 817}
!818 = metadata !{i64 818}
!819 = metadata !{i64 819}
!820 = metadata !{i64 820}
!821 = metadata !{i64 821}
!822 = metadata !{i64 822}
!823 = metadata !{i64 823}
!824 = metadata !{i64 824}
!825 = metadata !{i64 825}
!826 = metadata !{i64 826}
!827 = metadata !{i64 827}
!828 = metadata !{i64 828}
!829 = metadata !{i64 829}
!830 = metadata !{i64 830}
!831 = metadata !{i64 831}
!832 = metadata !{i64 832}
!833 = metadata !{i64 833}
!834 = metadata !{i64 834}
!835 = metadata !{i64 835}
!836 = metadata !{i64 836}
!837 = metadata !{i64 837}
!838 = metadata !{i64 838}
!839 = metadata !{i64 839}
!840 = metadata !{i64 840}
!841 = metadata !{i64 841}
!842 = metadata !{i64 842}
!843 = metadata !{i64 843}
!844 = metadata !{i64 844}
!845 = metadata !{i64 845}
!846 = metadata !{i64 846}
!847 = metadata !{i64 847}
!848 = metadata !{i64 848}
!849 = metadata !{i64 849}
!850 = metadata !{i64 850}
!851 = metadata !{i64 851}
!852 = metadata !{i64 852}
!853 = metadata !{i64 853}
!854 = metadata !{i64 854}
!855 = metadata !{i64 855}
!856 = metadata !{i64 856}
!857 = metadata !{i64 857}
!858 = metadata !{i64 858}
!859 = metadata !{i64 859}
!860 = metadata !{i64 860}
!861 = metadata !{i64 861}
!862 = metadata !{i64 862}
!863 = metadata !{i64 863}
!864 = metadata !{i64 864}
!865 = metadata !{i64 865}
!866 = metadata !{i64 866}
!867 = metadata !{i64 867}
!868 = metadata !{i64 868}
!869 = metadata !{i64 869}
!870 = metadata !{i64 870}
!871 = metadata !{i64 871}
!872 = metadata !{i64 872}
!873 = metadata !{i64 873}
!874 = metadata !{i64 874}
!875 = metadata !{i64 875}
!876 = metadata !{i64 876}
!877 = metadata !{i64 877}
!878 = metadata !{i64 878}
!879 = metadata !{i64 879}
!880 = metadata !{i64 880}
!881 = metadata !{i64 881}
!882 = metadata !{i64 882}
!883 = metadata !{i64 883}
!884 = metadata !{i64 884}
!885 = metadata !{i64 885}
!886 = metadata !{i64 886}
!887 = metadata !{i64 887}
!888 = metadata !{i64 888}
!889 = metadata !{i64 889}
!890 = metadata !{i64 890}
!891 = metadata !{i64 891}
!892 = metadata !{i64 892}
!893 = metadata !{i64 893}
!894 = metadata !{i64 894}
!895 = metadata !{i64 895}
!896 = metadata !{i64 896}
!897 = metadata !{i64 897}
!898 = metadata !{i64 898}
!899 = metadata !{i64 899}
!900 = metadata !{i64 900}
!901 = metadata !{i64 901}
!902 = metadata !{i64 902}
!903 = metadata !{i64 903}
!904 = metadata !{i64 904}
!905 = metadata !{i64 905}
!906 = metadata !{i64 906}
!907 = metadata !{i64 907}
!908 = metadata !{i64 908}
!909 = metadata !{i64 909}
!910 = metadata !{i64 910}
!911 = metadata !{i64 911}
!912 = metadata !{i64 912}
