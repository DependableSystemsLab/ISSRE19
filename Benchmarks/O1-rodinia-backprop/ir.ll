; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/rodinia-backprop/fault injection/llfi-O1/backprop.ll'
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
@str = private unnamed_addr constant [48 x i8] c"ALLOC_1D_DBL: Couldn't allocate array of floats\00"
@str11 = private unnamed_addr constant [50 x i8] c"ALLOC_2D_DBL: Couldn't allocate array of dbl ptrs\00"
@str12 = private unnamed_addr constant [46 x i8] c"BPNN_CREATE: Couldn't allocate neural network\00"
@str13 = private unnamed_addr constant [5 x i8] c"Done\00"
@.str11 = private unnamed_addr constant [28 x i8] c"Performing CPU computation\0A\00", align 1
@str14 = private unnamed_addr constant [27 x i8] c"Performing CPU computation\00"
@layer_size = global i32 0, align 4
@.str15 = private unnamed_addr constant [23 x i8] c"Input layer size : %d\0A\00", align 1
@.str116 = private unnamed_addr constant [26 x i8] c"Starting training kernel\0A\00", align 1
@.str217 = private unnamed_addr constant [15 x i8] c"Training done\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str318 = private unnamed_addr constant [41 x i8] c"usage: backprop <num of input elements>\0A\00", align 1
@str19 = private unnamed_addr constant [25 x i8] c"Starting training kernel\00"
@str4 = private unnamed_addr constant [14 x i8] c"Training done\00"

; Function Attrs: nounwind uwtable
define float @drnd() #0 {
  %1 = tail call i32 @rand() #3, !llfi_index !1
  %2 = sitofp i32 %1 to float, !llfi_index !2
  %3 = fmul float %2, 0x3E00000000000000, !llfi_index !3
  ret float %3, !llfi_index !4
}

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: nounwind uwtable
define float @dpn1() #0 {
  %1 = tail call float @drnd(), !llfi_index !5
  %2 = fpext float %1 to double, !llfi_index !6
  %3 = fmul double %2, 2.000000e+00, !llfi_index !7
  %4 = fadd double %3, -1.000000e+00, !llfi_index !8
  %5 = fptrunc double %4 to float, !llfi_index !9
  ret float %5, !llfi_index !10
}

; Function Attrs: nounwind uwtable
define float @squash(double) #0 {
  %x = fptrunc double %0 to float, !llfi_index !11
  %2 = fsub float -0.000000e+00, %x, !llfi_index !12
  %3 = fpext float %2 to double, !llfi_index !13
  %4 = tail call double @exp(double %3) #3, !llfi_index !14
  %5 = fadd double %4, 1.000000e+00, !llfi_index !15
  %6 = fdiv double 1.000000e+00, %5, !llfi_index !16
  %7 = fptrunc double %6 to float, !llfi_index !17
  ret float %7, !llfi_index !18
}

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: nounwind uwtable
define noalias float* @alloc_1d_dbl(i32 %n) #0 {
  %1 = shl i32 %n, 2, !llfi_index !19
  %2 = zext i32 %1 to i64, !llfi_index !20
  %3 = tail call noalias i8* @malloc(i64 %2) #3, !llfi_index !21
  %4 = icmp eq i8* %3, null, !llfi_index !22
  br i1 %4, label %5, label %6, !llfi_index !23

; <label>:5                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)), !llfi_index !24
  br label %8, !llfi_index !25

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to float*, !llfi_index !26
  br label %8, !llfi_index !27

; <label>:8                                       ; preds = %6, %5
  %.0 = phi float* [ null, %5 ], [ %7, %6 ], !llfi_index !28
  ret float* %.0, !llfi_index !29
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind uwtable
define noalias float** @alloc_2d_dbl(i32 %m, i32 %n) #0 {
  %1 = shl i32 %m, 3, !llfi_index !30
  %2 = zext i32 %1 to i64, !llfi_index !31
  %3 = tail call noalias i8* @malloc(i64 %2) #3, !llfi_index !32
  %4 = bitcast i8* %3 to float**, !llfi_index !33
  %5 = icmp eq i8* %3, null, !llfi_index !34
  br i1 %5, label %7, label %.preheader, !llfi_index !35

.preheader:                                       ; preds = %0
  %6 = icmp sgt i32 %m, 0, !llfi_index !36
  br i1 %6, label %.lr.ph, label %.loopexit, !llfi_index !37

; <label>:7                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str11, i64 0, i64 0)), !llfi_index !38
  br label %.loopexit, !llfi_index !39

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ], !llfi_index !40
  %8 = tail call float* @alloc_1d_dbl(i32 %n), !llfi_index !41
  %9 = getelementptr inbounds float** %4, i64 %indvars.iv, !llfi_index !42
  store float* %8, float** %9, align 8, !tbaa !43, !llfi_index !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !48
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !49
  %exitcond = icmp eq i32 %lftr.wideiv, %m, !llfi_index !50
  br i1 %exitcond, label %.loopexit, label %.lr.ph, !llfi_index !51

.loopexit:                                        ; preds = %.lr.ph, %7, %.preheader
  %.0 = phi float** [ null, %7 ], [ %4, %.lr.ph ], [ %4, %.preheader ], !llfi_index !52
  ret float** %.0, !llfi_index !53
}

; Function Attrs: nounwind uwtable
define i32 @bpnn_randomize_weights(float** nocapture readonly %w, i32 %m, i32 %n) #0 {
  %1 = icmp slt i32 %m, 0, !llfi_index !54
  br i1 %1, label %._crit_edge3, label %.preheader.lr.ph, !llfi_index !55

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp slt i32 %n, 0, !llfi_index !56
  %3 = add i32 %n, 1, !llfi_index !57
  %4 = add i32 %m, 1, !llfi_index !58
  br label %.preheader, !llfi_index !59

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %._crit_edge ], [ 0, %.preheader.lr.ph ], !llfi_index !60
  br i1 %2, label %._crit_edge, label %.lr.ph, !llfi_index !61

.lr.ph:                                           ; preds = %.preheader
  %5 = getelementptr inbounds float** %w, i64 %indvars.iv4, !llfi_index !62
  br label %6, !llfi_index !63

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %6 ], [ 0, %.lr.ph ], !llfi_index !64
  %7 = tail call i32 @rand() #3, !llfi_index !65
  %8 = sitofp i32 %7 to float, !llfi_index !66
  %9 = fmul float %8, 0x3E00000000000000, !llfi_index !67
  %10 = load float** %5, align 8, !tbaa !43, !llfi_index !68
  %11 = getelementptr inbounds float* %10, i64 %indvars.iv, !llfi_index !69
  store float %9, float* %11, align 4, !tbaa !70, !llfi_index !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !73
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !74
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !llfi_index !75
  br i1 %exitcond, label %._crit_edge, label %6, !llfi_index !76

._crit_edge:                                      ; preds = %6, %.preheader
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !llfi_index !77
  %lftr.wideiv6 = trunc i64 %indvars.iv.next5 to i32, !llfi_index !78
  %exitcond7 = icmp eq i32 %lftr.wideiv6, %4, !llfi_index !79
  br i1 %exitcond7, label %._crit_edge3, label %.preheader, !llfi_index !80

._crit_edge3:                                     ; preds = %._crit_edge, %0
  ret i32 undef, !llfi_index !81
}

; Function Attrs: nounwind uwtable
define i32 @bpnn_randomize_row(float* nocapture %w, i32 %m) #0 {
  %1 = icmp slt i32 %m, 0, !llfi_index !82
  br i1 %1, label %._crit_edge, label %.lr.ph, !llfi_index !83

.lr.ph:                                           ; preds = %0
  %2 = add i32 %m, 1, !llfi_index !84
  br label %3, !llfi_index !85

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %3 ], [ 0, %.lr.ph ], !llfi_index !86
  %4 = getelementptr inbounds float* %w, i64 %indvars.iv, !llfi_index !87
  store float 0x3FB99999A0000000, float* %4, align 4, !tbaa !70, !llfi_index !88
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !89
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !90
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !llfi_index !91
  br i1 %exitcond, label %._crit_edge, label %3, !llfi_index !92

._crit_edge:                                      ; preds = %3, %0
  ret i32 undef, !llfi_index !93
}

; Function Attrs: nounwind uwtable
define i32 @bpnn_zero_weights(float** nocapture readonly %w, i32 %m, i32 %n) #0 {
  %1 = icmp slt i32 %m, 0, !llfi_index !94
  br i1 %1, label %._crit_edge3, label %.preheader.lr.ph, !llfi_index !95

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp slt i32 %n, 0, !llfi_index !96
  %3 = zext i32 %n to i64, !llfi_index !97
  %4 = shl nuw nsw i64 %3, 2, !llfi_index !98
  %5 = add i64 %4, 4, !llfi_index !99
  %6 = add i32 %m, 1, !llfi_index !100
  br label %.preheader, !llfi_index !101

.preheader:                                       ; preds = %10, %.preheader.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %10 ], [ 0, %.preheader.lr.ph ], !llfi_index !102
  br i1 %2, label %10, label %._crit_edge, !llfi_index !103

._crit_edge:                                      ; preds = %.preheader
  %7 = getelementptr inbounds float** %w, i64 %indvars.iv, !llfi_index !104
  %8 = load float** %7, align 8, !tbaa !43, !llfi_index !105
  %9 = bitcast float* %8 to i8*, !llfi_index !106
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 %5, i32 4, i1 false), !llfi_index !107
  br label %10, !llfi_index !108

; <label>:10                                      ; preds = %._crit_edge, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !109
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !110
  %exitcond = icmp eq i32 %lftr.wideiv, %6, !llfi_index !111
  br i1 %exitcond, label %._crit_edge3, label %.preheader, !llfi_index !112

._crit_edge3:                                     ; preds = %10, %0
  ret i32 undef, !llfi_index !113
}

; Function Attrs: nounwind uwtable
define void @bpnn_initialize(i32 %seed) #0 {
  %1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0), i32 %seed) #3, !llfi_index !114
  tail call void @srand(i32 %seed) #3, !llfi_index !115
  ret void, !llfi_index !116
}

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind uwtable
define noalias %struct.BPNN* @bpnn_internal_create(i32 %n_in, i32 %n_hidden, i32 %n_out) #0 {
  %1 = tail call noalias i8* @malloc(i64 96) #3, !llfi_index !117
  %2 = icmp eq i8* %1, null, !llfi_index !118
  br i1 %2, label %3, label %4, !llfi_index !119

; <label>:3                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([46 x i8]* @str12, i64 0, i64 0)), !llfi_index !120
  br label %44, !llfi_index !121

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to %struct.BPNN*, !llfi_index !122
  %6 = bitcast i8* %1 to i32*, !llfi_index !123
  store i32 %n_in, i32* %6, align 4, !tbaa !124, !llfi_index !127
  %7 = getelementptr inbounds i8* %1, i64 4, !llfi_index !128
  %8 = bitcast i8* %7 to i32*, !llfi_index !129
  store i32 %n_hidden, i32* %8, align 4, !tbaa !130, !llfi_index !131
  %9 = getelementptr inbounds i8* %1, i64 8, !llfi_index !132
  %10 = bitcast i8* %9 to i32*, !llfi_index !133
  store i32 %n_out, i32* %10, align 4, !tbaa !134, !llfi_index !135
  %11 = add nsw i32 %n_in, 1, !llfi_index !136
  %12 = tail call float* @alloc_1d_dbl(i32 %11), !llfi_index !137
  %13 = getelementptr inbounds i8* %1, i64 16, !llfi_index !138
  %14 = bitcast i8* %13 to float**, !llfi_index !139
  store float* %12, float** %14, align 8, !tbaa !140, !llfi_index !141
  %15 = add nsw i32 %n_hidden, 1, !llfi_index !142
  %16 = tail call float* @alloc_1d_dbl(i32 %15), !llfi_index !143
  %17 = getelementptr inbounds i8* %1, i64 24, !llfi_index !144
  %18 = bitcast i8* %17 to float**, !llfi_index !145
  store float* %16, float** %18, align 8, !tbaa !146, !llfi_index !147
  %19 = add nsw i32 %n_out, 1, !llfi_index !148
  %20 = tail call float* @alloc_1d_dbl(i32 %19), !llfi_index !149
  %21 = getelementptr inbounds i8* %1, i64 32, !llfi_index !150
  %22 = bitcast i8* %21 to float**, !llfi_index !151
  store float* %20, float** %22, align 8, !tbaa !152, !llfi_index !153
  %23 = tail call float* @alloc_1d_dbl(i32 %15), !llfi_index !154
  %24 = getelementptr inbounds i8* %1, i64 40, !llfi_index !155
  %25 = bitcast i8* %24 to float**, !llfi_index !156
  store float* %23, float** %25, align 8, !tbaa !157, !llfi_index !158
  %26 = tail call float* @alloc_1d_dbl(i32 %19), !llfi_index !159
  %27 = getelementptr inbounds i8* %1, i64 48, !llfi_index !160
  %28 = bitcast i8* %27 to float**, !llfi_index !161
  store float* %26, float** %28, align 8, !tbaa !162, !llfi_index !163
  %29 = tail call float* @alloc_1d_dbl(i32 %19), !llfi_index !164
  %30 = getelementptr inbounds i8* %1, i64 56, !llfi_index !165
  %31 = bitcast i8* %30 to float**, !llfi_index !166
  store float* %29, float** %31, align 8, !tbaa !167, !llfi_index !168
  %32 = tail call float** @alloc_2d_dbl(i32 %11, i32 %15), !llfi_index !169
  %33 = getelementptr inbounds i8* %1, i64 64, !llfi_index !170
  %34 = bitcast i8* %33 to float***, !llfi_index !171
  store float** %32, float*** %34, align 8, !tbaa !172, !llfi_index !173
  %35 = tail call float** @alloc_2d_dbl(i32 %15, i32 %19), !llfi_index !174
  %36 = getelementptr inbounds i8* %1, i64 72, !llfi_index !175
  %37 = bitcast i8* %36 to float***, !llfi_index !176
  store float** %35, float*** %37, align 8, !tbaa !177, !llfi_index !178
  %38 = tail call float** @alloc_2d_dbl(i32 %11, i32 %15), !llfi_index !179
  %39 = getelementptr inbounds i8* %1, i64 80, !llfi_index !180
  %40 = bitcast i8* %39 to float***, !llfi_index !181
  store float** %38, float*** %40, align 8, !tbaa !182, !llfi_index !183
  %41 = tail call float** @alloc_2d_dbl(i32 %15, i32 %19), !llfi_index !184
  %42 = getelementptr inbounds i8* %1, i64 88, !llfi_index !185
  %43 = bitcast i8* %42 to float***, !llfi_index !186
  store float** %41, float*** %43, align 8, !tbaa !187, !llfi_index !188
  br label %44, !llfi_index !189

; <label>:44                                      ; preds = %4, %3
  %.0 = phi %struct.BPNN* [ null, %3 ], [ %5, %4 ], !llfi_index !190
  ret %struct.BPNN* %.0, !llfi_index !191
}

; Function Attrs: nounwind uwtable
define void @bpnn_free(%struct.BPNN* nocapture %net) #0 {
  %1 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 0, !llfi_index !192
  %2 = load i32* %1, align 4, !tbaa !124, !llfi_index !193
  %3 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 1, !llfi_index !194
  %4 = load i32* %3, align 4, !tbaa !130, !llfi_index !195
  %5 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 3, !llfi_index !196
  %6 = load float** %5, align 8, !tbaa !140, !llfi_index !197
  %7 = bitcast float* %6 to i8*, !llfi_index !198
  tail call void @free(i8* %7) #3, !llfi_index !199
  %8 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 4, !llfi_index !200
  %9 = load float** %8, align 8, !tbaa !146, !llfi_index !201
  %10 = bitcast float* %9 to i8*, !llfi_index !202
  tail call void @free(i8* %10) #3, !llfi_index !203
  %11 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 5, !llfi_index !204
  %12 = load float** %11, align 8, !tbaa !152, !llfi_index !205
  %13 = bitcast float* %12 to i8*, !llfi_index !206
  tail call void @free(i8* %13) #3, !llfi_index !207
  %14 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 6, !llfi_index !208
  %15 = load float** %14, align 8, !tbaa !157, !llfi_index !209
  %16 = bitcast float* %15 to i8*, !llfi_index !210
  tail call void @free(i8* %16) #3, !llfi_index !211
  %17 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 7, !llfi_index !212
  %18 = load float** %17, align 8, !tbaa !162, !llfi_index !213
  %19 = bitcast float* %18 to i8*, !llfi_index !214
  tail call void @free(i8* %19) #3, !llfi_index !215
  %20 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 8, !llfi_index !216
  %21 = load float** %20, align 8, !tbaa !167, !llfi_index !217
  %22 = bitcast float* %21 to i8*, !llfi_index !218
  tail call void @free(i8* %22) #3, !llfi_index !219
  %23 = icmp slt i32 %2, 0, !llfi_index !220
  br i1 %23, label %._crit_edge5, label %.lr.ph4, !llfi_index !221

.lr.ph4:                                          ; preds = %0
  %24 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 9, !llfi_index !222
  %25 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 11, !llfi_index !223
  %26 = add i32 %2, 1, !llfi_index !224
  br label %27, !llfi_index !225

; <label>:27                                      ; preds = %27, %.lr.ph4
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %27 ], [ 0, %.lr.ph4 ], !llfi_index !226
  %28 = load float*** %24, align 8, !tbaa !172, !llfi_index !227
  %29 = getelementptr inbounds float** %28, i64 %indvars.iv6, !llfi_index !228
  %30 = load float** %29, align 8, !tbaa !43, !llfi_index !229
  %31 = bitcast float* %30 to i8*, !llfi_index !230
  tail call void @free(i8* %31) #3, !llfi_index !231
  %32 = load float*** %25, align 8, !tbaa !182, !llfi_index !232
  %33 = getelementptr inbounds float** %32, i64 %indvars.iv6, !llfi_index !233
  %34 = load float** %33, align 8, !tbaa !43, !llfi_index !234
  %35 = bitcast float* %34 to i8*, !llfi_index !235
  tail call void @free(i8* %35) #3, !llfi_index !236
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !llfi_index !237
  %lftr.wideiv8 = trunc i64 %indvars.iv.next7 to i32, !llfi_index !238
  %exitcond9 = icmp eq i32 %lftr.wideiv8, %26, !llfi_index !239
  br i1 %exitcond9, label %._crit_edge5, label %27, !llfi_index !240

._crit_edge5:                                     ; preds = %27, %0
  %36 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 9, !llfi_index !241
  %37 = load float*** %36, align 8, !tbaa !172, !llfi_index !242
  %38 = bitcast float** %37 to i8*, !llfi_index !243
  tail call void @free(i8* %38) #3, !llfi_index !244
  %39 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 11, !llfi_index !245
  %40 = load float*** %39, align 8, !tbaa !182, !llfi_index !246
  %41 = bitcast float** %40 to i8*, !llfi_index !247
  tail call void @free(i8* %41) #3, !llfi_index !248
  %42 = icmp slt i32 %4, 0, !llfi_index !249
  br i1 %42, label %._crit_edge, label %.lr.ph, !llfi_index !250

.lr.ph:                                           ; preds = %._crit_edge5
  %43 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 10, !llfi_index !251
  %44 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 12, !llfi_index !252
  %45 = add i32 %4, 1, !llfi_index !253
  br label %46, !llfi_index !254

; <label>:46                                      ; preds = %46, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %46 ], [ 0, %.lr.ph ], !llfi_index !255
  %47 = load float*** %43, align 8, !tbaa !177, !llfi_index !256
  %48 = getelementptr inbounds float** %47, i64 %indvars.iv, !llfi_index !257
  %49 = load float** %48, align 8, !tbaa !43, !llfi_index !258
  %50 = bitcast float* %49 to i8*, !llfi_index !259
  tail call void @free(i8* %50) #3, !llfi_index !260
  %51 = load float*** %44, align 8, !tbaa !187, !llfi_index !261
  %52 = getelementptr inbounds float** %51, i64 %indvars.iv, !llfi_index !262
  %53 = load float** %52, align 8, !tbaa !43, !llfi_index !263
  %54 = bitcast float* %53 to i8*, !llfi_index !264
  tail call void @free(i8* %54) #3, !llfi_index !265
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !266
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !267
  %exitcond = icmp eq i32 %lftr.wideiv, %45, !llfi_index !268
  br i1 %exitcond, label %._crit_edge, label %46, !llfi_index !269

._crit_edge:                                      ; preds = %46, %._crit_edge5
  %55 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 10, !llfi_index !270
  %56 = load float*** %55, align 8, !tbaa !177, !llfi_index !271
  %57 = bitcast float** %56 to i8*, !llfi_index !272
  tail call void @free(i8* %57) #3, !llfi_index !273
  %58 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 12, !llfi_index !274
  %59 = load float*** %58, align 8, !tbaa !187, !llfi_index !275
  %60 = bitcast float** %59 to i8*, !llfi_index !276
  tail call void @free(i8* %60) #3, !llfi_index !277
  %61 = bitcast %struct.BPNN* %net to i8*, !llfi_index !278
  tail call void @free(i8* %61) #3, !llfi_index !279
  ret void, !llfi_index !280
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define noalias %struct.BPNN* @bpnn_create(i32 %n_in, i32 %n_hidden, i32 %n_out) #0 {
  %1 = tail call %struct.BPNN* @bpnn_internal_create(i32 %n_in, i32 %n_hidden, i32 %n_out), !llfi_index !281
  %2 = getelementptr inbounds %struct.BPNN* %1, i64 0, i32 9, !llfi_index !282
  %3 = load float*** %2, align 8, !tbaa !172, !llfi_index !283
  %4 = tail call i32 @bpnn_randomize_weights(float** %3, i32 %n_in, i32 %n_hidden), !llfi_index !284
  %5 = getelementptr inbounds %struct.BPNN* %1, i64 0, i32 10, !llfi_index !285
  %6 = load float*** %5, align 8, !tbaa !177, !llfi_index !286
  %7 = tail call i32 @bpnn_randomize_weights(float** %6, i32 %n_hidden, i32 %n_out), !llfi_index !287
  %8 = getelementptr inbounds %struct.BPNN* %1, i64 0, i32 11, !llfi_index !288
  %9 = load float*** %8, align 8, !tbaa !182, !llfi_index !289
  %10 = tail call i32 @bpnn_zero_weights(float** %9, i32 %n_in, i32 %n_hidden), !llfi_index !290
  %11 = getelementptr inbounds %struct.BPNN* %1, i64 0, i32 12, !llfi_index !291
  %12 = load float*** %11, align 8, !tbaa !187, !llfi_index !292
  %13 = tail call i32 @bpnn_zero_weights(float** %12, i32 %n_hidden, i32 %n_out), !llfi_index !293
  %14 = getelementptr inbounds %struct.BPNN* %1, i64 0, i32 8, !llfi_index !294
  %15 = load float** %14, align 8, !tbaa !167, !llfi_index !295
  %16 = tail call i32 @bpnn_randomize_row(float* %15, i32 %n_out), !llfi_index !296
  ret %struct.BPNN* %1, !llfi_index !297
}

; Function Attrs: nounwind uwtable
define void @bpnn_layerforward(float* nocapture %l1, float* nocapture %l2, float** nocapture readonly %conn, i32 %n1, i32 %n2) #0 {
  store float 1.000000e+00, float* %l1, align 4, !tbaa !70, !llfi_index !298
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !299
  %1 = icmp slt i32 %n2, 1, !llfi_index !300
  br i1 %1, label %._crit_edge4, label %.preheader.lr.ph, !llfi_index !301

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp slt i32 %n1, 0, !llfi_index !302
  %3 = add i32 %n1, 1, !llfi_index !303
  %4 = add i32 %n2, 1, !llfi_index !304
  br label %.preheader, !llfi_index !305

.preheader:                                       ; preds = %13, %.preheader.lr.ph
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %13 ], [ 1, %.preheader.lr.ph ], !llfi_index !306
  br i1 %2, label %13, label %.lr.ph, !llfi_index !307

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ], !llfi_index !308
  %sum.01 = phi float [ %12, %.lr.ph ], [ 0.000000e+00, %.preheader ], !llfi_index !309
  %5 = getelementptr inbounds float** %conn, i64 %indvars.iv, !llfi_index !310
  %6 = load float** %5, align 8, !tbaa !43, !llfi_index !311
  %7 = getelementptr inbounds float* %6, i64 %indvars.iv5, !llfi_index !312
  %8 = load float* %7, align 4, !tbaa !70, !llfi_index !313
  %9 = getelementptr inbounds float* %l1, i64 %indvars.iv, !llfi_index !314
  %10 = load float* %9, align 4, !tbaa !70, !llfi_index !315
  %11 = fmul float %8, %10, !llfi_index !316
  %12 = fadd float %sum.01, %11, !llfi_index !317
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !318
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !319
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !llfi_index !320
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !321

._crit_edge:                                      ; preds = %.lr.ph
  %phitmp = fpext float %12 to double, !llfi_index !322
  br label %13, !llfi_index !323

; <label>:13                                      ; preds = %._crit_edge, %.preheader
  %sum.0.lcssa = phi double [ %phitmp, %._crit_edge ], [ 0.000000e+00, %.preheader ], !llfi_index !324
  %14 = tail call float @squash(double %sum.0.lcssa), !llfi_index !325
  %15 = getelementptr inbounds float* %l2, i64 %indvars.iv5, !llfi_index !326
  store float %14, float* %15, align 4, !tbaa !70, !llfi_index !327
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !llfi_index !328
  %lftr.wideiv7 = trunc i64 %indvars.iv.next6 to i32, !llfi_index !329
  %exitcond8 = icmp eq i32 %lftr.wideiv7, %4, !llfi_index !330
  br i1 %exitcond8, label %._crit_edge4, label %.preheader, !llfi_index !331

._crit_edge4:                                     ; preds = %13, %0
  ret void, !llfi_index !332
}

declare void @omp_set_num_threads(i32) #2

; Function Attrs: nounwind uwtable
define void @bpnn_output_error(float* nocapture %delta, float* nocapture readonly %target, float* nocapture readonly %output, i32 %nj, float* nocapture %err) #0 {
  %1 = icmp slt i32 %nj, 1, !llfi_index !333
  br i1 %1, label %._crit_edge, label %.lr.ph, !llfi_index !334

.lr.ph:                                           ; preds = %0
  %2 = add i32 %nj, 1, !llfi_index !335
  br label %3, !llfi_index !336

; <label>:3                                       ; preds = %19, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ 1, %.lr.ph ], !llfi_index !337
  %errsum.02 = phi float [ %21, %19 ], [ 0.000000e+00, %.lr.ph ], !llfi_index !338
  %4 = getelementptr inbounds float* %output, i64 %indvars.iv, !llfi_index !339
  %5 = load float* %4, align 4, !tbaa !70, !llfi_index !340
  %6 = getelementptr inbounds float* %target, i64 %indvars.iv, !llfi_index !341
  %7 = load float* %6, align 4, !tbaa !70, !llfi_index !342
  %8 = fpext float %5 to double, !llfi_index !343
  %9 = fsub double 1.000000e+00, %8, !llfi_index !344
  %10 = fmul double %8, %9, !llfi_index !345
  %11 = fsub float %7, %5, !llfi_index !346
  %12 = fpext float %11 to double, !llfi_index !347
  %13 = fmul double %10, %12, !llfi_index !348
  %14 = fptrunc double %13 to float, !llfi_index !349
  %15 = getelementptr inbounds float* %delta, i64 %indvars.iv, !llfi_index !350
  store float %14, float* %15, align 4, !tbaa !70, !llfi_index !351
  %16 = fcmp ogt float %14, 0.000000e+00, !llfi_index !352
  br i1 %16, label %19, label %17, !llfi_index !353

; <label>:17                                      ; preds = %3
  %18 = fsub float -0.000000e+00, %14, !llfi_index !354
  br label %19, !llfi_index !355

; <label>:19                                      ; preds = %17, %3
  %20 = phi float [ %18, %17 ], [ %14, %3 ], !llfi_index !356
  %21 = fadd float %errsum.02, %20, !llfi_index !357
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !358
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !359
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !llfi_index !360
  br i1 %exitcond, label %._crit_edge, label %3, !llfi_index !361

._crit_edge:                                      ; preds = %19, %0
  %errsum.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %21, %19 ], !llfi_index !362
  store float %errsum.0.lcssa, float* %err, align 4, !tbaa !70, !llfi_index !363
  ret void, !llfi_index !364
}

; Function Attrs: nounwind uwtable
define void @bpnn_hidden_error(float* nocapture %delta_h, i32 %nh, float* nocapture readonly %delta_o, i32 %no, float** nocapture readonly %who, float* nocapture readonly %hidden, float* nocapture %err) #0 {
  %1 = icmp slt i32 %nh, 1, !llfi_index !365
  br i1 %1, label %._crit_edge7, label %.lr.ph6, !llfi_index !366

.lr.ph6:                                          ; preds = %0
  %2 = icmp slt i32 %no, 1, !llfi_index !367
  %3 = add i32 %no, 1, !llfi_index !368
  %4 = add i32 %nh, 1, !llfi_index !369
  br label %5, !llfi_index !370

; <label>:5                                       ; preds = %27, %.lr.ph6
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %27 ], [ 1, %.lr.ph6 ], !llfi_index !371
  %errsum.04 = phi float [ %29, %27 ], [ 0.000000e+00, %.lr.ph6 ], !llfi_index !372
  %6 = getelementptr inbounds float* %hidden, i64 %indvars.iv10, !llfi_index !373
  %7 = load float* %6, align 4, !tbaa !70, !llfi_index !374
  br i1 %2, label %17, label %.lr.ph, !llfi_index !375

.lr.ph:                                           ; preds = %5
  %8 = getelementptr inbounds float** %who, i64 %indvars.iv10, !llfi_index !376
  %9 = load float** %8, align 8, !tbaa !43, !llfi_index !377
  br label %10, !llfi_index !378

; <label>:10                                      ; preds = %10, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %10 ], [ 1, %.lr.ph ], !llfi_index !379
  %sum.02 = phi float [ %16, %10 ], [ 0.000000e+00, %.lr.ph ], !llfi_index !380
  %11 = getelementptr inbounds float* %delta_o, i64 %indvars.iv, !llfi_index !381
  %12 = load float* %11, align 4, !tbaa !70, !llfi_index !382
  %13 = getelementptr inbounds float* %9, i64 %indvars.iv, !llfi_index !383
  %14 = load float* %13, align 4, !tbaa !70, !llfi_index !384
  %15 = fmul float %12, %14, !llfi_index !385
  %16 = fadd float %sum.02, %15, !llfi_index !386
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !387
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !388
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !llfi_index !389
  br i1 %exitcond, label %._crit_edge, label %10, !llfi_index !390

._crit_edge:                                      ; preds = %10
  %phitmp = fpext float %16 to double, !llfi_index !391
  br label %17, !llfi_index !392

; <label>:17                                      ; preds = %._crit_edge, %5
  %sum.0.lcssa = phi double [ %phitmp, %._crit_edge ], [ 0.000000e+00, %5 ], !llfi_index !393
  %18 = fpext float %7 to double, !llfi_index !394
  %19 = fsub double 1.000000e+00, %18, !llfi_index !395
  %20 = fmul double %18, %19, !llfi_index !396
  %21 = fmul double %20, %sum.0.lcssa, !llfi_index !397
  %22 = fptrunc double %21 to float, !llfi_index !398
  %23 = getelementptr inbounds float* %delta_h, i64 %indvars.iv10, !llfi_index !399
  store float %22, float* %23, align 4, !tbaa !70, !llfi_index !400
  %24 = fcmp ogt float %22, 0.000000e+00, !llfi_index !401
  br i1 %24, label %27, label %25, !llfi_index !402

; <label>:25                                      ; preds = %17
  %26 = fsub float -0.000000e+00, %22, !llfi_index !403
  br label %27, !llfi_index !404

; <label>:27                                      ; preds = %25, %17
  %28 = phi float [ %26, %25 ], [ %22, %17 ], !llfi_index !405
  %29 = fadd float %errsum.04, %28, !llfi_index !406
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !llfi_index !407
  %lftr.wideiv12 = trunc i64 %indvars.iv.next11 to i32, !llfi_index !408
  %exitcond13 = icmp eq i32 %lftr.wideiv12, %4, !llfi_index !409
  br i1 %exitcond13, label %._crit_edge7, label %5, !llfi_index !410

._crit_edge7:                                     ; preds = %27, %0
  %errsum.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %29, %27 ], !llfi_index !411
  store float %errsum.0.lcssa, float* %err, align 4, !tbaa !70, !llfi_index !412
  ret void, !llfi_index !413
}

; Function Attrs: nounwind uwtable
define void @bpnn_adjust_weights(float* nocapture readonly %delta, i32 %ndelta, float* nocapture %ly, i32 %nly, float** nocapture readonly %w, float** nocapture readonly %oldw) #0 {
  store float 1.000000e+00, float* %ly, align 4, !tbaa !70, !llfi_index !414
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !415
  %1 = icmp slt i32 %ndelta, 1, !llfi_index !416
  br i1 %1, label %._crit_edge3, label %.preheader.lr.ph, !llfi_index !417

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp slt i32 %nly, 0, !llfi_index !418
  %3 = add i32 %nly, 1, !llfi_index !419
  %4 = add i32 %ndelta, 1, !llfi_index !420
  br label %.preheader, !llfi_index !421

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %._crit_edge ], [ 1, %.preheader.lr.ph ], !llfi_index !422
  br i1 %2, label %._crit_edge, label %.lr.ph, !llfi_index !423

.lr.ph:                                           ; preds = %.preheader
  %5 = getelementptr inbounds float* %delta, i64 %indvars.iv4, !llfi_index !424
  br label %6, !llfi_index !425

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %6 ], [ 0, %.lr.ph ], !llfi_index !426
  %7 = load float* %5, align 4, !tbaa !70, !llfi_index !427
  %8 = fpext float %7 to double, !llfi_index !428
  %9 = fmul double %8, 3.000000e-01, !llfi_index !429
  %10 = getelementptr inbounds float* %ly, i64 %indvars.iv, !llfi_index !430
  %11 = load float* %10, align 4, !tbaa !70, !llfi_index !431
  %12 = fpext float %11 to double, !llfi_index !432
  %13 = fmul double %9, %12, !llfi_index !433
  %14 = getelementptr inbounds float** %oldw, i64 %indvars.iv, !llfi_index !434
  %15 = load float** %14, align 8, !tbaa !43, !llfi_index !435
  %16 = getelementptr inbounds float* %15, i64 %indvars.iv4, !llfi_index !436
  %17 = load float* %16, align 4, !tbaa !70, !llfi_index !437
  %18 = fpext float %17 to double, !llfi_index !438
  %19 = fmul double %18, 3.000000e-01, !llfi_index !439
  %20 = fadd double %13, %19, !llfi_index !440
  %21 = fptrunc double %20 to float, !llfi_index !441
  %22 = getelementptr inbounds float** %w, i64 %indvars.iv, !llfi_index !442
  %23 = load float** %22, align 8, !tbaa !43, !llfi_index !443
  %24 = getelementptr inbounds float* %23, i64 %indvars.iv4, !llfi_index !444
  %25 = load float* %24, align 4, !tbaa !70, !llfi_index !445
  %26 = fadd float %25, %21, !llfi_index !446
  store float %26, float* %24, align 4, !tbaa !70, !llfi_index !447
  %27 = load float** %14, align 8, !tbaa !43, !llfi_index !448
  %28 = getelementptr inbounds float* %27, i64 %indvars.iv4, !llfi_index !449
  store float %21, float* %28, align 4, !tbaa !70, !llfi_index !450
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !451
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !452
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !llfi_index !453
  br i1 %exitcond, label %._crit_edge, label %6, !llfi_index !454

._crit_edge:                                      ; preds = %6, %.preheader
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !llfi_index !455
  %lftr.wideiv6 = trunc i64 %indvars.iv.next5 to i32, !llfi_index !456
  %exitcond7 = icmp eq i32 %lftr.wideiv6, %4, !llfi_index !457
  br i1 %exitcond7, label %._crit_edge3, label %.preheader, !llfi_index !458

._crit_edge3:                                     ; preds = %._crit_edge, %0
  ret void, !llfi_index !459
}

; Function Attrs: nounwind uwtable
define void @bpnn_feedforward(%struct.BPNN* nocapture readonly %net) #0 {
  %1 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 0, !llfi_index !460
  %2 = load i32* %1, align 4, !tbaa !124, !llfi_index !461
  %3 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 1, !llfi_index !462
  %4 = load i32* %3, align 4, !tbaa !130, !llfi_index !463
  %5 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 2, !llfi_index !464
  %6 = load i32* %5, align 4, !tbaa !134, !llfi_index !465
  %7 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 3, !llfi_index !466
  %8 = load float** %7, align 8, !tbaa !140, !llfi_index !467
  %9 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 4, !llfi_index !468
  %10 = load float** %9, align 8, !tbaa !146, !llfi_index !469
  %11 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 9, !llfi_index !470
  %12 = load float*** %11, align 8, !tbaa !172, !llfi_index !471
  tail call void @bpnn_layerforward(float* %8, float* %10, float** %12, i32 %2, i32 %4), !llfi_index !472
  %13 = load float** %9, align 8, !tbaa !146, !llfi_index !473
  %14 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 5, !llfi_index !474
  %15 = load float** %14, align 8, !tbaa !152, !llfi_index !475
  %16 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 10, !llfi_index !476
  %17 = load float*** %16, align 8, !tbaa !177, !llfi_index !477
  tail call void @bpnn_layerforward(float* %13, float* %15, float** %17, i32 %4, i32 %6), !llfi_index !478
  ret void, !llfi_index !479
}

; Function Attrs: nounwind uwtable
define void @bpnn_train(%struct.BPNN* nocapture readonly %net, float* nocapture %eo, float* nocapture %eh) #0 {
  %out_err = alloca float, align 4, !llfi_index !480
  %hid_err = alloca float, align 4, !llfi_index !481
  %1 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 0, !llfi_index !482
  %2 = load i32* %1, align 4, !tbaa !124, !llfi_index !483
  %3 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 1, !llfi_index !484
  %4 = load i32* %3, align 4, !tbaa !130, !llfi_index !485
  %5 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 2, !llfi_index !486
  %6 = load i32* %5, align 4, !tbaa !134, !llfi_index !487
  %7 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 3, !llfi_index !488
  %8 = load float** %7, align 8, !tbaa !140, !llfi_index !489
  %9 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 4, !llfi_index !490
  %10 = load float** %9, align 8, !tbaa !146, !llfi_index !491
  %11 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 9, !llfi_index !492
  %12 = load float*** %11, align 8, !tbaa !172, !llfi_index !493
  tail call void @bpnn_layerforward(float* %8, float* %10, float** %12, i32 %2, i32 %4), !llfi_index !494
  %13 = load float** %9, align 8, !tbaa !146, !llfi_index !495
  %14 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 5, !llfi_index !496
  %15 = load float** %14, align 8, !tbaa !152, !llfi_index !497
  %16 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 10, !llfi_index !498
  %17 = load float*** %16, align 8, !tbaa !177, !llfi_index !499
  tail call void @bpnn_layerforward(float* %13, float* %15, float** %17, i32 %4, i32 %6), !llfi_index !500
  %18 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 7, !llfi_index !501
  %19 = load float** %18, align 8, !tbaa !162, !llfi_index !502
  %20 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 8, !llfi_index !503
  %21 = load float** %20, align 8, !tbaa !167, !llfi_index !504
  %22 = load float** %14, align 8, !tbaa !152, !llfi_index !505
  call void @bpnn_output_error(float* %19, float* %21, float* %22, i32 %6, float* %out_err), !llfi_index !506
  %23 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 6, !llfi_index !507
  %24 = load float** %23, align 8, !tbaa !157, !llfi_index !508
  %25 = load float** %18, align 8, !tbaa !162, !llfi_index !509
  %26 = load float*** %16, align 8, !tbaa !177, !llfi_index !510
  %27 = load float** %9, align 8, !tbaa !146, !llfi_index !511
  call void @bpnn_hidden_error(float* %24, i32 %4, float* %25, i32 %6, float** %26, float* %27, float* %hid_err), !llfi_index !512
  %28 = load float* %out_err, align 4, !tbaa !70, !llfi_index !513
  store float %28, float* %eo, align 4, !tbaa !70, !llfi_index !514
  %29 = load float* %hid_err, align 4, !tbaa !70, !llfi_index !515
  store float %29, float* %eh, align 4, !tbaa !70, !llfi_index !516
  %30 = load float** %18, align 8, !tbaa !162, !llfi_index !517
  %31 = load float** %9, align 8, !tbaa !146, !llfi_index !518
  %32 = load float*** %16, align 8, !tbaa !177, !llfi_index !519
  %33 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 12, !llfi_index !520
  %34 = load float*** %33, align 8, !tbaa !187, !llfi_index !521
  tail call void @bpnn_adjust_weights(float* %30, i32 %6, float* %31, i32 %4, float** %32, float** %34), !llfi_index !522
  %35 = load float** %23, align 8, !tbaa !157, !llfi_index !523
  %36 = load float** %7, align 8, !tbaa !140, !llfi_index !524
  %37 = load float*** %11, align 8, !tbaa !172, !llfi_index !525
  %38 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 11, !llfi_index !526
  %39 = load float*** %38, align 8, !tbaa !182, !llfi_index !527
  tail call void @bpnn_adjust_weights(float* %35, i32 %4, float* %36, i32 %2, float** %37, float** %39), !llfi_index !528
  ret void, !llfi_index !529
}

; Function Attrs: nounwind uwtable
define void @bpnn_save(%struct.BPNN* nocapture readonly %net, i8* %filename) #0 {
  %dvalue = alloca float, align 4, !llfi_index !530
  %1 = tail call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #3, !llfi_index !531
  %2 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 0, !llfi_index !532
  %3 = load i32* %2, align 4, !tbaa !124, !llfi_index !533
  %4 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 1, !llfi_index !534
  %5 = load i32* %4, align 4, !tbaa !130, !llfi_index !535
  %6 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 2, !llfi_index !536
  %7 = load i32* %6, align 4, !tbaa !134, !llfi_index !537
  %8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0), i32 %3, i32 %5, i32 %7, i8* %filename) #3, !llfi_index !538
  %sext = shl i32 %3, 24, !llfi_index !539
  %chari = ashr exact i32 %sext, 24, !llfi_index !540
  %fputc = tail call i32 @fputc(i32 %chari, %struct._IO_FILE* %1), !llfi_index !541
  %sext11 = shl i32 %5, 24, !llfi_index !542
  %chari6 = ashr exact i32 %sext11, 24, !llfi_index !543
  %fputc7 = tail call i32 @fputc(i32 %chari6, %struct._IO_FILE* %1), !llfi_index !544
  %sext12 = shl i32 %7, 24, !llfi_index !545
  %chari9 = ashr exact i32 %sext12, 24, !llfi_index !546
  %fputc10 = tail call i32 @fputc(i32 %chari9, %struct._IO_FILE* %1), !llfi_index !547
  %9 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 9, !llfi_index !548
  %10 = load float*** %9, align 8, !tbaa !172, !llfi_index !549
  %11 = add nsw i32 %5, 1, !llfi_index !550
  %12 = shl i32 %3, 2, !llfi_index !551
  %13 = add i32 %12, 4, !llfi_index !552
  %14 = mul i32 %13, %11, !llfi_index !553
  %15 = zext i32 %14 to i64, !llfi_index !554
  %16 = tail call noalias i8* @malloc(i64 %15) #3, !llfi_index !555
  %17 = icmp slt i32 %3, 0, !llfi_index !556
  br i1 %17, label %._crit_edge32, label %.preheader24.lr.ph, !llfi_index !557

.preheader24.lr.ph:                               ; preds = %0
  %18 = icmp slt i32 %5, 0, !llfi_index !558
  %19 = bitcast float* %dvalue to i8*, !llfi_index !559
  %20 = shl i32 %5, 2, !llfi_index !560
  %21 = add i32 %20, 4, !llfi_index !561
  %22 = add i32 %5, 1, !llfi_index !562
  %23 = add i32 %3, 1, !llfi_index !563
  br label %.preheader24, !llfi_index !564

.preheader24:                                     ; preds = %38, %.preheader24.lr.ph
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %38 ], [ 0, %.preheader24.lr.ph ], !llfi_index !565
  %memcnt.030 = phi i32 [ %memcnt.1.lcssa, %38 ], [ 0, %.preheader24.lr.ph ], !llfi_index !566
  br i1 %18, label %38, label %.lr.ph27, !llfi_index !567

.lr.ph27:                                         ; preds = %.preheader24
  %24 = getelementptr inbounds float** %10, i64 %indvars.iv44, !llfi_index !568
  br label %25, !llfi_index !569

; <label>:25                                      ; preds = %35, %.lr.ph27
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %35 ], [ 0, %.lr.ph27 ], !llfi_index !570
  %memcnt.125 = phi i32 [ %36, %35 ], [ %memcnt.030, %.lr.ph27 ], !llfi_index !571
  %26 = load float** %24, align 8, !tbaa !43, !llfi_index !572
  %27 = getelementptr inbounds float* %26, i64 %indvars.iv40, !llfi_index !573
  %28 = load float* %27, align 4, !tbaa !70, !llfi_index !574
  store float %28, float* %dvalue, align 4, !tbaa !70, !llfi_index !575
  %29 = sext i32 %memcnt.125 to i64, !llfi_index !576
  %30 = getelementptr inbounds i8* %16, i64 %29, !llfi_index !577
  %lftr.limit3848 = getelementptr float* %dvalue, i64 1, !llfi_index !578
  %lftr.limit38 = bitcast float* %lftr.limit3848 to i8*, !llfi_index !579
  br label %31, !llfi_index !580

; <label>:31                                      ; preds = %31, %25
  %_from.022 = phi i8* [ %19, %25 ], [ %32, %31 ], !llfi_index !581
  %_to.021 = phi i8* [ %30, %25 ], [ %34, %31 ], !llfi_index !582
  %32 = getelementptr inbounds i8* %_from.022, i64 1, !llfi_index !583
  %33 = load i8* %_from.022, align 1, !tbaa !584, !llfi_index !585
  %34 = getelementptr inbounds i8* %_to.021, i64 1, !llfi_index !586
  store i8 %33, i8* %_to.021, align 1, !tbaa !584, !llfi_index !587
  %exitcond39 = icmp eq i8* %32, %lftr.limit38, !llfi_index !588
  br i1 %exitcond39, label %35, label %31, !llfi_index !589

; <label>:35                                      ; preds = %31
  %36 = add i32 %memcnt.125, 4, !llfi_index !590
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1, !llfi_index !591
  %lftr.wideiv42 = trunc i64 %indvars.iv.next41 to i32, !llfi_index !592
  %exitcond43 = icmp eq i32 %lftr.wideiv42, %22, !llfi_index !593
  br i1 %exitcond43, label %._crit_edge28, label %25, !llfi_index !594

._crit_edge28:                                    ; preds = %35
  %37 = add i32 %21, %memcnt.030, !llfi_index !595
  br label %38, !llfi_index !596

; <label>:38                                      ; preds = %._crit_edge28, %.preheader24
  %memcnt.1.lcssa = phi i32 [ %37, %._crit_edge28 ], [ %memcnt.030, %.preheader24 ], !llfi_index !597
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1, !llfi_index !598
  %lftr.wideiv46 = trunc i64 %indvars.iv.next45 to i32, !llfi_index !599
  %exitcond47 = icmp eq i32 %lftr.wideiv46, %23, !llfi_index !600
  br i1 %exitcond47, label %._crit_edge32, label %.preheader24, !llfi_index !601

._crit_edge32:                                    ; preds = %38, %0
  %39 = tail call i64 @fwrite(i8* %16, i64 4, i64 %15, %struct._IO_FILE* %1) #3, !llfi_index !602
  tail call void @free(i8* %16) #3, !llfi_index !603
  %40 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 10, !llfi_index !604
  %41 = load float*** %40, align 8, !tbaa !177, !llfi_index !605
  %42 = add nsw i32 %7, 1, !llfi_index !606
  %43 = shl i32 %11, 2, !llfi_index !607
  %44 = mul i32 %43, %42, !llfi_index !608
  %45 = zext i32 %44 to i64, !llfi_index !609
  %46 = tail call noalias i8* @malloc(i64 %45) #3, !llfi_index !610
  %47 = icmp slt i32 %5, 0, !llfi_index !611
  br i1 %47, label %._crit_edge20, label %.preheader.lr.ph, !llfi_index !612

.preheader.lr.ph:                                 ; preds = %._crit_edge32
  %48 = icmp slt i32 %7, 0, !llfi_index !613
  %49 = bitcast float* %dvalue to i8*, !llfi_index !614
  %50 = shl i32 %7, 2, !llfi_index !615
  %51 = add i32 %50, 4, !llfi_index !616
  %52 = add i32 %7, 1, !llfi_index !617
  %53 = add i32 %5, 1, !llfi_index !618
  br label %.preheader, !llfi_index !619

.preheader:                                       ; preds = %68, %.preheader.lr.ph
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %68 ], [ 0, %.preheader.lr.ph ], !llfi_index !620
  %memcnt.218 = phi i32 [ %memcnt.3.lcssa, %68 ], [ 0, %.preheader.lr.ph ], !llfi_index !621
  br i1 %48, label %68, label %.lr.ph, !llfi_index !622

.lr.ph:                                           ; preds = %.preheader
  %54 = getelementptr inbounds float** %41, i64 %indvars.iv34, !llfi_index !623
  br label %55, !llfi_index !624

; <label>:55                                      ; preds = %65, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %65 ], [ 0, %.lr.ph ], !llfi_index !625
  %memcnt.316 = phi i32 [ %66, %65 ], [ %memcnt.218, %.lr.ph ], !llfi_index !626
  %56 = load float** %54, align 8, !tbaa !43, !llfi_index !627
  %57 = getelementptr inbounds float* %56, i64 %indvars.iv, !llfi_index !628
  %58 = load float* %57, align 4, !tbaa !70, !llfi_index !629
  store float %58, float* %dvalue, align 4, !tbaa !70, !llfi_index !630
  %59 = sext i32 %memcnt.316 to i64, !llfi_index !631
  %60 = getelementptr inbounds i8* %46, i64 %59, !llfi_index !632
  %lftr.limit49 = getelementptr float* %dvalue, i64 1, !llfi_index !633
  %lftr.limit = bitcast float* %lftr.limit49 to i8*, !llfi_index !634
  br label %61, !llfi_index !635

; <label>:61                                      ; preds = %61, %55
  %_from2.014 = phi i8* [ %49, %55 ], [ %62, %61 ], !llfi_index !636
  %_to1.013 = phi i8* [ %60, %55 ], [ %64, %61 ], !llfi_index !637
  %62 = getelementptr inbounds i8* %_from2.014, i64 1, !llfi_index !638
  %63 = load i8* %_from2.014, align 1, !tbaa !584, !llfi_index !639
  %64 = getelementptr inbounds i8* %_to1.013, i64 1, !llfi_index !640
  store i8 %63, i8* %_to1.013, align 1, !tbaa !584, !llfi_index !641
  %exitcond = icmp eq i8* %62, %lftr.limit, !llfi_index !642
  br i1 %exitcond, label %65, label %61, !llfi_index !643

; <label>:65                                      ; preds = %61
  %66 = add i32 %memcnt.316, 4, !llfi_index !644
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !645
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !646
  %exitcond33 = icmp eq i32 %lftr.wideiv, %52, !llfi_index !647
  br i1 %exitcond33, label %._crit_edge, label %55, !llfi_index !648

._crit_edge:                                      ; preds = %65
  %67 = add i32 %51, %memcnt.218, !llfi_index !649
  br label %68, !llfi_index !650

; <label>:68                                      ; preds = %._crit_edge, %.preheader
  %memcnt.3.lcssa = phi i32 [ %67, %._crit_edge ], [ %memcnt.218, %.preheader ], !llfi_index !651
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1, !llfi_index !652
  %lftr.wideiv36 = trunc i64 %indvars.iv.next35 to i32, !llfi_index !653
  %exitcond37 = icmp eq i32 %lftr.wideiv36, %53, !llfi_index !654
  br i1 %exitcond37, label %._crit_edge20, label %.preheader, !llfi_index !655

._crit_edge20:                                    ; preds = %68, %._crit_edge32
  %69 = tail call i64 @fwrite(i8* %46, i64 4, i64 %45, %struct._IO_FILE* %1) #3, !llfi_index !656
  tail call void @free(i8* %46) #3, !llfi_index !657
  %70 = tail call i32 @fclose(%struct._IO_FILE* %1) #3, !llfi_index !658
  ret void, !llfi_index !659
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind uwtable
define noalias %struct.BPNN* @bpnn_read(i8* %filename) #0 {
  %n1 = alloca i32, align 4, !llfi_index !660
  %n2 = alloca i32, align 4, !llfi_index !661
  %n3 = alloca i32, align 4, !llfi_index !662
  %1 = call i32 (i8*, i32, i32, ...)* bitcast (i32 (...)* @open to i32 (i8*, i32, i32, ...)*)(i8* %filename, i32 0, i32 420) #3, !llfi_index !663
  %2 = icmp eq i32 %1, -1, !llfi_index !664
  br i1 %2, label %114, label %3, !llfi_index !665

; <label>:3                                       ; preds = %0
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* %filename) #3, !llfi_index !666
  %5 = bitcast i32* %n1 to i8*, !llfi_index !667
  %6 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %1, i8* %5, i64 4) #3, !llfi_index !668
  %7 = bitcast i32* %n2 to i8*, !llfi_index !669
  %8 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %1, i8* %7, i64 4) #3, !llfi_index !670
  %9 = bitcast i32* %n3 to i8*, !llfi_index !671
  %10 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %1, i8* %9, i64 4) #3, !llfi_index !672
  %11 = load i32* %n1, align 4, !tbaa !673, !llfi_index !674
  %12 = load i32* %n2, align 4, !tbaa !673, !llfi_index !675
  %13 = load i32* %n3, align 4, !tbaa !673, !llfi_index !676
  %14 = call %struct.BPNN* @bpnn_internal_create(i32 %11, i32 %12, i32 %13), !llfi_index !677
  %15 = load i32* %n1, align 4, !tbaa !673, !llfi_index !678
  %16 = load i32* %n2, align 4, !tbaa !673, !llfi_index !679
  %17 = load i32* %n3, align 4, !tbaa !673, !llfi_index !680
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str7, i64 0, i64 0), i8* %filename, i32 %15, i32 %16, i32 %17) #3, !llfi_index !681
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0)) #3, !llfi_index !682
  %20 = load i32* %n1, align 4, !tbaa !673, !llfi_index !683
  %21 = load i32* %n2, align 4, !tbaa !673, !llfi_index !684
  %22 = add nsw i32 %21, 1, !llfi_index !685
  %23 = shl i32 %20, 2, !llfi_index !686
  %24 = add i32 %23, 4, !llfi_index !687
  %25 = mul i32 %24, %22, !llfi_index !688
  %26 = zext i32 %25 to i64, !llfi_index !689
  %27 = call noalias i8* @malloc(i64 %26) #3, !llfi_index !690
  %28 = load i32* %n1, align 4, !tbaa !673, !llfi_index !691
  %29 = add nsw i32 %28, 1, !llfi_index !692
  %30 = load i32* %n2, align 4, !tbaa !673, !llfi_index !693
  %31 = add nsw i32 %30, 1, !llfi_index !694
  %32 = mul nsw i32 %31, %29, !llfi_index !695
  %33 = sext i32 %32 to i64, !llfi_index !696
  %34 = shl nsw i64 %33, 2, !llfi_index !697
  %35 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %1, i8* %27, i64 %34) #3, !llfi_index !698
  %36 = load i32* %n1, align 4, !tbaa !673, !llfi_index !699
  %37 = icmp slt i32 %36, 0, !llfi_index !700
  br i1 %37, label %._crit_edge24, label %.preheader16.lr.ph, !llfi_index !701

.preheader16.lr.ph:                               ; preds = %3
  %38 = getelementptr inbounds %struct.BPNN* %14, i64 0, i32 9, !llfi_index !702
  br label %.preheader16, !llfi_index !703

.preheader16:                                     ; preds = %._crit_edge20, %.preheader16.lr.ph
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %._crit_edge20 ], [ 0, %.preheader16.lr.ph ], !llfi_index !704
  %memcnt.023 = phi i32 [ %memcnt.1.lcssa, %._crit_edge20 ], [ 0, %.preheader16.lr.ph ], !llfi_index !705
  %39 = load i32* %n2, align 4, !tbaa !673, !llfi_index !706
  %40 = icmp slt i32 %39, 0, !llfi_index !707
  br i1 %40, label %._crit_edge20, label %.lr.ph19, !llfi_index !708

.lr.ph19:                                         ; preds = %53, %.preheader16
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %53 ], [ 0, %.preheader16 ], !llfi_index !709
  %memcnt.118 = phi i32 [ %54, %53 ], [ %memcnt.023, %.preheader16 ], !llfi_index !710
  %41 = load float*** %38, align 8, !tbaa !172, !llfi_index !711
  %42 = getelementptr inbounds float** %41, i64 %indvars.iv33, !llfi_index !712
  %43 = load float** %42, align 8, !tbaa !43, !llfi_index !713
  %44 = getelementptr inbounds float* %43, i64 %indvars.iv31, !llfi_index !714
  %45 = bitcast float* %44 to i8*, !llfi_index !715
  %46 = sext i32 %memcnt.118 to i64, !llfi_index !716
  %47 = getelementptr inbounds i8* %27, i64 %46, !llfi_index !717
  br label %48, !llfi_index !718

; <label>:48                                      ; preds = %48, %.lr.ph19
  %_i.015 = phi i32 [ 0, %.lr.ph19 ], [ %52, %48 ], !llfi_index !719
  %_from.014 = phi i8* [ %47, %.lr.ph19 ], [ %49, %48 ], !llfi_index !720
  %_to.013 = phi i8* [ %45, %.lr.ph19 ], [ %51, %48 ], !llfi_index !721
  %49 = getelementptr inbounds i8* %_from.014, i64 1, !llfi_index !722
  %50 = load i8* %_from.014, align 1, !tbaa !584, !llfi_index !723
  %51 = getelementptr inbounds i8* %_to.013, i64 1, !llfi_index !724
  store i8 %50, i8* %_to.013, align 1, !tbaa !584, !llfi_index !725
  %52 = add nsw i32 %_i.015, 1, !llfi_index !726
  %exitcond28 = icmp eq i32 %52, 4, !llfi_index !727
  br i1 %exitcond28, label %53, label %48, !llfi_index !728

; <label>:53                                      ; preds = %48
  %54 = add i32 %memcnt.118, 4, !llfi_index !729
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1, !llfi_index !730
  %55 = load i32* %n2, align 4, !tbaa !673, !llfi_index !731
  %56 = trunc i64 %indvars.iv31 to i32, !llfi_index !732
  %57 = icmp slt i32 %56, %55, !llfi_index !733
  br i1 %57, label %.lr.ph19, label %._crit_edge20, !llfi_index !734

._crit_edge20:                                    ; preds = %53, %.preheader16
  %memcnt.1.lcssa = phi i32 [ %memcnt.023, %.preheader16 ], [ %54, %53 ], !llfi_index !735
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1, !llfi_index !736
  %58 = load i32* %n1, align 4, !tbaa !673, !llfi_index !737
  %59 = trunc i64 %indvars.iv33 to i32, !llfi_index !738
  %60 = icmp slt i32 %59, %58, !llfi_index !739
  br i1 %60, label %.preheader16, label %._crit_edge24, !llfi_index !740

._crit_edge24:                                    ; preds = %._crit_edge20, %3
  call void @free(i8* %27) #3, !llfi_index !741
  %61 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str9, i64 0, i64 0)) #3, !llfi_index !742
  %62 = load i32* %n2, align 4, !tbaa !673, !llfi_index !743
  %63 = load i32* %n3, align 4, !tbaa !673, !llfi_index !744
  %64 = add nsw i32 %63, 1, !llfi_index !745
  %65 = shl i32 %62, 2, !llfi_index !746
  %66 = add i32 %65, 4, !llfi_index !747
  %67 = mul i32 %66, %64, !llfi_index !748
  %68 = zext i32 %67 to i64, !llfi_index !749
  %69 = call noalias i8* @malloc(i64 %68) #3, !llfi_index !750
  %70 = load i32* %n2, align 4, !tbaa !673, !llfi_index !751
  %71 = add nsw i32 %70, 1, !llfi_index !752
  %72 = load i32* %n3, align 4, !tbaa !673, !llfi_index !753
  %73 = add nsw i32 %72, 1, !llfi_index !754
  %74 = mul nsw i32 %73, %71, !llfi_index !755
  %75 = sext i32 %74 to i64, !llfi_index !756
  %76 = shl nsw i64 %75, 2, !llfi_index !757
  %77 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %1, i8* %69, i64 %76) #3, !llfi_index !758
  %78 = load i32* %n2, align 4, !tbaa !673, !llfi_index !759
  %79 = icmp slt i32 %78, 0, !llfi_index !760
  br i1 %79, label %._crit_edge12, label %.preheader.lr.ph, !llfi_index !761

.preheader.lr.ph:                                 ; preds = %._crit_edge24
  %80 = getelementptr inbounds %struct.BPNN* %14, i64 0, i32 10, !llfi_index !762
  br label %.preheader, !llfi_index !763

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %._crit_edge ], [ 0, %.preheader.lr.ph ], !llfi_index !764
  %memcnt.211 = phi i32 [ %memcnt.3.lcssa, %._crit_edge ], [ 0, %.preheader.lr.ph ], !llfi_index !765
  %81 = load i32* %n3, align 4, !tbaa !673, !llfi_index !766
  %82 = icmp slt i32 %81, 0, !llfi_index !767
  br i1 %82, label %._crit_edge, label %.lr.ph, !llfi_index !768

.lr.ph:                                           ; preds = %95, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %95 ], [ 0, %.preheader ], !llfi_index !769
  %memcnt.39 = phi i32 [ %96, %95 ], [ %memcnt.211, %.preheader ], !llfi_index !770
  %83 = load float*** %80, align 8, !tbaa !177, !llfi_index !771
  %84 = getelementptr inbounds float** %83, i64 %indvars.iv26, !llfi_index !772
  %85 = load float** %84, align 8, !tbaa !43, !llfi_index !773
  %86 = getelementptr inbounds float* %85, i64 %indvars.iv, !llfi_index !774
  %87 = bitcast float* %86 to i8*, !llfi_index !775
  %88 = sext i32 %memcnt.39 to i64, !llfi_index !776
  %89 = getelementptr inbounds i8* %69, i64 %88, !llfi_index !777
  br label %90, !llfi_index !778

; <label>:90                                      ; preds = %90, %.lr.ph
  %_i3.07 = phi i32 [ 0, %.lr.ph ], [ %94, %90 ], !llfi_index !779
  %_from2.06 = phi i8* [ %89, %.lr.ph ], [ %91, %90 ], !llfi_index !780
  %_to1.05 = phi i8* [ %87, %.lr.ph ], [ %93, %90 ], !llfi_index !781
  %91 = getelementptr inbounds i8* %_from2.06, i64 1, !llfi_index !782
  %92 = load i8* %_from2.06, align 1, !tbaa !584, !llfi_index !783
  %93 = getelementptr inbounds i8* %_to1.05, i64 1, !llfi_index !784
  store i8 %92, i8* %_to1.05, align 1, !tbaa !584, !llfi_index !785
  %94 = add nsw i32 %_i3.07, 1, !llfi_index !786
  %exitcond = icmp eq i32 %94, 4, !llfi_index !787
  br i1 %exitcond, label %95, label %90, !llfi_index !788

; <label>:95                                      ; preds = %90
  %96 = add i32 %memcnt.39, 4, !llfi_index !789
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !790
  %97 = load i32* %n3, align 4, !tbaa !673, !llfi_index !791
  %98 = trunc i64 %indvars.iv to i32, !llfi_index !792
  %99 = icmp slt i32 %98, %97, !llfi_index !793
  br i1 %99, label %.lr.ph, label %._crit_edge, !llfi_index !794

._crit_edge:                                      ; preds = %95, %.preheader
  %memcnt.3.lcssa = phi i32 [ %memcnt.211, %.preheader ], [ %96, %95 ], !llfi_index !795
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1, !llfi_index !796
  %100 = load i32* %n2, align 4, !tbaa !673, !llfi_index !797
  %101 = trunc i64 %indvars.iv26 to i32, !llfi_index !798
  %102 = icmp slt i32 %101, %100, !llfi_index !799
  br i1 %102, label %.preheader, label %._crit_edge12, !llfi_index !800

._crit_edge12:                                    ; preds = %._crit_edge, %._crit_edge24
  call void @free(i8* %69) #3, !llfi_index !801
  %103 = call i32 (i32, ...)* bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 %1) #3, !llfi_index !802
  %puts = call i32 @puts(i8* getelementptr inbounds ([5 x i8]* @str13, i64 0, i64 0)), !llfi_index !803
  %104 = getelementptr inbounds %struct.BPNN* %14, i64 0, i32 11, !llfi_index !804
  %105 = load float*** %104, align 8, !tbaa !182, !llfi_index !805
  %106 = load i32* %n1, align 4, !tbaa !673, !llfi_index !806
  %107 = load i32* %n2, align 4, !tbaa !673, !llfi_index !807
  %108 = call i32 @bpnn_zero_weights(float** %105, i32 %106, i32 %107), !llfi_index !808
  %109 = getelementptr inbounds %struct.BPNN* %14, i64 0, i32 12, !llfi_index !809
  %110 = load float*** %109, align 8, !tbaa !187, !llfi_index !810
  %111 = load i32* %n2, align 4, !tbaa !673, !llfi_index !811
  %112 = load i32* %n3, align 4, !tbaa !673, !llfi_index !812
  %113 = call i32 @bpnn_zero_weights(float** %110, i32 %111, i32 %112), !llfi_index !813
  br label %114, !llfi_index !814

; <label>:114                                     ; preds = %._crit_edge12, %0
  %.0 = phi %struct.BPNN* [ %14, %._crit_edge12 ], [ null, %0 ], !llfi_index !815
  ret %struct.BPNN* %.0, !llfi_index !816
}

declare i32 @open(...) #2

declare i32 @read(...) #2

declare i32 @close(...) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define double @gettime() #0 {
  %t = alloca %struct.timeval, align 8, !llfi_index !817
  %1 = call i32 @gettimeofday(%struct.timeval* %t, %struct.timezone* null) #3, !llfi_index !818
  %2 = getelementptr inbounds %struct.timeval* %t, i64 0, i32 0, !llfi_index !819
  %3 = load i64* %2, align 8, !tbaa !820, !llfi_index !823
  %4 = sitofp i64 %3 to double, !llfi_index !824
  %5 = getelementptr inbounds %struct.timeval* %t, i64 0, i32 1, !llfi_index !825
  %6 = load i64* %5, align 8, !tbaa !826, !llfi_index !827
  %7 = sitofp i64 %6 to double, !llfi_index !828
  %8 = fmul double %7, 1.000000e-06, !llfi_index !829
  %9 = fadd double %4, %8, !llfi_index !830
  ret double %9, !llfi_index !831
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = tail call i32 @setup(i32 %argc, i8** %argv) #3, !llfi_index !832
  ret i32 0, !llfi_index !833
}

; Function Attrs: nounwind uwtable
define void @bpnn_train_kernel(%struct.BPNN* nocapture readonly %net, float* nocapture readnone %eo, float* nocapture readnone %eh) #0 {
  %out_err = alloca float, align 4, !llfi_index !834
  %hid_err = alloca float, align 4, !llfi_index !835
  %1 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 0, !llfi_index !836
  %2 = load i32* %1, align 4, !tbaa !124, !llfi_index !837
  %3 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 1, !llfi_index !838
  %4 = load i32* %3, align 4, !tbaa !130, !llfi_index !839
  %5 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 2, !llfi_index !840
  %6 = load i32* %5, align 4, !tbaa !134, !llfi_index !841
  %puts = call i32 @puts(i8* getelementptr inbounds ([27 x i8]* @str14, i64 0, i64 0)), !llfi_index !842
  %7 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 3, !llfi_index !843
  %8 = load float** %7, align 8, !tbaa !140, !llfi_index !844
  %9 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 4, !llfi_index !845
  %10 = load float** %9, align 8, !tbaa !146, !llfi_index !846
  %11 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 9, !llfi_index !847
  %12 = load float*** %11, align 8, !tbaa !172, !llfi_index !848
  call void @bpnn_layerforward(float* %8, float* %10, float** %12, i32 %2, i32 %4) #3, !llfi_index !849
  %13 = load float** %9, align 8, !tbaa !146, !llfi_index !850
  %14 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 5, !llfi_index !851
  %15 = load float** %14, align 8, !tbaa !152, !llfi_index !852
  %16 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 10, !llfi_index !853
  %17 = load float*** %16, align 8, !tbaa !177, !llfi_index !854
  call void @bpnn_layerforward(float* %13, float* %15, float** %17, i32 %4, i32 %6) #3, !llfi_index !855
  %18 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 7, !llfi_index !856
  %19 = load float** %18, align 8, !tbaa !162, !llfi_index !857
  %20 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 8, !llfi_index !858
  %21 = load float** %20, align 8, !tbaa !167, !llfi_index !859
  %22 = load float** %14, align 8, !tbaa !152, !llfi_index !860
  call void @bpnn_output_error(float* %19, float* %21, float* %22, i32 %6, float* %out_err) #3, !llfi_index !861
  %23 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 6, !llfi_index !862
  %24 = load float** %23, align 8, !tbaa !157, !llfi_index !863
  %25 = load float** %18, align 8, !tbaa !162, !llfi_index !864
  %26 = load float*** %16, align 8, !tbaa !177, !llfi_index !865
  %27 = load float** %9, align 8, !tbaa !146, !llfi_index !866
  call void @bpnn_hidden_error(float* %24, i32 %4, float* %25, i32 %6, float** %26, float* %27, float* %hid_err) #3, !llfi_index !867
  %28 = load float** %18, align 8, !tbaa !162, !llfi_index !868
  %29 = load float** %9, align 8, !tbaa !146, !llfi_index !869
  %30 = load float*** %16, align 8, !tbaa !177, !llfi_index !870
  %31 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 12, !llfi_index !871
  %32 = load float*** %31, align 8, !tbaa !187, !llfi_index !872
  call void @bpnn_adjust_weights(float* %28, i32 %6, float* %29, i32 %4, float** %30, float** %32) #3, !llfi_index !873
  %33 = load float** %23, align 8, !tbaa !157, !llfi_index !874
  %34 = load float** %7, align 8, !tbaa !140, !llfi_index !875
  %35 = load float*** %11, align 8, !tbaa !172, !llfi_index !876
  %36 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 11, !llfi_index !877
  %37 = load float*** %36, align 8, !tbaa !182, !llfi_index !878
  call void @bpnn_adjust_weights(float* %33, i32 %4, float* %34, i32 %2, float** %35, float** %37) #3, !llfi_index !879
  ret void, !llfi_index !880
}

; Function Attrs: nounwind uwtable
define i32 @backprop_face() #0 {
  %out_err = alloca float, align 4, !llfi_index !881
  %hid_err = alloca float, align 4, !llfi_index !882
  %1 = load i32* @layer_size, align 4, !tbaa !673, !llfi_index !883
  %2 = call %struct.BPNN* (i32, i32, i32, ...)* bitcast (%struct.BPNN* (i32, i32, i32)* @bpnn_create to %struct.BPNN* (i32, i32, i32, ...)*)(i32 %1, i32 16, i32 1) #3, !llfi_index !884
  %3 = load i32* @layer_size, align 4, !tbaa !673, !llfi_index !885
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str15, i64 0, i64 0), i32 %3) #3, !llfi_index !886
  %5 = call i32 (%struct.BPNN*, ...)* bitcast (i32 (%struct.BPNN*)* @load to i32 (%struct.BPNN*, ...)*)(%struct.BPNN* %2) #3, !llfi_index !887
  %puts = call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str19, i64 0, i64 0)), !llfi_index !888
  %6 = call i32 (%struct.BPNN*, float*, float*, ...)* bitcast (void (%struct.BPNN*, float*, float*)* @bpnn_train_kernel to i32 (%struct.BPNN*, float*, float*, ...)*)(%struct.BPNN* %2, float* %out_err, float* %hid_err) #3, !llfi_index !889
  call void (%struct.BPNN*, ...)* bitcast (void (%struct.BPNN*)* @bpnn_free to void (%struct.BPNN*, ...)*)(%struct.BPNN* %2) #3, !llfi_index !890
  %puts1 = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str4, i64 0, i64 0)), !llfi_index !891
  ret i32 undef, !llfi_index !892
}

; Function Attrs: noreturn nounwind uwtable
define i32 @setup(i32 %argc, i8** nocapture readonly %argv) #4 {
  %1 = icmp eq i32 %argc, 2, !llfi_index !893
  br i1 %1, label %5, label %2, !llfi_index !894

; <label>:2                                       ; preds = %0
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !43, !llfi_index !895
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str318, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %3) #7, !llfi_index !896
  tail call void @exit(i32 0) #8, !llfi_index !897
  unreachable, !llfi_index !898

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds i8** %argv, i64 1, !llfi_index !899
  %7 = load i8** %6, align 8, !tbaa !43, !llfi_index !900
  %8 = tail call i32 @atoi(i8* %7) #9, !llfi_index !901
  store i32 %8, i32* @layer_size, align 4, !tbaa !673, !llfi_index !902
  tail call void (i32, ...)* bitcast (void (i32)* @bpnn_initialize to void (i32, ...)*)(i32 7) #3, !llfi_index !903
  %9 = tail call i32 @backprop_face(), !llfi_index !904
  tail call void @exit(i32 0) #8, !llfi_index !905
  unreachable, !llfi_index !906
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #1

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nocapture readonly %__nptr) #6 {
  %1 = tail call i64 @strtol(i8* nocapture %__nptr, i8** null, i32 10) #3, !llfi_index !907
  %2 = trunc i64 %1 to i32, !llfi_index !908
  ret i32 %2, !llfi_index !909
}

; Function Attrs: nounwind uwtable
define i32 @load(%struct.BPNN* nocapture readonly %net) #0 {
  %1 = load i32* @layer_size, align 4, !tbaa !673, !llfi_index !910
  %2 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 3, !llfi_index !911
  %3 = load float** %2, align 8, !tbaa !140, !llfi_index !912
  %4 = icmp sgt i32 %1, 0, !llfi_index !913
  br i1 %4, label %.lr.ph, label %._crit_edge, !llfi_index !914

.lr.ph:                                           ; preds = %0
  %5 = add i32 %1, 1, !llfi_index !915
  br label %6, !llfi_index !916

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %6 ], !llfi_index !917
  %7 = tail call i32 @rand() #3, !llfi_index !918
  %8 = sitofp i32 %7 to float, !llfi_index !919
  %9 = fmul float %8, 0x3E00000000000000, !llfi_index !920
  %10 = getelementptr inbounds float* %3, i64 %indvars.iv, !llfi_index !921
  store float %9, float* %10, align 4, !tbaa !70, !llfi_index !922
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !923
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !924
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !llfi_index !925
  br i1 %exitcond, label %._crit_edge, label %6, !llfi_index !926

._crit_edge:                                      ; preds = %6, %0
  ret i32 undef, !llfi_index !927
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { cold }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

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
!43 = metadata !{metadata !44, metadata !44, i64 0}
!44 = metadata !{metadata !"any pointer", metadata !45, i64 0}
!45 = metadata !{metadata !"omnipotent char", metadata !46, i64 0}
!46 = metadata !{metadata !"Simple C/C++ TBAA"}
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
!70 = metadata !{metadata !71, metadata !71, i64 0}
!71 = metadata !{metadata !"float", metadata !45, i64 0}
!72 = metadata !{i64 66}
!73 = metadata !{i64 67}
!74 = metadata !{i64 68}
!75 = metadata !{i64 69}
!76 = metadata !{i64 70}
!77 = metadata !{i64 71}
!78 = metadata !{i64 72}
!79 = metadata !{i64 73}
!80 = metadata !{i64 74}
!81 = metadata !{i64 75}
!82 = metadata !{i64 76}
!83 = metadata !{i64 77}
!84 = metadata !{i64 78}
!85 = metadata !{i64 79}
!86 = metadata !{i64 80}
!87 = metadata !{i64 81}
!88 = metadata !{i64 82}
!89 = metadata !{i64 83}
!90 = metadata !{i64 84}
!91 = metadata !{i64 85}
!92 = metadata !{i64 86}
!93 = metadata !{i64 87}
!94 = metadata !{i64 88}
!95 = metadata !{i64 89}
!96 = metadata !{i64 90}
!97 = metadata !{i64 91}
!98 = metadata !{i64 92}
!99 = metadata !{i64 93}
!100 = metadata !{i64 94}
!101 = metadata !{i64 95}
!102 = metadata !{i64 96}
!103 = metadata !{i64 97}
!104 = metadata !{i64 98}
!105 = metadata !{i64 99}
!106 = metadata !{i64 100}
!107 = metadata !{i64 101}
!108 = metadata !{i64 102}
!109 = metadata !{i64 103}
!110 = metadata !{i64 104}
!111 = metadata !{i64 105}
!112 = metadata !{i64 106}
!113 = metadata !{i64 107}
!114 = metadata !{i64 108}
!115 = metadata !{i64 109}
!116 = metadata !{i64 110}
!117 = metadata !{i64 111}
!118 = metadata !{i64 112}
!119 = metadata !{i64 113}
!120 = metadata !{i64 114}
!121 = metadata !{i64 115}
!122 = metadata !{i64 116}
!123 = metadata !{i64 117}
!124 = metadata !{metadata !125, metadata !126, i64 0}
!125 = metadata !{metadata !"", metadata !126, i64 0, metadata !126, i64 4, metadata !126, i64 8, metadata !44, i64 16, metadata !44, i64 24, metadata !44, i64 32, metadata !44, i64 40, metadata !44, i64 48, metadata !44, i64 56, metadata !44, i64 64, metadata !44, i64 72, metadata !44, i64 80, metadata !44, i64 88}
!126 = metadata !{metadata !"int", metadata !45, i64 0}
!127 = metadata !{i64 118}
!128 = metadata !{i64 119}
!129 = metadata !{i64 120}
!130 = metadata !{metadata !125, metadata !126, i64 4}
!131 = metadata !{i64 121}
!132 = metadata !{i64 122}
!133 = metadata !{i64 123}
!134 = metadata !{metadata !125, metadata !126, i64 8}
!135 = metadata !{i64 124}
!136 = metadata !{i64 125}
!137 = metadata !{i64 126}
!138 = metadata !{i64 127}
!139 = metadata !{i64 128}
!140 = metadata !{metadata !125, metadata !44, i64 16}
!141 = metadata !{i64 129}
!142 = metadata !{i64 130}
!143 = metadata !{i64 131}
!144 = metadata !{i64 132}
!145 = metadata !{i64 133}
!146 = metadata !{metadata !125, metadata !44, i64 24}
!147 = metadata !{i64 134}
!148 = metadata !{i64 135}
!149 = metadata !{i64 136}
!150 = metadata !{i64 137}
!151 = metadata !{i64 138}
!152 = metadata !{metadata !125, metadata !44, i64 32}
!153 = metadata !{i64 139}
!154 = metadata !{i64 140}
!155 = metadata !{i64 141}
!156 = metadata !{i64 142}
!157 = metadata !{metadata !125, metadata !44, i64 40}
!158 = metadata !{i64 143}
!159 = metadata !{i64 144}
!160 = metadata !{i64 145}
!161 = metadata !{i64 146}
!162 = metadata !{metadata !125, metadata !44, i64 48}
!163 = metadata !{i64 147}
!164 = metadata !{i64 148}
!165 = metadata !{i64 149}
!166 = metadata !{i64 150}
!167 = metadata !{metadata !125, metadata !44, i64 56}
!168 = metadata !{i64 151}
!169 = metadata !{i64 152}
!170 = metadata !{i64 153}
!171 = metadata !{i64 154}
!172 = metadata !{metadata !125, metadata !44, i64 64}
!173 = metadata !{i64 155}
!174 = metadata !{i64 156}
!175 = metadata !{i64 157}
!176 = metadata !{i64 158}
!177 = metadata !{metadata !125, metadata !44, i64 72}
!178 = metadata !{i64 159}
!179 = metadata !{i64 160}
!180 = metadata !{i64 161}
!181 = metadata !{i64 162}
!182 = metadata !{metadata !125, metadata !44, i64 80}
!183 = metadata !{i64 163}
!184 = metadata !{i64 164}
!185 = metadata !{i64 165}
!186 = metadata !{i64 166}
!187 = metadata !{metadata !125, metadata !44, i64 88}
!188 = metadata !{i64 167}
!189 = metadata !{i64 168}
!190 = metadata !{i64 169}
!191 = metadata !{i64 170}
!192 = metadata !{i64 171}
!193 = metadata !{i64 172}
!194 = metadata !{i64 173}
!195 = metadata !{i64 174}
!196 = metadata !{i64 175}
!197 = metadata !{i64 176}
!198 = metadata !{i64 177}
!199 = metadata !{i64 178}
!200 = metadata !{i64 179}
!201 = metadata !{i64 180}
!202 = metadata !{i64 181}
!203 = metadata !{i64 182}
!204 = metadata !{i64 183}
!205 = metadata !{i64 184}
!206 = metadata !{i64 185}
!207 = metadata !{i64 186}
!208 = metadata !{i64 187}
!209 = metadata !{i64 188}
!210 = metadata !{i64 189}
!211 = metadata !{i64 190}
!212 = metadata !{i64 191}
!213 = metadata !{i64 192}
!214 = metadata !{i64 193}
!215 = metadata !{i64 194}
!216 = metadata !{i64 195}
!217 = metadata !{i64 196}
!218 = metadata !{i64 197}
!219 = metadata !{i64 198}
!220 = metadata !{i64 199}
!221 = metadata !{i64 200}
!222 = metadata !{i64 201}
!223 = metadata !{i64 202}
!224 = metadata !{i64 203}
!225 = metadata !{i64 204}
!226 = metadata !{i64 205}
!227 = metadata !{i64 206}
!228 = metadata !{i64 207}
!229 = metadata !{i64 208}
!230 = metadata !{i64 209}
!231 = metadata !{i64 210}
!232 = metadata !{i64 211}
!233 = metadata !{i64 212}
!234 = metadata !{i64 213}
!235 = metadata !{i64 214}
!236 = metadata !{i64 215}
!237 = metadata !{i64 216}
!238 = metadata !{i64 217}
!239 = metadata !{i64 218}
!240 = metadata !{i64 219}
!241 = metadata !{i64 220}
!242 = metadata !{i64 221}
!243 = metadata !{i64 222}
!244 = metadata !{i64 223}
!245 = metadata !{i64 224}
!246 = metadata !{i64 225}
!247 = metadata !{i64 226}
!248 = metadata !{i64 227}
!249 = metadata !{i64 228}
!250 = metadata !{i64 229}
!251 = metadata !{i64 230}
!252 = metadata !{i64 231}
!253 = metadata !{i64 232}
!254 = metadata !{i64 233}
!255 = metadata !{i64 234}
!256 = metadata !{i64 235}
!257 = metadata !{i64 236}
!258 = metadata !{i64 237}
!259 = metadata !{i64 238}
!260 = metadata !{i64 239}
!261 = metadata !{i64 240}
!262 = metadata !{i64 241}
!263 = metadata !{i64 242}
!264 = metadata !{i64 243}
!265 = metadata !{i64 244}
!266 = metadata !{i64 245}
!267 = metadata !{i64 246}
!268 = metadata !{i64 247}
!269 = metadata !{i64 248}
!270 = metadata !{i64 249}
!271 = metadata !{i64 250}
!272 = metadata !{i64 251}
!273 = metadata !{i64 252}
!274 = metadata !{i64 253}
!275 = metadata !{i64 254}
!276 = metadata !{i64 255}
!277 = metadata !{i64 256}
!278 = metadata !{i64 257}
!279 = metadata !{i64 258}
!280 = metadata !{i64 259}
!281 = metadata !{i64 260}
!282 = metadata !{i64 261}
!283 = metadata !{i64 262}
!284 = metadata !{i64 263}
!285 = metadata !{i64 264}
!286 = metadata !{i64 265}
!287 = metadata !{i64 266}
!288 = metadata !{i64 267}
!289 = metadata !{i64 268}
!290 = metadata !{i64 269}
!291 = metadata !{i64 270}
!292 = metadata !{i64 271}
!293 = metadata !{i64 272}
!294 = metadata !{i64 273}
!295 = metadata !{i64 274}
!296 = metadata !{i64 275}
!297 = metadata !{i64 276}
!298 = metadata !{i64 277}
!299 = metadata !{i64 278}
!300 = metadata !{i64 279}
!301 = metadata !{i64 280}
!302 = metadata !{i64 281}
!303 = metadata !{i64 282}
!304 = metadata !{i64 283}
!305 = metadata !{i64 284}
!306 = metadata !{i64 285}
!307 = metadata !{i64 286}
!308 = metadata !{i64 287}
!309 = metadata !{i64 288}
!310 = metadata !{i64 289}
!311 = metadata !{i64 290}
!312 = metadata !{i64 291}
!313 = metadata !{i64 292}
!314 = metadata !{i64 293}
!315 = metadata !{i64 294}
!316 = metadata !{i64 295}
!317 = metadata !{i64 296}
!318 = metadata !{i64 297}
!319 = metadata !{i64 298}
!320 = metadata !{i64 299}
!321 = metadata !{i64 300}
!322 = metadata !{i64 301}
!323 = metadata !{i64 302}
!324 = metadata !{i64 303}
!325 = metadata !{i64 304}
!326 = metadata !{i64 305}
!327 = metadata !{i64 306}
!328 = metadata !{i64 307}
!329 = metadata !{i64 308}
!330 = metadata !{i64 309}
!331 = metadata !{i64 310}
!332 = metadata !{i64 311}
!333 = metadata !{i64 312}
!334 = metadata !{i64 313}
!335 = metadata !{i64 314}
!336 = metadata !{i64 315}
!337 = metadata !{i64 316}
!338 = metadata !{i64 317}
!339 = metadata !{i64 318}
!340 = metadata !{i64 319}
!341 = metadata !{i64 320}
!342 = metadata !{i64 321}
!343 = metadata !{i64 322}
!344 = metadata !{i64 323}
!345 = metadata !{i64 324}
!346 = metadata !{i64 325}
!347 = metadata !{i64 326}
!348 = metadata !{i64 327}
!349 = metadata !{i64 328}
!350 = metadata !{i64 329}
!351 = metadata !{i64 330}
!352 = metadata !{i64 331}
!353 = metadata !{i64 332}
!354 = metadata !{i64 333}
!355 = metadata !{i64 334}
!356 = metadata !{i64 335}
!357 = metadata !{i64 336}
!358 = metadata !{i64 337}
!359 = metadata !{i64 338}
!360 = metadata !{i64 339}
!361 = metadata !{i64 340}
!362 = metadata !{i64 341}
!363 = metadata !{i64 342}
!364 = metadata !{i64 343}
!365 = metadata !{i64 344}
!366 = metadata !{i64 345}
!367 = metadata !{i64 346}
!368 = metadata !{i64 347}
!369 = metadata !{i64 348}
!370 = metadata !{i64 349}
!371 = metadata !{i64 350}
!372 = metadata !{i64 351}
!373 = metadata !{i64 352}
!374 = metadata !{i64 353}
!375 = metadata !{i64 354}
!376 = metadata !{i64 355}
!377 = metadata !{i64 356}
!378 = metadata !{i64 357}
!379 = metadata !{i64 358}
!380 = metadata !{i64 359}
!381 = metadata !{i64 360}
!382 = metadata !{i64 361}
!383 = metadata !{i64 362}
!384 = metadata !{i64 363}
!385 = metadata !{i64 364}
!386 = metadata !{i64 365}
!387 = metadata !{i64 366}
!388 = metadata !{i64 367}
!389 = metadata !{i64 368}
!390 = metadata !{i64 369}
!391 = metadata !{i64 370}
!392 = metadata !{i64 371}
!393 = metadata !{i64 372}
!394 = metadata !{i64 373}
!395 = metadata !{i64 374}
!396 = metadata !{i64 375}
!397 = metadata !{i64 376}
!398 = metadata !{i64 377}
!399 = metadata !{i64 378}
!400 = metadata !{i64 379}
!401 = metadata !{i64 380}
!402 = metadata !{i64 381}
!403 = metadata !{i64 382}
!404 = metadata !{i64 383}
!405 = metadata !{i64 384}
!406 = metadata !{i64 385}
!407 = metadata !{i64 386}
!408 = metadata !{i64 387}
!409 = metadata !{i64 388}
!410 = metadata !{i64 389}
!411 = metadata !{i64 390}
!412 = metadata !{i64 391}
!413 = metadata !{i64 392}
!414 = metadata !{i64 393}
!415 = metadata !{i64 394}
!416 = metadata !{i64 395}
!417 = metadata !{i64 396}
!418 = metadata !{i64 397}
!419 = metadata !{i64 398}
!420 = metadata !{i64 399}
!421 = metadata !{i64 400}
!422 = metadata !{i64 401}
!423 = metadata !{i64 402}
!424 = metadata !{i64 403}
!425 = metadata !{i64 404}
!426 = metadata !{i64 405}
!427 = metadata !{i64 406}
!428 = metadata !{i64 407}
!429 = metadata !{i64 408}
!430 = metadata !{i64 409}
!431 = metadata !{i64 410}
!432 = metadata !{i64 411}
!433 = metadata !{i64 412}
!434 = metadata !{i64 413}
!435 = metadata !{i64 414}
!436 = metadata !{i64 415}
!437 = metadata !{i64 416}
!438 = metadata !{i64 417}
!439 = metadata !{i64 418}
!440 = metadata !{i64 419}
!441 = metadata !{i64 420}
!442 = metadata !{i64 421}
!443 = metadata !{i64 422}
!444 = metadata !{i64 423}
!445 = metadata !{i64 424}
!446 = metadata !{i64 425}
!447 = metadata !{i64 426}
!448 = metadata !{i64 427}
!449 = metadata !{i64 428}
!450 = metadata !{i64 429}
!451 = metadata !{i64 430}
!452 = metadata !{i64 431}
!453 = metadata !{i64 432}
!454 = metadata !{i64 433}
!455 = metadata !{i64 434}
!456 = metadata !{i64 435}
!457 = metadata !{i64 436}
!458 = metadata !{i64 437}
!459 = metadata !{i64 438}
!460 = metadata !{i64 439}
!461 = metadata !{i64 440}
!462 = metadata !{i64 441}
!463 = metadata !{i64 442}
!464 = metadata !{i64 443}
!465 = metadata !{i64 444}
!466 = metadata !{i64 445}
!467 = metadata !{i64 446}
!468 = metadata !{i64 447}
!469 = metadata !{i64 448}
!470 = metadata !{i64 449}
!471 = metadata !{i64 450}
!472 = metadata !{i64 451}
!473 = metadata !{i64 452}
!474 = metadata !{i64 453}
!475 = metadata !{i64 454}
!476 = metadata !{i64 455}
!477 = metadata !{i64 456}
!478 = metadata !{i64 457}
!479 = metadata !{i64 458}
!480 = metadata !{i64 459}
!481 = metadata !{i64 460}
!482 = metadata !{i64 461}
!483 = metadata !{i64 462}
!484 = metadata !{i64 463}
!485 = metadata !{i64 464}
!486 = metadata !{i64 465}
!487 = metadata !{i64 466}
!488 = metadata !{i64 467}
!489 = metadata !{i64 468}
!490 = metadata !{i64 469}
!491 = metadata !{i64 470}
!492 = metadata !{i64 471}
!493 = metadata !{i64 472}
!494 = metadata !{i64 473}
!495 = metadata !{i64 474}
!496 = metadata !{i64 475}
!497 = metadata !{i64 476}
!498 = metadata !{i64 477}
!499 = metadata !{i64 478}
!500 = metadata !{i64 479}
!501 = metadata !{i64 480}
!502 = metadata !{i64 481}
!503 = metadata !{i64 482}
!504 = metadata !{i64 483}
!505 = metadata !{i64 484}
!506 = metadata !{i64 485}
!507 = metadata !{i64 486}
!508 = metadata !{i64 487}
!509 = metadata !{i64 488}
!510 = metadata !{i64 489}
!511 = metadata !{i64 490}
!512 = metadata !{i64 491}
!513 = metadata !{i64 492}
!514 = metadata !{i64 493}
!515 = metadata !{i64 494}
!516 = metadata !{i64 495}
!517 = metadata !{i64 496}
!518 = metadata !{i64 497}
!519 = metadata !{i64 498}
!520 = metadata !{i64 499}
!521 = metadata !{i64 500}
!522 = metadata !{i64 501}
!523 = metadata !{i64 502}
!524 = metadata !{i64 503}
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
!544 = metadata !{i64 523}
!545 = metadata !{i64 524}
!546 = metadata !{i64 525}
!547 = metadata !{i64 526}
!548 = metadata !{i64 527}
!549 = metadata !{i64 528}
!550 = metadata !{i64 529}
!551 = metadata !{i64 530}
!552 = metadata !{i64 531}
!553 = metadata !{i64 532}
!554 = metadata !{i64 533}
!555 = metadata !{i64 534}
!556 = metadata !{i64 535}
!557 = metadata !{i64 536}
!558 = metadata !{i64 537}
!559 = metadata !{i64 538}
!560 = metadata !{i64 539}
!561 = metadata !{i64 540}
!562 = metadata !{i64 541}
!563 = metadata !{i64 542}
!564 = metadata !{i64 543}
!565 = metadata !{i64 544}
!566 = metadata !{i64 545}
!567 = metadata !{i64 546}
!568 = metadata !{i64 547}
!569 = metadata !{i64 548}
!570 = metadata !{i64 549}
!571 = metadata !{i64 550}
!572 = metadata !{i64 551}
!573 = metadata !{i64 552}
!574 = metadata !{i64 553}
!575 = metadata !{i64 554}
!576 = metadata !{i64 555}
!577 = metadata !{i64 556}
!578 = metadata !{i64 557}
!579 = metadata !{i64 558}
!580 = metadata !{i64 559}
!581 = metadata !{i64 560}
!582 = metadata !{i64 561}
!583 = metadata !{i64 562}
!584 = metadata !{metadata !45, metadata !45, i64 0}
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
!604 = metadata !{i64 582}
!605 = metadata !{i64 583}
!606 = metadata !{i64 584}
!607 = metadata !{i64 585}
!608 = metadata !{i64 586}
!609 = metadata !{i64 587}
!610 = metadata !{i64 588}
!611 = metadata !{i64 589}
!612 = metadata !{i64 590}
!613 = metadata !{i64 591}
!614 = metadata !{i64 592}
!615 = metadata !{i64 593}
!616 = metadata !{i64 594}
!617 = metadata !{i64 595}
!618 = metadata !{i64 596}
!619 = metadata !{i64 597}
!620 = metadata !{i64 598}
!621 = metadata !{i64 599}
!622 = metadata !{i64 600}
!623 = metadata !{i64 601}
!624 = metadata !{i64 602}
!625 = metadata !{i64 603}
!626 = metadata !{i64 604}
!627 = metadata !{i64 605}
!628 = metadata !{i64 606}
!629 = metadata !{i64 607}
!630 = metadata !{i64 608}
!631 = metadata !{i64 609}
!632 = metadata !{i64 610}
!633 = metadata !{i64 611}
!634 = metadata !{i64 612}
!635 = metadata !{i64 613}
!636 = metadata !{i64 614}
!637 = metadata !{i64 615}
!638 = metadata !{i64 616}
!639 = metadata !{i64 617}
!640 = metadata !{i64 618}
!641 = metadata !{i64 619}
!642 = metadata !{i64 620}
!643 = metadata !{i64 621}
!644 = metadata !{i64 622}
!645 = metadata !{i64 623}
!646 = metadata !{i64 624}
!647 = metadata !{i64 625}
!648 = metadata !{i64 626}
!649 = metadata !{i64 627}
!650 = metadata !{i64 628}
!651 = metadata !{i64 629}
!652 = metadata !{i64 630}
!653 = metadata !{i64 631}
!654 = metadata !{i64 632}
!655 = metadata !{i64 633}
!656 = metadata !{i64 634}
!657 = metadata !{i64 635}
!658 = metadata !{i64 636}
!659 = metadata !{i64 637}
!660 = metadata !{i64 638}
!661 = metadata !{i64 639}
!662 = metadata !{i64 640}
!663 = metadata !{i64 641}
!664 = metadata !{i64 642}
!665 = metadata !{i64 643}
!666 = metadata !{i64 644}
!667 = metadata !{i64 645}
!668 = metadata !{i64 646}
!669 = metadata !{i64 647}
!670 = metadata !{i64 648}
!671 = metadata !{i64 649}
!672 = metadata !{i64 650}
!673 = metadata !{metadata !126, metadata !126, i64 0}
!674 = metadata !{i64 651}
!675 = metadata !{i64 652}
!676 = metadata !{i64 653}
!677 = metadata !{i64 654}
!678 = metadata !{i64 655}
!679 = metadata !{i64 656}
!680 = metadata !{i64 657}
!681 = metadata !{i64 658}
!682 = metadata !{i64 659}
!683 = metadata !{i64 660}
!684 = metadata !{i64 661}
!685 = metadata !{i64 662}
!686 = metadata !{i64 663}
!687 = metadata !{i64 664}
!688 = metadata !{i64 665}
!689 = metadata !{i64 666}
!690 = metadata !{i64 667}
!691 = metadata !{i64 668}
!692 = metadata !{i64 669}
!693 = metadata !{i64 670}
!694 = metadata !{i64 671}
!695 = metadata !{i64 672}
!696 = metadata !{i64 673}
!697 = metadata !{i64 674}
!698 = metadata !{i64 675}
!699 = metadata !{i64 676}
!700 = metadata !{i64 677}
!701 = metadata !{i64 678}
!702 = metadata !{i64 679}
!703 = metadata !{i64 680}
!704 = metadata !{i64 681}
!705 = metadata !{i64 682}
!706 = metadata !{i64 683}
!707 = metadata !{i64 684}
!708 = metadata !{i64 685}
!709 = metadata !{i64 686}
!710 = metadata !{i64 687}
!711 = metadata !{i64 688}
!712 = metadata !{i64 689}
!713 = metadata !{i64 690}
!714 = metadata !{i64 691}
!715 = metadata !{i64 692}
!716 = metadata !{i64 693}
!717 = metadata !{i64 694}
!718 = metadata !{i64 695}
!719 = metadata !{i64 696}
!720 = metadata !{i64 697}
!721 = metadata !{i64 698}
!722 = metadata !{i64 699}
!723 = metadata !{i64 700}
!724 = metadata !{i64 701}
!725 = metadata !{i64 702}
!726 = metadata !{i64 703}
!727 = metadata !{i64 704}
!728 = metadata !{i64 705}
!729 = metadata !{i64 706}
!730 = metadata !{i64 707}
!731 = metadata !{i64 708}
!732 = metadata !{i64 709}
!733 = metadata !{i64 710}
!734 = metadata !{i64 711}
!735 = metadata !{i64 712}
!736 = metadata !{i64 713}
!737 = metadata !{i64 714}
!738 = metadata !{i64 715}
!739 = metadata !{i64 716}
!740 = metadata !{i64 717}
!741 = metadata !{i64 718}
!742 = metadata !{i64 719}
!743 = metadata !{i64 720}
!744 = metadata !{i64 721}
!745 = metadata !{i64 722}
!746 = metadata !{i64 723}
!747 = metadata !{i64 724}
!748 = metadata !{i64 725}
!749 = metadata !{i64 726}
!750 = metadata !{i64 727}
!751 = metadata !{i64 728}
!752 = metadata !{i64 729}
!753 = metadata !{i64 730}
!754 = metadata !{i64 731}
!755 = metadata !{i64 732}
!756 = metadata !{i64 733}
!757 = metadata !{i64 734}
!758 = metadata !{i64 735}
!759 = metadata !{i64 736}
!760 = metadata !{i64 737}
!761 = metadata !{i64 738}
!762 = metadata !{i64 739}
!763 = metadata !{i64 740}
!764 = metadata !{i64 741}
!765 = metadata !{i64 742}
!766 = metadata !{i64 743}
!767 = metadata !{i64 744}
!768 = metadata !{i64 745}
!769 = metadata !{i64 746}
!770 = metadata !{i64 747}
!771 = metadata !{i64 748}
!772 = metadata !{i64 749}
!773 = metadata !{i64 750}
!774 = metadata !{i64 751}
!775 = metadata !{i64 752}
!776 = metadata !{i64 753}
!777 = metadata !{i64 754}
!778 = metadata !{i64 755}
!779 = metadata !{i64 756}
!780 = metadata !{i64 757}
!781 = metadata !{i64 758}
!782 = metadata !{i64 759}
!783 = metadata !{i64 760}
!784 = metadata !{i64 761}
!785 = metadata !{i64 762}
!786 = metadata !{i64 763}
!787 = metadata !{i64 764}
!788 = metadata !{i64 765}
!789 = metadata !{i64 766}
!790 = metadata !{i64 767}
!791 = metadata !{i64 768}
!792 = metadata !{i64 769}
!793 = metadata !{i64 770}
!794 = metadata !{i64 771}
!795 = metadata !{i64 772}
!796 = metadata !{i64 773}
!797 = metadata !{i64 774}
!798 = metadata !{i64 775}
!799 = metadata !{i64 776}
!800 = metadata !{i64 777}
!801 = metadata !{i64 778}
!802 = metadata !{i64 779}
!803 = metadata !{i64 780}
!804 = metadata !{i64 781}
!805 = metadata !{i64 782}
!806 = metadata !{i64 783}
!807 = metadata !{i64 784}
!808 = metadata !{i64 785}
!809 = metadata !{i64 786}
!810 = metadata !{i64 787}
!811 = metadata !{i64 788}
!812 = metadata !{i64 789}
!813 = metadata !{i64 790}
!814 = metadata !{i64 791}
!815 = metadata !{i64 792}
!816 = metadata !{i64 793}
!817 = metadata !{i64 794}
!818 = metadata !{i64 795}
!819 = metadata !{i64 796}
!820 = metadata !{metadata !821, metadata !822, i64 0}
!821 = metadata !{metadata !"timeval", metadata !822, i64 0, metadata !822, i64 8}
!822 = metadata !{metadata !"long", metadata !45, i64 0}
!823 = metadata !{i64 797}
!824 = metadata !{i64 798}
!825 = metadata !{i64 799}
!826 = metadata !{metadata !821, metadata !822, i64 8}
!827 = metadata !{i64 800}
!828 = metadata !{i64 801}
!829 = metadata !{i64 802}
!830 = metadata !{i64 803}
!831 = metadata !{i64 804}
!832 = metadata !{i64 805}
!833 = metadata !{i64 806}
!834 = metadata !{i64 807}
!835 = metadata !{i64 808}
!836 = metadata !{i64 809}
!837 = metadata !{i64 810}
!838 = metadata !{i64 811}
!839 = metadata !{i64 812}
!840 = metadata !{i64 813}
!841 = metadata !{i64 814}
!842 = metadata !{i64 815}
!843 = metadata !{i64 816}
!844 = metadata !{i64 817}
!845 = metadata !{i64 818}
!846 = metadata !{i64 819}
!847 = metadata !{i64 820}
!848 = metadata !{i64 821}
!849 = metadata !{i64 822}
!850 = metadata !{i64 823}
!851 = metadata !{i64 824}
!852 = metadata !{i64 825}
!853 = metadata !{i64 826}
!854 = metadata !{i64 827}
!855 = metadata !{i64 828}
!856 = metadata !{i64 829}
!857 = metadata !{i64 830}
!858 = metadata !{i64 831}
!859 = metadata !{i64 832}
!860 = metadata !{i64 833}
!861 = metadata !{i64 834}
!862 = metadata !{i64 835}
!863 = metadata !{i64 836}
!864 = metadata !{i64 837}
!865 = metadata !{i64 838}
!866 = metadata !{i64 839}
!867 = metadata !{i64 840}
!868 = metadata !{i64 841}
!869 = metadata !{i64 842}
!870 = metadata !{i64 843}
!871 = metadata !{i64 844}
!872 = metadata !{i64 845}
!873 = metadata !{i64 846}
!874 = metadata !{i64 847}
!875 = metadata !{i64 848}
!876 = metadata !{i64 849}
!877 = metadata !{i64 850}
!878 = metadata !{i64 851}
!879 = metadata !{i64 852}
!880 = metadata !{i64 853}
!881 = metadata !{i64 854}
!882 = metadata !{i64 855}
!883 = metadata !{i64 856}
!884 = metadata !{i64 857}
!885 = metadata !{i64 858}
!886 = metadata !{i64 859}
!887 = metadata !{i64 860}
!888 = metadata !{i64 861}
!889 = metadata !{i64 862}
!890 = metadata !{i64 863}
!891 = metadata !{i64 864}
!892 = metadata !{i64 865}
!893 = metadata !{i64 866}
!894 = metadata !{i64 867}
!895 = metadata !{i64 868}
!896 = metadata !{i64 869}
!897 = metadata !{i64 870}
!898 = metadata !{i64 871}
!899 = metadata !{i64 872}
!900 = metadata !{i64 873}
!901 = metadata !{i64 874}
!902 = metadata !{i64 875}
!903 = metadata !{i64 876}
!904 = metadata !{i64 877}
!905 = metadata !{i64 878}
!906 = metadata !{i64 879}
!907 = metadata !{i64 880}
!908 = metadata !{i64 881}
!909 = metadata !{i64 882}
!910 = metadata !{i64 883}
!911 = metadata !{i64 884}
!912 = metadata !{i64 885}
!913 = metadata !{i64 886}
!914 = metadata !{i64 887}
!915 = metadata !{i64 888}
!916 = metadata !{i64 889}
!917 = metadata !{i64 890}
!918 = metadata !{i64 891}
!919 = metadata !{i64 892}
!920 = metadata !{i64 893}
!921 = metadata !{i64 894}
!922 = metadata !{i64 895}
!923 = metadata !{i64 896}
!924 = metadata !{i64 897}
!925 = metadata !{i64 898}
!926 = metadata !{i64 899}
!927 = metadata !{i64 900}
