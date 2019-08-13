; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/parsec-blackscholes/fault injection/llfi-O3/blackscholes.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OptionData_ = type { float, float, float, float, float, float, i8, float, float }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@numError = global i32 0, align 4
@numOptions = common global i32 0, align 4
@nThreads = common global i32 0, align 4
@sptprice = common global float* null, align 8
@strike = common global float* null, align 8
@rate = common global float* null, align 8
@volatility = common global float* null, align 8
@otime = common global float* null, align 8
@otype = common global i32* null, align 8
@prices = common global float* null, align 8
@.str1 = private unnamed_addr constant [48 x i8] c"Usage:\0A\09%s <nthreads> <inputFile> <outputFile>\0A\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"ERROR: Unable to open file `%s'.\0A\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str5 = private unnamed_addr constant [39 x i8] c"ERROR: Unable to read from file `%s'.\0A\00", align 1
@data = common global %struct.OptionData_* null, align 8
@.str8 = private unnamed_addr constant [27 x i8] c"%f %f %f %f %f %f %c %f %f\00", align 1
@.str9 = private unnamed_addr constant [35 x i8] c"ERROR: Unable to close file `%s'.\0A\00", align 1
@.str10 = private unnamed_addr constant [20 x i8] c"Num of Options: %d\0A\00", align 1
@.str11 = private unnamed_addr constant [17 x i8] c"Num of Runs: %d\0A\00", align 1
@.str12 = private unnamed_addr constant [18 x i8] c"Size of data: %d\0A\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@.str15 = private unnamed_addr constant [38 x i8] c"ERROR: Unable to write to file `%s'.\0A\00", align 1
@.str16 = private unnamed_addr constant [7 x i8] c"%.18f\0A\00", align 1
@str = private unnamed_addr constant [23 x i8] c"PARSEC Benchmark Suite\00"
@str17 = private unnamed_addr constant [45 x i8] c"Error: <nthreads> must be 1 (serial version)\00"
@str18 = private unnamed_addr constant [81 x i8] c"WARNING: Not enough work, reducing number of threads to match number of options.\00"

; Function Attrs: nounwind uwtable
define float @CNDF(float %InputX) #0 {
  %1 = fcmp olt float %InputX, 0.000000e+00, !llfi_index !1
  br i1 %1, label %2, label %4, !llfi_index !2

; <label>:2                                       ; preds = %0
  %3 = fsub float -0.000000e+00, %InputX, !llfi_index !3
  br label %4, !llfi_index !4

; <label>:4                                       ; preds = %2, %0
  %sign.0 = phi i1 [ true, %2 ], [ false, %0 ], !llfi_index !5
  %.0 = phi float [ %3, %2 ], [ %InputX, %0 ], !llfi_index !6
  %5 = fmul float %.0, -5.000000e-01, !llfi_index !7
  %6 = fmul float %.0, %5, !llfi_index !8
  %7 = fpext float %6 to double, !llfi_index !9
  %8 = tail call double @exp(double %7) #4, !llfi_index !10
  %9 = fptrunc double %8 to float, !llfi_index !11
  %10 = fpext float %9 to double, !llfi_index !12
  %11 = fmul double %10, 0x3FD9884533D43651, !llfi_index !13
  %12 = fptrunc double %11 to float, !llfi_index !14
  %13 = fpext float %.0 to double, !llfi_index !15
  %14 = fmul double %13, 2.316419e-01, !llfi_index !16
  %15 = fptrunc double %14 to float, !llfi_index !17
  %16 = fadd float %15, 1.000000e+00, !llfi_index !18
  %17 = fdiv float 1.000000e+00, %16, !llfi_index !19
  %18 = fmul float %17, %17, !llfi_index !20
  %19 = fmul float %17, %18, !llfi_index !21
  %20 = fmul float %17, %19, !llfi_index !22
  %21 = fmul float %17, %20, !llfi_index !23
  %22 = fpext float %17 to double, !llfi_index !24
  %23 = fmul double %22, 0x3FD470BF3A92F8EC, !llfi_index !25
  %24 = fptrunc double %23 to float, !llfi_index !26
  %25 = fpext float %18 to double, !llfi_index !27
  %26 = fmul double %25, 0xBFD6D1F0E5A8325B, !llfi_index !28
  %27 = fptrunc double %26 to float, !llfi_index !29
  %28 = fpext float %19 to double, !llfi_index !30
  %29 = fmul double %28, 0x3FFC80EF025F5E68, !llfi_index !31
  %30 = fptrunc double %29 to float, !llfi_index !32
  %31 = fadd float %27, %30, !llfi_index !33
  %32 = fpext float %20 to double, !llfi_index !34
  %33 = fmul double %32, 0xBFFD23DD4EF278D0, !llfi_index !35
  %34 = fptrunc double %33 to float, !llfi_index !36
  %35 = fadd float %31, %34, !llfi_index !37
  %36 = fpext float %21 to double, !llfi_index !38
  %37 = fmul double %36, 0x3FF548CDD6F42943, !llfi_index !39
  %38 = fptrunc double %37 to float, !llfi_index !40
  %39 = fadd float %35, %38, !llfi_index !41
  %40 = fadd float %24, %39, !llfi_index !42
  %41 = fmul float %12, %40, !llfi_index !43
  %42 = fsub float 1.000000e+00, %41, !llfi_index !44
  br i1 %sign.0, label %43, label %45, !llfi_index !45

; <label>:43                                      ; preds = %4
  %44 = fsub float 1.000000e+00, %42, !llfi_index !46
  br label %45, !llfi_index !47

; <label>:45                                      ; preds = %43, %4
  %OutputX.0 = phi float [ %44, %43 ], [ %42, %4 ], !llfi_index !48
  ret float %OutputX.0, !llfi_index !49
}

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: nounwind uwtable
define float @BlkSchlsEqEuroNoDiv(float %sptprice, float %strike, float %rate, float %volatility, float %time, i32 %otype, float %timet) #0 {
  %1 = tail call float @sqrtf(float %time) #1, !llfi_index !50
  %2 = fdiv float %sptprice, %strike, !llfi_index !51
  %3 = fpext float %2 to double, !llfi_index !52
  %4 = tail call double @log(double %3) #4, !llfi_index !53
  %5 = fptrunc double %4 to float, !llfi_index !54
  %6 = fmul float %volatility, %volatility, !llfi_index !55
  %7 = fmul float %6, 5.000000e-01, !llfi_index !56
  %8 = fadd float %7, %rate, !llfi_index !57
  %9 = fmul float %8, %time, !llfi_index !58
  %10 = fadd float %9, %5, !llfi_index !59
  %11 = fmul float %1, %volatility, !llfi_index !60
  %12 = fdiv float %10, %11, !llfi_index !61
  %13 = fsub float %12, %11, !llfi_index !62
  %14 = fcmp olt float %12, 0.000000e+00, !llfi_index !63
  br i1 %14, label %15, label %17, !llfi_index !64

; <label>:15                                      ; preds = %0
  %16 = fsub float -0.000000e+00, %12, !llfi_index !65
  br label %17, !llfi_index !66

; <label>:17                                      ; preds = %15, %0
  %sign.0.i = phi i1 [ true, %15 ], [ false, %0 ], !llfi_index !67
  %.0.i = phi float [ %16, %15 ], [ %12, %0 ], !llfi_index !68
  %18 = fmul float %.0.i, -5.000000e-01, !llfi_index !69
  %19 = fmul float %.0.i, %18, !llfi_index !70
  %20 = fpext float %19 to double, !llfi_index !71
  %21 = tail call double @exp(double %20) #4, !llfi_index !72
  %22 = fptrunc double %21 to float, !llfi_index !73
  %23 = fpext float %22 to double, !llfi_index !74
  %24 = fmul double %23, 0x3FD9884533D43651, !llfi_index !75
  %25 = fptrunc double %24 to float, !llfi_index !76
  %26 = fpext float %.0.i to double, !llfi_index !77
  %27 = fmul double %26, 2.316419e-01, !llfi_index !78
  %28 = fptrunc double %27 to float, !llfi_index !79
  %29 = fadd float %28, 1.000000e+00, !llfi_index !80
  %30 = fdiv float 1.000000e+00, %29, !llfi_index !81
  %31 = fmul float %30, %30, !llfi_index !82
  %32 = fmul float %30, %31, !llfi_index !83
  %33 = fmul float %30, %32, !llfi_index !84
  %34 = fmul float %30, %33, !llfi_index !85
  %35 = fpext float %30 to double, !llfi_index !86
  %36 = fmul double %35, 0x3FD470BF3A92F8EC, !llfi_index !87
  %37 = fptrunc double %36 to float, !llfi_index !88
  %38 = fpext float %31 to double, !llfi_index !89
  %39 = fmul double %38, 0xBFD6D1F0E5A8325B, !llfi_index !90
  %40 = fptrunc double %39 to float, !llfi_index !91
  %41 = fpext float %32 to double, !llfi_index !92
  %42 = fmul double %41, 0x3FFC80EF025F5E68, !llfi_index !93
  %43 = fptrunc double %42 to float, !llfi_index !94
  %44 = fadd float %40, %43, !llfi_index !95
  %45 = fpext float %33 to double, !llfi_index !96
  %46 = fmul double %45, 0xBFFD23DD4EF278D0, !llfi_index !97
  %47 = fptrunc double %46 to float, !llfi_index !98
  %48 = fadd float %44, %47, !llfi_index !99
  %49 = fpext float %34 to double, !llfi_index !100
  %50 = fmul double %49, 0x3FF548CDD6F42943, !llfi_index !101
  %51 = fptrunc double %50 to float, !llfi_index !102
  %52 = fadd float %48, %51, !llfi_index !103
  %53 = fadd float %37, %52, !llfi_index !104
  %54 = fmul float %25, %53, !llfi_index !105
  %55 = fsub float 1.000000e+00, %54, !llfi_index !106
  br i1 %sign.0.i, label %56, label %CNDF.exit, !llfi_index !107

; <label>:56                                      ; preds = %17
  %57 = fsub float 1.000000e+00, %55, !llfi_index !108
  br label %CNDF.exit, !llfi_index !109

CNDF.exit:                                        ; preds = %56, %17
  %OutputX.0.i = phi float [ %57, %56 ], [ %55, %17 ], !llfi_index !110
  %58 = fcmp olt float %13, 0.000000e+00, !llfi_index !111
  br i1 %58, label %59, label %61, !llfi_index !112

; <label>:59                                      ; preds = %CNDF.exit
  %60 = fsub float -0.000000e+00, %13, !llfi_index !113
  br label %61, !llfi_index !114

; <label>:61                                      ; preds = %59, %CNDF.exit
  %sign.0.i1 = phi i1 [ true, %59 ], [ false, %CNDF.exit ], !llfi_index !115
  %.0.i2 = phi float [ %60, %59 ], [ %13, %CNDF.exit ], !llfi_index !116
  %62 = fmul float %.0.i2, -5.000000e-01, !llfi_index !117
  %63 = fmul float %.0.i2, %62, !llfi_index !118
  %64 = fpext float %63 to double, !llfi_index !119
  %65 = tail call double @exp(double %64) #4, !llfi_index !120
  %66 = fptrunc double %65 to float, !llfi_index !121
  %67 = fpext float %66 to double, !llfi_index !122
  %68 = fmul double %67, 0x3FD9884533D43651, !llfi_index !123
  %69 = fptrunc double %68 to float, !llfi_index !124
  %70 = fpext float %.0.i2 to double, !llfi_index !125
  %71 = fmul double %70, 2.316419e-01, !llfi_index !126
  %72 = fptrunc double %71 to float, !llfi_index !127
  %73 = fadd float %72, 1.000000e+00, !llfi_index !128
  %74 = fdiv float 1.000000e+00, %73, !llfi_index !129
  %75 = fmul float %74, %74, !llfi_index !130
  %76 = fmul float %74, %75, !llfi_index !131
  %77 = fmul float %74, %76, !llfi_index !132
  %78 = fmul float %74, %77, !llfi_index !133
  %79 = fpext float %74 to double, !llfi_index !134
  %80 = fmul double %79, 0x3FD470BF3A92F8EC, !llfi_index !135
  %81 = fptrunc double %80 to float, !llfi_index !136
  %82 = fpext float %75 to double, !llfi_index !137
  %83 = fmul double %82, 0xBFD6D1F0E5A8325B, !llfi_index !138
  %84 = fptrunc double %83 to float, !llfi_index !139
  %85 = fpext float %76 to double, !llfi_index !140
  %86 = fmul double %85, 0x3FFC80EF025F5E68, !llfi_index !141
  %87 = fptrunc double %86 to float, !llfi_index !142
  %88 = fadd float %84, %87, !llfi_index !143
  %89 = fpext float %77 to double, !llfi_index !144
  %90 = fmul double %89, 0xBFFD23DD4EF278D0, !llfi_index !145
  %91 = fptrunc double %90 to float, !llfi_index !146
  %92 = fadd float %88, %91, !llfi_index !147
  %93 = fpext float %78 to double, !llfi_index !148
  %94 = fmul double %93, 0x3FF548CDD6F42943, !llfi_index !149
  %95 = fptrunc double %94 to float, !llfi_index !150
  %96 = fadd float %92, %95, !llfi_index !151
  %97 = fadd float %81, %96, !llfi_index !152
  %98 = fmul float %69, %97, !llfi_index !153
  %99 = fsub float 1.000000e+00, %98, !llfi_index !154
  br i1 %sign.0.i1, label %100, label %CNDF.exit4, !llfi_index !155

; <label>:100                                     ; preds = %61
  %101 = fsub float 1.000000e+00, %99, !llfi_index !156
  br label %CNDF.exit4, !llfi_index !157

CNDF.exit4:                                       ; preds = %100, %61
  %OutputX.0.i3 = phi float [ %101, %100 ], [ %99, %61 ], !llfi_index !158
  %102 = fpext float %strike to double, !llfi_index !159
  %103 = fmul float %rate, %time, !llfi_index !160
  %104 = fsub float -0.000000e+00, %103, !llfi_index !161
  %105 = fpext float %104 to double, !llfi_index !162
  %106 = tail call double @exp(double %105) #4, !llfi_index !163
  %107 = fmul double %102, %106, !llfi_index !164
  %108 = fptrunc double %107 to float, !llfi_index !165
  %109 = icmp eq i32 %otype, 0, !llfi_index !166
  br i1 %109, label %110, label %114, !llfi_index !167

; <label>:110                                     ; preds = %CNDF.exit4
  %111 = fmul float %OutputX.0.i, %sptprice, !llfi_index !168
  %112 = fmul float %OutputX.0.i3, %108, !llfi_index !169
  %113 = fsub float %111, %112, !llfi_index !170
  br label %120, !llfi_index !171

; <label>:114                                     ; preds = %CNDF.exit4
  %115 = fsub float 1.000000e+00, %OutputX.0.i, !llfi_index !172
  %116 = fsub float 1.000000e+00, %OutputX.0.i3, !llfi_index !173
  %117 = fmul float %116, %108, !llfi_index !174
  %118 = fmul float %115, %sptprice, !llfi_index !175
  %119 = fsub float %117, %118, !llfi_index !176
  br label %120, !llfi_index !177

; <label>:120                                     ; preds = %114, %110
  %OptionPrice.0 = phi float [ %113, %110 ], [ %119, %114 ], !llfi_index !178
  ret float %OptionPrice.0, !llfi_index !179
}

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: nounwind uwtable
define i32 @bs_thread(i8* nocapture readonly %tid_ptr) #0 {
  %1 = bitcast i8* %tid_ptr to i32*, !llfi_index !180
  %2 = load i32* %1, align 4, !tbaa !181, !llfi_index !185
  %3 = load i32* @numOptions, align 4, !tbaa !181, !llfi_index !186
  %4 = load i32* @nThreads, align 4, !tbaa !181, !llfi_index !187
  %5 = sdiv i32 %3, %4, !llfi_index !188
  %6 = mul i32 %5, %2, !llfi_index !189
  %7 = add nsw i32 %6, %5, !llfi_index !190
  %8 = icmp sgt i32 %5, 0, !llfi_index !191
  br i1 %8, label %.split.us, label %..split_crit_edge, !llfi_index !192

.split.us:                                        ; preds = %0
  %9 = sext i32 %6 to i64, !llfi_index !193
  br label %.lr.ph.us, !llfi_index !194

; <label>:10                                      ; preds = %12
  %11 = add nsw i32 %j.02.us, 1, !llfi_index !195
  %exitcond = icmp eq i32 %11, 100, !llfi_index !196
  br i1 %exitcond, label %..split_crit_edge, label %.lr.ph.us, !llfi_index !197

; <label>:12                                      ; preds = %.lr.ph.us, %12
  %indvars.iv = phi i64 [ %9, %.lr.ph.us ], [ %indvars.iv.next, %12 ], !llfi_index !198
  %13 = load float** @sptprice, align 8, !tbaa !199, !llfi_index !201
  %14 = getelementptr inbounds float* %13, i64 %indvars.iv, !llfi_index !202
  %15 = load float* %14, align 4, !tbaa !203, !llfi_index !205
  %16 = load float** @strike, align 8, !tbaa !199, !llfi_index !206
  %17 = getelementptr inbounds float* %16, i64 %indvars.iv, !llfi_index !207
  %18 = load float* %17, align 4, !tbaa !203, !llfi_index !208
  %19 = load float** @rate, align 8, !tbaa !199, !llfi_index !209
  %20 = getelementptr inbounds float* %19, i64 %indvars.iv, !llfi_index !210
  %21 = load float* %20, align 4, !tbaa !203, !llfi_index !211
  %22 = load float** @volatility, align 8, !tbaa !199, !llfi_index !212
  %23 = getelementptr inbounds float* %22, i64 %indvars.iv, !llfi_index !213
  %24 = load float* %23, align 4, !tbaa !203, !llfi_index !214
  %25 = load float** @otime, align 8, !tbaa !199, !llfi_index !215
  %26 = getelementptr inbounds float* %25, i64 %indvars.iv, !llfi_index !216
  %27 = load float* %26, align 4, !tbaa !203, !llfi_index !217
  %28 = load i32** @otype, align 8, !tbaa !199, !llfi_index !218
  %29 = getelementptr inbounds i32* %28, i64 %indvars.iv, !llfi_index !219
  %30 = load i32* %29, align 4, !tbaa !181, !llfi_index !220
  %31 = tail call float @BlkSchlsEqEuroNoDiv(float %15, float %18, float %21, float %24, float %27, i32 %30, float undef), !llfi_index !221
  %32 = load float** @prices, align 8, !tbaa !199, !llfi_index !222
  %33 = getelementptr inbounds float* %32, i64 %indvars.iv, !llfi_index !223
  store float %31, float* %33, align 4, !tbaa !203, !llfi_index !224
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !llfi_index !225
  %34 = trunc i64 %indvars.iv.next to i32, !llfi_index !226
  %35 = icmp slt i32 %34, %7, !llfi_index !227
  br i1 %35, label %12, label %10, !llfi_index !228

.lr.ph.us:                                        ; preds = %10, %.split.us
  %j.02.us = phi i32 [ 0, %.split.us ], [ %11, %10 ], !llfi_index !229
  br label %12, !llfi_index !230

..split_crit_edge:                                ; preds = %10, %0
  ret i32 0, !llfi_index !231
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str, i64 0, i64 0)), !llfi_index !232
  %1 = tail call i32 @fflush(%struct._IO_FILE* null) #4, !llfi_index !233
  %2 = icmp eq i32 %argc, 4, !llfi_index !234
  br i1 %2, label %6, label %3, !llfi_index !235

; <label>:3                                       ; preds = %0
  %4 = load i8** %argv, align 8, !tbaa !199, !llfi_index !236
  %5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0), i8* %4) #4, !llfi_index !237
  tail call void @exit(i32 1) #5, !llfi_index !238
  unreachable, !llfi_index !239

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8** %argv, i64 1, !llfi_index !240
  %8 = load i8** %7, align 8, !tbaa !199, !llfi_index !241
  %9 = tail call i64 @strtol(i8* nocapture %8, i8** null, i32 10) #4, !llfi_index !242
  %10 = trunc i64 %9 to i32, !llfi_index !243
  store i32 %10, i32* @nThreads, align 4, !tbaa !181, !llfi_index !244
  %11 = getelementptr inbounds i8** %argv, i64 2, !llfi_index !245
  %12 = load i8** %11, align 8, !tbaa !199, !llfi_index !246
  %13 = getelementptr inbounds i8** %argv, i64 3, !llfi_index !247
  %14 = load i8** %13, align 8, !tbaa !199, !llfi_index !248
  %15 = tail call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #4, !llfi_index !249
  %16 = icmp eq %struct._IO_FILE* %15, null, !llfi_index !250
  br i1 %16, label %17, label %19, !llfi_index !251

; <label>:17                                      ; preds = %6
  %18 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i8* %12) #4, !llfi_index !252
  tail call void @exit(i32 1) #5, !llfi_index !253
  unreachable, !llfi_index !254

; <label>:19                                      ; preds = %6
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i32* @numOptions) #4, !llfi_index !255
  %21 = icmp eq i32 %20, 1, !llfi_index !256
  br i1 %21, label %25, label %22, !llfi_index !257

; <label>:22                                      ; preds = %19
  %23 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str5, i64 0, i64 0), i8* %12) #4, !llfi_index !258
  %24 = tail call i32 @fclose(%struct._IO_FILE* %15) #4, !llfi_index !259
  tail call void @exit(i32 1) #5, !llfi_index !260
  unreachable, !llfi_index !261

; <label>:25                                      ; preds = %19
  %26 = load i32* @nThreads, align 4, !tbaa !181, !llfi_index !262
  %27 = load i32* @numOptions, align 4, !tbaa !181, !llfi_index !263
  %28 = icmp sgt i32 %26, %27, !llfi_index !264
  br i1 %28, label %29, label %31, !llfi_index !265

; <label>:29                                      ; preds = %25
  %puts4 = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str18, i64 0, i64 0)), !llfi_index !266
  %30 = load i32* @numOptions, align 4, !tbaa !181, !llfi_index !267
  store i32 %30, i32* @nThreads, align 4, !tbaa !181, !llfi_index !268
  br label %31, !llfi_index !269

; <label>:31                                      ; preds = %29, %25
  %32 = phi i32 [ %30, %29 ], [ %27, %25 ], !llfi_index !270
  %33 = phi i32 [ %30, %29 ], [ %26, %25 ], !llfi_index !271
  %34 = icmp eq i32 %33, 1, !llfi_index !272
  br i1 %34, label %36, label %35, !llfi_index !273

; <label>:35                                      ; preds = %31
  %puts3 = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @str17, i64 0, i64 0)), !llfi_index !274
  tail call void @exit(i32 1) #5, !llfi_index !275
  unreachable, !llfi_index !276

; <label>:36                                      ; preds = %31
  %37 = sext i32 %32 to i64, !llfi_index !277
  %38 = mul i64 %37, 36, !llfi_index !278
  %39 = tail call noalias i8* @malloc(i64 %38) #4, !llfi_index !279
  %40 = bitcast i8* %39 to %struct.OptionData_*, !llfi_index !280
  store %struct.OptionData_* %40, %struct.OptionData_** @data, align 8, !tbaa !199, !llfi_index !281
  %41 = shl nsw i64 %37, 2, !llfi_index !282
  %42 = tail call noalias i8* @malloc(i64 %41) #4, !llfi_index !283
  %43 = bitcast i8* %42 to float*, !llfi_index !284
  store float* %43, float** @prices, align 8, !tbaa !199, !llfi_index !285
  %44 = icmp sgt i32 %32, 0, !llfi_index !286
  br i1 %44, label %.lr.ph12, label %._crit_edge13, !llfi_index !287

; <label>:45                                      ; preds = %.lr.ph12
  %46 = load i32* @numOptions, align 4, !tbaa !181, !llfi_index !288
  %47 = trunc i64 %indvars.iv.next18 to i32, !llfi_index !289
  %48 = icmp slt i32 %47, %46, !llfi_index !290
  br i1 %48, label %._crit_edge19, label %._crit_edge13, !llfi_index !291

._crit_edge19:                                    ; preds = %45
  %.pre = load %struct.OptionData_** @data, align 8, !tbaa !199, !llfi_index !292
  br label %.lr.ph12, !llfi_index !293

.lr.ph12:                                         ; preds = %._crit_edge19, %36
  %49 = phi %struct.OptionData_* [ %.pre, %._crit_edge19 ], [ %40, %36 ], !llfi_index !294
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %._crit_edge19 ], [ 0, %36 ], !llfi_index !295
  %50 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 0, !llfi_index !296
  %51 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 1, !llfi_index !297
  %52 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 2, !llfi_index !298
  %53 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 3, !llfi_index !299
  %54 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 4, !llfi_index !300
  %55 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 5, !llfi_index !301
  %56 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 6, !llfi_index !302
  %57 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 7, !llfi_index !303
  %58 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 8, !llfi_index !304
  %59 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([27 x i8]* @.str8, i64 0, i64 0), float* %50, float* %51, float* %52, float* %53, float* %54, float* %55, i8* %56, float* %57, float* %58) #4, !llfi_index !305
  %60 = icmp eq i32 %59, 9, !llfi_index !306
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !llfi_index !307
  br i1 %60, label %45, label %61, !llfi_index !308

; <label>:61                                      ; preds = %.lr.ph12
  %62 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str5, i64 0, i64 0), i8* %12) #4, !llfi_index !309
  %63 = tail call i32 @fclose(%struct._IO_FILE* %15) #4, !llfi_index !310
  tail call void @exit(i32 1) #5, !llfi_index !311
  unreachable, !llfi_index !312

._crit_edge13:                                    ; preds = %45, %36
  %64 = tail call i32 @fclose(%struct._IO_FILE* %15) #4, !llfi_index !313
  %65 = icmp eq i32 %64, 0, !llfi_index !314
  br i1 %65, label %68, label %66, !llfi_index !315

; <label>:66                                      ; preds = %._crit_edge13
  %67 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str9, i64 0, i64 0), i8* %12) #4, !llfi_index !316
  tail call void @exit(i32 1) #5, !llfi_index !317
  unreachable, !llfi_index !318

; <label>:68                                      ; preds = %._crit_edge13
  %69 = load i32* @numOptions, align 4, !tbaa !181, !llfi_index !319
  %70 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str10, i64 0, i64 0), i32 %69) #4, !llfi_index !320
  %71 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str11, i64 0, i64 0), i32 100) #4, !llfi_index !321
  %72 = load i32* @numOptions, align 4, !tbaa !181, !llfi_index !322
  %73 = mul nsw i32 %72, 5, !llfi_index !323
  %74 = sext i32 %73 to i64, !llfi_index !324
  %75 = shl nsw i64 %74, 2, !llfi_index !325
  %76 = add i64 %75, 256, !llfi_index !326
  %77 = tail call noalias i8* @malloc(i64 %76) #4, !llfi_index !327
  %78 = ptrtoint i8* %77 to i64, !llfi_index !328
  %79 = add i64 %78, 256, !llfi_index !329
  %80 = and i64 %79, -64, !llfi_index !330
  %81 = inttoptr i64 %80 to float*, !llfi_index !331
  store float* %81, float** @sptprice, align 8, !tbaa !199, !llfi_index !332
  %82 = sext i32 %72 to i64, !llfi_index !333
  %83 = getelementptr inbounds float* %81, i64 %82, !llfi_index !334
  store float* %83, float** @strike, align 8, !tbaa !199, !llfi_index !335
  %.sum = shl nsw i64 %82, 1, !llfi_index !336
  %84 = getelementptr inbounds float* %81, i64 %.sum, !llfi_index !337
  store float* %84, float** @rate, align 8, !tbaa !199, !llfi_index !338
  %.sum1 = add i64 %.sum, %82, !llfi_index !339
  %85 = getelementptr inbounds float* %81, i64 %.sum1, !llfi_index !340
  store float* %85, float** @volatility, align 8, !tbaa !199, !llfi_index !341
  %.sum2 = add i64 %.sum1, %82, !llfi_index !342
  %86 = getelementptr inbounds float* %81, i64 %.sum2, !llfi_index !343
  store float* %86, float** @otime, align 8, !tbaa !199, !llfi_index !344
  %87 = shl nsw i64 %82, 2, !llfi_index !345
  %88 = add i64 %87, 256, !llfi_index !346
  %89 = tail call noalias i8* @malloc(i64 %88) #4, !llfi_index !347
  %90 = ptrtoint i8* %89 to i64, !llfi_index !348
  %91 = add i64 %90, 256, !llfi_index !349
  %92 = and i64 %91, -64, !llfi_index !350
  %93 = inttoptr i64 %92 to i32*, !llfi_index !351
  store i32* %93, i32** @otype, align 8, !tbaa !199, !llfi_index !352
  %94 = icmp sgt i32 %72, 0, !llfi_index !353
  br i1 %94, label %.lr.ph8, label %._crit_edge9, !llfi_index !354

.lr.ph8:                                          ; preds = %68
  %95 = load %struct.OptionData_** @data, align 8, !tbaa !199, !llfi_index !355
  br label %96, !llfi_index !356

; <label>:96                                      ; preds = %96, %.lr.ph8
  %indvars.iv15 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next16, %96 ], !llfi_index !357
  %97 = getelementptr inbounds %struct.OptionData_* %95, i64 %indvars.iv15, i32 6, !llfi_index !358
  %98 = load i8* %97, align 1, !tbaa !359, !llfi_index !361
  %99 = icmp eq i8 %98, 80, !llfi_index !362
  %100 = zext i1 %99 to i32, !llfi_index !363
  %101 = getelementptr inbounds i32* %93, i64 %indvars.iv15, !llfi_index !364
  store i32 %100, i32* %101, align 4, !tbaa !181, !llfi_index !365
  %102 = getelementptr inbounds %struct.OptionData_* %95, i64 %indvars.iv15, i32 0, !llfi_index !366
  %103 = load float* %102, align 4, !tbaa !367, !llfi_index !368
  %104 = getelementptr inbounds float* %81, i64 %indvars.iv15, !llfi_index !369
  store float %103, float* %104, align 4, !tbaa !203, !llfi_index !370
  %105 = getelementptr inbounds %struct.OptionData_* %95, i64 %indvars.iv15, i32 1, !llfi_index !371
  %106 = load float* %105, align 4, !tbaa !372, !llfi_index !373
  %.sum20 = add i64 %82, %indvars.iv15, !llfi_index !374
  %107 = getelementptr inbounds float* %81, i64 %.sum20, !llfi_index !375
  store float %106, float* %107, align 4, !tbaa !203, !llfi_index !376
  %108 = getelementptr inbounds %struct.OptionData_* %95, i64 %indvars.iv15, i32 2, !llfi_index !377
  %109 = load float* %108, align 4, !tbaa !378, !llfi_index !379
  %.sum21 = add i64 %.sum, %indvars.iv15, !llfi_index !380
  %110 = getelementptr inbounds float* %81, i64 %.sum21, !llfi_index !381
  store float %109, float* %110, align 4, !tbaa !203, !llfi_index !382
  %111 = getelementptr inbounds %struct.OptionData_* %95, i64 %indvars.iv15, i32 4, !llfi_index !383
  %112 = load float* %111, align 4, !tbaa !384, !llfi_index !385
  %.sum22 = add i64 %.sum1, %indvars.iv15, !llfi_index !386
  %113 = getelementptr inbounds float* %81, i64 %.sum22, !llfi_index !387
  store float %112, float* %113, align 4, !tbaa !203, !llfi_index !388
  %114 = getelementptr inbounds %struct.OptionData_* %95, i64 %indvars.iv15, i32 5, !llfi_index !389
  %115 = load float* %114, align 4, !tbaa !390, !llfi_index !391
  %.sum23 = add i64 %.sum2, %indvars.iv15, !llfi_index !392
  %116 = getelementptr inbounds float* %81, i64 %.sum23, !llfi_index !393
  store float %115, float* %116, align 4, !tbaa !203, !llfi_index !394
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !llfi_index !395
  %117 = load i32* @numOptions, align 4, !tbaa !181, !llfi_index !396
  %118 = trunc i64 %indvars.iv.next16 to i32, !llfi_index !397
  %119 = icmp slt i32 %118, %117, !llfi_index !398
  br i1 %119, label %96, label %._crit_edge9, !llfi_index !399

._crit_edge9:                                     ; preds = %96, %68
  %.lcssa = phi i32 [ %72, %68 ], [ %117, %96 ], !llfi_index !400
  %120 = sext i32 %.lcssa to i64, !llfi_index !401
  %121 = mul i64 %120, 40, !llfi_index !402
  %122 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str12, i64 0, i64 0), i64 %121) #4, !llfi_index !403
  %123 = load i32* @numOptions, align 4, !tbaa !181, !llfi_index !404
  %124 = load i32* @nThreads, align 4, !tbaa !181, !llfi_index !405
  %125 = sdiv i32 %123, %124, !llfi_index !406
  %126 = icmp sgt i32 %125, 0, !llfi_index !407
  br i1 %126, label %.lr.ph.us.i, label %bs_thread.exit, !llfi_index !408

; <label>:127                                     ; preds = %129
  %128 = add nsw i32 %j.02.us.i, 1, !llfi_index !409
  %exitcond.i = icmp eq i32 %128, 100, !llfi_index !410
  br i1 %exitcond.i, label %bs_thread.exit, label %.lr.ph.us.i, !llfi_index !411

; <label>:129                                     ; preds = %.lr.ph.us.i, %129
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %129 ], !llfi_index !412
  %130 = load float** @sptprice, align 8, !tbaa !199, !llfi_index !413
  %131 = getelementptr inbounds float* %130, i64 %indvars.iv.i, !llfi_index !414
  %132 = load float* %131, align 4, !tbaa !203, !llfi_index !415
  %133 = load float** @strike, align 8, !tbaa !199, !llfi_index !416
  %134 = getelementptr inbounds float* %133, i64 %indvars.iv.i, !llfi_index !417
  %135 = load float* %134, align 4, !tbaa !203, !llfi_index !418
  %136 = load float** @rate, align 8, !tbaa !199, !llfi_index !419
  %137 = getelementptr inbounds float* %136, i64 %indvars.iv.i, !llfi_index !420
  %138 = load float* %137, align 4, !tbaa !203, !llfi_index !421
  %139 = load float** @volatility, align 8, !tbaa !199, !llfi_index !422
  %140 = getelementptr inbounds float* %139, i64 %indvars.iv.i, !llfi_index !423
  %141 = load float* %140, align 4, !tbaa !203, !llfi_index !424
  %142 = load float** @otime, align 8, !tbaa !199, !llfi_index !425
  %143 = getelementptr inbounds float* %142, i64 %indvars.iv.i, !llfi_index !426
  %144 = load float* %143, align 4, !tbaa !203, !llfi_index !427
  %145 = load i32** @otype, align 8, !tbaa !199, !llfi_index !428
  %146 = getelementptr inbounds i32* %145, i64 %indvars.iv.i, !llfi_index !429
  %147 = load i32* %146, align 4, !tbaa !181, !llfi_index !430
  %148 = tail call float @BlkSchlsEqEuroNoDiv(float %132, float %135, float %138, float %141, float %144, i32 %147, float undef) #4, !llfi_index !431
  %149 = load float** @prices, align 8, !tbaa !199, !llfi_index !432
  %150 = getelementptr inbounds float* %149, i64 %indvars.iv.i, !llfi_index !433
  store float %148, float* %150, align 4, !tbaa !203, !llfi_index !434
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1, !llfi_index !435
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !llfi_index !436
  %exitcond = icmp eq i32 %lftr.wideiv, %125, !llfi_index !437
  br i1 %exitcond, label %127, label %129, !llfi_index !438

.lr.ph.us.i:                                      ; preds = %127, %._crit_edge9
  %j.02.us.i = phi i32 [ %128, %127 ], [ 0, %._crit_edge9 ], !llfi_index !439
  br label %129, !llfi_index !440

bs_thread.exit:                                   ; preds = %127, %._crit_edge9
  %151 = tail call %struct._IO_FILE* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #4, !llfi_index !441
  %152 = icmp eq %struct._IO_FILE* %151, null, !llfi_index !442
  br i1 %152, label %153, label %155, !llfi_index !443

; <label>:153                                     ; preds = %bs_thread.exit
  %154 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i8* %14) #4, !llfi_index !444
  tail call void @exit(i32 1) #5, !llfi_index !445
  unreachable, !llfi_index !446

; <label>:155                                     ; preds = %bs_thread.exit
  %156 = load i32* @numOptions, align 4, !tbaa !181, !llfi_index !447
  %157 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %151, i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), i32 %156) #4, !llfi_index !448
  %158 = icmp slt i32 %157, 0, !llfi_index !449
  br i1 %158, label %161, label %.preheader, !llfi_index !450

.preheader:                                       ; preds = %155
  %159 = load i32* @numOptions, align 4, !tbaa !181, !llfi_index !451
  %160 = icmp sgt i32 %159, 0, !llfi_index !452
  br i1 %160, label %.lr.ph, label %._crit_edge, !llfi_index !453

; <label>:161                                     ; preds = %155
  %162 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str15, i64 0, i64 0), i8* %14) #4, !llfi_index !454
  %163 = tail call i32 @fclose(%struct._IO_FILE* %151) #4, !llfi_index !455
  tail call void @exit(i32 1) #5, !llfi_index !456
  unreachable, !llfi_index !457

; <label>:164                                     ; preds = %.lr.ph
  %165 = load i32* @numOptions, align 4, !tbaa !181, !llfi_index !458
  %166 = trunc i64 %indvars.iv.next to i32, !llfi_index !459
  %167 = icmp slt i32 %166, %165, !llfi_index !460
  br i1 %167, label %.lr.ph, label %._crit_edge, !llfi_index !461

.lr.ph:                                           ; preds = %164, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %164 ], [ 0, %.preheader ], !llfi_index !462
  %168 = load float** @prices, align 8, !tbaa !199, !llfi_index !463
  %169 = getelementptr inbounds float* %168, i64 %indvars.iv, !llfi_index !464
  %170 = load float* %169, align 4, !tbaa !203, !llfi_index !465
  %171 = fpext float %170 to double, !llfi_index !466
  %172 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %151, i8* getelementptr inbounds ([7 x i8]* @.str16, i64 0, i64 0), double %171) #4, !llfi_index !467
  %173 = icmp slt i32 %172, 0, !llfi_index !468
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !469
  br i1 %173, label %174, label %164, !llfi_index !470

; <label>:174                                     ; preds = %.lr.ph
  %175 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str15, i64 0, i64 0), i8* %14) #4, !llfi_index !471
  %176 = tail call i32 @fclose(%struct._IO_FILE* %151) #4, !llfi_index !472
  tail call void @exit(i32 1) #5, !llfi_index !473
  unreachable, !llfi_index !474

._crit_edge:                                      ; preds = %164, %.preheader
  %177 = tail call i32 @fclose(%struct._IO_FILE* %151) #4, !llfi_index !475
  %178 = icmp eq i32 %177, 0, !llfi_index !476
  br i1 %178, label %181, label %179, !llfi_index !477

; <label>:179                                     ; preds = %._crit_edge
  %180 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str9, i64 0, i64 0), i8* %14) #4, !llfi_index !478
  tail call void @exit(i32 1) #5, !llfi_index !479
  unreachable, !llfi_index !480

; <label>:181                                     ; preds = %._crit_edge
  %182 = load %struct.OptionData_** @data, align 8, !tbaa !199, !llfi_index !481
  %183 = bitcast %struct.OptionData_* %182 to i8*, !llfi_index !482
  tail call void @free(i8* %183) #4, !llfi_index !483
  %184 = load float** @prices, align 8, !tbaa !199, !llfi_index !484
  %185 = bitcast float* %184 to i8*, !llfi_index !485
  tail call void @free(i8* %185) #4, !llfi_index !486
  ret i32 0, !llfi_index !487
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #1

; Function Attrs: nounwind
declare float @sqrtf(float) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

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
!181 = metadata !{metadata !182, metadata !182, i64 0}
!182 = metadata !{metadata !"int", metadata !183, i64 0}
!183 = metadata !{metadata !"omnipotent char", metadata !184, i64 0}
!184 = metadata !{metadata !"Simple C/C++ TBAA"}
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
!196 = metadata !{i64 192}
!197 = metadata !{i64 193}
!198 = metadata !{i64 194}
!199 = metadata !{metadata !200, metadata !200, i64 0}
!200 = metadata !{metadata !"any pointer", metadata !183, i64 0}
!201 = metadata !{i64 195}
!202 = metadata !{i64 196}
!203 = metadata !{metadata !204, metadata !204, i64 0}
!204 = metadata !{metadata !"float", metadata !183, i64 0}
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
!359 = metadata !{metadata !360, metadata !183, i64 24}
!360 = metadata !{metadata !"OptionData_", metadata !204, i64 0, metadata !204, i64 4, metadata !204, i64 8, metadata !204, i64 12, metadata !204, i64 16, metadata !204, i64 20, metadata !183, i64 24, metadata !204, i64 28, metadata !204, i64 32}
!361 = metadata !{i64 351}
!362 = metadata !{i64 352}
!363 = metadata !{i64 353}
!364 = metadata !{i64 354}
!365 = metadata !{i64 355}
!366 = metadata !{i64 356}
!367 = metadata !{metadata !360, metadata !204, i64 0}
!368 = metadata !{i64 357}
!369 = metadata !{i64 358}
!370 = metadata !{i64 359}
!371 = metadata !{i64 360}
!372 = metadata !{metadata !360, metadata !204, i64 4}
!373 = metadata !{i64 361}
!374 = metadata !{i64 362}
!375 = metadata !{i64 363}
!376 = metadata !{i64 364}
!377 = metadata !{i64 365}
!378 = metadata !{metadata !360, metadata !204, i64 8}
!379 = metadata !{i64 366}
!380 = metadata !{i64 367}
!381 = metadata !{i64 368}
!382 = metadata !{i64 369}
!383 = metadata !{i64 370}
!384 = metadata !{metadata !360, metadata !204, i64 16}
!385 = metadata !{i64 371}
!386 = metadata !{i64 372}
!387 = metadata !{i64 373}
!388 = metadata !{i64 374}
!389 = metadata !{i64 375}
!390 = metadata !{metadata !360, metadata !204, i64 20}
!391 = metadata !{i64 376}
!392 = metadata !{i64 377}
!393 = metadata !{i64 378}
!394 = metadata !{i64 379}
!395 = metadata !{i64 380}
!396 = metadata !{i64 381}
!397 = metadata !{i64 382}
!398 = metadata !{i64 383}
!399 = metadata !{i64 384}
!400 = metadata !{i64 385}
!401 = metadata !{i64 386}
!402 = metadata !{i64 387}
!403 = metadata !{i64 388}
!404 = metadata !{i64 389}
!405 = metadata !{i64 390}
!406 = metadata !{i64 391}
!407 = metadata !{i64 392}
!408 = metadata !{i64 393}
!409 = metadata !{i64 394}
!410 = metadata !{i64 395}
!411 = metadata !{i64 396}
!412 = metadata !{i64 397}
!413 = metadata !{i64 398}
!414 = metadata !{i64 399}
!415 = metadata !{i64 400}
!416 = metadata !{i64 401}
!417 = metadata !{i64 402}
!418 = metadata !{i64 403}
!419 = metadata !{i64 404}
!420 = metadata !{i64 405}
!421 = metadata !{i64 406}
!422 = metadata !{i64 407}
!423 = metadata !{i64 408}
!424 = metadata !{i64 409}
!425 = metadata !{i64 410}
!426 = metadata !{i64 411}
!427 = metadata !{i64 412}
!428 = metadata !{i64 413}
!429 = metadata !{i64 414}
!430 = metadata !{i64 415}
!431 = metadata !{i64 416}
!432 = metadata !{i64 417}
!433 = metadata !{i64 418}
!434 = metadata !{i64 419}
!435 = metadata !{i64 420}
!436 = metadata !{i64 421}
!437 = metadata !{i64 422}
!438 = metadata !{i64 423}
!439 = metadata !{i64 424}
!440 = metadata !{i64 425}
!441 = metadata !{i64 426}
!442 = metadata !{i64 427}
!443 = metadata !{i64 428}
!444 = metadata !{i64 429}
!445 = metadata !{i64 430}
!446 = metadata !{i64 431}
!447 = metadata !{i64 432}
!448 = metadata !{i64 433}
!449 = metadata !{i64 434}
!450 = metadata !{i64 435}
!451 = metadata !{i64 436}
!452 = metadata !{i64 437}
!453 = metadata !{i64 438}
!454 = metadata !{i64 439}
!455 = metadata !{i64 440}
!456 = metadata !{i64 441}
!457 = metadata !{i64 442}
!458 = metadata !{i64 443}
!459 = metadata !{i64 444}
!460 = metadata !{i64 445}
!461 = metadata !{i64 446}
!462 = metadata !{i64 447}
!463 = metadata !{i64 448}
!464 = metadata !{i64 449}
!465 = metadata !{i64 450}
!466 = metadata !{i64 451}
!467 = metadata !{i64 452}
!468 = metadata !{i64 453}
!469 = metadata !{i64 454}
!470 = metadata !{i64 455}
!471 = metadata !{i64 456}
!472 = metadata !{i64 457}
!473 = metadata !{i64 458}
!474 = metadata !{i64 459}
!475 = metadata !{i64 460}
!476 = metadata !{i64 461}
!477 = metadata !{i64 462}
!478 = metadata !{i64 463}
!479 = metadata !{i64 464}
!480 = metadata !{i64 465}
!481 = metadata !{i64 466}
!482 = metadata !{i64 467}
!483 = metadata !{i64 468}
!484 = metadata !{i64 469}
!485 = metadata !{i64 470}
!486 = metadata !{i64 471}
!487 = metadata !{i64 472}
