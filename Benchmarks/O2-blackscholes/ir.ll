; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/parsec-blackscholes/fault injection/llfi-O2/blackscholes.ll'
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
  %14 = tail call float @CNDF(float %12), !llfi_index !63
  %15 = tail call float @CNDF(float %13), !llfi_index !64
  %16 = fpext float %strike to double, !llfi_index !65
  %17 = fmul float %rate, %time, !llfi_index !66
  %18 = fsub float -0.000000e+00, %17, !llfi_index !67
  %19 = fpext float %18 to double, !llfi_index !68
  %20 = tail call double @exp(double %19) #4, !llfi_index !69
  %21 = fmul double %16, %20, !llfi_index !70
  %22 = fptrunc double %21 to float, !llfi_index !71
  %23 = icmp eq i32 %otype, 0, !llfi_index !72
  br i1 %23, label %24, label %28, !llfi_index !73

; <label>:24                                      ; preds = %0
  %25 = fmul float %14, %sptprice, !llfi_index !74
  %26 = fmul float %15, %22, !llfi_index !75
  %27 = fsub float %25, %26, !llfi_index !76
  br label %34, !llfi_index !77

; <label>:28                                      ; preds = %0
  %29 = fsub float 1.000000e+00, %14, !llfi_index !78
  %30 = fsub float 1.000000e+00, %15, !llfi_index !79
  %31 = fmul float %30, %22, !llfi_index !80
  %32 = fmul float %29, %sptprice, !llfi_index !81
  %33 = fsub float %31, %32, !llfi_index !82
  br label %34, !llfi_index !83

; <label>:34                                      ; preds = %28, %24
  %OptionPrice.0 = phi float [ %27, %24 ], [ %33, %28 ], !llfi_index !84
  ret float %OptionPrice.0, !llfi_index !85
}

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: nounwind uwtable
define i32 @bs_thread(i8* nocapture readonly %tid_ptr) #0 {
  %1 = bitcast i8* %tid_ptr to i32*, !llfi_index !86
  %2 = load i32* %1, align 4, !tbaa !87, !llfi_index !91
  %3 = load i32* @numOptions, align 4, !tbaa !87, !llfi_index !92
  %4 = load i32* @nThreads, align 4, !tbaa !87, !llfi_index !93
  %5 = sdiv i32 %3, %4, !llfi_index !94
  %6 = mul i32 %5, %2, !llfi_index !95
  %7 = add nsw i32 %6, %5, !llfi_index !96
  %8 = icmp sgt i32 %5, 0, !llfi_index !97
  %9 = sext i32 %6 to i64, !llfi_index !98
  br label %.preheader, !llfi_index !99

.preheader:                                       ; preds = %._crit_edge, %0
  %j.02 = phi i32 [ 0, %0 ], [ %33, %._crit_edge ], !llfi_index !100
  br i1 %8, label %.lr.ph, label %._crit_edge, !llfi_index !101

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %9, %.preheader ], !llfi_index !102
  %10 = load float** @sptprice, align 8, !tbaa !103, !llfi_index !105
  %11 = getelementptr inbounds float* %10, i64 %indvars.iv, !llfi_index !106
  %12 = load float* %11, align 4, !tbaa !107, !llfi_index !109
  %13 = load float** @strike, align 8, !tbaa !103, !llfi_index !110
  %14 = getelementptr inbounds float* %13, i64 %indvars.iv, !llfi_index !111
  %15 = load float* %14, align 4, !tbaa !107, !llfi_index !112
  %16 = load float** @rate, align 8, !tbaa !103, !llfi_index !113
  %17 = getelementptr inbounds float* %16, i64 %indvars.iv, !llfi_index !114
  %18 = load float* %17, align 4, !tbaa !107, !llfi_index !115
  %19 = load float** @volatility, align 8, !tbaa !103, !llfi_index !116
  %20 = getelementptr inbounds float* %19, i64 %indvars.iv, !llfi_index !117
  %21 = load float* %20, align 4, !tbaa !107, !llfi_index !118
  %22 = load float** @otime, align 8, !tbaa !103, !llfi_index !119
  %23 = getelementptr inbounds float* %22, i64 %indvars.iv, !llfi_index !120
  %24 = load float* %23, align 4, !tbaa !107, !llfi_index !121
  %25 = load i32** @otype, align 8, !tbaa !103, !llfi_index !122
  %26 = getelementptr inbounds i32* %25, i64 %indvars.iv, !llfi_index !123
  %27 = load i32* %26, align 4, !tbaa !87, !llfi_index !124
  %28 = tail call float @BlkSchlsEqEuroNoDiv(float %12, float %15, float %18, float %21, float %24, i32 %27, float undef), !llfi_index !125
  %29 = load float** @prices, align 8, !tbaa !103, !llfi_index !126
  %30 = getelementptr inbounds float* %29, i64 %indvars.iv, !llfi_index !127
  store float %28, float* %30, align 4, !tbaa !107, !llfi_index !128
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !llfi_index !129
  %31 = trunc i64 %indvars.iv.next to i32, !llfi_index !130
  %32 = icmp slt i32 %31, %7, !llfi_index !131
  br i1 %32, label %.lr.ph, label %._crit_edge, !llfi_index !132

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %33 = add nsw i32 %j.02, 1, !llfi_index !133
  %exitcond = icmp eq i32 %33, 100, !llfi_index !134
  br i1 %exitcond, label %34, label %.preheader, !llfi_index !135

; <label>:34                                      ; preds = %._crit_edge
  ret i32 0, !llfi_index !136
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
  %tid = alloca i32, align 4, !llfi_index !137
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str, i64 0, i64 0)), !llfi_index !138
  %1 = tail call i32 @fflush(%struct._IO_FILE* null) #4, !llfi_index !139
  %2 = icmp eq i32 %argc, 4, !llfi_index !140
  br i1 %2, label %6, label %3, !llfi_index !141

; <label>:3                                       ; preds = %0
  %4 = load i8** %argv, align 8, !tbaa !103, !llfi_index !142
  %5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0), i8* %4) #4, !llfi_index !143
  tail call void @exit(i32 1) #5, !llfi_index !144
  unreachable, !llfi_index !145

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8** %argv, i64 1, !llfi_index !146
  %8 = load i8** %7, align 8, !tbaa !103, !llfi_index !147
  %9 = tail call i64 @strtol(i8* nocapture %8, i8** null, i32 10) #4, !llfi_index !148
  %10 = trunc i64 %9 to i32, !llfi_index !149
  store i32 %10, i32* @nThreads, align 4, !tbaa !87, !llfi_index !150
  %11 = getelementptr inbounds i8** %argv, i64 2, !llfi_index !151
  %12 = load i8** %11, align 8, !tbaa !103, !llfi_index !152
  %13 = getelementptr inbounds i8** %argv, i64 3, !llfi_index !153
  %14 = load i8** %13, align 8, !tbaa !103, !llfi_index !154
  %15 = tail call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #4, !llfi_index !155
  %16 = icmp eq %struct._IO_FILE* %15, null, !llfi_index !156
  br i1 %16, label %17, label %19, !llfi_index !157

; <label>:17                                      ; preds = %6
  %18 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i8* %12) #4, !llfi_index !158
  tail call void @exit(i32 1) #5, !llfi_index !159
  unreachable, !llfi_index !160

; <label>:19                                      ; preds = %6
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i32* @numOptions) #4, !llfi_index !161
  %21 = icmp eq i32 %20, 1, !llfi_index !162
  br i1 %21, label %25, label %22, !llfi_index !163

; <label>:22                                      ; preds = %19
  %23 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str5, i64 0, i64 0), i8* %12) #4, !llfi_index !164
  %24 = tail call i32 @fclose(%struct._IO_FILE* %15) #4, !llfi_index !165
  tail call void @exit(i32 1) #5, !llfi_index !166
  unreachable, !llfi_index !167

; <label>:25                                      ; preds = %19
  %26 = load i32* @nThreads, align 4, !tbaa !87, !llfi_index !168
  %27 = load i32* @numOptions, align 4, !tbaa !87, !llfi_index !169
  %28 = icmp sgt i32 %26, %27, !llfi_index !170
  br i1 %28, label %29, label %31, !llfi_index !171

; <label>:29                                      ; preds = %25
  %puts4 = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str18, i64 0, i64 0)), !llfi_index !172
  %30 = load i32* @numOptions, align 4, !tbaa !87, !llfi_index !173
  store i32 %30, i32* @nThreads, align 4, !tbaa !87, !llfi_index !174
  br label %31, !llfi_index !175

; <label>:31                                      ; preds = %29, %25
  %32 = phi i32 [ %30, %29 ], [ %27, %25 ], !llfi_index !176
  %33 = phi i32 [ %30, %29 ], [ %26, %25 ], !llfi_index !177
  %34 = icmp eq i32 %33, 1, !llfi_index !178
  br i1 %34, label %36, label %35, !llfi_index !179

; <label>:35                                      ; preds = %31
  %puts3 = tail call i32 @puts(i8* getelementptr inbounds ([45 x i8]* @str17, i64 0, i64 0)), !llfi_index !180
  tail call void @exit(i32 1) #5, !llfi_index !181
  unreachable, !llfi_index !182

; <label>:36                                      ; preds = %31
  %37 = sext i32 %32 to i64, !llfi_index !183
  %38 = mul i64 %37, 36, !llfi_index !184
  %39 = tail call noalias i8* @malloc(i64 %38) #4, !llfi_index !185
  %40 = bitcast i8* %39 to %struct.OptionData_*, !llfi_index !186
  store %struct.OptionData_* %40, %struct.OptionData_** @data, align 8, !tbaa !103, !llfi_index !187
  %41 = shl nsw i64 %37, 2, !llfi_index !188
  %42 = tail call noalias i8* @malloc(i64 %41) #4, !llfi_index !189
  %43 = bitcast i8* %42 to float*, !llfi_index !190
  store float* %43, float** @prices, align 8, !tbaa !103, !llfi_index !191
  %44 = icmp sgt i32 %32, 0, !llfi_index !192
  br i1 %44, label %.lr.ph12, label %._crit_edge13, !llfi_index !193

; <label>:45                                      ; preds = %.lr.ph12
  %46 = load i32* @numOptions, align 4, !tbaa !87, !llfi_index !194
  %47 = trunc i64 %indvars.iv.next18 to i32, !llfi_index !195
  %48 = icmp slt i32 %47, %46, !llfi_index !196
  br i1 %48, label %._crit_edge19, label %._crit_edge13, !llfi_index !197

._crit_edge19:                                    ; preds = %45
  %.pre = load %struct.OptionData_** @data, align 8, !tbaa !103, !llfi_index !198
  br label %.lr.ph12, !llfi_index !199

.lr.ph12:                                         ; preds = %._crit_edge19, %36
  %49 = phi %struct.OptionData_* [ %.pre, %._crit_edge19 ], [ %40, %36 ], !llfi_index !200
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %._crit_edge19 ], [ 0, %36 ], !llfi_index !201
  %50 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 0, !llfi_index !202
  %51 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 1, !llfi_index !203
  %52 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 2, !llfi_index !204
  %53 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 3, !llfi_index !205
  %54 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 4, !llfi_index !206
  %55 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 5, !llfi_index !207
  %56 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 6, !llfi_index !208
  %57 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 7, !llfi_index !209
  %58 = getelementptr inbounds %struct.OptionData_* %49, i64 %indvars.iv17, i32 8, !llfi_index !210
  %59 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([27 x i8]* @.str8, i64 0, i64 0), float* %50, float* %51, float* %52, float* %53, float* %54, float* %55, i8* %56, float* %57, float* %58) #4, !llfi_index !211
  %60 = icmp eq i32 %59, 9, !llfi_index !212
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !llfi_index !213
  br i1 %60, label %45, label %61, !llfi_index !214

; <label>:61                                      ; preds = %.lr.ph12
  %62 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str5, i64 0, i64 0), i8* %12) #4, !llfi_index !215
  %63 = tail call i32 @fclose(%struct._IO_FILE* %15) #4, !llfi_index !216
  tail call void @exit(i32 1) #5, !llfi_index !217
  unreachable, !llfi_index !218

._crit_edge13:                                    ; preds = %45, %36
  %64 = tail call i32 @fclose(%struct._IO_FILE* %15) #4, !llfi_index !219
  %65 = icmp eq i32 %64, 0, !llfi_index !220
  br i1 %65, label %68, label %66, !llfi_index !221

; <label>:66                                      ; preds = %._crit_edge13
  %67 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str9, i64 0, i64 0), i8* %12) #4, !llfi_index !222
  tail call void @exit(i32 1) #5, !llfi_index !223
  unreachable, !llfi_index !224

; <label>:68                                      ; preds = %._crit_edge13
  %69 = load i32* @numOptions, align 4, !tbaa !87, !llfi_index !225
  %70 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str10, i64 0, i64 0), i32 %69) #4, !llfi_index !226
  %71 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str11, i64 0, i64 0), i32 100) #4, !llfi_index !227
  %72 = load i32* @numOptions, align 4, !tbaa !87, !llfi_index !228
  %73 = mul nsw i32 %72, 5, !llfi_index !229
  %74 = sext i32 %73 to i64, !llfi_index !230
  %75 = shl nsw i64 %74, 2, !llfi_index !231
  %76 = add i64 %75, 256, !llfi_index !232
  %77 = tail call noalias i8* @malloc(i64 %76) #4, !llfi_index !233
  %78 = ptrtoint i8* %77 to i64, !llfi_index !234
  %79 = add i64 %78, 256, !llfi_index !235
  %80 = and i64 %79, -64, !llfi_index !236
  %81 = inttoptr i64 %80 to float*, !llfi_index !237
  store float* %81, float** @sptprice, align 8, !tbaa !103, !llfi_index !238
  %82 = sext i32 %72 to i64, !llfi_index !239
  %83 = getelementptr inbounds float* %81, i64 %82, !llfi_index !240
  store float* %83, float** @strike, align 8, !tbaa !103, !llfi_index !241
  %.sum = shl nsw i64 %82, 1, !llfi_index !242
  %84 = getelementptr inbounds float* %81, i64 %.sum, !llfi_index !243
  store float* %84, float** @rate, align 8, !tbaa !103, !llfi_index !244
  %.sum1 = add i64 %.sum, %82, !llfi_index !245
  %85 = getelementptr inbounds float* %81, i64 %.sum1, !llfi_index !246
  store float* %85, float** @volatility, align 8, !tbaa !103, !llfi_index !247
  %.sum2 = add i64 %.sum1, %82, !llfi_index !248
  %86 = getelementptr inbounds float* %81, i64 %.sum2, !llfi_index !249
  store float* %86, float** @otime, align 8, !tbaa !103, !llfi_index !250
  %87 = shl nsw i64 %82, 2, !llfi_index !251
  %88 = add i64 %87, 256, !llfi_index !252
  %89 = tail call noalias i8* @malloc(i64 %88) #4, !llfi_index !253
  %90 = ptrtoint i8* %89 to i64, !llfi_index !254
  %91 = add i64 %90, 256, !llfi_index !255
  %92 = and i64 %91, -64, !llfi_index !256
  %93 = inttoptr i64 %92 to i32*, !llfi_index !257
  store i32* %93, i32** @otype, align 8, !tbaa !103, !llfi_index !258
  %94 = icmp sgt i32 %72, 0, !llfi_index !259
  br i1 %94, label %.lr.ph8, label %._crit_edge9, !llfi_index !260

.lr.ph8:                                          ; preds = %68
  %95 = load %struct.OptionData_** @data, align 8, !tbaa !103, !llfi_index !261
  br label %96, !llfi_index !262

; <label>:96                                      ; preds = %96, %.lr.ph8
  %indvars.iv15 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next16, %96 ], !llfi_index !263
  %97 = getelementptr inbounds %struct.OptionData_* %95, i64 %indvars.iv15, i32 6, !llfi_index !264
  %98 = load i8* %97, align 1, !tbaa !265, !llfi_index !267
  %99 = icmp eq i8 %98, 80, !llfi_index !268
  %100 = zext i1 %99 to i32, !llfi_index !269
  %101 = getelementptr inbounds i32* %93, i64 %indvars.iv15, !llfi_index !270
  store i32 %100, i32* %101, align 4, !tbaa !87, !llfi_index !271
  %102 = getelementptr inbounds %struct.OptionData_* %95, i64 %indvars.iv15, i32 0, !llfi_index !272
  %103 = load float* %102, align 4, !tbaa !273, !llfi_index !274
  %104 = getelementptr inbounds float* %81, i64 %indvars.iv15, !llfi_index !275
  store float %103, float* %104, align 4, !tbaa !107, !llfi_index !276
  %105 = getelementptr inbounds %struct.OptionData_* %95, i64 %indvars.iv15, i32 1, !llfi_index !277
  %106 = load float* %105, align 4, !tbaa !278, !llfi_index !279
  %.sum20 = add i64 %82, %indvars.iv15, !llfi_index !280
  %107 = getelementptr inbounds float* %81, i64 %.sum20, !llfi_index !281
  store float %106, float* %107, align 4, !tbaa !107, !llfi_index !282
  %108 = getelementptr inbounds %struct.OptionData_* %95, i64 %indvars.iv15, i32 2, !llfi_index !283
  %109 = load float* %108, align 4, !tbaa !284, !llfi_index !285
  %.sum21 = add i64 %.sum, %indvars.iv15, !llfi_index !286
  %110 = getelementptr inbounds float* %81, i64 %.sum21, !llfi_index !287
  store float %109, float* %110, align 4, !tbaa !107, !llfi_index !288
  %111 = getelementptr inbounds %struct.OptionData_* %95, i64 %indvars.iv15, i32 4, !llfi_index !289
  %112 = load float* %111, align 4, !tbaa !290, !llfi_index !291
  %.sum22 = add i64 %.sum1, %indvars.iv15, !llfi_index !292
  %113 = getelementptr inbounds float* %81, i64 %.sum22, !llfi_index !293
  store float %112, float* %113, align 4, !tbaa !107, !llfi_index !294
  %114 = getelementptr inbounds %struct.OptionData_* %95, i64 %indvars.iv15, i32 5, !llfi_index !295
  %115 = load float* %114, align 4, !tbaa !296, !llfi_index !297
  %.sum23 = add i64 %.sum2, %indvars.iv15, !llfi_index !298
  %116 = getelementptr inbounds float* %81, i64 %.sum23, !llfi_index !299
  store float %115, float* %116, align 4, !tbaa !107, !llfi_index !300
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !llfi_index !301
  %117 = load i32* @numOptions, align 4, !tbaa !87, !llfi_index !302
  %118 = trunc i64 %indvars.iv.next16 to i32, !llfi_index !303
  %119 = icmp slt i32 %118, %117, !llfi_index !304
  br i1 %119, label %96, label %._crit_edge9, !llfi_index !305

._crit_edge9:                                     ; preds = %96, %68
  %.lcssa = phi i32 [ %72, %68 ], [ %117, %96 ], !llfi_index !306
  %120 = sext i32 %.lcssa to i64, !llfi_index !307
  %121 = mul i64 %120, 40, !llfi_index !308
  %122 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str12, i64 0, i64 0), i64 %121) #4, !llfi_index !309
  store i32 0, i32* %tid, align 4, !tbaa !87, !llfi_index !310
  %123 = bitcast i32* %tid to i8*, !llfi_index !311
  %124 = call i32 @bs_thread(i8* %123), !llfi_index !312
  %125 = tail call %struct._IO_FILE* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #4, !llfi_index !313
  %126 = icmp eq %struct._IO_FILE* %125, null, !llfi_index !314
  br i1 %126, label %127, label %129, !llfi_index !315

; <label>:127                                     ; preds = %._crit_edge9
  %128 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0), i8* %14) #4, !llfi_index !316
  tail call void @exit(i32 1) #5, !llfi_index !317
  unreachable, !llfi_index !318

; <label>:129                                     ; preds = %._crit_edge9
  %130 = load i32* @numOptions, align 4, !tbaa !87, !llfi_index !319
  %131 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), i32 %130) #4, !llfi_index !320
  %132 = icmp slt i32 %131, 0, !llfi_index !321
  br i1 %132, label %135, label %.preheader, !llfi_index !322

.preheader:                                       ; preds = %129
  %133 = load i32* @numOptions, align 4, !tbaa !87, !llfi_index !323
  %134 = icmp sgt i32 %133, 0, !llfi_index !324
  br i1 %134, label %.lr.ph, label %._crit_edge, !llfi_index !325

; <label>:135                                     ; preds = %129
  %136 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str15, i64 0, i64 0), i8* %14) #4, !llfi_index !326
  %137 = tail call i32 @fclose(%struct._IO_FILE* %125) #4, !llfi_index !327
  tail call void @exit(i32 1) #5, !llfi_index !328
  unreachable, !llfi_index !329

; <label>:138                                     ; preds = %.lr.ph
  %139 = load i32* @numOptions, align 4, !tbaa !87, !llfi_index !330
  %140 = trunc i64 %indvars.iv.next to i32, !llfi_index !331
  %141 = icmp slt i32 %140, %139, !llfi_index !332
  br i1 %141, label %.lr.ph, label %._crit_edge, !llfi_index !333

.lr.ph:                                           ; preds = %138, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %138 ], [ 0, %.preheader ], !llfi_index !334
  %142 = load float** @prices, align 8, !tbaa !103, !llfi_index !335
  %143 = getelementptr inbounds float* %142, i64 %indvars.iv, !llfi_index !336
  %144 = load float* %143, align 4, !tbaa !107, !llfi_index !337
  %145 = fpext float %144 to double, !llfi_index !338
  %146 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([7 x i8]* @.str16, i64 0, i64 0), double %145) #4, !llfi_index !339
  %147 = icmp slt i32 %146, 0, !llfi_index !340
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !341
  br i1 %147, label %148, label %138, !llfi_index !342

; <label>:148                                     ; preds = %.lr.ph
  %149 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str15, i64 0, i64 0), i8* %14) #4, !llfi_index !343
  %150 = tail call i32 @fclose(%struct._IO_FILE* %125) #4, !llfi_index !344
  tail call void @exit(i32 1) #5, !llfi_index !345
  unreachable, !llfi_index !346

._crit_edge:                                      ; preds = %138, %.preheader
  %151 = tail call i32 @fclose(%struct._IO_FILE* %125) #4, !llfi_index !347
  %152 = icmp eq i32 %151, 0, !llfi_index !348
  br i1 %152, label %155, label %153, !llfi_index !349

; <label>:153                                     ; preds = %._crit_edge
  %154 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str9, i64 0, i64 0), i8* %14) #4, !llfi_index !350
  tail call void @exit(i32 1) #5, !llfi_index !351
  unreachable, !llfi_index !352

; <label>:155                                     ; preds = %._crit_edge
  %156 = load %struct.OptionData_** @data, align 8, !tbaa !103, !llfi_index !353
  %157 = bitcast %struct.OptionData_* %156 to i8*, !llfi_index !354
  tail call void @free(i8* %157) #4, !llfi_index !355
  %158 = load float** @prices, align 8, !tbaa !103, !llfi_index !356
  %159 = bitcast float* %158 to i8*, !llfi_index !357
  tail call void @free(i8* %159) #4, !llfi_index !358
  ret i32 0, !llfi_index !359
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
!87 = metadata !{metadata !88, metadata !88, i64 0}
!88 = metadata !{metadata !"int", metadata !89, i64 0}
!89 = metadata !{metadata !"omnipotent char", metadata !90, i64 0}
!90 = metadata !{metadata !"Simple C/C++ TBAA"}
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
!103 = metadata !{metadata !104, metadata !104, i64 0}
!104 = metadata !{metadata !"any pointer", metadata !89, i64 0}
!105 = metadata !{i64 99}
!106 = metadata !{i64 100}
!107 = metadata !{metadata !108, metadata !108, i64 0}
!108 = metadata !{metadata !"float", metadata !89, i64 0}
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
!265 = metadata !{metadata !266, metadata !89, i64 24}
!266 = metadata !{metadata !"OptionData_", metadata !108, i64 0, metadata !108, i64 4, metadata !108, i64 8, metadata !108, i64 12, metadata !108, i64 16, metadata !108, i64 20, metadata !89, i64 24, metadata !108, i64 28, metadata !108, i64 32}
!267 = metadata !{i64 257}
!268 = metadata !{i64 258}
!269 = metadata !{i64 259}
!270 = metadata !{i64 260}
!271 = metadata !{i64 261}
!272 = metadata !{i64 262}
!273 = metadata !{metadata !266, metadata !108, i64 0}
!274 = metadata !{i64 263}
!275 = metadata !{i64 264}
!276 = metadata !{i64 265}
!277 = metadata !{i64 266}
!278 = metadata !{metadata !266, metadata !108, i64 4}
!279 = metadata !{i64 267}
!280 = metadata !{i64 268}
!281 = metadata !{i64 269}
!282 = metadata !{i64 270}
!283 = metadata !{i64 271}
!284 = metadata !{metadata !266, metadata !108, i64 8}
!285 = metadata !{i64 272}
!286 = metadata !{i64 273}
!287 = metadata !{i64 274}
!288 = metadata !{i64 275}
!289 = metadata !{i64 276}
!290 = metadata !{metadata !266, metadata !108, i64 16}
!291 = metadata !{i64 277}
!292 = metadata !{i64 278}
!293 = metadata !{i64 279}
!294 = metadata !{i64 280}
!295 = metadata !{i64 281}
!296 = metadata !{metadata !266, metadata !108, i64 20}
!297 = metadata !{i64 282}
!298 = metadata !{i64 283}
!299 = metadata !{i64 284}
!300 = metadata !{i64 285}
!301 = metadata !{i64 286}
!302 = metadata !{i64 287}
!303 = metadata !{i64 288}
!304 = metadata !{i64 289}
!305 = metadata !{i64 290}
!306 = metadata !{i64 291}
!307 = metadata !{i64 292}
!308 = metadata !{i64 293}
!309 = metadata !{i64 294}
!310 = metadata !{i64 295}
!311 = metadata !{i64 296}
!312 = metadata !{i64 297}
!313 = metadata !{i64 298}
!314 = metadata !{i64 299}
!315 = metadata !{i64 300}
!316 = metadata !{i64 301}
!317 = metadata !{i64 302}
!318 = metadata !{i64 303}
!319 = metadata !{i64 304}
!320 = metadata !{i64 305}
!321 = metadata !{i64 306}
!322 = metadata !{i64 307}
!323 = metadata !{i64 308}
!324 = metadata !{i64 309}
!325 = metadata !{i64 310}
!326 = metadata !{i64 311}
!327 = metadata !{i64 312}
!328 = metadata !{i64 313}
!329 = metadata !{i64 314}
!330 = metadata !{i64 315}
!331 = metadata !{i64 316}
!332 = metadata !{i64 317}
!333 = metadata !{i64 318}
!334 = metadata !{i64 319}
!335 = metadata !{i64 320}
!336 = metadata !{i64 321}
!337 = metadata !{i64 322}
!338 = metadata !{i64 323}
!339 = metadata !{i64 324}
!340 = metadata !{i64 325}
!341 = metadata !{i64 326}
!342 = metadata !{i64 327}
!343 = metadata !{i64 328}
!344 = metadata !{i64 329}
!345 = metadata !{i64 330}
!346 = metadata !{i64 331}
!347 = metadata !{i64 332}
!348 = metadata !{i64 333}
!349 = metadata !{i64 334}
!350 = metadata !{i64 335}
!351 = metadata !{i64 336}
!352 = metadata !{i64 337}
!353 = metadata !{i64 338}
!354 = metadata !{i64 339}
!355 = metadata !{i64 340}
!356 = metadata !{i64 341}
!357 = metadata !{i64 342}
!358 = metadata !{i64 343}
!359 = metadata !{i64 344}
