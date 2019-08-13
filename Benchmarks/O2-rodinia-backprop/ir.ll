; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/rodinia-backprop/fault injection/llfi-O2/backprop.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.BPNN = type { i32, i32, i32, float*, float*, float*, float*, float*, float*, float**, float**, float**, float** }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str2 = private unnamed_addr constant [34 x i8] c"Random number generator seed: %d\0A\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str5 = private unnamed_addr constant [33 x i8] c"Saving %dx%dx%d network to '%s'\0A\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"Reading '%s'\0A\00", align 1
@.str7 = private unnamed_addr constant [34 x i8] c"'%s' contains a %dx%dx%d network\0A\00", align 1
@.str8 = private unnamed_addr constant [25 x i8] c"Reading input weights...\00", align 1
@.str9 = private unnamed_addr constant [31 x i8] c"Done\0AReading hidden weights...\00", align 1
@str = private unnamed_addr constant [48 x i8] c"ALLOC_1D_DBL: Couldn't allocate array of floats\00"
@str11 = private unnamed_addr constant [50 x i8] c"ALLOC_2D_DBL: Couldn't allocate array of dbl ptrs\00"
@str12 = private unnamed_addr constant [46 x i8] c"BPNN_CREATE: Couldn't allocate neural network\00"
@str13 = private unnamed_addr constant [5 x i8] c"Done\00"
@str1 = private unnamed_addr constant [27 x i8] c"Performing CPU computation\00"
@layer_size = global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Input layer size : %d\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str3 = private unnamed_addr constant [41 x i8] c"usage: backprop <num of input elements>\0A\00", align 1
@str2 = private unnamed_addr constant [25 x i8] c"Starting training kernel\00"
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
  %1 = tail call i32 @rand() #3, !llfi_index !5
  %2 = sitofp i32 %1 to float, !llfi_index !6
  %3 = fmul float %2, 0x3E00000000000000, !llfi_index !7
  %4 = fpext float %3 to double, !llfi_index !8
  %5 = fmul double %4, 2.000000e+00, !llfi_index !9
  %6 = fadd double %5, -1.000000e+00, !llfi_index !10
  %7 = fptrunc double %6 to float, !llfi_index !11
  ret float %7, !llfi_index !12
}

; Function Attrs: nounwind uwtable
define float @squash(double) #0 {
  %x = fptrunc double %0 to float, !llfi_index !13
  %2 = fsub float -0.000000e+00, %x, !llfi_index !14
  %3 = fpext float %2 to double, !llfi_index !15
  %4 = tail call double @exp(double %3) #3, !llfi_index !16
  %5 = fadd double %4, 1.000000e+00, !llfi_index !17
  %6 = fdiv double 1.000000e+00, %5, !llfi_index !18
  %7 = fptrunc double %6 to float, !llfi_index !19
  ret float %7, !llfi_index !20
}

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: nounwind uwtable
define noalias float* @alloc_1d_dbl(i32 %n) #0 {
  %1 = shl i32 %n, 2, !llfi_index !21
  %2 = zext i32 %1 to i64, !llfi_index !22
  %3 = tail call noalias i8* @malloc(i64 %2) #3, !llfi_index !23
  %4 = icmp eq i8* %3, null, !llfi_index !24
  br i1 %4, label %5, label %6, !llfi_index !25

; <label>:5                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)), !llfi_index !26
  br label %8, !llfi_index !27

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to float*, !llfi_index !28
  br label %8, !llfi_index !29

; <label>:8                                       ; preds = %6, %5
  %.0 = phi float* [ null, %5 ], [ %7, %6 ], !llfi_index !30
  ret float* %.0, !llfi_index !31
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind uwtable
define noalias float** @alloc_2d_dbl(i32 %m, i32 %n) #0 {
  %1 = shl i32 %m, 3, !llfi_index !32
  %2 = zext i32 %1 to i64, !llfi_index !33
  %3 = tail call noalias i8* @malloc(i64 %2) #3, !llfi_index !34
  %4 = bitcast i8* %3 to float**, !llfi_index !35
  %5 = icmp eq i8* %3, null, !llfi_index !36
  br i1 %5, label %9, label %.preheader, !llfi_index !37

.preheader:                                       ; preds = %0
  %6 = icmp sgt i32 %m, 0, !llfi_index !38
  br i1 %6, label %.lr.ph, label %.loopexit, !llfi_index !39

.lr.ph:                                           ; preds = %.preheader
  %7 = shl i32 %n, 2, !llfi_index !40
  %8 = zext i32 %7 to i64, !llfi_index !41
  br label %10, !llfi_index !42

; <label>:9                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str11, i64 0, i64 0)), !llfi_index !43
  br label %.loopexit, !llfi_index !44

; <label>:10                                      ; preds = %alloc_1d_dbl.exit, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %alloc_1d_dbl.exit ], !llfi_index !45
  %11 = tail call noalias i8* @malloc(i64 %8) #3, !llfi_index !46
  %12 = icmp eq i8* %11, null, !llfi_index !47
  br i1 %12, label %13, label %14, !llfi_index !48

; <label>:13                                      ; preds = %10
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !49
  br label %alloc_1d_dbl.exit, !llfi_index !50

; <label>:14                                      ; preds = %10
  %15 = bitcast i8* %11 to float*, !llfi_index !51
  br label %alloc_1d_dbl.exit, !llfi_index !52

alloc_1d_dbl.exit:                                ; preds = %14, %13
  %.0.i = phi float* [ null, %13 ], [ %15, %14 ], !llfi_index !53
  %16 = getelementptr inbounds float** %4, i64 %indvars.iv, !llfi_index !54
  store float* %.0.i, float** %16, align 8, !tbaa !55, !llfi_index !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !60
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !61
  %exitcond = icmp eq i32 %lftr.wideiv, %m, !llfi_index !62
  br i1 %exitcond, label %.loopexit, label %10, !llfi_index !63

.loopexit:                                        ; preds = %alloc_1d_dbl.exit, %9, %.preheader
  %.0 = phi float** [ null, %9 ], [ %4, %.preheader ], [ %4, %alloc_1d_dbl.exit ], !llfi_index !64
  ret float** %.0, !llfi_index !65
}

; Function Attrs: nounwind uwtable
define i32 @bpnn_randomize_weights(float** nocapture readonly %w, i32 %m, i32 %n) #0 {
  %1 = icmp slt i32 %m, 0, !llfi_index !66
  br i1 %1, label %._crit_edge3, label %.preheader.lr.ph, !llfi_index !67

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp slt i32 %n, 0, !llfi_index !68
  %3 = add i32 %n, 1, !llfi_index !69
  %4 = add i32 %m, 1, !llfi_index !70
  br label %.preheader, !llfi_index !71

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %._crit_edge ], [ 0, %.preheader.lr.ph ], !llfi_index !72
  br i1 %2, label %._crit_edge, label %.lr.ph, !llfi_index !73

.lr.ph:                                           ; preds = %.preheader
  %5 = getelementptr inbounds float** %w, i64 %indvars.iv4, !llfi_index !74
  br label %6, !llfi_index !75

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %6 ], [ 0, %.lr.ph ], !llfi_index !76
  %7 = tail call i32 @rand() #3, !llfi_index !77
  %8 = sitofp i32 %7 to float, !llfi_index !78
  %9 = fmul float %8, 0x3E00000000000000, !llfi_index !79
  %10 = load float** %5, align 8, !tbaa !55, !llfi_index !80
  %11 = getelementptr inbounds float* %10, i64 %indvars.iv, !llfi_index !81
  store float %9, float* %11, align 4, !tbaa !82, !llfi_index !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !85
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !86
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !llfi_index !87
  br i1 %exitcond, label %._crit_edge, label %6, !llfi_index !88

._crit_edge:                                      ; preds = %6, %.preheader
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !llfi_index !89
  %lftr.wideiv6 = trunc i64 %indvars.iv.next5 to i32, !llfi_index !90
  %exitcond7 = icmp eq i32 %lftr.wideiv6, %4, !llfi_index !91
  br i1 %exitcond7, label %._crit_edge3, label %.preheader, !llfi_index !92

._crit_edge3:                                     ; preds = %._crit_edge, %0
  ret i32 undef, !llfi_index !93
}

; Function Attrs: nounwind uwtable
define i32 @bpnn_randomize_row(float* nocapture %w, i32 %m) #0 {
  %1 = icmp slt i32 %m, 0, !llfi_index !94
  br i1 %1, label %._crit_edge, label %.lr.ph, !llfi_index !95

.lr.ph:                                           ; preds = %0
  %2 = add i32 %m, 1, !llfi_index !96
  %3 = zext i32 %m to i64, !llfi_index !97
  %4 = add i64 %3, 1, !llfi_index !98
  %end.idx = add i64 %3, 1, !llfi_index !99
  %n.vec = and i64 %4, 8589934584, !llfi_index !100
  %cmp.zero = icmp eq i64 %n.vec, 0, !llfi_index !101
  br i1 %cmp.zero, label %middle.block, label %vector.body, !llfi_index !102

vector.body:                                      ; preds = %vector.body, %.lr.ph
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ], !llfi_index !103
  %5 = getelementptr inbounds float* %w, i64 %index, !llfi_index !104
  %6 = bitcast float* %5 to <4 x float>*, !llfi_index !105
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %6, align 4, !llfi_index !106
  %.sum5 = or i64 %index, 4, !llfi_index !107
  %7 = getelementptr float* %w, i64 %.sum5, !llfi_index !108
  %8 = bitcast float* %7 to <4 x float>*, !llfi_index !109
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %8, align 4, !llfi_index !110
  %index.next = add i64 %index, 8, !llfi_index !111
  %9 = icmp eq i64 %index.next, %n.vec, !llfi_index !112
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !113, !llfi_index !116

middle.block:                                     ; preds = %vector.body, %.lr.ph
  %resume.val = phi i64 [ 0, %.lr.ph ], [ %n.vec, %vector.body ], !llfi_index !117
  %cmp.n = icmp eq i64 %end.idx, %resume.val, !llfi_index !118
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph, !llfi_index !119

scalar.ph:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %resume.val, %middle.block ], !llfi_index !120
  %10 = getelementptr inbounds float* %w, i64 %indvars.iv, !llfi_index !121
  store float 0x3FB99999A0000000, float* %10, align 4, !tbaa !82, !llfi_index !122
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !123
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !124
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !llfi_index !125
  br i1 %exitcond, label %._crit_edge, label %scalar.ph, !llvm.loop !126, !llfi_index !127

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %0
  ret i32 undef, !llfi_index !128
}

; Function Attrs: nounwind uwtable
define i32 @bpnn_zero_weights(float** nocapture readonly %w, i32 %m, i32 %n) #0 {
  %1 = icmp slt i32 %m, 0, !llfi_index !129
  br i1 %1, label %._crit_edge3, label %.preheader.lr.ph, !llfi_index !130

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp slt i32 %n, 0, !llfi_index !131
  %3 = zext i32 %n to i64, !llfi_index !132
  %4 = shl nuw nsw i64 %3, 2, !llfi_index !133
  %5 = add i64 %4, 4, !llfi_index !134
  %6 = add i32 %m, 1, !llfi_index !135
  br label %.preheader, !llfi_index !136

.preheader:                                       ; preds = %10, %.preheader.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %10 ], [ 0, %.preheader.lr.ph ], !llfi_index !137
  br i1 %2, label %10, label %.lr.ph, !llfi_index !138

.lr.ph:                                           ; preds = %.preheader
  %7 = getelementptr inbounds float** %w, i64 %indvars.iv, !llfi_index !139
  %8 = load float** %7, align 8, !tbaa !55, !llfi_index !140
  %9 = bitcast float* %8 to i8*, !llfi_index !141
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 %5, i32 4, i1 false), !llfi_index !142
  br label %10, !llfi_index !143

; <label>:10                                      ; preds = %.lr.ph, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !144
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !145
  %exitcond = icmp eq i32 %lftr.wideiv, %6, !llfi_index !146
  br i1 %exitcond, label %._crit_edge3, label %.preheader, !llfi_index !147

._crit_edge3:                                     ; preds = %10, %0
  ret i32 undef, !llfi_index !148
}

; Function Attrs: nounwind uwtable
define void @bpnn_initialize(i32 %seed) #0 {
  %1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0), i32 %seed) #3, !llfi_index !149
  tail call void @srand(i32 %seed) #3, !llfi_index !150
  ret void, !llfi_index !151
}

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind uwtable
define noalias %struct.BPNN* @bpnn_internal_create(i32 %n_in, i32 %n_hidden, i32 %n_out) #0 {
  %1 = tail call noalias i8* @malloc(i64 96) #3, !llfi_index !152
  %2 = icmp eq i8* %1, null, !llfi_index !153
  br i1 %2, label %3, label %4, !llfi_index !154

; <label>:3                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([46 x i8]* @str12, i64 0, i64 0)), !llfi_index !155
  br label %118, !llfi_index !156

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to %struct.BPNN*, !llfi_index !157
  %6 = bitcast i8* %1 to i32*, !llfi_index !158
  store i32 %n_in, i32* %6, align 4, !tbaa !159, !llfi_index !162
  %7 = getelementptr inbounds i8* %1, i64 4, !llfi_index !163
  %8 = bitcast i8* %7 to i32*, !llfi_index !164
  store i32 %n_hidden, i32* %8, align 4, !tbaa !165, !llfi_index !166
  %9 = getelementptr inbounds i8* %1, i64 8, !llfi_index !167
  %10 = bitcast i8* %9 to i32*, !llfi_index !168
  store i32 %n_out, i32* %10, align 4, !tbaa !169, !llfi_index !170
  %11 = add i32 %n_in, 1, !llfi_index !171
  %12 = shl i32 %11, 2, !llfi_index !172
  %13 = zext i32 %12 to i64, !llfi_index !173
  %14 = tail call noalias i8* @malloc(i64 %13) #3, !llfi_index !174
  %15 = icmp eq i8* %14, null, !llfi_index !175
  br i1 %15, label %16, label %17, !llfi_index !176

; <label>:16                                      ; preds = %4
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !177
  br label %alloc_1d_dbl.exit, !llfi_index !178

; <label>:17                                      ; preds = %4
  %18 = bitcast i8* %14 to float*, !llfi_index !179
  br label %alloc_1d_dbl.exit, !llfi_index !180

alloc_1d_dbl.exit:                                ; preds = %17, %16
  %.0.i = phi float* [ null, %16 ], [ %18, %17 ], !llfi_index !181
  %19 = getelementptr inbounds i8* %1, i64 16, !llfi_index !182
  %20 = bitcast i8* %19 to float**, !llfi_index !183
  store float* %.0.i, float** %20, align 8, !tbaa !184, !llfi_index !185
  %21 = add i32 %n_hidden, 1, !llfi_index !186
  %22 = shl i32 %21, 2, !llfi_index !187
  %23 = zext i32 %22 to i64, !llfi_index !188
  %24 = tail call noalias i8* @malloc(i64 %23) #3, !llfi_index !189
  %25 = icmp eq i8* %24, null, !llfi_index !190
  br i1 %25, label %26, label %27, !llfi_index !191

; <label>:26                                      ; preds = %alloc_1d_dbl.exit
  %puts.i1 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !192
  br label %alloc_1d_dbl.exit3, !llfi_index !193

; <label>:27                                      ; preds = %alloc_1d_dbl.exit
  %28 = bitcast i8* %24 to float*, !llfi_index !194
  br label %alloc_1d_dbl.exit3, !llfi_index !195

alloc_1d_dbl.exit3:                               ; preds = %27, %26
  %.0.i2 = phi float* [ null, %26 ], [ %28, %27 ], !llfi_index !196
  %29 = getelementptr inbounds i8* %1, i64 24, !llfi_index !197
  %30 = bitcast i8* %29 to float**, !llfi_index !198
  store float* %.0.i2, float** %30, align 8, !tbaa !199, !llfi_index !200
  %31 = shl i32 %n_out, 2, !llfi_index !201
  %32 = add i32 %31, 4, !llfi_index !202
  %33 = zext i32 %32 to i64, !llfi_index !203
  %34 = tail call noalias i8* @malloc(i64 %33) #3, !llfi_index !204
  %35 = icmp eq i8* %34, null, !llfi_index !205
  br i1 %35, label %36, label %37, !llfi_index !206

; <label>:36                                      ; preds = %alloc_1d_dbl.exit3
  %puts.i4 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !207
  br label %alloc_1d_dbl.exit6, !llfi_index !208

; <label>:37                                      ; preds = %alloc_1d_dbl.exit3
  %38 = bitcast i8* %34 to float*, !llfi_index !209
  br label %alloc_1d_dbl.exit6, !llfi_index !210

alloc_1d_dbl.exit6:                               ; preds = %37, %36
  %.0.i5 = phi float* [ null, %36 ], [ %38, %37 ], !llfi_index !211
  %39 = getelementptr inbounds i8* %1, i64 32, !llfi_index !212
  %40 = bitcast i8* %39 to float**, !llfi_index !213
  store float* %.0.i5, float** %40, align 8, !tbaa !214, !llfi_index !215
  %41 = tail call noalias i8* @malloc(i64 %23) #3, !llfi_index !216
  %42 = icmp eq i8* %41, null, !llfi_index !217
  br i1 %42, label %43, label %44, !llfi_index !218

; <label>:43                                      ; preds = %alloc_1d_dbl.exit6
  %puts.i7 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !219
  br label %alloc_1d_dbl.exit9, !llfi_index !220

; <label>:44                                      ; preds = %alloc_1d_dbl.exit6
  %45 = bitcast i8* %41 to float*, !llfi_index !221
  br label %alloc_1d_dbl.exit9, !llfi_index !222

alloc_1d_dbl.exit9:                               ; preds = %44, %43
  %.0.i8 = phi float* [ null, %43 ], [ %45, %44 ], !llfi_index !223
  %46 = getelementptr inbounds i8* %1, i64 40, !llfi_index !224
  %47 = bitcast i8* %46 to float**, !llfi_index !225
  store float* %.0.i8, float** %47, align 8, !tbaa !226, !llfi_index !227
  %48 = tail call noalias i8* @malloc(i64 %33) #3, !llfi_index !228
  %49 = icmp eq i8* %48, null, !llfi_index !229
  br i1 %49, label %50, label %51, !llfi_index !230

; <label>:50                                      ; preds = %alloc_1d_dbl.exit9
  %puts.i10 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !231
  br label %alloc_1d_dbl.exit12, !llfi_index !232

; <label>:51                                      ; preds = %alloc_1d_dbl.exit9
  %52 = bitcast i8* %48 to float*, !llfi_index !233
  br label %alloc_1d_dbl.exit12, !llfi_index !234

alloc_1d_dbl.exit12:                              ; preds = %51, %50
  %.0.i11 = phi float* [ null, %50 ], [ %52, %51 ], !llfi_index !235
  %53 = getelementptr inbounds i8* %1, i64 48, !llfi_index !236
  %54 = bitcast i8* %53 to float**, !llfi_index !237
  store float* %.0.i11, float** %54, align 8, !tbaa !238, !llfi_index !239
  %55 = tail call noalias i8* @malloc(i64 %33) #3, !llfi_index !240
  %56 = icmp eq i8* %55, null, !llfi_index !241
  br i1 %56, label %57, label %58, !llfi_index !242

; <label>:57                                      ; preds = %alloc_1d_dbl.exit12
  %puts.i13 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !243
  br label %alloc_1d_dbl.exit15, !llfi_index !244

; <label>:58                                      ; preds = %alloc_1d_dbl.exit12
  %59 = bitcast i8* %55 to float*, !llfi_index !245
  br label %alloc_1d_dbl.exit15, !llfi_index !246

alloc_1d_dbl.exit15:                              ; preds = %58, %57
  %.0.i14 = phi float* [ null, %57 ], [ %59, %58 ], !llfi_index !247
  %60 = getelementptr inbounds i8* %1, i64 56, !llfi_index !248
  %61 = bitcast i8* %60 to float**, !llfi_index !249
  store float* %.0.i14, float** %61, align 8, !tbaa !250, !llfi_index !251
  %62 = shl i32 %11, 3, !llfi_index !252
  %63 = zext i32 %62 to i64, !llfi_index !253
  %64 = tail call noalias i8* @malloc(i64 %63) #3, !llfi_index !254
  %65 = bitcast i8* %64 to float**, !llfi_index !255
  %66 = icmp eq i8* %64, null, !llfi_index !256
  br i1 %66, label %68, label %.preheader.i, !llfi_index !257

.preheader.i:                                     ; preds = %alloc_1d_dbl.exit15
  %67 = icmp sgt i32 %n_in, -1, !llfi_index !258
  br i1 %67, label %.lr.ph.i, label %alloc_2d_dbl.exit, !llfi_index !259

; <label>:68                                      ; preds = %alloc_1d_dbl.exit15
  %puts.i16 = tail call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str11, i64 0, i64 0)) #3, !llfi_index !260
  br label %alloc_2d_dbl.exit, !llfi_index !261

.lr.ph.i:                                         ; preds = %alloc_1d_dbl.exit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %alloc_1d_dbl.exit.i ], [ 0, %.preheader.i ], !llfi_index !262
  %69 = tail call noalias i8* @malloc(i64 %23) #3, !llfi_index !263
  %70 = icmp eq i8* %69, null, !llfi_index !264
  br i1 %70, label %71, label %72, !llfi_index !265

; <label>:71                                      ; preds = %.lr.ph.i
  %puts.i.i = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !266
  br label %alloc_1d_dbl.exit.i, !llfi_index !267

; <label>:72                                      ; preds = %.lr.ph.i
  %73 = bitcast i8* %69 to float*, !llfi_index !268
  br label %alloc_1d_dbl.exit.i, !llfi_index !269

alloc_1d_dbl.exit.i:                              ; preds = %72, %71
  %.0.i.i = phi float* [ null, %71 ], [ %73, %72 ], !llfi_index !270
  %74 = getelementptr inbounds float** %65, i64 %indvars.iv.i, !llfi_index !271
  store float* %.0.i.i, float** %74, align 8, !tbaa !55, !llfi_index !272
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !llfi_index !273
  %lftr.wideiv58 = trunc i64 %indvars.iv.next.i to i32, !llfi_index !274
  %exitcond59 = icmp eq i32 %lftr.wideiv58, %11, !llfi_index !275
  br i1 %exitcond59, label %alloc_2d_dbl.exit, label %.lr.ph.i, !llfi_index !276

alloc_2d_dbl.exit:                                ; preds = %alloc_1d_dbl.exit.i, %68, %.preheader.i
  %.0.i17 = phi float** [ null, %68 ], [ %65, %.preheader.i ], [ %65, %alloc_1d_dbl.exit.i ], !llfi_index !277
  %75 = getelementptr inbounds i8* %1, i64 64, !llfi_index !278
  %76 = bitcast i8* %75 to float***, !llfi_index !279
  store float** %.0.i17, float*** %76, align 8, !tbaa !280, !llfi_index !281
  %77 = shl i32 %21, 3, !llfi_index !282
  %78 = zext i32 %77 to i64, !llfi_index !283
  %79 = tail call noalias i8* @malloc(i64 %78) #3, !llfi_index !284
  %80 = bitcast i8* %79 to float**, !llfi_index !285
  %81 = icmp eq i8* %79, null, !llfi_index !286
  br i1 %81, label %83, label %.preheader.i18, !llfi_index !287

.preheader.i18:                                   ; preds = %alloc_2d_dbl.exit
  %82 = icmp sgt i32 %n_hidden, -1, !llfi_index !288
  br i1 %82, label %.lr.ph.i19, label %alloc_2d_dbl.exit29, !llfi_index !289

; <label>:83                                      ; preds = %alloc_2d_dbl.exit
  %puts.i20 = tail call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str11, i64 0, i64 0)) #3, !llfi_index !290
  br label %alloc_2d_dbl.exit29, !llfi_index !291

.lr.ph.i19:                                       ; preds = %alloc_1d_dbl.exit.i27, %.preheader.i18
  %indvars.iv.i21 = phi i64 [ %indvars.iv.next.i24, %alloc_1d_dbl.exit.i27 ], [ 0, %.preheader.i18 ], !llfi_index !292
  %84 = tail call noalias i8* @malloc(i64 %33) #3, !llfi_index !293
  %85 = icmp eq i8* %84, null, !llfi_index !294
  br i1 %85, label %86, label %87, !llfi_index !295

; <label>:86                                      ; preds = %.lr.ph.i19
  %puts.i.i22 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !296
  br label %alloc_1d_dbl.exit.i27, !llfi_index !297

; <label>:87                                      ; preds = %.lr.ph.i19
  %88 = bitcast i8* %84 to float*, !llfi_index !298
  br label %alloc_1d_dbl.exit.i27, !llfi_index !299

alloc_1d_dbl.exit.i27:                            ; preds = %87, %86
  %.0.i.i23 = phi float* [ null, %86 ], [ %88, %87 ], !llfi_index !300
  %89 = getelementptr inbounds float** %80, i64 %indvars.iv.i21, !llfi_index !301
  store float* %.0.i.i23, float** %89, align 8, !tbaa !55, !llfi_index !302
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i21, 1, !llfi_index !303
  %lftr.wideiv56 = trunc i64 %indvars.iv.next.i24 to i32, !llfi_index !304
  %exitcond57 = icmp eq i32 %lftr.wideiv56, %21, !llfi_index !305
  br i1 %exitcond57, label %alloc_2d_dbl.exit29, label %.lr.ph.i19, !llfi_index !306

alloc_2d_dbl.exit29:                              ; preds = %alloc_1d_dbl.exit.i27, %83, %.preheader.i18
  %.0.i28 = phi float** [ null, %83 ], [ %80, %.preheader.i18 ], [ %80, %alloc_1d_dbl.exit.i27 ], !llfi_index !307
  %90 = getelementptr inbounds i8* %1, i64 72, !llfi_index !308
  %91 = bitcast i8* %90 to float***, !llfi_index !309
  store float** %.0.i28, float*** %91, align 8, !tbaa !310, !llfi_index !311
  %92 = tail call noalias i8* @malloc(i64 %63) #3, !llfi_index !312
  %93 = bitcast i8* %92 to float**, !llfi_index !313
  %94 = icmp eq i8* %92, null, !llfi_index !314
  br i1 %94, label %96, label %.preheader.i30, !llfi_index !315

.preheader.i30:                                   ; preds = %alloc_2d_dbl.exit29
  %95 = icmp sgt i32 %n_in, -1, !llfi_index !316
  br i1 %95, label %.lr.ph.i31, label %alloc_2d_dbl.exit41, !llfi_index !317

; <label>:96                                      ; preds = %alloc_2d_dbl.exit29
  %puts.i32 = tail call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str11, i64 0, i64 0)) #3, !llfi_index !318
  br label %alloc_2d_dbl.exit41, !llfi_index !319

.lr.ph.i31:                                       ; preds = %alloc_1d_dbl.exit.i39, %.preheader.i30
  %indvars.iv.i33 = phi i64 [ %indvars.iv.next.i36, %alloc_1d_dbl.exit.i39 ], [ 0, %.preheader.i30 ], !llfi_index !320
  %97 = tail call noalias i8* @malloc(i64 %23) #3, !llfi_index !321
  %98 = icmp eq i8* %97, null, !llfi_index !322
  br i1 %98, label %99, label %100, !llfi_index !323

; <label>:99                                      ; preds = %.lr.ph.i31
  %puts.i.i34 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !324
  br label %alloc_1d_dbl.exit.i39, !llfi_index !325

; <label>:100                                     ; preds = %.lr.ph.i31
  %101 = bitcast i8* %97 to float*, !llfi_index !326
  br label %alloc_1d_dbl.exit.i39, !llfi_index !327

alloc_1d_dbl.exit.i39:                            ; preds = %100, %99
  %.0.i.i35 = phi float* [ null, %99 ], [ %101, %100 ], !llfi_index !328
  %102 = getelementptr inbounds float** %93, i64 %indvars.iv.i33, !llfi_index !329
  store float* %.0.i.i35, float** %102, align 8, !tbaa !55, !llfi_index !330
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i33, 1, !llfi_index !331
  %lftr.wideiv54 = trunc i64 %indvars.iv.next.i36 to i32, !llfi_index !332
  %exitcond55 = icmp eq i32 %lftr.wideiv54, %11, !llfi_index !333
  br i1 %exitcond55, label %alloc_2d_dbl.exit41, label %.lr.ph.i31, !llfi_index !334

alloc_2d_dbl.exit41:                              ; preds = %alloc_1d_dbl.exit.i39, %96, %.preheader.i30
  %.0.i40 = phi float** [ null, %96 ], [ %93, %.preheader.i30 ], [ %93, %alloc_1d_dbl.exit.i39 ], !llfi_index !335
  %103 = getelementptr inbounds i8* %1, i64 80, !llfi_index !336
  %104 = bitcast i8* %103 to float***, !llfi_index !337
  store float** %.0.i40, float*** %104, align 8, !tbaa !338, !llfi_index !339
  %105 = tail call noalias i8* @malloc(i64 %78) #3, !llfi_index !340
  %106 = bitcast i8* %105 to float**, !llfi_index !341
  %107 = icmp eq i8* %105, null, !llfi_index !342
  br i1 %107, label %109, label %.preheader.i42, !llfi_index !343

.preheader.i42:                                   ; preds = %alloc_2d_dbl.exit41
  %108 = icmp sgt i32 %n_hidden, -1, !llfi_index !344
  br i1 %108, label %.lr.ph.i43, label %alloc_2d_dbl.exit53, !llfi_index !345

; <label>:109                                     ; preds = %alloc_2d_dbl.exit41
  %puts.i44 = tail call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str11, i64 0, i64 0)) #3, !llfi_index !346
  br label %alloc_2d_dbl.exit53, !llfi_index !347

.lr.ph.i43:                                       ; preds = %alloc_1d_dbl.exit.i51, %.preheader.i42
  %indvars.iv.i45 = phi i64 [ %indvars.iv.next.i48, %alloc_1d_dbl.exit.i51 ], [ 0, %.preheader.i42 ], !llfi_index !348
  %110 = tail call noalias i8* @malloc(i64 %33) #3, !llfi_index !349
  %111 = icmp eq i8* %110, null, !llfi_index !350
  br i1 %111, label %112, label %113, !llfi_index !351

; <label>:112                                     ; preds = %.lr.ph.i43
  %puts.i.i46 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !352
  br label %alloc_1d_dbl.exit.i51, !llfi_index !353

; <label>:113                                     ; preds = %.lr.ph.i43
  %114 = bitcast i8* %110 to float*, !llfi_index !354
  br label %alloc_1d_dbl.exit.i51, !llfi_index !355

alloc_1d_dbl.exit.i51:                            ; preds = %113, %112
  %.0.i.i47 = phi float* [ null, %112 ], [ %114, %113 ], !llfi_index !356
  %115 = getelementptr inbounds float** %106, i64 %indvars.iv.i45, !llfi_index !357
  store float* %.0.i.i47, float** %115, align 8, !tbaa !55, !llfi_index !358
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i45, 1, !llfi_index !359
  %lftr.wideiv = trunc i64 %indvars.iv.next.i48 to i32, !llfi_index !360
  %exitcond = icmp eq i32 %lftr.wideiv, %21, !llfi_index !361
  br i1 %exitcond, label %alloc_2d_dbl.exit53, label %.lr.ph.i43, !llfi_index !362

alloc_2d_dbl.exit53:                              ; preds = %alloc_1d_dbl.exit.i51, %109, %.preheader.i42
  %.0.i52 = phi float** [ null, %109 ], [ %106, %.preheader.i42 ], [ %106, %alloc_1d_dbl.exit.i51 ], !llfi_index !363
  %116 = getelementptr inbounds i8* %1, i64 88, !llfi_index !364
  %117 = bitcast i8* %116 to float***, !llfi_index !365
  store float** %.0.i52, float*** %117, align 8, !tbaa !366, !llfi_index !367
  br label %118, !llfi_index !368

; <label>:118                                     ; preds = %alloc_2d_dbl.exit53, %3
  %.0 = phi %struct.BPNN* [ null, %3 ], [ %5, %alloc_2d_dbl.exit53 ], !llfi_index !369
  ret %struct.BPNN* %.0, !llfi_index !370
}

; Function Attrs: nounwind uwtable
define void @bpnn_free(%struct.BPNN* nocapture %net) #0 {
  %1 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 0, !llfi_index !371
  %2 = load i32* %1, align 4, !tbaa !159, !llfi_index !372
  %3 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 1, !llfi_index !373
  %4 = load i32* %3, align 4, !tbaa !165, !llfi_index !374
  %5 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 3, !llfi_index !375
  %6 = load float** %5, align 8, !tbaa !184, !llfi_index !376
  %7 = bitcast float* %6 to i8*, !llfi_index !377
  tail call void @free(i8* %7) #3, !llfi_index !378
  %8 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 4, !llfi_index !379
  %9 = load float** %8, align 8, !tbaa !199, !llfi_index !380
  %10 = bitcast float* %9 to i8*, !llfi_index !381
  tail call void @free(i8* %10) #3, !llfi_index !382
  %11 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 5, !llfi_index !383
  %12 = load float** %11, align 8, !tbaa !214, !llfi_index !384
  %13 = bitcast float* %12 to i8*, !llfi_index !385
  tail call void @free(i8* %13) #3, !llfi_index !386
  %14 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 6, !llfi_index !387
  %15 = load float** %14, align 8, !tbaa !226, !llfi_index !388
  %16 = bitcast float* %15 to i8*, !llfi_index !389
  tail call void @free(i8* %16) #3, !llfi_index !390
  %17 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 7, !llfi_index !391
  %18 = load float** %17, align 8, !tbaa !238, !llfi_index !392
  %19 = bitcast float* %18 to i8*, !llfi_index !393
  tail call void @free(i8* %19) #3, !llfi_index !394
  %20 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 8, !llfi_index !395
  %21 = load float** %20, align 8, !tbaa !250, !llfi_index !396
  %22 = bitcast float* %21 to i8*, !llfi_index !397
  tail call void @free(i8* %22) #3, !llfi_index !398
  %23 = icmp slt i32 %2, 0, !llfi_index !399
  %.pre = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 9, !llfi_index !400
  %.pre12 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 11, !llfi_index !401
  br i1 %23, label %._crit_edge5, label %.lr.ph4, !llfi_index !402

.lr.ph4:                                          ; preds = %0
  %24 = add i32 %2, 1, !llfi_index !403
  br label %25, !llfi_index !404

; <label>:25                                      ; preds = %25, %.lr.ph4
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %25 ], [ 0, %.lr.ph4 ], !llfi_index !405
  %26 = load float*** %.pre, align 8, !tbaa !280, !llfi_index !406
  %27 = getelementptr inbounds float** %26, i64 %indvars.iv6, !llfi_index !407
  %28 = load float** %27, align 8, !tbaa !55, !llfi_index !408
  %29 = bitcast float* %28 to i8*, !llfi_index !409
  tail call void @free(i8* %29) #3, !llfi_index !410
  %30 = load float*** %.pre12, align 8, !tbaa !338, !llfi_index !411
  %31 = getelementptr inbounds float** %30, i64 %indvars.iv6, !llfi_index !412
  %32 = load float** %31, align 8, !tbaa !55, !llfi_index !413
  %33 = bitcast float* %32 to i8*, !llfi_index !414
  tail call void @free(i8* %33) #3, !llfi_index !415
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !llfi_index !416
  %lftr.wideiv8 = trunc i64 %indvars.iv.next7 to i32, !llfi_index !417
  %exitcond9 = icmp eq i32 %lftr.wideiv8, %24, !llfi_index !418
  br i1 %exitcond9, label %._crit_edge5, label %25, !llfi_index !419

._crit_edge5:                                     ; preds = %25, %0
  %34 = load float*** %.pre, align 8, !tbaa !280, !llfi_index !420
  %35 = bitcast float** %34 to i8*, !llfi_index !421
  tail call void @free(i8* %35) #3, !llfi_index !422
  %36 = load float*** %.pre12, align 8, !tbaa !338, !llfi_index !423
  %37 = bitcast float** %36 to i8*, !llfi_index !424
  tail call void @free(i8* %37) #3, !llfi_index !425
  %38 = icmp slt i32 %4, 0, !llfi_index !426
  %.pre14 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 10, !llfi_index !427
  %.pre16 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 12, !llfi_index !428
  br i1 %38, label %._crit_edge, label %.lr.ph, !llfi_index !429

.lr.ph:                                           ; preds = %._crit_edge5
  %39 = add i32 %4, 1, !llfi_index !430
  br label %40, !llfi_index !431

; <label>:40                                      ; preds = %40, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %40 ], [ 0, %.lr.ph ], !llfi_index !432
  %41 = load float*** %.pre14, align 8, !tbaa !310, !llfi_index !433
  %42 = getelementptr inbounds float** %41, i64 %indvars.iv, !llfi_index !434
  %43 = load float** %42, align 8, !tbaa !55, !llfi_index !435
  %44 = bitcast float* %43 to i8*, !llfi_index !436
  tail call void @free(i8* %44) #3, !llfi_index !437
  %45 = load float*** %.pre16, align 8, !tbaa !366, !llfi_index !438
  %46 = getelementptr inbounds float** %45, i64 %indvars.iv, !llfi_index !439
  %47 = load float** %46, align 8, !tbaa !55, !llfi_index !440
  %48 = bitcast float* %47 to i8*, !llfi_index !441
  tail call void @free(i8* %48) #3, !llfi_index !442
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !443
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !444
  %exitcond = icmp eq i32 %lftr.wideiv, %39, !llfi_index !445
  br i1 %exitcond, label %._crit_edge, label %40, !llfi_index !446

._crit_edge:                                      ; preds = %40, %._crit_edge5
  %49 = load float*** %.pre14, align 8, !tbaa !310, !llfi_index !447
  %50 = bitcast float** %49 to i8*, !llfi_index !448
  tail call void @free(i8* %50) #3, !llfi_index !449
  %51 = load float*** %.pre16, align 8, !tbaa !366, !llfi_index !450
  %52 = bitcast float** %51 to i8*, !llfi_index !451
  tail call void @free(i8* %52) #3, !llfi_index !452
  %53 = bitcast %struct.BPNN* %net to i8*, !llfi_index !453
  tail call void @free(i8* %53) #3, !llfi_index !454
  ret void, !llfi_index !455
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define noalias %struct.BPNN* @bpnn_create(i32 %n_in, i32 %n_hidden, i32 %n_out) #0 {
  %1 = tail call %struct.BPNN* @bpnn_internal_create(i32 %n_in, i32 %n_hidden, i32 %n_out), !llfi_index !456
  %2 = getelementptr inbounds %struct.BPNN* %1, i64 0, i32 9, !llfi_index !457
  %3 = load float*** %2, align 8, !tbaa !280, !llfi_index !458
  %4 = icmp slt i32 %n_in, 0, !llfi_index !459
  br i1 %4, label %bpnn_randomize_weights.exit, label %.preheader.lr.ph.i, !llfi_index !460

.preheader.lr.ph.i:                               ; preds = %0
  %5 = icmp slt i32 %n_hidden, 0, !llfi_index !461
  %6 = add i32 %n_hidden, 1, !llfi_index !462
  %7 = add i32 %n_in, 1, !llfi_index !463
  br label %.preheader.i, !llfi_index !464

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %indvars.iv4.i = phi i64 [ %indvars.iv.next5.i, %._crit_edge.i ], [ 0, %.preheader.lr.ph.i ], !llfi_index !465
  br i1 %5, label %._crit_edge.i, label %.lr.ph.i, !llfi_index !466

.lr.ph.i:                                         ; preds = %.preheader.i
  %8 = getelementptr inbounds float** %3, i64 %indvars.iv4.i, !llfi_index !467
  br label %9, !llfi_index !468

; <label>:9                                       ; preds = %9, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %9 ], [ 0, %.lr.ph.i ], !llfi_index !469
  %10 = tail call i32 @rand() #3, !llfi_index !470
  %11 = sitofp i32 %10 to float, !llfi_index !471
  %12 = fmul float %11, 0x3E00000000000000, !llfi_index !472
  %13 = load float** %8, align 8, !tbaa !55, !llfi_index !473
  %14 = getelementptr inbounds float* %13, i64 %indvars.iv.i, !llfi_index !474
  store float %12, float* %14, align 4, !tbaa !82, !llfi_index !475
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !llfi_index !476
  %lftr.wideiv43 = trunc i64 %indvars.iv.next.i to i32, !llfi_index !477
  %exitcond44 = icmp eq i32 %lftr.wideiv43, %6, !llfi_index !478
  br i1 %exitcond44, label %._crit_edge.i, label %9, !llfi_index !479

._crit_edge.i:                                    ; preds = %9, %.preheader.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1, !llfi_index !480
  %lftr.wideiv45 = trunc i64 %indvars.iv.next5.i to i32, !llfi_index !481
  %exitcond46 = icmp eq i32 %lftr.wideiv45, %7, !llfi_index !482
  br i1 %exitcond46, label %bpnn_randomize_weights.exit, label %.preheader.i, !llfi_index !483

bpnn_randomize_weights.exit:                      ; preds = %._crit_edge.i, %0
  %15 = getelementptr inbounds %struct.BPNN* %1, i64 0, i32 10, !llfi_index !484
  %16 = load float*** %15, align 8, !tbaa !310, !llfi_index !485
  %17 = icmp slt i32 %n_hidden, 0, !llfi_index !486
  br i1 %17, label %bpnn_randomize_weights.exit13, label %.preheader.lr.ph.i1, !llfi_index !487

.preheader.lr.ph.i1:                              ; preds = %bpnn_randomize_weights.exit
  %18 = icmp slt i32 %n_out, 0, !llfi_index !488
  %19 = add i32 %n_out, 1, !llfi_index !489
  %20 = add i32 %n_hidden, 1, !llfi_index !490
  br label %.preheader.i3, !llfi_index !491

.preheader.i3:                                    ; preds = %._crit_edge.i12, %.preheader.lr.ph.i1
  %indvars.iv4.i2 = phi i64 [ %indvars.iv.next5.i9, %._crit_edge.i12 ], [ 0, %.preheader.lr.ph.i1 ], !llfi_index !492
  br i1 %18, label %._crit_edge.i12, label %.lr.ph.i4, !llfi_index !493

.lr.ph.i4:                                        ; preds = %.preheader.i3
  %21 = getelementptr inbounds float** %16, i64 %indvars.iv4.i2, !llfi_index !494
  br label %22, !llfi_index !495

; <label>:22                                      ; preds = %22, %.lr.ph.i4
  %indvars.iv.i5 = phi i64 [ %indvars.iv.next.i6, %22 ], [ 0, %.lr.ph.i4 ], !llfi_index !496
  %23 = tail call i32 @rand() #3, !llfi_index !497
  %24 = sitofp i32 %23 to float, !llfi_index !498
  %25 = fmul float %24, 0x3E00000000000000, !llfi_index !499
  %26 = load float** %21, align 8, !tbaa !55, !llfi_index !500
  %27 = getelementptr inbounds float* %26, i64 %indvars.iv.i5, !llfi_index !501
  store float %25, float* %27, align 4, !tbaa !82, !llfi_index !502
  %indvars.iv.next.i6 = add nuw nsw i64 %indvars.iv.i5, 1, !llfi_index !503
  %lftr.wideiv39 = trunc i64 %indvars.iv.next.i6 to i32, !llfi_index !504
  %exitcond40 = icmp eq i32 %lftr.wideiv39, %19, !llfi_index !505
  br i1 %exitcond40, label %._crit_edge.i12, label %22, !llfi_index !506

._crit_edge.i12:                                  ; preds = %22, %.preheader.i3
  %indvars.iv.next5.i9 = add nuw nsw i64 %indvars.iv4.i2, 1, !llfi_index !507
  %lftr.wideiv41 = trunc i64 %indvars.iv.next5.i9 to i32, !llfi_index !508
  %exitcond42 = icmp eq i32 %lftr.wideiv41, %20, !llfi_index !509
  br i1 %exitcond42, label %bpnn_randomize_weights.exit13, label %.preheader.i3, !llfi_index !510

bpnn_randomize_weights.exit13:                    ; preds = %._crit_edge.i12, %bpnn_randomize_weights.exit
  %28 = getelementptr inbounds %struct.BPNN* %1, i64 0, i32 11, !llfi_index !511
  %29 = load float*** %28, align 8, !tbaa !338, !llfi_index !512
  br i1 %4, label %bpnn_zero_weights.exit, label %.preheader.lr.ph.i14, !llfi_index !513

.preheader.lr.ph.i14:                             ; preds = %bpnn_randomize_weights.exit13
  %30 = zext i32 %n_hidden to i64, !llfi_index !514
  %31 = shl nuw nsw i64 %30, 2, !llfi_index !515
  %32 = add i64 %31, 4, !llfi_index !516
  %33 = add i32 %n_in, 1, !llfi_index !517
  br label %.preheader.i16, !llfi_index !518

.preheader.i16:                                   ; preds = %37, %.preheader.lr.ph.i14
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i18, %37 ], [ 0, %.preheader.lr.ph.i14 ], !llfi_index !519
  br i1 %17, label %37, label %.lr.ph.i17, !llfi_index !520

.lr.ph.i17:                                       ; preds = %.preheader.i16
  %34 = getelementptr inbounds float** %29, i64 %indvars.iv.i15, !llfi_index !521
  %35 = load float** %34, align 8, !tbaa !55, !llfi_index !522
  %36 = bitcast float* %35 to i8*, !llfi_index !523
  tail call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 %32, i32 4, i1 false) #3, !llfi_index !524
  br label %37, !llfi_index !525

; <label>:37                                      ; preds = %.lr.ph.i17, %.preheader.i16
  %indvars.iv.next.i18 = add nuw nsw i64 %indvars.iv.i15, 1, !llfi_index !526
  %lftr.wideiv37 = trunc i64 %indvars.iv.next.i18 to i32, !llfi_index !527
  %exitcond38 = icmp eq i32 %lftr.wideiv37, %33, !llfi_index !528
  br i1 %exitcond38, label %bpnn_zero_weights.exit, label %.preheader.i16, !llfi_index !529

bpnn_zero_weights.exit:                           ; preds = %37, %bpnn_randomize_weights.exit13
  %38 = getelementptr inbounds %struct.BPNN* %1, i64 0, i32 12, !llfi_index !530
  %39 = load float*** %38, align 8, !tbaa !366, !llfi_index !531
  br i1 %17, label %bpnn_zero_weights.exit34, label %.preheader.lr.ph.i27, !llfi_index !532

.preheader.lr.ph.i27:                             ; preds = %bpnn_zero_weights.exit
  %40 = icmp slt i32 %n_out, 0, !llfi_index !533
  %41 = zext i32 %n_out to i64, !llfi_index !534
  %42 = shl nuw nsw i64 %41, 2, !llfi_index !535
  %43 = add i64 %42, 4, !llfi_index !536
  %44 = add i32 %n_hidden, 1, !llfi_index !537
  br label %.preheader.i29, !llfi_index !538

.preheader.i29:                                   ; preds = %48, %.preheader.lr.ph.i27
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i31, %48 ], [ 0, %.preheader.lr.ph.i27 ], !llfi_index !539
  br i1 %40, label %48, label %.lr.ph.i30, !llfi_index !540

.lr.ph.i30:                                       ; preds = %.preheader.i29
  %45 = getelementptr inbounds float** %39, i64 %indvars.iv.i28, !llfi_index !541
  %46 = load float** %45, align 8, !tbaa !55, !llfi_index !542
  %47 = bitcast float* %46 to i8*, !llfi_index !543
  tail call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 %43, i32 4, i1 false) #3, !llfi_index !544
  br label %48, !llfi_index !545

; <label>:48                                      ; preds = %.lr.ph.i30, %.preheader.i29
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i28, 1, !llfi_index !546
  %lftr.wideiv35 = trunc i64 %indvars.iv.next.i31 to i32, !llfi_index !547
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %44, !llfi_index !548
  br i1 %exitcond36, label %bpnn_zero_weights.exit34, label %.preheader.i29, !llfi_index !549

bpnn_zero_weights.exit34:                         ; preds = %48, %bpnn_zero_weights.exit
  %49 = getelementptr inbounds %struct.BPNN* %1, i64 0, i32 8, !llfi_index !550
  %50 = load float** %49, align 8, !tbaa !250, !llfi_index !551
  %51 = icmp slt i32 %n_out, 0, !llfi_index !552
  br i1 %51, label %bpnn_randomize_row.exit, label %.lr.ph.i21, !llfi_index !553

.lr.ph.i21:                                       ; preds = %bpnn_zero_weights.exit34
  %52 = add i32 %n_out, 1, !llfi_index !554
  %53 = zext i32 %n_out to i64, !llfi_index !555
  %54 = add i64 %53, 1, !llfi_index !556
  %end.idx = add i64 %53, 1, !llfi_index !557
  %n.vec = and i64 %54, 8589934584, !llfi_index !558
  %cmp.zero = icmp eq i64 %n.vec, 0, !llfi_index !559
  br i1 %cmp.zero, label %middle.block, label %vector.body, !llfi_index !560

vector.body:                                      ; preds = %vector.body, %.lr.ph.i21
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i21 ], !llfi_index !561
  %55 = getelementptr inbounds float* %50, i64 %index, !llfi_index !562
  %56 = bitcast float* %55 to <4 x float>*, !llfi_index !563
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %56, align 4, !llfi_index !564
  %.sum50 = or i64 %index, 4, !llfi_index !565
  %57 = getelementptr float* %50, i64 %.sum50, !llfi_index !566
  %58 = bitcast float* %57 to <4 x float>*, !llfi_index !567
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %58, align 4, !llfi_index !568
  %index.next = add i64 %index, 8, !llfi_index !569
  %59 = icmp eq i64 %index.next, %n.vec, !llfi_index !570
  br i1 %59, label %middle.block, label %vector.body, !llvm.loop !571, !llfi_index !572

middle.block:                                     ; preds = %vector.body, %.lr.ph.i21
  %resume.val = phi i64 [ 0, %.lr.ph.i21 ], [ %n.vec, %vector.body ], !llfi_index !573
  %cmp.n = icmp eq i64 %end.idx, %resume.val, !llfi_index !574
  br i1 %cmp.n, label %bpnn_randomize_row.exit, label %scalar.ph, !llfi_index !575

scalar.ph:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.i22 = phi i64 [ %indvars.iv.next.i23, %scalar.ph ], [ %resume.val, %middle.block ], !llfi_index !576
  %60 = getelementptr inbounds float* %50, i64 %indvars.iv.i22, !llfi_index !577
  store float 0x3FB99999A0000000, float* %60, align 4, !tbaa !82, !llfi_index !578
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i22, 1, !llfi_index !579
  %lftr.wideiv = trunc i64 %indvars.iv.next.i23 to i32, !llfi_index !580
  %exitcond = icmp eq i32 %lftr.wideiv, %52, !llfi_index !581
  br i1 %exitcond, label %bpnn_randomize_row.exit, label %scalar.ph, !llvm.loop !582, !llfi_index !583

bpnn_randomize_row.exit:                          ; preds = %scalar.ph, %middle.block, %bpnn_zero_weights.exit34
  ret %struct.BPNN* %1, !llfi_index !584
}

; Function Attrs: nounwind uwtable
define void @bpnn_layerforward(float* nocapture %l1, float* nocapture %l2, float** nocapture readonly %conn, i32 %n1, i32 %n2) #0 {
  store float 1.000000e+00, float* %l1, align 4, !tbaa !82, !llfi_index !585
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !586
  %1 = icmp slt i32 %n2, 1, !llfi_index !587
  br i1 %1, label %._crit_edge4, label %.preheader.lr.ph, !llfi_index !588

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp slt i32 %n1, 0, !llfi_index !589
  %3 = add i32 %n1, 1, !llfi_index !590
  %4 = add i32 %n2, 1, !llfi_index !591
  br label %.preheader, !llfi_index !592

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %._crit_edge ], [ 1, %.preheader.lr.ph ], !llfi_index !593
  br i1 %2, label %._crit_edge, label %.lr.ph, !llfi_index !594

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ], !llfi_index !595
  %sum.01 = phi float [ %12, %.lr.ph ], [ 0.000000e+00, %.preheader ], !llfi_index !596
  %5 = getelementptr inbounds float** %conn, i64 %indvars.iv, !llfi_index !597
  %6 = load float** %5, align 8, !tbaa !55, !llfi_index !598
  %7 = getelementptr inbounds float* %6, i64 %indvars.iv5, !llfi_index !599
  %8 = load float* %7, align 4, !tbaa !82, !llfi_index !600
  %9 = getelementptr inbounds float* %l1, i64 %indvars.iv, !llfi_index !601
  %10 = load float* %9, align 4, !tbaa !82, !llfi_index !602
  %11 = fmul float %8, %10, !llfi_index !603
  %12 = fadd float %sum.01, %11, !llfi_index !604
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !605
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !606
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !llfi_index !607
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !608

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %sum.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %12, %.lr.ph ], !llfi_index !609
  %13 = fsub float -0.000000e+00, %sum.0.lcssa, !llfi_index !610
  %14 = fpext float %13 to double, !llfi_index !611
  %15 = tail call double @exp(double %14) #3, !llfi_index !612
  %16 = fadd double %15, 1.000000e+00, !llfi_index !613
  %17 = fdiv double 1.000000e+00, %16, !llfi_index !614
  %18 = fptrunc double %17 to float, !llfi_index !615
  %19 = getelementptr inbounds float* %l2, i64 %indvars.iv5, !llfi_index !616
  store float %18, float* %19, align 4, !tbaa !82, !llfi_index !617
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !llfi_index !618
  %lftr.wideiv7 = trunc i64 %indvars.iv.next6 to i32, !llfi_index !619
  %exitcond8 = icmp eq i32 %lftr.wideiv7, %4, !llfi_index !620
  br i1 %exitcond8, label %._crit_edge4, label %.preheader, !llfi_index !621

._crit_edge4:                                     ; preds = %._crit_edge, %0
  ret void, !llfi_index !622
}

declare void @omp_set_num_threads(i32) #2

; Function Attrs: nounwind uwtable
define void @bpnn_output_error(float* nocapture %delta, float* nocapture readonly %target, float* nocapture readonly %output, i32 %nj, float* nocapture %err) #0 {
  %1 = icmp slt i32 %nj, 1, !llfi_index !623
  br i1 %1, label %._crit_edge, label %.lr.ph, !llfi_index !624

.lr.ph:                                           ; preds = %0
  %2 = add i32 %nj, 1, !llfi_index !625
  br label %3, !llfi_index !626

; <label>:3                                       ; preds = %19, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ 1, %.lr.ph ], !llfi_index !627
  %errsum.02 = phi float [ %21, %19 ], [ 0.000000e+00, %.lr.ph ], !llfi_index !628
  %4 = getelementptr inbounds float* %output, i64 %indvars.iv, !llfi_index !629
  %5 = load float* %4, align 4, !tbaa !82, !llfi_index !630
  %6 = getelementptr inbounds float* %target, i64 %indvars.iv, !llfi_index !631
  %7 = load float* %6, align 4, !tbaa !82, !llfi_index !632
  %8 = fpext float %5 to double, !llfi_index !633
  %9 = fsub double 1.000000e+00, %8, !llfi_index !634
  %10 = fmul double %8, %9, !llfi_index !635
  %11 = fsub float %7, %5, !llfi_index !636
  %12 = fpext float %11 to double, !llfi_index !637
  %13 = fmul double %10, %12, !llfi_index !638
  %14 = fptrunc double %13 to float, !llfi_index !639
  %15 = getelementptr inbounds float* %delta, i64 %indvars.iv, !llfi_index !640
  store float %14, float* %15, align 4, !tbaa !82, !llfi_index !641
  %16 = fcmp ogt float %14, 0.000000e+00, !llfi_index !642
  br i1 %16, label %19, label %17, !llfi_index !643

; <label>:17                                      ; preds = %3
  %18 = fsub float -0.000000e+00, %14, !llfi_index !644
  br label %19, !llfi_index !645

; <label>:19                                      ; preds = %17, %3
  %20 = phi float [ %18, %17 ], [ %14, %3 ], !llfi_index !646
  %21 = fadd float %errsum.02, %20, !llfi_index !647
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !648
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !649
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !llfi_index !650
  br i1 %exitcond, label %._crit_edge, label %3, !llfi_index !651

._crit_edge:                                      ; preds = %19, %0
  %errsum.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %21, %19 ], !llfi_index !652
  store float %errsum.0.lcssa, float* %err, align 4, !tbaa !82, !llfi_index !653
  ret void, !llfi_index !654
}

; Function Attrs: nounwind uwtable
define void @bpnn_hidden_error(float* nocapture %delta_h, i32 %nh, float* nocapture readonly %delta_o, i32 %no, float** nocapture readonly %who, float* nocapture readonly %hidden, float* nocapture %err) #0 {
  %1 = icmp slt i32 %nh, 1, !llfi_index !655
  br i1 %1, label %._crit_edge7, label %.lr.ph6, !llfi_index !656

.lr.ph6:                                          ; preds = %0
  %2 = icmp slt i32 %no, 1, !llfi_index !657
  %3 = add i32 %no, 1, !llfi_index !658
  %4 = add i32 %nh, 1, !llfi_index !659
  br label %5, !llfi_index !660

; <label>:5                                       ; preds = %27, %.lr.ph6
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %27 ], [ 1, %.lr.ph6 ], !llfi_index !661
  %errsum.04 = phi float [ %29, %27 ], [ 0.000000e+00, %.lr.ph6 ], !llfi_index !662
  %6 = getelementptr inbounds float* %hidden, i64 %indvars.iv10, !llfi_index !663
  %7 = load float* %6, align 4, !tbaa !82, !llfi_index !664
  br i1 %2, label %17, label %.lr.ph, !llfi_index !665

.lr.ph:                                           ; preds = %5
  %8 = getelementptr inbounds float** %who, i64 %indvars.iv10, !llfi_index !666
  %9 = load float** %8, align 8, !tbaa !55, !llfi_index !667
  br label %10, !llfi_index !668

; <label>:10                                      ; preds = %10, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %10 ], [ 1, %.lr.ph ], !llfi_index !669
  %sum.02 = phi float [ %16, %10 ], [ 0.000000e+00, %.lr.ph ], !llfi_index !670
  %11 = getelementptr inbounds float* %delta_o, i64 %indvars.iv, !llfi_index !671
  %12 = load float* %11, align 4, !tbaa !82, !llfi_index !672
  %13 = getelementptr inbounds float* %9, i64 %indvars.iv, !llfi_index !673
  %14 = load float* %13, align 4, !tbaa !82, !llfi_index !674
  %15 = fmul float %12, %14, !llfi_index !675
  %16 = fadd float %sum.02, %15, !llfi_index !676
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !677
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !678
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !llfi_index !679
  br i1 %exitcond, label %._crit_edge, label %10, !llfi_index !680

._crit_edge:                                      ; preds = %10
  %phitmp = fpext float %16 to double, !llfi_index !681
  br label %17, !llfi_index !682

; <label>:17                                      ; preds = %._crit_edge, %5
  %sum.0.lcssa = phi double [ %phitmp, %._crit_edge ], [ 0.000000e+00, %5 ], !llfi_index !683
  %18 = fpext float %7 to double, !llfi_index !684
  %19 = fsub double 1.000000e+00, %18, !llfi_index !685
  %20 = fmul double %18, %19, !llfi_index !686
  %21 = fmul double %20, %sum.0.lcssa, !llfi_index !687
  %22 = fptrunc double %21 to float, !llfi_index !688
  %23 = getelementptr inbounds float* %delta_h, i64 %indvars.iv10, !llfi_index !689
  store float %22, float* %23, align 4, !tbaa !82, !llfi_index !690
  %24 = fcmp ogt float %22, 0.000000e+00, !llfi_index !691
  br i1 %24, label %27, label %25, !llfi_index !692

; <label>:25                                      ; preds = %17
  %26 = fsub float -0.000000e+00, %22, !llfi_index !693
  br label %27, !llfi_index !694

; <label>:27                                      ; preds = %25, %17
  %28 = phi float [ %26, %25 ], [ %22, %17 ], !llfi_index !695
  %29 = fadd float %errsum.04, %28, !llfi_index !696
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !llfi_index !697
  %lftr.wideiv12 = trunc i64 %indvars.iv.next11 to i32, !llfi_index !698
  %exitcond13 = icmp eq i32 %lftr.wideiv12, %4, !llfi_index !699
  br i1 %exitcond13, label %._crit_edge7, label %5, !llfi_index !700

._crit_edge7:                                     ; preds = %27, %0
  %errsum.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %29, %27 ], !llfi_index !701
  store float %errsum.0.lcssa, float* %err, align 4, !tbaa !82, !llfi_index !702
  ret void, !llfi_index !703
}

; Function Attrs: nounwind uwtable
define void @bpnn_adjust_weights(float* nocapture readonly %delta, i32 %ndelta, float* nocapture %ly, i32 %nly, float** nocapture readonly %w, float** nocapture readonly %oldw) #0 {
  store float 1.000000e+00, float* %ly, align 4, !tbaa !82, !llfi_index !704
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !705
  %1 = icmp slt i32 %ndelta, 1, !llfi_index !706
  br i1 %1, label %._crit_edge3, label %.preheader.lr.ph, !llfi_index !707

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp slt i32 %nly, 0, !llfi_index !708
  %3 = add i32 %nly, 1, !llfi_index !709
  %4 = add i32 %ndelta, 1, !llfi_index !710
  br label %.preheader, !llfi_index !711

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %._crit_edge ], [ 1, %.preheader.lr.ph ], !llfi_index !712
  br i1 %2, label %._crit_edge, label %.lr.ph, !llfi_index !713

.lr.ph:                                           ; preds = %.preheader
  %5 = getelementptr inbounds float* %delta, i64 %indvars.iv4, !llfi_index !714
  br label %6, !llfi_index !715

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %6 ], [ 0, %.lr.ph ], !llfi_index !716
  %7 = load float* %5, align 4, !tbaa !82, !llfi_index !717
  %8 = fpext float %7 to double, !llfi_index !718
  %9 = fmul double %8, 3.000000e-01, !llfi_index !719
  %10 = getelementptr inbounds float* %ly, i64 %indvars.iv, !llfi_index !720
  %11 = load float* %10, align 4, !tbaa !82, !llfi_index !721
  %12 = fpext float %11 to double, !llfi_index !722
  %13 = fmul double %9, %12, !llfi_index !723
  %14 = getelementptr inbounds float** %oldw, i64 %indvars.iv, !llfi_index !724
  %15 = load float** %14, align 8, !tbaa !55, !llfi_index !725
  %16 = getelementptr inbounds float* %15, i64 %indvars.iv4, !llfi_index !726
  %17 = load float* %16, align 4, !tbaa !82, !llfi_index !727
  %18 = fpext float %17 to double, !llfi_index !728
  %19 = fmul double %18, 3.000000e-01, !llfi_index !729
  %20 = fadd double %13, %19, !llfi_index !730
  %21 = fptrunc double %20 to float, !llfi_index !731
  %22 = getelementptr inbounds float** %w, i64 %indvars.iv, !llfi_index !732
  %23 = load float** %22, align 8, !tbaa !55, !llfi_index !733
  %24 = getelementptr inbounds float* %23, i64 %indvars.iv4, !llfi_index !734
  %25 = load float* %24, align 4, !tbaa !82, !llfi_index !735
  %26 = fadd float %25, %21, !llfi_index !736
  store float %26, float* %24, align 4, !tbaa !82, !llfi_index !737
  store float %21, float* %16, align 4, !tbaa !82, !llfi_index !738
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !739
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !740
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !llfi_index !741
  br i1 %exitcond, label %._crit_edge, label %6, !llfi_index !742

._crit_edge:                                      ; preds = %6, %.preheader
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !llfi_index !743
  %lftr.wideiv6 = trunc i64 %indvars.iv.next5 to i32, !llfi_index !744
  %exitcond7 = icmp eq i32 %lftr.wideiv6, %4, !llfi_index !745
  br i1 %exitcond7, label %._crit_edge3, label %.preheader, !llfi_index !746

._crit_edge3:                                     ; preds = %._crit_edge, %0
  ret void, !llfi_index !747
}

; Function Attrs: nounwind uwtable
define void @bpnn_feedforward(%struct.BPNN* nocapture readonly %net) #0 {
  %1 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 0, !llfi_index !748
  %2 = load i32* %1, align 4, !tbaa !159, !llfi_index !749
  %3 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 1, !llfi_index !750
  %4 = load i32* %3, align 4, !tbaa !165, !llfi_index !751
  %5 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 2, !llfi_index !752
  %6 = load i32* %5, align 4, !tbaa !169, !llfi_index !753
  %7 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 3, !llfi_index !754
  %8 = load float** %7, align 8, !tbaa !184, !llfi_index !755
  %9 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 4, !llfi_index !756
  %10 = load float** %9, align 8, !tbaa !199, !llfi_index !757
  %11 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 9, !llfi_index !758
  %12 = load float*** %11, align 8, !tbaa !280, !llfi_index !759
  store float 1.000000e+00, float* %8, align 4, !tbaa !82, !llfi_index !760
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !761
  %13 = icmp slt i32 %4, 1, !llfi_index !762
  br i1 %13, label %bpnn_layerforward.exit, label %.preheader.lr.ph.i, !llfi_index !763

.preheader.lr.ph.i:                               ; preds = %0
  %14 = icmp slt i32 %2, 0, !llfi_index !764
  %15 = add i32 %2, 1, !llfi_index !765
  %16 = add i32 %4, 1, !llfi_index !766
  br label %.preheader.i, !llfi_index !767

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %indvars.iv5.i = phi i64 [ %indvars.iv.next6.i, %._crit_edge.i ], [ 1, %.preheader.lr.ph.i ], !llfi_index !768
  br i1 %14, label %._crit_edge.i, label %.lr.ph.i, !llfi_index !769

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ], !llfi_index !770
  %sum.01.i = phi float [ %24, %.lr.ph.i ], [ 0.000000e+00, %.preheader.i ], !llfi_index !771
  %17 = getelementptr inbounds float** %12, i64 %indvars.iv.i, !llfi_index !772
  %18 = load float** %17, align 8, !tbaa !55, !llfi_index !773
  %19 = getelementptr inbounds float* %18, i64 %indvars.iv5.i, !llfi_index !774
  %20 = load float* %19, align 4, !tbaa !82, !llfi_index !775
  %21 = getelementptr inbounds float* %8, i64 %indvars.iv.i, !llfi_index !776
  %22 = load float* %21, align 4, !tbaa !82, !llfi_index !777
  %23 = fmul float %20, %22, !llfi_index !778
  %24 = fadd float %sum.01.i, %23, !llfi_index !779
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !llfi_index !780
  %lftr.wideiv20 = trunc i64 %indvars.iv.next.i to i32, !llfi_index !781
  %exitcond21 = icmp eq i32 %lftr.wideiv20, %15, !llfi_index !782
  br i1 %exitcond21, label %._crit_edge.i, label %.lr.ph.i, !llfi_index !783

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %sum.0.lcssa.i = phi float [ 0.000000e+00, %.preheader.i ], [ %24, %.lr.ph.i ], !llfi_index !784
  %25 = fsub float -0.000000e+00, %sum.0.lcssa.i, !llfi_index !785
  %26 = fpext float %25 to double, !llfi_index !786
  %27 = tail call double @exp(double %26) #3, !llfi_index !787
  %28 = fadd double %27, 1.000000e+00, !llfi_index !788
  %29 = fdiv double 1.000000e+00, %28, !llfi_index !789
  %30 = fptrunc double %29 to float, !llfi_index !790
  %31 = getelementptr inbounds float* %10, i64 %indvars.iv5.i, !llfi_index !791
  store float %30, float* %31, align 4, !tbaa !82, !llfi_index !792
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1, !llfi_index !793
  %lftr.wideiv22 = trunc i64 %indvars.iv.next6.i to i32, !llfi_index !794
  %exitcond23 = icmp eq i32 %lftr.wideiv22, %16, !llfi_index !795
  br i1 %exitcond23, label %bpnn_layerforward.exit, label %.preheader.i, !llfi_index !796

bpnn_layerforward.exit:                           ; preds = %._crit_edge.i, %0
  %32 = load float** %9, align 8, !tbaa !199, !llfi_index !797
  %33 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 5, !llfi_index !798
  %34 = load float** %33, align 8, !tbaa !214, !llfi_index !799
  %35 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 10, !llfi_index !800
  %36 = load float*** %35, align 8, !tbaa !310, !llfi_index !801
  store float 1.000000e+00, float* %32, align 4, !tbaa !82, !llfi_index !802
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !803
  %37 = icmp slt i32 %6, 1, !llfi_index !804
  br i1 %37, label %bpnn_layerforward.exit15, label %.preheader.lr.ph.i1, !llfi_index !805

.preheader.lr.ph.i1:                              ; preds = %bpnn_layerforward.exit
  %38 = icmp slt i32 %4, 0, !llfi_index !806
  %39 = add i32 %4, 1, !llfi_index !807
  %40 = add i32 %6, 1, !llfi_index !808
  br label %.preheader.i3, !llfi_index !809

.preheader.i3:                                    ; preds = %._crit_edge.i14, %.preheader.lr.ph.i1
  %indvars.iv5.i2 = phi i64 [ %indvars.iv.next6.i11, %._crit_edge.i14 ], [ 1, %.preheader.lr.ph.i1 ], !llfi_index !810
  br i1 %38, label %._crit_edge.i14, label %.lr.ph.i9, !llfi_index !811

.lr.ph.i9:                                        ; preds = %.lr.ph.i9, %.preheader.i3
  %indvars.iv.i4 = phi i64 [ %indvars.iv.next.i6, %.lr.ph.i9 ], [ 0, %.preheader.i3 ], !llfi_index !812
  %sum.01.i5 = phi float [ %48, %.lr.ph.i9 ], [ 0.000000e+00, %.preheader.i3 ], !llfi_index !813
  %41 = getelementptr inbounds float** %36, i64 %indvars.iv.i4, !llfi_index !814
  %42 = load float** %41, align 8, !tbaa !55, !llfi_index !815
  %43 = getelementptr inbounds float* %42, i64 %indvars.iv5.i2, !llfi_index !816
  %44 = load float* %43, align 4, !tbaa !82, !llfi_index !817
  %45 = getelementptr inbounds float* %32, i64 %indvars.iv.i4, !llfi_index !818
  %46 = load float* %45, align 4, !tbaa !82, !llfi_index !819
  %47 = fmul float %44, %46, !llfi_index !820
  %48 = fadd float %sum.01.i5, %47, !llfi_index !821
  %indvars.iv.next.i6 = add nuw nsw i64 %indvars.iv.i4, 1, !llfi_index !822
  %lftr.wideiv = trunc i64 %indvars.iv.next.i6 to i32, !llfi_index !823
  %exitcond = icmp eq i32 %lftr.wideiv, %39, !llfi_index !824
  br i1 %exitcond, label %._crit_edge.i14, label %.lr.ph.i9, !llfi_index !825

._crit_edge.i14:                                  ; preds = %.lr.ph.i9, %.preheader.i3
  %sum.0.lcssa.i10 = phi float [ 0.000000e+00, %.preheader.i3 ], [ %48, %.lr.ph.i9 ], !llfi_index !826
  %49 = fsub float -0.000000e+00, %sum.0.lcssa.i10, !llfi_index !827
  %50 = fpext float %49 to double, !llfi_index !828
  %51 = tail call double @exp(double %50) #3, !llfi_index !829
  %52 = fadd double %51, 1.000000e+00, !llfi_index !830
  %53 = fdiv double 1.000000e+00, %52, !llfi_index !831
  %54 = fptrunc double %53 to float, !llfi_index !832
  %55 = getelementptr inbounds float* %34, i64 %indvars.iv5.i2, !llfi_index !833
  store float %54, float* %55, align 4, !tbaa !82, !llfi_index !834
  %indvars.iv.next6.i11 = add nuw nsw i64 %indvars.iv5.i2, 1, !llfi_index !835
  %lftr.wideiv17 = trunc i64 %indvars.iv.next6.i11 to i32, !llfi_index !836
  %exitcond18 = icmp eq i32 %lftr.wideiv17, %40, !llfi_index !837
  br i1 %exitcond18, label %bpnn_layerforward.exit15, label %.preheader.i3, !llfi_index !838

bpnn_layerforward.exit15:                         ; preds = %._crit_edge.i14, %bpnn_layerforward.exit
  ret void, !llfi_index !839
}

; Function Attrs: nounwind uwtable
define void @bpnn_train(%struct.BPNN* nocapture readonly %net, float* nocapture %eo, float* nocapture %eh) #0 {
  %1 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 0, !llfi_index !840
  %2 = load i32* %1, align 4, !tbaa !159, !llfi_index !841
  %3 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 1, !llfi_index !842
  %4 = load i32* %3, align 4, !tbaa !165, !llfi_index !843
  %5 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 2, !llfi_index !844
  %6 = load i32* %5, align 4, !tbaa !169, !llfi_index !845
  %7 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 3, !llfi_index !846
  %8 = load float** %7, align 8, !tbaa !184, !llfi_index !847
  %9 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 4, !llfi_index !848
  %10 = load float** %9, align 8, !tbaa !199, !llfi_index !849
  %11 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 9, !llfi_index !850
  %12 = load float*** %11, align 8, !tbaa !280, !llfi_index !851
  store float 1.000000e+00, float* %8, align 4, !tbaa !82, !llfi_index !852
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !853
  %13 = icmp slt i32 %4, 1, !llfi_index !854
  br i1 %13, label %bpnn_layerforward.exit, label %.preheader.lr.ph.i, !llfi_index !855

.preheader.lr.ph.i:                               ; preds = %0
  %14 = icmp slt i32 %2, 0, !llfi_index !856
  %15 = add i32 %2, 1, !llfi_index !857
  %16 = add i32 %4, 1, !llfi_index !858
  br label %.preheader.i, !llfi_index !859

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %indvars.iv5.i = phi i64 [ %indvars.iv.next6.i, %._crit_edge.i ], [ 1, %.preheader.lr.ph.i ], !llfi_index !860
  br i1 %14, label %._crit_edge.i, label %.lr.ph.i, !llfi_index !861

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ], !llfi_index !862
  %sum.01.i = phi float [ %24, %.lr.ph.i ], [ 0.000000e+00, %.preheader.i ], !llfi_index !863
  %17 = getelementptr inbounds float** %12, i64 %indvars.iv.i, !llfi_index !864
  %18 = load float** %17, align 8, !tbaa !55, !llfi_index !865
  %19 = getelementptr inbounds float* %18, i64 %indvars.iv5.i, !llfi_index !866
  %20 = load float* %19, align 4, !tbaa !82, !llfi_index !867
  %21 = getelementptr inbounds float* %8, i64 %indvars.iv.i, !llfi_index !868
  %22 = load float* %21, align 4, !tbaa !82, !llfi_index !869
  %23 = fmul float %20, %22, !llfi_index !870
  %24 = fadd float %sum.01.i, %23, !llfi_index !871
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !llfi_index !872
  %lftr.wideiv75 = trunc i64 %indvars.iv.next.i to i32, !llfi_index !873
  %exitcond76 = icmp eq i32 %lftr.wideiv75, %15, !llfi_index !874
  br i1 %exitcond76, label %._crit_edge.i, label %.lr.ph.i, !llfi_index !875

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %sum.0.lcssa.i = phi float [ 0.000000e+00, %.preheader.i ], [ %24, %.lr.ph.i ], !llfi_index !876
  %25 = fsub float -0.000000e+00, %sum.0.lcssa.i, !llfi_index !877
  %26 = fpext float %25 to double, !llfi_index !878
  %27 = tail call double @exp(double %26) #3, !llfi_index !879
  %28 = fadd double %27, 1.000000e+00, !llfi_index !880
  %29 = fdiv double 1.000000e+00, %28, !llfi_index !881
  %30 = fptrunc double %29 to float, !llfi_index !882
  %31 = getelementptr inbounds float* %10, i64 %indvars.iv5.i, !llfi_index !883
  store float %30, float* %31, align 4, !tbaa !82, !llfi_index !884
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1, !llfi_index !885
  %lftr.wideiv77 = trunc i64 %indvars.iv.next6.i to i32, !llfi_index !886
  %exitcond78 = icmp eq i32 %lftr.wideiv77, %16, !llfi_index !887
  br i1 %exitcond78, label %bpnn_layerforward.exit, label %.preheader.i, !llfi_index !888

bpnn_layerforward.exit:                           ; preds = %._crit_edge.i, %0
  %32 = load float** %9, align 8, !tbaa !199, !llfi_index !889
  %33 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 5, !llfi_index !890
  %34 = load float** %33, align 8, !tbaa !214, !llfi_index !891
  %35 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 10, !llfi_index !892
  %36 = load float*** %35, align 8, !tbaa !310, !llfi_index !893
  store float 1.000000e+00, float* %32, align 4, !tbaa !82, !llfi_index !894
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !895
  %37 = icmp slt i32 %6, 1, !llfi_index !896
  br i1 %37, label %bpnn_layerforward.exit15.thread, label %.preheader.lr.ph.i1, !llfi_index !897

bpnn_layerforward.exit15.thread:                  ; preds = %bpnn_layerforward.exit
  %38 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 7, !llfi_index !898
  %.pre = load float** %38, align 8, !tbaa !238, !llfi_index !899
  br label %bpnn_output_error.exit, !llfi_index !900

.preheader.lr.ph.i1:                              ; preds = %bpnn_layerforward.exit
  %39 = icmp slt i32 %4, 0, !llfi_index !901
  %40 = add i32 %4, 1, !llfi_index !902
  %41 = add i32 %6, 1, !llfi_index !903
  br label %.preheader.i3, !llfi_index !904

.preheader.i3:                                    ; preds = %._crit_edge.i14, %.preheader.lr.ph.i1
  %indvars.iv5.i2 = phi i64 [ %indvars.iv.next6.i11, %._crit_edge.i14 ], [ 1, %.preheader.lr.ph.i1 ], !llfi_index !905
  br i1 %39, label %._crit_edge.i14, label %.lr.ph.i9, !llfi_index !906

.lr.ph.i9:                                        ; preds = %.lr.ph.i9, %.preheader.i3
  %indvars.iv.i4 = phi i64 [ %indvars.iv.next.i6, %.lr.ph.i9 ], [ 0, %.preheader.i3 ], !llfi_index !907
  %sum.01.i5 = phi float [ %49, %.lr.ph.i9 ], [ 0.000000e+00, %.preheader.i3 ], !llfi_index !908
  %42 = getelementptr inbounds float** %36, i64 %indvars.iv.i4, !llfi_index !909
  %43 = load float** %42, align 8, !tbaa !55, !llfi_index !910
  %44 = getelementptr inbounds float* %43, i64 %indvars.iv5.i2, !llfi_index !911
  %45 = load float* %44, align 4, !tbaa !82, !llfi_index !912
  %46 = getelementptr inbounds float* %32, i64 %indvars.iv.i4, !llfi_index !913
  %47 = load float* %46, align 4, !tbaa !82, !llfi_index !914
  %48 = fmul float %45, %47, !llfi_index !915
  %49 = fadd float %sum.01.i5, %48, !llfi_index !916
  %indvars.iv.next.i6 = add nuw nsw i64 %indvars.iv.i4, 1, !llfi_index !917
  %lftr.wideiv70 = trunc i64 %indvars.iv.next.i6 to i32, !llfi_index !918
  %exitcond71 = icmp eq i32 %lftr.wideiv70, %40, !llfi_index !919
  br i1 %exitcond71, label %._crit_edge.i14, label %.lr.ph.i9, !llfi_index !920

._crit_edge.i14:                                  ; preds = %.lr.ph.i9, %.preheader.i3
  %sum.0.lcssa.i10 = phi float [ 0.000000e+00, %.preheader.i3 ], [ %49, %.lr.ph.i9 ], !llfi_index !921
  %50 = fsub float -0.000000e+00, %sum.0.lcssa.i10, !llfi_index !922
  %51 = fpext float %50 to double, !llfi_index !923
  %52 = tail call double @exp(double %51) #3, !llfi_index !924
  %53 = fadd double %52, 1.000000e+00, !llfi_index !925
  %54 = fdiv double 1.000000e+00, %53, !llfi_index !926
  %55 = fptrunc double %54 to float, !llfi_index !927
  %56 = getelementptr inbounds float* %34, i64 %indvars.iv5.i2, !llfi_index !928
  store float %55, float* %56, align 4, !tbaa !82, !llfi_index !929
  %indvars.iv.next6.i11 = add nuw nsw i64 %indvars.iv5.i2, 1, !llfi_index !930
  %lftr.wideiv72 = trunc i64 %indvars.iv.next6.i11 to i32, !llfi_index !931
  %exitcond73 = icmp eq i32 %lftr.wideiv72, %41, !llfi_index !932
  br i1 %exitcond73, label %.lr.ph.i16, label %.preheader.i3, !llfi_index !933

.lr.ph.i16:                                       ; preds = %._crit_edge.i14
  %57 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 7, !llfi_index !934
  %58 = load float** %57, align 8, !tbaa !238, !llfi_index !935
  %59 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 8, !llfi_index !936
  %60 = load float** %59, align 8, !tbaa !250, !llfi_index !937
  %61 = load float** %33, align 8, !tbaa !214, !llfi_index !938
  br label %62, !llfi_index !939

; <label>:62                                      ; preds = %78, %.lr.ph.i16
  %indvars.iv.i17 = phi i64 [ %indvars.iv.next.i18, %78 ], [ 1, %.lr.ph.i16 ], !llfi_index !940
  %errsum.02.i = phi float [ %80, %78 ], [ 0.000000e+00, %.lr.ph.i16 ], !llfi_index !941
  %63 = getelementptr inbounds float* %61, i64 %indvars.iv.i17, !llfi_index !942
  %64 = load float* %63, align 4, !tbaa !82, !llfi_index !943
  %65 = getelementptr inbounds float* %60, i64 %indvars.iv.i17, !llfi_index !944
  %66 = load float* %65, align 4, !tbaa !82, !llfi_index !945
  %67 = fpext float %64 to double, !llfi_index !946
  %68 = fsub double 1.000000e+00, %67, !llfi_index !947
  %69 = fmul double %67, %68, !llfi_index !948
  %70 = fsub float %66, %64, !llfi_index !949
  %71 = fpext float %70 to double, !llfi_index !950
  %72 = fmul double %69, %71, !llfi_index !951
  %73 = fptrunc double %72 to float, !llfi_index !952
  %74 = getelementptr inbounds float* %58, i64 %indvars.iv.i17, !llfi_index !953
  store float %73, float* %74, align 4, !tbaa !82, !llfi_index !954
  %75 = fcmp ogt float %73, 0.000000e+00, !llfi_index !955
  br i1 %75, label %78, label %76, !llfi_index !956

; <label>:76                                      ; preds = %62
  %77 = fsub float -0.000000e+00, %73, !llfi_index !957
  br label %78, !llfi_index !958

; <label>:78                                      ; preds = %76, %62
  %79 = phi float [ %77, %76 ], [ %73, %62 ], !llfi_index !959
  %80 = fadd float %errsum.02.i, %79, !llfi_index !960
  %indvars.iv.next.i18 = add nuw nsw i64 %indvars.iv.i17, 1, !llfi_index !961
  %lftr.wideiv67 = trunc i64 %indvars.iv.next.i18 to i32, !llfi_index !962
  %exitcond68 = icmp eq i32 %lftr.wideiv67, %41, !llfi_index !963
  br i1 %exitcond68, label %bpnn_output_error.exit, label %62, !llfi_index !964

bpnn_output_error.exit:                           ; preds = %78, %bpnn_layerforward.exit15.thread
  %81 = phi float* [ %.pre, %bpnn_layerforward.exit15.thread ], [ %58, %78 ], !llfi_index !965
  %errsum.0.lcssa.i = phi float [ 0.000000e+00, %bpnn_layerforward.exit15.thread ], [ %80, %78 ], !llfi_index !966
  %82 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 6, !llfi_index !967
  %83 = load float** %82, align 8, !tbaa !226, !llfi_index !968
  %84 = load float*** %35, align 8, !tbaa !310, !llfi_index !969
  %85 = load float** %9, align 8, !tbaa !199, !llfi_index !970
  br i1 %13, label %bpnn_hidden_error.exit, label %.lr.ph6.i, !llfi_index !971

.lr.ph6.i:                                        ; preds = %bpnn_output_error.exit
  %86 = add i32 %6, 1, !llfi_index !972
  %87 = add i32 %4, 1, !llfi_index !973
  br label %88, !llfi_index !974

; <label>:88                                      ; preds = %110, %.lr.ph6.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %110 ], [ 1, %.lr.ph6.i ], !llfi_index !975
  %errsum.04.i = phi float [ %112, %110 ], [ 0.000000e+00, %.lr.ph6.i ], !llfi_index !976
  %89 = getelementptr inbounds float* %85, i64 %indvars.iv10.i, !llfi_index !977
  %90 = load float* %89, align 4, !tbaa !82, !llfi_index !978
  br i1 %37, label %100, label %.lr.ph.i22, !llfi_index !979

.lr.ph.i22:                                       ; preds = %88
  %91 = getelementptr inbounds float** %84, i64 %indvars.iv10.i, !llfi_index !980
  %92 = load float** %91, align 8, !tbaa !55, !llfi_index !981
  br label %93, !llfi_index !982

; <label>:93                                      ; preds = %93, %.lr.ph.i22
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i24, %93 ], [ 1, %.lr.ph.i22 ], !llfi_index !983
  %sum.02.i = phi float [ %99, %93 ], [ 0.000000e+00, %.lr.ph.i22 ], !llfi_index !984
  %94 = getelementptr inbounds float* %81, i64 %indvars.iv.i23, !llfi_index !985
  %95 = load float* %94, align 4, !tbaa !82, !llfi_index !986
  %96 = getelementptr inbounds float* %92, i64 %indvars.iv.i23, !llfi_index !987
  %97 = load float* %96, align 4, !tbaa !82, !llfi_index !988
  %98 = fmul float %95, %97, !llfi_index !989
  %99 = fadd float %sum.02.i, %98, !llfi_index !990
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1, !llfi_index !991
  %lftr.wideiv61 = trunc i64 %indvars.iv.next.i24 to i32, !llfi_index !992
  %exitcond62 = icmp eq i32 %lftr.wideiv61, %86, !llfi_index !993
  br i1 %exitcond62, label %._crit_edge.i27, label %93, !llfi_index !994

._crit_edge.i27:                                  ; preds = %93
  %phitmp.i = fpext float %99 to double, !llfi_index !995
  br label %100, !llfi_index !996

; <label>:100                                     ; preds = %._crit_edge.i27, %88
  %sum.0.lcssa.i28 = phi double [ %phitmp.i, %._crit_edge.i27 ], [ 0.000000e+00, %88 ], !llfi_index !997
  %101 = fpext float %90 to double, !llfi_index !998
  %102 = fsub double 1.000000e+00, %101, !llfi_index !999
  %103 = fmul double %101, %102, !llfi_index !1000
  %104 = fmul double %103, %sum.0.lcssa.i28, !llfi_index !1001
  %105 = fptrunc double %104 to float, !llfi_index !1002
  %106 = getelementptr inbounds float* %83, i64 %indvars.iv10.i, !llfi_index !1003
  store float %105, float* %106, align 4, !tbaa !82, !llfi_index !1004
  %107 = fcmp ogt float %105, 0.000000e+00, !llfi_index !1005
  br i1 %107, label %110, label %108, !llfi_index !1006

; <label>:108                                     ; preds = %100
  %109 = fsub float -0.000000e+00, %105, !llfi_index !1007
  br label %110, !llfi_index !1008

; <label>:110                                     ; preds = %108, %100
  %111 = phi float [ %109, %108 ], [ %105, %100 ], !llfi_index !1009
  %112 = fadd float %errsum.04.i, %111, !llfi_index !1010
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1, !llfi_index !1011
  %lftr.wideiv64 = trunc i64 %indvars.iv.next11.i to i32, !llfi_index !1012
  %exitcond65 = icmp eq i32 %lftr.wideiv64, %87, !llfi_index !1013
  br i1 %exitcond65, label %bpnn_hidden_error.exit, label %88, !llfi_index !1014

bpnn_hidden_error.exit:                           ; preds = %110, %bpnn_output_error.exit
  %errsum.0.lcssa.i29 = phi float [ 0.000000e+00, %bpnn_output_error.exit ], [ %112, %110 ], !llfi_index !1015
  store float %errsum.0.lcssa.i, float* %eo, align 4, !tbaa !82, !llfi_index !1016
  store float %errsum.0.lcssa.i29, float* %eh, align 4, !tbaa !82, !llfi_index !1017
  %113 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 12, !llfi_index !1018
  %114 = load float*** %113, align 8, !tbaa !366, !llfi_index !1019
  store float 1.000000e+00, float* %85, align 4, !tbaa !82, !llfi_index !1020
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !1021
  br i1 %37, label %bpnn_adjust_weights.exit, label %.preheader.lr.ph.i30, !llfi_index !1022

.preheader.lr.ph.i30:                             ; preds = %bpnn_hidden_error.exit
  %115 = icmp slt i32 %4, 0, !llfi_index !1023
  %116 = add i32 %4, 1, !llfi_index !1024
  %117 = add i32 %6, 1, !llfi_index !1025
  br label %.preheader.i31, !llfi_index !1026

.preheader.i31:                                   ; preds = %._crit_edge.i37, %.preheader.lr.ph.i30
  %indvars.iv4.i = phi i64 [ %indvars.iv.next5.i, %._crit_edge.i37 ], [ 1, %.preheader.lr.ph.i30 ], !llfi_index !1027
  br i1 %115, label %._crit_edge.i37, label %.lr.ph.i32, !llfi_index !1028

.lr.ph.i32:                                       ; preds = %.preheader.i31
  %118 = getelementptr inbounds float* %81, i64 %indvars.iv4.i, !llfi_index !1029
  br label %119, !llfi_index !1030

; <label>:119                                     ; preds = %119, %.lr.ph.i32
  %indvars.iv.i33 = phi i64 [ %indvars.iv.next.i34, %119 ], [ 0, %.lr.ph.i32 ], !llfi_index !1031
  %120 = load float* %118, align 4, !tbaa !82, !llfi_index !1032
  %121 = fpext float %120 to double, !llfi_index !1033
  %122 = fmul double %121, 3.000000e-01, !llfi_index !1034
  %123 = getelementptr inbounds float* %85, i64 %indvars.iv.i33, !llfi_index !1035
  %124 = load float* %123, align 4, !tbaa !82, !llfi_index !1036
  %125 = fpext float %124 to double, !llfi_index !1037
  %126 = fmul double %122, %125, !llfi_index !1038
  %127 = getelementptr inbounds float** %114, i64 %indvars.iv.i33, !llfi_index !1039
  %128 = load float** %127, align 8, !tbaa !55, !llfi_index !1040
  %129 = getelementptr inbounds float* %128, i64 %indvars.iv4.i, !llfi_index !1041
  %130 = load float* %129, align 4, !tbaa !82, !llfi_index !1042
  %131 = fpext float %130 to double, !llfi_index !1043
  %132 = fmul double %131, 3.000000e-01, !llfi_index !1044
  %133 = fadd double %126, %132, !llfi_index !1045
  %134 = fptrunc double %133 to float, !llfi_index !1046
  %135 = getelementptr inbounds float** %84, i64 %indvars.iv.i33, !llfi_index !1047
  %136 = load float** %135, align 8, !tbaa !55, !llfi_index !1048
  %137 = getelementptr inbounds float* %136, i64 %indvars.iv4.i, !llfi_index !1049
  %138 = load float* %137, align 4, !tbaa !82, !llfi_index !1050
  %139 = fadd float %138, %134, !llfi_index !1051
  store float %139, float* %137, align 4, !tbaa !82, !llfi_index !1052
  store float %134, float* %129, align 4, !tbaa !82, !llfi_index !1053
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i33, 1, !llfi_index !1054
  %lftr.wideiv57 = trunc i64 %indvars.iv.next.i34 to i32, !llfi_index !1055
  %exitcond58 = icmp eq i32 %lftr.wideiv57, %116, !llfi_index !1056
  br i1 %exitcond58, label %._crit_edge.i37, label %119, !llfi_index !1057

._crit_edge.i37:                                  ; preds = %119, %.preheader.i31
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1, !llfi_index !1058
  %lftr.wideiv59 = trunc i64 %indvars.iv.next5.i to i32, !llfi_index !1059
  %exitcond60 = icmp eq i32 %lftr.wideiv59, %117, !llfi_index !1060
  br i1 %exitcond60, label %bpnn_adjust_weights.exit, label %.preheader.i31, !llfi_index !1061

bpnn_adjust_weights.exit:                         ; preds = %._crit_edge.i37, %bpnn_hidden_error.exit
  %140 = load float** %82, align 8, !tbaa !226, !llfi_index !1062
  %141 = load float** %7, align 8, !tbaa !184, !llfi_index !1063
  %142 = load float*** %11, align 8, !tbaa !280, !llfi_index !1064
  %143 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 11, !llfi_index !1065
  %144 = load float*** %143, align 8, !tbaa !338, !llfi_index !1066
  store float 1.000000e+00, float* %141, align 4, !tbaa !82, !llfi_index !1067
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !1068
  br i1 %13, label %bpnn_adjust_weights.exit50, label %.preheader.lr.ph.i38, !llfi_index !1069

.preheader.lr.ph.i38:                             ; preds = %bpnn_adjust_weights.exit
  %145 = icmp slt i32 %2, 0, !llfi_index !1070
  %146 = add i32 %2, 1, !llfi_index !1071
  %147 = add i32 %4, 1, !llfi_index !1072
  br label %.preheader.i40, !llfi_index !1073

.preheader.i40:                                   ; preds = %._crit_edge.i49, %.preheader.lr.ph.i38
  %indvars.iv4.i39 = phi i64 [ %indvars.iv.next5.i46, %._crit_edge.i49 ], [ 1, %.preheader.lr.ph.i38 ], !llfi_index !1074
  br i1 %145, label %._crit_edge.i49, label %.lr.ph.i41, !llfi_index !1075

.lr.ph.i41:                                       ; preds = %.preheader.i40
  %148 = getelementptr inbounds float* %140, i64 %indvars.iv4.i39, !llfi_index !1076
  br label %149, !llfi_index !1077

; <label>:149                                     ; preds = %149, %.lr.ph.i41
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i43, %149 ], [ 0, %.lr.ph.i41 ], !llfi_index !1078
  %150 = load float* %148, align 4, !tbaa !82, !llfi_index !1079
  %151 = fpext float %150 to double, !llfi_index !1080
  %152 = fmul double %151, 3.000000e-01, !llfi_index !1081
  %153 = getelementptr inbounds float* %141, i64 %indvars.iv.i42, !llfi_index !1082
  %154 = load float* %153, align 4, !tbaa !82, !llfi_index !1083
  %155 = fpext float %154 to double, !llfi_index !1084
  %156 = fmul double %152, %155, !llfi_index !1085
  %157 = getelementptr inbounds float** %144, i64 %indvars.iv.i42, !llfi_index !1086
  %158 = load float** %157, align 8, !tbaa !55, !llfi_index !1087
  %159 = getelementptr inbounds float* %158, i64 %indvars.iv4.i39, !llfi_index !1088
  %160 = load float* %159, align 4, !tbaa !82, !llfi_index !1089
  %161 = fpext float %160 to double, !llfi_index !1090
  %162 = fmul double %161, 3.000000e-01, !llfi_index !1091
  %163 = fadd double %156, %162, !llfi_index !1092
  %164 = fptrunc double %163 to float, !llfi_index !1093
  %165 = getelementptr inbounds float** %142, i64 %indvars.iv.i42, !llfi_index !1094
  %166 = load float** %165, align 8, !tbaa !55, !llfi_index !1095
  %167 = getelementptr inbounds float* %166, i64 %indvars.iv4.i39, !llfi_index !1096
  %168 = load float* %167, align 4, !tbaa !82, !llfi_index !1097
  %169 = fadd float %168, %164, !llfi_index !1098
  store float %169, float* %167, align 4, !tbaa !82, !llfi_index !1099
  store float %164, float* %159, align 4, !tbaa !82, !llfi_index !1100
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i42, 1, !llfi_index !1101
  %lftr.wideiv = trunc i64 %indvars.iv.next.i43 to i32, !llfi_index !1102
  %exitcond = icmp eq i32 %lftr.wideiv, %146, !llfi_index !1103
  br i1 %exitcond, label %._crit_edge.i49, label %149, !llfi_index !1104

._crit_edge.i49:                                  ; preds = %149, %.preheader.i40
  %indvars.iv.next5.i46 = add nuw nsw i64 %indvars.iv4.i39, 1, !llfi_index !1105
  %lftr.wideiv55 = trunc i64 %indvars.iv.next5.i46 to i32, !llfi_index !1106
  %exitcond56 = icmp eq i32 %lftr.wideiv55, %147, !llfi_index !1107
  br i1 %exitcond56, label %bpnn_adjust_weights.exit50, label %.preheader.i40, !llfi_index !1108

bpnn_adjust_weights.exit50:                       ; preds = %._crit_edge.i49, %bpnn_adjust_weights.exit
  ret void, !llfi_index !1109
}

; Function Attrs: nounwind uwtable
define void @bpnn_save(%struct.BPNN* nocapture readonly %net, i8* %filename) #0 {
  %1 = tail call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #3, !llfi_index !1110
  %2 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 0, !llfi_index !1111
  %3 = load i32* %2, align 4, !tbaa !159, !llfi_index !1112
  %4 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 1, !llfi_index !1113
  %5 = load i32* %4, align 4, !tbaa !165, !llfi_index !1114
  %6 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 2, !llfi_index !1115
  %7 = load i32* %6, align 4, !tbaa !169, !llfi_index !1116
  %8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0), i32 %3, i32 %5, i32 %7, i8* %filename) #3, !llfi_index !1117
  %sext = shl i32 %3, 24, !llfi_index !1118
  %chari = ashr exact i32 %sext, 24, !llfi_index !1119
  %fputc = tail call i32 @fputc(i32 %chari, %struct._IO_FILE* %1), !llfi_index !1120
  %sext11 = shl i32 %5, 24, !llfi_index !1121
  %chari6 = ashr exact i32 %sext11, 24, !llfi_index !1122
  %fputc7 = tail call i32 @fputc(i32 %chari6, %struct._IO_FILE* %1), !llfi_index !1123
  %sext12 = shl i32 %7, 24, !llfi_index !1124
  %chari9 = ashr exact i32 %sext12, 24, !llfi_index !1125
  %fputc10 = tail call i32 @fputc(i32 %chari9, %struct._IO_FILE* %1), !llfi_index !1126
  %9 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 9, !llfi_index !1127
  %10 = load float*** %9, align 8, !tbaa !280, !llfi_index !1128
  %11 = add i32 %5, 1, !llfi_index !1129
  %12 = shl i32 %3, 2, !llfi_index !1130
  %13 = add i32 %12, 4, !llfi_index !1131
  %14 = mul i32 %13, %11, !llfi_index !1132
  %15 = zext i32 %14 to i64, !llfi_index !1133
  %16 = tail call noalias i8* @malloc(i64 %15) #3, !llfi_index !1134
  %17 = icmp slt i32 %3, 0, !llfi_index !1135
  br i1 %17, label %._crit_edge32, label %.preheader24.lr.ph, !llfi_index !1136

.preheader24.lr.ph:                               ; preds = %0
  %18 = icmp slt i32 %5, 0, !llfi_index !1137
  %19 = shl i32 %5, 2, !llfi_index !1138
  %20 = add i32 %19, 4, !llfi_index !1139
  %21 = add i32 %3, 1, !llfi_index !1140
  br label %.preheader24, !llfi_index !1141

.preheader24:                                     ; preds = %40, %.preheader24.lr.ph
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %40 ], [ 0, %.preheader24.lr.ph ], !llfi_index !1142
  %memcnt.030 = phi i32 [ %memcnt.1.lcssa, %40 ], [ 0, %.preheader24.lr.ph ], !llfi_index !1143
  br i1 %18, label %40, label %.lr.ph27, !llfi_index !1144

.lr.ph27:                                         ; preds = %.preheader24
  %22 = getelementptr inbounds float** %10, i64 %indvars.iv43, !llfi_index !1145
  %.pre47 = load float** %22, align 8, !tbaa !55, !llfi_index !1146
  br label %23, !llfi_index !1147

; <label>:23                                      ; preds = %23, %.lr.ph27
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %23 ], [ 0, %.lr.ph27 ], !llfi_index !1148
  %memcnt.125 = phi i32 [ %38, %23 ], [ %memcnt.030, %.lr.ph27 ], !llfi_index !1149
  %24 = getelementptr inbounds float* %.pre47, i64 %indvars.iv39, !llfi_index !1150
  %25 = load float* %24, align 4, !tbaa !82, !llfi_index !1151
  %26 = sext i32 %memcnt.125 to i64, !llfi_index !1152
  %27 = getelementptr inbounds i8* %16, i64 %26, !llfi_index !1153
  %28 = bitcast float %25 to i32, !llfi_index !1154
  %trunc48 = trunc i32 %28 to i8, !llfi_index !1155
  %.sum = add i64 %26, 1, !llfi_index !1156
  %29 = getelementptr inbounds i8* %16, i64 %.sum, !llfi_index !1157
  store i8 %trunc48, i8* %27, align 1, !tbaa !1158, !llfi_index !1159
  %30 = lshr i32 %28, 8, !llfi_index !1160
  %31 = trunc i32 %30 to i8, !llfi_index !1161
  %.sum49 = add i64 %26, 2, !llfi_index !1162
  %32 = getelementptr inbounds i8* %16, i64 %.sum49, !llfi_index !1163
  store i8 %31, i8* %29, align 1, !tbaa !1158, !llfi_index !1164
  %33 = lshr i32 %28, 16, !llfi_index !1165
  %34 = trunc i32 %33 to i8, !llfi_index !1166
  %.sum50 = add i64 %26, 3, !llfi_index !1167
  %35 = getelementptr inbounds i8* %16, i64 %.sum50, !llfi_index !1168
  store i8 %34, i8* %32, align 1, !tbaa !1158, !llfi_index !1169
  %36 = lshr i32 %28, 24, !llfi_index !1170
  %37 = trunc i32 %36 to i8, !llfi_index !1171
  store i8 %37, i8* %35, align 1, !tbaa !1158, !llfi_index !1172
  %38 = add i32 %memcnt.125, 4, !llfi_index !1173
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1, !llfi_index !1174
  %lftr.wideiv41 = trunc i64 %indvars.iv.next40 to i32, !llfi_index !1175
  %exitcond42 = icmp eq i32 %lftr.wideiv41, %11, !llfi_index !1176
  br i1 %exitcond42, label %._crit_edge28, label %23, !llfi_index !1177

._crit_edge28:                                    ; preds = %23
  %39 = add i32 %20, %memcnt.030, !llfi_index !1178
  br label %40, !llfi_index !1179

; <label>:40                                      ; preds = %._crit_edge28, %.preheader24
  %memcnt.1.lcssa = phi i32 [ %39, %._crit_edge28 ], [ %memcnt.030, %.preheader24 ], !llfi_index !1180
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1, !llfi_index !1181
  %lftr.wideiv45 = trunc i64 %indvars.iv.next44 to i32, !llfi_index !1182
  %exitcond46 = icmp eq i32 %lftr.wideiv45, %21, !llfi_index !1183
  br i1 %exitcond46, label %._crit_edge32, label %.preheader24, !llfi_index !1184

._crit_edge32:                                    ; preds = %40, %0
  %41 = tail call i64 @fwrite(i8* %16, i64 4, i64 %15, %struct._IO_FILE* %1) #3, !llfi_index !1185
  tail call void @free(i8* %16) #3, !llfi_index !1186
  %42 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 10, !llfi_index !1187
  %43 = load float*** %42, align 8, !tbaa !310, !llfi_index !1188
  %44 = add i32 %7, 1, !llfi_index !1189
  %45 = shl i32 %11, 2, !llfi_index !1190
  %46 = mul i32 %45, %44, !llfi_index !1191
  %47 = zext i32 %46 to i64, !llfi_index !1192
  %48 = tail call noalias i8* @malloc(i64 %47) #3, !llfi_index !1193
  %49 = icmp slt i32 %5, 0, !llfi_index !1194
  br i1 %49, label %._crit_edge20, label %.preheader.lr.ph, !llfi_index !1195

.preheader.lr.ph:                                 ; preds = %._crit_edge32
  %50 = icmp slt i32 %7, 0, !llfi_index !1196
  %51 = shl i32 %7, 2, !llfi_index !1197
  %52 = add i32 %51, 4, !llfi_index !1198
  br label %.preheader, !llfi_index !1199

.preheader:                                       ; preds = %71, %.preheader.lr.ph
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %71 ], [ 0, %.preheader.lr.ph ], !llfi_index !1200
  %memcnt.218 = phi i32 [ %memcnt.3.lcssa, %71 ], [ 0, %.preheader.lr.ph ], !llfi_index !1201
  br i1 %50, label %71, label %.lr.ph, !llfi_index !1202

.lr.ph:                                           ; preds = %.preheader
  %53 = getelementptr inbounds float** %43, i64 %indvars.iv33, !llfi_index !1203
  %.pre = load float** %53, align 8, !tbaa !55, !llfi_index !1204
  br label %54, !llfi_index !1205

; <label>:54                                      ; preds = %54, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %54 ], [ 0, %.lr.ph ], !llfi_index !1206
  %memcnt.316 = phi i32 [ %69, %54 ], [ %memcnt.218, %.lr.ph ], !llfi_index !1207
  %55 = getelementptr inbounds float* %.pre, i64 %indvars.iv, !llfi_index !1208
  %56 = load float* %55, align 4, !tbaa !82, !llfi_index !1209
  %57 = sext i32 %memcnt.316 to i64, !llfi_index !1210
  %58 = getelementptr inbounds i8* %48, i64 %57, !llfi_index !1211
  %59 = bitcast float %56 to i32, !llfi_index !1212
  %trunc = trunc i32 %59 to i8, !llfi_index !1213
  %.sum51 = add i64 %57, 1, !llfi_index !1214
  %60 = getelementptr inbounds i8* %48, i64 %.sum51, !llfi_index !1215
  store i8 %trunc, i8* %58, align 1, !tbaa !1158, !llfi_index !1216
  %61 = lshr i32 %59, 8, !llfi_index !1217
  %62 = trunc i32 %61 to i8, !llfi_index !1218
  %.sum52 = add i64 %57, 2, !llfi_index !1219
  %63 = getelementptr inbounds i8* %48, i64 %.sum52, !llfi_index !1220
  store i8 %62, i8* %60, align 1, !tbaa !1158, !llfi_index !1221
  %64 = lshr i32 %59, 16, !llfi_index !1222
  %65 = trunc i32 %64 to i8, !llfi_index !1223
  %.sum53 = add i64 %57, 3, !llfi_index !1224
  %66 = getelementptr inbounds i8* %48, i64 %.sum53, !llfi_index !1225
  store i8 %65, i8* %63, align 1, !tbaa !1158, !llfi_index !1226
  %67 = lshr i32 %59, 24, !llfi_index !1227
  %68 = trunc i32 %67 to i8, !llfi_index !1228
  store i8 %68, i8* %66, align 1, !tbaa !1158, !llfi_index !1229
  %69 = add i32 %memcnt.316, 4, !llfi_index !1230
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1231
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !1232
  %exitcond = icmp eq i32 %lftr.wideiv, %44, !llfi_index !1233
  br i1 %exitcond, label %._crit_edge, label %54, !llfi_index !1234

._crit_edge:                                      ; preds = %54
  %70 = add i32 %52, %memcnt.218, !llfi_index !1235
  br label %71, !llfi_index !1236

; <label>:71                                      ; preds = %._crit_edge, %.preheader
  %memcnt.3.lcssa = phi i32 [ %70, %._crit_edge ], [ %memcnt.218, %.preheader ], !llfi_index !1237
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1, !llfi_index !1238
  %lftr.wideiv35 = trunc i64 %indvars.iv.next34 to i32, !llfi_index !1239
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %11, !llfi_index !1240
  br i1 %exitcond36, label %._crit_edge20, label %.preheader, !llfi_index !1241

._crit_edge20:                                    ; preds = %71, %._crit_edge32
  %72 = tail call i64 @fwrite(i8* %48, i64 4, i64 %47, %struct._IO_FILE* %1) #3, !llfi_index !1242
  tail call void @free(i8* %48) #3, !llfi_index !1243
  %73 = tail call i32 @fclose(%struct._IO_FILE* %1) #3, !llfi_index !1244
  ret void, !llfi_index !1245
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind uwtable
define noalias %struct.BPNN* @bpnn_read(i8* %filename) #0 {
  %n1 = alloca i32, align 4, !llfi_index !1246
  %n2 = alloca i32, align 4, !llfi_index !1247
  %n3 = alloca i32, align 4, !llfi_index !1248
  %1 = call i32 (i8*, i32, i32, ...)* bitcast (i32 (...)* @open to i32 (i8*, i32, i32, ...)*)(i8* %filename, i32 0, i32 420) #3, !llfi_index !1249
  %2 = icmp eq i32 %1, -1, !llfi_index !1250
  br i1 %2, label %bpnn_zero_weights.exit12, label %3, !llfi_index !1251

; <label>:3                                       ; preds = %0
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* %filename) #3, !llfi_index !1252
  %5 = bitcast i32* %n1 to i8*, !llfi_index !1253
  %6 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %1, i8* %5, i64 4) #3, !llfi_index !1254
  %7 = bitcast i32* %n2 to i8*, !llfi_index !1255
  %8 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %1, i8* %7, i64 4) #3, !llfi_index !1256
  %9 = bitcast i32* %n3 to i8*, !llfi_index !1257
  %10 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %1, i8* %9, i64 4) #3, !llfi_index !1258
  %11 = load i32* %n1, align 4, !tbaa !1259, !llfi_index !1260
  %12 = load i32* %n2, align 4, !tbaa !1259, !llfi_index !1261
  %13 = load i32* %n3, align 4, !tbaa !1259, !llfi_index !1262
  %14 = call %struct.BPNN* @bpnn_internal_create(i32 %11, i32 %12, i32 %13), !llfi_index !1263
  %15 = load i32* %n1, align 4, !tbaa !1259, !llfi_index !1264
  %16 = load i32* %n2, align 4, !tbaa !1259, !llfi_index !1265
  %17 = load i32* %n3, align 4, !tbaa !1259, !llfi_index !1266
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str7, i64 0, i64 0), i8* %filename, i32 %15, i32 %16, i32 %17) #3, !llfi_index !1267
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0)) #3, !llfi_index !1268
  %20 = load i32* %n1, align 4, !tbaa !1259, !llfi_index !1269
  %21 = load i32* %n2, align 4, !tbaa !1259, !llfi_index !1270
  %22 = add nsw i32 %21, 1, !llfi_index !1271
  %23 = shl i32 %20, 2, !llfi_index !1272
  %24 = add i32 %23, 4, !llfi_index !1273
  %25 = mul i32 %24, %22, !llfi_index !1274
  %26 = zext i32 %25 to i64, !llfi_index !1275
  %27 = call noalias i8* @malloc(i64 %26) #3, !llfi_index !1276
  %28 = add nsw i32 %20, 1, !llfi_index !1277
  %29 = mul nsw i32 %22, %28, !llfi_index !1278
  %30 = sext i32 %29 to i64, !llfi_index !1279
  %31 = shl nsw i64 %30, 2, !llfi_index !1280
  %32 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %1, i8* %27, i64 %31) #3, !llfi_index !1281
  %33 = load i32* %n1, align 4, !tbaa !1259, !llfi_index !1282
  %34 = icmp slt i32 %33, 0, !llfi_index !1283
  br i1 %34, label %._crit_edge32, label %.preheader24.lr.ph, !llfi_index !1284

.preheader24.lr.ph:                               ; preds = %3
  %35 = getelementptr inbounds %struct.BPNN* %14, i64 0, i32 9, !llfi_index !1285
  %.pre48 = load i32* %n2, align 4, !tbaa !1259, !llfi_index !1286
  br label %.preheader24, !llfi_index !1287

.preheader24:                                     ; preds = %60, %.preheader24.lr.ph
  %36 = phi i32 [ %61, %60 ], [ %33, %.preheader24.lr.ph ], !llfi_index !1288
  %37 = phi i32 [ %62, %60 ], [ %.pre48, %.preheader24.lr.ph ], !llfi_index !1289
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %60 ], [ 0, %.preheader24.lr.ph ], !llfi_index !1290
  %memcnt.031 = phi i32 [ %memcnt.1.lcssa, %60 ], [ 0, %.preheader24.lr.ph ], !llfi_index !1291
  %38 = icmp slt i32 %37, 0, !llfi_index !1292
  br i1 %38, label %60, label %.lr.ph27, !llfi_index !1293

.lr.ph27:                                         ; preds = %.preheader24
  %.pre50 = load float*** %35, align 8, !tbaa !280, !llfi_index !1294
  br label %39, !llfi_index !1295

; <label>:39                                      ; preds = %39, %.lr.ph27
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %39 ], [ 0, %.lr.ph27 ], !llfi_index !1296
  %memcnt.126 = phi i32 [ %56, %39 ], [ %memcnt.031, %.lr.ph27 ], !llfi_index !1297
  %40 = getelementptr inbounds float** %.pre50, i64 %indvars.iv44, !llfi_index !1298
  %41 = load float** %40, align 8, !tbaa !55, !llfi_index !1299
  %42 = getelementptr inbounds float* %41, i64 %indvars.iv42, !llfi_index !1300
  %43 = bitcast float* %42 to i8*, !llfi_index !1301
  %44 = sext i32 %memcnt.126 to i64, !llfi_index !1302
  %45 = getelementptr inbounds i8* %27, i64 %44, !llfi_index !1303
  %.sum = add i64 %44, 1, !llfi_index !1304
  %46 = getelementptr inbounds i8* %27, i64 %.sum, !llfi_index !1305
  %47 = load i8* %45, align 1, !tbaa !1158, !llfi_index !1306
  %48 = getelementptr inbounds i8* %43, i64 1, !llfi_index !1307
  store i8 %47, i8* %43, align 1, !tbaa !1158, !llfi_index !1308
  %.sum51 = add i64 %44, 2, !llfi_index !1309
  %49 = getelementptr inbounds i8* %27, i64 %.sum51, !llfi_index !1310
  %50 = load i8* %46, align 1, !tbaa !1158, !llfi_index !1311
  %51 = getelementptr inbounds i8* %43, i64 2, !llfi_index !1312
  store i8 %50, i8* %48, align 1, !tbaa !1158, !llfi_index !1313
  %.sum52 = add i64 %44, 3, !llfi_index !1314
  %52 = getelementptr inbounds i8* %27, i64 %.sum52, !llfi_index !1315
  %53 = load i8* %49, align 1, !tbaa !1158, !llfi_index !1316
  %54 = getelementptr inbounds i8* %43, i64 3, !llfi_index !1317
  store i8 %53, i8* %51, align 1, !tbaa !1158, !llfi_index !1318
  %55 = load i8* %52, align 1, !tbaa !1158, !llfi_index !1319
  store i8 %55, i8* %54, align 1, !tbaa !1158, !llfi_index !1320
  %56 = add i32 %memcnt.126, 4, !llfi_index !1321
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1, !llfi_index !1322
  %57 = load i32* %n2, align 4, !tbaa !1259, !llfi_index !1323
  %58 = trunc i64 %indvars.iv42 to i32, !llfi_index !1324
  %59 = icmp slt i32 %58, %57, !llfi_index !1325
  br i1 %59, label %39, label %._crit_edge28, !llfi_index !1326

._crit_edge28:                                    ; preds = %39
  %.pre49 = load i32* %n1, align 4, !tbaa !1259, !llfi_index !1327
  br label %60, !llfi_index !1328

; <label>:60                                      ; preds = %._crit_edge28, %.preheader24
  %61 = phi i32 [ %.pre49, %._crit_edge28 ], [ %36, %.preheader24 ], !llfi_index !1329
  %62 = phi i32 [ %57, %._crit_edge28 ], [ %37, %.preheader24 ], !llfi_index !1330
  %memcnt.1.lcssa = phi i32 [ %56, %._crit_edge28 ], [ %memcnt.031, %.preheader24 ], !llfi_index !1331
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1, !llfi_index !1332
  %63 = trunc i64 %indvars.iv44 to i32, !llfi_index !1333
  %64 = icmp slt i32 %63, %61, !llfi_index !1334
  br i1 %64, label %.preheader24, label %._crit_edge32, !llfi_index !1335

._crit_edge32:                                    ; preds = %60, %3
  call void @free(i8* %27) #3, !llfi_index !1336
  %65 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str9, i64 0, i64 0)) #3, !llfi_index !1337
  %66 = load i32* %n2, align 4, !tbaa !1259, !llfi_index !1338
  %67 = load i32* %n3, align 4, !tbaa !1259, !llfi_index !1339
  %68 = add nsw i32 %67, 1, !llfi_index !1340
  %69 = shl i32 %66, 2, !llfi_index !1341
  %70 = add i32 %69, 4, !llfi_index !1342
  %71 = mul i32 %70, %68, !llfi_index !1343
  %72 = zext i32 %71 to i64, !llfi_index !1344
  %73 = call noalias i8* @malloc(i64 %72) #3, !llfi_index !1345
  %74 = add nsw i32 %66, 1, !llfi_index !1346
  %75 = mul nsw i32 %68, %74, !llfi_index !1347
  %76 = sext i32 %75 to i64, !llfi_index !1348
  %77 = shl nsw i64 %76, 2, !llfi_index !1349
  %78 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %1, i8* %73, i64 %77) #3, !llfi_index !1350
  %79 = load i32* %n2, align 4, !tbaa !1259, !llfi_index !1351
  %80 = icmp slt i32 %79, 0, !llfi_index !1352
  br i1 %80, label %._crit_edge20, label %.preheader.lr.ph, !llfi_index !1353

.preheader.lr.ph:                                 ; preds = %._crit_edge32
  %81 = getelementptr inbounds %struct.BPNN* %14, i64 0, i32 10, !llfi_index !1354
  %.pre = load i32* %n3, align 4, !tbaa !1259, !llfi_index !1355
  br label %.preheader, !llfi_index !1356

.preheader:                                       ; preds = %106, %.preheader.lr.ph
  %82 = phi i32 [ %107, %106 ], [ %79, %.preheader.lr.ph ], !llfi_index !1357
  %83 = phi i32 [ %108, %106 ], [ %.pre, %.preheader.lr.ph ], !llfi_index !1358
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %106 ], [ 0, %.preheader.lr.ph ], !llfi_index !1359
  %memcnt.219 = phi i32 [ %memcnt.3.lcssa, %106 ], [ 0, %.preheader.lr.ph ], !llfi_index !1360
  %84 = icmp slt i32 %83, 0, !llfi_index !1361
  br i1 %84, label %106, label %.lr.ph, !llfi_index !1362

.lr.ph:                                           ; preds = %.preheader
  %.pre47 = load float*** %81, align 8, !tbaa !310, !llfi_index !1363
  br label %85, !llfi_index !1364

; <label>:85                                      ; preds = %85, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %85 ], [ 0, %.lr.ph ], !llfi_index !1365
  %memcnt.317 = phi i32 [ %102, %85 ], [ %memcnt.219, %.lr.ph ], !llfi_index !1366
  %86 = getelementptr inbounds float** %.pre47, i64 %indvars.iv37, !llfi_index !1367
  %87 = load float** %86, align 8, !tbaa !55, !llfi_index !1368
  %88 = getelementptr inbounds float* %87, i64 %indvars.iv, !llfi_index !1369
  %89 = bitcast float* %88 to i8*, !llfi_index !1370
  %90 = sext i32 %memcnt.317 to i64, !llfi_index !1371
  %91 = getelementptr inbounds i8* %73, i64 %90, !llfi_index !1372
  %.sum53 = add i64 %90, 1, !llfi_index !1373
  %92 = getelementptr inbounds i8* %73, i64 %.sum53, !llfi_index !1374
  %93 = load i8* %91, align 1, !tbaa !1158, !llfi_index !1375
  %94 = getelementptr inbounds i8* %89, i64 1, !llfi_index !1376
  store i8 %93, i8* %89, align 1, !tbaa !1158, !llfi_index !1377
  %.sum54 = add i64 %90, 2, !llfi_index !1378
  %95 = getelementptr inbounds i8* %73, i64 %.sum54, !llfi_index !1379
  %96 = load i8* %92, align 1, !tbaa !1158, !llfi_index !1380
  %97 = getelementptr inbounds i8* %89, i64 2, !llfi_index !1381
  store i8 %96, i8* %94, align 1, !tbaa !1158, !llfi_index !1382
  %.sum55 = add i64 %90, 3, !llfi_index !1383
  %98 = getelementptr inbounds i8* %73, i64 %.sum55, !llfi_index !1384
  %99 = load i8* %95, align 1, !tbaa !1158, !llfi_index !1385
  %100 = getelementptr inbounds i8* %89, i64 3, !llfi_index !1386
  store i8 %99, i8* %97, align 1, !tbaa !1158, !llfi_index !1387
  %101 = load i8* %98, align 1, !tbaa !1158, !llfi_index !1388
  store i8 %101, i8* %100, align 1, !tbaa !1158, !llfi_index !1389
  %102 = add i32 %memcnt.317, 4, !llfi_index !1390
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1391
  %103 = load i32* %n3, align 4, !tbaa !1259, !llfi_index !1392
  %104 = trunc i64 %indvars.iv to i32, !llfi_index !1393
  %105 = icmp slt i32 %104, %103, !llfi_index !1394
  br i1 %105, label %85, label %._crit_edge, !llfi_index !1395

._crit_edge:                                      ; preds = %85
  %.pre46 = load i32* %n2, align 4, !tbaa !1259, !llfi_index !1396
  br label %106, !llfi_index !1397

; <label>:106                                     ; preds = %._crit_edge, %.preheader
  %107 = phi i32 [ %.pre46, %._crit_edge ], [ %82, %.preheader ], !llfi_index !1398
  %108 = phi i32 [ %103, %._crit_edge ], [ %83, %.preheader ], !llfi_index !1399
  %memcnt.3.lcssa = phi i32 [ %102, %._crit_edge ], [ %memcnt.219, %.preheader ], !llfi_index !1400
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !llfi_index !1401
  %109 = trunc i64 %indvars.iv37 to i32, !llfi_index !1402
  %110 = icmp slt i32 %109, %107, !llfi_index !1403
  br i1 %110, label %.preheader, label %._crit_edge20, !llfi_index !1404

._crit_edge20:                                    ; preds = %106, %._crit_edge32
  call void @free(i8* %73) #3, !llfi_index !1405
  %111 = call i32 (i32, ...)* bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 %1) #3, !llfi_index !1406
  %puts = call i32 @puts(i8* getelementptr inbounds ([5 x i8]* @str13, i64 0, i64 0)), !llfi_index !1407
  %112 = getelementptr inbounds %struct.BPNN* %14, i64 0, i32 11, !llfi_index !1408
  %113 = load float*** %112, align 8, !tbaa !338, !llfi_index !1409
  %114 = load i32* %n1, align 4, !tbaa !1259, !llfi_index !1410
  %115 = load i32* %n2, align 4, !tbaa !1259, !llfi_index !1411
  %116 = icmp slt i32 %114, 0, !llfi_index !1412
  br i1 %116, label %bpnn_zero_weights.exit, label %.preheader.lr.ph.i, !llfi_index !1413

.preheader.lr.ph.i:                               ; preds = %._crit_edge20
  %117 = icmp slt i32 %115, 0, !llfi_index !1414
  %118 = zext i32 %115 to i64, !llfi_index !1415
  %119 = shl nuw nsw i64 %118, 2, !llfi_index !1416
  %120 = add i64 %119, 4, !llfi_index !1417
  %121 = add i32 %114, 1, !llfi_index !1418
  br label %.preheader.i, !llfi_index !1419

.preheader.i:                                     ; preds = %125, %.preheader.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %125 ], [ 0, %.preheader.lr.ph.i ], !llfi_index !1420
  br i1 %117, label %125, label %.lr.ph.i, !llfi_index !1421

.lr.ph.i:                                         ; preds = %.preheader.i
  %122 = getelementptr inbounds float** %113, i64 %indvars.iv.i, !llfi_index !1422
  %123 = load float** %122, align 8, !tbaa !55, !llfi_index !1423
  %124 = bitcast float* %123 to i8*, !llfi_index !1424
  call void @llvm.memset.p0i8.i64(i8* %124, i8 0, i64 %120, i32 4, i1 false) #3, !llfi_index !1425
  br label %125, !llfi_index !1426

; <label>:125                                     ; preds = %.lr.ph.i, %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !llfi_index !1427
  %lftr.wideiv33 = trunc i64 %indvars.iv.next.i to i32, !llfi_index !1428
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %121, !llfi_index !1429
  br i1 %exitcond34, label %bpnn_zero_weights.exitthread-pre-split, label %.preheader.i, !llfi_index !1430

bpnn_zero_weights.exitthread-pre-split:           ; preds = %125
  %.pr = load i32* %n2, align 4, !tbaa !1259, !llfi_index !1431
  br label %bpnn_zero_weights.exit, !llfi_index !1432

bpnn_zero_weights.exit:                           ; preds = %bpnn_zero_weights.exitthread-pre-split, %._crit_edge20
  %126 = phi i32 [ %.pr, %bpnn_zero_weights.exitthread-pre-split ], [ %115, %._crit_edge20 ], !llfi_index !1433
  %127 = getelementptr inbounds %struct.BPNN* %14, i64 0, i32 12, !llfi_index !1434
  %128 = load float*** %127, align 8, !tbaa !366, !llfi_index !1435
  %129 = load i32* %n3, align 4, !tbaa !1259, !llfi_index !1436
  %130 = icmp slt i32 %126, 0, !llfi_index !1437
  br i1 %130, label %bpnn_zero_weights.exit12, label %.preheader.lr.ph.i5, !llfi_index !1438

.preheader.lr.ph.i5:                              ; preds = %bpnn_zero_weights.exit
  %131 = icmp slt i32 %129, 0, !llfi_index !1439
  %132 = zext i32 %129 to i64, !llfi_index !1440
  %133 = shl nuw nsw i64 %132, 2, !llfi_index !1441
  %134 = add i64 %133, 4, !llfi_index !1442
  %135 = add i32 %126, 1, !llfi_index !1443
  br label %.preheader.i7, !llfi_index !1444

.preheader.i7:                                    ; preds = %139, %.preheader.lr.ph.i5
  %indvars.iv.i6 = phi i64 [ %indvars.iv.next.i9, %139 ], [ 0, %.preheader.lr.ph.i5 ], !llfi_index !1445
  br i1 %131, label %139, label %.lr.ph.i8, !llfi_index !1446

.lr.ph.i8:                                        ; preds = %.preheader.i7
  %136 = getelementptr inbounds float** %128, i64 %indvars.iv.i6, !llfi_index !1447
  %137 = load float** %136, align 8, !tbaa !55, !llfi_index !1448
  %138 = bitcast float* %137 to i8*, !llfi_index !1449
  call void @llvm.memset.p0i8.i64(i8* %138, i8 0, i64 %134, i32 4, i1 false) #3, !llfi_index !1450
  br label %139, !llfi_index !1451

; <label>:139                                     ; preds = %.lr.ph.i8, %.preheader.i7
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i6, 1, !llfi_index !1452
  %lftr.wideiv = trunc i64 %indvars.iv.next.i9 to i32, !llfi_index !1453
  %exitcond = icmp eq i32 %lftr.wideiv, %135, !llfi_index !1454
  br i1 %exitcond, label %bpnn_zero_weights.exit12, label %.preheader.i7, !llfi_index !1455

bpnn_zero_weights.exit12:                         ; preds = %139, %bpnn_zero_weights.exit, %0
  %.0 = phi %struct.BPNN* [ null, %0 ], [ %14, %bpnn_zero_weights.exit ], [ %14, %139 ], !llfi_index !1456
  ret %struct.BPNN* %.0, !llfi_index !1457
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
  %t = alloca %struct.timeval, align 8, !llfi_index !1458
  %1 = call i32 @gettimeofday(%struct.timeval* %t, %struct.timezone* null) #3, !llfi_index !1459
  %2 = getelementptr inbounds %struct.timeval* %t, i64 0, i32 0, !llfi_index !1460
  %3 = load i64* %2, align 8, !tbaa !1461, !llfi_index !1464
  %4 = sitofp i64 %3 to double, !llfi_index !1465
  %5 = getelementptr inbounds %struct.timeval* %t, i64 0, i32 1, !llfi_index !1466
  %6 = load i64* %5, align 8, !tbaa !1467, !llfi_index !1468
  %7 = sitofp i64 %6 to double, !llfi_index !1469
  %8 = fmul double %7, 1.000000e-06, !llfi_index !1470
  %9 = fadd double %4, %8, !llfi_index !1471
  ret double %9, !llfi_index !1472
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = tail call i32 @setup(i32 %argc, i8** %argv) #3, !llfi_index !1473
  ret i32 0, !llfi_index !1474
}

; Function Attrs: nounwind uwtable
define void @bpnn_train_kernel(%struct.BPNN* nocapture readonly %net, float* nocapture readnone %eo, float* nocapture readnone %eh) #0 {
  %out_err = alloca float, align 4, !llfi_index !1475
  %hid_err = alloca float, align 4, !llfi_index !1476
  %1 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 0, !llfi_index !1477
  %2 = load i32* %1, align 4, !tbaa !159, !llfi_index !1478
  %3 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 1, !llfi_index !1479
  %4 = load i32* %3, align 4, !tbaa !165, !llfi_index !1480
  %5 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 2, !llfi_index !1481
  %6 = load i32* %5, align 4, !tbaa !169, !llfi_index !1482
  %puts = call i32 @puts(i8* getelementptr inbounds ([27 x i8]* @str1, i64 0, i64 0)), !llfi_index !1483
  %7 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 3, !llfi_index !1484
  %8 = load float** %7, align 8, !tbaa !184, !llfi_index !1485
  %9 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 4, !llfi_index !1486
  %10 = load float** %9, align 8, !tbaa !199, !llfi_index !1487
  %11 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 9, !llfi_index !1488
  %12 = load float*** %11, align 8, !tbaa !280, !llfi_index !1489
  call void @bpnn_layerforward(float* %8, float* %10, float** %12, i32 %2, i32 %4) #3, !llfi_index !1490
  %13 = load float** %9, align 8, !tbaa !199, !llfi_index !1491
  %14 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 5, !llfi_index !1492
  %15 = load float** %14, align 8, !tbaa !214, !llfi_index !1493
  %16 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 10, !llfi_index !1494
  %17 = load float*** %16, align 8, !tbaa !310, !llfi_index !1495
  call void @bpnn_layerforward(float* %13, float* %15, float** %17, i32 %4, i32 %6) #3, !llfi_index !1496
  %18 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 7, !llfi_index !1497
  %19 = load float** %18, align 8, !tbaa !238, !llfi_index !1498
  %20 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 8, !llfi_index !1499
  %21 = load float** %20, align 8, !tbaa !250, !llfi_index !1500
  %22 = load float** %14, align 8, !tbaa !214, !llfi_index !1501
  call void @bpnn_output_error(float* %19, float* %21, float* %22, i32 %6, float* %out_err) #3, !llfi_index !1502
  %23 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 6, !llfi_index !1503
  %24 = load float** %23, align 8, !tbaa !226, !llfi_index !1504
  %25 = load float** %18, align 8, !tbaa !238, !llfi_index !1505
  %26 = load float*** %16, align 8, !tbaa !310, !llfi_index !1506
  %27 = load float** %9, align 8, !tbaa !199, !llfi_index !1507
  call void @bpnn_hidden_error(float* %24, i32 %4, float* %25, i32 %6, float** %26, float* %27, float* %hid_err) #3, !llfi_index !1508
  %28 = load float** %18, align 8, !tbaa !238, !llfi_index !1509
  %29 = load float** %9, align 8, !tbaa !199, !llfi_index !1510
  %30 = load float*** %16, align 8, !tbaa !310, !llfi_index !1511
  %31 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 12, !llfi_index !1512
  %32 = load float*** %31, align 8, !tbaa !366, !llfi_index !1513
  call void @bpnn_adjust_weights(float* %28, i32 %6, float* %29, i32 %4, float** %30, float** %32) #3, !llfi_index !1514
  %33 = load float** %23, align 8, !tbaa !226, !llfi_index !1515
  %34 = load float** %7, align 8, !tbaa !184, !llfi_index !1516
  %35 = load float*** %11, align 8, !tbaa !280, !llfi_index !1517
  %36 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 11, !llfi_index !1518
  %37 = load float*** %36, align 8, !tbaa !338, !llfi_index !1519
  call void @bpnn_adjust_weights(float* %33, i32 %4, float* %34, i32 %2, float** %35, float** %37) #3, !llfi_index !1520
  ret void, !llfi_index !1521
}

; Function Attrs: nounwind uwtable
define i32 @backprop_face() #0 {
  %out_err = alloca float, align 4, !llfi_index !1522
  %hid_err = alloca float, align 4, !llfi_index !1523
  %1 = load i32* @layer_size, align 4, !tbaa !1259, !llfi_index !1524
  %2 = call %struct.BPNN* (i32, i32, i32, ...)* bitcast (%struct.BPNN* (i32, i32, i32)* @bpnn_create to %struct.BPNN* (i32, i32, i32, ...)*)(i32 %1, i32 16, i32 1) #3, !llfi_index !1525
  %3 = load i32* @layer_size, align 4, !tbaa !1259, !llfi_index !1526
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str, i64 0, i64 0), i32 %3) #3, !llfi_index !1527
  %5 = call i32 (%struct.BPNN*, ...)* bitcast (i32 (%struct.BPNN*)* @load to i32 (%struct.BPNN*, ...)*)(%struct.BPNN* %2) #3, !llfi_index !1528
  %puts = call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str2, i64 0, i64 0)), !llfi_index !1529
  %6 = call i32 (%struct.BPNN*, float*, float*, ...)* bitcast (void (%struct.BPNN*, float*, float*)* @bpnn_train_kernel to i32 (%struct.BPNN*, float*, float*, ...)*)(%struct.BPNN* %2, float* %out_err, float* %hid_err) #3, !llfi_index !1530
  call void (%struct.BPNN*, ...)* bitcast (void (%struct.BPNN*)* @bpnn_free to void (%struct.BPNN*, ...)*)(%struct.BPNN* %2) #3, !llfi_index !1531
  %puts1 = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str4, i64 0, i64 0)), !llfi_index !1532
  ret i32 undef, !llfi_index !1533
}

; Function Attrs: noreturn nounwind uwtable
define i32 @setup(i32 %argc, i8** nocapture readonly %argv) #4 {
  %out_err.i = alloca float, align 4, !llfi_index !1534
  %hid_err.i = alloca float, align 4, !llfi_index !1535
  %1 = icmp eq i32 %argc, 2, !llfi_index !1536
  br i1 %1, label %5, label %2, !llfi_index !1537

; <label>:2                                       ; preds = %0
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !55, !llfi_index !1538
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %3) #6, !llfi_index !1539
  call void @exit(i32 0) #7, !llfi_index !1540
  unreachable, !llfi_index !1541

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds i8** %argv, i64 1, !llfi_index !1542
  %7 = load i8** %6, align 8, !tbaa !55, !llfi_index !1543
  %8 = call i64 @strtol(i8* nocapture %7, i8** null, i32 10) #3, !llfi_index !1544
  %9 = trunc i64 %8 to i32, !llfi_index !1545
  store i32 %9, i32* @layer_size, align 4, !tbaa !1259, !llfi_index !1546
  call void (i32, ...)* bitcast (void (i32)* @bpnn_initialize to void (i32, ...)*)(i32 7) #3, !llfi_index !1547
  %10 = bitcast float* %out_err.i to i8*, !llfi_index !1548
  call void @llvm.lifetime.start(i64 4, i8* %10) #3, !llfi_index !1549
  %11 = bitcast float* %hid_err.i to i8*, !llfi_index !1550
  call void @llvm.lifetime.start(i64 4, i8* %11) #3, !llfi_index !1551
  %12 = load i32* @layer_size, align 4, !tbaa !1259, !llfi_index !1552
  %13 = call %struct.BPNN* (i32, i32, i32, ...)* bitcast (%struct.BPNN* (i32, i32, i32)* @bpnn_create to %struct.BPNN* (i32, i32, i32, ...)*)(i32 %12, i32 16, i32 1) #3, !llfi_index !1553
  %14 = load i32* @layer_size, align 4, !tbaa !1259, !llfi_index !1554
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str, i64 0, i64 0), i32 %14) #3, !llfi_index !1555
  %16 = call i32 (%struct.BPNN*, ...)* bitcast (i32 (%struct.BPNN*)* @load to i32 (%struct.BPNN*, ...)*)(%struct.BPNN* %13) #3, !llfi_index !1556
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str2, i64 0, i64 0)) #3, !llfi_index !1557
  %17 = call i32 (%struct.BPNN*, float*, float*, ...)* bitcast (void (%struct.BPNN*, float*, float*)* @bpnn_train_kernel to i32 (%struct.BPNN*, float*, float*, ...)*)(%struct.BPNN* %13, float* %out_err.i, float* %hid_err.i) #3, !llfi_index !1558
  call void (%struct.BPNN*, ...)* bitcast (void (%struct.BPNN*)* @bpnn_free to void (%struct.BPNN*, ...)*)(%struct.BPNN* %13) #3, !llfi_index !1559
  %puts1.i = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str4, i64 0, i64 0)) #3, !llfi_index !1560
  call void @llvm.lifetime.end(i64 4, i8* %10) #3, !llfi_index !1561
  call void @llvm.lifetime.end(i64 4, i8* %11) #3, !llfi_index !1562
  call void @exit(i32 0) #7, !llfi_index !1563
  unreachable, !llfi_index !1564
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define i32 @load(%struct.BPNN* nocapture readonly %net) #0 {
  %1 = load i32* @layer_size, align 4, !tbaa !1259, !llfi_index !1565
  %2 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 3, !llfi_index !1566
  %3 = load float** %2, align 8, !tbaa !184, !llfi_index !1567
  %4 = icmp sgt i32 %1, 0, !llfi_index !1568
  br i1 %4, label %.lr.ph, label %._crit_edge, !llfi_index !1569

.lr.ph:                                           ; preds = %0
  %5 = add i32 %1, 1, !llfi_index !1570
  br label %6, !llfi_index !1571

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %6 ], !llfi_index !1572
  %7 = tail call i32 @rand() #3, !llfi_index !1573
  %8 = sitofp i32 %7 to float, !llfi_index !1574
  %9 = fmul float %8, 0x3E00000000000000, !llfi_index !1575
  %10 = getelementptr inbounds float* %3, i64 %indvars.iv, !llfi_index !1576
  store float %9, float* %10, align 4, !tbaa !82, !llfi_index !1577
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1578
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !1579
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !llfi_index !1580
  br i1 %exitcond, label %._crit_edge, label %6, !llfi_index !1581

._crit_edge:                                      ; preds = %6, %0
  ret i32 undef, !llfi_index !1582
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { cold }
attributes #7 = { noreturn nounwind }

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
!55 = metadata !{metadata !56, metadata !56, i64 0}
!56 = metadata !{metadata !"any pointer", metadata !57, i64 0}
!57 = metadata !{metadata !"omnipotent char", metadata !58, i64 0}
!58 = metadata !{metadata !"Simple C/C++ TBAA"}
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
!82 = metadata !{metadata !83, metadata !83, i64 0}
!83 = metadata !{metadata !"float", metadata !57, i64 0}
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
!113 = metadata !{metadata !113, metadata !114, metadata !115}
!114 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!115 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!116 = metadata !{i64 107}
!117 = metadata !{i64 108}
!118 = metadata !{i64 109}
!119 = metadata !{i64 110}
!120 = metadata !{i64 111}
!121 = metadata !{i64 112}
!122 = metadata !{i64 113}
!123 = metadata !{i64 114}
!124 = metadata !{i64 115}
!125 = metadata !{i64 116}
!126 = metadata !{metadata !126, metadata !114, metadata !115}
!127 = metadata !{i64 117}
!128 = metadata !{i64 118}
!129 = metadata !{i64 119}
!130 = metadata !{i64 120}
!131 = metadata !{i64 121}
!132 = metadata !{i64 122}
!133 = metadata !{i64 123}
!134 = metadata !{i64 124}
!135 = metadata !{i64 125}
!136 = metadata !{i64 126}
!137 = metadata !{i64 127}
!138 = metadata !{i64 128}
!139 = metadata !{i64 129}
!140 = metadata !{i64 130}
!141 = metadata !{i64 131}
!142 = metadata !{i64 132}
!143 = metadata !{i64 133}
!144 = metadata !{i64 134}
!145 = metadata !{i64 135}
!146 = metadata !{i64 136}
!147 = metadata !{i64 137}
!148 = metadata !{i64 138}
!149 = metadata !{i64 139}
!150 = metadata !{i64 140}
!151 = metadata !{i64 141}
!152 = metadata !{i64 142}
!153 = metadata !{i64 143}
!154 = metadata !{i64 144}
!155 = metadata !{i64 145}
!156 = metadata !{i64 146}
!157 = metadata !{i64 147}
!158 = metadata !{i64 148}
!159 = metadata !{metadata !160, metadata !161, i64 0}
!160 = metadata !{metadata !"", metadata !161, i64 0, metadata !161, i64 4, metadata !161, i64 8, metadata !56, i64 16, metadata !56, i64 24, metadata !56, i64 32, metadata !56, i64 40, metadata !56, i64 48, metadata !56, i64 56, metadata !56, i64 64, metadata !56, i64 72, metadata !56, i64 80, metadata !56, i64 88}
!161 = metadata !{metadata !"int", metadata !57, i64 0}
!162 = metadata !{i64 149}
!163 = metadata !{i64 150}
!164 = metadata !{i64 151}
!165 = metadata !{metadata !160, metadata !161, i64 4}
!166 = metadata !{i64 152}
!167 = metadata !{i64 153}
!168 = metadata !{i64 154}
!169 = metadata !{metadata !160, metadata !161, i64 8}
!170 = metadata !{i64 155}
!171 = metadata !{i64 156}
!172 = metadata !{i64 157}
!173 = metadata !{i64 158}
!174 = metadata !{i64 159}
!175 = metadata !{i64 160}
!176 = metadata !{i64 161}
!177 = metadata !{i64 162}
!178 = metadata !{i64 163}
!179 = metadata !{i64 164}
!180 = metadata !{i64 165}
!181 = metadata !{i64 166}
!182 = metadata !{i64 167}
!183 = metadata !{i64 168}
!184 = metadata !{metadata !160, metadata !56, i64 16}
!185 = metadata !{i64 169}
!186 = metadata !{i64 170}
!187 = metadata !{i64 171}
!188 = metadata !{i64 172}
!189 = metadata !{i64 173}
!190 = metadata !{i64 174}
!191 = metadata !{i64 175}
!192 = metadata !{i64 176}
!193 = metadata !{i64 177}
!194 = metadata !{i64 178}
!195 = metadata !{i64 179}
!196 = metadata !{i64 180}
!197 = metadata !{i64 181}
!198 = metadata !{i64 182}
!199 = metadata !{metadata !160, metadata !56, i64 24}
!200 = metadata !{i64 183}
!201 = metadata !{i64 184}
!202 = metadata !{i64 185}
!203 = metadata !{i64 186}
!204 = metadata !{i64 187}
!205 = metadata !{i64 188}
!206 = metadata !{i64 189}
!207 = metadata !{i64 190}
!208 = metadata !{i64 191}
!209 = metadata !{i64 192}
!210 = metadata !{i64 193}
!211 = metadata !{i64 194}
!212 = metadata !{i64 195}
!213 = metadata !{i64 196}
!214 = metadata !{metadata !160, metadata !56, i64 32}
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
!226 = metadata !{metadata !160, metadata !56, i64 40}
!227 = metadata !{i64 208}
!228 = metadata !{i64 209}
!229 = metadata !{i64 210}
!230 = metadata !{i64 211}
!231 = metadata !{i64 212}
!232 = metadata !{i64 213}
!233 = metadata !{i64 214}
!234 = metadata !{i64 215}
!235 = metadata !{i64 216}
!236 = metadata !{i64 217}
!237 = metadata !{i64 218}
!238 = metadata !{metadata !160, metadata !56, i64 48}
!239 = metadata !{i64 219}
!240 = metadata !{i64 220}
!241 = metadata !{i64 221}
!242 = metadata !{i64 222}
!243 = metadata !{i64 223}
!244 = metadata !{i64 224}
!245 = metadata !{i64 225}
!246 = metadata !{i64 226}
!247 = metadata !{i64 227}
!248 = metadata !{i64 228}
!249 = metadata !{i64 229}
!250 = metadata !{metadata !160, metadata !56, i64 56}
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
!280 = metadata !{metadata !160, metadata !56, i64 64}
!281 = metadata !{i64 259}
!282 = metadata !{i64 260}
!283 = metadata !{i64 261}
!284 = metadata !{i64 262}
!285 = metadata !{i64 263}
!286 = metadata !{i64 264}
!287 = metadata !{i64 265}
!288 = metadata !{i64 266}
!289 = metadata !{i64 267}
!290 = metadata !{i64 268}
!291 = metadata !{i64 269}
!292 = metadata !{i64 270}
!293 = metadata !{i64 271}
!294 = metadata !{i64 272}
!295 = metadata !{i64 273}
!296 = metadata !{i64 274}
!297 = metadata !{i64 275}
!298 = metadata !{i64 276}
!299 = metadata !{i64 277}
!300 = metadata !{i64 278}
!301 = metadata !{i64 279}
!302 = metadata !{i64 280}
!303 = metadata !{i64 281}
!304 = metadata !{i64 282}
!305 = metadata !{i64 283}
!306 = metadata !{i64 284}
!307 = metadata !{i64 285}
!308 = metadata !{i64 286}
!309 = metadata !{i64 287}
!310 = metadata !{metadata !160, metadata !56, i64 72}
!311 = metadata !{i64 288}
!312 = metadata !{i64 289}
!313 = metadata !{i64 290}
!314 = metadata !{i64 291}
!315 = metadata !{i64 292}
!316 = metadata !{i64 293}
!317 = metadata !{i64 294}
!318 = metadata !{i64 295}
!319 = metadata !{i64 296}
!320 = metadata !{i64 297}
!321 = metadata !{i64 298}
!322 = metadata !{i64 299}
!323 = metadata !{i64 300}
!324 = metadata !{i64 301}
!325 = metadata !{i64 302}
!326 = metadata !{i64 303}
!327 = metadata !{i64 304}
!328 = metadata !{i64 305}
!329 = metadata !{i64 306}
!330 = metadata !{i64 307}
!331 = metadata !{i64 308}
!332 = metadata !{i64 309}
!333 = metadata !{i64 310}
!334 = metadata !{i64 311}
!335 = metadata !{i64 312}
!336 = metadata !{i64 313}
!337 = metadata !{i64 314}
!338 = metadata !{metadata !160, metadata !56, i64 80}
!339 = metadata !{i64 315}
!340 = metadata !{i64 316}
!341 = metadata !{i64 317}
!342 = metadata !{i64 318}
!343 = metadata !{i64 319}
!344 = metadata !{i64 320}
!345 = metadata !{i64 321}
!346 = metadata !{i64 322}
!347 = metadata !{i64 323}
!348 = metadata !{i64 324}
!349 = metadata !{i64 325}
!350 = metadata !{i64 326}
!351 = metadata !{i64 327}
!352 = metadata !{i64 328}
!353 = metadata !{i64 329}
!354 = metadata !{i64 330}
!355 = metadata !{i64 331}
!356 = metadata !{i64 332}
!357 = metadata !{i64 333}
!358 = metadata !{i64 334}
!359 = metadata !{i64 335}
!360 = metadata !{i64 336}
!361 = metadata !{i64 337}
!362 = metadata !{i64 338}
!363 = metadata !{i64 339}
!364 = metadata !{i64 340}
!365 = metadata !{i64 341}
!366 = metadata !{metadata !160, metadata !56, i64 88}
!367 = metadata !{i64 342}
!368 = metadata !{i64 343}
!369 = metadata !{i64 344}
!370 = metadata !{i64 345}
!371 = metadata !{i64 346}
!372 = metadata !{i64 347}
!373 = metadata !{i64 348}
!374 = metadata !{i64 349}
!375 = metadata !{i64 350}
!376 = metadata !{i64 351}
!377 = metadata !{i64 352}
!378 = metadata !{i64 353}
!379 = metadata !{i64 354}
!380 = metadata !{i64 355}
!381 = metadata !{i64 356}
!382 = metadata !{i64 357}
!383 = metadata !{i64 358}
!384 = metadata !{i64 359}
!385 = metadata !{i64 360}
!386 = metadata !{i64 361}
!387 = metadata !{i64 362}
!388 = metadata !{i64 363}
!389 = metadata !{i64 364}
!390 = metadata !{i64 365}
!391 = metadata !{i64 366}
!392 = metadata !{i64 367}
!393 = metadata !{i64 368}
!394 = metadata !{i64 369}
!395 = metadata !{i64 370}
!396 = metadata !{i64 371}
!397 = metadata !{i64 372}
!398 = metadata !{i64 373}
!399 = metadata !{i64 374}
!400 = metadata !{i64 375}
!401 = metadata !{i64 376}
!402 = metadata !{i64 377}
!403 = metadata !{i64 378}
!404 = metadata !{i64 379}
!405 = metadata !{i64 380}
!406 = metadata !{i64 381}
!407 = metadata !{i64 382}
!408 = metadata !{i64 383}
!409 = metadata !{i64 384}
!410 = metadata !{i64 385}
!411 = metadata !{i64 386}
!412 = metadata !{i64 387}
!413 = metadata !{i64 388}
!414 = metadata !{i64 389}
!415 = metadata !{i64 390}
!416 = metadata !{i64 391}
!417 = metadata !{i64 392}
!418 = metadata !{i64 393}
!419 = metadata !{i64 394}
!420 = metadata !{i64 395}
!421 = metadata !{i64 396}
!422 = metadata !{i64 397}
!423 = metadata !{i64 398}
!424 = metadata !{i64 399}
!425 = metadata !{i64 400}
!426 = metadata !{i64 401}
!427 = metadata !{i64 402}
!428 = metadata !{i64 403}
!429 = metadata !{i64 404}
!430 = metadata !{i64 405}
!431 = metadata !{i64 406}
!432 = metadata !{i64 407}
!433 = metadata !{i64 408}
!434 = metadata !{i64 409}
!435 = metadata !{i64 410}
!436 = metadata !{i64 411}
!437 = metadata !{i64 412}
!438 = metadata !{i64 413}
!439 = metadata !{i64 414}
!440 = metadata !{i64 415}
!441 = metadata !{i64 416}
!442 = metadata !{i64 417}
!443 = metadata !{i64 418}
!444 = metadata !{i64 419}
!445 = metadata !{i64 420}
!446 = metadata !{i64 421}
!447 = metadata !{i64 422}
!448 = metadata !{i64 423}
!449 = metadata !{i64 424}
!450 = metadata !{i64 425}
!451 = metadata !{i64 426}
!452 = metadata !{i64 427}
!453 = metadata !{i64 428}
!454 = metadata !{i64 429}
!455 = metadata !{i64 430}
!456 = metadata !{i64 431}
!457 = metadata !{i64 432}
!458 = metadata !{i64 433}
!459 = metadata !{i64 434}
!460 = metadata !{i64 435}
!461 = metadata !{i64 436}
!462 = metadata !{i64 437}
!463 = metadata !{i64 438}
!464 = metadata !{i64 439}
!465 = metadata !{i64 440}
!466 = metadata !{i64 441}
!467 = metadata !{i64 442}
!468 = metadata !{i64 443}
!469 = metadata !{i64 444}
!470 = metadata !{i64 445}
!471 = metadata !{i64 446}
!472 = metadata !{i64 447}
!473 = metadata !{i64 448}
!474 = metadata !{i64 449}
!475 = metadata !{i64 450}
!476 = metadata !{i64 451}
!477 = metadata !{i64 452}
!478 = metadata !{i64 453}
!479 = metadata !{i64 454}
!480 = metadata !{i64 455}
!481 = metadata !{i64 456}
!482 = metadata !{i64 457}
!483 = metadata !{i64 458}
!484 = metadata !{i64 459}
!485 = metadata !{i64 460}
!486 = metadata !{i64 461}
!487 = metadata !{i64 462}
!488 = metadata !{i64 463}
!489 = metadata !{i64 464}
!490 = metadata !{i64 465}
!491 = metadata !{i64 466}
!492 = metadata !{i64 467}
!493 = metadata !{i64 468}
!494 = metadata !{i64 469}
!495 = metadata !{i64 470}
!496 = metadata !{i64 471}
!497 = metadata !{i64 472}
!498 = metadata !{i64 473}
!499 = metadata !{i64 474}
!500 = metadata !{i64 475}
!501 = metadata !{i64 476}
!502 = metadata !{i64 477}
!503 = metadata !{i64 478}
!504 = metadata !{i64 479}
!505 = metadata !{i64 480}
!506 = metadata !{i64 481}
!507 = metadata !{i64 482}
!508 = metadata !{i64 483}
!509 = metadata !{i64 484}
!510 = metadata !{i64 485}
!511 = metadata !{i64 486}
!512 = metadata !{i64 487}
!513 = metadata !{i64 488}
!514 = metadata !{i64 489}
!515 = metadata !{i64 490}
!516 = metadata !{i64 491}
!517 = metadata !{i64 492}
!518 = metadata !{i64 493}
!519 = metadata !{i64 494}
!520 = metadata !{i64 495}
!521 = metadata !{i64 496}
!522 = metadata !{i64 497}
!523 = metadata !{i64 498}
!524 = metadata !{i64 499}
!525 = metadata !{i64 500}
!526 = metadata !{i64 501}
!527 = metadata !{i64 502}
!528 = metadata !{i64 503}
!529 = metadata !{i64 504}
!530 = metadata !{i64 505}
!531 = metadata !{i64 506}
!532 = metadata !{i64 507}
!533 = metadata !{i64 508}
!534 = metadata !{i64 509}
!535 = metadata !{i64 510}
!536 = metadata !{i64 511}
!537 = metadata !{i64 512}
!538 = metadata !{i64 513}
!539 = metadata !{i64 514}
!540 = metadata !{i64 515}
!541 = metadata !{i64 516}
!542 = metadata !{i64 517}
!543 = metadata !{i64 518}
!544 = metadata !{i64 519}
!545 = metadata !{i64 520}
!546 = metadata !{i64 521}
!547 = metadata !{i64 522}
!548 = metadata !{i64 523}
!549 = metadata !{i64 524}
!550 = metadata !{i64 525}
!551 = metadata !{i64 526}
!552 = metadata !{i64 527}
!553 = metadata !{i64 528}
!554 = metadata !{i64 529}
!555 = metadata !{i64 530}
!556 = metadata !{i64 531}
!557 = metadata !{i64 532}
!558 = metadata !{i64 533}
!559 = metadata !{i64 534}
!560 = metadata !{i64 535}
!561 = metadata !{i64 536}
!562 = metadata !{i64 537}
!563 = metadata !{i64 538}
!564 = metadata !{i64 539}
!565 = metadata !{i64 540}
!566 = metadata !{i64 541}
!567 = metadata !{i64 542}
!568 = metadata !{i64 543}
!569 = metadata !{i64 544}
!570 = metadata !{i64 545}
!571 = metadata !{metadata !571, metadata !114, metadata !115}
!572 = metadata !{i64 546}
!573 = metadata !{i64 547}
!574 = metadata !{i64 548}
!575 = metadata !{i64 549}
!576 = metadata !{i64 550}
!577 = metadata !{i64 551}
!578 = metadata !{i64 552}
!579 = metadata !{i64 553}
!580 = metadata !{i64 554}
!581 = metadata !{i64 555}
!582 = metadata !{metadata !582, metadata !114, metadata !115}
!583 = metadata !{i64 556}
!584 = metadata !{i64 557}
!585 = metadata !{i64 558}
!586 = metadata !{i64 559}
!587 = metadata !{i64 560}
!588 = metadata !{i64 561}
!589 = metadata !{i64 562}
!590 = metadata !{i64 563}
!591 = metadata !{i64 564}
!592 = metadata !{i64 565}
!593 = metadata !{i64 566}
!594 = metadata !{i64 567}
!595 = metadata !{i64 568}
!596 = metadata !{i64 569}
!597 = metadata !{i64 570}
!598 = metadata !{i64 571}
!599 = metadata !{i64 572}
!600 = metadata !{i64 573}
!601 = metadata !{i64 574}
!602 = metadata !{i64 575}
!603 = metadata !{i64 576}
!604 = metadata !{i64 577}
!605 = metadata !{i64 578}
!606 = metadata !{i64 579}
!607 = metadata !{i64 580}
!608 = metadata !{i64 581}
!609 = metadata !{i64 582}
!610 = metadata !{i64 583}
!611 = metadata !{i64 584}
!612 = metadata !{i64 585}
!613 = metadata !{i64 586}
!614 = metadata !{i64 587}
!615 = metadata !{i64 588}
!616 = metadata !{i64 589}
!617 = metadata !{i64 590}
!618 = metadata !{i64 591}
!619 = metadata !{i64 592}
!620 = metadata !{i64 593}
!621 = metadata !{i64 594}
!622 = metadata !{i64 595}
!623 = metadata !{i64 596}
!624 = metadata !{i64 597}
!625 = metadata !{i64 598}
!626 = metadata !{i64 599}
!627 = metadata !{i64 600}
!628 = metadata !{i64 601}
!629 = metadata !{i64 602}
!630 = metadata !{i64 603}
!631 = metadata !{i64 604}
!632 = metadata !{i64 605}
!633 = metadata !{i64 606}
!634 = metadata !{i64 607}
!635 = metadata !{i64 608}
!636 = metadata !{i64 609}
!637 = metadata !{i64 610}
!638 = metadata !{i64 611}
!639 = metadata !{i64 612}
!640 = metadata !{i64 613}
!641 = metadata !{i64 614}
!642 = metadata !{i64 615}
!643 = metadata !{i64 616}
!644 = metadata !{i64 617}
!645 = metadata !{i64 618}
!646 = metadata !{i64 619}
!647 = metadata !{i64 620}
!648 = metadata !{i64 621}
!649 = metadata !{i64 622}
!650 = metadata !{i64 623}
!651 = metadata !{i64 624}
!652 = metadata !{i64 625}
!653 = metadata !{i64 626}
!654 = metadata !{i64 627}
!655 = metadata !{i64 628}
!656 = metadata !{i64 629}
!657 = metadata !{i64 630}
!658 = metadata !{i64 631}
!659 = metadata !{i64 632}
!660 = metadata !{i64 633}
!661 = metadata !{i64 634}
!662 = metadata !{i64 635}
!663 = metadata !{i64 636}
!664 = metadata !{i64 637}
!665 = metadata !{i64 638}
!666 = metadata !{i64 639}
!667 = metadata !{i64 640}
!668 = metadata !{i64 641}
!669 = metadata !{i64 642}
!670 = metadata !{i64 643}
!671 = metadata !{i64 644}
!672 = metadata !{i64 645}
!673 = metadata !{i64 646}
!674 = metadata !{i64 647}
!675 = metadata !{i64 648}
!676 = metadata !{i64 649}
!677 = metadata !{i64 650}
!678 = metadata !{i64 651}
!679 = metadata !{i64 652}
!680 = metadata !{i64 653}
!681 = metadata !{i64 654}
!682 = metadata !{i64 655}
!683 = metadata !{i64 656}
!684 = metadata !{i64 657}
!685 = metadata !{i64 658}
!686 = metadata !{i64 659}
!687 = metadata !{i64 660}
!688 = metadata !{i64 661}
!689 = metadata !{i64 662}
!690 = metadata !{i64 663}
!691 = metadata !{i64 664}
!692 = metadata !{i64 665}
!693 = metadata !{i64 666}
!694 = metadata !{i64 667}
!695 = metadata !{i64 668}
!696 = metadata !{i64 669}
!697 = metadata !{i64 670}
!698 = metadata !{i64 671}
!699 = metadata !{i64 672}
!700 = metadata !{i64 673}
!701 = metadata !{i64 674}
!702 = metadata !{i64 675}
!703 = metadata !{i64 676}
!704 = metadata !{i64 677}
!705 = metadata !{i64 678}
!706 = metadata !{i64 679}
!707 = metadata !{i64 680}
!708 = metadata !{i64 681}
!709 = metadata !{i64 682}
!710 = metadata !{i64 683}
!711 = metadata !{i64 684}
!712 = metadata !{i64 685}
!713 = metadata !{i64 686}
!714 = metadata !{i64 687}
!715 = metadata !{i64 688}
!716 = metadata !{i64 689}
!717 = metadata !{i64 690}
!718 = metadata !{i64 691}
!719 = metadata !{i64 692}
!720 = metadata !{i64 693}
!721 = metadata !{i64 694}
!722 = metadata !{i64 695}
!723 = metadata !{i64 696}
!724 = metadata !{i64 697}
!725 = metadata !{i64 698}
!726 = metadata !{i64 699}
!727 = metadata !{i64 700}
!728 = metadata !{i64 701}
!729 = metadata !{i64 702}
!730 = metadata !{i64 703}
!731 = metadata !{i64 704}
!732 = metadata !{i64 705}
!733 = metadata !{i64 706}
!734 = metadata !{i64 707}
!735 = metadata !{i64 708}
!736 = metadata !{i64 709}
!737 = metadata !{i64 710}
!738 = metadata !{i64 711}
!739 = metadata !{i64 712}
!740 = metadata !{i64 713}
!741 = metadata !{i64 714}
!742 = metadata !{i64 715}
!743 = metadata !{i64 716}
!744 = metadata !{i64 717}
!745 = metadata !{i64 718}
!746 = metadata !{i64 719}
!747 = metadata !{i64 720}
!748 = metadata !{i64 721}
!749 = metadata !{i64 722}
!750 = metadata !{i64 723}
!751 = metadata !{i64 724}
!752 = metadata !{i64 725}
!753 = metadata !{i64 726}
!754 = metadata !{i64 727}
!755 = metadata !{i64 728}
!756 = metadata !{i64 729}
!757 = metadata !{i64 730}
!758 = metadata !{i64 731}
!759 = metadata !{i64 732}
!760 = metadata !{i64 733}
!761 = metadata !{i64 734}
!762 = metadata !{i64 735}
!763 = metadata !{i64 736}
!764 = metadata !{i64 737}
!765 = metadata !{i64 738}
!766 = metadata !{i64 739}
!767 = metadata !{i64 740}
!768 = metadata !{i64 741}
!769 = metadata !{i64 742}
!770 = metadata !{i64 743}
!771 = metadata !{i64 744}
!772 = metadata !{i64 745}
!773 = metadata !{i64 746}
!774 = metadata !{i64 747}
!775 = metadata !{i64 748}
!776 = metadata !{i64 749}
!777 = metadata !{i64 750}
!778 = metadata !{i64 751}
!779 = metadata !{i64 752}
!780 = metadata !{i64 753}
!781 = metadata !{i64 754}
!782 = metadata !{i64 755}
!783 = metadata !{i64 756}
!784 = metadata !{i64 757}
!785 = metadata !{i64 758}
!786 = metadata !{i64 759}
!787 = metadata !{i64 760}
!788 = metadata !{i64 761}
!789 = metadata !{i64 762}
!790 = metadata !{i64 763}
!791 = metadata !{i64 764}
!792 = metadata !{i64 765}
!793 = metadata !{i64 766}
!794 = metadata !{i64 767}
!795 = metadata !{i64 768}
!796 = metadata !{i64 769}
!797 = metadata !{i64 770}
!798 = metadata !{i64 771}
!799 = metadata !{i64 772}
!800 = metadata !{i64 773}
!801 = metadata !{i64 774}
!802 = metadata !{i64 775}
!803 = metadata !{i64 776}
!804 = metadata !{i64 777}
!805 = metadata !{i64 778}
!806 = metadata !{i64 779}
!807 = metadata !{i64 780}
!808 = metadata !{i64 781}
!809 = metadata !{i64 782}
!810 = metadata !{i64 783}
!811 = metadata !{i64 784}
!812 = metadata !{i64 785}
!813 = metadata !{i64 786}
!814 = metadata !{i64 787}
!815 = metadata !{i64 788}
!816 = metadata !{i64 789}
!817 = metadata !{i64 790}
!818 = metadata !{i64 791}
!819 = metadata !{i64 792}
!820 = metadata !{i64 793}
!821 = metadata !{i64 794}
!822 = metadata !{i64 795}
!823 = metadata !{i64 796}
!824 = metadata !{i64 797}
!825 = metadata !{i64 798}
!826 = metadata !{i64 799}
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
!928 = metadata !{i64 901}
!929 = metadata !{i64 902}
!930 = metadata !{i64 903}
!931 = metadata !{i64 904}
!932 = metadata !{i64 905}
!933 = metadata !{i64 906}
!934 = metadata !{i64 907}
!935 = metadata !{i64 908}
!936 = metadata !{i64 909}
!937 = metadata !{i64 910}
!938 = metadata !{i64 911}
!939 = metadata !{i64 912}
!940 = metadata !{i64 913}
!941 = metadata !{i64 914}
!942 = metadata !{i64 915}
!943 = metadata !{i64 916}
!944 = metadata !{i64 917}
!945 = metadata !{i64 918}
!946 = metadata !{i64 919}
!947 = metadata !{i64 920}
!948 = metadata !{i64 921}
!949 = metadata !{i64 922}
!950 = metadata !{i64 923}
!951 = metadata !{i64 924}
!952 = metadata !{i64 925}
!953 = metadata !{i64 926}
!954 = metadata !{i64 927}
!955 = metadata !{i64 928}
!956 = metadata !{i64 929}
!957 = metadata !{i64 930}
!958 = metadata !{i64 931}
!959 = metadata !{i64 932}
!960 = metadata !{i64 933}
!961 = metadata !{i64 934}
!962 = metadata !{i64 935}
!963 = metadata !{i64 936}
!964 = metadata !{i64 937}
!965 = metadata !{i64 938}
!966 = metadata !{i64 939}
!967 = metadata !{i64 940}
!968 = metadata !{i64 941}
!969 = metadata !{i64 942}
!970 = metadata !{i64 943}
!971 = metadata !{i64 944}
!972 = metadata !{i64 945}
!973 = metadata !{i64 946}
!974 = metadata !{i64 947}
!975 = metadata !{i64 948}
!976 = metadata !{i64 949}
!977 = metadata !{i64 950}
!978 = metadata !{i64 951}
!979 = metadata !{i64 952}
!980 = metadata !{i64 953}
!981 = metadata !{i64 954}
!982 = metadata !{i64 955}
!983 = metadata !{i64 956}
!984 = metadata !{i64 957}
!985 = metadata !{i64 958}
!986 = metadata !{i64 959}
!987 = metadata !{i64 960}
!988 = metadata !{i64 961}
!989 = metadata !{i64 962}
!990 = metadata !{i64 963}
!991 = metadata !{i64 964}
!992 = metadata !{i64 965}
!993 = metadata !{i64 966}
!994 = metadata !{i64 967}
!995 = metadata !{i64 968}
!996 = metadata !{i64 969}
!997 = metadata !{i64 970}
!998 = metadata !{i64 971}
!999 = metadata !{i64 972}
!1000 = metadata !{i64 973}
!1001 = metadata !{i64 974}
!1002 = metadata !{i64 975}
!1003 = metadata !{i64 976}
!1004 = metadata !{i64 977}
!1005 = metadata !{i64 978}
!1006 = metadata !{i64 979}
!1007 = metadata !{i64 980}
!1008 = metadata !{i64 981}
!1009 = metadata !{i64 982}
!1010 = metadata !{i64 983}
!1011 = metadata !{i64 984}
!1012 = metadata !{i64 985}
!1013 = metadata !{i64 986}
!1014 = metadata !{i64 987}
!1015 = metadata !{i64 988}
!1016 = metadata !{i64 989}
!1017 = metadata !{i64 990}
!1018 = metadata !{i64 991}
!1019 = metadata !{i64 992}
!1020 = metadata !{i64 993}
!1021 = metadata !{i64 994}
!1022 = metadata !{i64 995}
!1023 = metadata !{i64 996}
!1024 = metadata !{i64 997}
!1025 = metadata !{i64 998}
!1026 = metadata !{i64 999}
!1027 = metadata !{i64 1000}
!1028 = metadata !{i64 1001}
!1029 = metadata !{i64 1002}
!1030 = metadata !{i64 1003}
!1031 = metadata !{i64 1004}
!1032 = metadata !{i64 1005}
!1033 = metadata !{i64 1006}
!1034 = metadata !{i64 1007}
!1035 = metadata !{i64 1008}
!1036 = metadata !{i64 1009}
!1037 = metadata !{i64 1010}
!1038 = metadata !{i64 1011}
!1039 = metadata !{i64 1012}
!1040 = metadata !{i64 1013}
!1041 = metadata !{i64 1014}
!1042 = metadata !{i64 1015}
!1043 = metadata !{i64 1016}
!1044 = metadata !{i64 1017}
!1045 = metadata !{i64 1018}
!1046 = metadata !{i64 1019}
!1047 = metadata !{i64 1020}
!1048 = metadata !{i64 1021}
!1049 = metadata !{i64 1022}
!1050 = metadata !{i64 1023}
!1051 = metadata !{i64 1024}
!1052 = metadata !{i64 1025}
!1053 = metadata !{i64 1026}
!1054 = metadata !{i64 1027}
!1055 = metadata !{i64 1028}
!1056 = metadata !{i64 1029}
!1057 = metadata !{i64 1030}
!1058 = metadata !{i64 1031}
!1059 = metadata !{i64 1032}
!1060 = metadata !{i64 1033}
!1061 = metadata !{i64 1034}
!1062 = metadata !{i64 1035}
!1063 = metadata !{i64 1036}
!1064 = metadata !{i64 1037}
!1065 = metadata !{i64 1038}
!1066 = metadata !{i64 1039}
!1067 = metadata !{i64 1040}
!1068 = metadata !{i64 1041}
!1069 = metadata !{i64 1042}
!1070 = metadata !{i64 1043}
!1071 = metadata !{i64 1044}
!1072 = metadata !{i64 1045}
!1073 = metadata !{i64 1046}
!1074 = metadata !{i64 1047}
!1075 = metadata !{i64 1048}
!1076 = metadata !{i64 1049}
!1077 = metadata !{i64 1050}
!1078 = metadata !{i64 1051}
!1079 = metadata !{i64 1052}
!1080 = metadata !{i64 1053}
!1081 = metadata !{i64 1054}
!1082 = metadata !{i64 1055}
!1083 = metadata !{i64 1056}
!1084 = metadata !{i64 1057}
!1085 = metadata !{i64 1058}
!1086 = metadata !{i64 1059}
!1087 = metadata !{i64 1060}
!1088 = metadata !{i64 1061}
!1089 = metadata !{i64 1062}
!1090 = metadata !{i64 1063}
!1091 = metadata !{i64 1064}
!1092 = metadata !{i64 1065}
!1093 = metadata !{i64 1066}
!1094 = metadata !{i64 1067}
!1095 = metadata !{i64 1068}
!1096 = metadata !{i64 1069}
!1097 = metadata !{i64 1070}
!1098 = metadata !{i64 1071}
!1099 = metadata !{i64 1072}
!1100 = metadata !{i64 1073}
!1101 = metadata !{i64 1074}
!1102 = metadata !{i64 1075}
!1103 = metadata !{i64 1076}
!1104 = metadata !{i64 1077}
!1105 = metadata !{i64 1078}
!1106 = metadata !{i64 1079}
!1107 = metadata !{i64 1080}
!1108 = metadata !{i64 1081}
!1109 = metadata !{i64 1082}
!1110 = metadata !{i64 1083}
!1111 = metadata !{i64 1084}
!1112 = metadata !{i64 1085}
!1113 = metadata !{i64 1086}
!1114 = metadata !{i64 1087}
!1115 = metadata !{i64 1088}
!1116 = metadata !{i64 1089}
!1117 = metadata !{i64 1090}
!1118 = metadata !{i64 1091}
!1119 = metadata !{i64 1092}
!1120 = metadata !{i64 1093}
!1121 = metadata !{i64 1094}
!1122 = metadata !{i64 1095}
!1123 = metadata !{i64 1096}
!1124 = metadata !{i64 1097}
!1125 = metadata !{i64 1098}
!1126 = metadata !{i64 1099}
!1127 = metadata !{i64 1100}
!1128 = metadata !{i64 1101}
!1129 = metadata !{i64 1102}
!1130 = metadata !{i64 1103}
!1131 = metadata !{i64 1104}
!1132 = metadata !{i64 1105}
!1133 = metadata !{i64 1106}
!1134 = metadata !{i64 1107}
!1135 = metadata !{i64 1108}
!1136 = metadata !{i64 1109}
!1137 = metadata !{i64 1110}
!1138 = metadata !{i64 1111}
!1139 = metadata !{i64 1112}
!1140 = metadata !{i64 1113}
!1141 = metadata !{i64 1114}
!1142 = metadata !{i64 1115}
!1143 = metadata !{i64 1116}
!1144 = metadata !{i64 1117}
!1145 = metadata !{i64 1118}
!1146 = metadata !{i64 1119}
!1147 = metadata !{i64 1120}
!1148 = metadata !{i64 1121}
!1149 = metadata !{i64 1122}
!1150 = metadata !{i64 1123}
!1151 = metadata !{i64 1124}
!1152 = metadata !{i64 1125}
!1153 = metadata !{i64 1126}
!1154 = metadata !{i64 1127}
!1155 = metadata !{i64 1128}
!1156 = metadata !{i64 1129}
!1157 = metadata !{i64 1130}
!1158 = metadata !{metadata !57, metadata !57, i64 0}
!1159 = metadata !{i64 1131}
!1160 = metadata !{i64 1132}
!1161 = metadata !{i64 1133}
!1162 = metadata !{i64 1134}
!1163 = metadata !{i64 1135}
!1164 = metadata !{i64 1136}
!1165 = metadata !{i64 1137}
!1166 = metadata !{i64 1138}
!1167 = metadata !{i64 1139}
!1168 = metadata !{i64 1140}
!1169 = metadata !{i64 1141}
!1170 = metadata !{i64 1142}
!1171 = metadata !{i64 1143}
!1172 = metadata !{i64 1144}
!1173 = metadata !{i64 1145}
!1174 = metadata !{i64 1146}
!1175 = metadata !{i64 1147}
!1176 = metadata !{i64 1148}
!1177 = metadata !{i64 1149}
!1178 = metadata !{i64 1150}
!1179 = metadata !{i64 1151}
!1180 = metadata !{i64 1152}
!1181 = metadata !{i64 1153}
!1182 = metadata !{i64 1154}
!1183 = metadata !{i64 1155}
!1184 = metadata !{i64 1156}
!1185 = metadata !{i64 1157}
!1186 = metadata !{i64 1158}
!1187 = metadata !{i64 1159}
!1188 = metadata !{i64 1160}
!1189 = metadata !{i64 1161}
!1190 = metadata !{i64 1162}
!1191 = metadata !{i64 1163}
!1192 = metadata !{i64 1164}
!1193 = metadata !{i64 1165}
!1194 = metadata !{i64 1166}
!1195 = metadata !{i64 1167}
!1196 = metadata !{i64 1168}
!1197 = metadata !{i64 1169}
!1198 = metadata !{i64 1170}
!1199 = metadata !{i64 1171}
!1200 = metadata !{i64 1172}
!1201 = metadata !{i64 1173}
!1202 = metadata !{i64 1174}
!1203 = metadata !{i64 1175}
!1204 = metadata !{i64 1176}
!1205 = metadata !{i64 1177}
!1206 = metadata !{i64 1178}
!1207 = metadata !{i64 1179}
!1208 = metadata !{i64 1180}
!1209 = metadata !{i64 1181}
!1210 = metadata !{i64 1182}
!1211 = metadata !{i64 1183}
!1212 = metadata !{i64 1184}
!1213 = metadata !{i64 1185}
!1214 = metadata !{i64 1186}
!1215 = metadata !{i64 1187}
!1216 = metadata !{i64 1188}
!1217 = metadata !{i64 1189}
!1218 = metadata !{i64 1190}
!1219 = metadata !{i64 1191}
!1220 = metadata !{i64 1192}
!1221 = metadata !{i64 1193}
!1222 = metadata !{i64 1194}
!1223 = metadata !{i64 1195}
!1224 = metadata !{i64 1196}
!1225 = metadata !{i64 1197}
!1226 = metadata !{i64 1198}
!1227 = metadata !{i64 1199}
!1228 = metadata !{i64 1200}
!1229 = metadata !{i64 1201}
!1230 = metadata !{i64 1202}
!1231 = metadata !{i64 1203}
!1232 = metadata !{i64 1204}
!1233 = metadata !{i64 1205}
!1234 = metadata !{i64 1206}
!1235 = metadata !{i64 1207}
!1236 = metadata !{i64 1208}
!1237 = metadata !{i64 1209}
!1238 = metadata !{i64 1210}
!1239 = metadata !{i64 1211}
!1240 = metadata !{i64 1212}
!1241 = metadata !{i64 1213}
!1242 = metadata !{i64 1214}
!1243 = metadata !{i64 1215}
!1244 = metadata !{i64 1216}
!1245 = metadata !{i64 1217}
!1246 = metadata !{i64 1218}
!1247 = metadata !{i64 1219}
!1248 = metadata !{i64 1220}
!1249 = metadata !{i64 1221}
!1250 = metadata !{i64 1222}
!1251 = metadata !{i64 1223}
!1252 = metadata !{i64 1224}
!1253 = metadata !{i64 1225}
!1254 = metadata !{i64 1226}
!1255 = metadata !{i64 1227}
!1256 = metadata !{i64 1228}
!1257 = metadata !{i64 1229}
!1258 = metadata !{i64 1230}
!1259 = metadata !{metadata !161, metadata !161, i64 0}
!1260 = metadata !{i64 1231}
!1261 = metadata !{i64 1232}
!1262 = metadata !{i64 1233}
!1263 = metadata !{i64 1234}
!1264 = metadata !{i64 1235}
!1265 = metadata !{i64 1236}
!1266 = metadata !{i64 1237}
!1267 = metadata !{i64 1238}
!1268 = metadata !{i64 1239}
!1269 = metadata !{i64 1240}
!1270 = metadata !{i64 1241}
!1271 = metadata !{i64 1242}
!1272 = metadata !{i64 1243}
!1273 = metadata !{i64 1244}
!1274 = metadata !{i64 1245}
!1275 = metadata !{i64 1246}
!1276 = metadata !{i64 1247}
!1277 = metadata !{i64 1248}
!1278 = metadata !{i64 1249}
!1279 = metadata !{i64 1250}
!1280 = metadata !{i64 1251}
!1281 = metadata !{i64 1252}
!1282 = metadata !{i64 1253}
!1283 = metadata !{i64 1254}
!1284 = metadata !{i64 1255}
!1285 = metadata !{i64 1256}
!1286 = metadata !{i64 1257}
!1287 = metadata !{i64 1258}
!1288 = metadata !{i64 1259}
!1289 = metadata !{i64 1260}
!1290 = metadata !{i64 1261}
!1291 = metadata !{i64 1262}
!1292 = metadata !{i64 1263}
!1293 = metadata !{i64 1264}
!1294 = metadata !{i64 1265}
!1295 = metadata !{i64 1266}
!1296 = metadata !{i64 1267}
!1297 = metadata !{i64 1268}
!1298 = metadata !{i64 1269}
!1299 = metadata !{i64 1270}
!1300 = metadata !{i64 1271}
!1301 = metadata !{i64 1272}
!1302 = metadata !{i64 1273}
!1303 = metadata !{i64 1274}
!1304 = metadata !{i64 1275}
!1305 = metadata !{i64 1276}
!1306 = metadata !{i64 1277}
!1307 = metadata !{i64 1278}
!1308 = metadata !{i64 1279}
!1309 = metadata !{i64 1280}
!1310 = metadata !{i64 1281}
!1311 = metadata !{i64 1282}
!1312 = metadata !{i64 1283}
!1313 = metadata !{i64 1284}
!1314 = metadata !{i64 1285}
!1315 = metadata !{i64 1286}
!1316 = metadata !{i64 1287}
!1317 = metadata !{i64 1288}
!1318 = metadata !{i64 1289}
!1319 = metadata !{i64 1290}
!1320 = metadata !{i64 1291}
!1321 = metadata !{i64 1292}
!1322 = metadata !{i64 1293}
!1323 = metadata !{i64 1294}
!1324 = metadata !{i64 1295}
!1325 = metadata !{i64 1296}
!1326 = metadata !{i64 1297}
!1327 = metadata !{i64 1298}
!1328 = metadata !{i64 1299}
!1329 = metadata !{i64 1300}
!1330 = metadata !{i64 1301}
!1331 = metadata !{i64 1302}
!1332 = metadata !{i64 1303}
!1333 = metadata !{i64 1304}
!1334 = metadata !{i64 1305}
!1335 = metadata !{i64 1306}
!1336 = metadata !{i64 1307}
!1337 = metadata !{i64 1308}
!1338 = metadata !{i64 1309}
!1339 = metadata !{i64 1310}
!1340 = metadata !{i64 1311}
!1341 = metadata !{i64 1312}
!1342 = metadata !{i64 1313}
!1343 = metadata !{i64 1314}
!1344 = metadata !{i64 1315}
!1345 = metadata !{i64 1316}
!1346 = metadata !{i64 1317}
!1347 = metadata !{i64 1318}
!1348 = metadata !{i64 1319}
!1349 = metadata !{i64 1320}
!1350 = metadata !{i64 1321}
!1351 = metadata !{i64 1322}
!1352 = metadata !{i64 1323}
!1353 = metadata !{i64 1324}
!1354 = metadata !{i64 1325}
!1355 = metadata !{i64 1326}
!1356 = metadata !{i64 1327}
!1357 = metadata !{i64 1328}
!1358 = metadata !{i64 1329}
!1359 = metadata !{i64 1330}
!1360 = metadata !{i64 1331}
!1361 = metadata !{i64 1332}
!1362 = metadata !{i64 1333}
!1363 = metadata !{i64 1334}
!1364 = metadata !{i64 1335}
!1365 = metadata !{i64 1336}
!1366 = metadata !{i64 1337}
!1367 = metadata !{i64 1338}
!1368 = metadata !{i64 1339}
!1369 = metadata !{i64 1340}
!1370 = metadata !{i64 1341}
!1371 = metadata !{i64 1342}
!1372 = metadata !{i64 1343}
!1373 = metadata !{i64 1344}
!1374 = metadata !{i64 1345}
!1375 = metadata !{i64 1346}
!1376 = metadata !{i64 1347}
!1377 = metadata !{i64 1348}
!1378 = metadata !{i64 1349}
!1379 = metadata !{i64 1350}
!1380 = metadata !{i64 1351}
!1381 = metadata !{i64 1352}
!1382 = metadata !{i64 1353}
!1383 = metadata !{i64 1354}
!1384 = metadata !{i64 1355}
!1385 = metadata !{i64 1356}
!1386 = metadata !{i64 1357}
!1387 = metadata !{i64 1358}
!1388 = metadata !{i64 1359}
!1389 = metadata !{i64 1360}
!1390 = metadata !{i64 1361}
!1391 = metadata !{i64 1362}
!1392 = metadata !{i64 1363}
!1393 = metadata !{i64 1364}
!1394 = metadata !{i64 1365}
!1395 = metadata !{i64 1366}
!1396 = metadata !{i64 1367}
!1397 = metadata !{i64 1368}
!1398 = metadata !{i64 1369}
!1399 = metadata !{i64 1370}
!1400 = metadata !{i64 1371}
!1401 = metadata !{i64 1372}
!1402 = metadata !{i64 1373}
!1403 = metadata !{i64 1374}
!1404 = metadata !{i64 1375}
!1405 = metadata !{i64 1376}
!1406 = metadata !{i64 1377}
!1407 = metadata !{i64 1378}
!1408 = metadata !{i64 1379}
!1409 = metadata !{i64 1380}
!1410 = metadata !{i64 1381}
!1411 = metadata !{i64 1382}
!1412 = metadata !{i64 1383}
!1413 = metadata !{i64 1384}
!1414 = metadata !{i64 1385}
!1415 = metadata !{i64 1386}
!1416 = metadata !{i64 1387}
!1417 = metadata !{i64 1388}
!1418 = metadata !{i64 1389}
!1419 = metadata !{i64 1390}
!1420 = metadata !{i64 1391}
!1421 = metadata !{i64 1392}
!1422 = metadata !{i64 1393}
!1423 = metadata !{i64 1394}
!1424 = metadata !{i64 1395}
!1425 = metadata !{i64 1396}
!1426 = metadata !{i64 1397}
!1427 = metadata !{i64 1398}
!1428 = metadata !{i64 1399}
!1429 = metadata !{i64 1400}
!1430 = metadata !{i64 1401}
!1431 = metadata !{i64 1402}
!1432 = metadata !{i64 1403}
!1433 = metadata !{i64 1404}
!1434 = metadata !{i64 1405}
!1435 = metadata !{i64 1406}
!1436 = metadata !{i64 1407}
!1437 = metadata !{i64 1408}
!1438 = metadata !{i64 1409}
!1439 = metadata !{i64 1410}
!1440 = metadata !{i64 1411}
!1441 = metadata !{i64 1412}
!1442 = metadata !{i64 1413}
!1443 = metadata !{i64 1414}
!1444 = metadata !{i64 1415}
!1445 = metadata !{i64 1416}
!1446 = metadata !{i64 1417}
!1447 = metadata !{i64 1418}
!1448 = metadata !{i64 1419}
!1449 = metadata !{i64 1420}
!1450 = metadata !{i64 1421}
!1451 = metadata !{i64 1422}
!1452 = metadata !{i64 1423}
!1453 = metadata !{i64 1424}
!1454 = metadata !{i64 1425}
!1455 = metadata !{i64 1426}
!1456 = metadata !{i64 1427}
!1457 = metadata !{i64 1428}
!1458 = metadata !{i64 1429}
!1459 = metadata !{i64 1430}
!1460 = metadata !{i64 1431}
!1461 = metadata !{metadata !1462, metadata !1463, i64 0}
!1462 = metadata !{metadata !"timeval", metadata !1463, i64 0, metadata !1463, i64 8}
!1463 = metadata !{metadata !"long", metadata !57, i64 0}
!1464 = metadata !{i64 1432}
!1465 = metadata !{i64 1433}
!1466 = metadata !{i64 1434}
!1467 = metadata !{metadata !1462, metadata !1463, i64 8}
!1468 = metadata !{i64 1435}
!1469 = metadata !{i64 1436}
!1470 = metadata !{i64 1437}
!1471 = metadata !{i64 1438}
!1472 = metadata !{i64 1439}
!1473 = metadata !{i64 1440}
!1474 = metadata !{i64 1441}
!1475 = metadata !{i64 1442}
!1476 = metadata !{i64 1443}
!1477 = metadata !{i64 1444}
!1478 = metadata !{i64 1445}
!1479 = metadata !{i64 1446}
!1480 = metadata !{i64 1447}
!1481 = metadata !{i64 1448}
!1482 = metadata !{i64 1449}
!1483 = metadata !{i64 1450}
!1484 = metadata !{i64 1451}
!1485 = metadata !{i64 1452}
!1486 = metadata !{i64 1453}
!1487 = metadata !{i64 1454}
!1488 = metadata !{i64 1455}
!1489 = metadata !{i64 1456}
!1490 = metadata !{i64 1457}
!1491 = metadata !{i64 1458}
!1492 = metadata !{i64 1459}
!1493 = metadata !{i64 1460}
!1494 = metadata !{i64 1461}
!1495 = metadata !{i64 1462}
!1496 = metadata !{i64 1463}
!1497 = metadata !{i64 1464}
!1498 = metadata !{i64 1465}
!1499 = metadata !{i64 1466}
!1500 = metadata !{i64 1467}
!1501 = metadata !{i64 1468}
!1502 = metadata !{i64 1469}
!1503 = metadata !{i64 1470}
!1504 = metadata !{i64 1471}
!1505 = metadata !{i64 1472}
!1506 = metadata !{i64 1473}
!1507 = metadata !{i64 1474}
!1508 = metadata !{i64 1475}
!1509 = metadata !{i64 1476}
!1510 = metadata !{i64 1477}
!1511 = metadata !{i64 1478}
!1512 = metadata !{i64 1479}
!1513 = metadata !{i64 1480}
!1514 = metadata !{i64 1481}
!1515 = metadata !{i64 1482}
!1516 = metadata !{i64 1483}
!1517 = metadata !{i64 1484}
!1518 = metadata !{i64 1485}
!1519 = metadata !{i64 1486}
!1520 = metadata !{i64 1487}
!1521 = metadata !{i64 1488}
!1522 = metadata !{i64 1489}
!1523 = metadata !{i64 1490}
!1524 = metadata !{i64 1491}
!1525 = metadata !{i64 1492}
!1526 = metadata !{i64 1493}
!1527 = metadata !{i64 1494}
!1528 = metadata !{i64 1495}
!1529 = metadata !{i64 1496}
!1530 = metadata !{i64 1497}
!1531 = metadata !{i64 1498}
!1532 = metadata !{i64 1499}
!1533 = metadata !{i64 1500}
!1534 = metadata !{i64 1501}
!1535 = metadata !{i64 1502}
!1536 = metadata !{i64 1503}
!1537 = metadata !{i64 1504}
!1538 = metadata !{i64 1505}
!1539 = metadata !{i64 1506}
!1540 = metadata !{i64 1507}
!1541 = metadata !{i64 1508}
!1542 = metadata !{i64 1509}
!1543 = metadata !{i64 1510}
!1544 = metadata !{i64 1511}
!1545 = metadata !{i64 1512}
!1546 = metadata !{i64 1513}
!1547 = metadata !{i64 1514}
!1548 = metadata !{i64 1515}
!1549 = metadata !{i64 1516}
!1550 = metadata !{i64 1517}
!1551 = metadata !{i64 1518}
!1552 = metadata !{i64 1519}
!1553 = metadata !{i64 1520}
!1554 = metadata !{i64 1521}
!1555 = metadata !{i64 1522}
!1556 = metadata !{i64 1523}
!1557 = metadata !{i64 1524}
!1558 = metadata !{i64 1525}
!1559 = metadata !{i64 1526}
!1560 = metadata !{i64 1527}
!1561 = metadata !{i64 1528}
!1562 = metadata !{i64 1529}
!1563 = metadata !{i64 1530}
!1564 = metadata !{i64 1531}
!1565 = metadata !{i64 1532}
!1566 = metadata !{i64 1533}
!1567 = metadata !{i64 1534}
!1568 = metadata !{i64 1535}
!1569 = metadata !{i64 1536}
!1570 = metadata !{i64 1537}
!1571 = metadata !{i64 1538}
!1572 = metadata !{i64 1539}
!1573 = metadata !{i64 1540}
!1574 = metadata !{i64 1541}
!1575 = metadata !{i64 1542}
!1576 = metadata !{i64 1543}
!1577 = metadata !{i64 1544}
!1578 = metadata !{i64 1545}
!1579 = metadata !{i64 1546}
!1580 = metadata !{i64 1547}
!1581 = metadata !{i64 1548}
!1582 = metadata !{i64 1549}
