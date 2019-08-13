; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/rodinia-backprop/fault injection/llfi-O3/backprop.ll'
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
  %1 = or i32 %m, %n, !llfi_index !66
  %2 = icmp slt i32 %1, 0, !llfi_index !67
  br i1 %2, label %._crit_edge3, label %.preheader.lr.ph..preheader.lr.ph.split_crit_edge, !llfi_index !68

.preheader.lr.ph..preheader.lr.ph.split_crit_edge: ; preds = %0
  %3 = add i32 %n, 1, !llfi_index !69
  %4 = add i32 %m, 1, !llfi_index !70
  br label %.lr.ph, !llfi_index !71

.lr.ph:                                           ; preds = %._crit_edge, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %._crit_edge ], [ 0, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge ], !llfi_index !72
  %5 = getelementptr inbounds float** %w, i64 %indvars.iv4, !llfi_index !73
  br label %6, !llfi_index !74

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %6 ], [ 0, %.lr.ph ], !llfi_index !75
  %7 = tail call i32 @rand() #3, !llfi_index !76
  %8 = sitofp i32 %7 to float, !llfi_index !77
  %9 = fmul float %8, 0x3E00000000000000, !llfi_index !78
  %10 = load float** %5, align 8, !tbaa !55, !llfi_index !79
  %11 = getelementptr inbounds float* %10, i64 %indvars.iv, !llfi_index !80
  store float %9, float* %11, align 4, !tbaa !81, !llfi_index !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !84
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !85
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !llfi_index !86
  br i1 %exitcond, label %._crit_edge, label %6, !llfi_index !87

._crit_edge:                                      ; preds = %6
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !llfi_index !88
  %lftr.wideiv6 = trunc i64 %indvars.iv.next5 to i32, !llfi_index !89
  %exitcond7 = icmp eq i32 %lftr.wideiv6, %4, !llfi_index !90
  br i1 %exitcond7, label %._crit_edge3, label %.lr.ph, !llfi_index !91

._crit_edge3:                                     ; preds = %._crit_edge, %0
  ret i32 undef, !llfi_index !92
}

; Function Attrs: nounwind uwtable
define i32 @bpnn_randomize_row(float* nocapture %w, i32 %m) #0 {
  %1 = icmp slt i32 %m, 0, !llfi_index !93
  br i1 %1, label %._crit_edge, label %.lr.ph, !llfi_index !94

.lr.ph:                                           ; preds = %0
  %2 = add i32 %m, 1, !llfi_index !95
  %3 = zext i32 %m to i64, !llfi_index !96
  %4 = add i64 %3, 1, !llfi_index !97
  %end.idx = add i64 %3, 1, !llfi_index !98
  %n.vec = and i64 %4, 8589934584, !llfi_index !99
  %cmp.zero = icmp eq i64 %n.vec, 0, !llfi_index !100
  br i1 %cmp.zero, label %middle.block, label %vector.body, !llfi_index !101

vector.body:                                      ; preds = %vector.body, %.lr.ph
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ], !llfi_index !102
  %5 = getelementptr inbounds float* %w, i64 %index, !llfi_index !103
  %6 = bitcast float* %5 to <4 x float>*, !llfi_index !104
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %6, align 4, !llfi_index !105
  %.sum5 = or i64 %index, 4, !llfi_index !106
  %7 = getelementptr float* %w, i64 %.sum5, !llfi_index !107
  %8 = bitcast float* %7 to <4 x float>*, !llfi_index !108
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %8, align 4, !llfi_index !109
  %index.next = add i64 %index, 8, !llfi_index !110
  %9 = icmp eq i64 %index.next, %n.vec, !llfi_index !111
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !112, !llfi_index !115

middle.block:                                     ; preds = %vector.body, %.lr.ph
  %resume.val = phi i64 [ 0, %.lr.ph ], [ %n.vec, %vector.body ], !llfi_index !116
  %cmp.n = icmp eq i64 %end.idx, %resume.val, !llfi_index !117
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph, !llfi_index !118

scalar.ph:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %resume.val, %middle.block ], !llfi_index !119
  %10 = getelementptr inbounds float* %w, i64 %indvars.iv, !llfi_index !120
  store float 0x3FB99999A0000000, float* %10, align 4, !tbaa !81, !llfi_index !121
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !122
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !123
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !llfi_index !124
  br i1 %exitcond, label %._crit_edge, label %scalar.ph, !llvm.loop !125, !llfi_index !126

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %0
  ret i32 undef, !llfi_index !127
}

; Function Attrs: nounwind uwtable
define i32 @bpnn_zero_weights(float** nocapture readonly %w, i32 %m, i32 %n) #0 {
  %1 = or i32 %m, %n, !llfi_index !128
  %2 = icmp slt i32 %1, 0, !llfi_index !129
  br i1 %2, label %._crit_edge3, label %.preheader.lr.ph..preheader.lr.ph.split_crit_edge, !llfi_index !130

.preheader.lr.ph..preheader.lr.ph.split_crit_edge: ; preds = %0
  %3 = zext i32 %n to i64, !llfi_index !131
  %4 = shl nuw nsw i64 %3, 2, !llfi_index !132
  %5 = add i64 %4, 4, !llfi_index !133
  %6 = add i32 %m, 1, !llfi_index !134
  br label %7, !llfi_index !135

; <label>:7                                       ; preds = %7, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %7 ], [ 0, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge ], !llfi_index !136
  %8 = getelementptr inbounds float** %w, i64 %indvars.iv, !llfi_index !137
  %9 = load float** %8, align 8, !tbaa !55, !llfi_index !138
  %10 = bitcast float* %9 to i8*, !llfi_index !139
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 %5, i32 4, i1 false), !llfi_index !140
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !141
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !142
  %exitcond = icmp eq i32 %lftr.wideiv, %6, !llfi_index !143
  br i1 %exitcond, label %._crit_edge3, label %7, !llfi_index !144

._crit_edge3:                                     ; preds = %7, %0
  ret i32 undef, !llfi_index !145
}

; Function Attrs: nounwind uwtable
define void @bpnn_initialize(i32 %seed) #0 {
  %1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0), i32 %seed) #3, !llfi_index !146
  tail call void @srand(i32 %seed) #3, !llfi_index !147
  ret void, !llfi_index !148
}

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind uwtable
define noalias %struct.BPNN* @bpnn_internal_create(i32 %n_in, i32 %n_hidden, i32 %n_out) #0 {
  %1 = tail call noalias i8* @malloc(i64 96) #3, !llfi_index !149
  %2 = icmp eq i8* %1, null, !llfi_index !150
  br i1 %2, label %3, label %4, !llfi_index !151

; <label>:3                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([46 x i8]* @str12, i64 0, i64 0)), !llfi_index !152
  br label %118, !llfi_index !153

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %1 to %struct.BPNN*, !llfi_index !154
  %6 = bitcast i8* %1 to i32*, !llfi_index !155
  store i32 %n_in, i32* %6, align 4, !tbaa !156, !llfi_index !159
  %7 = getelementptr inbounds i8* %1, i64 4, !llfi_index !160
  %8 = bitcast i8* %7 to i32*, !llfi_index !161
  store i32 %n_hidden, i32* %8, align 4, !tbaa !162, !llfi_index !163
  %9 = getelementptr inbounds i8* %1, i64 8, !llfi_index !164
  %10 = bitcast i8* %9 to i32*, !llfi_index !165
  store i32 %n_out, i32* %10, align 4, !tbaa !166, !llfi_index !167
  %11 = add i32 %n_in, 1, !llfi_index !168
  %12 = shl i32 %11, 2, !llfi_index !169
  %13 = zext i32 %12 to i64, !llfi_index !170
  %14 = tail call noalias i8* @malloc(i64 %13) #3, !llfi_index !171
  %15 = icmp eq i8* %14, null, !llfi_index !172
  br i1 %15, label %16, label %17, !llfi_index !173

; <label>:16                                      ; preds = %4
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !174
  br label %alloc_1d_dbl.exit, !llfi_index !175

; <label>:17                                      ; preds = %4
  %18 = bitcast i8* %14 to float*, !llfi_index !176
  br label %alloc_1d_dbl.exit, !llfi_index !177

alloc_1d_dbl.exit:                                ; preds = %17, %16
  %.0.i = phi float* [ null, %16 ], [ %18, %17 ], !llfi_index !178
  %19 = getelementptr inbounds i8* %1, i64 16, !llfi_index !179
  %20 = bitcast i8* %19 to float**, !llfi_index !180
  store float* %.0.i, float** %20, align 8, !tbaa !181, !llfi_index !182
  %21 = add i32 %n_hidden, 1, !llfi_index !183
  %22 = shl i32 %21, 2, !llfi_index !184
  %23 = zext i32 %22 to i64, !llfi_index !185
  %24 = tail call noalias i8* @malloc(i64 %23) #3, !llfi_index !186
  %25 = icmp eq i8* %24, null, !llfi_index !187
  br i1 %25, label %26, label %27, !llfi_index !188

; <label>:26                                      ; preds = %alloc_1d_dbl.exit
  %puts.i1 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !189
  br label %alloc_1d_dbl.exit3, !llfi_index !190

; <label>:27                                      ; preds = %alloc_1d_dbl.exit
  %28 = bitcast i8* %24 to float*, !llfi_index !191
  br label %alloc_1d_dbl.exit3, !llfi_index !192

alloc_1d_dbl.exit3:                               ; preds = %27, %26
  %.0.i2 = phi float* [ null, %26 ], [ %28, %27 ], !llfi_index !193
  %29 = getelementptr inbounds i8* %1, i64 24, !llfi_index !194
  %30 = bitcast i8* %29 to float**, !llfi_index !195
  store float* %.0.i2, float** %30, align 8, !tbaa !196, !llfi_index !197
  %31 = shl i32 %n_out, 2, !llfi_index !198
  %32 = add i32 %31, 4, !llfi_index !199
  %33 = zext i32 %32 to i64, !llfi_index !200
  %34 = tail call noalias i8* @malloc(i64 %33) #3, !llfi_index !201
  %35 = icmp eq i8* %34, null, !llfi_index !202
  br i1 %35, label %36, label %37, !llfi_index !203

; <label>:36                                      ; preds = %alloc_1d_dbl.exit3
  %puts.i4 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !204
  br label %alloc_1d_dbl.exit6, !llfi_index !205

; <label>:37                                      ; preds = %alloc_1d_dbl.exit3
  %38 = bitcast i8* %34 to float*, !llfi_index !206
  br label %alloc_1d_dbl.exit6, !llfi_index !207

alloc_1d_dbl.exit6:                               ; preds = %37, %36
  %.0.i5 = phi float* [ null, %36 ], [ %38, %37 ], !llfi_index !208
  %39 = getelementptr inbounds i8* %1, i64 32, !llfi_index !209
  %40 = bitcast i8* %39 to float**, !llfi_index !210
  store float* %.0.i5, float** %40, align 8, !tbaa !211, !llfi_index !212
  %41 = tail call noalias i8* @malloc(i64 %23) #3, !llfi_index !213
  %42 = icmp eq i8* %41, null, !llfi_index !214
  br i1 %42, label %43, label %44, !llfi_index !215

; <label>:43                                      ; preds = %alloc_1d_dbl.exit6
  %puts.i7 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !216
  br label %alloc_1d_dbl.exit9, !llfi_index !217

; <label>:44                                      ; preds = %alloc_1d_dbl.exit6
  %45 = bitcast i8* %41 to float*, !llfi_index !218
  br label %alloc_1d_dbl.exit9, !llfi_index !219

alloc_1d_dbl.exit9:                               ; preds = %44, %43
  %.0.i8 = phi float* [ null, %43 ], [ %45, %44 ], !llfi_index !220
  %46 = getelementptr inbounds i8* %1, i64 40, !llfi_index !221
  %47 = bitcast i8* %46 to float**, !llfi_index !222
  store float* %.0.i8, float** %47, align 8, !tbaa !223, !llfi_index !224
  %48 = tail call noalias i8* @malloc(i64 %33) #3, !llfi_index !225
  %49 = icmp eq i8* %48, null, !llfi_index !226
  br i1 %49, label %50, label %51, !llfi_index !227

; <label>:50                                      ; preds = %alloc_1d_dbl.exit9
  %puts.i10 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !228
  br label %alloc_1d_dbl.exit12, !llfi_index !229

; <label>:51                                      ; preds = %alloc_1d_dbl.exit9
  %52 = bitcast i8* %48 to float*, !llfi_index !230
  br label %alloc_1d_dbl.exit12, !llfi_index !231

alloc_1d_dbl.exit12:                              ; preds = %51, %50
  %.0.i11 = phi float* [ null, %50 ], [ %52, %51 ], !llfi_index !232
  %53 = getelementptr inbounds i8* %1, i64 48, !llfi_index !233
  %54 = bitcast i8* %53 to float**, !llfi_index !234
  store float* %.0.i11, float** %54, align 8, !tbaa !235, !llfi_index !236
  %55 = tail call noalias i8* @malloc(i64 %33) #3, !llfi_index !237
  %56 = icmp eq i8* %55, null, !llfi_index !238
  br i1 %56, label %57, label %58, !llfi_index !239

; <label>:57                                      ; preds = %alloc_1d_dbl.exit12
  %puts.i13 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !240
  br label %alloc_1d_dbl.exit15, !llfi_index !241

; <label>:58                                      ; preds = %alloc_1d_dbl.exit12
  %59 = bitcast i8* %55 to float*, !llfi_index !242
  br label %alloc_1d_dbl.exit15, !llfi_index !243

alloc_1d_dbl.exit15:                              ; preds = %58, %57
  %.0.i14 = phi float* [ null, %57 ], [ %59, %58 ], !llfi_index !244
  %60 = getelementptr inbounds i8* %1, i64 56, !llfi_index !245
  %61 = bitcast i8* %60 to float**, !llfi_index !246
  store float* %.0.i14, float** %61, align 8, !tbaa !247, !llfi_index !248
  %62 = shl i32 %11, 3, !llfi_index !249
  %63 = zext i32 %62 to i64, !llfi_index !250
  %64 = tail call noalias i8* @malloc(i64 %63) #3, !llfi_index !251
  %65 = bitcast i8* %64 to float**, !llfi_index !252
  %66 = icmp eq i8* %64, null, !llfi_index !253
  br i1 %66, label %68, label %.preheader.i, !llfi_index !254

.preheader.i:                                     ; preds = %alloc_1d_dbl.exit15
  %67 = icmp sgt i32 %n_in, -1, !llfi_index !255
  br i1 %67, label %.lr.ph.i, label %alloc_2d_dbl.exit, !llfi_index !256

; <label>:68                                      ; preds = %alloc_1d_dbl.exit15
  %puts.i16 = tail call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str11, i64 0, i64 0)) #3, !llfi_index !257
  br label %alloc_2d_dbl.exit, !llfi_index !258

.lr.ph.i:                                         ; preds = %alloc_1d_dbl.exit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %alloc_1d_dbl.exit.i ], [ 0, %.preheader.i ], !llfi_index !259
  %69 = tail call noalias i8* @malloc(i64 %23) #3, !llfi_index !260
  %70 = icmp eq i8* %69, null, !llfi_index !261
  br i1 %70, label %71, label %72, !llfi_index !262

; <label>:71                                      ; preds = %.lr.ph.i
  %puts.i.i = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !263
  br label %alloc_1d_dbl.exit.i, !llfi_index !264

; <label>:72                                      ; preds = %.lr.ph.i
  %73 = bitcast i8* %69 to float*, !llfi_index !265
  br label %alloc_1d_dbl.exit.i, !llfi_index !266

alloc_1d_dbl.exit.i:                              ; preds = %72, %71
  %.0.i.i = phi float* [ null, %71 ], [ %73, %72 ], !llfi_index !267
  %74 = getelementptr inbounds float** %65, i64 %indvars.iv.i, !llfi_index !268
  store float* %.0.i.i, float** %74, align 8, !tbaa !55, !llfi_index !269
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !llfi_index !270
  %lftr.wideiv58 = trunc i64 %indvars.iv.next.i to i32, !llfi_index !271
  %exitcond59 = icmp eq i32 %lftr.wideiv58, %11, !llfi_index !272
  br i1 %exitcond59, label %alloc_2d_dbl.exit, label %.lr.ph.i, !llfi_index !273

alloc_2d_dbl.exit:                                ; preds = %alloc_1d_dbl.exit.i, %68, %.preheader.i
  %.0.i17 = phi float** [ null, %68 ], [ %65, %.preheader.i ], [ %65, %alloc_1d_dbl.exit.i ], !llfi_index !274
  %75 = getelementptr inbounds i8* %1, i64 64, !llfi_index !275
  %76 = bitcast i8* %75 to float***, !llfi_index !276
  store float** %.0.i17, float*** %76, align 8, !tbaa !277, !llfi_index !278
  %77 = shl i32 %21, 3, !llfi_index !279
  %78 = zext i32 %77 to i64, !llfi_index !280
  %79 = tail call noalias i8* @malloc(i64 %78) #3, !llfi_index !281
  %80 = bitcast i8* %79 to float**, !llfi_index !282
  %81 = icmp eq i8* %79, null, !llfi_index !283
  br i1 %81, label %83, label %.preheader.i18, !llfi_index !284

.preheader.i18:                                   ; preds = %alloc_2d_dbl.exit
  %82 = icmp sgt i32 %n_hidden, -1, !llfi_index !285
  br i1 %82, label %.lr.ph.i19, label %alloc_2d_dbl.exit29, !llfi_index !286

; <label>:83                                      ; preds = %alloc_2d_dbl.exit
  %puts.i20 = tail call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str11, i64 0, i64 0)) #3, !llfi_index !287
  br label %alloc_2d_dbl.exit29, !llfi_index !288

.lr.ph.i19:                                       ; preds = %alloc_1d_dbl.exit.i27, %.preheader.i18
  %indvars.iv.i21 = phi i64 [ %indvars.iv.next.i24, %alloc_1d_dbl.exit.i27 ], [ 0, %.preheader.i18 ], !llfi_index !289
  %84 = tail call noalias i8* @malloc(i64 %33) #3, !llfi_index !290
  %85 = icmp eq i8* %84, null, !llfi_index !291
  br i1 %85, label %86, label %87, !llfi_index !292

; <label>:86                                      ; preds = %.lr.ph.i19
  %puts.i.i22 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !293
  br label %alloc_1d_dbl.exit.i27, !llfi_index !294

; <label>:87                                      ; preds = %.lr.ph.i19
  %88 = bitcast i8* %84 to float*, !llfi_index !295
  br label %alloc_1d_dbl.exit.i27, !llfi_index !296

alloc_1d_dbl.exit.i27:                            ; preds = %87, %86
  %.0.i.i23 = phi float* [ null, %86 ], [ %88, %87 ], !llfi_index !297
  %89 = getelementptr inbounds float** %80, i64 %indvars.iv.i21, !llfi_index !298
  store float* %.0.i.i23, float** %89, align 8, !tbaa !55, !llfi_index !299
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i21, 1, !llfi_index !300
  %lftr.wideiv56 = trunc i64 %indvars.iv.next.i24 to i32, !llfi_index !301
  %exitcond57 = icmp eq i32 %lftr.wideiv56, %21, !llfi_index !302
  br i1 %exitcond57, label %alloc_2d_dbl.exit29, label %.lr.ph.i19, !llfi_index !303

alloc_2d_dbl.exit29:                              ; preds = %alloc_1d_dbl.exit.i27, %83, %.preheader.i18
  %.0.i28 = phi float** [ null, %83 ], [ %80, %.preheader.i18 ], [ %80, %alloc_1d_dbl.exit.i27 ], !llfi_index !304
  %90 = getelementptr inbounds i8* %1, i64 72, !llfi_index !305
  %91 = bitcast i8* %90 to float***, !llfi_index !306
  store float** %.0.i28, float*** %91, align 8, !tbaa !307, !llfi_index !308
  %92 = tail call noalias i8* @malloc(i64 %63) #3, !llfi_index !309
  %93 = bitcast i8* %92 to float**, !llfi_index !310
  %94 = icmp eq i8* %92, null, !llfi_index !311
  br i1 %94, label %96, label %.preheader.i30, !llfi_index !312

.preheader.i30:                                   ; preds = %alloc_2d_dbl.exit29
  %95 = icmp sgt i32 %n_in, -1, !llfi_index !313
  br i1 %95, label %.lr.ph.i31, label %alloc_2d_dbl.exit41, !llfi_index !314

; <label>:96                                      ; preds = %alloc_2d_dbl.exit29
  %puts.i32 = tail call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str11, i64 0, i64 0)) #3, !llfi_index !315
  br label %alloc_2d_dbl.exit41, !llfi_index !316

.lr.ph.i31:                                       ; preds = %alloc_1d_dbl.exit.i39, %.preheader.i30
  %indvars.iv.i33 = phi i64 [ %indvars.iv.next.i36, %alloc_1d_dbl.exit.i39 ], [ 0, %.preheader.i30 ], !llfi_index !317
  %97 = tail call noalias i8* @malloc(i64 %23) #3, !llfi_index !318
  %98 = icmp eq i8* %97, null, !llfi_index !319
  br i1 %98, label %99, label %100, !llfi_index !320

; <label>:99                                      ; preds = %.lr.ph.i31
  %puts.i.i34 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !321
  br label %alloc_1d_dbl.exit.i39, !llfi_index !322

; <label>:100                                     ; preds = %.lr.ph.i31
  %101 = bitcast i8* %97 to float*, !llfi_index !323
  br label %alloc_1d_dbl.exit.i39, !llfi_index !324

alloc_1d_dbl.exit.i39:                            ; preds = %100, %99
  %.0.i.i35 = phi float* [ null, %99 ], [ %101, %100 ], !llfi_index !325
  %102 = getelementptr inbounds float** %93, i64 %indvars.iv.i33, !llfi_index !326
  store float* %.0.i.i35, float** %102, align 8, !tbaa !55, !llfi_index !327
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i33, 1, !llfi_index !328
  %lftr.wideiv54 = trunc i64 %indvars.iv.next.i36 to i32, !llfi_index !329
  %exitcond55 = icmp eq i32 %lftr.wideiv54, %11, !llfi_index !330
  br i1 %exitcond55, label %alloc_2d_dbl.exit41, label %.lr.ph.i31, !llfi_index !331

alloc_2d_dbl.exit41:                              ; preds = %alloc_1d_dbl.exit.i39, %96, %.preheader.i30
  %.0.i40 = phi float** [ null, %96 ], [ %93, %.preheader.i30 ], [ %93, %alloc_1d_dbl.exit.i39 ], !llfi_index !332
  %103 = getelementptr inbounds i8* %1, i64 80, !llfi_index !333
  %104 = bitcast i8* %103 to float***, !llfi_index !334
  store float** %.0.i40, float*** %104, align 8, !tbaa !335, !llfi_index !336
  %105 = tail call noalias i8* @malloc(i64 %78) #3, !llfi_index !337
  %106 = bitcast i8* %105 to float**, !llfi_index !338
  %107 = icmp eq i8* %105, null, !llfi_index !339
  br i1 %107, label %109, label %.preheader.i42, !llfi_index !340

.preheader.i42:                                   ; preds = %alloc_2d_dbl.exit41
  %108 = icmp sgt i32 %n_hidden, -1, !llfi_index !341
  br i1 %108, label %.lr.ph.i43, label %alloc_2d_dbl.exit53, !llfi_index !342

; <label>:109                                     ; preds = %alloc_2d_dbl.exit41
  %puts.i44 = tail call i32 @puts(i8* getelementptr inbounds ([50 x i8]* @str11, i64 0, i64 0)) #3, !llfi_index !343
  br label %alloc_2d_dbl.exit53, !llfi_index !344

.lr.ph.i43:                                       ; preds = %alloc_1d_dbl.exit.i51, %.preheader.i42
  %indvars.iv.i45 = phi i64 [ %indvars.iv.next.i48, %alloc_1d_dbl.exit.i51 ], [ 0, %.preheader.i42 ], !llfi_index !345
  %110 = tail call noalias i8* @malloc(i64 %33) #3, !llfi_index !346
  %111 = icmp eq i8* %110, null, !llfi_index !347
  br i1 %111, label %112, label %113, !llfi_index !348

; <label>:112                                     ; preds = %.lr.ph.i43
  %puts.i.i46 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8]* @str, i64 0, i64 0)) #3, !llfi_index !349
  br label %alloc_1d_dbl.exit.i51, !llfi_index !350

; <label>:113                                     ; preds = %.lr.ph.i43
  %114 = bitcast i8* %110 to float*, !llfi_index !351
  br label %alloc_1d_dbl.exit.i51, !llfi_index !352

alloc_1d_dbl.exit.i51:                            ; preds = %113, %112
  %.0.i.i47 = phi float* [ null, %112 ], [ %114, %113 ], !llfi_index !353
  %115 = getelementptr inbounds float** %106, i64 %indvars.iv.i45, !llfi_index !354
  store float* %.0.i.i47, float** %115, align 8, !tbaa !55, !llfi_index !355
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i45, 1, !llfi_index !356
  %lftr.wideiv = trunc i64 %indvars.iv.next.i48 to i32, !llfi_index !357
  %exitcond = icmp eq i32 %lftr.wideiv, %21, !llfi_index !358
  br i1 %exitcond, label %alloc_2d_dbl.exit53, label %.lr.ph.i43, !llfi_index !359

alloc_2d_dbl.exit53:                              ; preds = %alloc_1d_dbl.exit.i51, %109, %.preheader.i42
  %.0.i52 = phi float** [ null, %109 ], [ %106, %.preheader.i42 ], [ %106, %alloc_1d_dbl.exit.i51 ], !llfi_index !360
  %116 = getelementptr inbounds i8* %1, i64 88, !llfi_index !361
  %117 = bitcast i8* %116 to float***, !llfi_index !362
  store float** %.0.i52, float*** %117, align 8, !tbaa !363, !llfi_index !364
  br label %118, !llfi_index !365

; <label>:118                                     ; preds = %alloc_2d_dbl.exit53, %3
  %.0 = phi %struct.BPNN* [ null, %3 ], [ %5, %alloc_2d_dbl.exit53 ], !llfi_index !366
  ret %struct.BPNN* %.0, !llfi_index !367
}

; Function Attrs: nounwind uwtable
define void @bpnn_free(%struct.BPNN* nocapture %net) #0 {
  %1 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 0, !llfi_index !368
  %2 = load i32* %1, align 4, !tbaa !156, !llfi_index !369
  %3 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 1, !llfi_index !370
  %4 = load i32* %3, align 4, !tbaa !162, !llfi_index !371
  %5 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 3, !llfi_index !372
  %6 = load float** %5, align 8, !tbaa !181, !llfi_index !373
  %7 = bitcast float* %6 to i8*, !llfi_index !374
  tail call void @free(i8* %7) #3, !llfi_index !375
  %8 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 4, !llfi_index !376
  %9 = load float** %8, align 8, !tbaa !196, !llfi_index !377
  %10 = bitcast float* %9 to i8*, !llfi_index !378
  tail call void @free(i8* %10) #3, !llfi_index !379
  %11 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 5, !llfi_index !380
  %12 = load float** %11, align 8, !tbaa !211, !llfi_index !381
  %13 = bitcast float* %12 to i8*, !llfi_index !382
  tail call void @free(i8* %13) #3, !llfi_index !383
  %14 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 6, !llfi_index !384
  %15 = load float** %14, align 8, !tbaa !223, !llfi_index !385
  %16 = bitcast float* %15 to i8*, !llfi_index !386
  tail call void @free(i8* %16) #3, !llfi_index !387
  %17 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 7, !llfi_index !388
  %18 = load float** %17, align 8, !tbaa !235, !llfi_index !389
  %19 = bitcast float* %18 to i8*, !llfi_index !390
  tail call void @free(i8* %19) #3, !llfi_index !391
  %20 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 8, !llfi_index !392
  %21 = load float** %20, align 8, !tbaa !247, !llfi_index !393
  %22 = bitcast float* %21 to i8*, !llfi_index !394
  tail call void @free(i8* %22) #3, !llfi_index !395
  %23 = icmp slt i32 %2, 0, !llfi_index !396
  %.pre = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 9, !llfi_index !397
  %.pre12 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 11, !llfi_index !398
  br i1 %23, label %._crit_edge5, label %.lr.ph4, !llfi_index !399

.lr.ph4:                                          ; preds = %0
  %24 = add i32 %2, 1, !llfi_index !400
  br label %25, !llfi_index !401

; <label>:25                                      ; preds = %25, %.lr.ph4
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %25 ], [ 0, %.lr.ph4 ], !llfi_index !402
  %26 = load float*** %.pre, align 8, !tbaa !277, !llfi_index !403
  %27 = getelementptr inbounds float** %26, i64 %indvars.iv6, !llfi_index !404
  %28 = load float** %27, align 8, !tbaa !55, !llfi_index !405
  %29 = bitcast float* %28 to i8*, !llfi_index !406
  tail call void @free(i8* %29) #3, !llfi_index !407
  %30 = load float*** %.pre12, align 8, !tbaa !335, !llfi_index !408
  %31 = getelementptr inbounds float** %30, i64 %indvars.iv6, !llfi_index !409
  %32 = load float** %31, align 8, !tbaa !55, !llfi_index !410
  %33 = bitcast float* %32 to i8*, !llfi_index !411
  tail call void @free(i8* %33) #3, !llfi_index !412
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !llfi_index !413
  %lftr.wideiv8 = trunc i64 %indvars.iv.next7 to i32, !llfi_index !414
  %exitcond9 = icmp eq i32 %lftr.wideiv8, %24, !llfi_index !415
  br i1 %exitcond9, label %._crit_edge5, label %25, !llfi_index !416

._crit_edge5:                                     ; preds = %25, %0
  %34 = load float*** %.pre, align 8, !tbaa !277, !llfi_index !417
  %35 = bitcast float** %34 to i8*, !llfi_index !418
  tail call void @free(i8* %35) #3, !llfi_index !419
  %36 = load float*** %.pre12, align 8, !tbaa !335, !llfi_index !420
  %37 = bitcast float** %36 to i8*, !llfi_index !421
  tail call void @free(i8* %37) #3, !llfi_index !422
  %38 = icmp slt i32 %4, 0, !llfi_index !423
  %.pre14 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 10, !llfi_index !424
  %.pre16 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 12, !llfi_index !425
  br i1 %38, label %._crit_edge, label %.lr.ph, !llfi_index !426

.lr.ph:                                           ; preds = %._crit_edge5
  %39 = add i32 %4, 1, !llfi_index !427
  br label %40, !llfi_index !428

; <label>:40                                      ; preds = %40, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %40 ], [ 0, %.lr.ph ], !llfi_index !429
  %41 = load float*** %.pre14, align 8, !tbaa !307, !llfi_index !430
  %42 = getelementptr inbounds float** %41, i64 %indvars.iv, !llfi_index !431
  %43 = load float** %42, align 8, !tbaa !55, !llfi_index !432
  %44 = bitcast float* %43 to i8*, !llfi_index !433
  tail call void @free(i8* %44) #3, !llfi_index !434
  %45 = load float*** %.pre16, align 8, !tbaa !363, !llfi_index !435
  %46 = getelementptr inbounds float** %45, i64 %indvars.iv, !llfi_index !436
  %47 = load float** %46, align 8, !tbaa !55, !llfi_index !437
  %48 = bitcast float* %47 to i8*, !llfi_index !438
  tail call void @free(i8* %48) #3, !llfi_index !439
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !440
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !441
  %exitcond = icmp eq i32 %lftr.wideiv, %39, !llfi_index !442
  br i1 %exitcond, label %._crit_edge, label %40, !llfi_index !443

._crit_edge:                                      ; preds = %40, %._crit_edge5
  %49 = load float*** %.pre14, align 8, !tbaa !307, !llfi_index !444
  %50 = bitcast float** %49 to i8*, !llfi_index !445
  tail call void @free(i8* %50) #3, !llfi_index !446
  %51 = load float*** %.pre16, align 8, !tbaa !363, !llfi_index !447
  %52 = bitcast float** %51 to i8*, !llfi_index !448
  tail call void @free(i8* %52) #3, !llfi_index !449
  %53 = bitcast %struct.BPNN* %net to i8*, !llfi_index !450
  tail call void @free(i8* %53) #3, !llfi_index !451
  ret void, !llfi_index !452
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define noalias %struct.BPNN* @bpnn_create(i32 %n_in, i32 %n_hidden, i32 %n_out) #0 {
  %1 = tail call %struct.BPNN* @bpnn_internal_create(i32 %n_in, i32 %n_hidden, i32 %n_out), !llfi_index !453
  %2 = getelementptr inbounds %struct.BPNN* %1, i64 0, i32 9, !llfi_index !454
  %3 = load float*** %2, align 8, !tbaa !277, !llfi_index !455
  %4 = or i32 %n_hidden, %n_in, !llfi_index !456
  %5 = icmp slt i32 %4, 0, !llfi_index !457
  br i1 %5, label %bpnn_randomize_weights.exit, label %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i, !llfi_index !458

.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i: ; preds = %0
  %6 = add i32 %n_hidden, 1, !llfi_index !459
  %7 = add i32 %n_in, 1, !llfi_index !460
  br label %.lr.ph.i, !llfi_index !461

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i
  %indvars.iv4.i = phi i64 [ %indvars.iv.next5.i, %._crit_edge.i ], [ 0, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i ], !llfi_index !462
  %8 = getelementptr inbounds float** %3, i64 %indvars.iv4.i, !llfi_index !463
  br label %9, !llfi_index !464

; <label>:9                                       ; preds = %9, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %9 ], [ 0, %.lr.ph.i ], !llfi_index !465
  %10 = tail call i32 @rand() #3, !llfi_index !466
  %11 = sitofp i32 %10 to float, !llfi_index !467
  %12 = fmul float %11, 0x3E00000000000000, !llfi_index !468
  %13 = load float** %8, align 8, !tbaa !55, !llfi_index !469
  %14 = getelementptr inbounds float* %13, i64 %indvars.iv.i, !llfi_index !470
  store float %12, float* %14, align 4, !tbaa !81, !llfi_index !471
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !llfi_index !472
  %lftr.wideiv38 = trunc i64 %indvars.iv.next.i to i32, !llfi_index !473
  %exitcond39 = icmp eq i32 %lftr.wideiv38, %6, !llfi_index !474
  br i1 %exitcond39, label %._crit_edge.i, label %9, !llfi_index !475

._crit_edge.i:                                    ; preds = %9
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1, !llfi_index !476
  %lftr.wideiv40 = trunc i64 %indvars.iv.next5.i to i32, !llfi_index !477
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %7, !llfi_index !478
  br i1 %exitcond41, label %bpnn_randomize_weights.exit, label %.lr.ph.i, !llfi_index !479

bpnn_randomize_weights.exit:                      ; preds = %._crit_edge.i, %0
  %15 = getelementptr inbounds %struct.BPNN* %1, i64 0, i32 10, !llfi_index !480
  %16 = load float*** %15, align 8, !tbaa !307, !llfi_index !481
  %17 = or i32 %n_out, %n_hidden, !llfi_index !482
  %18 = icmp slt i32 %17, 0, !llfi_index !483
  br i1 %18, label %bpnn_randomize_weights.exit12, label %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i1, !llfi_index !484

.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i1: ; preds = %bpnn_randomize_weights.exit
  %19 = add i32 %n_out, 1, !llfi_index !485
  %20 = add i32 %n_hidden, 1, !llfi_index !486
  br label %.lr.ph.i3, !llfi_index !487

.lr.ph.i3:                                        ; preds = %._crit_edge.i11, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i1
  %indvars.iv4.i2 = phi i64 [ %indvars.iv.next5.i8, %._crit_edge.i11 ], [ 0, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i1 ], !llfi_index !488
  %21 = getelementptr inbounds float** %16, i64 %indvars.iv4.i2, !llfi_index !489
  br label %22, !llfi_index !490

; <label>:22                                      ; preds = %22, %.lr.ph.i3
  %indvars.iv.i4 = phi i64 [ %indvars.iv.next.i5, %22 ], [ 0, %.lr.ph.i3 ], !llfi_index !491
  %23 = tail call i32 @rand() #3, !llfi_index !492
  %24 = sitofp i32 %23 to float, !llfi_index !493
  %25 = fmul float %24, 0x3E00000000000000, !llfi_index !494
  %26 = load float** %21, align 8, !tbaa !55, !llfi_index !495
  %27 = getelementptr inbounds float* %26, i64 %indvars.iv.i4, !llfi_index !496
  store float %25, float* %27, align 4, !tbaa !81, !llfi_index !497
  %indvars.iv.next.i5 = add nuw nsw i64 %indvars.iv.i4, 1, !llfi_index !498
  %lftr.wideiv34 = trunc i64 %indvars.iv.next.i5 to i32, !llfi_index !499
  %exitcond35 = icmp eq i32 %lftr.wideiv34, %19, !llfi_index !500
  br i1 %exitcond35, label %._crit_edge.i11, label %22, !llfi_index !501

._crit_edge.i11:                                  ; preds = %22
  %indvars.iv.next5.i8 = add nuw nsw i64 %indvars.iv4.i2, 1, !llfi_index !502
  %lftr.wideiv36 = trunc i64 %indvars.iv.next5.i8 to i32, !llfi_index !503
  %exitcond37 = icmp eq i32 %lftr.wideiv36, %20, !llfi_index !504
  br i1 %exitcond37, label %bpnn_randomize_weights.exit12, label %.lr.ph.i3, !llfi_index !505

bpnn_randomize_weights.exit12:                    ; preds = %._crit_edge.i11, %bpnn_randomize_weights.exit
  %28 = getelementptr inbounds %struct.BPNN* %1, i64 0, i32 11, !llfi_index !506
  %29 = load float*** %28, align 8, !tbaa !335, !llfi_index !507
  br i1 %5, label %bpnn_zero_weights.exit, label %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i13, !llfi_index !508

.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i13: ; preds = %bpnn_randomize_weights.exit12
  %30 = zext i32 %n_hidden to i64, !llfi_index !509
  %31 = shl nuw nsw i64 %30, 2, !llfi_index !510
  %32 = add i64 %31, 4, !llfi_index !511
  %33 = add i32 %n_in, 1, !llfi_index !512
  br label %34, !llfi_index !513

; <label>:34                                      ; preds = %34, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i13
  %indvars.iv.i14 = phi i64 [ %indvars.iv.next.i15, %34 ], [ 0, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i13 ], !llfi_index !514
  %35 = getelementptr inbounds float** %29, i64 %indvars.iv.i14, !llfi_index !515
  %36 = load float** %35, align 8, !tbaa !55, !llfi_index !516
  %37 = bitcast float* %36 to i8*, !llfi_index !517
  tail call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 %32, i32 4, i1 false) #3, !llfi_index !518
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i14, 1, !llfi_index !519
  %lftr.wideiv32 = trunc i64 %indvars.iv.next.i15 to i32, !llfi_index !520
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %33, !llfi_index !521
  br i1 %exitcond33, label %bpnn_zero_weights.exit, label %34, !llfi_index !522

bpnn_zero_weights.exit:                           ; preds = %34, %bpnn_randomize_weights.exit12
  %38 = getelementptr inbounds %struct.BPNN* %1, i64 0, i32 12, !llfi_index !523
  %39 = load float*** %38, align 8, !tbaa !363, !llfi_index !524
  br i1 %18, label %bpnn_zero_weights.exit29, label %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i24, !llfi_index !525

.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i24: ; preds = %bpnn_zero_weights.exit
  %40 = zext i32 %n_out to i64, !llfi_index !526
  %41 = shl nuw nsw i64 %40, 2, !llfi_index !527
  %42 = add i64 %41, 4, !llfi_index !528
  %43 = add i32 %n_hidden, 1, !llfi_index !529
  br label %44, !llfi_index !530

; <label>:44                                      ; preds = %44, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i24
  %indvars.iv.i25 = phi i64 [ %indvars.iv.next.i26, %44 ], [ 0, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i24 ], !llfi_index !531
  %45 = getelementptr inbounds float** %39, i64 %indvars.iv.i25, !llfi_index !532
  %46 = load float** %45, align 8, !tbaa !55, !llfi_index !533
  %47 = bitcast float* %46 to i8*, !llfi_index !534
  tail call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 %42, i32 4, i1 false) #3, !llfi_index !535
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i25, 1, !llfi_index !536
  %lftr.wideiv30 = trunc i64 %indvars.iv.next.i26 to i32, !llfi_index !537
  %exitcond31 = icmp eq i32 %lftr.wideiv30, %43, !llfi_index !538
  br i1 %exitcond31, label %bpnn_zero_weights.exit29, label %44, !llfi_index !539

bpnn_zero_weights.exit29:                         ; preds = %44, %bpnn_zero_weights.exit
  %48 = getelementptr inbounds %struct.BPNN* %1, i64 0, i32 8, !llfi_index !540
  %49 = load float** %48, align 8, !tbaa !247, !llfi_index !541
  %50 = icmp slt i32 %n_out, 0, !llfi_index !542
  br i1 %50, label %bpnn_randomize_row.exit, label %.lr.ph.i18, !llfi_index !543

.lr.ph.i18:                                       ; preds = %bpnn_zero_weights.exit29
  %51 = add i32 %n_out, 1, !llfi_index !544
  %52 = zext i32 %n_out to i64, !llfi_index !545
  %53 = add i64 %52, 1, !llfi_index !546
  %end.idx = add i64 %52, 1, !llfi_index !547
  %n.vec = and i64 %53, 8589934584, !llfi_index !548
  %cmp.zero = icmp eq i64 %n.vec, 0, !llfi_index !549
  br i1 %cmp.zero, label %middle.block, label %vector.body, !llfi_index !550

vector.body:                                      ; preds = %vector.body, %.lr.ph.i18
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i18 ], !llfi_index !551
  %54 = getelementptr inbounds float* %49, i64 %index, !llfi_index !552
  %55 = bitcast float* %54 to <4 x float>*, !llfi_index !553
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %55, align 4, !llfi_index !554
  %.sum45 = or i64 %index, 4, !llfi_index !555
  %56 = getelementptr float* %49, i64 %.sum45, !llfi_index !556
  %57 = bitcast float* %56 to <4 x float>*, !llfi_index !557
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>, <4 x float>* %57, align 4, !llfi_index !558
  %index.next = add i64 %index, 8, !llfi_index !559
  %58 = icmp eq i64 %index.next, %n.vec, !llfi_index !560
  br i1 %58, label %middle.block, label %vector.body, !llvm.loop !561, !llfi_index !562

middle.block:                                     ; preds = %vector.body, %.lr.ph.i18
  %resume.val = phi i64 [ 0, %.lr.ph.i18 ], [ %n.vec, %vector.body ], !llfi_index !563
  %cmp.n = icmp eq i64 %end.idx, %resume.val, !llfi_index !564
  br i1 %cmp.n, label %bpnn_randomize_row.exit, label %scalar.ph, !llfi_index !565

scalar.ph:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.i19 = phi i64 [ %indvars.iv.next.i20, %scalar.ph ], [ %resume.val, %middle.block ], !llfi_index !566
  %59 = getelementptr inbounds float* %49, i64 %indvars.iv.i19, !llfi_index !567
  store float 0x3FB99999A0000000, float* %59, align 4, !tbaa !81, !llfi_index !568
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i19, 1, !llfi_index !569
  %lftr.wideiv = trunc i64 %indvars.iv.next.i20 to i32, !llfi_index !570
  %exitcond = icmp eq i32 %lftr.wideiv, %51, !llfi_index !571
  br i1 %exitcond, label %bpnn_randomize_row.exit, label %scalar.ph, !llvm.loop !572, !llfi_index !573

bpnn_randomize_row.exit:                          ; preds = %scalar.ph, %middle.block, %bpnn_zero_weights.exit29
  ret %struct.BPNN* %1, !llfi_index !574
}

; Function Attrs: nounwind uwtable
define void @bpnn_layerforward(float* nocapture %l1, float* nocapture %l2, float** nocapture readonly %conn, i32 %n1, i32 %n2) #0 {
  store float 1.000000e+00, float* %l1, align 4, !tbaa !81, !llfi_index !575
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !576
  %1 = icmp slt i32 %n2, 1, !llfi_index !577
  br i1 %1, label %._crit_edge4, label %.preheader.lr.ph, !llfi_index !578

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp slt i32 %n1, 0, !llfi_index !579
  br i1 %2, label %.preheader.lr.ph.split.us, label %.preheader.lr.ph..preheader.lr.ph.split_crit_edge, !llfi_index !580

.preheader.lr.ph..preheader.lr.ph.split_crit_edge: ; preds = %.preheader.lr.ph
  %3 = add i32 %n1, 1, !llfi_index !581
  %4 = add i32 %n2, 1, !llfi_index !582
  br label %.lr.ph, !llfi_index !583

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %5 = add i32 %n2, 1, !llfi_index !584
  %6 = add i32 %n2, -1, !llfi_index !585
  %7 = zext i32 %6 to i64, !llfi_index !586
  %8 = add i64 %7, 1, !llfi_index !587
  %end.idx = add i64 %7, 2, !llfi_index !588
  %n.vec = and i64 %8, 8589934584, !llfi_index !589
  %end.idx.rnd.down17 = or i64 %n.vec, 1, !llfi_index !590
  %cmp.zero = icmp eq i64 %end.idx.rnd.down17, 1, !llfi_index !591
  br i1 %cmp.zero, label %middle.block, label %vector.body, !llfi_index !592

vector.body:                                      ; preds = %vector.body, %.preheader.lr.ph.split.us
  %index = phi i64 [ %index.next, %vector.body ], [ 1, %.preheader.lr.ph.split.us ], !llfi_index !593
  %9 = getelementptr inbounds float* %l2, i64 %index, !llfi_index !594
  %10 = bitcast float* %9 to <4 x float>*, !llfi_index !595
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <4 x float>* %10, align 4, !llfi_index !596
  %.sum = add i64 %index, 4, !llfi_index !597
  %11 = getelementptr float* %l2, i64 %.sum, !llfi_index !598
  %12 = bitcast float* %11 to <4 x float>*, !llfi_index !599
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <4 x float>* %12, align 4, !llfi_index !600
  %index.next = add i64 %index, 8, !llfi_index !601
  %13 = icmp eq i64 %index.next, %end.idx.rnd.down17, !llfi_index !602
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !603, !llfi_index !604

middle.block:                                     ; preds = %vector.body, %.preheader.lr.ph.split.us
  %resume.val = phi i64 [ 1, %.preheader.lr.ph.split.us ], [ %end.idx.rnd.down17, %vector.body ], !llfi_index !605
  %cmp.n = icmp eq i64 %end.idx, %resume.val, !llfi_index !606
  br i1 %cmp.n, label %._crit_edge4, label %.preheader.us, !llfi_index !607

.preheader.us:                                    ; preds = %.preheader.us, %middle.block
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %.preheader.us ], [ %resume.val, %middle.block ], !llfi_index !608
  %14 = getelementptr inbounds float* %l2, i64 %indvars.iv9, !llfi_index !609
  store float 5.000000e-01, float* %14, align 4, !tbaa !81, !llfi_index !610
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !llfi_index !611
  %lftr.wideiv11 = trunc i64 %indvars.iv.next10 to i32, !llfi_index !612
  %exitcond12 = icmp eq i32 %lftr.wideiv11, %5, !llfi_index !613
  br i1 %exitcond12, label %._crit_edge4, label %.preheader.us, !llvm.loop !614, !llfi_index !615

.lr.ph:                                           ; preds = %._crit_edge, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %._crit_edge ], [ 1, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge ], !llfi_index !616
  br label %15, !llfi_index !617

; <label>:15                                      ; preds = %15, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ 0, %.lr.ph ], !llfi_index !618
  %sum.01 = phi float [ %23, %15 ], [ 0.000000e+00, %.lr.ph ], !llfi_index !619
  %16 = getelementptr inbounds float** %conn, i64 %indvars.iv, !llfi_index !620
  %17 = load float** %16, align 8, !tbaa !55, !llfi_index !621
  %18 = getelementptr inbounds float* %17, i64 %indvars.iv5, !llfi_index !622
  %19 = load float* %18, align 4, !tbaa !81, !llfi_index !623
  %20 = getelementptr inbounds float* %l1, i64 %indvars.iv, !llfi_index !624
  %21 = load float* %20, align 4, !tbaa !81, !llfi_index !625
  %22 = fmul float %19, %21, !llfi_index !626
  %23 = fadd float %sum.01, %22, !llfi_index !627
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !628
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !629
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !llfi_index !630
  br i1 %exitcond, label %._crit_edge, label %15, !llfi_index !631

._crit_edge:                                      ; preds = %15
  %24 = fsub float -0.000000e+00, %23, !llfi_index !632
  %25 = fpext float %24 to double, !llfi_index !633
  %26 = tail call double @exp(double %25) #3, !llfi_index !634
  %27 = fadd double %26, 1.000000e+00, !llfi_index !635
  %28 = fdiv double 1.000000e+00, %27, !llfi_index !636
  %29 = fptrunc double %28 to float, !llfi_index !637
  %30 = getelementptr inbounds float* %l2, i64 %indvars.iv5, !llfi_index !638
  store float %29, float* %30, align 4, !tbaa !81, !llfi_index !639
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !llfi_index !640
  %lftr.wideiv7 = trunc i64 %indvars.iv.next6 to i32, !llfi_index !641
  %exitcond8 = icmp eq i32 %lftr.wideiv7, %4, !llfi_index !642
  br i1 %exitcond8, label %._crit_edge4, label %.lr.ph, !llfi_index !643

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader.us, %middle.block, %0
  ret void, !llfi_index !644
}

declare void @omp_set_num_threads(i32) #2

; Function Attrs: nounwind uwtable
define void @bpnn_output_error(float* nocapture %delta, float* nocapture readonly %target, float* nocapture readonly %output, i32 %nj, float* nocapture %err) #0 {
  %1 = icmp slt i32 %nj, 1, !llfi_index !645
  br i1 %1, label %._crit_edge, label %.lr.ph, !llfi_index !646

.lr.ph:                                           ; preds = %0
  %2 = add i32 %nj, 1, !llfi_index !647
  br label %3, !llfi_index !648

; <label>:3                                       ; preds = %19, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ 1, %.lr.ph ], !llfi_index !649
  %errsum.02 = phi float [ %21, %19 ], [ 0.000000e+00, %.lr.ph ], !llfi_index !650
  %4 = getelementptr inbounds float* %output, i64 %indvars.iv, !llfi_index !651
  %5 = load float* %4, align 4, !tbaa !81, !llfi_index !652
  %6 = getelementptr inbounds float* %target, i64 %indvars.iv, !llfi_index !653
  %7 = load float* %6, align 4, !tbaa !81, !llfi_index !654
  %8 = fpext float %5 to double, !llfi_index !655
  %9 = fsub double 1.000000e+00, %8, !llfi_index !656
  %10 = fmul double %8, %9, !llfi_index !657
  %11 = fsub float %7, %5, !llfi_index !658
  %12 = fpext float %11 to double, !llfi_index !659
  %13 = fmul double %10, %12, !llfi_index !660
  %14 = fptrunc double %13 to float, !llfi_index !661
  %15 = getelementptr inbounds float* %delta, i64 %indvars.iv, !llfi_index !662
  store float %14, float* %15, align 4, !tbaa !81, !llfi_index !663
  %16 = fcmp ogt float %14, 0.000000e+00, !llfi_index !664
  br i1 %16, label %19, label %17, !llfi_index !665

; <label>:17                                      ; preds = %3
  %18 = fsub float -0.000000e+00, %14, !llfi_index !666
  br label %19, !llfi_index !667

; <label>:19                                      ; preds = %17, %3
  %20 = phi float [ %18, %17 ], [ %14, %3 ], !llfi_index !668
  %21 = fadd float %errsum.02, %20, !llfi_index !669
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !670
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !671
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !llfi_index !672
  br i1 %exitcond, label %._crit_edge, label %3, !llfi_index !673

._crit_edge:                                      ; preds = %19, %0
  %errsum.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %21, %19 ], !llfi_index !674
  store float %errsum.0.lcssa, float* %err, align 4, !tbaa !81, !llfi_index !675
  ret void, !llfi_index !676
}

; Function Attrs: nounwind uwtable
define void @bpnn_hidden_error(float* nocapture %delta_h, i32 %nh, float* nocapture readonly %delta_o, i32 %no, float** nocapture readonly %who, float* nocapture readonly %hidden, float* nocapture %err) #0 {
  %1 = icmp slt i32 %nh, 1, !llfi_index !677
  br i1 %1, label %._crit_edge7, label %.lr.ph6, !llfi_index !678

.lr.ph6:                                          ; preds = %0
  %2 = icmp slt i32 %no, 1, !llfi_index !679
  br i1 %2, label %.lr.ph6.split.us, label %.lr.ph6..lr.ph6.split_crit_edge, !llfi_index !680

.lr.ph6..lr.ph6.split_crit_edge:                  ; preds = %.lr.ph6
  %3 = add i32 %no, 1, !llfi_index !681
  %4 = add i32 %nh, 1, !llfi_index !682
  br label %.lr.ph, !llfi_index !683

.lr.ph6.split.us:                                 ; preds = %.lr.ph6
  %5 = add i32 %nh, 1, !llfi_index !684
  br label %6, !llfi_index !685

; <label>:6                                       ; preds = %18, %.lr.ph6.split.us
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %18 ], [ 1, %.lr.ph6.split.us ], !llfi_index !686
  %errsum.04.us = phi float [ %20, %18 ], [ 0.000000e+00, %.lr.ph6.split.us ], !llfi_index !687
  %7 = getelementptr inbounds float* %hidden, i64 %indvars.iv15, !llfi_index !688
  %8 = load float* %7, align 4, !tbaa !81, !llfi_index !689
  %9 = fpext float %8 to double, !llfi_index !690
  %10 = fsub double 1.000000e+00, %9, !llfi_index !691
  %11 = fmul double %9, %10, !llfi_index !692
  %12 = fmul double %11, 0.000000e+00, !llfi_index !693
  %13 = fptrunc double %12 to float, !llfi_index !694
  %14 = getelementptr inbounds float* %delta_h, i64 %indvars.iv15, !llfi_index !695
  store float %13, float* %14, align 4, !tbaa !81, !llfi_index !696
  %15 = fcmp ogt float %13, 0.000000e+00, !llfi_index !697
  br i1 %15, label %18, label %16, !llfi_index !698

; <label>:16                                      ; preds = %6
  %17 = fsub float -0.000000e+00, %13, !llfi_index !699
  br label %18, !llfi_index !700

; <label>:18                                      ; preds = %16, %6
  %19 = phi float [ %17, %16 ], [ %13, %6 ], !llfi_index !701
  %20 = fadd float %errsum.04.us, %19, !llfi_index !702
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !llfi_index !703
  %lftr.wideiv17 = trunc i64 %indvars.iv.next16 to i32, !llfi_index !704
  %exitcond18 = icmp eq i32 %lftr.wideiv17, %5, !llfi_index !705
  br i1 %exitcond18, label %._crit_edge7, label %6, !llfi_index !706

.lr.ph:                                           ; preds = %42, %.lr.ph6..lr.ph6.split_crit_edge
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %42 ], [ 1, %.lr.ph6..lr.ph6.split_crit_edge ], !llfi_index !707
  %errsum.04 = phi float [ %44, %42 ], [ 0.000000e+00, %.lr.ph6..lr.ph6.split_crit_edge ], !llfi_index !708
  %21 = getelementptr inbounds float* %hidden, i64 %indvars.iv10, !llfi_index !709
  %22 = load float* %21, align 4, !tbaa !81, !llfi_index !710
  %23 = getelementptr inbounds float** %who, i64 %indvars.iv10, !llfi_index !711
  %24 = load float** %23, align 8, !tbaa !55, !llfi_index !712
  br label %25, !llfi_index !713

; <label>:25                                      ; preds = %25, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %25 ], [ 1, %.lr.ph ], !llfi_index !714
  %sum.02 = phi float [ %31, %25 ], [ 0.000000e+00, %.lr.ph ], !llfi_index !715
  %26 = getelementptr inbounds float* %delta_o, i64 %indvars.iv, !llfi_index !716
  %27 = load float* %26, align 4, !tbaa !81, !llfi_index !717
  %28 = getelementptr inbounds float* %24, i64 %indvars.iv, !llfi_index !718
  %29 = load float* %28, align 4, !tbaa !81, !llfi_index !719
  %30 = fmul float %27, %29, !llfi_index !720
  %31 = fadd float %sum.02, %30, !llfi_index !721
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !722
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !723
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !llfi_index !724
  br i1 %exitcond, label %32, label %25, !llfi_index !725

; <label>:32                                      ; preds = %25
  %phitmp = fpext float %31 to double, !llfi_index !726
  %33 = fpext float %22 to double, !llfi_index !727
  %34 = fsub double 1.000000e+00, %33, !llfi_index !728
  %35 = fmul double %33, %34, !llfi_index !729
  %36 = fmul double %35, %phitmp, !llfi_index !730
  %37 = fptrunc double %36 to float, !llfi_index !731
  %38 = getelementptr inbounds float* %delta_h, i64 %indvars.iv10, !llfi_index !732
  store float %37, float* %38, align 4, !tbaa !81, !llfi_index !733
  %39 = fcmp ogt float %37, 0.000000e+00, !llfi_index !734
  br i1 %39, label %42, label %40, !llfi_index !735

; <label>:40                                      ; preds = %32
  %41 = fsub float -0.000000e+00, %37, !llfi_index !736
  br label %42, !llfi_index !737

; <label>:42                                      ; preds = %40, %32
  %43 = phi float [ %41, %40 ], [ %37, %32 ], !llfi_index !738
  %44 = fadd float %errsum.04, %43, !llfi_index !739
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !llfi_index !740
  %lftr.wideiv12 = trunc i64 %indvars.iv.next11 to i32, !llfi_index !741
  %exitcond13 = icmp eq i32 %lftr.wideiv12, %4, !llfi_index !742
  br i1 %exitcond13, label %._crit_edge7, label %.lr.ph, !llfi_index !743

._crit_edge7:                                     ; preds = %42, %18, %0
  %errsum.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %20, %18 ], [ %44, %42 ], !llfi_index !744
  store float %errsum.0.lcssa, float* %err, align 4, !tbaa !81, !llfi_index !745
  ret void, !llfi_index !746
}

; Function Attrs: nounwind uwtable
define void @bpnn_adjust_weights(float* nocapture readonly %delta, i32 %ndelta, float* nocapture %ly, i32 %nly, float** nocapture readonly %w, float** nocapture readonly %oldw) #0 {
  store float 1.000000e+00, float* %ly, align 4, !tbaa !81, !llfi_index !747
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !748
  %1 = icmp slt i32 %ndelta, 1, !llfi_index !749
  br i1 %1, label %._crit_edge3, label %.preheader.lr.ph, !llfi_index !750

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp slt i32 %nly, 0, !llfi_index !751
  %3 = add i32 %nly, 1, !llfi_index !752
  %4 = add i32 %ndelta, 1, !llfi_index !753
  br label %.preheader, !llfi_index !754

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %._crit_edge ], [ 1, %.preheader.lr.ph ], !llfi_index !755
  br i1 %2, label %._crit_edge, label %.lr.ph, !llfi_index !756

.lr.ph:                                           ; preds = %.preheader
  %5 = getelementptr inbounds float* %delta, i64 %indvars.iv4, !llfi_index !757
  br label %6, !llfi_index !758

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %6 ], [ 0, %.lr.ph ], !llfi_index !759
  %7 = load float* %5, align 4, !tbaa !81, !llfi_index !760
  %8 = fpext float %7 to double, !llfi_index !761
  %9 = fmul double %8, 3.000000e-01, !llfi_index !762
  %10 = getelementptr inbounds float* %ly, i64 %indvars.iv, !llfi_index !763
  %11 = load float* %10, align 4, !tbaa !81, !llfi_index !764
  %12 = fpext float %11 to double, !llfi_index !765
  %13 = fmul double %9, %12, !llfi_index !766
  %14 = getelementptr inbounds float** %oldw, i64 %indvars.iv, !llfi_index !767
  %15 = load float** %14, align 8, !tbaa !55, !llfi_index !768
  %16 = getelementptr inbounds float* %15, i64 %indvars.iv4, !llfi_index !769
  %17 = load float* %16, align 4, !tbaa !81, !llfi_index !770
  %18 = fpext float %17 to double, !llfi_index !771
  %19 = fmul double %18, 3.000000e-01, !llfi_index !772
  %20 = fadd double %13, %19, !llfi_index !773
  %21 = fptrunc double %20 to float, !llfi_index !774
  %22 = getelementptr inbounds float** %w, i64 %indvars.iv, !llfi_index !775
  %23 = load float** %22, align 8, !tbaa !55, !llfi_index !776
  %24 = getelementptr inbounds float* %23, i64 %indvars.iv4, !llfi_index !777
  %25 = load float* %24, align 4, !tbaa !81, !llfi_index !778
  %26 = fadd float %25, %21, !llfi_index !779
  store float %26, float* %24, align 4, !tbaa !81, !llfi_index !780
  store float %21, float* %16, align 4, !tbaa !81, !llfi_index !781
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !782
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !783
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !llfi_index !784
  br i1 %exitcond, label %._crit_edge, label %6, !llfi_index !785

._crit_edge:                                      ; preds = %6, %.preheader
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !llfi_index !786
  %lftr.wideiv6 = trunc i64 %indvars.iv.next5 to i32, !llfi_index !787
  %exitcond7 = icmp eq i32 %lftr.wideiv6, %4, !llfi_index !788
  br i1 %exitcond7, label %._crit_edge3, label %.preheader, !llfi_index !789

._crit_edge3:                                     ; preds = %._crit_edge, %0
  ret void, !llfi_index !790
}

; Function Attrs: nounwind uwtable
define void @bpnn_feedforward(%struct.BPNN* nocapture readonly %net) #0 {
  %1 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 0, !llfi_index !791
  %2 = load i32* %1, align 4, !tbaa !156, !llfi_index !792
  %3 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 1, !llfi_index !793
  %4 = load i32* %3, align 4, !tbaa !162, !llfi_index !794
  %5 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 2, !llfi_index !795
  %6 = load i32* %5, align 4, !tbaa !166, !llfi_index !796
  %7 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 3, !llfi_index !797
  %8 = load float** %7, align 8, !tbaa !181, !llfi_index !798
  %9 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 4, !llfi_index !799
  %10 = load float** %9, align 8, !tbaa !196, !llfi_index !800
  %11 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 9, !llfi_index !801
  %12 = load float*** %11, align 8, !tbaa !277, !llfi_index !802
  store float 1.000000e+00, float* %8, align 4, !tbaa !81, !llfi_index !803
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !804
  %13 = icmp slt i32 %4, 1, !llfi_index !805
  br i1 %13, label %bpnn_layerforward.exit, label %.preheader.lr.ph.i, !llfi_index !806

.preheader.lr.ph.i:                               ; preds = %0
  %14 = icmp slt i32 %2, 0, !llfi_index !807
  br i1 %14, label %.preheader.lr.ph.split.us.i, label %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i, !llfi_index !808

.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i: ; preds = %.preheader.lr.ph.i
  %15 = add i32 %2, 1, !llfi_index !809
  %16 = add i32 %4, 1, !llfi_index !810
  br label %.lr.ph.i, !llfi_index !811

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %17 = add i32 %4, 1, !llfi_index !812
  %18 = add i32 %4, -1, !llfi_index !813
  %19 = zext i32 %18 to i64, !llfi_index !814
  %20 = add i64 %19, 1, !llfi_index !815
  %end.idx46 = add i64 %19, 2, !llfi_index !816
  %n.vec48 = and i64 %20, 8589934584, !llfi_index !817
  %end.idx.rnd.down4962 = or i64 %n.vec48, 1, !llfi_index !818
  %cmp.zero50 = icmp eq i64 %end.idx.rnd.down4962, 1, !llfi_index !819
  br i1 %cmp.zero50, label %middle.block43, label %vector.body42, !llfi_index !820

vector.body42:                                    ; preds = %vector.body42, %.preheader.lr.ph.split.us.i
  %index45 = phi i64 [ %index.next54, %vector.body42 ], [ 1, %.preheader.lr.ph.split.us.i ], !llfi_index !821
  %21 = getelementptr inbounds float* %10, i64 %index45, !llfi_index !822
  %22 = bitcast float* %21 to <4 x float>*, !llfi_index !823
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <4 x float>* %22, align 4, !llfi_index !824
  %.sum63 = add i64 %index45, 4, !llfi_index !825
  %23 = getelementptr float* %10, i64 %.sum63, !llfi_index !826
  %24 = bitcast float* %23 to <4 x float>*, !llfi_index !827
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <4 x float>* %24, align 4, !llfi_index !828
  %index.next54 = add i64 %index45, 8, !llfi_index !829
  %25 = icmp eq i64 %index.next54, %end.idx.rnd.down4962, !llfi_index !830
  br i1 %25, label %middle.block43, label %vector.body42, !llvm.loop !831, !llfi_index !832

middle.block43:                                   ; preds = %vector.body42, %.preheader.lr.ph.split.us.i
  %resume.val51 = phi i64 [ 1, %.preheader.lr.ph.split.us.i ], [ %end.idx.rnd.down4962, %vector.body42 ], !llfi_index !833
  %cmp.n53 = icmp eq i64 %end.idx46, %resume.val51, !llfi_index !834
  br i1 %cmp.n53, label %bpnn_layerforward.exit, label %.preheader.us.i, !llfi_index !835

.preheader.us.i:                                  ; preds = %.preheader.us.i, %middle.block43
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i, %.preheader.us.i ], [ %resume.val51, %middle.block43 ], !llfi_index !836
  %26 = getelementptr inbounds float* %10, i64 %indvars.iv9.i, !llfi_index !837
  store float 5.000000e-01, float* %26, align 4, !tbaa !81, !llfi_index !838
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv9.i, 1, !llfi_index !839
  %lftr.wideiv28 = trunc i64 %indvars.iv.next10.i to i32, !llfi_index !840
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %17, !llfi_index !841
  br i1 %exitcond29, label %bpnn_layerforward.exit, label %.preheader.us.i, !llvm.loop !842, !llfi_index !843

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i
  %indvars.iv5.i = phi i64 [ %indvars.iv.next6.i, %._crit_edge.i ], [ 1, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i ], !llfi_index !844
  br label %27, !llfi_index !845

; <label>:27                                      ; preds = %27, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %27 ], [ 0, %.lr.ph.i ], !llfi_index !846
  %sum.01.i = phi float [ %35, %27 ], [ 0.000000e+00, %.lr.ph.i ], !llfi_index !847
  %28 = getelementptr inbounds float** %12, i64 %indvars.iv.i, !llfi_index !848
  %29 = load float** %28, align 8, !tbaa !55, !llfi_index !849
  %30 = getelementptr inbounds float* %29, i64 %indvars.iv5.i, !llfi_index !850
  %31 = load float* %30, align 4, !tbaa !81, !llfi_index !851
  %32 = getelementptr inbounds float* %8, i64 %indvars.iv.i, !llfi_index !852
  %33 = load float* %32, align 4, !tbaa !81, !llfi_index !853
  %34 = fmul float %31, %33, !llfi_index !854
  %35 = fadd float %sum.01.i, %34, !llfi_index !855
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !llfi_index !856
  %lftr.wideiv31 = trunc i64 %indvars.iv.next.i to i32, !llfi_index !857
  %exitcond32 = icmp eq i32 %lftr.wideiv31, %15, !llfi_index !858
  br i1 %exitcond32, label %._crit_edge.i, label %27, !llfi_index !859

._crit_edge.i:                                    ; preds = %27
  %36 = fsub float -0.000000e+00, %35, !llfi_index !860
  %37 = fpext float %36 to double, !llfi_index !861
  %38 = tail call double @exp(double %37) #3, !llfi_index !862
  %39 = fadd double %38, 1.000000e+00, !llfi_index !863
  %40 = fdiv double 1.000000e+00, %39, !llfi_index !864
  %41 = fptrunc double %40 to float, !llfi_index !865
  %42 = getelementptr inbounds float* %10, i64 %indvars.iv5.i, !llfi_index !866
  store float %41, float* %42, align 4, !tbaa !81, !llfi_index !867
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1, !llfi_index !868
  %lftr.wideiv33 = trunc i64 %indvars.iv.next6.i to i32, !llfi_index !869
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %16, !llfi_index !870
  br i1 %exitcond34, label %bpnn_layerforward.exit, label %.lr.ph.i, !llfi_index !871

bpnn_layerforward.exit:                           ; preds = %._crit_edge.i, %.preheader.us.i, %middle.block43, %0
  %43 = load float** %9, align 8, !tbaa !196, !llfi_index !872
  %44 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 5, !llfi_index !873
  %45 = load float** %44, align 8, !tbaa !211, !llfi_index !874
  %46 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 10, !llfi_index !875
  %47 = load float*** %46, align 8, !tbaa !307, !llfi_index !876
  store float 1.000000e+00, float* %43, align 4, !tbaa !81, !llfi_index !877
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !878
  %48 = icmp slt i32 %6, 1, !llfi_index !879
  br i1 %48, label %bpnn_layerforward.exit20, label %.preheader.lr.ph.i1, !llfi_index !880

.preheader.lr.ph.i1:                              ; preds = %bpnn_layerforward.exit
  %49 = icmp slt i32 %4, 0, !llfi_index !881
  br i1 %49, label %.preheader.lr.ph.split.us.i3, label %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i2, !llfi_index !882

.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i2: ; preds = %.preheader.lr.ph.i1
  %50 = add i32 %4, 1, !llfi_index !883
  %51 = add i32 %6, 1, !llfi_index !884
  br label %.lr.ph.i10, !llfi_index !885

.preheader.lr.ph.split.us.i3:                     ; preds = %.preheader.lr.ph.i1
  %52 = add i32 %6, 1, !llfi_index !886
  %53 = add i32 %6, -1, !llfi_index !887
  %54 = zext i32 %53 to i64, !llfi_index !888
  %55 = add i64 %54, 1, !llfi_index !889
  %end.idx = add i64 %54, 2, !llfi_index !890
  %n.vec = and i64 %55, 8589934584, !llfi_index !891
  %end.idx.rnd.down61 = or i64 %n.vec, 1, !llfi_index !892
  %cmp.zero = icmp eq i64 %end.idx.rnd.down61, 1, !llfi_index !893
  br i1 %cmp.zero, label %middle.block, label %vector.body, !llfi_index !894

vector.body:                                      ; preds = %vector.body, %.preheader.lr.ph.split.us.i3
  %index = phi i64 [ %index.next, %vector.body ], [ 1, %.preheader.lr.ph.split.us.i3 ], !llfi_index !895
  %56 = getelementptr inbounds float* %45, i64 %index, !llfi_index !896
  %57 = bitcast float* %56 to <4 x float>*, !llfi_index !897
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <4 x float>* %57, align 4, !llfi_index !898
  %.sum = add i64 %index, 4, !llfi_index !899
  %58 = getelementptr float* %45, i64 %.sum, !llfi_index !900
  %59 = bitcast float* %58 to <4 x float>*, !llfi_index !901
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <4 x float>* %59, align 4, !llfi_index !902
  %index.next = add i64 %index, 8, !llfi_index !903
  %60 = icmp eq i64 %index.next, %end.idx.rnd.down61, !llfi_index !904
  br i1 %60, label %middle.block, label %vector.body, !llvm.loop !905, !llfi_index !906

middle.block:                                     ; preds = %vector.body, %.preheader.lr.ph.split.us.i3
  %resume.val = phi i64 [ 1, %.preheader.lr.ph.split.us.i3 ], [ %end.idx.rnd.down61, %vector.body ], !llfi_index !907
  %cmp.n = icmp eq i64 %end.idx, %resume.val, !llfi_index !908
  br i1 %cmp.n, label %bpnn_layerforward.exit20, label %.preheader.us.i8, !llfi_index !909

.preheader.us.i8:                                 ; preds = %.preheader.us.i8, %middle.block
  %indvars.iv9.i4 = phi i64 [ %indvars.iv.next10.i5, %.preheader.us.i8 ], [ %resume.val, %middle.block ], !llfi_index !910
  %61 = getelementptr inbounds float* %45, i64 %indvars.iv9.i4, !llfi_index !911
  store float 5.000000e-01, float* %61, align 4, !tbaa !81, !llfi_index !912
  %indvars.iv.next10.i5 = add nuw nsw i64 %indvars.iv9.i4, 1, !llfi_index !913
  %lftr.wideiv = trunc i64 %indvars.iv.next10.i5 to i32, !llfi_index !914
  %exitcond = icmp eq i32 %lftr.wideiv, %52, !llfi_index !915
  br i1 %exitcond, label %bpnn_layerforward.exit20, label %.preheader.us.i8, !llvm.loop !916, !llfi_index !917

.lr.ph.i10:                                       ; preds = %._crit_edge.i19, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i2
  %indvars.iv5.i9 = phi i64 [ %indvars.iv.next6.i16, %._crit_edge.i19 ], [ 1, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i2 ], !llfi_index !918
  br label %62, !llfi_index !919

; <label>:62                                      ; preds = %62, %.lr.ph.i10
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i13, %62 ], [ 0, %.lr.ph.i10 ], !llfi_index !920
  %sum.01.i12 = phi float [ %70, %62 ], [ 0.000000e+00, %.lr.ph.i10 ], !llfi_index !921
  %63 = getelementptr inbounds float** %47, i64 %indvars.iv.i11, !llfi_index !922
  %64 = load float** %63, align 8, !tbaa !55, !llfi_index !923
  %65 = getelementptr inbounds float* %64, i64 %indvars.iv5.i9, !llfi_index !924
  %66 = load float* %65, align 4, !tbaa !81, !llfi_index !925
  %67 = getelementptr inbounds float* %43, i64 %indvars.iv.i11, !llfi_index !926
  %68 = load float* %67, align 4, !tbaa !81, !llfi_index !927
  %69 = fmul float %66, %68, !llfi_index !928
  %70 = fadd float %sum.01.i12, %69, !llfi_index !929
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i11, 1, !llfi_index !930
  %lftr.wideiv24 = trunc i64 %indvars.iv.next.i13 to i32, !llfi_index !931
  %exitcond25 = icmp eq i32 %lftr.wideiv24, %50, !llfi_index !932
  br i1 %exitcond25, label %._crit_edge.i19, label %62, !llfi_index !933

._crit_edge.i19:                                  ; preds = %62
  %71 = fsub float -0.000000e+00, %70, !llfi_index !934
  %72 = fpext float %71 to double, !llfi_index !935
  %73 = tail call double @exp(double %72) #3, !llfi_index !936
  %74 = fadd double %73, 1.000000e+00, !llfi_index !937
  %75 = fdiv double 1.000000e+00, %74, !llfi_index !938
  %76 = fptrunc double %75 to float, !llfi_index !939
  %77 = getelementptr inbounds float* %45, i64 %indvars.iv5.i9, !llfi_index !940
  store float %76, float* %77, align 4, !tbaa !81, !llfi_index !941
  %indvars.iv.next6.i16 = add nuw nsw i64 %indvars.iv5.i9, 1, !llfi_index !942
  %lftr.wideiv26 = trunc i64 %indvars.iv.next6.i16 to i32, !llfi_index !943
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %51, !llfi_index !944
  br i1 %exitcond27, label %bpnn_layerforward.exit20, label %.lr.ph.i10, !llfi_index !945

bpnn_layerforward.exit20:                         ; preds = %._crit_edge.i19, %.preheader.us.i8, %middle.block, %bpnn_layerforward.exit
  ret void, !llfi_index !946
}

; Function Attrs: nounwind uwtable
define void @bpnn_train(%struct.BPNN* nocapture readonly %net, float* nocapture %eo, float* nocapture %eh) #0 {
  %1 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 0, !llfi_index !947
  %2 = load i32* %1, align 4, !tbaa !156, !llfi_index !948
  %3 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 1, !llfi_index !949
  %4 = load i32* %3, align 4, !tbaa !162, !llfi_index !950
  %5 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 2, !llfi_index !951
  %6 = load i32* %5, align 4, !tbaa !166, !llfi_index !952
  %7 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 3, !llfi_index !953
  %8 = load float** %7, align 8, !tbaa !181, !llfi_index !954
  %9 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 4, !llfi_index !955
  %10 = load float** %9, align 8, !tbaa !196, !llfi_index !956
  %11 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 9, !llfi_index !957
  %12 = load float*** %11, align 8, !tbaa !277, !llfi_index !958
  store float 1.000000e+00, float* %8, align 4, !tbaa !81, !llfi_index !959
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !960
  %13 = icmp slt i32 %4, 1, !llfi_index !961
  br i1 %13, label %bpnn_layerforward.exit, label %.preheader.lr.ph.i, !llfi_index !962

.preheader.lr.ph.i:                               ; preds = %0
  %14 = icmp slt i32 %2, 0, !llfi_index !963
  br i1 %14, label %.preheader.lr.ph.split.us.i, label %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i, !llfi_index !964

.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i: ; preds = %.preheader.lr.ph.i
  %15 = add i32 %2, 1, !llfi_index !965
  %16 = add i32 %4, 1, !llfi_index !966
  br label %.lr.ph.i, !llfi_index !967

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %17 = add i32 %4, 1, !llfi_index !968
  %18 = add i32 %4, -1, !llfi_index !969
  %19 = zext i32 %18 to i64, !llfi_index !970
  %20 = add i64 %19, 1, !llfi_index !971
  %end.idx108 = add i64 %19, 2, !llfi_index !972
  %n.vec110 = and i64 %20, 8589934584, !llfi_index !973
  %end.idx.rnd.down111124 = or i64 %n.vec110, 1, !llfi_index !974
  %cmp.zero112 = icmp eq i64 %end.idx.rnd.down111124, 1, !llfi_index !975
  br i1 %cmp.zero112, label %middle.block105, label %vector.body104, !llfi_index !976

vector.body104:                                   ; preds = %vector.body104, %.preheader.lr.ph.split.us.i
  %index107 = phi i64 [ %index.next116, %vector.body104 ], [ 1, %.preheader.lr.ph.split.us.i ], !llfi_index !977
  %21 = getelementptr inbounds float* %10, i64 %index107, !llfi_index !978
  %22 = bitcast float* %21 to <4 x float>*, !llfi_index !979
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <4 x float>* %22, align 4, !llfi_index !980
  %.sum125 = add i64 %index107, 4, !llfi_index !981
  %23 = getelementptr float* %10, i64 %.sum125, !llfi_index !982
  %24 = bitcast float* %23 to <4 x float>*, !llfi_index !983
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <4 x float>* %24, align 4, !llfi_index !984
  %index.next116 = add i64 %index107, 8, !llfi_index !985
  %25 = icmp eq i64 %index.next116, %end.idx.rnd.down111124, !llfi_index !986
  br i1 %25, label %middle.block105, label %vector.body104, !llvm.loop !987, !llfi_index !988

middle.block105:                                  ; preds = %vector.body104, %.preheader.lr.ph.split.us.i
  %resume.val113 = phi i64 [ 1, %.preheader.lr.ph.split.us.i ], [ %end.idx.rnd.down111124, %vector.body104 ], !llfi_index !989
  %cmp.n115 = icmp eq i64 %end.idx108, %resume.val113, !llfi_index !990
  br i1 %cmp.n115, label %bpnn_layerforward.exit, label %.preheader.us.i, !llfi_index !991

.preheader.us.i:                                  ; preds = %.preheader.us.i, %middle.block105
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i, %.preheader.us.i ], [ %resume.val113, %middle.block105 ], !llfi_index !992
  %26 = getelementptr inbounds float* %10, i64 %indvars.iv9.i, !llfi_index !993
  store float 5.000000e-01, float* %26, align 4, !tbaa !81, !llfi_index !994
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv9.i, 1, !llfi_index !995
  %lftr.wideiv85 = trunc i64 %indvars.iv.next10.i to i32, !llfi_index !996
  %exitcond86 = icmp eq i32 %lftr.wideiv85, %17, !llfi_index !997
  br i1 %exitcond86, label %bpnn_layerforward.exit, label %.preheader.us.i, !llvm.loop !998, !llfi_index !999

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i
  %indvars.iv5.i = phi i64 [ %indvars.iv.next6.i, %._crit_edge.i ], [ 1, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i ], !llfi_index !1000
  br label %27, !llfi_index !1001

; <label>:27                                      ; preds = %27, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %27 ], [ 0, %.lr.ph.i ], !llfi_index !1002
  %sum.01.i = phi float [ %35, %27 ], [ 0.000000e+00, %.lr.ph.i ], !llfi_index !1003
  %28 = getelementptr inbounds float** %12, i64 %indvars.iv.i, !llfi_index !1004
  %29 = load float** %28, align 8, !tbaa !55, !llfi_index !1005
  %30 = getelementptr inbounds float* %29, i64 %indvars.iv5.i, !llfi_index !1006
  %31 = load float* %30, align 4, !tbaa !81, !llfi_index !1007
  %32 = getelementptr inbounds float* %8, i64 %indvars.iv.i, !llfi_index !1008
  %33 = load float* %32, align 4, !tbaa !81, !llfi_index !1009
  %34 = fmul float %31, %33, !llfi_index !1010
  %35 = fadd float %sum.01.i, %34, !llfi_index !1011
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !llfi_index !1012
  %lftr.wideiv88 = trunc i64 %indvars.iv.next.i to i32, !llfi_index !1013
  %exitcond89 = icmp eq i32 %lftr.wideiv88, %15, !llfi_index !1014
  br i1 %exitcond89, label %._crit_edge.i, label %27, !llfi_index !1015

._crit_edge.i:                                    ; preds = %27
  %36 = fsub float -0.000000e+00, %35, !llfi_index !1016
  %37 = fpext float %36 to double, !llfi_index !1017
  %38 = tail call double @exp(double %37) #3, !llfi_index !1018
  %39 = fadd double %38, 1.000000e+00, !llfi_index !1019
  %40 = fdiv double 1.000000e+00, %39, !llfi_index !1020
  %41 = fptrunc double %40 to float, !llfi_index !1021
  %42 = getelementptr inbounds float* %10, i64 %indvars.iv5.i, !llfi_index !1022
  store float %41, float* %42, align 4, !tbaa !81, !llfi_index !1023
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1, !llfi_index !1024
  %lftr.wideiv90 = trunc i64 %indvars.iv.next6.i to i32, !llfi_index !1025
  %exitcond91 = icmp eq i32 %lftr.wideiv90, %16, !llfi_index !1026
  br i1 %exitcond91, label %bpnn_layerforward.exit, label %.lr.ph.i, !llfi_index !1027

bpnn_layerforward.exit:                           ; preds = %._crit_edge.i, %.preheader.us.i, %middle.block105, %0
  %43 = load float** %9, align 8, !tbaa !196, !llfi_index !1028
  %44 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 5, !llfi_index !1029
  %45 = load float** %44, align 8, !tbaa !211, !llfi_index !1030
  %46 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 10, !llfi_index !1031
  %47 = load float*** %46, align 8, !tbaa !307, !llfi_index !1032
  store float 1.000000e+00, float* %43, align 4, !tbaa !81, !llfi_index !1033
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !1034
  %48 = icmp slt i32 %6, 1, !llfi_index !1035
  br i1 %48, label %bpnn_layerforward.exit20.thread, label %.preheader.lr.ph.i1, !llfi_index !1036

bpnn_layerforward.exit20.thread:                  ; preds = %bpnn_layerforward.exit
  %49 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 7, !llfi_index !1037
  %.pre = load float** %49, align 8, !tbaa !235, !llfi_index !1038
  br label %bpnn_output_error.exit, !llfi_index !1039

.preheader.lr.ph.i1:                              ; preds = %bpnn_layerforward.exit
  %50 = icmp slt i32 %4, 0, !llfi_index !1040
  br i1 %50, label %.preheader.lr.ph.split.us.i3, label %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i2, !llfi_index !1041

.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i2: ; preds = %.preheader.lr.ph.i1
  %51 = add i32 %4, 1, !llfi_index !1042
  %52 = add i32 %6, 1, !llfi_index !1043
  br label %.lr.ph.i10, !llfi_index !1044

.preheader.lr.ph.split.us.i3:                     ; preds = %.preheader.lr.ph.i1
  %53 = add i32 %6, 1, !llfi_index !1045
  %54 = add i32 %6, -1, !llfi_index !1046
  %55 = zext i32 %54 to i64, !llfi_index !1047
  %56 = add i64 %55, 1, !llfi_index !1048
  %end.idx = add i64 %55, 2, !llfi_index !1049
  %n.vec = and i64 %56, 8589934584, !llfi_index !1050
  %end.idx.rnd.down123 = or i64 %n.vec, 1, !llfi_index !1051
  %cmp.zero = icmp eq i64 %end.idx.rnd.down123, 1, !llfi_index !1052
  br i1 %cmp.zero, label %middle.block, label %vector.body, !llfi_index !1053

vector.body:                                      ; preds = %vector.body, %.preheader.lr.ph.split.us.i3
  %index = phi i64 [ %index.next, %vector.body ], [ 1, %.preheader.lr.ph.split.us.i3 ], !llfi_index !1054
  %57 = getelementptr inbounds float* %45, i64 %index, !llfi_index !1055
  %58 = bitcast float* %57 to <4 x float>*, !llfi_index !1056
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <4 x float>* %58, align 4, !llfi_index !1057
  %.sum = add i64 %index, 4, !llfi_index !1058
  %59 = getelementptr float* %45, i64 %.sum, !llfi_index !1059
  %60 = bitcast float* %59 to <4 x float>*, !llfi_index !1060
  store <4 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <4 x float>* %60, align 4, !llfi_index !1061
  %index.next = add i64 %index, 8, !llfi_index !1062
  %61 = icmp eq i64 %index.next, %end.idx.rnd.down123, !llfi_index !1063
  br i1 %61, label %middle.block, label %vector.body, !llvm.loop !1064, !llfi_index !1065

middle.block:                                     ; preds = %vector.body, %.preheader.lr.ph.split.us.i3
  %resume.val = phi i64 [ 1, %.preheader.lr.ph.split.us.i3 ], [ %end.idx.rnd.down123, %vector.body ], !llfi_index !1066
  %cmp.n = icmp eq i64 %end.idx, %resume.val, !llfi_index !1067
  br i1 %cmp.n, label %.lr.ph.i21, label %.preheader.us.i8, !llfi_index !1068

.preheader.us.i8:                                 ; preds = %.preheader.us.i8, %middle.block
  %indvars.iv9.i4 = phi i64 [ %indvars.iv.next10.i5, %.preheader.us.i8 ], [ %resume.val, %middle.block ], !llfi_index !1069
  %62 = getelementptr inbounds float* %45, i64 %indvars.iv9.i4, !llfi_index !1070
  store float 5.000000e-01, float* %62, align 4, !tbaa !81, !llfi_index !1071
  %indvars.iv.next10.i5 = add nuw nsw i64 %indvars.iv9.i4, 1, !llfi_index !1072
  %lftr.wideiv78 = trunc i64 %indvars.iv.next10.i5 to i32, !llfi_index !1073
  %exitcond79 = icmp eq i32 %lftr.wideiv78, %53, !llfi_index !1074
  br i1 %exitcond79, label %.lr.ph.i21, label %.preheader.us.i8, !llvm.loop !1075, !llfi_index !1076

.lr.ph.i10:                                       ; preds = %._crit_edge.i19, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i2
  %indvars.iv5.i9 = phi i64 [ %indvars.iv.next6.i16, %._crit_edge.i19 ], [ 1, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i2 ], !llfi_index !1077
  br label %63, !llfi_index !1078

; <label>:63                                      ; preds = %63, %.lr.ph.i10
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i13, %63 ], [ 0, %.lr.ph.i10 ], !llfi_index !1079
  %sum.01.i12 = phi float [ %71, %63 ], [ 0.000000e+00, %.lr.ph.i10 ], !llfi_index !1080
  %64 = getelementptr inbounds float** %47, i64 %indvars.iv.i11, !llfi_index !1081
  %65 = load float** %64, align 8, !tbaa !55, !llfi_index !1082
  %66 = getelementptr inbounds float* %65, i64 %indvars.iv5.i9, !llfi_index !1083
  %67 = load float* %66, align 4, !tbaa !81, !llfi_index !1084
  %68 = getelementptr inbounds float* %43, i64 %indvars.iv.i11, !llfi_index !1085
  %69 = load float* %68, align 4, !tbaa !81, !llfi_index !1086
  %70 = fmul float %67, %69, !llfi_index !1087
  %71 = fadd float %sum.01.i12, %70, !llfi_index !1088
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i11, 1, !llfi_index !1089
  %lftr.wideiv81 = trunc i64 %indvars.iv.next.i13 to i32, !llfi_index !1090
  %exitcond82 = icmp eq i32 %lftr.wideiv81, %51, !llfi_index !1091
  br i1 %exitcond82, label %._crit_edge.i19, label %63, !llfi_index !1092

._crit_edge.i19:                                  ; preds = %63
  %72 = fsub float -0.000000e+00, %71, !llfi_index !1093
  %73 = fpext float %72 to double, !llfi_index !1094
  %74 = tail call double @exp(double %73) #3, !llfi_index !1095
  %75 = fadd double %74, 1.000000e+00, !llfi_index !1096
  %76 = fdiv double 1.000000e+00, %75, !llfi_index !1097
  %77 = fptrunc double %76 to float, !llfi_index !1098
  %78 = getelementptr inbounds float* %45, i64 %indvars.iv5.i9, !llfi_index !1099
  store float %77, float* %78, align 4, !tbaa !81, !llfi_index !1100
  %indvars.iv.next6.i16 = add nuw nsw i64 %indvars.iv5.i9, 1, !llfi_index !1101
  %lftr.wideiv83 = trunc i64 %indvars.iv.next6.i16 to i32, !llfi_index !1102
  %exitcond84 = icmp eq i32 %lftr.wideiv83, %52, !llfi_index !1103
  br i1 %exitcond84, label %.lr.ph.i21, label %.lr.ph.i10, !llfi_index !1104

.lr.ph.i21:                                       ; preds = %._crit_edge.i19, %.preheader.us.i8, %middle.block
  %79 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 7, !llfi_index !1105
  %80 = load float** %79, align 8, !tbaa !235, !llfi_index !1106
  %81 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 8, !llfi_index !1107
  %82 = load float** %81, align 8, !tbaa !247, !llfi_index !1108
  %83 = load float** %44, align 8, !tbaa !211, !llfi_index !1109
  %84 = add i32 %6, 1, !llfi_index !1110
  br label %85, !llfi_index !1111

; <label>:85                                      ; preds = %101, %.lr.ph.i21
  %indvars.iv.i22 = phi i64 [ %indvars.iv.next.i23, %101 ], [ 1, %.lr.ph.i21 ], !llfi_index !1112
  %errsum.02.i = phi float [ %103, %101 ], [ 0.000000e+00, %.lr.ph.i21 ], !llfi_index !1113
  %86 = getelementptr inbounds float* %83, i64 %indvars.iv.i22, !llfi_index !1114
  %87 = load float* %86, align 4, !tbaa !81, !llfi_index !1115
  %88 = getelementptr inbounds float* %82, i64 %indvars.iv.i22, !llfi_index !1116
  %89 = load float* %88, align 4, !tbaa !81, !llfi_index !1117
  %90 = fpext float %87 to double, !llfi_index !1118
  %91 = fsub double 1.000000e+00, %90, !llfi_index !1119
  %92 = fmul double %90, %91, !llfi_index !1120
  %93 = fsub float %89, %87, !llfi_index !1121
  %94 = fpext float %93 to double, !llfi_index !1122
  %95 = fmul double %92, %94, !llfi_index !1123
  %96 = fptrunc double %95 to float, !llfi_index !1124
  %97 = getelementptr inbounds float* %80, i64 %indvars.iv.i22, !llfi_index !1125
  store float %96, float* %97, align 4, !tbaa !81, !llfi_index !1126
  %98 = fcmp ogt float %96, 0.000000e+00, !llfi_index !1127
  br i1 %98, label %101, label %99, !llfi_index !1128

; <label>:99                                      ; preds = %85
  %100 = fsub float -0.000000e+00, %96, !llfi_index !1129
  br label %101, !llfi_index !1130

; <label>:101                                     ; preds = %99, %85
  %102 = phi float [ %100, %99 ], [ %96, %85 ], !llfi_index !1131
  %103 = fadd float %errsum.02.i, %102, !llfi_index !1132
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i22, 1, !llfi_index !1133
  %lftr.wideiv76 = trunc i64 %indvars.iv.next.i23 to i32, !llfi_index !1134
  %exitcond77 = icmp eq i32 %lftr.wideiv76, %84, !llfi_index !1135
  br i1 %exitcond77, label %bpnn_output_error.exit, label %85, !llfi_index !1136

bpnn_output_error.exit:                           ; preds = %101, %bpnn_layerforward.exit20.thread
  %104 = phi float* [ %.pre, %bpnn_layerforward.exit20.thread ], [ %80, %101 ], !llfi_index !1137
  %errsum.0.lcssa.i = phi float [ 0.000000e+00, %bpnn_layerforward.exit20.thread ], [ %103, %101 ], !llfi_index !1138
  %105 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 6, !llfi_index !1139
  %106 = load float** %105, align 8, !tbaa !223, !llfi_index !1140
  %107 = load float*** %46, align 8, !tbaa !307, !llfi_index !1141
  %108 = load float** %9, align 8, !tbaa !196, !llfi_index !1142
  br i1 %13, label %bpnn_hidden_error.exit, label %.lr.ph6.i, !llfi_index !1143

.lr.ph6.i:                                        ; preds = %bpnn_output_error.exit
  br i1 %48, label %.lr.ph6.split.us.i, label %.lr.ph6..lr.ph6.split_crit_edge.i, !llfi_index !1144

.lr.ph6..lr.ph6.split_crit_edge.i:                ; preds = %.lr.ph6.i
  %109 = add i32 %6, 1, !llfi_index !1145
  %110 = add i32 %4, 1, !llfi_index !1146
  br label %.lr.ph.i27, !llfi_index !1147

.lr.ph6.split.us.i:                               ; preds = %.lr.ph6.i
  %111 = add i32 %4, 1, !llfi_index !1148
  br label %112, !llfi_index !1149

; <label>:112                                     ; preds = %124, %.lr.ph6.split.us.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %124 ], [ 1, %.lr.ph6.split.us.i ], !llfi_index !1150
  %errsum.04.us.i = phi float [ %126, %124 ], [ 0.000000e+00, %.lr.ph6.split.us.i ], !llfi_index !1151
  %113 = getelementptr inbounds float* %108, i64 %indvars.iv15.i, !llfi_index !1152
  %114 = load float* %113, align 4, !tbaa !81, !llfi_index !1153
  %115 = fpext float %114 to double, !llfi_index !1154
  %116 = fsub double 1.000000e+00, %115, !llfi_index !1155
  %117 = fmul double %115, %116, !llfi_index !1156
  %118 = fmul double %117, 0.000000e+00, !llfi_index !1157
  %119 = fptrunc double %118 to float, !llfi_index !1158
  %120 = getelementptr inbounds float* %106, i64 %indvars.iv15.i, !llfi_index !1159
  store float %119, float* %120, align 4, !tbaa !81, !llfi_index !1160
  %121 = fcmp ogt float %119, 0.000000e+00, !llfi_index !1161
  br i1 %121, label %124, label %122, !llfi_index !1162

; <label>:122                                     ; preds = %112
  %123 = fsub float -0.000000e+00, %119, !llfi_index !1163
  br label %124, !llfi_index !1164

; <label>:124                                     ; preds = %122, %112
  %125 = phi float [ %123, %122 ], [ %119, %112 ], !llfi_index !1165
  %126 = fadd float %errsum.04.us.i, %125, !llfi_index !1166
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1, !llfi_index !1167
  %lftr.wideiv67 = trunc i64 %indvars.iv.next16.i to i32, !llfi_index !1168
  %exitcond68 = icmp eq i32 %lftr.wideiv67, %111, !llfi_index !1169
  br i1 %exitcond68, label %bpnn_hidden_error.exit, label %112, !llfi_index !1170

.lr.ph.i27:                                       ; preds = %148, %.lr.ph6..lr.ph6.split_crit_edge.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %148 ], [ 1, %.lr.ph6..lr.ph6.split_crit_edge.i ], !llfi_index !1171
  %errsum.04.i = phi float [ %150, %148 ], [ 0.000000e+00, %.lr.ph6..lr.ph6.split_crit_edge.i ], !llfi_index !1172
  %127 = getelementptr inbounds float* %108, i64 %indvars.iv10.i, !llfi_index !1173
  %128 = load float* %127, align 4, !tbaa !81, !llfi_index !1174
  %129 = getelementptr inbounds float** %107, i64 %indvars.iv10.i, !llfi_index !1175
  %130 = load float** %129, align 8, !tbaa !55, !llfi_index !1176
  br label %131, !llfi_index !1177

; <label>:131                                     ; preds = %131, %.lr.ph.i27
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i29, %131 ], [ 1, %.lr.ph.i27 ], !llfi_index !1178
  %sum.02.i = phi float [ %137, %131 ], [ 0.000000e+00, %.lr.ph.i27 ], !llfi_index !1179
  %132 = getelementptr inbounds float* %104, i64 %indvars.iv.i28, !llfi_index !1180
  %133 = load float* %132, align 4, !tbaa !81, !llfi_index !1181
  %134 = getelementptr inbounds float* %130, i64 %indvars.iv.i28, !llfi_index !1182
  %135 = load float* %134, align 4, !tbaa !81, !llfi_index !1183
  %136 = fmul float %133, %135, !llfi_index !1184
  %137 = fadd float %sum.02.i, %136, !llfi_index !1185
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i28, 1, !llfi_index !1186
  %lftr.wideiv70 = trunc i64 %indvars.iv.next.i29 to i32, !llfi_index !1187
  %exitcond71 = icmp eq i32 %lftr.wideiv70, %109, !llfi_index !1188
  br i1 %exitcond71, label %138, label %131, !llfi_index !1189

; <label>:138                                     ; preds = %131
  %phitmp.i = fpext float %137 to double, !llfi_index !1190
  %139 = fpext float %128 to double, !llfi_index !1191
  %140 = fsub double 1.000000e+00, %139, !llfi_index !1192
  %141 = fmul double %139, %140, !llfi_index !1193
  %142 = fmul double %141, %phitmp.i, !llfi_index !1194
  %143 = fptrunc double %142 to float, !llfi_index !1195
  %144 = getelementptr inbounds float* %106, i64 %indvars.iv10.i, !llfi_index !1196
  store float %143, float* %144, align 4, !tbaa !81, !llfi_index !1197
  %145 = fcmp ogt float %143, 0.000000e+00, !llfi_index !1198
  br i1 %145, label %148, label %146, !llfi_index !1199

; <label>:146                                     ; preds = %138
  %147 = fsub float -0.000000e+00, %143, !llfi_index !1200
  br label %148, !llfi_index !1201

; <label>:148                                     ; preds = %146, %138
  %149 = phi float [ %147, %146 ], [ %143, %138 ], !llfi_index !1202
  %150 = fadd float %errsum.04.i, %149, !llfi_index !1203
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1, !llfi_index !1204
  %lftr.wideiv73 = trunc i64 %indvars.iv.next11.i to i32, !llfi_index !1205
  %exitcond74 = icmp eq i32 %lftr.wideiv73, %110, !llfi_index !1206
  br i1 %exitcond74, label %bpnn_hidden_error.exit, label %.lr.ph.i27, !llfi_index !1207

bpnn_hidden_error.exit:                           ; preds = %148, %124, %bpnn_output_error.exit
  %errsum.0.lcssa.i32 = phi float [ 0.000000e+00, %bpnn_output_error.exit ], [ %126, %124 ], [ %150, %148 ], !llfi_index !1208
  store float %errsum.0.lcssa.i, float* %eo, align 4, !tbaa !81, !llfi_index !1209
  store float %errsum.0.lcssa.i32, float* %eh, align 4, !tbaa !81, !llfi_index !1210
  %151 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 12, !llfi_index !1211
  %152 = load float*** %151, align 8, !tbaa !363, !llfi_index !1212
  store float 1.000000e+00, float* %108, align 4, !tbaa !81, !llfi_index !1213
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !1214
  br i1 %48, label %bpnn_adjust_weights.exit, label %.preheader.lr.ph.i33, !llfi_index !1215

.preheader.lr.ph.i33:                             ; preds = %bpnn_hidden_error.exit
  %153 = icmp slt i32 %4, 0, !llfi_index !1216
  %154 = add i32 %4, 1, !llfi_index !1217
  %155 = add i32 %6, 1, !llfi_index !1218
  br label %.preheader.i, !llfi_index !1219

.preheader.i:                                     ; preds = %._crit_edge.i39, %.preheader.lr.ph.i33
  %indvars.iv4.i = phi i64 [ %indvars.iv.next5.i, %._crit_edge.i39 ], [ 1, %.preheader.lr.ph.i33 ], !llfi_index !1220
  br i1 %153, label %._crit_edge.i39, label %.lr.ph.i34, !llfi_index !1221

.lr.ph.i34:                                       ; preds = %.preheader.i
  %156 = getelementptr inbounds float* %104, i64 %indvars.iv4.i, !llfi_index !1222
  br label %157, !llfi_index !1223

; <label>:157                                     ; preds = %157, %.lr.ph.i34
  %indvars.iv.i35 = phi i64 [ %indvars.iv.next.i36, %157 ], [ 0, %.lr.ph.i34 ], !llfi_index !1224
  %158 = load float* %156, align 4, !tbaa !81, !llfi_index !1225
  %159 = fpext float %158 to double, !llfi_index !1226
  %160 = fmul double %159, 3.000000e-01, !llfi_index !1227
  %161 = getelementptr inbounds float* %108, i64 %indvars.iv.i35, !llfi_index !1228
  %162 = load float* %161, align 4, !tbaa !81, !llfi_index !1229
  %163 = fpext float %162 to double, !llfi_index !1230
  %164 = fmul double %160, %163, !llfi_index !1231
  %165 = getelementptr inbounds float** %152, i64 %indvars.iv.i35, !llfi_index !1232
  %166 = load float** %165, align 8, !tbaa !55, !llfi_index !1233
  %167 = getelementptr inbounds float* %166, i64 %indvars.iv4.i, !llfi_index !1234
  %168 = load float* %167, align 4, !tbaa !81, !llfi_index !1235
  %169 = fpext float %168 to double, !llfi_index !1236
  %170 = fmul double %169, 3.000000e-01, !llfi_index !1237
  %171 = fadd double %164, %170, !llfi_index !1238
  %172 = fptrunc double %171 to float, !llfi_index !1239
  %173 = getelementptr inbounds float** %107, i64 %indvars.iv.i35, !llfi_index !1240
  %174 = load float** %173, align 8, !tbaa !55, !llfi_index !1241
  %175 = getelementptr inbounds float* %174, i64 %indvars.iv4.i, !llfi_index !1242
  %176 = load float* %175, align 4, !tbaa !81, !llfi_index !1243
  %177 = fadd float %176, %172, !llfi_index !1244
  store float %177, float* %175, align 4, !tbaa !81, !llfi_index !1245
  store float %172, float* %167, align 4, !tbaa !81, !llfi_index !1246
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1, !llfi_index !1247
  %lftr.wideiv63 = trunc i64 %indvars.iv.next.i36 to i32, !llfi_index !1248
  %exitcond64 = icmp eq i32 %lftr.wideiv63, %154, !llfi_index !1249
  br i1 %exitcond64, label %._crit_edge.i39, label %157, !llfi_index !1250

._crit_edge.i39:                                  ; preds = %157, %.preheader.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1, !llfi_index !1251
  %lftr.wideiv65 = trunc i64 %indvars.iv.next5.i to i32, !llfi_index !1252
  %exitcond66 = icmp eq i32 %lftr.wideiv65, %155, !llfi_index !1253
  br i1 %exitcond66, label %bpnn_adjust_weights.exit, label %.preheader.i, !llfi_index !1254

bpnn_adjust_weights.exit:                         ; preds = %._crit_edge.i39, %bpnn_hidden_error.exit
  %178 = load float** %105, align 8, !tbaa !223, !llfi_index !1255
  %179 = load float** %7, align 8, !tbaa !181, !llfi_index !1256
  %180 = load float*** %11, align 8, !tbaa !277, !llfi_index !1257
  %181 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 11, !llfi_index !1258
  %182 = load float*** %181, align 8, !tbaa !335, !llfi_index !1259
  store float 1.000000e+00, float* %179, align 4, !tbaa !81, !llfi_index !1260
  tail call void @omp_set_num_threads(i32 1) #3, !llfi_index !1261
  br i1 %13, label %bpnn_adjust_weights.exit52, label %.preheader.lr.ph.i40, !llfi_index !1262

.preheader.lr.ph.i40:                             ; preds = %bpnn_adjust_weights.exit
  %183 = icmp slt i32 %2, 0, !llfi_index !1263
  %184 = add i32 %2, 1, !llfi_index !1264
  %185 = add i32 %4, 1, !llfi_index !1265
  br label %.preheader.i42, !llfi_index !1266

.preheader.i42:                                   ; preds = %._crit_edge.i51, %.preheader.lr.ph.i40
  %indvars.iv4.i41 = phi i64 [ %indvars.iv.next5.i48, %._crit_edge.i51 ], [ 1, %.preheader.lr.ph.i40 ], !llfi_index !1267
  br i1 %183, label %._crit_edge.i51, label %.lr.ph.i43, !llfi_index !1268

.lr.ph.i43:                                       ; preds = %.preheader.i42
  %186 = getelementptr inbounds float* %178, i64 %indvars.iv4.i41, !llfi_index !1269
  br label %187, !llfi_index !1270

; <label>:187                                     ; preds = %187, %.lr.ph.i43
  %indvars.iv.i44 = phi i64 [ %indvars.iv.next.i45, %187 ], [ 0, %.lr.ph.i43 ], !llfi_index !1271
  %188 = load float* %186, align 4, !tbaa !81, !llfi_index !1272
  %189 = fpext float %188 to double, !llfi_index !1273
  %190 = fmul double %189, 3.000000e-01, !llfi_index !1274
  %191 = getelementptr inbounds float* %179, i64 %indvars.iv.i44, !llfi_index !1275
  %192 = load float* %191, align 4, !tbaa !81, !llfi_index !1276
  %193 = fpext float %192 to double, !llfi_index !1277
  %194 = fmul double %190, %193, !llfi_index !1278
  %195 = getelementptr inbounds float** %182, i64 %indvars.iv.i44, !llfi_index !1279
  %196 = load float** %195, align 8, !tbaa !55, !llfi_index !1280
  %197 = getelementptr inbounds float* %196, i64 %indvars.iv4.i41, !llfi_index !1281
  %198 = load float* %197, align 4, !tbaa !81, !llfi_index !1282
  %199 = fpext float %198 to double, !llfi_index !1283
  %200 = fmul double %199, 3.000000e-01, !llfi_index !1284
  %201 = fadd double %194, %200, !llfi_index !1285
  %202 = fptrunc double %201 to float, !llfi_index !1286
  %203 = getelementptr inbounds float** %180, i64 %indvars.iv.i44, !llfi_index !1287
  %204 = load float** %203, align 8, !tbaa !55, !llfi_index !1288
  %205 = getelementptr inbounds float* %204, i64 %indvars.iv4.i41, !llfi_index !1289
  %206 = load float* %205, align 4, !tbaa !81, !llfi_index !1290
  %207 = fadd float %206, %202, !llfi_index !1291
  store float %207, float* %205, align 4, !tbaa !81, !llfi_index !1292
  store float %202, float* %197, align 4, !tbaa !81, !llfi_index !1293
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i44, 1, !llfi_index !1294
  %lftr.wideiv = trunc i64 %indvars.iv.next.i45 to i32, !llfi_index !1295
  %exitcond = icmp eq i32 %lftr.wideiv, %184, !llfi_index !1296
  br i1 %exitcond, label %._crit_edge.i51, label %187, !llfi_index !1297

._crit_edge.i51:                                  ; preds = %187, %.preheader.i42
  %indvars.iv.next5.i48 = add nuw nsw i64 %indvars.iv4.i41, 1, !llfi_index !1298
  %lftr.wideiv61 = trunc i64 %indvars.iv.next5.i48 to i32, !llfi_index !1299
  %exitcond62 = icmp eq i32 %lftr.wideiv61, %185, !llfi_index !1300
  br i1 %exitcond62, label %bpnn_adjust_weights.exit52, label %.preheader.i42, !llfi_index !1301

bpnn_adjust_weights.exit52:                       ; preds = %._crit_edge.i51, %bpnn_adjust_weights.exit
  ret void, !llfi_index !1302
}

; Function Attrs: nounwind uwtable
define void @bpnn_save(%struct.BPNN* nocapture readonly %net, i8* %filename) #0 {
  %1 = tail call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #3, !llfi_index !1303
  %2 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 0, !llfi_index !1304
  %3 = load i32* %2, align 4, !tbaa !156, !llfi_index !1305
  %4 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 1, !llfi_index !1306
  %5 = load i32* %4, align 4, !tbaa !162, !llfi_index !1307
  %6 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 2, !llfi_index !1308
  %7 = load i32* %6, align 4, !tbaa !166, !llfi_index !1309
  %8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0), i32 %3, i32 %5, i32 %7, i8* %filename) #3, !llfi_index !1310
  %sext = shl i32 %3, 24, !llfi_index !1311
  %chari = ashr exact i32 %sext, 24, !llfi_index !1312
  %fputc = tail call i32 @fputc(i32 %chari, %struct._IO_FILE* %1), !llfi_index !1313
  %sext11 = shl i32 %5, 24, !llfi_index !1314
  %chari6 = ashr exact i32 %sext11, 24, !llfi_index !1315
  %fputc7 = tail call i32 @fputc(i32 %chari6, %struct._IO_FILE* %1), !llfi_index !1316
  %sext12 = shl i32 %7, 24, !llfi_index !1317
  %chari9 = ashr exact i32 %sext12, 24, !llfi_index !1318
  %fputc10 = tail call i32 @fputc(i32 %chari9, %struct._IO_FILE* %1), !llfi_index !1319
  %9 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 9, !llfi_index !1320
  %10 = load float*** %9, align 8, !tbaa !277, !llfi_index !1321
  %11 = add i32 %5, 1, !llfi_index !1322
  %12 = shl i32 %3, 2, !llfi_index !1323
  %13 = add i32 %12, 4, !llfi_index !1324
  %14 = mul i32 %13, %11, !llfi_index !1325
  %15 = zext i32 %14 to i64, !llfi_index !1326
  %16 = tail call noalias i8* @malloc(i64 %15) #3, !llfi_index !1327
  %17 = icmp slt i32 %3, 0, !llfi_index !1328
  br i1 %17, label %._crit_edge32, label %.preheader24.lr.ph, !llfi_index !1329

.preheader24.lr.ph:                               ; preds = %0
  %18 = icmp slt i32 %5, 0, !llfi_index !1330
  %19 = shl i32 %5, 2, !llfi_index !1331
  %20 = add i32 %19, 4, !llfi_index !1332
  %21 = add i32 %3, 1, !llfi_index !1333
  br label %.preheader24, !llfi_index !1334

.preheader24:                                     ; preds = %40, %.preheader24.lr.ph
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %40 ], [ 0, %.preheader24.lr.ph ], !llfi_index !1335
  %memcnt.030 = phi i32 [ %memcnt.1.lcssa, %40 ], [ 0, %.preheader24.lr.ph ], !llfi_index !1336
  br i1 %18, label %40, label %.lr.ph27, !llfi_index !1337

.lr.ph27:                                         ; preds = %.preheader24
  %22 = getelementptr inbounds float** %10, i64 %indvars.iv43, !llfi_index !1338
  %.pre47 = load float** %22, align 8, !tbaa !55, !llfi_index !1339
  br label %23, !llfi_index !1340

; <label>:23                                      ; preds = %23, %.lr.ph27
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %23 ], [ 0, %.lr.ph27 ], !llfi_index !1341
  %memcnt.125 = phi i32 [ %38, %23 ], [ %memcnt.030, %.lr.ph27 ], !llfi_index !1342
  %24 = getelementptr inbounds float* %.pre47, i64 %indvars.iv39, !llfi_index !1343
  %25 = load float* %24, align 4, !tbaa !81, !llfi_index !1344
  %26 = sext i32 %memcnt.125 to i64, !llfi_index !1345
  %27 = getelementptr inbounds i8* %16, i64 %26, !llfi_index !1346
  %28 = bitcast float %25 to i32, !llfi_index !1347
  %trunc48 = trunc i32 %28 to i8, !llfi_index !1348
  %.sum = add i64 %26, 1, !llfi_index !1349
  %29 = getelementptr inbounds i8* %16, i64 %.sum, !llfi_index !1350
  store i8 %trunc48, i8* %27, align 1, !tbaa !1351, !llfi_index !1352
  %30 = lshr i32 %28, 8, !llfi_index !1353
  %31 = trunc i32 %30 to i8, !llfi_index !1354
  %.sum49 = add i64 %26, 2, !llfi_index !1355
  %32 = getelementptr inbounds i8* %16, i64 %.sum49, !llfi_index !1356
  store i8 %31, i8* %29, align 1, !tbaa !1351, !llfi_index !1357
  %33 = lshr i32 %28, 16, !llfi_index !1358
  %34 = trunc i32 %33 to i8, !llfi_index !1359
  %.sum50 = add i64 %26, 3, !llfi_index !1360
  %35 = getelementptr inbounds i8* %16, i64 %.sum50, !llfi_index !1361
  store i8 %34, i8* %32, align 1, !tbaa !1351, !llfi_index !1362
  %36 = lshr i32 %28, 24, !llfi_index !1363
  %37 = trunc i32 %36 to i8, !llfi_index !1364
  store i8 %37, i8* %35, align 1, !tbaa !1351, !llfi_index !1365
  %38 = add i32 %memcnt.125, 4, !llfi_index !1366
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1, !llfi_index !1367
  %lftr.wideiv41 = trunc i64 %indvars.iv.next40 to i32, !llfi_index !1368
  %exitcond42 = icmp eq i32 %lftr.wideiv41, %11, !llfi_index !1369
  br i1 %exitcond42, label %._crit_edge28, label %23, !llfi_index !1370

._crit_edge28:                                    ; preds = %23
  %39 = add i32 %20, %memcnt.030, !llfi_index !1371
  br label %40, !llfi_index !1372

; <label>:40                                      ; preds = %._crit_edge28, %.preheader24
  %memcnt.1.lcssa = phi i32 [ %39, %._crit_edge28 ], [ %memcnt.030, %.preheader24 ], !llfi_index !1373
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1, !llfi_index !1374
  %lftr.wideiv45 = trunc i64 %indvars.iv.next44 to i32, !llfi_index !1375
  %exitcond46 = icmp eq i32 %lftr.wideiv45, %21, !llfi_index !1376
  br i1 %exitcond46, label %._crit_edge32, label %.preheader24, !llfi_index !1377

._crit_edge32:                                    ; preds = %40, %0
  %41 = tail call i64 @fwrite(i8* %16, i64 4, i64 %15, %struct._IO_FILE* %1) #3, !llfi_index !1378
  tail call void @free(i8* %16) #3, !llfi_index !1379
  %42 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 10, !llfi_index !1380
  %43 = load float*** %42, align 8, !tbaa !307, !llfi_index !1381
  %44 = add i32 %7, 1, !llfi_index !1382
  %45 = shl i32 %11, 2, !llfi_index !1383
  %46 = mul i32 %45, %44, !llfi_index !1384
  %47 = zext i32 %46 to i64, !llfi_index !1385
  %48 = tail call noalias i8* @malloc(i64 %47) #3, !llfi_index !1386
  %49 = icmp slt i32 %5, 0, !llfi_index !1387
  br i1 %49, label %._crit_edge20, label %.preheader.lr.ph, !llfi_index !1388

.preheader.lr.ph:                                 ; preds = %._crit_edge32
  %50 = icmp slt i32 %7, 0, !llfi_index !1389
  %51 = shl i32 %7, 2, !llfi_index !1390
  %52 = add i32 %51, 4, !llfi_index !1391
  br label %.preheader, !llfi_index !1392

.preheader:                                       ; preds = %71, %.preheader.lr.ph
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %71 ], [ 0, %.preheader.lr.ph ], !llfi_index !1393
  %memcnt.218 = phi i32 [ %memcnt.3.lcssa, %71 ], [ 0, %.preheader.lr.ph ], !llfi_index !1394
  br i1 %50, label %71, label %.lr.ph, !llfi_index !1395

.lr.ph:                                           ; preds = %.preheader
  %53 = getelementptr inbounds float** %43, i64 %indvars.iv33, !llfi_index !1396
  %.pre = load float** %53, align 8, !tbaa !55, !llfi_index !1397
  br label %54, !llfi_index !1398

; <label>:54                                      ; preds = %54, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %54 ], [ 0, %.lr.ph ], !llfi_index !1399
  %memcnt.316 = phi i32 [ %69, %54 ], [ %memcnt.218, %.lr.ph ], !llfi_index !1400
  %55 = getelementptr inbounds float* %.pre, i64 %indvars.iv, !llfi_index !1401
  %56 = load float* %55, align 4, !tbaa !81, !llfi_index !1402
  %57 = sext i32 %memcnt.316 to i64, !llfi_index !1403
  %58 = getelementptr inbounds i8* %48, i64 %57, !llfi_index !1404
  %59 = bitcast float %56 to i32, !llfi_index !1405
  %trunc = trunc i32 %59 to i8, !llfi_index !1406
  %.sum51 = add i64 %57, 1, !llfi_index !1407
  %60 = getelementptr inbounds i8* %48, i64 %.sum51, !llfi_index !1408
  store i8 %trunc, i8* %58, align 1, !tbaa !1351, !llfi_index !1409
  %61 = lshr i32 %59, 8, !llfi_index !1410
  %62 = trunc i32 %61 to i8, !llfi_index !1411
  %.sum52 = add i64 %57, 2, !llfi_index !1412
  %63 = getelementptr inbounds i8* %48, i64 %.sum52, !llfi_index !1413
  store i8 %62, i8* %60, align 1, !tbaa !1351, !llfi_index !1414
  %64 = lshr i32 %59, 16, !llfi_index !1415
  %65 = trunc i32 %64 to i8, !llfi_index !1416
  %.sum53 = add i64 %57, 3, !llfi_index !1417
  %66 = getelementptr inbounds i8* %48, i64 %.sum53, !llfi_index !1418
  store i8 %65, i8* %63, align 1, !tbaa !1351, !llfi_index !1419
  %67 = lshr i32 %59, 24, !llfi_index !1420
  %68 = trunc i32 %67 to i8, !llfi_index !1421
  store i8 %68, i8* %66, align 1, !tbaa !1351, !llfi_index !1422
  %69 = add i32 %memcnt.316, 4, !llfi_index !1423
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1424
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !1425
  %exitcond = icmp eq i32 %lftr.wideiv, %44, !llfi_index !1426
  br i1 %exitcond, label %._crit_edge, label %54, !llfi_index !1427

._crit_edge:                                      ; preds = %54
  %70 = add i32 %52, %memcnt.218, !llfi_index !1428
  br label %71, !llfi_index !1429

; <label>:71                                      ; preds = %._crit_edge, %.preheader
  %memcnt.3.lcssa = phi i32 [ %70, %._crit_edge ], [ %memcnt.218, %.preheader ], !llfi_index !1430
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1, !llfi_index !1431
  %lftr.wideiv35 = trunc i64 %indvars.iv.next34 to i32, !llfi_index !1432
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %11, !llfi_index !1433
  br i1 %exitcond36, label %._crit_edge20, label %.preheader, !llfi_index !1434

._crit_edge20:                                    ; preds = %71, %._crit_edge32
  %72 = tail call i64 @fwrite(i8* %48, i64 4, i64 %47, %struct._IO_FILE* %1) #3, !llfi_index !1435
  tail call void @free(i8* %48) #3, !llfi_index !1436
  %73 = tail call i32 @fclose(%struct._IO_FILE* %1) #3, !llfi_index !1437
  ret void, !llfi_index !1438
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind uwtable
define noalias %struct.BPNN* @bpnn_read(i8* %filename) #0 {
  %n1 = alloca i32, align 4, !llfi_index !1439
  %n2 = alloca i32, align 4, !llfi_index !1440
  %n3 = alloca i32, align 4, !llfi_index !1441
  %1 = call i32 (i8*, i32, i32, ...)* bitcast (i32 (...)* @open to i32 (i8*, i32, i32, ...)*)(i8* %filename, i32 0, i32 420) #3, !llfi_index !1442
  %2 = icmp eq i32 %1, -1, !llfi_index !1443
  br i1 %2, label %bpnn_zero_weights.exit10, label %3, !llfi_index !1444

; <label>:3                                       ; preds = %0
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* %filename) #3, !llfi_index !1445
  %5 = bitcast i32* %n1 to i8*, !llfi_index !1446
  %6 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %1, i8* %5, i64 4) #3, !llfi_index !1447
  %7 = bitcast i32* %n2 to i8*, !llfi_index !1448
  %8 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %1, i8* %7, i64 4) #3, !llfi_index !1449
  %9 = bitcast i32* %n3 to i8*, !llfi_index !1450
  %10 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %1, i8* %9, i64 4) #3, !llfi_index !1451
  %11 = load i32* %n1, align 4, !tbaa !1452, !llfi_index !1453
  %12 = load i32* %n2, align 4, !tbaa !1452, !llfi_index !1454
  %13 = load i32* %n3, align 4, !tbaa !1452, !llfi_index !1455
  %14 = call %struct.BPNN* @bpnn_internal_create(i32 %11, i32 %12, i32 %13), !llfi_index !1456
  %15 = load i32* %n1, align 4, !tbaa !1452, !llfi_index !1457
  %16 = load i32* %n2, align 4, !tbaa !1452, !llfi_index !1458
  %17 = load i32* %n3, align 4, !tbaa !1452, !llfi_index !1459
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str7, i64 0, i64 0), i8* %filename, i32 %15, i32 %16, i32 %17) #3, !llfi_index !1460
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0)) #3, !llfi_index !1461
  %20 = load i32* %n1, align 4, !tbaa !1452, !llfi_index !1462
  %21 = load i32* %n2, align 4, !tbaa !1452, !llfi_index !1463
  %22 = add nsw i32 %21, 1, !llfi_index !1464
  %23 = shl i32 %20, 2, !llfi_index !1465
  %24 = add i32 %23, 4, !llfi_index !1466
  %25 = mul i32 %24, %22, !llfi_index !1467
  %26 = zext i32 %25 to i64, !llfi_index !1468
  %27 = call noalias i8* @malloc(i64 %26) #3, !llfi_index !1469
  %28 = add nsw i32 %20, 1, !llfi_index !1470
  %29 = mul nsw i32 %22, %28, !llfi_index !1471
  %30 = sext i32 %29 to i64, !llfi_index !1472
  %31 = shl nsw i64 %30, 2, !llfi_index !1473
  %32 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %1, i8* %27, i64 %31) #3, !llfi_index !1474
  %33 = load i32* %n1, align 4, !tbaa !1452, !llfi_index !1475
  %34 = icmp slt i32 %33, 0, !llfi_index !1476
  br i1 %34, label %._crit_edge30, label %.preheader22.lr.ph, !llfi_index !1477

.preheader22.lr.ph:                               ; preds = %3
  %35 = getelementptr inbounds %struct.BPNN* %14, i64 0, i32 9, !llfi_index !1478
  %.pre47 = load i32* %n2, align 4, !tbaa !1452, !llfi_index !1479
  br label %.preheader22, !llfi_index !1480

.preheader22:                                     ; preds = %60, %.preheader22.lr.ph
  %36 = phi i32 [ %61, %60 ], [ %33, %.preheader22.lr.ph ], !llfi_index !1481
  %37 = phi i32 [ %62, %60 ], [ %.pre47, %.preheader22.lr.ph ], !llfi_index !1482
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %60 ], [ 0, %.preheader22.lr.ph ], !llfi_index !1483
  %memcnt.029 = phi i32 [ %memcnt.1.lcssa, %60 ], [ 0, %.preheader22.lr.ph ], !llfi_index !1484
  %38 = icmp slt i32 %37, 0, !llfi_index !1485
  br i1 %38, label %60, label %.lr.ph25, !llfi_index !1486

.lr.ph25:                                         ; preds = %.preheader22
  %.pre49 = load float*** %35, align 8, !tbaa !277, !llfi_index !1487
  br label %39, !llfi_index !1488

; <label>:39                                      ; preds = %39, %.lr.ph25
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %39 ], [ 0, %.lr.ph25 ], !llfi_index !1489
  %memcnt.124 = phi i32 [ %56, %39 ], [ %memcnt.029, %.lr.ph25 ], !llfi_index !1490
  %40 = getelementptr inbounds float** %.pre49, i64 %indvars.iv42, !llfi_index !1491
  %41 = load float** %40, align 8, !tbaa !55, !llfi_index !1492
  %42 = getelementptr inbounds float* %41, i64 %indvars.iv40, !llfi_index !1493
  %43 = bitcast float* %42 to i8*, !llfi_index !1494
  %44 = sext i32 %memcnt.124 to i64, !llfi_index !1495
  %45 = getelementptr inbounds i8* %27, i64 %44, !llfi_index !1496
  %.sum = add i64 %44, 1, !llfi_index !1497
  %46 = getelementptr inbounds i8* %27, i64 %.sum, !llfi_index !1498
  %47 = load i8* %45, align 1, !tbaa !1351, !llfi_index !1499
  %48 = getelementptr inbounds i8* %43, i64 1, !llfi_index !1500
  store i8 %47, i8* %43, align 1, !tbaa !1351, !llfi_index !1501
  %.sum50 = add i64 %44, 2, !llfi_index !1502
  %49 = getelementptr inbounds i8* %27, i64 %.sum50, !llfi_index !1503
  %50 = load i8* %46, align 1, !tbaa !1351, !llfi_index !1504
  %51 = getelementptr inbounds i8* %43, i64 2, !llfi_index !1505
  store i8 %50, i8* %48, align 1, !tbaa !1351, !llfi_index !1506
  %.sum51 = add i64 %44, 3, !llfi_index !1507
  %52 = getelementptr inbounds i8* %27, i64 %.sum51, !llfi_index !1508
  %53 = load i8* %49, align 1, !tbaa !1351, !llfi_index !1509
  %54 = getelementptr inbounds i8* %43, i64 3, !llfi_index !1510
  store i8 %53, i8* %51, align 1, !tbaa !1351, !llfi_index !1511
  %55 = load i8* %52, align 1, !tbaa !1351, !llfi_index !1512
  store i8 %55, i8* %54, align 1, !tbaa !1351, !llfi_index !1513
  %56 = add i32 %memcnt.124, 4, !llfi_index !1514
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1, !llfi_index !1515
  %57 = load i32* %n2, align 4, !tbaa !1452, !llfi_index !1516
  %58 = trunc i64 %indvars.iv40 to i32, !llfi_index !1517
  %59 = icmp slt i32 %58, %57, !llfi_index !1518
  br i1 %59, label %39, label %._crit_edge26, !llfi_index !1519

._crit_edge26:                                    ; preds = %39
  %.pre48 = load i32* %n1, align 4, !tbaa !1452, !llfi_index !1520
  br label %60, !llfi_index !1521

; <label>:60                                      ; preds = %._crit_edge26, %.preheader22
  %61 = phi i32 [ %.pre48, %._crit_edge26 ], [ %36, %.preheader22 ], !llfi_index !1522
  %62 = phi i32 [ %57, %._crit_edge26 ], [ %37, %.preheader22 ], !llfi_index !1523
  %memcnt.1.lcssa = phi i32 [ %56, %._crit_edge26 ], [ %memcnt.029, %.preheader22 ], !llfi_index !1524
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1, !llfi_index !1525
  %63 = trunc i64 %indvars.iv42 to i32, !llfi_index !1526
  %64 = icmp slt i32 %63, %61, !llfi_index !1527
  br i1 %64, label %.preheader22, label %._crit_edge30, !llfi_index !1528

._crit_edge30:                                    ; preds = %60, %3
  call void @free(i8* %27) #3, !llfi_index !1529
  %65 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str9, i64 0, i64 0)) #3, !llfi_index !1530
  %66 = load i32* %n2, align 4, !tbaa !1452, !llfi_index !1531
  %67 = load i32* %n3, align 4, !tbaa !1452, !llfi_index !1532
  %68 = add nsw i32 %67, 1, !llfi_index !1533
  %69 = shl i32 %66, 2, !llfi_index !1534
  %70 = add i32 %69, 4, !llfi_index !1535
  %71 = mul i32 %70, %68, !llfi_index !1536
  %72 = zext i32 %71 to i64, !llfi_index !1537
  %73 = call noalias i8* @malloc(i64 %72) #3, !llfi_index !1538
  %74 = add nsw i32 %66, 1, !llfi_index !1539
  %75 = mul nsw i32 %68, %74, !llfi_index !1540
  %76 = sext i32 %75 to i64, !llfi_index !1541
  %77 = shl nsw i64 %76, 2, !llfi_index !1542
  %78 = call i32 (i32, i8*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %1, i8* %73, i64 %77) #3, !llfi_index !1543
  %79 = load i32* %n2, align 4, !tbaa !1452, !llfi_index !1544
  %80 = icmp slt i32 %79, 0, !llfi_index !1545
  br i1 %80, label %._crit_edge18, label %.preheader.lr.ph, !llfi_index !1546

.preheader.lr.ph:                                 ; preds = %._crit_edge30
  %81 = getelementptr inbounds %struct.BPNN* %14, i64 0, i32 10, !llfi_index !1547
  %.pre44 = load i32* %n3, align 4, !tbaa !1452, !llfi_index !1548
  br label %.preheader, !llfi_index !1549

.preheader:                                       ; preds = %106, %.preheader.lr.ph
  %82 = phi i32 [ %107, %106 ], [ %79, %.preheader.lr.ph ], !llfi_index !1550
  %83 = phi i32 [ %108, %106 ], [ %.pre44, %.preheader.lr.ph ], !llfi_index !1551
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %106 ], [ 0, %.preheader.lr.ph ], !llfi_index !1552
  %memcnt.217 = phi i32 [ %memcnt.3.lcssa, %106 ], [ 0, %.preheader.lr.ph ], !llfi_index !1553
  %84 = icmp slt i32 %83, 0, !llfi_index !1554
  br i1 %84, label %106, label %.lr.ph, !llfi_index !1555

.lr.ph:                                           ; preds = %.preheader
  %.pre46 = load float*** %81, align 8, !tbaa !307, !llfi_index !1556
  br label %85, !llfi_index !1557

; <label>:85                                      ; preds = %85, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %85 ], [ 0, %.lr.ph ], !llfi_index !1558
  %memcnt.315 = phi i32 [ %102, %85 ], [ %memcnt.217, %.lr.ph ], !llfi_index !1559
  %86 = getelementptr inbounds float** %.pre46, i64 %indvars.iv35, !llfi_index !1560
  %87 = load float** %86, align 8, !tbaa !55, !llfi_index !1561
  %88 = getelementptr inbounds float* %87, i64 %indvars.iv, !llfi_index !1562
  %89 = bitcast float* %88 to i8*, !llfi_index !1563
  %90 = sext i32 %memcnt.315 to i64, !llfi_index !1564
  %91 = getelementptr inbounds i8* %73, i64 %90, !llfi_index !1565
  %.sum52 = add i64 %90, 1, !llfi_index !1566
  %92 = getelementptr inbounds i8* %73, i64 %.sum52, !llfi_index !1567
  %93 = load i8* %91, align 1, !tbaa !1351, !llfi_index !1568
  %94 = getelementptr inbounds i8* %89, i64 1, !llfi_index !1569
  store i8 %93, i8* %89, align 1, !tbaa !1351, !llfi_index !1570
  %.sum53 = add i64 %90, 2, !llfi_index !1571
  %95 = getelementptr inbounds i8* %73, i64 %.sum53, !llfi_index !1572
  %96 = load i8* %92, align 1, !tbaa !1351, !llfi_index !1573
  %97 = getelementptr inbounds i8* %89, i64 2, !llfi_index !1574
  store i8 %96, i8* %94, align 1, !tbaa !1351, !llfi_index !1575
  %.sum54 = add i64 %90, 3, !llfi_index !1576
  %98 = getelementptr inbounds i8* %73, i64 %.sum54, !llfi_index !1577
  %99 = load i8* %95, align 1, !tbaa !1351, !llfi_index !1578
  %100 = getelementptr inbounds i8* %89, i64 3, !llfi_index !1579
  store i8 %99, i8* %97, align 1, !tbaa !1351, !llfi_index !1580
  %101 = load i8* %98, align 1, !tbaa !1351, !llfi_index !1581
  store i8 %101, i8* %100, align 1, !tbaa !1351, !llfi_index !1582
  %102 = add i32 %memcnt.315, 4, !llfi_index !1583
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1584
  %103 = load i32* %n3, align 4, !tbaa !1452, !llfi_index !1585
  %104 = trunc i64 %indvars.iv to i32, !llfi_index !1586
  %105 = icmp slt i32 %104, %103, !llfi_index !1587
  br i1 %105, label %85, label %._crit_edge, !llfi_index !1588

._crit_edge:                                      ; preds = %85
  %.pre45 = load i32* %n2, align 4, !tbaa !1452, !llfi_index !1589
  br label %106, !llfi_index !1590

; <label>:106                                     ; preds = %._crit_edge, %.preheader
  %107 = phi i32 [ %.pre45, %._crit_edge ], [ %82, %.preheader ], !llfi_index !1591
  %108 = phi i32 [ %103, %._crit_edge ], [ %83, %.preheader ], !llfi_index !1592
  %memcnt.3.lcssa = phi i32 [ %102, %._crit_edge ], [ %memcnt.217, %.preheader ], !llfi_index !1593
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1, !llfi_index !1594
  %109 = trunc i64 %indvars.iv35 to i32, !llfi_index !1595
  %110 = icmp slt i32 %109, %107, !llfi_index !1596
  br i1 %110, label %.preheader, label %._crit_edge18, !llfi_index !1597

._crit_edge18:                                    ; preds = %106, %._crit_edge30
  call void @free(i8* %73) #3, !llfi_index !1598
  %111 = call i32 (i32, ...)* bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 %1) #3, !llfi_index !1599
  %puts = call i32 @puts(i8* getelementptr inbounds ([5 x i8]* @str13, i64 0, i64 0)), !llfi_index !1600
  %112 = getelementptr inbounds %struct.BPNN* %14, i64 0, i32 11, !llfi_index !1601
  %113 = load float*** %112, align 8, !tbaa !335, !llfi_index !1602
  %114 = load i32* %n1, align 4, !tbaa !1452, !llfi_index !1603
  %115 = load i32* %n2, align 4, !tbaa !1452, !llfi_index !1604
  %116 = or i32 %115, %114, !llfi_index !1605
  %117 = icmp slt i32 %116, 0, !llfi_index !1606
  br i1 %117, label %bpnn_zero_weights.exit, label %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i, !llfi_index !1607

.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i: ; preds = %._crit_edge18
  %118 = zext i32 %115 to i64, !llfi_index !1608
  %119 = shl nuw nsw i64 %118, 2, !llfi_index !1609
  %120 = add i64 %119, 4, !llfi_index !1610
  %121 = add i32 %114, 1, !llfi_index !1611
  br label %122, !llfi_index !1612

; <label>:122                                     ; preds = %122, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %122 ], [ 0, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i ], !llfi_index !1613
  %123 = getelementptr inbounds float** %113, i64 %indvars.iv.i, !llfi_index !1614
  %124 = load float** %123, align 8, !tbaa !55, !llfi_index !1615
  %125 = bitcast float* %124 to i8*, !llfi_index !1616
  call void @llvm.memset.p0i8.i64(i8* %125, i8 0, i64 %120, i32 4, i1 false) #3, !llfi_index !1617
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !llfi_index !1618
  %lftr.wideiv31 = trunc i64 %indvars.iv.next.i to i32, !llfi_index !1619
  %exitcond32 = icmp eq i32 %lftr.wideiv31, %121, !llfi_index !1620
  br i1 %exitcond32, label %bpnn_zero_weights.exit.loopexit, label %122, !llfi_index !1621

bpnn_zero_weights.exit.loopexit:                  ; preds = %122
  %.pre = load i32* %n2, align 4, !tbaa !1452, !llfi_index !1622
  br label %bpnn_zero_weights.exit, !llfi_index !1623

bpnn_zero_weights.exit:                           ; preds = %bpnn_zero_weights.exit.loopexit, %._crit_edge18
  %126 = phi i32 [ %.pre, %bpnn_zero_weights.exit.loopexit ], [ %115, %._crit_edge18 ], !llfi_index !1624
  %127 = getelementptr inbounds %struct.BPNN* %14, i64 0, i32 12, !llfi_index !1625
  %128 = load float*** %127, align 8, !tbaa !363, !llfi_index !1626
  %129 = load i32* %n3, align 4, !tbaa !1452, !llfi_index !1627
  %130 = or i32 %129, %126, !llfi_index !1628
  %131 = icmp slt i32 %130, 0, !llfi_index !1629
  br i1 %131, label %bpnn_zero_weights.exit10, label %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i5, !llfi_index !1630

.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i5: ; preds = %bpnn_zero_weights.exit
  %132 = zext i32 %129 to i64, !llfi_index !1631
  %133 = shl nuw nsw i64 %132, 2, !llfi_index !1632
  %134 = add i64 %133, 4, !llfi_index !1633
  %135 = add i32 %126, 1, !llfi_index !1634
  br label %136, !llfi_index !1635

; <label>:136                                     ; preds = %136, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i5
  %indvars.iv.i6 = phi i64 [ %indvars.iv.next.i7, %136 ], [ 0, %.preheader.lr.ph..preheader.lr.ph.split_crit_edge.i5 ], !llfi_index !1636
  %137 = getelementptr inbounds float** %128, i64 %indvars.iv.i6, !llfi_index !1637
  %138 = load float** %137, align 8, !tbaa !55, !llfi_index !1638
  %139 = bitcast float* %138 to i8*, !llfi_index !1639
  call void @llvm.memset.p0i8.i64(i8* %139, i8 0, i64 %134, i32 4, i1 false) #3, !llfi_index !1640
  %indvars.iv.next.i7 = add nuw nsw i64 %indvars.iv.i6, 1, !llfi_index !1641
  %lftr.wideiv = trunc i64 %indvars.iv.next.i7 to i32, !llfi_index !1642
  %exitcond = icmp eq i32 %lftr.wideiv, %135, !llfi_index !1643
  br i1 %exitcond, label %bpnn_zero_weights.exit10, label %136, !llfi_index !1644

bpnn_zero_weights.exit10:                         ; preds = %136, %bpnn_zero_weights.exit, %0
  %.0 = phi %struct.BPNN* [ null, %0 ], [ %14, %bpnn_zero_weights.exit ], [ %14, %136 ], !llfi_index !1645
  ret %struct.BPNN* %.0, !llfi_index !1646
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
  %t = alloca %struct.timeval, align 8, !llfi_index !1647
  %1 = call i32 @gettimeofday(%struct.timeval* %t, %struct.timezone* null) #3, !llfi_index !1648
  %2 = getelementptr inbounds %struct.timeval* %t, i64 0, i32 0, !llfi_index !1649
  %3 = load i64* %2, align 8, !tbaa !1650, !llfi_index !1653
  %4 = sitofp i64 %3 to double, !llfi_index !1654
  %5 = getelementptr inbounds %struct.timeval* %t, i64 0, i32 1, !llfi_index !1655
  %6 = load i64* %5, align 8, !tbaa !1656, !llfi_index !1657
  %7 = sitofp i64 %6 to double, !llfi_index !1658
  %8 = fmul double %7, 1.000000e-06, !llfi_index !1659
  %9 = fadd double %4, %8, !llfi_index !1660
  ret double %9, !llfi_index !1661
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = tail call i32 @setup(i32 %argc, i8** %argv) #3, !llfi_index !1662
  ret i32 0, !llfi_index !1663
}

; Function Attrs: nounwind uwtable
define void @bpnn_train_kernel(%struct.BPNN* nocapture readonly %net, float* nocapture readnone %eo, float* nocapture readnone %eh) #0 {
  %out_err = alloca float, align 4, !llfi_index !1664
  %hid_err = alloca float, align 4, !llfi_index !1665
  %1 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 0, !llfi_index !1666
  %2 = load i32* %1, align 4, !tbaa !156, !llfi_index !1667
  %3 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 1, !llfi_index !1668
  %4 = load i32* %3, align 4, !tbaa !162, !llfi_index !1669
  %5 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 2, !llfi_index !1670
  %6 = load i32* %5, align 4, !tbaa !166, !llfi_index !1671
  %puts = call i32 @puts(i8* getelementptr inbounds ([27 x i8]* @str1, i64 0, i64 0)), !llfi_index !1672
  %7 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 3, !llfi_index !1673
  %8 = load float** %7, align 8, !tbaa !181, !llfi_index !1674
  %9 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 4, !llfi_index !1675
  %10 = load float** %9, align 8, !tbaa !196, !llfi_index !1676
  %11 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 9, !llfi_index !1677
  %12 = load float*** %11, align 8, !tbaa !277, !llfi_index !1678
  call void @bpnn_layerforward(float* %8, float* %10, float** %12, i32 %2, i32 %4) #3, !llfi_index !1679
  %13 = load float** %9, align 8, !tbaa !196, !llfi_index !1680
  %14 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 5, !llfi_index !1681
  %15 = load float** %14, align 8, !tbaa !211, !llfi_index !1682
  %16 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 10, !llfi_index !1683
  %17 = load float*** %16, align 8, !tbaa !307, !llfi_index !1684
  call void @bpnn_layerforward(float* %13, float* %15, float** %17, i32 %4, i32 %6) #3, !llfi_index !1685
  %18 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 7, !llfi_index !1686
  %19 = load float** %18, align 8, !tbaa !235, !llfi_index !1687
  %20 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 8, !llfi_index !1688
  %21 = load float** %20, align 8, !tbaa !247, !llfi_index !1689
  %22 = load float** %14, align 8, !tbaa !211, !llfi_index !1690
  call void @bpnn_output_error(float* %19, float* %21, float* %22, i32 %6, float* %out_err) #3, !llfi_index !1691
  %23 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 6, !llfi_index !1692
  %24 = load float** %23, align 8, !tbaa !223, !llfi_index !1693
  %25 = load float** %18, align 8, !tbaa !235, !llfi_index !1694
  %26 = load float*** %16, align 8, !tbaa !307, !llfi_index !1695
  %27 = load float** %9, align 8, !tbaa !196, !llfi_index !1696
  call void @bpnn_hidden_error(float* %24, i32 %4, float* %25, i32 %6, float** %26, float* %27, float* %hid_err) #3, !llfi_index !1697
  %28 = load float** %18, align 8, !tbaa !235, !llfi_index !1698
  %29 = load float** %9, align 8, !tbaa !196, !llfi_index !1699
  %30 = load float*** %16, align 8, !tbaa !307, !llfi_index !1700
  %31 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 12, !llfi_index !1701
  %32 = load float*** %31, align 8, !tbaa !363, !llfi_index !1702
  call void @bpnn_adjust_weights(float* %28, i32 %6, float* %29, i32 %4, float** %30, float** %32) #3, !llfi_index !1703
  %33 = load float** %23, align 8, !tbaa !223, !llfi_index !1704
  %34 = load float** %7, align 8, !tbaa !181, !llfi_index !1705
  %35 = load float*** %11, align 8, !tbaa !277, !llfi_index !1706
  %36 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 11, !llfi_index !1707
  %37 = load float*** %36, align 8, !tbaa !335, !llfi_index !1708
  call void @bpnn_adjust_weights(float* %33, i32 %4, float* %34, i32 %2, float** %35, float** %37) #3, !llfi_index !1709
  ret void, !llfi_index !1710
}

; Function Attrs: nounwind uwtable
define i32 @backprop_face() #0 {
  %out_err = alloca float, align 4, !llfi_index !1711
  %hid_err = alloca float, align 4, !llfi_index !1712
  %1 = load i32* @layer_size, align 4, !tbaa !1452, !llfi_index !1713
  %2 = call %struct.BPNN* (i32, i32, i32, ...)* bitcast (%struct.BPNN* (i32, i32, i32)* @bpnn_create to %struct.BPNN* (i32, i32, i32, ...)*)(i32 %1, i32 16, i32 1) #3, !llfi_index !1714
  %3 = load i32* @layer_size, align 4, !tbaa !1452, !llfi_index !1715
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str, i64 0, i64 0), i32 %3) #3, !llfi_index !1716
  %5 = call i32 (%struct.BPNN*, ...)* bitcast (i32 (%struct.BPNN*)* @load to i32 (%struct.BPNN*, ...)*)(%struct.BPNN* %2) #3, !llfi_index !1717
  %puts = call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str2, i64 0, i64 0)), !llfi_index !1718
  %6 = call i32 (%struct.BPNN*, float*, float*, ...)* bitcast (void (%struct.BPNN*, float*, float*)* @bpnn_train_kernel to i32 (%struct.BPNN*, float*, float*, ...)*)(%struct.BPNN* %2, float* %out_err, float* %hid_err) #3, !llfi_index !1719
  call void (%struct.BPNN*, ...)* bitcast (void (%struct.BPNN*)* @bpnn_free to void (%struct.BPNN*, ...)*)(%struct.BPNN* %2) #3, !llfi_index !1720
  %puts1 = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str4, i64 0, i64 0)), !llfi_index !1721
  ret i32 undef, !llfi_index !1722
}

; Function Attrs: noreturn nounwind uwtable
define i32 @setup(i32 %argc, i8** nocapture readonly %argv) #4 {
  %out_err.i = alloca float, align 4, !llfi_index !1723
  %hid_err.i = alloca float, align 4, !llfi_index !1724
  %1 = icmp eq i32 %argc, 2, !llfi_index !1725
  br i1 %1, label %5, label %2, !llfi_index !1726

; <label>:2                                       ; preds = %0
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !55, !llfi_index !1727
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %3) #6, !llfi_index !1728
  call void @exit(i32 0) #7, !llfi_index !1729
  unreachable, !llfi_index !1730

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds i8** %argv, i64 1, !llfi_index !1731
  %7 = load i8** %6, align 8, !tbaa !55, !llfi_index !1732
  %8 = call i64 @strtol(i8* nocapture %7, i8** null, i32 10) #3, !llfi_index !1733
  %9 = trunc i64 %8 to i32, !llfi_index !1734
  store i32 %9, i32* @layer_size, align 4, !tbaa !1452, !llfi_index !1735
  call void (i32, ...)* bitcast (void (i32)* @bpnn_initialize to void (i32, ...)*)(i32 7) #3, !llfi_index !1736
  %10 = bitcast float* %out_err.i to i8*, !llfi_index !1737
  call void @llvm.lifetime.start(i64 4, i8* %10) #3, !llfi_index !1738
  %11 = bitcast float* %hid_err.i to i8*, !llfi_index !1739
  call void @llvm.lifetime.start(i64 4, i8* %11) #3, !llfi_index !1740
  %12 = load i32* @layer_size, align 4, !tbaa !1452, !llfi_index !1741
  %13 = call %struct.BPNN* (i32, i32, i32, ...)* bitcast (%struct.BPNN* (i32, i32, i32)* @bpnn_create to %struct.BPNN* (i32, i32, i32, ...)*)(i32 %12, i32 16, i32 1) #3, !llfi_index !1742
  %14 = load i32* @layer_size, align 4, !tbaa !1452, !llfi_index !1743
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str, i64 0, i64 0), i32 %14) #3, !llfi_index !1744
  %16 = call i32 (%struct.BPNN*, ...)* bitcast (i32 (%struct.BPNN*)* @load to i32 (%struct.BPNN*, ...)*)(%struct.BPNN* %13) #3, !llfi_index !1745
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str2, i64 0, i64 0)) #3, !llfi_index !1746
  %17 = call i32 (%struct.BPNN*, float*, float*, ...)* bitcast (void (%struct.BPNN*, float*, float*)* @bpnn_train_kernel to i32 (%struct.BPNN*, float*, float*, ...)*)(%struct.BPNN* %13, float* %out_err.i, float* %hid_err.i) #3, !llfi_index !1747
  call void (%struct.BPNN*, ...)* bitcast (void (%struct.BPNN*)* @bpnn_free to void (%struct.BPNN*, ...)*)(%struct.BPNN* %13) #3, !llfi_index !1748
  %puts1.i = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str4, i64 0, i64 0)) #3, !llfi_index !1749
  call void @llvm.lifetime.end(i64 4, i8* %10) #3, !llfi_index !1750
  call void @llvm.lifetime.end(i64 4, i8* %11) #3, !llfi_index !1751
  call void @exit(i32 0) #7, !llfi_index !1752
  unreachable, !llfi_index !1753
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
  %1 = load i32* @layer_size, align 4, !tbaa !1452, !llfi_index !1754
  %2 = getelementptr inbounds %struct.BPNN* %net, i64 0, i32 3, !llfi_index !1755
  %3 = load float** %2, align 8, !tbaa !181, !llfi_index !1756
  %4 = icmp sgt i32 %1, 0, !llfi_index !1757
  br i1 %4, label %.lr.ph, label %._crit_edge, !llfi_index !1758

.lr.ph:                                           ; preds = %0
  %5 = add i32 %1, 1, !llfi_index !1759
  br label %6, !llfi_index !1760

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %6 ], !llfi_index !1761
  %7 = tail call i32 @rand() #3, !llfi_index !1762
  %8 = sitofp i32 %7 to float, !llfi_index !1763
  %9 = fmul float %8, 0x3E00000000000000, !llfi_index !1764
  %10 = getelementptr inbounds float* %3, i64 %indvars.iv, !llfi_index !1765
  store float %9, float* %10, align 4, !tbaa !81, !llfi_index !1766
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1767
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !1768
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !llfi_index !1769
  br i1 %exitcond, label %._crit_edge, label %6, !llfi_index !1770

._crit_edge:                                      ; preds = %6, %0
  ret i32 undef, !llfi_index !1771
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
!81 = metadata !{metadata !82, metadata !82, i64 0}
!82 = metadata !{metadata !"float", metadata !57, i64 0}
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
!112 = metadata !{metadata !112, metadata !113, metadata !114}
!113 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!114 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!115 = metadata !{i64 106}
!116 = metadata !{i64 107}
!117 = metadata !{i64 108}
!118 = metadata !{i64 109}
!119 = metadata !{i64 110}
!120 = metadata !{i64 111}
!121 = metadata !{i64 112}
!122 = metadata !{i64 113}
!123 = metadata !{i64 114}
!124 = metadata !{i64 115}
!125 = metadata !{metadata !125, metadata !113, metadata !114}
!126 = metadata !{i64 116}
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
!156 = metadata !{metadata !157, metadata !158, i64 0}
!157 = metadata !{metadata !"", metadata !158, i64 0, metadata !158, i64 4, metadata !158, i64 8, metadata !56, i64 16, metadata !56, i64 24, metadata !56, i64 32, metadata !56, i64 40, metadata !56, i64 48, metadata !56, i64 56, metadata !56, i64 64, metadata !56, i64 72, metadata !56, i64 80, metadata !56, i64 88}
!158 = metadata !{metadata !"int", metadata !57, i64 0}
!159 = metadata !{i64 146}
!160 = metadata !{i64 147}
!161 = metadata !{i64 148}
!162 = metadata !{metadata !157, metadata !158, i64 4}
!163 = metadata !{i64 149}
!164 = metadata !{i64 150}
!165 = metadata !{i64 151}
!166 = metadata !{metadata !157, metadata !158, i64 8}
!167 = metadata !{i64 152}
!168 = metadata !{i64 153}
!169 = metadata !{i64 154}
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
!181 = metadata !{metadata !157, metadata !56, i64 16}
!182 = metadata !{i64 166}
!183 = metadata !{i64 167}
!184 = metadata !{i64 168}
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
!196 = metadata !{metadata !157, metadata !56, i64 24}
!197 = metadata !{i64 180}
!198 = metadata !{i64 181}
!199 = metadata !{i64 182}
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
!211 = metadata !{metadata !157, metadata !56, i64 32}
!212 = metadata !{i64 194}
!213 = metadata !{i64 195}
!214 = metadata !{i64 196}
!215 = metadata !{i64 197}
!216 = metadata !{i64 198}
!217 = metadata !{i64 199}
!218 = metadata !{i64 200}
!219 = metadata !{i64 201}
!220 = metadata !{i64 202}
!221 = metadata !{i64 203}
!222 = metadata !{i64 204}
!223 = metadata !{metadata !157, metadata !56, i64 40}
!224 = metadata !{i64 205}
!225 = metadata !{i64 206}
!226 = metadata !{i64 207}
!227 = metadata !{i64 208}
!228 = metadata !{i64 209}
!229 = metadata !{i64 210}
!230 = metadata !{i64 211}
!231 = metadata !{i64 212}
!232 = metadata !{i64 213}
!233 = metadata !{i64 214}
!234 = metadata !{i64 215}
!235 = metadata !{metadata !157, metadata !56, i64 48}
!236 = metadata !{i64 216}
!237 = metadata !{i64 217}
!238 = metadata !{i64 218}
!239 = metadata !{i64 219}
!240 = metadata !{i64 220}
!241 = metadata !{i64 221}
!242 = metadata !{i64 222}
!243 = metadata !{i64 223}
!244 = metadata !{i64 224}
!245 = metadata !{i64 225}
!246 = metadata !{i64 226}
!247 = metadata !{metadata !157, metadata !56, i64 56}
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
!277 = metadata !{metadata !157, metadata !56, i64 64}
!278 = metadata !{i64 256}
!279 = metadata !{i64 257}
!280 = metadata !{i64 258}
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
!307 = metadata !{metadata !157, metadata !56, i64 72}
!308 = metadata !{i64 285}
!309 = metadata !{i64 286}
!310 = metadata !{i64 287}
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
!335 = metadata !{metadata !157, metadata !56, i64 80}
!336 = metadata !{i64 312}
!337 = metadata !{i64 313}
!338 = metadata !{i64 314}
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
!363 = metadata !{metadata !157, metadata !56, i64 88}
!364 = metadata !{i64 339}
!365 = metadata !{i64 340}
!366 = metadata !{i64 341}
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
!561 = metadata !{metadata !561, metadata !113, metadata !114}
!562 = metadata !{i64 536}
!563 = metadata !{i64 537}
!564 = metadata !{i64 538}
!565 = metadata !{i64 539}
!566 = metadata !{i64 540}
!567 = metadata !{i64 541}
!568 = metadata !{i64 542}
!569 = metadata !{i64 543}
!570 = metadata !{i64 544}
!571 = metadata !{i64 545}
!572 = metadata !{metadata !572, metadata !113, metadata !114}
!573 = metadata !{i64 546}
!574 = metadata !{i64 547}
!575 = metadata !{i64 548}
!576 = metadata !{i64 549}
!577 = metadata !{i64 550}
!578 = metadata !{i64 551}
!579 = metadata !{i64 552}
!580 = metadata !{i64 553}
!581 = metadata !{i64 554}
!582 = metadata !{i64 555}
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
!603 = metadata !{metadata !603, metadata !113, metadata !114}
!604 = metadata !{i64 576}
!605 = metadata !{i64 577}
!606 = metadata !{i64 578}
!607 = metadata !{i64 579}
!608 = metadata !{i64 580}
!609 = metadata !{i64 581}
!610 = metadata !{i64 582}
!611 = metadata !{i64 583}
!612 = metadata !{i64 584}
!613 = metadata !{i64 585}
!614 = metadata !{metadata !614, metadata !113, metadata !114}
!615 = metadata !{i64 586}
!616 = metadata !{i64 587}
!617 = metadata !{i64 588}
!618 = metadata !{i64 589}
!619 = metadata !{i64 590}
!620 = metadata !{i64 591}
!621 = metadata !{i64 592}
!622 = metadata !{i64 593}
!623 = metadata !{i64 594}
!624 = metadata !{i64 595}
!625 = metadata !{i64 596}
!626 = metadata !{i64 597}
!627 = metadata !{i64 598}
!628 = metadata !{i64 599}
!629 = metadata !{i64 600}
!630 = metadata !{i64 601}
!631 = metadata !{i64 602}
!632 = metadata !{i64 603}
!633 = metadata !{i64 604}
!634 = metadata !{i64 605}
!635 = metadata !{i64 606}
!636 = metadata !{i64 607}
!637 = metadata !{i64 608}
!638 = metadata !{i64 609}
!639 = metadata !{i64 610}
!640 = metadata !{i64 611}
!641 = metadata !{i64 612}
!642 = metadata !{i64 613}
!643 = metadata !{i64 614}
!644 = metadata !{i64 615}
!645 = metadata !{i64 616}
!646 = metadata !{i64 617}
!647 = metadata !{i64 618}
!648 = metadata !{i64 619}
!649 = metadata !{i64 620}
!650 = metadata !{i64 621}
!651 = metadata !{i64 622}
!652 = metadata !{i64 623}
!653 = metadata !{i64 624}
!654 = metadata !{i64 625}
!655 = metadata !{i64 626}
!656 = metadata !{i64 627}
!657 = metadata !{i64 628}
!658 = metadata !{i64 629}
!659 = metadata !{i64 630}
!660 = metadata !{i64 631}
!661 = metadata !{i64 632}
!662 = metadata !{i64 633}
!663 = metadata !{i64 634}
!664 = metadata !{i64 635}
!665 = metadata !{i64 636}
!666 = metadata !{i64 637}
!667 = metadata !{i64 638}
!668 = metadata !{i64 639}
!669 = metadata !{i64 640}
!670 = metadata !{i64 641}
!671 = metadata !{i64 642}
!672 = metadata !{i64 643}
!673 = metadata !{i64 644}
!674 = metadata !{i64 645}
!675 = metadata !{i64 646}
!676 = metadata !{i64 647}
!677 = metadata !{i64 648}
!678 = metadata !{i64 649}
!679 = metadata !{i64 650}
!680 = metadata !{i64 651}
!681 = metadata !{i64 652}
!682 = metadata !{i64 653}
!683 = metadata !{i64 654}
!684 = metadata !{i64 655}
!685 = metadata !{i64 656}
!686 = metadata !{i64 657}
!687 = metadata !{i64 658}
!688 = metadata !{i64 659}
!689 = metadata !{i64 660}
!690 = metadata !{i64 661}
!691 = metadata !{i64 662}
!692 = metadata !{i64 663}
!693 = metadata !{i64 664}
!694 = metadata !{i64 665}
!695 = metadata !{i64 666}
!696 = metadata !{i64 667}
!697 = metadata !{i64 668}
!698 = metadata !{i64 669}
!699 = metadata !{i64 670}
!700 = metadata !{i64 671}
!701 = metadata !{i64 672}
!702 = metadata !{i64 673}
!703 = metadata !{i64 674}
!704 = metadata !{i64 675}
!705 = metadata !{i64 676}
!706 = metadata !{i64 677}
!707 = metadata !{i64 678}
!708 = metadata !{i64 679}
!709 = metadata !{i64 680}
!710 = metadata !{i64 681}
!711 = metadata !{i64 682}
!712 = metadata !{i64 683}
!713 = metadata !{i64 684}
!714 = metadata !{i64 685}
!715 = metadata !{i64 686}
!716 = metadata !{i64 687}
!717 = metadata !{i64 688}
!718 = metadata !{i64 689}
!719 = metadata !{i64 690}
!720 = metadata !{i64 691}
!721 = metadata !{i64 692}
!722 = metadata !{i64 693}
!723 = metadata !{i64 694}
!724 = metadata !{i64 695}
!725 = metadata !{i64 696}
!726 = metadata !{i64 697}
!727 = metadata !{i64 698}
!728 = metadata !{i64 699}
!729 = metadata !{i64 700}
!730 = metadata !{i64 701}
!731 = metadata !{i64 702}
!732 = metadata !{i64 703}
!733 = metadata !{i64 704}
!734 = metadata !{i64 705}
!735 = metadata !{i64 706}
!736 = metadata !{i64 707}
!737 = metadata !{i64 708}
!738 = metadata !{i64 709}
!739 = metadata !{i64 710}
!740 = metadata !{i64 711}
!741 = metadata !{i64 712}
!742 = metadata !{i64 713}
!743 = metadata !{i64 714}
!744 = metadata !{i64 715}
!745 = metadata !{i64 716}
!746 = metadata !{i64 717}
!747 = metadata !{i64 718}
!748 = metadata !{i64 719}
!749 = metadata !{i64 720}
!750 = metadata !{i64 721}
!751 = metadata !{i64 722}
!752 = metadata !{i64 723}
!753 = metadata !{i64 724}
!754 = metadata !{i64 725}
!755 = metadata !{i64 726}
!756 = metadata !{i64 727}
!757 = metadata !{i64 728}
!758 = metadata !{i64 729}
!759 = metadata !{i64 730}
!760 = metadata !{i64 731}
!761 = metadata !{i64 732}
!762 = metadata !{i64 733}
!763 = metadata !{i64 734}
!764 = metadata !{i64 735}
!765 = metadata !{i64 736}
!766 = metadata !{i64 737}
!767 = metadata !{i64 738}
!768 = metadata !{i64 739}
!769 = metadata !{i64 740}
!770 = metadata !{i64 741}
!771 = metadata !{i64 742}
!772 = metadata !{i64 743}
!773 = metadata !{i64 744}
!774 = metadata !{i64 745}
!775 = metadata !{i64 746}
!776 = metadata !{i64 747}
!777 = metadata !{i64 748}
!778 = metadata !{i64 749}
!779 = metadata !{i64 750}
!780 = metadata !{i64 751}
!781 = metadata !{i64 752}
!782 = metadata !{i64 753}
!783 = metadata !{i64 754}
!784 = metadata !{i64 755}
!785 = metadata !{i64 756}
!786 = metadata !{i64 757}
!787 = metadata !{i64 758}
!788 = metadata !{i64 759}
!789 = metadata !{i64 760}
!790 = metadata !{i64 761}
!791 = metadata !{i64 762}
!792 = metadata !{i64 763}
!793 = metadata !{i64 764}
!794 = metadata !{i64 765}
!795 = metadata !{i64 766}
!796 = metadata !{i64 767}
!797 = metadata !{i64 768}
!798 = metadata !{i64 769}
!799 = metadata !{i64 770}
!800 = metadata !{i64 771}
!801 = metadata !{i64 772}
!802 = metadata !{i64 773}
!803 = metadata !{i64 774}
!804 = metadata !{i64 775}
!805 = metadata !{i64 776}
!806 = metadata !{i64 777}
!807 = metadata !{i64 778}
!808 = metadata !{i64 779}
!809 = metadata !{i64 780}
!810 = metadata !{i64 781}
!811 = metadata !{i64 782}
!812 = metadata !{i64 783}
!813 = metadata !{i64 784}
!814 = metadata !{i64 785}
!815 = metadata !{i64 786}
!816 = metadata !{i64 787}
!817 = metadata !{i64 788}
!818 = metadata !{i64 789}
!819 = metadata !{i64 790}
!820 = metadata !{i64 791}
!821 = metadata !{i64 792}
!822 = metadata !{i64 793}
!823 = metadata !{i64 794}
!824 = metadata !{i64 795}
!825 = metadata !{i64 796}
!826 = metadata !{i64 797}
!827 = metadata !{i64 798}
!828 = metadata !{i64 799}
!829 = metadata !{i64 800}
!830 = metadata !{i64 801}
!831 = metadata !{metadata !831, metadata !113, metadata !114}
!832 = metadata !{i64 802}
!833 = metadata !{i64 803}
!834 = metadata !{i64 804}
!835 = metadata !{i64 805}
!836 = metadata !{i64 806}
!837 = metadata !{i64 807}
!838 = metadata !{i64 808}
!839 = metadata !{i64 809}
!840 = metadata !{i64 810}
!841 = metadata !{i64 811}
!842 = metadata !{metadata !842, metadata !113, metadata !114}
!843 = metadata !{i64 812}
!844 = metadata !{i64 813}
!845 = metadata !{i64 814}
!846 = metadata !{i64 815}
!847 = metadata !{i64 816}
!848 = metadata !{i64 817}
!849 = metadata !{i64 818}
!850 = metadata !{i64 819}
!851 = metadata !{i64 820}
!852 = metadata !{i64 821}
!853 = metadata !{i64 822}
!854 = metadata !{i64 823}
!855 = metadata !{i64 824}
!856 = metadata !{i64 825}
!857 = metadata !{i64 826}
!858 = metadata !{i64 827}
!859 = metadata !{i64 828}
!860 = metadata !{i64 829}
!861 = metadata !{i64 830}
!862 = metadata !{i64 831}
!863 = metadata !{i64 832}
!864 = metadata !{i64 833}
!865 = metadata !{i64 834}
!866 = metadata !{i64 835}
!867 = metadata !{i64 836}
!868 = metadata !{i64 837}
!869 = metadata !{i64 838}
!870 = metadata !{i64 839}
!871 = metadata !{i64 840}
!872 = metadata !{i64 841}
!873 = metadata !{i64 842}
!874 = metadata !{i64 843}
!875 = metadata !{i64 844}
!876 = metadata !{i64 845}
!877 = metadata !{i64 846}
!878 = metadata !{i64 847}
!879 = metadata !{i64 848}
!880 = metadata !{i64 849}
!881 = metadata !{i64 850}
!882 = metadata !{i64 851}
!883 = metadata !{i64 852}
!884 = metadata !{i64 853}
!885 = metadata !{i64 854}
!886 = metadata !{i64 855}
!887 = metadata !{i64 856}
!888 = metadata !{i64 857}
!889 = metadata !{i64 858}
!890 = metadata !{i64 859}
!891 = metadata !{i64 860}
!892 = metadata !{i64 861}
!893 = metadata !{i64 862}
!894 = metadata !{i64 863}
!895 = metadata !{i64 864}
!896 = metadata !{i64 865}
!897 = metadata !{i64 866}
!898 = metadata !{i64 867}
!899 = metadata !{i64 868}
!900 = metadata !{i64 869}
!901 = metadata !{i64 870}
!902 = metadata !{i64 871}
!903 = metadata !{i64 872}
!904 = metadata !{i64 873}
!905 = metadata !{metadata !905, metadata !113, metadata !114}
!906 = metadata !{i64 874}
!907 = metadata !{i64 875}
!908 = metadata !{i64 876}
!909 = metadata !{i64 877}
!910 = metadata !{i64 878}
!911 = metadata !{i64 879}
!912 = metadata !{i64 880}
!913 = metadata !{i64 881}
!914 = metadata !{i64 882}
!915 = metadata !{i64 883}
!916 = metadata !{metadata !916, metadata !113, metadata !114}
!917 = metadata !{i64 884}
!918 = metadata !{i64 885}
!919 = metadata !{i64 886}
!920 = metadata !{i64 887}
!921 = metadata !{i64 888}
!922 = metadata !{i64 889}
!923 = metadata !{i64 890}
!924 = metadata !{i64 891}
!925 = metadata !{i64 892}
!926 = metadata !{i64 893}
!927 = metadata !{i64 894}
!928 = metadata !{i64 895}
!929 = metadata !{i64 896}
!930 = metadata !{i64 897}
!931 = metadata !{i64 898}
!932 = metadata !{i64 899}
!933 = metadata !{i64 900}
!934 = metadata !{i64 901}
!935 = metadata !{i64 902}
!936 = metadata !{i64 903}
!937 = metadata !{i64 904}
!938 = metadata !{i64 905}
!939 = metadata !{i64 906}
!940 = metadata !{i64 907}
!941 = metadata !{i64 908}
!942 = metadata !{i64 909}
!943 = metadata !{i64 910}
!944 = metadata !{i64 911}
!945 = metadata !{i64 912}
!946 = metadata !{i64 913}
!947 = metadata !{i64 914}
!948 = metadata !{i64 915}
!949 = metadata !{i64 916}
!950 = metadata !{i64 917}
!951 = metadata !{i64 918}
!952 = metadata !{i64 919}
!953 = metadata !{i64 920}
!954 = metadata !{i64 921}
!955 = metadata !{i64 922}
!956 = metadata !{i64 923}
!957 = metadata !{i64 924}
!958 = metadata !{i64 925}
!959 = metadata !{i64 926}
!960 = metadata !{i64 927}
!961 = metadata !{i64 928}
!962 = metadata !{i64 929}
!963 = metadata !{i64 930}
!964 = metadata !{i64 931}
!965 = metadata !{i64 932}
!966 = metadata !{i64 933}
!967 = metadata !{i64 934}
!968 = metadata !{i64 935}
!969 = metadata !{i64 936}
!970 = metadata !{i64 937}
!971 = metadata !{i64 938}
!972 = metadata !{i64 939}
!973 = metadata !{i64 940}
!974 = metadata !{i64 941}
!975 = metadata !{i64 942}
!976 = metadata !{i64 943}
!977 = metadata !{i64 944}
!978 = metadata !{i64 945}
!979 = metadata !{i64 946}
!980 = metadata !{i64 947}
!981 = metadata !{i64 948}
!982 = metadata !{i64 949}
!983 = metadata !{i64 950}
!984 = metadata !{i64 951}
!985 = metadata !{i64 952}
!986 = metadata !{i64 953}
!987 = metadata !{metadata !987, metadata !113, metadata !114}
!988 = metadata !{i64 954}
!989 = metadata !{i64 955}
!990 = metadata !{i64 956}
!991 = metadata !{i64 957}
!992 = metadata !{i64 958}
!993 = metadata !{i64 959}
!994 = metadata !{i64 960}
!995 = metadata !{i64 961}
!996 = metadata !{i64 962}
!997 = metadata !{i64 963}
!998 = metadata !{metadata !998, metadata !113, metadata !114}
!999 = metadata !{i64 964}
!1000 = metadata !{i64 965}
!1001 = metadata !{i64 966}
!1002 = metadata !{i64 967}
!1003 = metadata !{i64 968}
!1004 = metadata !{i64 969}
!1005 = metadata !{i64 970}
!1006 = metadata !{i64 971}
!1007 = metadata !{i64 972}
!1008 = metadata !{i64 973}
!1009 = metadata !{i64 974}
!1010 = metadata !{i64 975}
!1011 = metadata !{i64 976}
!1012 = metadata !{i64 977}
!1013 = metadata !{i64 978}
!1014 = metadata !{i64 979}
!1015 = metadata !{i64 980}
!1016 = metadata !{i64 981}
!1017 = metadata !{i64 982}
!1018 = metadata !{i64 983}
!1019 = metadata !{i64 984}
!1020 = metadata !{i64 985}
!1021 = metadata !{i64 986}
!1022 = metadata !{i64 987}
!1023 = metadata !{i64 988}
!1024 = metadata !{i64 989}
!1025 = metadata !{i64 990}
!1026 = metadata !{i64 991}
!1027 = metadata !{i64 992}
!1028 = metadata !{i64 993}
!1029 = metadata !{i64 994}
!1030 = metadata !{i64 995}
!1031 = metadata !{i64 996}
!1032 = metadata !{i64 997}
!1033 = metadata !{i64 998}
!1034 = metadata !{i64 999}
!1035 = metadata !{i64 1000}
!1036 = metadata !{i64 1001}
!1037 = metadata !{i64 1002}
!1038 = metadata !{i64 1003}
!1039 = metadata !{i64 1004}
!1040 = metadata !{i64 1005}
!1041 = metadata !{i64 1006}
!1042 = metadata !{i64 1007}
!1043 = metadata !{i64 1008}
!1044 = metadata !{i64 1009}
!1045 = metadata !{i64 1010}
!1046 = metadata !{i64 1011}
!1047 = metadata !{i64 1012}
!1048 = metadata !{i64 1013}
!1049 = metadata !{i64 1014}
!1050 = metadata !{i64 1015}
!1051 = metadata !{i64 1016}
!1052 = metadata !{i64 1017}
!1053 = metadata !{i64 1018}
!1054 = metadata !{i64 1019}
!1055 = metadata !{i64 1020}
!1056 = metadata !{i64 1021}
!1057 = metadata !{i64 1022}
!1058 = metadata !{i64 1023}
!1059 = metadata !{i64 1024}
!1060 = metadata !{i64 1025}
!1061 = metadata !{i64 1026}
!1062 = metadata !{i64 1027}
!1063 = metadata !{i64 1028}
!1064 = metadata !{metadata !1064, metadata !113, metadata !114}
!1065 = metadata !{i64 1029}
!1066 = metadata !{i64 1030}
!1067 = metadata !{i64 1031}
!1068 = metadata !{i64 1032}
!1069 = metadata !{i64 1033}
!1070 = metadata !{i64 1034}
!1071 = metadata !{i64 1035}
!1072 = metadata !{i64 1036}
!1073 = metadata !{i64 1037}
!1074 = metadata !{i64 1038}
!1075 = metadata !{metadata !1075, metadata !113, metadata !114}
!1076 = metadata !{i64 1039}
!1077 = metadata !{i64 1040}
!1078 = metadata !{i64 1041}
!1079 = metadata !{i64 1042}
!1080 = metadata !{i64 1043}
!1081 = metadata !{i64 1044}
!1082 = metadata !{i64 1045}
!1083 = metadata !{i64 1046}
!1084 = metadata !{i64 1047}
!1085 = metadata !{i64 1048}
!1086 = metadata !{i64 1049}
!1087 = metadata !{i64 1050}
!1088 = metadata !{i64 1051}
!1089 = metadata !{i64 1052}
!1090 = metadata !{i64 1053}
!1091 = metadata !{i64 1054}
!1092 = metadata !{i64 1055}
!1093 = metadata !{i64 1056}
!1094 = metadata !{i64 1057}
!1095 = metadata !{i64 1058}
!1096 = metadata !{i64 1059}
!1097 = metadata !{i64 1060}
!1098 = metadata !{i64 1061}
!1099 = metadata !{i64 1062}
!1100 = metadata !{i64 1063}
!1101 = metadata !{i64 1064}
!1102 = metadata !{i64 1065}
!1103 = metadata !{i64 1066}
!1104 = metadata !{i64 1067}
!1105 = metadata !{i64 1068}
!1106 = metadata !{i64 1069}
!1107 = metadata !{i64 1070}
!1108 = metadata !{i64 1071}
!1109 = metadata !{i64 1072}
!1110 = metadata !{i64 1073}
!1111 = metadata !{i64 1074}
!1112 = metadata !{i64 1075}
!1113 = metadata !{i64 1076}
!1114 = metadata !{i64 1077}
!1115 = metadata !{i64 1078}
!1116 = metadata !{i64 1079}
!1117 = metadata !{i64 1080}
!1118 = metadata !{i64 1081}
!1119 = metadata !{i64 1082}
!1120 = metadata !{i64 1083}
!1121 = metadata !{i64 1084}
!1122 = metadata !{i64 1085}
!1123 = metadata !{i64 1086}
!1124 = metadata !{i64 1087}
!1125 = metadata !{i64 1088}
!1126 = metadata !{i64 1089}
!1127 = metadata !{i64 1090}
!1128 = metadata !{i64 1091}
!1129 = metadata !{i64 1092}
!1130 = metadata !{i64 1093}
!1131 = metadata !{i64 1094}
!1132 = metadata !{i64 1095}
!1133 = metadata !{i64 1096}
!1134 = metadata !{i64 1097}
!1135 = metadata !{i64 1098}
!1136 = metadata !{i64 1099}
!1137 = metadata !{i64 1100}
!1138 = metadata !{i64 1101}
!1139 = metadata !{i64 1102}
!1140 = metadata !{i64 1103}
!1141 = metadata !{i64 1104}
!1142 = metadata !{i64 1105}
!1143 = metadata !{i64 1106}
!1144 = metadata !{i64 1107}
!1145 = metadata !{i64 1108}
!1146 = metadata !{i64 1109}
!1147 = metadata !{i64 1110}
!1148 = metadata !{i64 1111}
!1149 = metadata !{i64 1112}
!1150 = metadata !{i64 1113}
!1151 = metadata !{i64 1114}
!1152 = metadata !{i64 1115}
!1153 = metadata !{i64 1116}
!1154 = metadata !{i64 1117}
!1155 = metadata !{i64 1118}
!1156 = metadata !{i64 1119}
!1157 = metadata !{i64 1120}
!1158 = metadata !{i64 1121}
!1159 = metadata !{i64 1122}
!1160 = metadata !{i64 1123}
!1161 = metadata !{i64 1124}
!1162 = metadata !{i64 1125}
!1163 = metadata !{i64 1126}
!1164 = metadata !{i64 1127}
!1165 = metadata !{i64 1128}
!1166 = metadata !{i64 1129}
!1167 = metadata !{i64 1130}
!1168 = metadata !{i64 1131}
!1169 = metadata !{i64 1132}
!1170 = metadata !{i64 1133}
!1171 = metadata !{i64 1134}
!1172 = metadata !{i64 1135}
!1173 = metadata !{i64 1136}
!1174 = metadata !{i64 1137}
!1175 = metadata !{i64 1138}
!1176 = metadata !{i64 1139}
!1177 = metadata !{i64 1140}
!1178 = metadata !{i64 1141}
!1179 = metadata !{i64 1142}
!1180 = metadata !{i64 1143}
!1181 = metadata !{i64 1144}
!1182 = metadata !{i64 1145}
!1183 = metadata !{i64 1146}
!1184 = metadata !{i64 1147}
!1185 = metadata !{i64 1148}
!1186 = metadata !{i64 1149}
!1187 = metadata !{i64 1150}
!1188 = metadata !{i64 1151}
!1189 = metadata !{i64 1152}
!1190 = metadata !{i64 1153}
!1191 = metadata !{i64 1154}
!1192 = metadata !{i64 1155}
!1193 = metadata !{i64 1156}
!1194 = metadata !{i64 1157}
!1195 = metadata !{i64 1158}
!1196 = metadata !{i64 1159}
!1197 = metadata !{i64 1160}
!1198 = metadata !{i64 1161}
!1199 = metadata !{i64 1162}
!1200 = metadata !{i64 1163}
!1201 = metadata !{i64 1164}
!1202 = metadata !{i64 1165}
!1203 = metadata !{i64 1166}
!1204 = metadata !{i64 1167}
!1205 = metadata !{i64 1168}
!1206 = metadata !{i64 1169}
!1207 = metadata !{i64 1170}
!1208 = metadata !{i64 1171}
!1209 = metadata !{i64 1172}
!1210 = metadata !{i64 1173}
!1211 = metadata !{i64 1174}
!1212 = metadata !{i64 1175}
!1213 = metadata !{i64 1176}
!1214 = metadata !{i64 1177}
!1215 = metadata !{i64 1178}
!1216 = metadata !{i64 1179}
!1217 = metadata !{i64 1180}
!1218 = metadata !{i64 1181}
!1219 = metadata !{i64 1182}
!1220 = metadata !{i64 1183}
!1221 = metadata !{i64 1184}
!1222 = metadata !{i64 1185}
!1223 = metadata !{i64 1186}
!1224 = metadata !{i64 1187}
!1225 = metadata !{i64 1188}
!1226 = metadata !{i64 1189}
!1227 = metadata !{i64 1190}
!1228 = metadata !{i64 1191}
!1229 = metadata !{i64 1192}
!1230 = metadata !{i64 1193}
!1231 = metadata !{i64 1194}
!1232 = metadata !{i64 1195}
!1233 = metadata !{i64 1196}
!1234 = metadata !{i64 1197}
!1235 = metadata !{i64 1198}
!1236 = metadata !{i64 1199}
!1237 = metadata !{i64 1200}
!1238 = metadata !{i64 1201}
!1239 = metadata !{i64 1202}
!1240 = metadata !{i64 1203}
!1241 = metadata !{i64 1204}
!1242 = metadata !{i64 1205}
!1243 = metadata !{i64 1206}
!1244 = metadata !{i64 1207}
!1245 = metadata !{i64 1208}
!1246 = metadata !{i64 1209}
!1247 = metadata !{i64 1210}
!1248 = metadata !{i64 1211}
!1249 = metadata !{i64 1212}
!1250 = metadata !{i64 1213}
!1251 = metadata !{i64 1214}
!1252 = metadata !{i64 1215}
!1253 = metadata !{i64 1216}
!1254 = metadata !{i64 1217}
!1255 = metadata !{i64 1218}
!1256 = metadata !{i64 1219}
!1257 = metadata !{i64 1220}
!1258 = metadata !{i64 1221}
!1259 = metadata !{i64 1222}
!1260 = metadata !{i64 1223}
!1261 = metadata !{i64 1224}
!1262 = metadata !{i64 1225}
!1263 = metadata !{i64 1226}
!1264 = metadata !{i64 1227}
!1265 = metadata !{i64 1228}
!1266 = metadata !{i64 1229}
!1267 = metadata !{i64 1230}
!1268 = metadata !{i64 1231}
!1269 = metadata !{i64 1232}
!1270 = metadata !{i64 1233}
!1271 = metadata !{i64 1234}
!1272 = metadata !{i64 1235}
!1273 = metadata !{i64 1236}
!1274 = metadata !{i64 1237}
!1275 = metadata !{i64 1238}
!1276 = metadata !{i64 1239}
!1277 = metadata !{i64 1240}
!1278 = metadata !{i64 1241}
!1279 = metadata !{i64 1242}
!1280 = metadata !{i64 1243}
!1281 = metadata !{i64 1244}
!1282 = metadata !{i64 1245}
!1283 = metadata !{i64 1246}
!1284 = metadata !{i64 1247}
!1285 = metadata !{i64 1248}
!1286 = metadata !{i64 1249}
!1287 = metadata !{i64 1250}
!1288 = metadata !{i64 1251}
!1289 = metadata !{i64 1252}
!1290 = metadata !{i64 1253}
!1291 = metadata !{i64 1254}
!1292 = metadata !{i64 1255}
!1293 = metadata !{i64 1256}
!1294 = metadata !{i64 1257}
!1295 = metadata !{i64 1258}
!1296 = metadata !{i64 1259}
!1297 = metadata !{i64 1260}
!1298 = metadata !{i64 1261}
!1299 = metadata !{i64 1262}
!1300 = metadata !{i64 1263}
!1301 = metadata !{i64 1264}
!1302 = metadata !{i64 1265}
!1303 = metadata !{i64 1266}
!1304 = metadata !{i64 1267}
!1305 = metadata !{i64 1268}
!1306 = metadata !{i64 1269}
!1307 = metadata !{i64 1270}
!1308 = metadata !{i64 1271}
!1309 = metadata !{i64 1272}
!1310 = metadata !{i64 1273}
!1311 = metadata !{i64 1274}
!1312 = metadata !{i64 1275}
!1313 = metadata !{i64 1276}
!1314 = metadata !{i64 1277}
!1315 = metadata !{i64 1278}
!1316 = metadata !{i64 1279}
!1317 = metadata !{i64 1280}
!1318 = metadata !{i64 1281}
!1319 = metadata !{i64 1282}
!1320 = metadata !{i64 1283}
!1321 = metadata !{i64 1284}
!1322 = metadata !{i64 1285}
!1323 = metadata !{i64 1286}
!1324 = metadata !{i64 1287}
!1325 = metadata !{i64 1288}
!1326 = metadata !{i64 1289}
!1327 = metadata !{i64 1290}
!1328 = metadata !{i64 1291}
!1329 = metadata !{i64 1292}
!1330 = metadata !{i64 1293}
!1331 = metadata !{i64 1294}
!1332 = metadata !{i64 1295}
!1333 = metadata !{i64 1296}
!1334 = metadata !{i64 1297}
!1335 = metadata !{i64 1298}
!1336 = metadata !{i64 1299}
!1337 = metadata !{i64 1300}
!1338 = metadata !{i64 1301}
!1339 = metadata !{i64 1302}
!1340 = metadata !{i64 1303}
!1341 = metadata !{i64 1304}
!1342 = metadata !{i64 1305}
!1343 = metadata !{i64 1306}
!1344 = metadata !{i64 1307}
!1345 = metadata !{i64 1308}
!1346 = metadata !{i64 1309}
!1347 = metadata !{i64 1310}
!1348 = metadata !{i64 1311}
!1349 = metadata !{i64 1312}
!1350 = metadata !{i64 1313}
!1351 = metadata !{metadata !57, metadata !57, i64 0}
!1352 = metadata !{i64 1314}
!1353 = metadata !{i64 1315}
!1354 = metadata !{i64 1316}
!1355 = metadata !{i64 1317}
!1356 = metadata !{i64 1318}
!1357 = metadata !{i64 1319}
!1358 = metadata !{i64 1320}
!1359 = metadata !{i64 1321}
!1360 = metadata !{i64 1322}
!1361 = metadata !{i64 1323}
!1362 = metadata !{i64 1324}
!1363 = metadata !{i64 1325}
!1364 = metadata !{i64 1326}
!1365 = metadata !{i64 1327}
!1366 = metadata !{i64 1328}
!1367 = metadata !{i64 1329}
!1368 = metadata !{i64 1330}
!1369 = metadata !{i64 1331}
!1370 = metadata !{i64 1332}
!1371 = metadata !{i64 1333}
!1372 = metadata !{i64 1334}
!1373 = metadata !{i64 1335}
!1374 = metadata !{i64 1336}
!1375 = metadata !{i64 1337}
!1376 = metadata !{i64 1338}
!1377 = metadata !{i64 1339}
!1378 = metadata !{i64 1340}
!1379 = metadata !{i64 1341}
!1380 = metadata !{i64 1342}
!1381 = metadata !{i64 1343}
!1382 = metadata !{i64 1344}
!1383 = metadata !{i64 1345}
!1384 = metadata !{i64 1346}
!1385 = metadata !{i64 1347}
!1386 = metadata !{i64 1348}
!1387 = metadata !{i64 1349}
!1388 = metadata !{i64 1350}
!1389 = metadata !{i64 1351}
!1390 = metadata !{i64 1352}
!1391 = metadata !{i64 1353}
!1392 = metadata !{i64 1354}
!1393 = metadata !{i64 1355}
!1394 = metadata !{i64 1356}
!1395 = metadata !{i64 1357}
!1396 = metadata !{i64 1358}
!1397 = metadata !{i64 1359}
!1398 = metadata !{i64 1360}
!1399 = metadata !{i64 1361}
!1400 = metadata !{i64 1362}
!1401 = metadata !{i64 1363}
!1402 = metadata !{i64 1364}
!1403 = metadata !{i64 1365}
!1404 = metadata !{i64 1366}
!1405 = metadata !{i64 1367}
!1406 = metadata !{i64 1368}
!1407 = metadata !{i64 1369}
!1408 = metadata !{i64 1370}
!1409 = metadata !{i64 1371}
!1410 = metadata !{i64 1372}
!1411 = metadata !{i64 1373}
!1412 = metadata !{i64 1374}
!1413 = metadata !{i64 1375}
!1414 = metadata !{i64 1376}
!1415 = metadata !{i64 1377}
!1416 = metadata !{i64 1378}
!1417 = metadata !{i64 1379}
!1418 = metadata !{i64 1380}
!1419 = metadata !{i64 1381}
!1420 = metadata !{i64 1382}
!1421 = metadata !{i64 1383}
!1422 = metadata !{i64 1384}
!1423 = metadata !{i64 1385}
!1424 = metadata !{i64 1386}
!1425 = metadata !{i64 1387}
!1426 = metadata !{i64 1388}
!1427 = metadata !{i64 1389}
!1428 = metadata !{i64 1390}
!1429 = metadata !{i64 1391}
!1430 = metadata !{i64 1392}
!1431 = metadata !{i64 1393}
!1432 = metadata !{i64 1394}
!1433 = metadata !{i64 1395}
!1434 = metadata !{i64 1396}
!1435 = metadata !{i64 1397}
!1436 = metadata !{i64 1398}
!1437 = metadata !{i64 1399}
!1438 = metadata !{i64 1400}
!1439 = metadata !{i64 1401}
!1440 = metadata !{i64 1402}
!1441 = metadata !{i64 1403}
!1442 = metadata !{i64 1404}
!1443 = metadata !{i64 1405}
!1444 = metadata !{i64 1406}
!1445 = metadata !{i64 1407}
!1446 = metadata !{i64 1408}
!1447 = metadata !{i64 1409}
!1448 = metadata !{i64 1410}
!1449 = metadata !{i64 1411}
!1450 = metadata !{i64 1412}
!1451 = metadata !{i64 1413}
!1452 = metadata !{metadata !158, metadata !158, i64 0}
!1453 = metadata !{i64 1414}
!1454 = metadata !{i64 1415}
!1455 = metadata !{i64 1416}
!1456 = metadata !{i64 1417}
!1457 = metadata !{i64 1418}
!1458 = metadata !{i64 1419}
!1459 = metadata !{i64 1420}
!1460 = metadata !{i64 1421}
!1461 = metadata !{i64 1422}
!1462 = metadata !{i64 1423}
!1463 = metadata !{i64 1424}
!1464 = metadata !{i64 1425}
!1465 = metadata !{i64 1426}
!1466 = metadata !{i64 1427}
!1467 = metadata !{i64 1428}
!1468 = metadata !{i64 1429}
!1469 = metadata !{i64 1430}
!1470 = metadata !{i64 1431}
!1471 = metadata !{i64 1432}
!1472 = metadata !{i64 1433}
!1473 = metadata !{i64 1434}
!1474 = metadata !{i64 1435}
!1475 = metadata !{i64 1436}
!1476 = metadata !{i64 1437}
!1477 = metadata !{i64 1438}
!1478 = metadata !{i64 1439}
!1479 = metadata !{i64 1440}
!1480 = metadata !{i64 1441}
!1481 = metadata !{i64 1442}
!1482 = metadata !{i64 1443}
!1483 = metadata !{i64 1444}
!1484 = metadata !{i64 1445}
!1485 = metadata !{i64 1446}
!1486 = metadata !{i64 1447}
!1487 = metadata !{i64 1448}
!1488 = metadata !{i64 1449}
!1489 = metadata !{i64 1450}
!1490 = metadata !{i64 1451}
!1491 = metadata !{i64 1452}
!1492 = metadata !{i64 1453}
!1493 = metadata !{i64 1454}
!1494 = metadata !{i64 1455}
!1495 = metadata !{i64 1456}
!1496 = metadata !{i64 1457}
!1497 = metadata !{i64 1458}
!1498 = metadata !{i64 1459}
!1499 = metadata !{i64 1460}
!1500 = metadata !{i64 1461}
!1501 = metadata !{i64 1462}
!1502 = metadata !{i64 1463}
!1503 = metadata !{i64 1464}
!1504 = metadata !{i64 1465}
!1505 = metadata !{i64 1466}
!1506 = metadata !{i64 1467}
!1507 = metadata !{i64 1468}
!1508 = metadata !{i64 1469}
!1509 = metadata !{i64 1470}
!1510 = metadata !{i64 1471}
!1511 = metadata !{i64 1472}
!1512 = metadata !{i64 1473}
!1513 = metadata !{i64 1474}
!1514 = metadata !{i64 1475}
!1515 = metadata !{i64 1476}
!1516 = metadata !{i64 1477}
!1517 = metadata !{i64 1478}
!1518 = metadata !{i64 1479}
!1519 = metadata !{i64 1480}
!1520 = metadata !{i64 1481}
!1521 = metadata !{i64 1482}
!1522 = metadata !{i64 1483}
!1523 = metadata !{i64 1484}
!1524 = metadata !{i64 1485}
!1525 = metadata !{i64 1486}
!1526 = metadata !{i64 1487}
!1527 = metadata !{i64 1488}
!1528 = metadata !{i64 1489}
!1529 = metadata !{i64 1490}
!1530 = metadata !{i64 1491}
!1531 = metadata !{i64 1492}
!1532 = metadata !{i64 1493}
!1533 = metadata !{i64 1494}
!1534 = metadata !{i64 1495}
!1535 = metadata !{i64 1496}
!1536 = metadata !{i64 1497}
!1537 = metadata !{i64 1498}
!1538 = metadata !{i64 1499}
!1539 = metadata !{i64 1500}
!1540 = metadata !{i64 1501}
!1541 = metadata !{i64 1502}
!1542 = metadata !{i64 1503}
!1543 = metadata !{i64 1504}
!1544 = metadata !{i64 1505}
!1545 = metadata !{i64 1506}
!1546 = metadata !{i64 1507}
!1547 = metadata !{i64 1508}
!1548 = metadata !{i64 1509}
!1549 = metadata !{i64 1510}
!1550 = metadata !{i64 1511}
!1551 = metadata !{i64 1512}
!1552 = metadata !{i64 1513}
!1553 = metadata !{i64 1514}
!1554 = metadata !{i64 1515}
!1555 = metadata !{i64 1516}
!1556 = metadata !{i64 1517}
!1557 = metadata !{i64 1518}
!1558 = metadata !{i64 1519}
!1559 = metadata !{i64 1520}
!1560 = metadata !{i64 1521}
!1561 = metadata !{i64 1522}
!1562 = metadata !{i64 1523}
!1563 = metadata !{i64 1524}
!1564 = metadata !{i64 1525}
!1565 = metadata !{i64 1526}
!1566 = metadata !{i64 1527}
!1567 = metadata !{i64 1528}
!1568 = metadata !{i64 1529}
!1569 = metadata !{i64 1530}
!1570 = metadata !{i64 1531}
!1571 = metadata !{i64 1532}
!1572 = metadata !{i64 1533}
!1573 = metadata !{i64 1534}
!1574 = metadata !{i64 1535}
!1575 = metadata !{i64 1536}
!1576 = metadata !{i64 1537}
!1577 = metadata !{i64 1538}
!1578 = metadata !{i64 1539}
!1579 = metadata !{i64 1540}
!1580 = metadata !{i64 1541}
!1581 = metadata !{i64 1542}
!1582 = metadata !{i64 1543}
!1583 = metadata !{i64 1544}
!1584 = metadata !{i64 1545}
!1585 = metadata !{i64 1546}
!1586 = metadata !{i64 1547}
!1587 = metadata !{i64 1548}
!1588 = metadata !{i64 1549}
!1589 = metadata !{i64 1550}
!1590 = metadata !{i64 1551}
!1591 = metadata !{i64 1552}
!1592 = metadata !{i64 1553}
!1593 = metadata !{i64 1554}
!1594 = metadata !{i64 1555}
!1595 = metadata !{i64 1556}
!1596 = metadata !{i64 1557}
!1597 = metadata !{i64 1558}
!1598 = metadata !{i64 1559}
!1599 = metadata !{i64 1560}
!1600 = metadata !{i64 1561}
!1601 = metadata !{i64 1562}
!1602 = metadata !{i64 1563}
!1603 = metadata !{i64 1564}
!1604 = metadata !{i64 1565}
!1605 = metadata !{i64 1566}
!1606 = metadata !{i64 1567}
!1607 = metadata !{i64 1568}
!1608 = metadata !{i64 1569}
!1609 = metadata !{i64 1570}
!1610 = metadata !{i64 1571}
!1611 = metadata !{i64 1572}
!1612 = metadata !{i64 1573}
!1613 = metadata !{i64 1574}
!1614 = metadata !{i64 1575}
!1615 = metadata !{i64 1576}
!1616 = metadata !{i64 1577}
!1617 = metadata !{i64 1578}
!1618 = metadata !{i64 1579}
!1619 = metadata !{i64 1580}
!1620 = metadata !{i64 1581}
!1621 = metadata !{i64 1582}
!1622 = metadata !{i64 1583}
!1623 = metadata !{i64 1584}
!1624 = metadata !{i64 1585}
!1625 = metadata !{i64 1586}
!1626 = metadata !{i64 1587}
!1627 = metadata !{i64 1588}
!1628 = metadata !{i64 1589}
!1629 = metadata !{i64 1590}
!1630 = metadata !{i64 1591}
!1631 = metadata !{i64 1592}
!1632 = metadata !{i64 1593}
!1633 = metadata !{i64 1594}
!1634 = metadata !{i64 1595}
!1635 = metadata !{i64 1596}
!1636 = metadata !{i64 1597}
!1637 = metadata !{i64 1598}
!1638 = metadata !{i64 1599}
!1639 = metadata !{i64 1600}
!1640 = metadata !{i64 1601}
!1641 = metadata !{i64 1602}
!1642 = metadata !{i64 1603}
!1643 = metadata !{i64 1604}
!1644 = metadata !{i64 1605}
!1645 = metadata !{i64 1606}
!1646 = metadata !{i64 1607}
!1647 = metadata !{i64 1608}
!1648 = metadata !{i64 1609}
!1649 = metadata !{i64 1610}
!1650 = metadata !{metadata !1651, metadata !1652, i64 0}
!1651 = metadata !{metadata !"timeval", metadata !1652, i64 0, metadata !1652, i64 8}
!1652 = metadata !{metadata !"long", metadata !57, i64 0}
!1653 = metadata !{i64 1611}
!1654 = metadata !{i64 1612}
!1655 = metadata !{i64 1613}
!1656 = metadata !{metadata !1651, metadata !1652, i64 8}
!1657 = metadata !{i64 1614}
!1658 = metadata !{i64 1615}
!1659 = metadata !{i64 1616}
!1660 = metadata !{i64 1617}
!1661 = metadata !{i64 1618}
!1662 = metadata !{i64 1619}
!1663 = metadata !{i64 1620}
!1664 = metadata !{i64 1621}
!1665 = metadata !{i64 1622}
!1666 = metadata !{i64 1623}
!1667 = metadata !{i64 1624}
!1668 = metadata !{i64 1625}
!1669 = metadata !{i64 1626}
!1670 = metadata !{i64 1627}
!1671 = metadata !{i64 1628}
!1672 = metadata !{i64 1629}
!1673 = metadata !{i64 1630}
!1674 = metadata !{i64 1631}
!1675 = metadata !{i64 1632}
!1676 = metadata !{i64 1633}
!1677 = metadata !{i64 1634}
!1678 = metadata !{i64 1635}
!1679 = metadata !{i64 1636}
!1680 = metadata !{i64 1637}
!1681 = metadata !{i64 1638}
!1682 = metadata !{i64 1639}
!1683 = metadata !{i64 1640}
!1684 = metadata !{i64 1641}
!1685 = metadata !{i64 1642}
!1686 = metadata !{i64 1643}
!1687 = metadata !{i64 1644}
!1688 = metadata !{i64 1645}
!1689 = metadata !{i64 1646}
!1690 = metadata !{i64 1647}
!1691 = metadata !{i64 1648}
!1692 = metadata !{i64 1649}
!1693 = metadata !{i64 1650}
!1694 = metadata !{i64 1651}
!1695 = metadata !{i64 1652}
!1696 = metadata !{i64 1653}
!1697 = metadata !{i64 1654}
!1698 = metadata !{i64 1655}
!1699 = metadata !{i64 1656}
!1700 = metadata !{i64 1657}
!1701 = metadata !{i64 1658}
!1702 = metadata !{i64 1659}
!1703 = metadata !{i64 1660}
!1704 = metadata !{i64 1661}
!1705 = metadata !{i64 1662}
!1706 = metadata !{i64 1663}
!1707 = metadata !{i64 1664}
!1708 = metadata !{i64 1665}
!1709 = metadata !{i64 1666}
!1710 = metadata !{i64 1667}
!1711 = metadata !{i64 1668}
!1712 = metadata !{i64 1669}
!1713 = metadata !{i64 1670}
!1714 = metadata !{i64 1671}
!1715 = metadata !{i64 1672}
!1716 = metadata !{i64 1673}
!1717 = metadata !{i64 1674}
!1718 = metadata !{i64 1675}
!1719 = metadata !{i64 1676}
!1720 = metadata !{i64 1677}
!1721 = metadata !{i64 1678}
!1722 = metadata !{i64 1679}
!1723 = metadata !{i64 1680}
!1724 = metadata !{i64 1681}
!1725 = metadata !{i64 1682}
!1726 = metadata !{i64 1683}
!1727 = metadata !{i64 1684}
!1728 = metadata !{i64 1685}
!1729 = metadata !{i64 1686}
!1730 = metadata !{i64 1687}
!1731 = metadata !{i64 1688}
!1732 = metadata !{i64 1689}
!1733 = metadata !{i64 1690}
!1734 = metadata !{i64 1691}
!1735 = metadata !{i64 1692}
!1736 = metadata !{i64 1693}
!1737 = metadata !{i64 1694}
!1738 = metadata !{i64 1695}
!1739 = metadata !{i64 1696}
!1740 = metadata !{i64 1697}
!1741 = metadata !{i64 1698}
!1742 = metadata !{i64 1699}
!1743 = metadata !{i64 1700}
!1744 = metadata !{i64 1701}
!1745 = metadata !{i64 1702}
!1746 = metadata !{i64 1703}
!1747 = metadata !{i64 1704}
!1748 = metadata !{i64 1705}
!1749 = metadata !{i64 1706}
!1750 = metadata !{i64 1707}
!1751 = metadata !{i64 1708}
!1752 = metadata !{i64 1709}
!1753 = metadata !{i64 1710}
!1754 = metadata !{i64 1711}
!1755 = metadata !{i64 1712}
!1756 = metadata !{i64 1713}
!1757 = metadata !{i64 1714}
!1758 = metadata !{i64 1715}
!1759 = metadata !{i64 1716}
!1760 = metadata !{i64 1717}
!1761 = metadata !{i64 1718}
!1762 = metadata !{i64 1719}
!1763 = metadata !{i64 1720}
!1764 = metadata !{i64 1721}
!1765 = metadata !{i64 1722}
!1766 = metadata !{i64 1723}
!1767 = metadata !{i64 1724}
!1768 = metadata !{i64 1725}
!1769 = metadata !{i64 1726}
!1770 = metadata !{i64 1727}
!1771 = metadata !{i64 1728}
