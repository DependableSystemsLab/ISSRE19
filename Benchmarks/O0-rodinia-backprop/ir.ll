; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/rodinia-backprop/fault injection/llfi-O0/backprop.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.BPNN = type { i32, i32, i32, float*, float*, float*, float*, float*, float*, float**, float**, float**, float** }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"ALLOC_1D_DBL: Couldn't allocate array of floats\0A\00", align 1
@.str1 = private unnamed_addr constant [51 x i8] c"ALLOC_2D_DBL: Couldn't allocate array of dbl ptrs\0A\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"Random number generator seed: %d\0A\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"BPNN_CREATE: Couldn't allocate neural network\0A\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str5 = private unnamed_addr constant [33 x i8] c"Saving %dx%dx%d network to '%s'\0A\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"Reading '%s'\0A\00", align 1
@.str7 = private unnamed_addr constant [34 x i8] c"'%s' contains a %dx%dx%d network\0A\00", align 1
@.str8 = private unnamed_addr constant [25 x i8] c"Reading input weights...\00", align 1
@.str9 = private unnamed_addr constant [31 x i8] c"Done\0AReading hidden weights...\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"Done\0A\00", align 1
@.str11 = private unnamed_addr constant [28 x i8] c"Performing CPU computation\0A\00", align 1
@layer_size = global i32 0, align 4
@.str12 = private unnamed_addr constant [23 x i8] c"Input layer size : %d\0A\00", align 1
@.str113 = private unnamed_addr constant [26 x i8] c"Starting training kernel\0A\00", align 1
@.str214 = private unnamed_addr constant [15 x i8] c"Training done\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str315 = private unnamed_addr constant [41 x i8] c"usage: backprop <num of input elements>\0A\00", align 1

; Function Attrs: nounwind uwtable
define float @drnd() #0 {
  %1 = call i32 @rand() #5, !llfi_index !1
  %2 = sitofp i32 %1 to float, !llfi_index !2
  %3 = fdiv float %2, 0x41E0000000000000, !llfi_index !3
  ret float %3, !llfi_index !4
}

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: nounwind uwtable
define float @dpn1() #0 {
  %1 = call float @drnd(), !llfi_index !5
  %2 = fpext float %1 to double, !llfi_index !6
  %3 = fmul double %2, 2.000000e+00, !llfi_index !7
  %4 = fsub double %3, 1.000000e+00, !llfi_index !8
  %5 = fptrunc double %4 to float, !llfi_index !9
  ret float %5, !llfi_index !10
}

; Function Attrs: nounwind uwtable
define float @squash(double) #0 {
  %2 = alloca float, align 4, !llfi_index !11
  %m = alloca float, align 4, !llfi_index !12
  %x = fptrunc double %0 to float, !llfi_index !13
  store float %x, float* %2, align 4, !llfi_index !14
  %3 = load float* %2, align 4, !llfi_index !15
  %4 = fsub float -0.000000e+00, %3, !llfi_index !16
  %5 = fpext float %4 to double, !llfi_index !17
  %6 = call double @exp(double %5) #5, !llfi_index !18
  %7 = fadd double 1.000000e+00, %6, !llfi_index !19
  %8 = fdiv double 1.000000e+00, %7, !llfi_index !20
  %9 = fptrunc double %8 to float, !llfi_index !21
  ret float %9, !llfi_index !22
}

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: nounwind uwtable
define float* @alloc_1d_dbl(i32 %n) #0 {
  %1 = alloca float*, align 8, !llfi_index !23
  %2 = alloca i32, align 4, !llfi_index !24
  %new = alloca float*, align 8, !llfi_index !25
  store i32 %n, i32* %2, align 4, !llfi_index !26
  %3 = load i32* %2, align 4, !llfi_index !27
  %4 = sext i32 %3 to i64, !llfi_index !28
  %5 = mul i64 %4, 4, !llfi_index !29
  %6 = trunc i64 %5 to i32, !llfi_index !30
  %7 = zext i32 %6 to i64, !llfi_index !31
  %8 = call noalias i8* @malloc(i64 %7) #5, !llfi_index !32
  %9 = bitcast i8* %8 to float*, !llfi_index !33
  store float* %9, float** %new, align 8, !llfi_index !34
  %10 = load float** %new, align 8, !llfi_index !35
  %11 = icmp eq float* %10, null, !llfi_index !36
  br i1 %11, label %12, label %14, !llfi_index !37

; <label>:12                                      ; preds = %0
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str, i32 0, i32 0)), !llfi_index !38
  store float* null, float** %1, !llfi_index !39
  br label %16, !llfi_index !40

; <label>:14                                      ; preds = %0
  %15 = load float** %new, align 8, !llfi_index !41
  store float* %15, float** %1, !llfi_index !42
  br label %16, !llfi_index !43

; <label>:16                                      ; preds = %14, %12
  %17 = load float** %1, !llfi_index !44
  ret float* %17, !llfi_index !45
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define float** @alloc_2d_dbl(i32 %m, i32 %n) #0 {
  %1 = alloca float**, align 8, !llfi_index !46
  %2 = alloca i32, align 4, !llfi_index !47
  %3 = alloca i32, align 4, !llfi_index !48
  %i = alloca i32, align 4, !llfi_index !49
  %new = alloca float**, align 8, !llfi_index !50
  store i32 %m, i32* %2, align 4, !llfi_index !51
  store i32 %n, i32* %3, align 4, !llfi_index !52
  %4 = load i32* %2, align 4, !llfi_index !53
  %5 = sext i32 %4 to i64, !llfi_index !54
  %6 = mul i64 %5, 8, !llfi_index !55
  %7 = trunc i64 %6 to i32, !llfi_index !56
  %8 = zext i32 %7 to i64, !llfi_index !57
  %9 = call noalias i8* @malloc(i64 %8) #5, !llfi_index !58
  %10 = bitcast i8* %9 to float**, !llfi_index !59
  store float** %10, float*** %new, align 8, !llfi_index !60
  %11 = load float*** %new, align 8, !llfi_index !61
  %12 = icmp eq float** %11, null, !llfi_index !62
  br i1 %12, label %13, label %15, !llfi_index !63

; <label>:13                                      ; preds = %0
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str1, i32 0, i32 0)), !llfi_index !64
  store float** null, float*** %1, !llfi_index !65
  br label %32, !llfi_index !66

; <label>:15                                      ; preds = %0
  store i32 0, i32* %i, align 4, !llfi_index !67
  br label %16, !llfi_index !68

; <label>:16                                      ; preds = %27, %15
  %17 = load i32* %i, align 4, !llfi_index !69
  %18 = load i32* %2, align 4, !llfi_index !70
  %19 = icmp slt i32 %17, %18, !llfi_index !71
  br i1 %19, label %20, label %30, !llfi_index !72

; <label>:20                                      ; preds = %16
  %21 = load i32* %3, align 4, !llfi_index !73
  %22 = call float* @alloc_1d_dbl(i32 %21), !llfi_index !74
  %23 = load i32* %i, align 4, !llfi_index !75
  %24 = sext i32 %23 to i64, !llfi_index !76
  %25 = load float*** %new, align 8, !llfi_index !77
  %26 = getelementptr inbounds float** %25, i64 %24, !llfi_index !78
  store float* %22, float** %26, align 8, !llfi_index !79
  br label %27, !llfi_index !80

; <label>:27                                      ; preds = %20
  %28 = load i32* %i, align 4, !llfi_index !81
  %29 = add nsw i32 %28, 1, !llfi_index !82
  store i32 %29, i32* %i, align 4, !llfi_index !83
  br label %16, !llfi_index !84

; <label>:30                                      ; preds = %16
  %31 = load float*** %new, align 8, !llfi_index !85
  store float** %31, float*** %1, !llfi_index !86
  br label %32, !llfi_index !87

; <label>:32                                      ; preds = %30, %13
  %33 = load float*** %1, !llfi_index !88
  ret float** %33, !llfi_index !89
}

; Function Attrs: nounwind uwtable
define i32 @bpnn_randomize_weights(float** %w, i32 %m, i32 %n) #0 {
  %1 = alloca i32, align 4, !llfi_index !90
  %2 = alloca float**, align 8, !llfi_index !91
  %3 = alloca i32, align 4, !llfi_index !92
  %4 = alloca i32, align 4, !llfi_index !93
  %i = alloca i32, align 4, !llfi_index !94
  %j = alloca i32, align 4, !llfi_index !95
  store float** %w, float*** %2, align 8, !llfi_index !96
  store i32 %m, i32* %3, align 4, !llfi_index !97
  store i32 %n, i32* %4, align 4, !llfi_index !98
  store i32 0, i32* %i, align 4, !llfi_index !99
  br label %5, !llfi_index !100

; <label>:5                                       ; preds = %30, %0
  %6 = load i32* %i, align 4, !llfi_index !101
  %7 = load i32* %3, align 4, !llfi_index !102
  %8 = icmp sle i32 %6, %7, !llfi_index !103
  br i1 %8, label %9, label %33, !llfi_index !104

; <label>:9                                       ; preds = %5
  store i32 0, i32* %j, align 4, !llfi_index !105
  br label %10, !llfi_index !106

; <label>:10                                      ; preds = %26, %9
  %11 = load i32* %j, align 4, !llfi_index !107
  %12 = load i32* %4, align 4, !llfi_index !108
  %13 = icmp sle i32 %11, %12, !llfi_index !109
  br i1 %13, label %14, label %29, !llfi_index !110

; <label>:14                                      ; preds = %10
  %15 = call i32 @rand() #5, !llfi_index !111
  %16 = sitofp i32 %15 to float, !llfi_index !112
  %17 = fdiv float %16, 0x41E0000000000000, !llfi_index !113
  %18 = load i32* %j, align 4, !llfi_index !114
  %19 = sext i32 %18 to i64, !llfi_index !115
  %20 = load i32* %i, align 4, !llfi_index !116
  %21 = sext i32 %20 to i64, !llfi_index !117
  %22 = load float*** %2, align 8, !llfi_index !118
  %23 = getelementptr inbounds float** %22, i64 %21, !llfi_index !119
  %24 = load float** %23, align 8, !llfi_index !120
  %25 = getelementptr inbounds float* %24, i64 %19, !llfi_index !121
  store float %17, float* %25, align 4, !llfi_index !122
  br label %26, !llfi_index !123

; <label>:26                                      ; preds = %14
  %27 = load i32* %j, align 4, !llfi_index !124
  %28 = add nsw i32 %27, 1, !llfi_index !125
  store i32 %28, i32* %j, align 4, !llfi_index !126
  br label %10, !llfi_index !127

; <label>:29                                      ; preds = %10
  br label %30, !llfi_index !128

; <label>:30                                      ; preds = %29
  %31 = load i32* %i, align 4, !llfi_index !129
  %32 = add nsw i32 %31, 1, !llfi_index !130
  store i32 %32, i32* %i, align 4, !llfi_index !131
  br label %5, !llfi_index !132

; <label>:33                                      ; preds = %5
  %34 = load i32* %1, !llfi_index !133
  ret i32 %34, !llfi_index !134
}

; Function Attrs: nounwind uwtable
define i32 @bpnn_randomize_row(float* %w, i32 %m) #0 {
  %1 = alloca i32, align 4, !llfi_index !135
  %2 = alloca float*, align 8, !llfi_index !136
  %3 = alloca i32, align 4, !llfi_index !137
  %i = alloca i32, align 4, !llfi_index !138
  store float* %w, float** %2, align 8, !llfi_index !139
  store i32 %m, i32* %3, align 4, !llfi_index !140
  store i32 0, i32* %i, align 4, !llfi_index !141
  br label %4, !llfi_index !142

; <label>:4                                       ; preds = %13, %0
  %5 = load i32* %i, align 4, !llfi_index !143
  %6 = load i32* %3, align 4, !llfi_index !144
  %7 = icmp sle i32 %5, %6, !llfi_index !145
  br i1 %7, label %8, label %16, !llfi_index !146

; <label>:8                                       ; preds = %4
  %9 = load i32* %i, align 4, !llfi_index !147
  %10 = sext i32 %9 to i64, !llfi_index !148
  %11 = load float** %2, align 8, !llfi_index !149
  %12 = getelementptr inbounds float* %11, i64 %10, !llfi_index !150
  store float 0x3FB99999A0000000, float* %12, align 4, !llfi_index !151
  br label %13, !llfi_index !152

; <label>:13                                      ; preds = %8
  %14 = load i32* %i, align 4, !llfi_index !153
  %15 = add nsw i32 %14, 1, !llfi_index !154
  store i32 %15, i32* %i, align 4, !llfi_index !155
  br label %4, !llfi_index !156

; <label>:16                                      ; preds = %4
  %17 = load i32* %1, !llfi_index !157
  ret i32 %17, !llfi_index !158
}

; Function Attrs: nounwind uwtable
define i32 @bpnn_zero_weights(float** %w, i32 %m, i32 %n) #0 {
  %1 = alloca i32, align 4, !llfi_index !159
  %2 = alloca float**, align 8, !llfi_index !160
  %3 = alloca i32, align 4, !llfi_index !161
  %4 = alloca i32, align 4, !llfi_index !162
  %i = alloca i32, align 4, !llfi_index !163
  %j = alloca i32, align 4, !llfi_index !164
  store float** %w, float*** %2, align 8, !llfi_index !165
  store i32 %m, i32* %3, align 4, !llfi_index !166
  store i32 %n, i32* %4, align 4, !llfi_index !167
  store i32 0, i32* %i, align 4, !llfi_index !168
  br label %5, !llfi_index !169

; <label>:5                                       ; preds = %27, %0
  %6 = load i32* %i, align 4, !llfi_index !170
  %7 = load i32* %3, align 4, !llfi_index !171
  %8 = icmp sle i32 %6, %7, !llfi_index !172
  br i1 %8, label %9, label %30, !llfi_index !173

; <label>:9                                       ; preds = %5
  store i32 0, i32* %j, align 4, !llfi_index !174
  br label %10, !llfi_index !175

; <label>:10                                      ; preds = %23, %9
  %11 = load i32* %j, align 4, !llfi_index !176
  %12 = load i32* %4, align 4, !llfi_index !177
  %13 = icmp sle i32 %11, %12, !llfi_index !178
  br i1 %13, label %14, label %26, !llfi_index !179

; <label>:14                                      ; preds = %10
  %15 = load i32* %j, align 4, !llfi_index !180
  %16 = sext i32 %15 to i64, !llfi_index !181
  %17 = load i32* %i, align 4, !llfi_index !182
  %18 = sext i32 %17 to i64, !llfi_index !183
  %19 = load float*** %2, align 8, !llfi_index !184
  %20 = getelementptr inbounds float** %19, i64 %18, !llfi_index !185
  %21 = load float** %20, align 8, !llfi_index !186
  %22 = getelementptr inbounds float* %21, i64 %16, !llfi_index !187
  store float 0.000000e+00, float* %22, align 4, !llfi_index !188
  br label %23, !llfi_index !189

; <label>:23                                      ; preds = %14
  %24 = load i32* %j, align 4, !llfi_index !190
  %25 = add nsw i32 %24, 1, !llfi_index !191
  store i32 %25, i32* %j, align 4, !llfi_index !192
  br label %10, !llfi_index !193

; <label>:26                                      ; preds = %10
  br label %27, !llfi_index !194

; <label>:27                                      ; preds = %26
  %28 = load i32* %i, align 4, !llfi_index !195
  %29 = add nsw i32 %28, 1, !llfi_index !196
  store i32 %29, i32* %i, align 4, !llfi_index !197
  br label %5, !llfi_index !198

; <label>:30                                      ; preds = %5
  %31 = load i32* %1, !llfi_index !199
  ret i32 %31, !llfi_index !200
}

; Function Attrs: nounwind uwtable
define void @bpnn_initialize(i32 %seed) #0 {
  %1 = alloca i32, align 4, !llfi_index !201
  store i32 %seed, i32* %1, align 4, !llfi_index !202
  %2 = load i32* %1, align 4, !llfi_index !203
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str2, i32 0, i32 0), i32 %2), !llfi_index !204
  %4 = load i32* %1, align 4, !llfi_index !205
  call void @srand(i32 %4) #5, !llfi_index !206
  ret void, !llfi_index !207
}

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind uwtable
define %struct.BPNN* @bpnn_internal_create(i32 %n_in, i32 %n_hidden, i32 %n_out) #0 {
  %1 = alloca %struct.BPNN*, align 8, !llfi_index !208
  %2 = alloca i32, align 4, !llfi_index !209
  %3 = alloca i32, align 4, !llfi_index !210
  %4 = alloca i32, align 4, !llfi_index !211
  %newnet = alloca %struct.BPNN*, align 8, !llfi_index !212
  store i32 %n_in, i32* %2, align 4, !llfi_index !213
  store i32 %n_hidden, i32* %3, align 4, !llfi_index !214
  store i32 %n_out, i32* %4, align 4, !llfi_index !215
  %5 = call noalias i8* @malloc(i64 96) #5, !llfi_index !216
  %6 = bitcast i8* %5 to %struct.BPNN*, !llfi_index !217
  store %struct.BPNN* %6, %struct.BPNN** %newnet, align 8, !llfi_index !218
  %7 = load %struct.BPNN** %newnet, align 8, !llfi_index !219
  %8 = icmp eq %struct.BPNN* %7, null, !llfi_index !220
  br i1 %8, label %9, label %11, !llfi_index !221

; <label>:9                                       ; preds = %0
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([47 x i8]* @.str3, i32 0, i32 0)), !llfi_index !222
  store %struct.BPNN* null, %struct.BPNN** %1, !llfi_index !223
  br label %80, !llfi_index !224

; <label>:11                                      ; preds = %0
  %12 = load i32* %2, align 4, !llfi_index !225
  %13 = load %struct.BPNN** %newnet, align 8, !llfi_index !226
  %14 = getelementptr inbounds %struct.BPNN* %13, i32 0, i32 0, !llfi_index !227
  store i32 %12, i32* %14, align 4, !llfi_index !228
  %15 = load i32* %3, align 4, !llfi_index !229
  %16 = load %struct.BPNN** %newnet, align 8, !llfi_index !230
  %17 = getelementptr inbounds %struct.BPNN* %16, i32 0, i32 1, !llfi_index !231
  store i32 %15, i32* %17, align 4, !llfi_index !232
  %18 = load i32* %4, align 4, !llfi_index !233
  %19 = load %struct.BPNN** %newnet, align 8, !llfi_index !234
  %20 = getelementptr inbounds %struct.BPNN* %19, i32 0, i32 2, !llfi_index !235
  store i32 %18, i32* %20, align 4, !llfi_index !236
  %21 = load i32* %2, align 4, !llfi_index !237
  %22 = add nsw i32 %21, 1, !llfi_index !238
  %23 = call float* @alloc_1d_dbl(i32 %22), !llfi_index !239
  %24 = load %struct.BPNN** %newnet, align 8, !llfi_index !240
  %25 = getelementptr inbounds %struct.BPNN* %24, i32 0, i32 3, !llfi_index !241
  store float* %23, float** %25, align 8, !llfi_index !242
  %26 = load i32* %3, align 4, !llfi_index !243
  %27 = add nsw i32 %26, 1, !llfi_index !244
  %28 = call float* @alloc_1d_dbl(i32 %27), !llfi_index !245
  %29 = load %struct.BPNN** %newnet, align 8, !llfi_index !246
  %30 = getelementptr inbounds %struct.BPNN* %29, i32 0, i32 4, !llfi_index !247
  store float* %28, float** %30, align 8, !llfi_index !248
  %31 = load i32* %4, align 4, !llfi_index !249
  %32 = add nsw i32 %31, 1, !llfi_index !250
  %33 = call float* @alloc_1d_dbl(i32 %32), !llfi_index !251
  %34 = load %struct.BPNN** %newnet, align 8, !llfi_index !252
  %35 = getelementptr inbounds %struct.BPNN* %34, i32 0, i32 5, !llfi_index !253
  store float* %33, float** %35, align 8, !llfi_index !254
  %36 = load i32* %3, align 4, !llfi_index !255
  %37 = add nsw i32 %36, 1, !llfi_index !256
  %38 = call float* @alloc_1d_dbl(i32 %37), !llfi_index !257
  %39 = load %struct.BPNN** %newnet, align 8, !llfi_index !258
  %40 = getelementptr inbounds %struct.BPNN* %39, i32 0, i32 6, !llfi_index !259
  store float* %38, float** %40, align 8, !llfi_index !260
  %41 = load i32* %4, align 4, !llfi_index !261
  %42 = add nsw i32 %41, 1, !llfi_index !262
  %43 = call float* @alloc_1d_dbl(i32 %42), !llfi_index !263
  %44 = load %struct.BPNN** %newnet, align 8, !llfi_index !264
  %45 = getelementptr inbounds %struct.BPNN* %44, i32 0, i32 7, !llfi_index !265
  store float* %43, float** %45, align 8, !llfi_index !266
  %46 = load i32* %4, align 4, !llfi_index !267
  %47 = add nsw i32 %46, 1, !llfi_index !268
  %48 = call float* @alloc_1d_dbl(i32 %47), !llfi_index !269
  %49 = load %struct.BPNN** %newnet, align 8, !llfi_index !270
  %50 = getelementptr inbounds %struct.BPNN* %49, i32 0, i32 8, !llfi_index !271
  store float* %48, float** %50, align 8, !llfi_index !272
  %51 = load i32* %2, align 4, !llfi_index !273
  %52 = add nsw i32 %51, 1, !llfi_index !274
  %53 = load i32* %3, align 4, !llfi_index !275
  %54 = add nsw i32 %53, 1, !llfi_index !276
  %55 = call float** @alloc_2d_dbl(i32 %52, i32 %54), !llfi_index !277
  %56 = load %struct.BPNN** %newnet, align 8, !llfi_index !278
  %57 = getelementptr inbounds %struct.BPNN* %56, i32 0, i32 9, !llfi_index !279
  store float** %55, float*** %57, align 8, !llfi_index !280
  %58 = load i32* %3, align 4, !llfi_index !281
  %59 = add nsw i32 %58, 1, !llfi_index !282
  %60 = load i32* %4, align 4, !llfi_index !283
  %61 = add nsw i32 %60, 1, !llfi_index !284
  %62 = call float** @alloc_2d_dbl(i32 %59, i32 %61), !llfi_index !285
  %63 = load %struct.BPNN** %newnet, align 8, !llfi_index !286
  %64 = getelementptr inbounds %struct.BPNN* %63, i32 0, i32 10, !llfi_index !287
  store float** %62, float*** %64, align 8, !llfi_index !288
  %65 = load i32* %2, align 4, !llfi_index !289
  %66 = add nsw i32 %65, 1, !llfi_index !290
  %67 = load i32* %3, align 4, !llfi_index !291
  %68 = add nsw i32 %67, 1, !llfi_index !292
  %69 = call float** @alloc_2d_dbl(i32 %66, i32 %68), !llfi_index !293
  %70 = load %struct.BPNN** %newnet, align 8, !llfi_index !294
  %71 = getelementptr inbounds %struct.BPNN* %70, i32 0, i32 11, !llfi_index !295
  store float** %69, float*** %71, align 8, !llfi_index !296
  %72 = load i32* %3, align 4, !llfi_index !297
  %73 = add nsw i32 %72, 1, !llfi_index !298
  %74 = load i32* %4, align 4, !llfi_index !299
  %75 = add nsw i32 %74, 1, !llfi_index !300
  %76 = call float** @alloc_2d_dbl(i32 %73, i32 %75), !llfi_index !301
  %77 = load %struct.BPNN** %newnet, align 8, !llfi_index !302
  %78 = getelementptr inbounds %struct.BPNN* %77, i32 0, i32 12, !llfi_index !303
  store float** %76, float*** %78, align 8, !llfi_index !304
  %79 = load %struct.BPNN** %newnet, align 8, !llfi_index !305
  store %struct.BPNN* %79, %struct.BPNN** %1, !llfi_index !306
  br label %80, !llfi_index !307

; <label>:80                                      ; preds = %11, %9
  %81 = load %struct.BPNN** %1, !llfi_index !308
  ret %struct.BPNN* %81, !llfi_index !309
}

; Function Attrs: nounwind uwtable
define void @bpnn_free(%struct.BPNN* %net) #0 {
  %1 = alloca %struct.BPNN*, align 8, !llfi_index !310
  %n1 = alloca i32, align 4, !llfi_index !311
  %n2 = alloca i32, align 4, !llfi_index !312
  %i = alloca i32, align 4, !llfi_index !313
  store %struct.BPNN* %net, %struct.BPNN** %1, align 8, !llfi_index !314
  %2 = load %struct.BPNN** %1, align 8, !llfi_index !315
  %3 = getelementptr inbounds %struct.BPNN* %2, i32 0, i32 0, !llfi_index !316
  %4 = load i32* %3, align 4, !llfi_index !317
  store i32 %4, i32* %n1, align 4, !llfi_index !318
  %5 = load %struct.BPNN** %1, align 8, !llfi_index !319
  %6 = getelementptr inbounds %struct.BPNN* %5, i32 0, i32 1, !llfi_index !320
  %7 = load i32* %6, align 4, !llfi_index !321
  store i32 %7, i32* %n2, align 4, !llfi_index !322
  %8 = load %struct.BPNN** %1, align 8, !llfi_index !323
  %9 = getelementptr inbounds %struct.BPNN* %8, i32 0, i32 3, !llfi_index !324
  %10 = load float** %9, align 8, !llfi_index !325
  %11 = bitcast float* %10 to i8*, !llfi_index !326
  call void @free(i8* %11) #5, !llfi_index !327
  %12 = load %struct.BPNN** %1, align 8, !llfi_index !328
  %13 = getelementptr inbounds %struct.BPNN* %12, i32 0, i32 4, !llfi_index !329
  %14 = load float** %13, align 8, !llfi_index !330
  %15 = bitcast float* %14 to i8*, !llfi_index !331
  call void @free(i8* %15) #5, !llfi_index !332
  %16 = load %struct.BPNN** %1, align 8, !llfi_index !333
  %17 = getelementptr inbounds %struct.BPNN* %16, i32 0, i32 5, !llfi_index !334
  %18 = load float** %17, align 8, !llfi_index !335
  %19 = bitcast float* %18 to i8*, !llfi_index !336
  call void @free(i8* %19) #5, !llfi_index !337
  %20 = load %struct.BPNN** %1, align 8, !llfi_index !338
  %21 = getelementptr inbounds %struct.BPNN* %20, i32 0, i32 6, !llfi_index !339
  %22 = load float** %21, align 8, !llfi_index !340
  %23 = bitcast float* %22 to i8*, !llfi_index !341
  call void @free(i8* %23) #5, !llfi_index !342
  %24 = load %struct.BPNN** %1, align 8, !llfi_index !343
  %25 = getelementptr inbounds %struct.BPNN* %24, i32 0, i32 7, !llfi_index !344
  %26 = load float** %25, align 8, !llfi_index !345
  %27 = bitcast float* %26 to i8*, !llfi_index !346
  call void @free(i8* %27) #5, !llfi_index !347
  %28 = load %struct.BPNN** %1, align 8, !llfi_index !348
  %29 = getelementptr inbounds %struct.BPNN* %28, i32 0, i32 8, !llfi_index !349
  %30 = load float** %29, align 8, !llfi_index !350
  %31 = bitcast float* %30 to i8*, !llfi_index !351
  call void @free(i8* %31) #5, !llfi_index !352
  store i32 0, i32* %i, align 4, !llfi_index !353
  br label %32, !llfi_index !354

; <label>:32                                      ; preds = %53, %0
  %33 = load i32* %i, align 4, !llfi_index !355
  %34 = load i32* %n1, align 4, !llfi_index !356
  %35 = icmp sle i32 %33, %34, !llfi_index !357
  br i1 %35, label %36, label %56, !llfi_index !358

; <label>:36                                      ; preds = %32
  %37 = load i32* %i, align 4, !llfi_index !359
  %38 = sext i32 %37 to i64, !llfi_index !360
  %39 = load %struct.BPNN** %1, align 8, !llfi_index !361
  %40 = getelementptr inbounds %struct.BPNN* %39, i32 0, i32 9, !llfi_index !362
  %41 = load float*** %40, align 8, !llfi_index !363
  %42 = getelementptr inbounds float** %41, i64 %38, !llfi_index !364
  %43 = load float** %42, align 8, !llfi_index !365
  %44 = bitcast float* %43 to i8*, !llfi_index !366
  call void @free(i8* %44) #5, !llfi_index !367
  %45 = load i32* %i, align 4, !llfi_index !368
  %46 = sext i32 %45 to i64, !llfi_index !369
  %47 = load %struct.BPNN** %1, align 8, !llfi_index !370
  %48 = getelementptr inbounds %struct.BPNN* %47, i32 0, i32 11, !llfi_index !371
  %49 = load float*** %48, align 8, !llfi_index !372
  %50 = getelementptr inbounds float** %49, i64 %46, !llfi_index !373
  %51 = load float** %50, align 8, !llfi_index !374
  %52 = bitcast float* %51 to i8*, !llfi_index !375
  call void @free(i8* %52) #5, !llfi_index !376
  br label %53, !llfi_index !377

; <label>:53                                      ; preds = %36
  %54 = load i32* %i, align 4, !llfi_index !378
  %55 = add nsw i32 %54, 1, !llfi_index !379
  store i32 %55, i32* %i, align 4, !llfi_index !380
  br label %32, !llfi_index !381

; <label>:56                                      ; preds = %32
  %57 = load %struct.BPNN** %1, align 8, !llfi_index !382
  %58 = getelementptr inbounds %struct.BPNN* %57, i32 0, i32 9, !llfi_index !383
  %59 = load float*** %58, align 8, !llfi_index !384
  %60 = bitcast float** %59 to i8*, !llfi_index !385
  call void @free(i8* %60) #5, !llfi_index !386
  %61 = load %struct.BPNN** %1, align 8, !llfi_index !387
  %62 = getelementptr inbounds %struct.BPNN* %61, i32 0, i32 11, !llfi_index !388
  %63 = load float*** %62, align 8, !llfi_index !389
  %64 = bitcast float** %63 to i8*, !llfi_index !390
  call void @free(i8* %64) #5, !llfi_index !391
  store i32 0, i32* %i, align 4, !llfi_index !392
  br label %65, !llfi_index !393

; <label>:65                                      ; preds = %86, %56
  %66 = load i32* %i, align 4, !llfi_index !394
  %67 = load i32* %n2, align 4, !llfi_index !395
  %68 = icmp sle i32 %66, %67, !llfi_index !396
  br i1 %68, label %69, label %89, !llfi_index !397

; <label>:69                                      ; preds = %65
  %70 = load i32* %i, align 4, !llfi_index !398
  %71 = sext i32 %70 to i64, !llfi_index !399
  %72 = load %struct.BPNN** %1, align 8, !llfi_index !400
  %73 = getelementptr inbounds %struct.BPNN* %72, i32 0, i32 10, !llfi_index !401
  %74 = load float*** %73, align 8, !llfi_index !402
  %75 = getelementptr inbounds float** %74, i64 %71, !llfi_index !403
  %76 = load float** %75, align 8, !llfi_index !404
  %77 = bitcast float* %76 to i8*, !llfi_index !405
  call void @free(i8* %77) #5, !llfi_index !406
  %78 = load i32* %i, align 4, !llfi_index !407
  %79 = sext i32 %78 to i64, !llfi_index !408
  %80 = load %struct.BPNN** %1, align 8, !llfi_index !409
  %81 = getelementptr inbounds %struct.BPNN* %80, i32 0, i32 12, !llfi_index !410
  %82 = load float*** %81, align 8, !llfi_index !411
  %83 = getelementptr inbounds float** %82, i64 %79, !llfi_index !412
  %84 = load float** %83, align 8, !llfi_index !413
  %85 = bitcast float* %84 to i8*, !llfi_index !414
  call void @free(i8* %85) #5, !llfi_index !415
  br label %86, !llfi_index !416

; <label>:86                                      ; preds = %69
  %87 = load i32* %i, align 4, !llfi_index !417
  %88 = add nsw i32 %87, 1, !llfi_index !418
  store i32 %88, i32* %i, align 4, !llfi_index !419
  br label %65, !llfi_index !420

; <label>:89                                      ; preds = %65
  %90 = load %struct.BPNN** %1, align 8, !llfi_index !421
  %91 = getelementptr inbounds %struct.BPNN* %90, i32 0, i32 10, !llfi_index !422
  %92 = load float*** %91, align 8, !llfi_index !423
  %93 = bitcast float** %92 to i8*, !llfi_index !424
  call void @free(i8* %93) #5, !llfi_index !425
  %94 = load %struct.BPNN** %1, align 8, !llfi_index !426
  %95 = getelementptr inbounds %struct.BPNN* %94, i32 0, i32 12, !llfi_index !427
  %96 = load float*** %95, align 8, !llfi_index !428
  %97 = bitcast float** %96 to i8*, !llfi_index !429
  call void @free(i8* %97) #5, !llfi_index !430
  %98 = load %struct.BPNN** %1, align 8, !llfi_index !431
  %99 = bitcast %struct.BPNN* %98 to i8*, !llfi_index !432
  call void @free(i8* %99) #5, !llfi_index !433
  ret void, !llfi_index !434
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.BPNN* @bpnn_create(i32 %n_in, i32 %n_hidden, i32 %n_out) #0 {
  %1 = alloca i32, align 4, !llfi_index !435
  %2 = alloca i32, align 4, !llfi_index !436
  %3 = alloca i32, align 4, !llfi_index !437
  %newnet = alloca %struct.BPNN*, align 8, !llfi_index !438
  store i32 %n_in, i32* %1, align 4, !llfi_index !439
  store i32 %n_hidden, i32* %2, align 4, !llfi_index !440
  store i32 %n_out, i32* %3, align 4, !llfi_index !441
  %4 = load i32* %1, align 4, !llfi_index !442
  %5 = load i32* %2, align 4, !llfi_index !443
  %6 = load i32* %3, align 4, !llfi_index !444
  %7 = call %struct.BPNN* @bpnn_internal_create(i32 %4, i32 %5, i32 %6), !llfi_index !445
  store %struct.BPNN* %7, %struct.BPNN** %newnet, align 8, !llfi_index !446
  %8 = load %struct.BPNN** %newnet, align 8, !llfi_index !447
  %9 = getelementptr inbounds %struct.BPNN* %8, i32 0, i32 9, !llfi_index !448
  %10 = load float*** %9, align 8, !llfi_index !449
  %11 = load i32* %1, align 4, !llfi_index !450
  %12 = load i32* %2, align 4, !llfi_index !451
  %13 = call i32 @bpnn_randomize_weights(float** %10, i32 %11, i32 %12), !llfi_index !452
  %14 = load %struct.BPNN** %newnet, align 8, !llfi_index !453
  %15 = getelementptr inbounds %struct.BPNN* %14, i32 0, i32 10, !llfi_index !454
  %16 = load float*** %15, align 8, !llfi_index !455
  %17 = load i32* %2, align 4, !llfi_index !456
  %18 = load i32* %3, align 4, !llfi_index !457
  %19 = call i32 @bpnn_randomize_weights(float** %16, i32 %17, i32 %18), !llfi_index !458
  %20 = load %struct.BPNN** %newnet, align 8, !llfi_index !459
  %21 = getelementptr inbounds %struct.BPNN* %20, i32 0, i32 11, !llfi_index !460
  %22 = load float*** %21, align 8, !llfi_index !461
  %23 = load i32* %1, align 4, !llfi_index !462
  %24 = load i32* %2, align 4, !llfi_index !463
  %25 = call i32 @bpnn_zero_weights(float** %22, i32 %23, i32 %24), !llfi_index !464
  %26 = load %struct.BPNN** %newnet, align 8, !llfi_index !465
  %27 = getelementptr inbounds %struct.BPNN* %26, i32 0, i32 12, !llfi_index !466
  %28 = load float*** %27, align 8, !llfi_index !467
  %29 = load i32* %2, align 4, !llfi_index !468
  %30 = load i32* %3, align 4, !llfi_index !469
  %31 = call i32 @bpnn_zero_weights(float** %28, i32 %29, i32 %30), !llfi_index !470
  %32 = load %struct.BPNN** %newnet, align 8, !llfi_index !471
  %33 = getelementptr inbounds %struct.BPNN* %32, i32 0, i32 8, !llfi_index !472
  %34 = load float** %33, align 8, !llfi_index !473
  %35 = load i32* %3, align 4, !llfi_index !474
  %36 = call i32 @bpnn_randomize_row(float* %34, i32 %35), !llfi_index !475
  %37 = load %struct.BPNN** %newnet, align 8, !llfi_index !476
  ret %struct.BPNN* %37, !llfi_index !477
}

; Function Attrs: nounwind uwtable
define void @bpnn_layerforward(float* %l1, float* %l2, float** %conn, i32 %n1, i32 %n2) #0 {
  %1 = alloca float*, align 8, !llfi_index !478
  %2 = alloca float*, align 8, !llfi_index !479
  %3 = alloca float**, align 8, !llfi_index !480
  %4 = alloca i32, align 4, !llfi_index !481
  %5 = alloca i32, align 4, !llfi_index !482
  %sum = alloca float, align 4, !llfi_index !483
  %j = alloca i32, align 4, !llfi_index !484
  %k = alloca i32, align 4, !llfi_index !485
  store float* %l1, float** %1, align 8, !llfi_index !486
  store float* %l2, float** %2, align 8, !llfi_index !487
  store float** %conn, float*** %3, align 8, !llfi_index !488
  store i32 %n1, i32* %4, align 4, !llfi_index !489
  store i32 %n2, i32* %5, align 4, !llfi_index !490
  %6 = load float** %1, align 8, !llfi_index !491
  %7 = getelementptr inbounds float* %6, i64 0, !llfi_index !492
  store float 1.000000e+00, float* %7, align 4, !llfi_index !493
  call void @omp_set_num_threads(i32 1), !llfi_index !494
  store i32 1, i32* %j, align 4, !llfi_index !495
  br label %8, !llfi_index !496

; <label>:8                                       ; preds = %46, %0
  %9 = load i32* %j, align 4, !llfi_index !497
  %10 = load i32* %5, align 4, !llfi_index !498
  %11 = icmp sle i32 %9, %10, !llfi_index !499
  br i1 %11, label %12, label %49, !llfi_index !500

; <label>:12                                      ; preds = %8
  store float 0.000000e+00, float* %sum, align 4, !llfi_index !501
  store i32 0, i32* %k, align 4, !llfi_index !502
  br label %13, !llfi_index !503

; <label>:13                                      ; preds = %35, %12
  %14 = load i32* %k, align 4, !llfi_index !504
  %15 = load i32* %4, align 4, !llfi_index !505
  %16 = icmp sle i32 %14, %15, !llfi_index !506
  br i1 %16, label %17, label %38, !llfi_index !507

; <label>:17                                      ; preds = %13
  %18 = load i32* %j, align 4, !llfi_index !508
  %19 = sext i32 %18 to i64, !llfi_index !509
  %20 = load i32* %k, align 4, !llfi_index !510
  %21 = sext i32 %20 to i64, !llfi_index !511
  %22 = load float*** %3, align 8, !llfi_index !512
  %23 = getelementptr inbounds float** %22, i64 %21, !llfi_index !513
  %24 = load float** %23, align 8, !llfi_index !514
  %25 = getelementptr inbounds float* %24, i64 %19, !llfi_index !515
  %26 = load float* %25, align 4, !llfi_index !516
  %27 = load i32* %k, align 4, !llfi_index !517
  %28 = sext i32 %27 to i64, !llfi_index !518
  %29 = load float** %1, align 8, !llfi_index !519
  %30 = getelementptr inbounds float* %29, i64 %28, !llfi_index !520
  %31 = load float* %30, align 4, !llfi_index !521
  %32 = fmul float %26, %31, !llfi_index !522
  %33 = load float* %sum, align 4, !llfi_index !523
  %34 = fadd float %33, %32, !llfi_index !524
  store float %34, float* %sum, align 4, !llfi_index !525
  br label %35, !llfi_index !526

; <label>:35                                      ; preds = %17
  %36 = load i32* %k, align 4, !llfi_index !527
  %37 = add nsw i32 %36, 1, !llfi_index !528
  store i32 %37, i32* %k, align 4, !llfi_index !529
  br label %13, !llfi_index !530

; <label>:38                                      ; preds = %13
  %39 = load float* %sum, align 4, !llfi_index !531
  %40 = fpext float %39 to double, !llfi_index !532
  %41 = call float @squash(double %40), !llfi_index !533
  %42 = load i32* %j, align 4, !llfi_index !534
  %43 = sext i32 %42 to i64, !llfi_index !535
  %44 = load float** %2, align 8, !llfi_index !536
  %45 = getelementptr inbounds float* %44, i64 %43, !llfi_index !537
  store float %41, float* %45, align 4, !llfi_index !538
  br label %46, !llfi_index !539

; <label>:46                                      ; preds = %38
  %47 = load i32* %j, align 4, !llfi_index !540
  %48 = add nsw i32 %47, 1, !llfi_index !541
  store i32 %48, i32* %j, align 4, !llfi_index !542
  br label %8, !llfi_index !543

; <label>:49                                      ; preds = %8
  ret void, !llfi_index !544
}

declare void @omp_set_num_threads(i32) #2

; Function Attrs: nounwind uwtable
define void @bpnn_output_error(float* %delta, float* %target, float* %output, i32 %nj, float* %err) #0 {
  %1 = alloca float*, align 8, !llfi_index !545
  %2 = alloca float*, align 8, !llfi_index !546
  %3 = alloca float*, align 8, !llfi_index !547
  %4 = alloca i32, align 4, !llfi_index !548
  %5 = alloca float*, align 8, !llfi_index !549
  %j = alloca i32, align 4, !llfi_index !550
  %o = alloca float, align 4, !llfi_index !551
  %t = alloca float, align 4, !llfi_index !552
  %errsum = alloca float, align 4, !llfi_index !553
  store float* %delta, float** %1, align 8, !llfi_index !554
  store float* %target, float** %2, align 8, !llfi_index !555
  store float* %output, float** %3, align 8, !llfi_index !556
  store i32 %nj, i32* %4, align 4, !llfi_index !557
  store float* %err, float** %5, align 8, !llfi_index !558
  store float 0.000000e+00, float* %errsum, align 4, !llfi_index !559
  store i32 1, i32* %j, align 4, !llfi_index !560
  br label %6, !llfi_index !561

; <label>:6                                       ; preds = %61, %0
  %7 = load i32* %j, align 4, !llfi_index !562
  %8 = load i32* %4, align 4, !llfi_index !563
  %9 = icmp sle i32 %7, %8, !llfi_index !564
  br i1 %9, label %10, label %64, !llfi_index !565

; <label>:10                                      ; preds = %6
  %11 = load i32* %j, align 4, !llfi_index !566
  %12 = sext i32 %11 to i64, !llfi_index !567
  %13 = load float** %3, align 8, !llfi_index !568
  %14 = getelementptr inbounds float* %13, i64 %12, !llfi_index !569
  %15 = load float* %14, align 4, !llfi_index !570
  store float %15, float* %o, align 4, !llfi_index !571
  %16 = load i32* %j, align 4, !llfi_index !572
  %17 = sext i32 %16 to i64, !llfi_index !573
  %18 = load float** %2, align 8, !llfi_index !574
  %19 = getelementptr inbounds float* %18, i64 %17, !llfi_index !575
  %20 = load float* %19, align 4, !llfi_index !576
  store float %20, float* %t, align 4, !llfi_index !577
  %21 = load float* %o, align 4, !llfi_index !578
  %22 = fpext float %21 to double, !llfi_index !579
  %23 = load float* %o, align 4, !llfi_index !580
  %24 = fpext float %23 to double, !llfi_index !581
  %25 = fsub double 1.000000e+00, %24, !llfi_index !582
  %26 = fmul double %22, %25, !llfi_index !583
  %27 = load float* %t, align 4, !llfi_index !584
  %28 = load float* %o, align 4, !llfi_index !585
  %29 = fsub float %27, %28, !llfi_index !586
  %30 = fpext float %29 to double, !llfi_index !587
  %31 = fmul double %26, %30, !llfi_index !588
  %32 = fptrunc double %31 to float, !llfi_index !589
  %33 = load i32* %j, align 4, !llfi_index !590
  %34 = sext i32 %33 to i64, !llfi_index !591
  %35 = load float** %1, align 8, !llfi_index !592
  %36 = getelementptr inbounds float* %35, i64 %34, !llfi_index !593
  store float %32, float* %36, align 4, !llfi_index !594
  %37 = load i32* %j, align 4, !llfi_index !595
  %38 = sext i32 %37 to i64, !llfi_index !596
  %39 = load float** %1, align 8, !llfi_index !597
  %40 = getelementptr inbounds float* %39, i64 %38, !llfi_index !598
  %41 = load float* %40, align 4, !llfi_index !599
  %42 = fpext float %41 to double, !llfi_index !600
  %43 = fcmp ogt double %42, 0.000000e+00, !llfi_index !601
  br i1 %43, label %44, label %50, !llfi_index !602

; <label>:44                                      ; preds = %10
  %45 = load i32* %j, align 4, !llfi_index !603
  %46 = sext i32 %45 to i64, !llfi_index !604
  %47 = load float** %1, align 8, !llfi_index !605
  %48 = getelementptr inbounds float* %47, i64 %46, !llfi_index !606
  %49 = load float* %48, align 4, !llfi_index !607
  br label %57, !llfi_index !608

; <label>:50                                      ; preds = %10
  %51 = load i32* %j, align 4, !llfi_index !609
  %52 = sext i32 %51 to i64, !llfi_index !610
  %53 = load float** %1, align 8, !llfi_index !611
  %54 = getelementptr inbounds float* %53, i64 %52, !llfi_index !612
  %55 = load float* %54, align 4, !llfi_index !613
  %56 = fsub float -0.000000e+00, %55, !llfi_index !614
  br label %57, !llfi_index !615

; <label>:57                                      ; preds = %50, %44
  %58 = phi float [ %49, %44 ], [ %56, %50 ], !llfi_index !616
  %59 = load float* %errsum, align 4, !llfi_index !617
  %60 = fadd float %59, %58, !llfi_index !618
  store float %60, float* %errsum, align 4, !llfi_index !619
  br label %61, !llfi_index !620

; <label>:61                                      ; preds = %57
  %62 = load i32* %j, align 4, !llfi_index !621
  %63 = add nsw i32 %62, 1, !llfi_index !622
  store i32 %63, i32* %j, align 4, !llfi_index !623
  br label %6, !llfi_index !624

; <label>:64                                      ; preds = %6
  %65 = load float* %errsum, align 4, !llfi_index !625
  %66 = load float** %5, align 8, !llfi_index !626
  store float %65, float* %66, align 4, !llfi_index !627
  ret void, !llfi_index !628
}

; Function Attrs: nounwind uwtable
define void @bpnn_hidden_error(float* %delta_h, i32 %nh, float* %delta_o, i32 %no, float** %who, float* %hidden, float* %err) #0 {
  %1 = alloca float*, align 8, !llfi_index !629
  %2 = alloca i32, align 4, !llfi_index !630
  %3 = alloca float*, align 8, !llfi_index !631
  %4 = alloca i32, align 4, !llfi_index !632
  %5 = alloca float**, align 8, !llfi_index !633
  %6 = alloca float*, align 8, !llfi_index !634
  %7 = alloca float*, align 8, !llfi_index !635
  %j = alloca i32, align 4, !llfi_index !636
  %k = alloca i32, align 4, !llfi_index !637
  %h = alloca float, align 4, !llfi_index !638
  %sum = alloca float, align 4, !llfi_index !639
  %errsum = alloca float, align 4, !llfi_index !640
  store float* %delta_h, float** %1, align 8, !llfi_index !641
  store i32 %nh, i32* %2, align 4, !llfi_index !642
  store float* %delta_o, float** %3, align 8, !llfi_index !643
  store i32 %no, i32* %4, align 4, !llfi_index !644
  store float** %who, float*** %5, align 8, !llfi_index !645
  store float* %hidden, float** %6, align 8, !llfi_index !646
  store float* %err, float** %7, align 8, !llfi_index !647
  store float 0.000000e+00, float* %errsum, align 4, !llfi_index !648
  store i32 1, i32* %j, align 4, !llfi_index !649
  br label %8, !llfi_index !650

; <label>:8                                       ; preds = %82, %0
  %9 = load i32* %j, align 4, !llfi_index !651
  %10 = load i32* %2, align 4, !llfi_index !652
  %11 = icmp sle i32 %9, %10, !llfi_index !653
  br i1 %11, label %12, label %85, !llfi_index !654

; <label>:12                                      ; preds = %8
  %13 = load i32* %j, align 4, !llfi_index !655
  %14 = sext i32 %13 to i64, !llfi_index !656
  %15 = load float** %6, align 8, !llfi_index !657
  %16 = getelementptr inbounds float* %15, i64 %14, !llfi_index !658
  %17 = load float* %16, align 4, !llfi_index !659
  store float %17, float* %h, align 4, !llfi_index !660
  store float 0.000000e+00, float* %sum, align 4, !llfi_index !661
  store i32 1, i32* %k, align 4, !llfi_index !662
  br label %18, !llfi_index !663

; <label>:18                                      ; preds = %40, %12
  %19 = load i32* %k, align 4, !llfi_index !664
  %20 = load i32* %4, align 4, !llfi_index !665
  %21 = icmp sle i32 %19, %20, !llfi_index !666
  br i1 %21, label %22, label %43, !llfi_index !667

; <label>:22                                      ; preds = %18
  %23 = load i32* %k, align 4, !llfi_index !668
  %24 = sext i32 %23 to i64, !llfi_index !669
  %25 = load float** %3, align 8, !llfi_index !670
  %26 = getelementptr inbounds float* %25, i64 %24, !llfi_index !671
  %27 = load float* %26, align 4, !llfi_index !672
  %28 = load i32* %k, align 4, !llfi_index !673
  %29 = sext i32 %28 to i64, !llfi_index !674
  %30 = load i32* %j, align 4, !llfi_index !675
  %31 = sext i32 %30 to i64, !llfi_index !676
  %32 = load float*** %5, align 8, !llfi_index !677
  %33 = getelementptr inbounds float** %32, i64 %31, !llfi_index !678
  %34 = load float** %33, align 8, !llfi_index !679
  %35 = getelementptr inbounds float* %34, i64 %29, !llfi_index !680
  %36 = load float* %35, align 4, !llfi_index !681
  %37 = fmul float %27, %36, !llfi_index !682
  %38 = load float* %sum, align 4, !llfi_index !683
  %39 = fadd float %38, %37, !llfi_index !684
  store float %39, float* %sum, align 4, !llfi_index !685
  br label %40, !llfi_index !686

; <label>:40                                      ; preds = %22
  %41 = load i32* %k, align 4, !llfi_index !687
  %42 = add nsw i32 %41, 1, !llfi_index !688
  store i32 %42, i32* %k, align 4, !llfi_index !689
  br label %18, !llfi_index !690

; <label>:43                                      ; preds = %18
  %44 = load float* %h, align 4, !llfi_index !691
  %45 = fpext float %44 to double, !llfi_index !692
  %46 = load float* %h, align 4, !llfi_index !693
  %47 = fpext float %46 to double, !llfi_index !694
  %48 = fsub double 1.000000e+00, %47, !llfi_index !695
  %49 = fmul double %45, %48, !llfi_index !696
  %50 = load float* %sum, align 4, !llfi_index !697
  %51 = fpext float %50 to double, !llfi_index !698
  %52 = fmul double %49, %51, !llfi_index !699
  %53 = fptrunc double %52 to float, !llfi_index !700
  %54 = load i32* %j, align 4, !llfi_index !701
  %55 = sext i32 %54 to i64, !llfi_index !702
  %56 = load float** %1, align 8, !llfi_index !703
  %57 = getelementptr inbounds float* %56, i64 %55, !llfi_index !704
  store float %53, float* %57, align 4, !llfi_index !705
  %58 = load i32* %j, align 4, !llfi_index !706
  %59 = sext i32 %58 to i64, !llfi_index !707
  %60 = load float** %1, align 8, !llfi_index !708
  %61 = getelementptr inbounds float* %60, i64 %59, !llfi_index !709
  %62 = load float* %61, align 4, !llfi_index !710
  %63 = fpext float %62 to double, !llfi_index !711
  %64 = fcmp ogt double %63, 0.000000e+00, !llfi_index !712
  br i1 %64, label %65, label %71, !llfi_index !713

; <label>:65                                      ; preds = %43
  %66 = load i32* %j, align 4, !llfi_index !714
  %67 = sext i32 %66 to i64, !llfi_index !715
  %68 = load float** %1, align 8, !llfi_index !716
  %69 = getelementptr inbounds float* %68, i64 %67, !llfi_index !717
  %70 = load float* %69, align 4, !llfi_index !718
  br label %78, !llfi_index !719

; <label>:71                                      ; preds = %43
  %72 = load i32* %j, align 4, !llfi_index !720
  %73 = sext i32 %72 to i64, !llfi_index !721
  %74 = load float** %1, align 8, !llfi_index !722
  %75 = getelementptr inbounds float* %74, i64 %73, !llfi_index !723
  %76 = load float* %75, align 4, !llfi_index !724
  %77 = fsub float -0.000000e+00, %76, !llfi_index !725
  br label %78, !llfi_index !726

; <label>:78                                      ; preds = %71, %65
  %79 = phi float [ %70, %65 ], [ %77, %71 ], !llfi_index !727
  %80 = load float* %errsum, align 4, !llfi_index !728
  %81 = fadd float %80, %79, !llfi_index !729
  store float %81, float* %errsum, align 4, !llfi_index !730
  br label %82, !llfi_index !731

; <label>:82                                      ; preds = %78
  %83 = load i32* %j, align 4, !llfi_index !732
  %84 = add nsw i32 %83, 1, !llfi_index !733
  store i32 %84, i32* %j, align 4, !llfi_index !734
  br label %8, !llfi_index !735

; <label>:85                                      ; preds = %8
  %86 = load float* %errsum, align 4, !llfi_index !736
  %87 = load float** %7, align 8, !llfi_index !737
  store float %86, float* %87, align 4, !llfi_index !738
  ret void, !llfi_index !739
}

; Function Attrs: nounwind uwtable
define void @bpnn_adjust_weights(float* %delta, i32 %ndelta, float* %ly, i32 %nly, float** %w, float** %oldw) #0 {
  %1 = alloca float*, align 8, !llfi_index !740
  %2 = alloca i32, align 4, !llfi_index !741
  %3 = alloca float*, align 8, !llfi_index !742
  %4 = alloca i32, align 4, !llfi_index !743
  %5 = alloca float**, align 8, !llfi_index !744
  %6 = alloca float**, align 8, !llfi_index !745
  %new_dw = alloca float, align 4, !llfi_index !746
  %k = alloca i32, align 4, !llfi_index !747
  %j = alloca i32, align 4, !llfi_index !748
  store float* %delta, float** %1, align 8, !llfi_index !749
  store i32 %ndelta, i32* %2, align 4, !llfi_index !750
  store float* %ly, float** %3, align 8, !llfi_index !751
  store i32 %nly, i32* %4, align 4, !llfi_index !752
  store float** %w, float*** %5, align 8, !llfi_index !753
  store float** %oldw, float*** %6, align 8, !llfi_index !754
  %7 = load float** %3, align 8, !llfi_index !755
  %8 = getelementptr inbounds float* %7, i64 0, !llfi_index !756
  store float 1.000000e+00, float* %8, align 4, !llfi_index !757
  call void @omp_set_num_threads(i32 1), !llfi_index !758
  store i32 1, i32* %j, align 4, !llfi_index !759
  br label %9, !llfi_index !760

; <label>:9                                       ; preds = %70, %0
  %10 = load i32* %j, align 4, !llfi_index !761
  %11 = load i32* %2, align 4, !llfi_index !762
  %12 = icmp sle i32 %10, %11, !llfi_index !763
  br i1 %12, label %13, label %73, !llfi_index !764

; <label>:13                                      ; preds = %9
  store i32 0, i32* %k, align 4, !llfi_index !765
  br label %14, !llfi_index !766

; <label>:14                                      ; preds = %66, %13
  %15 = load i32* %k, align 4, !llfi_index !767
  %16 = load i32* %4, align 4, !llfi_index !768
  %17 = icmp sle i32 %15, %16, !llfi_index !769
  br i1 %17, label %18, label %69, !llfi_index !770

; <label>:18                                      ; preds = %14
  %19 = load i32* %j, align 4, !llfi_index !771
  %20 = sext i32 %19 to i64, !llfi_index !772
  %21 = load float** %1, align 8, !llfi_index !773
  %22 = getelementptr inbounds float* %21, i64 %20, !llfi_index !774
  %23 = load float* %22, align 4, !llfi_index !775
  %24 = fpext float %23 to double, !llfi_index !776
  %25 = fmul double 3.000000e-01, %24, !llfi_index !777
  %26 = load i32* %k, align 4, !llfi_index !778
  %27 = sext i32 %26 to i64, !llfi_index !779
  %28 = load float** %3, align 8, !llfi_index !780
  %29 = getelementptr inbounds float* %28, i64 %27, !llfi_index !781
  %30 = load float* %29, align 4, !llfi_index !782
  %31 = fpext float %30 to double, !llfi_index !783
  %32 = fmul double %25, %31, !llfi_index !784
  %33 = load i32* %j, align 4, !llfi_index !785
  %34 = sext i32 %33 to i64, !llfi_index !786
  %35 = load i32* %k, align 4, !llfi_index !787
  %36 = sext i32 %35 to i64, !llfi_index !788
  %37 = load float*** %6, align 8, !llfi_index !789
  %38 = getelementptr inbounds float** %37, i64 %36, !llfi_index !790
  %39 = load float** %38, align 8, !llfi_index !791
  %40 = getelementptr inbounds float* %39, i64 %34, !llfi_index !792
  %41 = load float* %40, align 4, !llfi_index !793
  %42 = fpext float %41 to double, !llfi_index !794
  %43 = fmul double 3.000000e-01, %42, !llfi_index !795
  %44 = fadd double %32, %43, !llfi_index !796
  %45 = fptrunc double %44 to float, !llfi_index !797
  store float %45, float* %new_dw, align 4, !llfi_index !798
  %46 = load float* %new_dw, align 4, !llfi_index !799
  %47 = load i32* %j, align 4, !llfi_index !800
  %48 = sext i32 %47 to i64, !llfi_index !801
  %49 = load i32* %k, align 4, !llfi_index !802
  %50 = sext i32 %49 to i64, !llfi_index !803
  %51 = load float*** %5, align 8, !llfi_index !804
  %52 = getelementptr inbounds float** %51, i64 %50, !llfi_index !805
  %53 = load float** %52, align 8, !llfi_index !806
  %54 = getelementptr inbounds float* %53, i64 %48, !llfi_index !807
  %55 = load float* %54, align 4, !llfi_index !808
  %56 = fadd float %55, %46, !llfi_index !809
  store float %56, float* %54, align 4, !llfi_index !810
  %57 = load float* %new_dw, align 4, !llfi_index !811
  %58 = load i32* %j, align 4, !llfi_index !812
  %59 = sext i32 %58 to i64, !llfi_index !813
  %60 = load i32* %k, align 4, !llfi_index !814
  %61 = sext i32 %60 to i64, !llfi_index !815
  %62 = load float*** %6, align 8, !llfi_index !816
  %63 = getelementptr inbounds float** %62, i64 %61, !llfi_index !817
  %64 = load float** %63, align 8, !llfi_index !818
  %65 = getelementptr inbounds float* %64, i64 %59, !llfi_index !819
  store float %57, float* %65, align 4, !llfi_index !820
  br label %66, !llfi_index !821

; <label>:66                                      ; preds = %18
  %67 = load i32* %k, align 4, !llfi_index !822
  %68 = add nsw i32 %67, 1, !llfi_index !823
  store i32 %68, i32* %k, align 4, !llfi_index !824
  br label %14, !llfi_index !825

; <label>:69                                      ; preds = %14
  br label %70, !llfi_index !826

; <label>:70                                      ; preds = %69
  %71 = load i32* %j, align 4, !llfi_index !827
  %72 = add nsw i32 %71, 1, !llfi_index !828
  store i32 %72, i32* %j, align 4, !llfi_index !829
  br label %9, !llfi_index !830

; <label>:73                                      ; preds = %9
  ret void, !llfi_index !831
}

; Function Attrs: nounwind uwtable
define void @bpnn_feedforward(%struct.BPNN* %net) #0 {
  %1 = alloca %struct.BPNN*, align 8, !llfi_index !832
  %in = alloca i32, align 4, !llfi_index !833
  %hid = alloca i32, align 4, !llfi_index !834
  %out = alloca i32, align 4, !llfi_index !835
  store %struct.BPNN* %net, %struct.BPNN** %1, align 8, !llfi_index !836
  %2 = load %struct.BPNN** %1, align 8, !llfi_index !837
  %3 = getelementptr inbounds %struct.BPNN* %2, i32 0, i32 0, !llfi_index !838
  %4 = load i32* %3, align 4, !llfi_index !839
  store i32 %4, i32* %in, align 4, !llfi_index !840
  %5 = load %struct.BPNN** %1, align 8, !llfi_index !841
  %6 = getelementptr inbounds %struct.BPNN* %5, i32 0, i32 1, !llfi_index !842
  %7 = load i32* %6, align 4, !llfi_index !843
  store i32 %7, i32* %hid, align 4, !llfi_index !844
  %8 = load %struct.BPNN** %1, align 8, !llfi_index !845
  %9 = getelementptr inbounds %struct.BPNN* %8, i32 0, i32 2, !llfi_index !846
  %10 = load i32* %9, align 4, !llfi_index !847
  store i32 %10, i32* %out, align 4, !llfi_index !848
  %11 = load %struct.BPNN** %1, align 8, !llfi_index !849
  %12 = getelementptr inbounds %struct.BPNN* %11, i32 0, i32 3, !llfi_index !850
  %13 = load float** %12, align 8, !llfi_index !851
  %14 = load %struct.BPNN** %1, align 8, !llfi_index !852
  %15 = getelementptr inbounds %struct.BPNN* %14, i32 0, i32 4, !llfi_index !853
  %16 = load float** %15, align 8, !llfi_index !854
  %17 = load %struct.BPNN** %1, align 8, !llfi_index !855
  %18 = getelementptr inbounds %struct.BPNN* %17, i32 0, i32 9, !llfi_index !856
  %19 = load float*** %18, align 8, !llfi_index !857
  %20 = load i32* %in, align 4, !llfi_index !858
  %21 = load i32* %hid, align 4, !llfi_index !859
  call void @bpnn_layerforward(float* %13, float* %16, float** %19, i32 %20, i32 %21), !llfi_index !860
  %22 = load %struct.BPNN** %1, align 8, !llfi_index !861
  %23 = getelementptr inbounds %struct.BPNN* %22, i32 0, i32 4, !llfi_index !862
  %24 = load float** %23, align 8, !llfi_index !863
  %25 = load %struct.BPNN** %1, align 8, !llfi_index !864
  %26 = getelementptr inbounds %struct.BPNN* %25, i32 0, i32 5, !llfi_index !865
  %27 = load float** %26, align 8, !llfi_index !866
  %28 = load %struct.BPNN** %1, align 8, !llfi_index !867
  %29 = getelementptr inbounds %struct.BPNN* %28, i32 0, i32 10, !llfi_index !868
  %30 = load float*** %29, align 8, !llfi_index !869
  %31 = load i32* %hid, align 4, !llfi_index !870
  %32 = load i32* %out, align 4, !llfi_index !871
  call void @bpnn_layerforward(float* %24, float* %27, float** %30, i32 %31, i32 %32), !llfi_index !872
  ret void, !llfi_index !873
}

; Function Attrs: nounwind uwtable
define void @bpnn_train(%struct.BPNN* %net, float* %eo, float* %eh) #0 {
  %1 = alloca %struct.BPNN*, align 8, !llfi_index !874
  %2 = alloca float*, align 8, !llfi_index !875
  %3 = alloca float*, align 8, !llfi_index !876
  %in = alloca i32, align 4, !llfi_index !877
  %hid = alloca i32, align 4, !llfi_index !878
  %out = alloca i32, align 4, !llfi_index !879
  %out_err = alloca float, align 4, !llfi_index !880
  %hid_err = alloca float, align 4, !llfi_index !881
  store %struct.BPNN* %net, %struct.BPNN** %1, align 8, !llfi_index !882
  store float* %eo, float** %2, align 8, !llfi_index !883
  store float* %eh, float** %3, align 8, !llfi_index !884
  %4 = load %struct.BPNN** %1, align 8, !llfi_index !885
  %5 = getelementptr inbounds %struct.BPNN* %4, i32 0, i32 0, !llfi_index !886
  %6 = load i32* %5, align 4, !llfi_index !887
  store i32 %6, i32* %in, align 4, !llfi_index !888
  %7 = load %struct.BPNN** %1, align 8, !llfi_index !889
  %8 = getelementptr inbounds %struct.BPNN* %7, i32 0, i32 1, !llfi_index !890
  %9 = load i32* %8, align 4, !llfi_index !891
  store i32 %9, i32* %hid, align 4, !llfi_index !892
  %10 = load %struct.BPNN** %1, align 8, !llfi_index !893
  %11 = getelementptr inbounds %struct.BPNN* %10, i32 0, i32 2, !llfi_index !894
  %12 = load i32* %11, align 4, !llfi_index !895
  store i32 %12, i32* %out, align 4, !llfi_index !896
  %13 = load %struct.BPNN** %1, align 8, !llfi_index !897
  %14 = getelementptr inbounds %struct.BPNN* %13, i32 0, i32 3, !llfi_index !898
  %15 = load float** %14, align 8, !llfi_index !899
  %16 = load %struct.BPNN** %1, align 8, !llfi_index !900
  %17 = getelementptr inbounds %struct.BPNN* %16, i32 0, i32 4, !llfi_index !901
  %18 = load float** %17, align 8, !llfi_index !902
  %19 = load %struct.BPNN** %1, align 8, !llfi_index !903
  %20 = getelementptr inbounds %struct.BPNN* %19, i32 0, i32 9, !llfi_index !904
  %21 = load float*** %20, align 8, !llfi_index !905
  %22 = load i32* %in, align 4, !llfi_index !906
  %23 = load i32* %hid, align 4, !llfi_index !907
  call void @bpnn_layerforward(float* %15, float* %18, float** %21, i32 %22, i32 %23), !llfi_index !908
  %24 = load %struct.BPNN** %1, align 8, !llfi_index !909
  %25 = getelementptr inbounds %struct.BPNN* %24, i32 0, i32 4, !llfi_index !910
  %26 = load float** %25, align 8, !llfi_index !911
  %27 = load %struct.BPNN** %1, align 8, !llfi_index !912
  %28 = getelementptr inbounds %struct.BPNN* %27, i32 0, i32 5, !llfi_index !913
  %29 = load float** %28, align 8, !llfi_index !914
  %30 = load %struct.BPNN** %1, align 8, !llfi_index !915
  %31 = getelementptr inbounds %struct.BPNN* %30, i32 0, i32 10, !llfi_index !916
  %32 = load float*** %31, align 8, !llfi_index !917
  %33 = load i32* %hid, align 4, !llfi_index !918
  %34 = load i32* %out, align 4, !llfi_index !919
  call void @bpnn_layerforward(float* %26, float* %29, float** %32, i32 %33, i32 %34), !llfi_index !920
  %35 = load %struct.BPNN** %1, align 8, !llfi_index !921
  %36 = getelementptr inbounds %struct.BPNN* %35, i32 0, i32 7, !llfi_index !922
  %37 = load float** %36, align 8, !llfi_index !923
  %38 = load %struct.BPNN** %1, align 8, !llfi_index !924
  %39 = getelementptr inbounds %struct.BPNN* %38, i32 0, i32 8, !llfi_index !925
  %40 = load float** %39, align 8, !llfi_index !926
  %41 = load %struct.BPNN** %1, align 8, !llfi_index !927
  %42 = getelementptr inbounds %struct.BPNN* %41, i32 0, i32 5, !llfi_index !928
  %43 = load float** %42, align 8, !llfi_index !929
  %44 = load i32* %out, align 4, !llfi_index !930
  call void @bpnn_output_error(float* %37, float* %40, float* %43, i32 %44, float* %out_err), !llfi_index !931
  %45 = load %struct.BPNN** %1, align 8, !llfi_index !932
  %46 = getelementptr inbounds %struct.BPNN* %45, i32 0, i32 6, !llfi_index !933
  %47 = load float** %46, align 8, !llfi_index !934
  %48 = load i32* %hid, align 4, !llfi_index !935
  %49 = load %struct.BPNN** %1, align 8, !llfi_index !936
  %50 = getelementptr inbounds %struct.BPNN* %49, i32 0, i32 7, !llfi_index !937
  %51 = load float** %50, align 8, !llfi_index !938
  %52 = load i32* %out, align 4, !llfi_index !939
  %53 = load %struct.BPNN** %1, align 8, !llfi_index !940
  %54 = getelementptr inbounds %struct.BPNN* %53, i32 0, i32 10, !llfi_index !941
  %55 = load float*** %54, align 8, !llfi_index !942
  %56 = load %struct.BPNN** %1, align 8, !llfi_index !943
  %57 = getelementptr inbounds %struct.BPNN* %56, i32 0, i32 4, !llfi_index !944
  %58 = load float** %57, align 8, !llfi_index !945
  call void @bpnn_hidden_error(float* %47, i32 %48, float* %51, i32 %52, float** %55, float* %58, float* %hid_err), !llfi_index !946
  %59 = load float* %out_err, align 4, !llfi_index !947
  %60 = load float** %2, align 8, !llfi_index !948
  store float %59, float* %60, align 4, !llfi_index !949
  %61 = load float* %hid_err, align 4, !llfi_index !950
  %62 = load float** %3, align 8, !llfi_index !951
  store float %61, float* %62, align 4, !llfi_index !952
  %63 = load %struct.BPNN** %1, align 8, !llfi_index !953
  %64 = getelementptr inbounds %struct.BPNN* %63, i32 0, i32 7, !llfi_index !954
  %65 = load float** %64, align 8, !llfi_index !955
  %66 = load i32* %out, align 4, !llfi_index !956
  %67 = load %struct.BPNN** %1, align 8, !llfi_index !957
  %68 = getelementptr inbounds %struct.BPNN* %67, i32 0, i32 4, !llfi_index !958
  %69 = load float** %68, align 8, !llfi_index !959
  %70 = load i32* %hid, align 4, !llfi_index !960
  %71 = load %struct.BPNN** %1, align 8, !llfi_index !961
  %72 = getelementptr inbounds %struct.BPNN* %71, i32 0, i32 10, !llfi_index !962
  %73 = load float*** %72, align 8, !llfi_index !963
  %74 = load %struct.BPNN** %1, align 8, !llfi_index !964
  %75 = getelementptr inbounds %struct.BPNN* %74, i32 0, i32 12, !llfi_index !965
  %76 = load float*** %75, align 8, !llfi_index !966
  call void @bpnn_adjust_weights(float* %65, i32 %66, float* %69, i32 %70, float** %73, float** %76), !llfi_index !967
  %77 = load %struct.BPNN** %1, align 8, !llfi_index !968
  %78 = getelementptr inbounds %struct.BPNN* %77, i32 0, i32 6, !llfi_index !969
  %79 = load float** %78, align 8, !llfi_index !970
  %80 = load i32* %hid, align 4, !llfi_index !971
  %81 = load %struct.BPNN** %1, align 8, !llfi_index !972
  %82 = getelementptr inbounds %struct.BPNN* %81, i32 0, i32 3, !llfi_index !973
  %83 = load float** %82, align 8, !llfi_index !974
  %84 = load i32* %in, align 4, !llfi_index !975
  %85 = load %struct.BPNN** %1, align 8, !llfi_index !976
  %86 = getelementptr inbounds %struct.BPNN* %85, i32 0, i32 9, !llfi_index !977
  %87 = load float*** %86, align 8, !llfi_index !978
  %88 = load %struct.BPNN** %1, align 8, !llfi_index !979
  %89 = getelementptr inbounds %struct.BPNN* %88, i32 0, i32 11, !llfi_index !980
  %90 = load float*** %89, align 8, !llfi_index !981
  call void @bpnn_adjust_weights(float* %79, i32 %80, float* %83, i32 %84, float** %87, float** %90), !llfi_index !982
  ret void, !llfi_index !983
}

; Function Attrs: nounwind uwtable
define void @bpnn_save(%struct.BPNN* %net, i8* %filename) #0 {
  %1 = alloca %struct.BPNN*, align 8, !llfi_index !984
  %2 = alloca i8*, align 8, !llfi_index !985
  %n1 = alloca i32, align 4, !llfi_index !986
  %n2 = alloca i32, align 4, !llfi_index !987
  %n3 = alloca i32, align 4, !llfi_index !988
  %i = alloca i32, align 4, !llfi_index !989
  %j = alloca i32, align 4, !llfi_index !990
  %memcnt = alloca i32, align 4, !llfi_index !991
  %dvalue = alloca float, align 4, !llfi_index !992
  %w = alloca float**, align 8, !llfi_index !993
  %mem = alloca i8*, align 8, !llfi_index !994
  %pFile = alloca %struct._IO_FILE*, align 8, !llfi_index !995
  %_to = alloca i8*, align 8, !llfi_index !996
  %_from = alloca i8*, align 8, !llfi_index !997
  %_i = alloca i32, align 4, !llfi_index !998
  %_l = alloca i32, align 4, !llfi_index !999
  %_to1 = alloca i8*, align 8, !llfi_index !1000
  %_from2 = alloca i8*, align 8, !llfi_index !1001
  %_i3 = alloca i32, align 4, !llfi_index !1002
  %_l4 = alloca i32, align 4, !llfi_index !1003
  store %struct.BPNN* %net, %struct.BPNN** %1, align 8, !llfi_index !1004
  store i8* %filename, i8** %2, align 8, !llfi_index !1005
  %3 = load i8** %2, align 8, !llfi_index !1006
  %4 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0)), !llfi_index !1007
  store %struct._IO_FILE* %4, %struct._IO_FILE** %pFile, align 8, !llfi_index !1008
  %5 = load %struct.BPNN** %1, align 8, !llfi_index !1009
  %6 = getelementptr inbounds %struct.BPNN* %5, i32 0, i32 0, !llfi_index !1010
  %7 = load i32* %6, align 4, !llfi_index !1011
  store i32 %7, i32* %n1, align 4, !llfi_index !1012
  %8 = load %struct.BPNN** %1, align 8, !llfi_index !1013
  %9 = getelementptr inbounds %struct.BPNN* %8, i32 0, i32 1, !llfi_index !1014
  %10 = load i32* %9, align 4, !llfi_index !1015
  store i32 %10, i32* %n2, align 4, !llfi_index !1016
  %11 = load %struct.BPNN** %1, align 8, !llfi_index !1017
  %12 = getelementptr inbounds %struct.BPNN* %11, i32 0, i32 2, !llfi_index !1018
  %13 = load i32* %12, align 4, !llfi_index !1019
  store i32 %13, i32* %n3, align 4, !llfi_index !1020
  %14 = load i32* %n1, align 4, !llfi_index !1021
  %15 = load i32* %n2, align 4, !llfi_index !1022
  %16 = load i32* %n3, align 4, !llfi_index !1023
  %17 = load i8** %2, align 8, !llfi_index !1024
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str5, i32 0, i32 0), i32 %14, i32 %15, i32 %16, i8* %17), !llfi_index !1025
  %19 = bitcast i32* %n1 to i8*, !llfi_index !1026
  %20 = load %struct._IO_FILE** %pFile, align 8, !llfi_index !1027
  %21 = call i64 @fwrite(i8* %19, i64 1, i64 1, %struct._IO_FILE* %20), !llfi_index !1028
  %22 = bitcast i32* %n2 to i8*, !llfi_index !1029
  %23 = load %struct._IO_FILE** %pFile, align 8, !llfi_index !1030
  %24 = call i64 @fwrite(i8* %22, i64 1, i64 1, %struct._IO_FILE* %23), !llfi_index !1031
  %25 = bitcast i32* %n3 to i8*, !llfi_index !1032
  %26 = load %struct._IO_FILE** %pFile, align 8, !llfi_index !1033
  %27 = call i64 @fwrite(i8* %25, i64 1, i64 1, %struct._IO_FILE* %26), !llfi_index !1034
  store i32 0, i32* %memcnt, align 4, !llfi_index !1035
  %28 = load %struct.BPNN** %1, align 8, !llfi_index !1036
  %29 = getelementptr inbounds %struct.BPNN* %28, i32 0, i32 9, !llfi_index !1037
  %30 = load float*** %29, align 8, !llfi_index !1038
  store float** %30, float*** %w, align 8, !llfi_index !1039
  %31 = load i32* %n1, align 4, !llfi_index !1040
  %32 = add nsw i32 %31, 1, !llfi_index !1041
  %33 = load i32* %n2, align 4, !llfi_index !1042
  %34 = add nsw i32 %33, 1, !llfi_index !1043
  %35 = mul nsw i32 %32, %34, !llfi_index !1044
  %36 = sext i32 %35 to i64, !llfi_index !1045
  %37 = mul i64 %36, 4, !llfi_index !1046
  %38 = trunc i64 %37 to i32, !llfi_index !1047
  %39 = zext i32 %38 to i64, !llfi_index !1048
  %40 = call noalias i8* @malloc(i64 %39) #5, !llfi_index !1049
  store i8* %40, i8** %mem, align 8, !llfi_index !1050
  store i32 0, i32* %i, align 4, !llfi_index !1051
  br label %41, !llfi_index !1052

; <label>:41                                      ; preds = %87, %0
  %42 = load i32* %i, align 4, !llfi_index !1053
  %43 = load i32* %n1, align 4, !llfi_index !1054
  %44 = icmp sle i32 %42, %43, !llfi_index !1055
  br i1 %44, label %45, label %90, !llfi_index !1056

; <label>:45                                      ; preds = %41
  store i32 0, i32* %j, align 4, !llfi_index !1057
  br label %46, !llfi_index !1058

; <label>:46                                      ; preds = %83, %45
  %47 = load i32* %j, align 4, !llfi_index !1059
  %48 = load i32* %n2, align 4, !llfi_index !1060
  %49 = icmp sle i32 %47, %48, !llfi_index !1061
  br i1 %49, label %50, label %86, !llfi_index !1062

; <label>:50                                      ; preds = %46
  %51 = load i32* %j, align 4, !llfi_index !1063
  %52 = sext i32 %51 to i64, !llfi_index !1064
  %53 = load i32* %i, align 4, !llfi_index !1065
  %54 = sext i32 %53 to i64, !llfi_index !1066
  %55 = load float*** %w, align 8, !llfi_index !1067
  %56 = getelementptr inbounds float** %55, i64 %54, !llfi_index !1068
  %57 = load float** %56, align 8, !llfi_index !1069
  %58 = getelementptr inbounds float* %57, i64 %52, !llfi_index !1070
  %59 = load float* %58, align 4, !llfi_index !1071
  store float %59, float* %dvalue, align 4, !llfi_index !1072
  %60 = load i32* %memcnt, align 4, !llfi_index !1073
  %61 = sext i32 %60 to i64, !llfi_index !1074
  %62 = load i8** %mem, align 8, !llfi_index !1075
  %63 = getelementptr inbounds i8* %62, i64 %61, !llfi_index !1076
  store i8* %63, i8** %_to, align 8, !llfi_index !1077
  %64 = bitcast float* %dvalue to i8*, !llfi_index !1078
  store i8* %64, i8** %_from, align 8, !llfi_index !1079
  store i32 4, i32* %_l, align 4, !llfi_index !1080
  store i32 0, i32* %_i, align 4, !llfi_index !1081
  br label %65, !llfi_index !1082

; <label>:65                                      ; preds = %75, %50
  %66 = load i32* %_i, align 4, !llfi_index !1083
  %67 = load i32* %_l, align 4, !llfi_index !1084
  %68 = icmp slt i32 %66, %67, !llfi_index !1085
  br i1 %68, label %69, label %78, !llfi_index !1086

; <label>:69                                      ; preds = %65
  %70 = load i8** %_from, align 8, !llfi_index !1087
  %71 = getelementptr inbounds i8* %70, i32 1, !llfi_index !1088
  store i8* %71, i8** %_from, align 8, !llfi_index !1089
  %72 = load i8* %70, align 1, !llfi_index !1090
  %73 = load i8** %_to, align 8, !llfi_index !1091
  %74 = getelementptr inbounds i8* %73, i32 1, !llfi_index !1092
  store i8* %74, i8** %_to, align 8, !llfi_index !1093
  store i8 %72, i8* %73, align 1, !llfi_index !1094
  br label %75, !llfi_index !1095

; <label>:75                                      ; preds = %69
  %76 = load i32* %_i, align 4, !llfi_index !1096
  %77 = add nsw i32 %76, 1, !llfi_index !1097
  store i32 %77, i32* %_i, align 4, !llfi_index !1098
  br label %65, !llfi_index !1099

; <label>:78                                      ; preds = %65
  %79 = load i32* %memcnt, align 4, !llfi_index !1100
  %80 = sext i32 %79 to i64, !llfi_index !1101
  %81 = add i64 %80, 4, !llfi_index !1102
  %82 = trunc i64 %81 to i32, !llfi_index !1103
  store i32 %82, i32* %memcnt, align 4, !llfi_index !1104
  br label %83, !llfi_index !1105

; <label>:83                                      ; preds = %78
  %84 = load i32* %j, align 4, !llfi_index !1106
  %85 = add nsw i32 %84, 1, !llfi_index !1107
  store i32 %85, i32* %j, align 4, !llfi_index !1108
  br label %46, !llfi_index !1109

; <label>:86                                      ; preds = %46
  br label %87, !llfi_index !1110

; <label>:87                                      ; preds = %86
  %88 = load i32* %i, align 4, !llfi_index !1111
  %89 = add nsw i32 %88, 1, !llfi_index !1112
  store i32 %89, i32* %i, align 4, !llfi_index !1113
  br label %41, !llfi_index !1114

; <label>:90                                      ; preds = %41
  %91 = load i8** %mem, align 8, !llfi_index !1115
  %92 = load i32* %n1, align 4, !llfi_index !1116
  %93 = add nsw i32 %92, 1, !llfi_index !1117
  %94 = load i32* %n2, align 4, !llfi_index !1118
  %95 = add nsw i32 %94, 1, !llfi_index !1119
  %96 = mul nsw i32 %93, %95, !llfi_index !1120
  %97 = sext i32 %96 to i64, !llfi_index !1121
  %98 = mul i64 %97, 4, !llfi_index !1122
  %99 = trunc i64 %98 to i32, !llfi_index !1123
  %100 = zext i32 %99 to i64, !llfi_index !1124
  %101 = load %struct._IO_FILE** %pFile, align 8, !llfi_index !1125
  %102 = call i64 @fwrite(i8* %91, i64 4, i64 %100, %struct._IO_FILE* %101), !llfi_index !1126
  %103 = load i8** %mem, align 8, !llfi_index !1127
  call void @free(i8* %103) #5, !llfi_index !1128
  store i32 0, i32* %memcnt, align 4, !llfi_index !1129
  %104 = load %struct.BPNN** %1, align 8, !llfi_index !1130
  %105 = getelementptr inbounds %struct.BPNN* %104, i32 0, i32 10, !llfi_index !1131
  %106 = load float*** %105, align 8, !llfi_index !1132
  store float** %106, float*** %w, align 8, !llfi_index !1133
  %107 = load i32* %n2, align 4, !llfi_index !1134
  %108 = add nsw i32 %107, 1, !llfi_index !1135
  %109 = load i32* %n3, align 4, !llfi_index !1136
  %110 = add nsw i32 %109, 1, !llfi_index !1137
  %111 = mul nsw i32 %108, %110, !llfi_index !1138
  %112 = sext i32 %111 to i64, !llfi_index !1139
  %113 = mul i64 %112, 4, !llfi_index !1140
  %114 = trunc i64 %113 to i32, !llfi_index !1141
  %115 = zext i32 %114 to i64, !llfi_index !1142
  %116 = call noalias i8* @malloc(i64 %115) #5, !llfi_index !1143
  store i8* %116, i8** %mem, align 8, !llfi_index !1144
  store i32 0, i32* %i, align 4, !llfi_index !1145
  br label %117, !llfi_index !1146

; <label>:117                                     ; preds = %163, %90
  %118 = load i32* %i, align 4, !llfi_index !1147
  %119 = load i32* %n2, align 4, !llfi_index !1148
  %120 = icmp sle i32 %118, %119, !llfi_index !1149
  br i1 %120, label %121, label %166, !llfi_index !1150

; <label>:121                                     ; preds = %117
  store i32 0, i32* %j, align 4, !llfi_index !1151
  br label %122, !llfi_index !1152

; <label>:122                                     ; preds = %159, %121
  %123 = load i32* %j, align 4, !llfi_index !1153
  %124 = load i32* %n3, align 4, !llfi_index !1154
  %125 = icmp sle i32 %123, %124, !llfi_index !1155
  br i1 %125, label %126, label %162, !llfi_index !1156

; <label>:126                                     ; preds = %122
  %127 = load i32* %j, align 4, !llfi_index !1157
  %128 = sext i32 %127 to i64, !llfi_index !1158
  %129 = load i32* %i, align 4, !llfi_index !1159
  %130 = sext i32 %129 to i64, !llfi_index !1160
  %131 = load float*** %w, align 8, !llfi_index !1161
  %132 = getelementptr inbounds float** %131, i64 %130, !llfi_index !1162
  %133 = load float** %132, align 8, !llfi_index !1163
  %134 = getelementptr inbounds float* %133, i64 %128, !llfi_index !1164
  %135 = load float* %134, align 4, !llfi_index !1165
  store float %135, float* %dvalue, align 4, !llfi_index !1166
  %136 = load i32* %memcnt, align 4, !llfi_index !1167
  %137 = sext i32 %136 to i64, !llfi_index !1168
  %138 = load i8** %mem, align 8, !llfi_index !1169
  %139 = getelementptr inbounds i8* %138, i64 %137, !llfi_index !1170
  store i8* %139, i8** %_to1, align 8, !llfi_index !1171
  %140 = bitcast float* %dvalue to i8*, !llfi_index !1172
  store i8* %140, i8** %_from2, align 8, !llfi_index !1173
  store i32 4, i32* %_l4, align 4, !llfi_index !1174
  store i32 0, i32* %_i3, align 4, !llfi_index !1175
  br label %141, !llfi_index !1176

; <label>:141                                     ; preds = %151, %126
  %142 = load i32* %_i3, align 4, !llfi_index !1177
  %143 = load i32* %_l4, align 4, !llfi_index !1178
  %144 = icmp slt i32 %142, %143, !llfi_index !1179
  br i1 %144, label %145, label %154, !llfi_index !1180

; <label>:145                                     ; preds = %141
  %146 = load i8** %_from2, align 8, !llfi_index !1181
  %147 = getelementptr inbounds i8* %146, i32 1, !llfi_index !1182
  store i8* %147, i8** %_from2, align 8, !llfi_index !1183
  %148 = load i8* %146, align 1, !llfi_index !1184
  %149 = load i8** %_to1, align 8, !llfi_index !1185
  %150 = getelementptr inbounds i8* %149, i32 1, !llfi_index !1186
  store i8* %150, i8** %_to1, align 8, !llfi_index !1187
  store i8 %148, i8* %149, align 1, !llfi_index !1188
  br label %151, !llfi_index !1189

; <label>:151                                     ; preds = %145
  %152 = load i32* %_i3, align 4, !llfi_index !1190
  %153 = add nsw i32 %152, 1, !llfi_index !1191
  store i32 %153, i32* %_i3, align 4, !llfi_index !1192
  br label %141, !llfi_index !1193

; <label>:154                                     ; preds = %141
  %155 = load i32* %memcnt, align 4, !llfi_index !1194
  %156 = sext i32 %155 to i64, !llfi_index !1195
  %157 = add i64 %156, 4, !llfi_index !1196
  %158 = trunc i64 %157 to i32, !llfi_index !1197
  store i32 %158, i32* %memcnt, align 4, !llfi_index !1198
  br label %159, !llfi_index !1199

; <label>:159                                     ; preds = %154
  %160 = load i32* %j, align 4, !llfi_index !1200
  %161 = add nsw i32 %160, 1, !llfi_index !1201
  store i32 %161, i32* %j, align 4, !llfi_index !1202
  br label %122, !llfi_index !1203

; <label>:162                                     ; preds = %122
  br label %163, !llfi_index !1204

; <label>:163                                     ; preds = %162
  %164 = load i32* %i, align 4, !llfi_index !1205
  %165 = add nsw i32 %164, 1, !llfi_index !1206
  store i32 %165, i32* %i, align 4, !llfi_index !1207
  br label %117, !llfi_index !1208

; <label>:166                                     ; preds = %117
  %167 = load i8** %mem, align 8, !llfi_index !1209
  %168 = load i32* %n2, align 4, !llfi_index !1210
  %169 = add nsw i32 %168, 1, !llfi_index !1211
  %170 = load i32* %n3, align 4, !llfi_index !1212
  %171 = add nsw i32 %170, 1, !llfi_index !1213
  %172 = mul nsw i32 %169, %171, !llfi_index !1214
  %173 = sext i32 %172 to i64, !llfi_index !1215
  %174 = mul i64 %173, 4, !llfi_index !1216
  %175 = trunc i64 %174 to i32, !llfi_index !1217
  %176 = zext i32 %175 to i64, !llfi_index !1218
  %177 = load %struct._IO_FILE** %pFile, align 8, !llfi_index !1219
  %178 = call i64 @fwrite(i8* %167, i64 4, i64 %176, %struct._IO_FILE* %177), !llfi_index !1220
  %179 = load i8** %mem, align 8, !llfi_index !1221
  call void @free(i8* %179) #5, !llfi_index !1222
  %180 = load %struct._IO_FILE** %pFile, align 8, !llfi_index !1223
  %181 = call i32 @fclose(%struct._IO_FILE* %180), !llfi_index !1224
  ret void, !llfi_index !1225
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define %struct.BPNN* @bpnn_read(i8* %filename) #0 {
  %1 = alloca %struct.BPNN*, align 8, !llfi_index !1226
  %2 = alloca i8*, align 8, !llfi_index !1227
  %mem = alloca i8*, align 8, !llfi_index !1228
  %new = alloca %struct.BPNN*, align 8, !llfi_index !1229
  %fd = alloca i32, align 4, !llfi_index !1230
  %n1 = alloca i32, align 4, !llfi_index !1231
  %n2 = alloca i32, align 4, !llfi_index !1232
  %n3 = alloca i32, align 4, !llfi_index !1233
  %i = alloca i32, align 4, !llfi_index !1234
  %j = alloca i32, align 4, !llfi_index !1235
  %memcnt = alloca i32, align 4, !llfi_index !1236
  %_to = alloca i8*, align 8, !llfi_index !1237
  %_from = alloca i8*, align 8, !llfi_index !1238
  %_i = alloca i32, align 4, !llfi_index !1239
  %_l = alloca i32, align 4, !llfi_index !1240
  %_to1 = alloca i8*, align 8, !llfi_index !1241
  %_from2 = alloca i8*, align 8, !llfi_index !1242
  %_i3 = alloca i32, align 4, !llfi_index !1243
  %_l4 = alloca i32, align 4, !llfi_index !1244
  store i8* %filename, i8** %2, align 8, !llfi_index !1245
  %3 = load i8** %2, align 8, !llfi_index !1246
  %4 = call i32 (i8*, i32, i32, ...)* bitcast (i32 (...)* @open to i32 (i8*, i32, i32, ...)*)(i8* %3, i32 0, i32 420), !llfi_index !1247
  store i32 %4, i32* %fd, align 4, !llfi_index !1248
  %5 = icmp eq i32 %4, -1, !llfi_index !1249
  br i1 %5, label %6, label %7, !llfi_index !1250

; <label>:6                                       ; preds = %0
  store %struct.BPNN* null, %struct.BPNN** %1, !llfi_index !1251
  br label %190, !llfi_index !1252

; <label>:7                                       ; preds = %0
  %8 = load i8** %2, align 8, !llfi_index !1253
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str6, i32 0, i32 0), i8* %8), !llfi_index !1254
  %10 = load i32* %fd, align 4, !llfi_index !1255
  %11 = bitcast i32* %n1 to i8*, !llfi_index !1256
  %12 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %10, i8* %11, i64 4), !llfi_index !1257
  %13 = load i32* %fd, align 4, !llfi_index !1258
  %14 = bitcast i32* %n2 to i8*, !llfi_index !1259
  %15 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %13, i8* %14, i64 4), !llfi_index !1260
  %16 = load i32* %fd, align 4, !llfi_index !1261
  %17 = bitcast i32* %n3 to i8*, !llfi_index !1262
  %18 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %16, i8* %17, i64 4), !llfi_index !1263
  %19 = load i32* %n1, align 4, !llfi_index !1264
  %20 = load i32* %n2, align 4, !llfi_index !1265
  %21 = load i32* %n3, align 4, !llfi_index !1266
  %22 = call %struct.BPNN* @bpnn_internal_create(i32 %19, i32 %20, i32 %21), !llfi_index !1267
  store %struct.BPNN* %22, %struct.BPNN** %new, align 8, !llfi_index !1268
  %23 = load i8** %2, align 8, !llfi_index !1269
  %24 = load i32* %n1, align 4, !llfi_index !1270
  %25 = load i32* %n2, align 4, !llfi_index !1271
  %26 = load i32* %n3, align 4, !llfi_index !1272
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str7, i32 0, i32 0), i8* %23, i32 %24, i32 %25, i32 %26), !llfi_index !1273
  %28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str8, i32 0, i32 0)), !llfi_index !1274
  store i32 0, i32* %memcnt, align 4, !llfi_index !1275
  %29 = load i32* %n1, align 4, !llfi_index !1276
  %30 = add nsw i32 %29, 1, !llfi_index !1277
  %31 = load i32* %n2, align 4, !llfi_index !1278
  %32 = add nsw i32 %31, 1, !llfi_index !1279
  %33 = mul nsw i32 %30, %32, !llfi_index !1280
  %34 = sext i32 %33 to i64, !llfi_index !1281
  %35 = mul i64 %34, 4, !llfi_index !1282
  %36 = trunc i64 %35 to i32, !llfi_index !1283
  %37 = zext i32 %36 to i64, !llfi_index !1284
  %38 = call noalias i8* @malloc(i64 %37) #5, !llfi_index !1285
  store i8* %38, i8** %mem, align 8, !llfi_index !1286
  %39 = load i32* %fd, align 4, !llfi_index !1287
  %40 = load i8** %mem, align 8, !llfi_index !1288
  %41 = load i32* %n1, align 4, !llfi_index !1289
  %42 = add nsw i32 %41, 1, !llfi_index !1290
  %43 = load i32* %n2, align 4, !llfi_index !1291
  %44 = add nsw i32 %43, 1, !llfi_index !1292
  %45 = mul nsw i32 %42, %44, !llfi_index !1293
  %46 = sext i32 %45 to i64, !llfi_index !1294
  %47 = mul i64 %46, 4, !llfi_index !1295
  %48 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %39, i8* %40, i64 %47), !llfi_index !1296
  store i32 0, i32* %i, align 4, !llfi_index !1297
  br label %49, !llfi_index !1298

; <label>:49                                      ; preds = %96, %7
  %50 = load i32* %i, align 4, !llfi_index !1299
  %51 = load i32* %n1, align 4, !llfi_index !1300
  %52 = icmp sle i32 %50, %51, !llfi_index !1301
  br i1 %52, label %53, label %99, !llfi_index !1302

; <label>:53                                      ; preds = %49
  store i32 0, i32* %j, align 4, !llfi_index !1303
  br label %54, !llfi_index !1304

; <label>:54                                      ; preds = %92, %53
  %55 = load i32* %j, align 4, !llfi_index !1305
  %56 = load i32* %n2, align 4, !llfi_index !1306
  %57 = icmp sle i32 %55, %56, !llfi_index !1307
  br i1 %57, label %58, label %95, !llfi_index !1308

; <label>:58                                      ; preds = %54
  %59 = load i32* %j, align 4, !llfi_index !1309
  %60 = sext i32 %59 to i64, !llfi_index !1310
  %61 = load i32* %i, align 4, !llfi_index !1311
  %62 = sext i32 %61 to i64, !llfi_index !1312
  %63 = load %struct.BPNN** %new, align 8, !llfi_index !1313
  %64 = getelementptr inbounds %struct.BPNN* %63, i32 0, i32 9, !llfi_index !1314
  %65 = load float*** %64, align 8, !llfi_index !1315
  %66 = getelementptr inbounds float** %65, i64 %62, !llfi_index !1316
  %67 = load float** %66, align 8, !llfi_index !1317
  %68 = getelementptr inbounds float* %67, i64 %60, !llfi_index !1318
  %69 = bitcast float* %68 to i8*, !llfi_index !1319
  store i8* %69, i8** %_to, align 8, !llfi_index !1320
  %70 = load i32* %memcnt, align 4, !llfi_index !1321
  %71 = sext i32 %70 to i64, !llfi_index !1322
  %72 = load i8** %mem, align 8, !llfi_index !1323
  %73 = getelementptr inbounds i8* %72, i64 %71, !llfi_index !1324
  store i8* %73, i8** %_from, align 8, !llfi_index !1325
  store i32 4, i32* %_l, align 4, !llfi_index !1326
  store i32 0, i32* %_i, align 4, !llfi_index !1327
  br label %74, !llfi_index !1328

; <label>:74                                      ; preds = %84, %58
  %75 = load i32* %_i, align 4, !llfi_index !1329
  %76 = load i32* %_l, align 4, !llfi_index !1330
  %77 = icmp slt i32 %75, %76, !llfi_index !1331
  br i1 %77, label %78, label %87, !llfi_index !1332

; <label>:78                                      ; preds = %74
  %79 = load i8** %_from, align 8, !llfi_index !1333
  %80 = getelementptr inbounds i8* %79, i32 1, !llfi_index !1334
  store i8* %80, i8** %_from, align 8, !llfi_index !1335
  %81 = load i8* %79, align 1, !llfi_index !1336
  %82 = load i8** %_to, align 8, !llfi_index !1337
  %83 = getelementptr inbounds i8* %82, i32 1, !llfi_index !1338
  store i8* %83, i8** %_to, align 8, !llfi_index !1339
  store i8 %81, i8* %82, align 1, !llfi_index !1340
  br label %84, !llfi_index !1341

; <label>:84                                      ; preds = %78
  %85 = load i32* %_i, align 4, !llfi_index !1342
  %86 = add nsw i32 %85, 1, !llfi_index !1343
  store i32 %86, i32* %_i, align 4, !llfi_index !1344
  br label %74, !llfi_index !1345

; <label>:87                                      ; preds = %74
  %88 = load i32* %memcnt, align 4, !llfi_index !1346
  %89 = sext i32 %88 to i64, !llfi_index !1347
  %90 = add i64 %89, 4, !llfi_index !1348
  %91 = trunc i64 %90 to i32, !llfi_index !1349
  store i32 %91, i32* %memcnt, align 4, !llfi_index !1350
  br label %92, !llfi_index !1351

; <label>:92                                      ; preds = %87
  %93 = load i32* %j, align 4, !llfi_index !1352
  %94 = add nsw i32 %93, 1, !llfi_index !1353
  store i32 %94, i32* %j, align 4, !llfi_index !1354
  br label %54, !llfi_index !1355

; <label>:95                                      ; preds = %54
  br label %96, !llfi_index !1356

; <label>:96                                      ; preds = %95
  %97 = load i32* %i, align 4, !llfi_index !1357
  %98 = add nsw i32 %97, 1, !llfi_index !1358
  store i32 %98, i32* %i, align 4, !llfi_index !1359
  br label %49, !llfi_index !1360

; <label>:99                                      ; preds = %49
  %100 = load i8** %mem, align 8, !llfi_index !1361
  call void @free(i8* %100) #5, !llfi_index !1362
  %101 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str9, i32 0, i32 0)), !llfi_index !1363
  store i32 0, i32* %memcnt, align 4, !llfi_index !1364
  %102 = load i32* %n2, align 4, !llfi_index !1365
  %103 = add nsw i32 %102, 1, !llfi_index !1366
  %104 = load i32* %n3, align 4, !llfi_index !1367
  %105 = add nsw i32 %104, 1, !llfi_index !1368
  %106 = mul nsw i32 %103, %105, !llfi_index !1369
  %107 = sext i32 %106 to i64, !llfi_index !1370
  %108 = mul i64 %107, 4, !llfi_index !1371
  %109 = trunc i64 %108 to i32, !llfi_index !1372
  %110 = zext i32 %109 to i64, !llfi_index !1373
  %111 = call noalias i8* @malloc(i64 %110) #5, !llfi_index !1374
  store i8* %111, i8** %mem, align 8, !llfi_index !1375
  %112 = load i32* %fd, align 4, !llfi_index !1376
  %113 = load i8** %mem, align 8, !llfi_index !1377
  %114 = load i32* %n2, align 4, !llfi_index !1378
  %115 = add nsw i32 %114, 1, !llfi_index !1379
  %116 = load i32* %n3, align 4, !llfi_index !1380
  %117 = add nsw i32 %116, 1, !llfi_index !1381
  %118 = mul nsw i32 %115, %117, !llfi_index !1382
  %119 = sext i32 %118 to i64, !llfi_index !1383
  %120 = mul i64 %119, 4, !llfi_index !1384
  %121 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %112, i8* %113, i64 %120), !llfi_index !1385
  store i32 0, i32* %i, align 4, !llfi_index !1386
  br label %122, !llfi_index !1387

; <label>:122                                     ; preds = %169, %99
  %123 = load i32* %i, align 4, !llfi_index !1388
  %124 = load i32* %n2, align 4, !llfi_index !1389
  %125 = icmp sle i32 %123, %124, !llfi_index !1390
  br i1 %125, label %126, label %172, !llfi_index !1391

; <label>:126                                     ; preds = %122
  store i32 0, i32* %j, align 4, !llfi_index !1392
  br label %127, !llfi_index !1393

; <label>:127                                     ; preds = %165, %126
  %128 = load i32* %j, align 4, !llfi_index !1394
  %129 = load i32* %n3, align 4, !llfi_index !1395
  %130 = icmp sle i32 %128, %129, !llfi_index !1396
  br i1 %130, label %131, label %168, !llfi_index !1397

; <label>:131                                     ; preds = %127
  %132 = load i32* %j, align 4, !llfi_index !1398
  %133 = sext i32 %132 to i64, !llfi_index !1399
  %134 = load i32* %i, align 4, !llfi_index !1400
  %135 = sext i32 %134 to i64, !llfi_index !1401
  %136 = load %struct.BPNN** %new, align 8, !llfi_index !1402
  %137 = getelementptr inbounds %struct.BPNN* %136, i32 0, i32 10, !llfi_index !1403
  %138 = load float*** %137, align 8, !llfi_index !1404
  %139 = getelementptr inbounds float** %138, i64 %135, !llfi_index !1405
  %140 = load float** %139, align 8, !llfi_index !1406
  %141 = getelementptr inbounds float* %140, i64 %133, !llfi_index !1407
  %142 = bitcast float* %141 to i8*, !llfi_index !1408
  store i8* %142, i8** %_to1, align 8, !llfi_index !1409
  %143 = load i32* %memcnt, align 4, !llfi_index !1410
  %144 = sext i32 %143 to i64, !llfi_index !1411
  %145 = load i8** %mem, align 8, !llfi_index !1412
  %146 = getelementptr inbounds i8* %145, i64 %144, !llfi_index !1413
  store i8* %146, i8** %_from2, align 8, !llfi_index !1414
  store i32 4, i32* %_l4, align 4, !llfi_index !1415
  store i32 0, i32* %_i3, align 4, !llfi_index !1416
  br label %147, !llfi_index !1417

; <label>:147                                     ; preds = %157, %131
  %148 = load i32* %_i3, align 4, !llfi_index !1418
  %149 = load i32* %_l4, align 4, !llfi_index !1419
  %150 = icmp slt i32 %148, %149, !llfi_index !1420
  br i1 %150, label %151, label %160, !llfi_index !1421

; <label>:151                                     ; preds = %147
  %152 = load i8** %_from2, align 8, !llfi_index !1422
  %153 = getelementptr inbounds i8* %152, i32 1, !llfi_index !1423
  store i8* %153, i8** %_from2, align 8, !llfi_index !1424
  %154 = load i8* %152, align 1, !llfi_index !1425
  %155 = load i8** %_to1, align 8, !llfi_index !1426
  %156 = getelementptr inbounds i8* %155, i32 1, !llfi_index !1427
  store i8* %156, i8** %_to1, align 8, !llfi_index !1428
  store i8 %154, i8* %155, align 1, !llfi_index !1429
  br label %157, !llfi_index !1430

; <label>:157                                     ; preds = %151
  %158 = load i32* %_i3, align 4, !llfi_index !1431
  %159 = add nsw i32 %158, 1, !llfi_index !1432
  store i32 %159, i32* %_i3, align 4, !llfi_index !1433
  br label %147, !llfi_index !1434

; <label>:160                                     ; preds = %147
  %161 = load i32* %memcnt, align 4, !llfi_index !1435
  %162 = sext i32 %161 to i64, !llfi_index !1436
  %163 = add i64 %162, 4, !llfi_index !1437
  %164 = trunc i64 %163 to i32, !llfi_index !1438
  store i32 %164, i32* %memcnt, align 4, !llfi_index !1439
  br label %165, !llfi_index !1440

; <label>:165                                     ; preds = %160
  %166 = load i32* %j, align 4, !llfi_index !1441
  %167 = add nsw i32 %166, 1, !llfi_index !1442
  store i32 %167, i32* %j, align 4, !llfi_index !1443
  br label %127, !llfi_index !1444

; <label>:168                                     ; preds = %127
  br label %169, !llfi_index !1445

; <label>:169                                     ; preds = %168
  %170 = load i32* %i, align 4, !llfi_index !1446
  %171 = add nsw i32 %170, 1, !llfi_index !1447
  store i32 %171, i32* %i, align 4, !llfi_index !1448
  br label %122, !llfi_index !1449

; <label>:172                                     ; preds = %122
  %173 = load i8** %mem, align 8, !llfi_index !1450
  call void @free(i8* %173) #5, !llfi_index !1451
  %174 = load i32* %fd, align 4, !llfi_index !1452
  %175 = call i32 (i32, ...)* bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 %174), !llfi_index !1453
  %176 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0)), !llfi_index !1454
  %177 = load %struct.BPNN** %new, align 8, !llfi_index !1455
  %178 = getelementptr inbounds %struct.BPNN* %177, i32 0, i32 11, !llfi_index !1456
  %179 = load float*** %178, align 8, !llfi_index !1457
  %180 = load i32* %n1, align 4, !llfi_index !1458
  %181 = load i32* %n2, align 4, !llfi_index !1459
  %182 = call i32 @bpnn_zero_weights(float** %179, i32 %180, i32 %181), !llfi_index !1460
  %183 = load %struct.BPNN** %new, align 8, !llfi_index !1461
  %184 = getelementptr inbounds %struct.BPNN* %183, i32 0, i32 12, !llfi_index !1462
  %185 = load float*** %184, align 8, !llfi_index !1463
  %186 = load i32* %n2, align 4, !llfi_index !1464
  %187 = load i32* %n3, align 4, !llfi_index !1465
  %188 = call i32 @bpnn_zero_weights(float** %185, i32 %186, i32 %187), !llfi_index !1466
  %189 = load %struct.BPNN** %new, align 8, !llfi_index !1467
  store %struct.BPNN* %189, %struct.BPNN** %1, !llfi_index !1468
  br label %190, !llfi_index !1469

; <label>:190                                     ; preds = %172, %6
  %191 = load %struct.BPNN** %1, !llfi_index !1470
  ret %struct.BPNN* %191, !llfi_index !1471
}

declare i32 @open(...) #2

declare i32 @read(...) #2

declare i32 @close(...) #2

; Function Attrs: nounwind uwtable
define double @gettime() #0 {
  %t = alloca %struct.timeval, align 8, !llfi_index !1472
  %1 = call i32 @gettimeofday(%struct.timeval* %t, %struct.timezone* null) #5, !llfi_index !1473
  %2 = getelementptr inbounds %struct.timeval* %t, i32 0, i32 0, !llfi_index !1474
  %3 = load i64* %2, align 8, !llfi_index !1475
  %4 = sitofp i64 %3 to double, !llfi_index !1476
  %5 = getelementptr inbounds %struct.timeval* %t, i32 0, i32 1, !llfi_index !1477
  %6 = load i64* %5, align 8, !llfi_index !1478
  %7 = sitofp i64 %6 to double, !llfi_index !1479
  %8 = fmul double %7, 1.000000e-06, !llfi_index !1480
  %9 = fadd double %4, %8, !llfi_index !1481
  ret double %9, !llfi_index !1482
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !1483
  %2 = alloca i8**, align 8, !llfi_index !1484
  store i32 %argc, i32* %1, align 4, !llfi_index !1485
  store i8** %argv, i8*** %2, align 8, !llfi_index !1486
  %3 = load i32* %1, align 4, !llfi_index !1487
  %4 = load i8*** %2, align 8, !llfi_index !1488
  %5 = call i32 @setup(i32 %3, i8** %4), !llfi_index !1489
  ret i32 0, !llfi_index !1490
}

; Function Attrs: nounwind uwtable
define void @bpnn_train_kernel(%struct.BPNN* %net, float* %eo, float* %eh) #0 {
  %1 = alloca %struct.BPNN*, align 8, !llfi_index !1491
  %2 = alloca float*, align 8, !llfi_index !1492
  %3 = alloca float*, align 8, !llfi_index !1493
  %in = alloca i32, align 4, !llfi_index !1494
  %hid = alloca i32, align 4, !llfi_index !1495
  %out = alloca i32, align 4, !llfi_index !1496
  %out_err = alloca float, align 4, !llfi_index !1497
  %hid_err = alloca float, align 4, !llfi_index !1498
  store %struct.BPNN* %net, %struct.BPNN** %1, align 8, !llfi_index !1499
  store float* %eo, float** %2, align 8, !llfi_index !1500
  store float* %eh, float** %3, align 8, !llfi_index !1501
  %4 = load %struct.BPNN** %1, align 8, !llfi_index !1502
  %5 = getelementptr inbounds %struct.BPNN* %4, i32 0, i32 0, !llfi_index !1503
  %6 = load i32* %5, align 4, !llfi_index !1504
  store i32 %6, i32* %in, align 4, !llfi_index !1505
  %7 = load %struct.BPNN** %1, align 8, !llfi_index !1506
  %8 = getelementptr inbounds %struct.BPNN* %7, i32 0, i32 1, !llfi_index !1507
  %9 = load i32* %8, align 4, !llfi_index !1508
  store i32 %9, i32* %hid, align 4, !llfi_index !1509
  %10 = load %struct.BPNN** %1, align 8, !llfi_index !1510
  %11 = getelementptr inbounds %struct.BPNN* %10, i32 0, i32 2, !llfi_index !1511
  %12 = load i32* %11, align 4, !llfi_index !1512
  store i32 %12, i32* %out, align 4, !llfi_index !1513
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str11, i32 0, i32 0)), !llfi_index !1514
  %14 = load %struct.BPNN** %1, align 8, !llfi_index !1515
  %15 = getelementptr inbounds %struct.BPNN* %14, i32 0, i32 3, !llfi_index !1516
  %16 = load float** %15, align 8, !llfi_index !1517
  %17 = load %struct.BPNN** %1, align 8, !llfi_index !1518
  %18 = getelementptr inbounds %struct.BPNN* %17, i32 0, i32 4, !llfi_index !1519
  %19 = load float** %18, align 8, !llfi_index !1520
  %20 = load %struct.BPNN** %1, align 8, !llfi_index !1521
  %21 = getelementptr inbounds %struct.BPNN* %20, i32 0, i32 9, !llfi_index !1522
  %22 = load float*** %21, align 8, !llfi_index !1523
  %23 = load i32* %in, align 4, !llfi_index !1524
  %24 = load i32* %hid, align 4, !llfi_index !1525
  call void @bpnn_layerforward(float* %16, float* %19, float** %22, i32 %23, i32 %24), !llfi_index !1526
  %25 = load %struct.BPNN** %1, align 8, !llfi_index !1527
  %26 = getelementptr inbounds %struct.BPNN* %25, i32 0, i32 4, !llfi_index !1528
  %27 = load float** %26, align 8, !llfi_index !1529
  %28 = load %struct.BPNN** %1, align 8, !llfi_index !1530
  %29 = getelementptr inbounds %struct.BPNN* %28, i32 0, i32 5, !llfi_index !1531
  %30 = load float** %29, align 8, !llfi_index !1532
  %31 = load %struct.BPNN** %1, align 8, !llfi_index !1533
  %32 = getelementptr inbounds %struct.BPNN* %31, i32 0, i32 10, !llfi_index !1534
  %33 = load float*** %32, align 8, !llfi_index !1535
  %34 = load i32* %hid, align 4, !llfi_index !1536
  %35 = load i32* %out, align 4, !llfi_index !1537
  call void @bpnn_layerforward(float* %27, float* %30, float** %33, i32 %34, i32 %35), !llfi_index !1538
  %36 = load %struct.BPNN** %1, align 8, !llfi_index !1539
  %37 = getelementptr inbounds %struct.BPNN* %36, i32 0, i32 7, !llfi_index !1540
  %38 = load float** %37, align 8, !llfi_index !1541
  %39 = load %struct.BPNN** %1, align 8, !llfi_index !1542
  %40 = getelementptr inbounds %struct.BPNN* %39, i32 0, i32 8, !llfi_index !1543
  %41 = load float** %40, align 8, !llfi_index !1544
  %42 = load %struct.BPNN** %1, align 8, !llfi_index !1545
  %43 = getelementptr inbounds %struct.BPNN* %42, i32 0, i32 5, !llfi_index !1546
  %44 = load float** %43, align 8, !llfi_index !1547
  %45 = load i32* %out, align 4, !llfi_index !1548
  call void @bpnn_output_error(float* %38, float* %41, float* %44, i32 %45, float* %out_err), !llfi_index !1549
  %46 = load %struct.BPNN** %1, align 8, !llfi_index !1550
  %47 = getelementptr inbounds %struct.BPNN* %46, i32 0, i32 6, !llfi_index !1551
  %48 = load float** %47, align 8, !llfi_index !1552
  %49 = load i32* %hid, align 4, !llfi_index !1553
  %50 = load %struct.BPNN** %1, align 8, !llfi_index !1554
  %51 = getelementptr inbounds %struct.BPNN* %50, i32 0, i32 7, !llfi_index !1555
  %52 = load float** %51, align 8, !llfi_index !1556
  %53 = load i32* %out, align 4, !llfi_index !1557
  %54 = load %struct.BPNN** %1, align 8, !llfi_index !1558
  %55 = getelementptr inbounds %struct.BPNN* %54, i32 0, i32 10, !llfi_index !1559
  %56 = load float*** %55, align 8, !llfi_index !1560
  %57 = load %struct.BPNN** %1, align 8, !llfi_index !1561
  %58 = getelementptr inbounds %struct.BPNN* %57, i32 0, i32 4, !llfi_index !1562
  %59 = load float** %58, align 8, !llfi_index !1563
  call void @bpnn_hidden_error(float* %48, i32 %49, float* %52, i32 %53, float** %56, float* %59, float* %hid_err), !llfi_index !1564
  %60 = load %struct.BPNN** %1, align 8, !llfi_index !1565
  %61 = getelementptr inbounds %struct.BPNN* %60, i32 0, i32 7, !llfi_index !1566
  %62 = load float** %61, align 8, !llfi_index !1567
  %63 = load i32* %out, align 4, !llfi_index !1568
  %64 = load %struct.BPNN** %1, align 8, !llfi_index !1569
  %65 = getelementptr inbounds %struct.BPNN* %64, i32 0, i32 4, !llfi_index !1570
  %66 = load float** %65, align 8, !llfi_index !1571
  %67 = load i32* %hid, align 4, !llfi_index !1572
  %68 = load %struct.BPNN** %1, align 8, !llfi_index !1573
  %69 = getelementptr inbounds %struct.BPNN* %68, i32 0, i32 10, !llfi_index !1574
  %70 = load float*** %69, align 8, !llfi_index !1575
  %71 = load %struct.BPNN** %1, align 8, !llfi_index !1576
  %72 = getelementptr inbounds %struct.BPNN* %71, i32 0, i32 12, !llfi_index !1577
  %73 = load float*** %72, align 8, !llfi_index !1578
  call void @bpnn_adjust_weights(float* %62, i32 %63, float* %66, i32 %67, float** %70, float** %73), !llfi_index !1579
  %74 = load %struct.BPNN** %1, align 8, !llfi_index !1580
  %75 = getelementptr inbounds %struct.BPNN* %74, i32 0, i32 6, !llfi_index !1581
  %76 = load float** %75, align 8, !llfi_index !1582
  %77 = load i32* %hid, align 4, !llfi_index !1583
  %78 = load %struct.BPNN** %1, align 8, !llfi_index !1584
  %79 = getelementptr inbounds %struct.BPNN* %78, i32 0, i32 3, !llfi_index !1585
  %80 = load float** %79, align 8, !llfi_index !1586
  %81 = load i32* %in, align 4, !llfi_index !1587
  %82 = load %struct.BPNN** %1, align 8, !llfi_index !1588
  %83 = getelementptr inbounds %struct.BPNN* %82, i32 0, i32 9, !llfi_index !1589
  %84 = load float*** %83, align 8, !llfi_index !1590
  %85 = load %struct.BPNN** %1, align 8, !llfi_index !1591
  %86 = getelementptr inbounds %struct.BPNN* %85, i32 0, i32 11, !llfi_index !1592
  %87 = load float*** %86, align 8, !llfi_index !1593
  call void @bpnn_adjust_weights(float* %76, i32 %77, float* %80, i32 %81, float** %84, float** %87), !llfi_index !1594
  ret void, !llfi_index !1595
}

; Function Attrs: nounwind uwtable
define i32 @backprop_face() #0 {
  %1 = alloca i32, align 4, !llfi_index !1596
  %net = alloca %struct.BPNN*, align 8, !llfi_index !1597
  %i = alloca i32, align 4, !llfi_index !1598
  %out_err = alloca float, align 4, !llfi_index !1599
  %hid_err = alloca float, align 4, !llfi_index !1600
  %2 = load i32* @layer_size, align 4, !llfi_index !1601
  %3 = call %struct.BPNN* (i32, i32, i32, ...)* bitcast (%struct.BPNN* (i32, i32, i32)* @bpnn_create to %struct.BPNN* (i32, i32, i32, ...)*)(i32 %2, i32 16, i32 1), !llfi_index !1602
  store %struct.BPNN* %3, %struct.BPNN** %net, align 8, !llfi_index !1603
  %4 = load i32* @layer_size, align 4, !llfi_index !1604
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str12, i32 0, i32 0), i32 %4), !llfi_index !1605
  %6 = load %struct.BPNN** %net, align 8, !llfi_index !1606
  %7 = call i32 (%struct.BPNN*, ...)* bitcast (i32 (%struct.BPNN*)* @load to i32 (%struct.BPNN*, ...)*)(%struct.BPNN* %6), !llfi_index !1607
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str113, i32 0, i32 0)), !llfi_index !1608
  %9 = load %struct.BPNN** %net, align 8, !llfi_index !1609
  %10 = call i32 (%struct.BPNN*, float*, float*, ...)* bitcast (void (%struct.BPNN*, float*, float*)* @bpnn_train_kernel to i32 (%struct.BPNN*, float*, float*, ...)*)(%struct.BPNN* %9, float* %out_err, float* %hid_err), !llfi_index !1610
  %11 = load %struct.BPNN** %net, align 8, !llfi_index !1611
  call void (%struct.BPNN*, ...)* bitcast (void (%struct.BPNN*)* @bpnn_free to void (%struct.BPNN*, ...)*)(%struct.BPNN* %11), !llfi_index !1612
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str214, i32 0, i32 0)), !llfi_index !1613
  %13 = load i32* %1, !llfi_index !1614
  ret i32 %13, !llfi_index !1615
}

; Function Attrs: nounwind uwtable
define i32 @setup(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !1616
  %2 = alloca i32, align 4, !llfi_index !1617
  %3 = alloca i8**, align 8, !llfi_index !1618
  %seed = alloca i32, align 4, !llfi_index !1619
  store i32 %argc, i32* %2, align 4, !llfi_index !1620
  store i8** %argv, i8*** %3, align 8, !llfi_index !1621
  %4 = load i32* %2, align 4, !llfi_index !1622
  %5 = icmp ne i32 %4, 2, !llfi_index !1623
  br i1 %5, label %6, label %9, !llfi_index !1624

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !1625
  %8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([41 x i8]* @.str315, i32 0, i32 0)), !llfi_index !1626
  call void @exit(i32 0) #6, !llfi_index !1627
  unreachable, !llfi_index !1628

; <label>:9                                       ; preds = %0
  %10 = load i8*** %3, align 8, !llfi_index !1629
  %11 = getelementptr inbounds i8** %10, i64 1, !llfi_index !1630
  %12 = load i8** %11, align 8, !llfi_index !1631
  %13 = call i32 @atoi(i8* %12) #7, !llfi_index !1632
  store i32 %13, i32* @layer_size, align 4, !llfi_index !1633
  store i32 7, i32* %seed, align 4, !llfi_index !1634
  %14 = load i32* %seed, align 4, !llfi_index !1635
  call void (i32, ...)* bitcast (void (i32)* @bpnn_initialize to void (i32, ...)*)(i32 %14), !llfi_index !1636
  %15 = call i32 @backprop_face(), !llfi_index !1637
  call void @exit(i32 0) #6, !llfi_index !1638
  unreachable, !llfi_index !1639
                                                  ; No predecessors!
  %17 = load i32* %1, !llfi_index !1640
  ret i32 %17, !llfi_index !1641
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind uwtable
define i32 @load(%struct.BPNN* %net) #0 {
  %1 = alloca i32, align 4, !llfi_index !1642
  %2 = alloca %struct.BPNN*, align 8, !llfi_index !1643
  %units = alloca float*, align 8, !llfi_index !1644
  %nr = alloca i32, align 4, !llfi_index !1645
  %nc = alloca i32, align 4, !llfi_index !1646
  %imgsize = alloca i32, align 4, !llfi_index !1647
  %i = alloca i32, align 4, !llfi_index !1648
  %j = alloca i32, align 4, !llfi_index !1649
  %k = alloca i32, align 4, !llfi_index !1650
  store %struct.BPNN* %net, %struct.BPNN** %2, align 8, !llfi_index !1651
  %3 = load i32* @layer_size, align 4, !llfi_index !1652
  store i32 %3, i32* %nr, align 4, !llfi_index !1653
  %4 = load i32* %nr, align 4, !llfi_index !1654
  %5 = load i32* %nc, align 4, !llfi_index !1655
  %6 = mul nsw i32 %4, %5, !llfi_index !1656
  store i32 %6, i32* %imgsize, align 4, !llfi_index !1657
  %7 = load %struct.BPNN** %2, align 8, !llfi_index !1658
  %8 = getelementptr inbounds %struct.BPNN* %7, i32 0, i32 3, !llfi_index !1659
  %9 = load float** %8, align 8, !llfi_index !1660
  store float* %9, float** %units, align 8, !llfi_index !1661
  store i32 1, i32* %k, align 4, !llfi_index !1662
  store i32 0, i32* %i, align 4, !llfi_index !1663
  br label %10, !llfi_index !1664

; <label>:10                                      ; preds = %24, %0
  %11 = load i32* %i, align 4, !llfi_index !1665
  %12 = load i32* %nr, align 4, !llfi_index !1666
  %13 = icmp slt i32 %11, %12, !llfi_index !1667
  br i1 %13, label %14, label %27, !llfi_index !1668

; <label>:14                                      ; preds = %10
  %15 = call i32 @rand() #5, !llfi_index !1669
  %16 = sitofp i32 %15 to float, !llfi_index !1670
  %17 = fdiv float %16, 0x41E0000000000000, !llfi_index !1671
  %18 = load i32* %k, align 4, !llfi_index !1672
  %19 = sext i32 %18 to i64, !llfi_index !1673
  %20 = load float** %units, align 8, !llfi_index !1674
  %21 = getelementptr inbounds float* %20, i64 %19, !llfi_index !1675
  store float %17, float* %21, align 4, !llfi_index !1676
  %22 = load i32* %k, align 4, !llfi_index !1677
  %23 = add nsw i32 %22, 1, !llfi_index !1678
  store i32 %23, i32* %k, align 4, !llfi_index !1679
  br label %24, !llfi_index !1680

; <label>:24                                      ; preds = %14
  %25 = load i32* %i, align 4, !llfi_index !1681
  %26 = add nsw i32 %25, 1, !llfi_index !1682
  store i32 %26, i32* %i, align 4, !llfi_index !1683
  br label %10, !llfi_index !1684

; <label>:27                                      ; preds = %10
  %28 = load i32* %1, !llfi_index !1685
  ret i32 %28, !llfi_index !1686
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0}

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
!913 = metadata !{i64 913}
!914 = metadata !{i64 914}
!915 = metadata !{i64 915}
!916 = metadata !{i64 916}
!917 = metadata !{i64 917}
!918 = metadata !{i64 918}
!919 = metadata !{i64 919}
!920 = metadata !{i64 920}
!921 = metadata !{i64 921}
!922 = metadata !{i64 922}
!923 = metadata !{i64 923}
!924 = metadata !{i64 924}
!925 = metadata !{i64 925}
!926 = metadata !{i64 926}
!927 = metadata !{i64 927}
!928 = metadata !{i64 928}
!929 = metadata !{i64 929}
!930 = metadata !{i64 930}
!931 = metadata !{i64 931}
!932 = metadata !{i64 932}
!933 = metadata !{i64 933}
!934 = metadata !{i64 934}
!935 = metadata !{i64 935}
!936 = metadata !{i64 936}
!937 = metadata !{i64 937}
!938 = metadata !{i64 938}
!939 = metadata !{i64 939}
!940 = metadata !{i64 940}
!941 = metadata !{i64 941}
!942 = metadata !{i64 942}
!943 = metadata !{i64 943}
!944 = metadata !{i64 944}
!945 = metadata !{i64 945}
!946 = metadata !{i64 946}
!947 = metadata !{i64 947}
!948 = metadata !{i64 948}
!949 = metadata !{i64 949}
!950 = metadata !{i64 950}
!951 = metadata !{i64 951}
!952 = metadata !{i64 952}
!953 = metadata !{i64 953}
!954 = metadata !{i64 954}
!955 = metadata !{i64 955}
!956 = metadata !{i64 956}
!957 = metadata !{i64 957}
!958 = metadata !{i64 958}
!959 = metadata !{i64 959}
!960 = metadata !{i64 960}
!961 = metadata !{i64 961}
!962 = metadata !{i64 962}
!963 = metadata !{i64 963}
!964 = metadata !{i64 964}
!965 = metadata !{i64 965}
!966 = metadata !{i64 966}
!967 = metadata !{i64 967}
!968 = metadata !{i64 968}
!969 = metadata !{i64 969}
!970 = metadata !{i64 970}
!971 = metadata !{i64 971}
!972 = metadata !{i64 972}
!973 = metadata !{i64 973}
!974 = metadata !{i64 974}
!975 = metadata !{i64 975}
!976 = metadata !{i64 976}
!977 = metadata !{i64 977}
!978 = metadata !{i64 978}
!979 = metadata !{i64 979}
!980 = metadata !{i64 980}
!981 = metadata !{i64 981}
!982 = metadata !{i64 982}
!983 = metadata !{i64 983}
!984 = metadata !{i64 984}
!985 = metadata !{i64 985}
!986 = metadata !{i64 986}
!987 = metadata !{i64 987}
!988 = metadata !{i64 988}
!989 = metadata !{i64 989}
!990 = metadata !{i64 990}
!991 = metadata !{i64 991}
!992 = metadata !{i64 992}
!993 = metadata !{i64 993}
!994 = metadata !{i64 994}
!995 = metadata !{i64 995}
!996 = metadata !{i64 996}
!997 = metadata !{i64 997}
!998 = metadata !{i64 998}
!999 = metadata !{i64 999}
!1000 = metadata !{i64 1000}
!1001 = metadata !{i64 1001}
!1002 = metadata !{i64 1002}
!1003 = metadata !{i64 1003}
!1004 = metadata !{i64 1004}
!1005 = metadata !{i64 1005}
!1006 = metadata !{i64 1006}
!1007 = metadata !{i64 1007}
!1008 = metadata !{i64 1008}
!1009 = metadata !{i64 1009}
!1010 = metadata !{i64 1010}
!1011 = metadata !{i64 1011}
!1012 = metadata !{i64 1012}
!1013 = metadata !{i64 1013}
!1014 = metadata !{i64 1014}
!1015 = metadata !{i64 1015}
!1016 = metadata !{i64 1016}
!1017 = metadata !{i64 1017}
!1018 = metadata !{i64 1018}
!1019 = metadata !{i64 1019}
!1020 = metadata !{i64 1020}
!1021 = metadata !{i64 1021}
!1022 = metadata !{i64 1022}
!1023 = metadata !{i64 1023}
!1024 = metadata !{i64 1024}
!1025 = metadata !{i64 1025}
!1026 = metadata !{i64 1026}
!1027 = metadata !{i64 1027}
!1028 = metadata !{i64 1028}
!1029 = metadata !{i64 1029}
!1030 = metadata !{i64 1030}
!1031 = metadata !{i64 1031}
!1032 = metadata !{i64 1032}
!1033 = metadata !{i64 1033}
!1034 = metadata !{i64 1034}
!1035 = metadata !{i64 1035}
!1036 = metadata !{i64 1036}
!1037 = metadata !{i64 1037}
!1038 = metadata !{i64 1038}
!1039 = metadata !{i64 1039}
!1040 = metadata !{i64 1040}
!1041 = metadata !{i64 1041}
!1042 = metadata !{i64 1042}
!1043 = metadata !{i64 1043}
!1044 = metadata !{i64 1044}
!1045 = metadata !{i64 1045}
!1046 = metadata !{i64 1046}
!1047 = metadata !{i64 1047}
!1048 = metadata !{i64 1048}
!1049 = metadata !{i64 1049}
!1050 = metadata !{i64 1050}
!1051 = metadata !{i64 1051}
!1052 = metadata !{i64 1052}
!1053 = metadata !{i64 1053}
!1054 = metadata !{i64 1054}
!1055 = metadata !{i64 1055}
!1056 = metadata !{i64 1056}
!1057 = metadata !{i64 1057}
!1058 = metadata !{i64 1058}
!1059 = metadata !{i64 1059}
!1060 = metadata !{i64 1060}
!1061 = metadata !{i64 1061}
!1062 = metadata !{i64 1062}
!1063 = metadata !{i64 1063}
!1064 = metadata !{i64 1064}
!1065 = metadata !{i64 1065}
!1066 = metadata !{i64 1066}
!1067 = metadata !{i64 1067}
!1068 = metadata !{i64 1068}
!1069 = metadata !{i64 1069}
!1070 = metadata !{i64 1070}
!1071 = metadata !{i64 1071}
!1072 = metadata !{i64 1072}
!1073 = metadata !{i64 1073}
!1074 = metadata !{i64 1074}
!1075 = metadata !{i64 1075}
!1076 = metadata !{i64 1076}
!1077 = metadata !{i64 1077}
!1078 = metadata !{i64 1078}
!1079 = metadata !{i64 1079}
!1080 = metadata !{i64 1080}
!1081 = metadata !{i64 1081}
!1082 = metadata !{i64 1082}
!1083 = metadata !{i64 1083}
!1084 = metadata !{i64 1084}
!1085 = metadata !{i64 1085}
!1086 = metadata !{i64 1086}
!1087 = metadata !{i64 1087}
!1088 = metadata !{i64 1088}
!1089 = metadata !{i64 1089}
!1090 = metadata !{i64 1090}
!1091 = metadata !{i64 1091}
!1092 = metadata !{i64 1092}
!1093 = metadata !{i64 1093}
!1094 = metadata !{i64 1094}
!1095 = metadata !{i64 1095}
!1096 = metadata !{i64 1096}
!1097 = metadata !{i64 1097}
!1098 = metadata !{i64 1098}
!1099 = metadata !{i64 1099}
!1100 = metadata !{i64 1100}
!1101 = metadata !{i64 1101}
!1102 = metadata !{i64 1102}
!1103 = metadata !{i64 1103}
!1104 = metadata !{i64 1104}
!1105 = metadata !{i64 1105}
!1106 = metadata !{i64 1106}
!1107 = metadata !{i64 1107}
!1108 = metadata !{i64 1108}
!1109 = metadata !{i64 1109}
!1110 = metadata !{i64 1110}
!1111 = metadata !{i64 1111}
!1112 = metadata !{i64 1112}
!1113 = metadata !{i64 1113}
!1114 = metadata !{i64 1114}
!1115 = metadata !{i64 1115}
!1116 = metadata !{i64 1116}
!1117 = metadata !{i64 1117}
!1118 = metadata !{i64 1118}
!1119 = metadata !{i64 1119}
!1120 = metadata !{i64 1120}
!1121 = metadata !{i64 1121}
!1122 = metadata !{i64 1122}
!1123 = metadata !{i64 1123}
!1124 = metadata !{i64 1124}
!1125 = metadata !{i64 1125}
!1126 = metadata !{i64 1126}
!1127 = metadata !{i64 1127}
!1128 = metadata !{i64 1128}
!1129 = metadata !{i64 1129}
!1130 = metadata !{i64 1130}
!1131 = metadata !{i64 1131}
!1132 = metadata !{i64 1132}
!1133 = metadata !{i64 1133}
!1134 = metadata !{i64 1134}
!1135 = metadata !{i64 1135}
!1136 = metadata !{i64 1136}
!1137 = metadata !{i64 1137}
!1138 = metadata !{i64 1138}
!1139 = metadata !{i64 1139}
!1140 = metadata !{i64 1140}
!1141 = metadata !{i64 1141}
!1142 = metadata !{i64 1142}
!1143 = metadata !{i64 1143}
!1144 = metadata !{i64 1144}
!1145 = metadata !{i64 1145}
!1146 = metadata !{i64 1146}
!1147 = metadata !{i64 1147}
!1148 = metadata !{i64 1148}
!1149 = metadata !{i64 1149}
!1150 = metadata !{i64 1150}
!1151 = metadata !{i64 1151}
!1152 = metadata !{i64 1152}
!1153 = metadata !{i64 1153}
!1154 = metadata !{i64 1154}
!1155 = metadata !{i64 1155}
!1156 = metadata !{i64 1156}
!1157 = metadata !{i64 1157}
!1158 = metadata !{i64 1158}
!1159 = metadata !{i64 1159}
!1160 = metadata !{i64 1160}
!1161 = metadata !{i64 1161}
!1162 = metadata !{i64 1162}
!1163 = metadata !{i64 1163}
!1164 = metadata !{i64 1164}
!1165 = metadata !{i64 1165}
!1166 = metadata !{i64 1166}
!1167 = metadata !{i64 1167}
!1168 = metadata !{i64 1168}
!1169 = metadata !{i64 1169}
!1170 = metadata !{i64 1170}
!1171 = metadata !{i64 1171}
!1172 = metadata !{i64 1172}
!1173 = metadata !{i64 1173}
!1174 = metadata !{i64 1174}
!1175 = metadata !{i64 1175}
!1176 = metadata !{i64 1176}
!1177 = metadata !{i64 1177}
!1178 = metadata !{i64 1178}
!1179 = metadata !{i64 1179}
!1180 = metadata !{i64 1180}
!1181 = metadata !{i64 1181}
!1182 = metadata !{i64 1182}
!1183 = metadata !{i64 1183}
!1184 = metadata !{i64 1184}
!1185 = metadata !{i64 1185}
!1186 = metadata !{i64 1186}
!1187 = metadata !{i64 1187}
!1188 = metadata !{i64 1188}
!1189 = metadata !{i64 1189}
!1190 = metadata !{i64 1190}
!1191 = metadata !{i64 1191}
!1192 = metadata !{i64 1192}
!1193 = metadata !{i64 1193}
!1194 = metadata !{i64 1194}
!1195 = metadata !{i64 1195}
!1196 = metadata !{i64 1196}
!1197 = metadata !{i64 1197}
!1198 = metadata !{i64 1198}
!1199 = metadata !{i64 1199}
!1200 = metadata !{i64 1200}
!1201 = metadata !{i64 1201}
!1202 = metadata !{i64 1202}
!1203 = metadata !{i64 1203}
!1204 = metadata !{i64 1204}
!1205 = metadata !{i64 1205}
!1206 = metadata !{i64 1206}
!1207 = metadata !{i64 1207}
!1208 = metadata !{i64 1208}
!1209 = metadata !{i64 1209}
!1210 = metadata !{i64 1210}
!1211 = metadata !{i64 1211}
!1212 = metadata !{i64 1212}
!1213 = metadata !{i64 1213}
!1214 = metadata !{i64 1214}
!1215 = metadata !{i64 1215}
!1216 = metadata !{i64 1216}
!1217 = metadata !{i64 1217}
!1218 = metadata !{i64 1218}
!1219 = metadata !{i64 1219}
!1220 = metadata !{i64 1220}
!1221 = metadata !{i64 1221}
!1222 = metadata !{i64 1222}
!1223 = metadata !{i64 1223}
!1224 = metadata !{i64 1224}
!1225 = metadata !{i64 1225}
!1226 = metadata !{i64 1226}
!1227 = metadata !{i64 1227}
!1228 = metadata !{i64 1228}
!1229 = metadata !{i64 1229}
!1230 = metadata !{i64 1230}
!1231 = metadata !{i64 1231}
!1232 = metadata !{i64 1232}
!1233 = metadata !{i64 1233}
!1234 = metadata !{i64 1234}
!1235 = metadata !{i64 1235}
!1236 = metadata !{i64 1236}
!1237 = metadata !{i64 1237}
!1238 = metadata !{i64 1238}
!1239 = metadata !{i64 1239}
!1240 = metadata !{i64 1240}
!1241 = metadata !{i64 1241}
!1242 = metadata !{i64 1242}
!1243 = metadata !{i64 1243}
!1244 = metadata !{i64 1244}
!1245 = metadata !{i64 1245}
!1246 = metadata !{i64 1246}
!1247 = metadata !{i64 1247}
!1248 = metadata !{i64 1248}
!1249 = metadata !{i64 1249}
!1250 = metadata !{i64 1250}
!1251 = metadata !{i64 1251}
!1252 = metadata !{i64 1252}
!1253 = metadata !{i64 1253}
!1254 = metadata !{i64 1254}
!1255 = metadata !{i64 1255}
!1256 = metadata !{i64 1256}
!1257 = metadata !{i64 1257}
!1258 = metadata !{i64 1258}
!1259 = metadata !{i64 1259}
!1260 = metadata !{i64 1260}
!1261 = metadata !{i64 1261}
!1262 = metadata !{i64 1262}
!1263 = metadata !{i64 1263}
!1264 = metadata !{i64 1264}
!1265 = metadata !{i64 1265}
!1266 = metadata !{i64 1266}
!1267 = metadata !{i64 1267}
!1268 = metadata !{i64 1268}
!1269 = metadata !{i64 1269}
!1270 = metadata !{i64 1270}
!1271 = metadata !{i64 1271}
!1272 = metadata !{i64 1272}
!1273 = metadata !{i64 1273}
!1274 = metadata !{i64 1274}
!1275 = metadata !{i64 1275}
!1276 = metadata !{i64 1276}
!1277 = metadata !{i64 1277}
!1278 = metadata !{i64 1278}
!1279 = metadata !{i64 1279}
!1280 = metadata !{i64 1280}
!1281 = metadata !{i64 1281}
!1282 = metadata !{i64 1282}
!1283 = metadata !{i64 1283}
!1284 = metadata !{i64 1284}
!1285 = metadata !{i64 1285}
!1286 = metadata !{i64 1286}
!1287 = metadata !{i64 1287}
!1288 = metadata !{i64 1288}
!1289 = metadata !{i64 1289}
!1290 = metadata !{i64 1290}
!1291 = metadata !{i64 1291}
!1292 = metadata !{i64 1292}
!1293 = metadata !{i64 1293}
!1294 = metadata !{i64 1294}
!1295 = metadata !{i64 1295}
!1296 = metadata !{i64 1296}
!1297 = metadata !{i64 1297}
!1298 = metadata !{i64 1298}
!1299 = metadata !{i64 1299}
!1300 = metadata !{i64 1300}
!1301 = metadata !{i64 1301}
!1302 = metadata !{i64 1302}
!1303 = metadata !{i64 1303}
!1304 = metadata !{i64 1304}
!1305 = metadata !{i64 1305}
!1306 = metadata !{i64 1306}
!1307 = metadata !{i64 1307}
!1308 = metadata !{i64 1308}
!1309 = metadata !{i64 1309}
!1310 = metadata !{i64 1310}
!1311 = metadata !{i64 1311}
!1312 = metadata !{i64 1312}
!1313 = metadata !{i64 1313}
!1314 = metadata !{i64 1314}
!1315 = metadata !{i64 1315}
!1316 = metadata !{i64 1316}
!1317 = metadata !{i64 1317}
!1318 = metadata !{i64 1318}
!1319 = metadata !{i64 1319}
!1320 = metadata !{i64 1320}
!1321 = metadata !{i64 1321}
!1322 = metadata !{i64 1322}
!1323 = metadata !{i64 1323}
!1324 = metadata !{i64 1324}
!1325 = metadata !{i64 1325}
!1326 = metadata !{i64 1326}
!1327 = metadata !{i64 1327}
!1328 = metadata !{i64 1328}
!1329 = metadata !{i64 1329}
!1330 = metadata !{i64 1330}
!1331 = metadata !{i64 1331}
!1332 = metadata !{i64 1332}
!1333 = metadata !{i64 1333}
!1334 = metadata !{i64 1334}
!1335 = metadata !{i64 1335}
!1336 = metadata !{i64 1336}
!1337 = metadata !{i64 1337}
!1338 = metadata !{i64 1338}
!1339 = metadata !{i64 1339}
!1340 = metadata !{i64 1340}
!1341 = metadata !{i64 1341}
!1342 = metadata !{i64 1342}
!1343 = metadata !{i64 1343}
!1344 = metadata !{i64 1344}
!1345 = metadata !{i64 1345}
!1346 = metadata !{i64 1346}
!1347 = metadata !{i64 1347}
!1348 = metadata !{i64 1348}
!1349 = metadata !{i64 1349}
!1350 = metadata !{i64 1350}
!1351 = metadata !{i64 1351}
!1352 = metadata !{i64 1352}
!1353 = metadata !{i64 1353}
!1354 = metadata !{i64 1354}
!1355 = metadata !{i64 1355}
!1356 = metadata !{i64 1356}
!1357 = metadata !{i64 1357}
!1358 = metadata !{i64 1358}
!1359 = metadata !{i64 1359}
!1360 = metadata !{i64 1360}
!1361 = metadata !{i64 1361}
!1362 = metadata !{i64 1362}
!1363 = metadata !{i64 1363}
!1364 = metadata !{i64 1364}
!1365 = metadata !{i64 1365}
!1366 = metadata !{i64 1366}
!1367 = metadata !{i64 1367}
!1368 = metadata !{i64 1368}
!1369 = metadata !{i64 1369}
!1370 = metadata !{i64 1370}
!1371 = metadata !{i64 1371}
!1372 = metadata !{i64 1372}
!1373 = metadata !{i64 1373}
!1374 = metadata !{i64 1374}
!1375 = metadata !{i64 1375}
!1376 = metadata !{i64 1376}
!1377 = metadata !{i64 1377}
!1378 = metadata !{i64 1378}
!1379 = metadata !{i64 1379}
!1380 = metadata !{i64 1380}
!1381 = metadata !{i64 1381}
!1382 = metadata !{i64 1382}
!1383 = metadata !{i64 1383}
!1384 = metadata !{i64 1384}
!1385 = metadata !{i64 1385}
!1386 = metadata !{i64 1386}
!1387 = metadata !{i64 1387}
!1388 = metadata !{i64 1388}
!1389 = metadata !{i64 1389}
!1390 = metadata !{i64 1390}
!1391 = metadata !{i64 1391}
!1392 = metadata !{i64 1392}
!1393 = metadata !{i64 1393}
!1394 = metadata !{i64 1394}
!1395 = metadata !{i64 1395}
!1396 = metadata !{i64 1396}
!1397 = metadata !{i64 1397}
!1398 = metadata !{i64 1398}
!1399 = metadata !{i64 1399}
!1400 = metadata !{i64 1400}
!1401 = metadata !{i64 1401}
!1402 = metadata !{i64 1402}
!1403 = metadata !{i64 1403}
!1404 = metadata !{i64 1404}
!1405 = metadata !{i64 1405}
!1406 = metadata !{i64 1406}
!1407 = metadata !{i64 1407}
!1408 = metadata !{i64 1408}
!1409 = metadata !{i64 1409}
!1410 = metadata !{i64 1410}
!1411 = metadata !{i64 1411}
!1412 = metadata !{i64 1412}
!1413 = metadata !{i64 1413}
!1414 = metadata !{i64 1414}
!1415 = metadata !{i64 1415}
!1416 = metadata !{i64 1416}
!1417 = metadata !{i64 1417}
!1418 = metadata !{i64 1418}
!1419 = metadata !{i64 1419}
!1420 = metadata !{i64 1420}
!1421 = metadata !{i64 1421}
!1422 = metadata !{i64 1422}
!1423 = metadata !{i64 1423}
!1424 = metadata !{i64 1424}
!1425 = metadata !{i64 1425}
!1426 = metadata !{i64 1426}
!1427 = metadata !{i64 1427}
!1428 = metadata !{i64 1428}
!1429 = metadata !{i64 1429}
!1430 = metadata !{i64 1430}
!1431 = metadata !{i64 1431}
!1432 = metadata !{i64 1432}
!1433 = metadata !{i64 1433}
!1434 = metadata !{i64 1434}
!1435 = metadata !{i64 1435}
!1436 = metadata !{i64 1436}
!1437 = metadata !{i64 1437}
!1438 = metadata !{i64 1438}
!1439 = metadata !{i64 1439}
!1440 = metadata !{i64 1440}
!1441 = metadata !{i64 1441}
!1442 = metadata !{i64 1442}
!1443 = metadata !{i64 1443}
!1444 = metadata !{i64 1444}
!1445 = metadata !{i64 1445}
!1446 = metadata !{i64 1446}
!1447 = metadata !{i64 1447}
!1448 = metadata !{i64 1448}
!1449 = metadata !{i64 1449}
!1450 = metadata !{i64 1450}
!1451 = metadata !{i64 1451}
!1452 = metadata !{i64 1452}
!1453 = metadata !{i64 1453}
!1454 = metadata !{i64 1454}
!1455 = metadata !{i64 1455}
!1456 = metadata !{i64 1456}
!1457 = metadata !{i64 1457}
!1458 = metadata !{i64 1458}
!1459 = metadata !{i64 1459}
!1460 = metadata !{i64 1460}
!1461 = metadata !{i64 1461}
!1462 = metadata !{i64 1462}
!1463 = metadata !{i64 1463}
!1464 = metadata !{i64 1464}
!1465 = metadata !{i64 1465}
!1466 = metadata !{i64 1466}
!1467 = metadata !{i64 1467}
!1468 = metadata !{i64 1468}
!1469 = metadata !{i64 1469}
!1470 = metadata !{i64 1470}
!1471 = metadata !{i64 1471}
!1472 = metadata !{i64 1472}
!1473 = metadata !{i64 1473}
!1474 = metadata !{i64 1474}
!1475 = metadata !{i64 1475}
!1476 = metadata !{i64 1476}
!1477 = metadata !{i64 1477}
!1478 = metadata !{i64 1478}
!1479 = metadata !{i64 1479}
!1480 = metadata !{i64 1480}
!1481 = metadata !{i64 1481}
!1482 = metadata !{i64 1482}
!1483 = metadata !{i64 1483}
!1484 = metadata !{i64 1484}
!1485 = metadata !{i64 1485}
!1486 = metadata !{i64 1486}
!1487 = metadata !{i64 1487}
!1488 = metadata !{i64 1488}
!1489 = metadata !{i64 1489}
!1490 = metadata !{i64 1490}
!1491 = metadata !{i64 1491}
!1492 = metadata !{i64 1492}
!1493 = metadata !{i64 1493}
!1494 = metadata !{i64 1494}
!1495 = metadata !{i64 1495}
!1496 = metadata !{i64 1496}
!1497 = metadata !{i64 1497}
!1498 = metadata !{i64 1498}
!1499 = metadata !{i64 1499}
!1500 = metadata !{i64 1500}
!1501 = metadata !{i64 1501}
!1502 = metadata !{i64 1502}
!1503 = metadata !{i64 1503}
!1504 = metadata !{i64 1504}
!1505 = metadata !{i64 1505}
!1506 = metadata !{i64 1506}
!1507 = metadata !{i64 1507}
!1508 = metadata !{i64 1508}
!1509 = metadata !{i64 1509}
!1510 = metadata !{i64 1510}
!1511 = metadata !{i64 1511}
!1512 = metadata !{i64 1512}
!1513 = metadata !{i64 1513}
!1514 = metadata !{i64 1514}
!1515 = metadata !{i64 1515}
!1516 = metadata !{i64 1516}
!1517 = metadata !{i64 1517}
!1518 = metadata !{i64 1518}
!1519 = metadata !{i64 1519}
!1520 = metadata !{i64 1520}
!1521 = metadata !{i64 1521}
!1522 = metadata !{i64 1522}
!1523 = metadata !{i64 1523}
!1524 = metadata !{i64 1524}
!1525 = metadata !{i64 1525}
!1526 = metadata !{i64 1526}
!1527 = metadata !{i64 1527}
!1528 = metadata !{i64 1528}
!1529 = metadata !{i64 1529}
!1530 = metadata !{i64 1530}
!1531 = metadata !{i64 1531}
!1532 = metadata !{i64 1532}
!1533 = metadata !{i64 1533}
!1534 = metadata !{i64 1534}
!1535 = metadata !{i64 1535}
!1536 = metadata !{i64 1536}
!1537 = metadata !{i64 1537}
!1538 = metadata !{i64 1538}
!1539 = metadata !{i64 1539}
!1540 = metadata !{i64 1540}
!1541 = metadata !{i64 1541}
!1542 = metadata !{i64 1542}
!1543 = metadata !{i64 1543}
!1544 = metadata !{i64 1544}
!1545 = metadata !{i64 1545}
!1546 = metadata !{i64 1546}
!1547 = metadata !{i64 1547}
!1548 = metadata !{i64 1548}
!1549 = metadata !{i64 1549}
!1550 = metadata !{i64 1550}
!1551 = metadata !{i64 1551}
!1552 = metadata !{i64 1552}
!1553 = metadata !{i64 1553}
!1554 = metadata !{i64 1554}
!1555 = metadata !{i64 1555}
!1556 = metadata !{i64 1556}
!1557 = metadata !{i64 1557}
!1558 = metadata !{i64 1558}
!1559 = metadata !{i64 1559}
!1560 = metadata !{i64 1560}
!1561 = metadata !{i64 1561}
!1562 = metadata !{i64 1562}
!1563 = metadata !{i64 1563}
!1564 = metadata !{i64 1564}
!1565 = metadata !{i64 1565}
!1566 = metadata !{i64 1566}
!1567 = metadata !{i64 1567}
!1568 = metadata !{i64 1568}
!1569 = metadata !{i64 1569}
!1570 = metadata !{i64 1570}
!1571 = metadata !{i64 1571}
!1572 = metadata !{i64 1572}
!1573 = metadata !{i64 1573}
!1574 = metadata !{i64 1574}
!1575 = metadata !{i64 1575}
!1576 = metadata !{i64 1576}
!1577 = metadata !{i64 1577}
!1578 = metadata !{i64 1578}
!1579 = metadata !{i64 1579}
!1580 = metadata !{i64 1580}
!1581 = metadata !{i64 1581}
!1582 = metadata !{i64 1582}
!1583 = metadata !{i64 1583}
!1584 = metadata !{i64 1584}
!1585 = metadata !{i64 1585}
!1586 = metadata !{i64 1586}
!1587 = metadata !{i64 1587}
!1588 = metadata !{i64 1588}
!1589 = metadata !{i64 1589}
!1590 = metadata !{i64 1590}
!1591 = metadata !{i64 1591}
!1592 = metadata !{i64 1592}
!1593 = metadata !{i64 1593}
!1594 = metadata !{i64 1594}
!1595 = metadata !{i64 1595}
!1596 = metadata !{i64 1596}
!1597 = metadata !{i64 1597}
!1598 = metadata !{i64 1598}
!1599 = metadata !{i64 1599}
!1600 = metadata !{i64 1600}
!1601 = metadata !{i64 1601}
!1602 = metadata !{i64 1602}
!1603 = metadata !{i64 1603}
!1604 = metadata !{i64 1604}
!1605 = metadata !{i64 1605}
!1606 = metadata !{i64 1606}
!1607 = metadata !{i64 1607}
!1608 = metadata !{i64 1608}
!1609 = metadata !{i64 1609}
!1610 = metadata !{i64 1610}
!1611 = metadata !{i64 1611}
!1612 = metadata !{i64 1612}
!1613 = metadata !{i64 1613}
!1614 = metadata !{i64 1614}
!1615 = metadata !{i64 1615}
!1616 = metadata !{i64 1616}
!1617 = metadata !{i64 1617}
!1618 = metadata !{i64 1618}
!1619 = metadata !{i64 1619}
!1620 = metadata !{i64 1620}
!1621 = metadata !{i64 1621}
!1622 = metadata !{i64 1622}
!1623 = metadata !{i64 1623}
!1624 = metadata !{i64 1624}
!1625 = metadata !{i64 1625}
!1626 = metadata !{i64 1626}
!1627 = metadata !{i64 1627}
!1628 = metadata !{i64 1628}
!1629 = metadata !{i64 1629}
!1630 = metadata !{i64 1630}
!1631 = metadata !{i64 1631}
!1632 = metadata !{i64 1632}
!1633 = metadata !{i64 1633}
!1634 = metadata !{i64 1634}
!1635 = metadata !{i64 1635}
!1636 = metadata !{i64 1636}
!1637 = metadata !{i64 1637}
!1638 = metadata !{i64 1638}
!1639 = metadata !{i64 1639}
!1640 = metadata !{i64 1640}
!1641 = metadata !{i64 1641}
!1642 = metadata !{i64 1642}
!1643 = metadata !{i64 1643}
!1644 = metadata !{i64 1644}
!1645 = metadata !{i64 1645}
!1646 = metadata !{i64 1646}
!1647 = metadata !{i64 1647}
!1648 = metadata !{i64 1648}
!1649 = metadata !{i64 1649}
!1650 = metadata !{i64 1650}
!1651 = metadata !{i64 1651}
!1652 = metadata !{i64 1652}
!1653 = metadata !{i64 1653}
!1654 = metadata !{i64 1654}
!1655 = metadata !{i64 1655}
!1656 = metadata !{i64 1656}
!1657 = metadata !{i64 1657}
!1658 = metadata !{i64 1658}
!1659 = metadata !{i64 1659}
!1660 = metadata !{i64 1660}
!1661 = metadata !{i64 1661}
!1662 = metadata !{i64 1662}
!1663 = metadata !{i64 1663}
!1664 = metadata !{i64 1664}
!1665 = metadata !{i64 1665}
!1666 = metadata !{i64 1666}
!1667 = metadata !{i64 1667}
!1668 = metadata !{i64 1668}
!1669 = metadata !{i64 1669}
!1670 = metadata !{i64 1670}
!1671 = metadata !{i64 1671}
!1672 = metadata !{i64 1672}
!1673 = metadata !{i64 1673}
!1674 = metadata !{i64 1674}
!1675 = metadata !{i64 1675}
!1676 = metadata !{i64 1676}
!1677 = metadata !{i64 1677}
!1678 = metadata !{i64 1678}
!1679 = metadata !{i64 1679}
!1680 = metadata !{i64 1680}
!1681 = metadata !{i64 1681}
!1682 = metadata !{i64 1682}
!1683 = metadata !{i64 1683}
!1684 = metadata !{i64 1684}
!1685 = metadata !{i64 1685}
!1686 = metadata !{i64 1686}
