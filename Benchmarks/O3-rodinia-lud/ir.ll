; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/rodinia-lud/fault injection/llfi-O3/lud.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__stopwatch_t = type { %struct.timeval, %struct.timeval }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.option = type { i8*, i32, i32*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str7 = private unnamed_addr constant [35 x i8] c"dismatch at (%d, %d): (o)%f (n)%f\0A\00", align 1
@str = private unnamed_addr constant [15 x i8] c">>>>>LU<<<<<<<\00"
@str8 = private unnamed_addr constant [19 x i8] c">>>>>result<<<<<<<\00"
@str9 = private unnamed_addr constant [18 x i8] c">>>>>input<<<<<<<\00"
@.str3 = private unnamed_addr constant [8 x i8] c"::vs:i:\00", align 1
@optarg = external global i8*
@stderr = external global %struct._IO_FILE*
@.str14 = private unnamed_addr constant [41 x i8] c"Currently not supported, use -i instead\0A\00", align 1
@.str25 = private unnamed_addr constant [47 x i8] c"Usage: %s [-v] [-s matrix_size|-i input_file]\0A\00", align 1
@.str36 = private unnamed_addr constant [16 x i8] c"invalid option\0A\00", align 1
@.str4 = private unnamed_addr constant [18 x i8] c"missing argument\0A\00", align 1
@optind = external global i32
@.str5 = private unnamed_addr constant [29 x i8] c"Reading matrix from file %s\0A\00", align 1
@.str6 = private unnamed_addr constant [34 x i8] c"error create matrix from file %s\0A\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str12 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@long_options = internal global <{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }> <{ { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0), i32 1, i32* null, i32 105, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 0), i32 1, i32* null, i32 115, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str12, i32 0, i32 0), i32 0, i32* null, i32 118, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* null, i32 0, i32* null, i32 0, [4 x i8] undef } }>, align 16
@str7 = private unnamed_addr constant [25 x i8] c"No input file specified!\00"
@str13 = private unnamed_addr constant [10 x i8] c"After LUD\00"
@str14 = private unnamed_addr constant [11 x i8] c"Before LUD\00"

; Function Attrs: nounwind uwtable
define void @stopwatch_start(%struct.__stopwatch_t* %sw) #0 {
  %1 = icmp eq %struct.__stopwatch_t* %sw, null, !llfi_index !1
  br i1 %1, label %6, label %2, !llfi_index !2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.__stopwatch_t* %sw, i64 0, i32 0, !llfi_index !3
  %4 = bitcast %struct.__stopwatch_t* %sw to i8*, !llfi_index !4
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 32, i32 8, i1 false), !llfi_index !5
  %5 = tail call i32 @gettimeofday(%struct.timeval* %3, %struct.timezone* null) #1, !llfi_index !6
  br label %6, !llfi_index !7

; <label>:6                                       ; preds = %2, %0
  ret void, !llfi_index !8
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #2

; Function Attrs: nounwind uwtable
define void @stopwatch_stop(%struct.__stopwatch_t* %sw) #0 {
  %1 = icmp eq %struct.__stopwatch_t* %sw, null, !llfi_index !9
  br i1 %1, label %5, label %2, !llfi_index !10

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.__stopwatch_t* %sw, i64 0, i32 1, !llfi_index !11
  %4 = tail call i32 @gettimeofday(%struct.timeval* %3, %struct.timezone* null) #1, !llfi_index !12
  br label %5, !llfi_index !13

; <label>:5                                       ; preds = %2, %0
  ret void, !llfi_index !14
}

; Function Attrs: nounwind readonly uwtable
define double @get_interval_by_sec(%struct.__stopwatch_t* readonly %sw) #3 {
  %1 = icmp eq %struct.__stopwatch_t* %sw, null, !llfi_index !15
  br i1 %1, label %17, label %2, !llfi_index !16

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.__stopwatch_t* %sw, i64 0, i32 1, i32 0, !llfi_index !17
  %4 = load i64* %3, align 8, !tbaa !18, !llfi_index !24
  %5 = getelementptr inbounds %struct.__stopwatch_t* %sw, i64 0, i32 0, i32 0, !llfi_index !25
  %6 = load i64* %5, align 8, !tbaa !26, !llfi_index !27
  %7 = sub nsw i64 %4, %6, !llfi_index !28
  %8 = sitofp i64 %7 to double, !llfi_index !29
  %9 = getelementptr inbounds %struct.__stopwatch_t* %sw, i64 0, i32 1, i32 1, !llfi_index !30
  %10 = load i64* %9, align 8, !tbaa !31, !llfi_index !32
  %11 = getelementptr inbounds %struct.__stopwatch_t* %sw, i64 0, i32 0, i32 1, !llfi_index !33
  %12 = load i64* %11, align 8, !tbaa !34, !llfi_index !35
  %13 = sub nsw i64 %10, %12, !llfi_index !36
  %14 = sitofp i64 %13 to double, !llfi_index !37
  %15 = fdiv double %14, 1.000000e+06, !llfi_index !38
  %16 = fadd double %8, %15, !llfi_index !39
  br label %17, !llfi_index !40

; <label>:17                                      ; preds = %2, %0
  %.0 = phi double [ %16, %2 ], [ 0.000000e+00, %0 ], !llfi_index !41
  ret double %.0, !llfi_index !42
}

; Function Attrs: nounwind readonly uwtable
define i32 @get_interval_by_usec(%struct.__stopwatch_t* readonly %sw) #3 {
  %1 = icmp eq %struct.__stopwatch_t* %sw, null, !llfi_index !43
  br i1 %1, label %16, label %2, !llfi_index !44

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.__stopwatch_t* %sw, i64 0, i32 1, i32 0, !llfi_index !45
  %4 = load i64* %3, align 8, !tbaa !18, !llfi_index !46
  %5 = getelementptr inbounds %struct.__stopwatch_t* %sw, i64 0, i32 0, i32 0, !llfi_index !47
  %6 = load i64* %5, align 8, !tbaa !26, !llfi_index !48
  %7 = sub nsw i64 %4, %6, !llfi_index !49
  %8 = mul nsw i64 %7, 1000000, !llfi_index !50
  %9 = getelementptr inbounds %struct.__stopwatch_t* %sw, i64 0, i32 1, i32 1, !llfi_index !51
  %10 = load i64* %9, align 8, !tbaa !31, !llfi_index !52
  %11 = getelementptr inbounds %struct.__stopwatch_t* %sw, i64 0, i32 0, i32 1, !llfi_index !53
  %12 = load i64* %11, align 8, !tbaa !34, !llfi_index !54
  %13 = sub i64 %10, %12, !llfi_index !55
  %14 = add nsw i64 %13, %8, !llfi_index !56
  %15 = trunc i64 %14 to i32, !llfi_index !57
  br label %16, !llfi_index !58

; <label>:16                                      ; preds = %2, %0
  %.0 = phi i32 [ %15, %2 ], [ 0, %0 ], !llfi_index !59
  ret i32 %.0, !llfi_index !60
}

; Function Attrs: nounwind uwtable
define i32 @create_matrix_from_file(float** nocapture %mp, i8* nocapture readonly %filename, i32* nocapture %size_p) #0 {
  %size = alloca i32, align 4, !llfi_index !61
  %1 = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #1, !llfi_index !62
  %2 = icmp eq %struct._IO_FILE* %1, null, !llfi_index !63
  br i1 %2, label %30, label %3, !llfi_index !64

; <label>:3                                       ; preds = %0
  %4 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32* %size) #1, !llfi_index !65
  %5 = load i32* %size, align 4, !tbaa !66, !llfi_index !68
  %6 = sext i32 %5 to i64, !llfi_index !69
  %7 = shl nsw i64 %6, 2, !llfi_index !70
  %8 = mul i64 %7, %6, !llfi_index !71
  %9 = call noalias i8* @malloc(i64 %8) #1, !llfi_index !72
  %10 = bitcast i8* %9 to float*, !llfi_index !73
  %11 = icmp eq i8* %9, null, !llfi_index !74
  br i1 %11, label %13, label %.preheader2, !llfi_index !75

.preheader2:                                      ; preds = %3
  %12 = icmp sgt i32 %5, 0, !llfi_index !76
  br i1 %12, label %.preheader, label %._crit_edge5, !llfi_index !77

; <label>:13                                      ; preds = %3
  %14 = call i32 @fclose(%struct._IO_FILE* %1) #1, !llfi_index !78
  br label %30, !llfi_index !79

.preheader:                                       ; preds = %._crit_edge, %.preheader2
  %15 = phi i32 [ %25, %._crit_edge ], [ %5, %.preheader2 ], !llfi_index !80
  %i.03 = phi i32 [ %26, %._crit_edge ], [ 0, %.preheader2 ], !llfi_index !81
  %16 = icmp sgt i32 %15, 0, !llfi_index !82
  br i1 %16, label %.lr.ph, label %._crit_edge, !llfi_index !83

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ], !llfi_index !84
  %17 = phi i32 [ %22, %.lr.ph ], [ %15, %.preheader ], !llfi_index !85
  %18 = mul nsw i32 %17, %i.03, !llfi_index !86
  %19 = sext i32 %18 to i64, !llfi_index !87
  %.sum = add i64 %19, %indvars.iv, !llfi_index !88
  %20 = getelementptr inbounds float* %10, i64 %.sum, !llfi_index !89
  %21 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), float* %20) #1, !llfi_index !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !91
  %22 = load i32* %size, align 4, !tbaa !66, !llfi_index !92
  %23 = trunc i64 %indvars.iv.next to i32, !llfi_index !93
  %24 = icmp slt i32 %23, %22, !llfi_index !94
  br i1 %24, label %.lr.ph, label %._crit_edge, !llfi_index !95

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %25 = phi i32 [ %15, %.preheader ], [ %22, %.lr.ph ], !llfi_index !96
  %26 = add nsw i32 %i.03, 1, !llfi_index !97
  %27 = icmp slt i32 %26, %25, !llfi_index !98
  br i1 %27, label %.preheader, label %._crit_edge5, !llfi_index !99

._crit_edge5:                                     ; preds = %._crit_edge, %.preheader2
  %28 = call i32 @fclose(%struct._IO_FILE* %1) #1, !llfi_index !100
  %29 = load i32* %size, align 4, !tbaa !66, !llfi_index !101
  store i32 %29, i32* %size_p, align 4, !tbaa !66, !llfi_index !102
  store float* %10, float** %mp, align 8, !tbaa !103, !llfi_index !105
  br label %30, !llfi_index !106

; <label>:30                                      ; preds = %._crit_edge5, %13, %0
  %.0 = phi i32 [ 1, %13 ], [ 0, %._crit_edge5 ], [ 1, %0 ], !llfi_index !107
  ret i32 %.0, !llfi_index !108
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @create_matrix_from_random(float** nocapture readnone %mp, i32 %size) #0 {
  %1 = tail call i64 @time(i64* null) #1, !llfi_index !109
  %2 = trunc i64 %1 to i32, !llfi_index !110
  tail call void @srand(i32 %2) #1, !llfi_index !111
  %3 = icmp sgt i32 %size, 0, !llfi_index !112
  br i1 %3, label %.lr.ph13.us, label %.preheader2.thread, !llfi_index !113

; <label>:4                                       ; preds = %10
  %5 = add nsw i32 %i.015.us, 1, !llfi_index !114
  %exitcond19 = icmp eq i32 %5, %size, !llfi_index !115
  br i1 %exitcond19, label %.preheader9, label %.lr.ph13.us, !llfi_index !116

; <label>:6                                       ; preds = %.lr.ph13.us, %10
  %j.012.us = phi i32 [ 0, %.lr.ph13.us ], [ %11, %10 ], !llfi_index !117
  %7 = icmp sgt i32 %i.015.us, %j.012.us, !llfi_index !118
  br i1 %7, label %8, label %10, !llfi_index !119

; <label>:8                                       ; preds = %6
  %9 = tail call i32 @rand() #1, !llfi_index !120
  br label %10, !llfi_index !121

; <label>:10                                      ; preds = %8, %6
  %11 = add nsw i32 %j.012.us, 1, !llfi_index !122
  %exitcond18 = icmp eq i32 %11, %size, !llfi_index !123
  br i1 %exitcond18, label %4, label %6, !llfi_index !124

.lr.ph13.us:                                      ; preds = %4, %0
  %i.015.us = phi i32 [ %5, %4 ], [ 0, %0 ], !llfi_index !125
  br label %6, !llfi_index !126

.preheader9:                                      ; preds = %4
  br i1 %3, label %.lr.ph7.us, label %.preheader2.thread, !llfi_index !127

; <label>:12                                      ; preds = %18
  %13 = add nsw i32 %j.110.us, 1, !llfi_index !128
  %exitcond17 = icmp eq i32 %13, %size, !llfi_index !129
  br i1 %exitcond17, label %.preheader2, label %.lr.ph7.us, !llfi_index !130

; <label>:14                                      ; preds = %.lr.ph7.us, %18
  %i.16.us = phi i32 [ 0, %.lr.ph7.us ], [ %19, %18 ], !llfi_index !131
  %15 = icmp sgt i32 %i.16.us, %j.110.us, !llfi_index !132
  br i1 %15, label %18, label %16, !llfi_index !133

; <label>:16                                      ; preds = %14
  %17 = tail call i32 @rand() #1, !llfi_index !134
  br label %18, !llfi_index !135

; <label>:18                                      ; preds = %16, %14
  %19 = add nsw i32 %i.16.us, 1, !llfi_index !136
  %exitcond = icmp eq i32 %19, %size, !llfi_index !137
  br i1 %exitcond, label %12, label %14, !llfi_index !138

.lr.ph7.us:                                       ; preds = %12, %.preheader9
  %j.110.us = phi i32 [ %13, %12 ], [ 0, %.preheader9 ], !llfi_index !139
  br label %14, !llfi_index !140

.preheader2:                                      ; preds = %12
  br i1 %3, label %.us-lcssa.us, label %.preheader2.thread, !llfi_index !141

.us-lcssa.us:                                     ; preds = %.preheader2
  tail call void @llvm.trap(), !llfi_index !142
  unreachable, !llfi_index !143

.preheader2.thread:                               ; preds = %.preheader2, %.preheader9, %0
  ret i32 0, !llfi_index !144
}

; Function Attrs: nounwind
declare void @srand(i32) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @rand() #2

; Function Attrs: nounwind uwtable
define void @matrix_multiply(float* nocapture readonly %inputa, float* nocapture readonly %inputb, float* nocapture %output, i32 %size) #0 {
  %1 = icmp sgt i32 %size, 0, !llfi_index !145
  br i1 %1, label %.preheader.lr.ph.split.us.preheader, label %._crit_edge6, !llfi_index !146

.preheader.lr.ph.split.us.preheader:              ; preds = %0
  %2 = add i32 %size, -1, !llfi_index !147
  %3 = zext i32 %2 to i64, !llfi_index !148
  %4 = add i64 %3, 1, !llfi_index !149
  %5 = zext i32 %size to i64, !llfi_index !150
  %6 = zext i32 %2 to i64, !llfi_index !151
  br label %.preheader.lr.ph.split.us, !llfi_index !152

.preheader.lr.ph.split.us:                        ; preds = %._crit_edge4, %.preheader.lr.ph.split.us.preheader
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %._crit_edge4 ], [ 0, %.preheader.lr.ph.split.us.preheader ], !llfi_index !153
  %7 = mul i64 %5, %indvars.iv11, !llfi_index !154
  %sext = shl i64 %7, 32, !llfi_index !155
  %8 = ashr exact i64 %sext, 32, !llfi_index !156
  %scevgep = getelementptr float* %output, i64 %8, !llfi_index !157
  %scevgep16.sum = add i64 %6, %8, !llfi_index !158
  %scevgep17 = getelementptr float* %output, i64 %scevgep16.sum, !llfi_index !159
  %9 = trunc i64 %indvars.iv11 to i32, !llfi_index !160
  %10 = mul nsw i32 %9, %size, !llfi_index !161
  %11 = sext i32 %10 to i64, !llfi_index !162
  br label %.lr.ph.us, !llfi_index !163

; <label>:12                                      ; preds = %middle.block, %scalar.ph
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !llfi_index !164
  %lftr.wideiv9 = trunc i64 %indvars.iv.next8 to i32, !llfi_index !165
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %size, !llfi_index !166
  br i1 %exitcond10, label %._crit_edge4, label %.lr.ph.us, !llfi_index !167

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %resume.val, %middle.block ], !llfi_index !168
  %13 = load float* %23, align 4, !tbaa !169, !llfi_index !171
  %14 = add nsw i64 %indvars.iv, %26, !llfi_index !172
  %15 = getelementptr inbounds float* %inputb, i64 %14, !llfi_index !173
  %16 = load float* %15, align 4, !tbaa !169, !llfi_index !174
  %17 = fmul float %13, %16, !llfi_index !175
  %18 = add nsw i64 %indvars.iv, %11, !llfi_index !176
  %19 = getelementptr inbounds float* %output, i64 %18, !llfi_index !177
  store float %17, float* %19, align 4, !tbaa !169, !llfi_index !178
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !179
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !180
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !llfi_index !181
  br i1 %exitcond, label %12, label %scalar.ph, !llvm.loop !182, !llfi_index !185

.lr.ph.us:                                        ; preds = %12, %.preheader.lr.ph.split.us
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %12 ], [ 0, %.preheader.lr.ph.split.us ], !llfi_index !186
  %20 = mul i64 %5, %indvars.iv7, !llfi_index !187
  %sext34 = shl i64 %20, 32, !llfi_index !188
  %21 = ashr exact i64 %sext34, 32, !llfi_index !189
  %22 = add nsw i64 %indvars.iv7, %11, !llfi_index !190
  %23 = getelementptr inbounds float* %inputa, i64 %22, !llfi_index !191
  %24 = trunc i64 %indvars.iv7 to i32, !llfi_index !192
  %25 = mul nsw i32 %24, %size, !llfi_index !193
  %26 = sext i32 %25 to i64, !llfi_index !194
  %end.idx = add i64 %3, 1, !llfi_index !195
  %n.vec = and i64 %4, 8589934588, !llfi_index !196
  %cmp.zero = icmp eq i64 %n.vec, 0, !llfi_index !197
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck, !llfi_index !198

vector.memcheck:                                  ; preds = %.lr.ph.us
  %scevgep21.sum = add i64 %6, %21, !llfi_index !199
  %scevgep22 = getelementptr float* %inputb, i64 %scevgep21.sum, !llfi_index !200
  %scevgep19 = getelementptr float* %inputb, i64 %21, !llfi_index !201
  %bound126 = icmp ule float* %scevgep19, %scevgep17, !llfi_index !202
  %bound025 = icmp ule float* %scevgep, %scevgep22, !llfi_index !203
  %bound1 = icmp ule float* %23, %scevgep17, !llfi_index !204
  %bound0 = icmp ule float* %scevgep, %23, !llfi_index !205
  %found.conflict27 = and i1 %bound025, %bound126, !llfi_index !206
  %found.conflict = and i1 %bound0, %bound1, !llfi_index !207
  %conflict.rdx = or i1 %found.conflict, %found.conflict27, !llfi_index !208
  br i1 %conflict.rdx, label %middle.block, label %vector.body, !llfi_index !209

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ], !llfi_index !210
  %27 = load float* %23, align 4, !tbaa !169, !llfi_index !211
  %28 = insertelement <4 x float> undef, float %27, i32 0, !llfi_index !212
  %29 = insertelement <4 x float> %28, float %27, i32 1, !llfi_index !213
  %30 = insertelement <4 x float> %29, float %27, i32 2, !llfi_index !214
  %31 = insertelement <4 x float> %30, float %27, i32 3, !llfi_index !215
  %32 = add i64 %index, %26, !llfi_index !216
  %33 = getelementptr inbounds float* %inputb, i64 %32, !llfi_index !217
  %34 = bitcast float* %33 to <4 x float>*, !llfi_index !218
  %wide.load = load <4 x float>* %34, align 4, !llfi_index !219
  %35 = fmul <4 x float> %31, %wide.load, !llfi_index !220
  %36 = add i64 %index, %11, !llfi_index !221
  %37 = getelementptr inbounds float* %output, i64 %36, !llfi_index !222
  %38 = bitcast float* %37 to <4 x float>*, !llfi_index !223
  store <4 x float> %35, <4 x float>* %38, align 4, !llfi_index !224
  %index.next = add i64 %index, 4, !llfi_index !225
  %39 = icmp eq i64 %index.next, %n.vec, !llfi_index !226
  br i1 %39, label %middle.block, label %vector.body, !llvm.loop !227, !llfi_index !228

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.us
  %resume.val = phi i64 [ 0, %.lr.ph.us ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ], !llfi_index !229
  %cmp.n = icmp eq i64 %end.idx, %resume.val, !llfi_index !230
  br i1 %cmp.n, label %12, label %scalar.ph, !llfi_index !231

._crit_edge4:                                     ; preds = %12
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !llfi_index !232
  %lftr.wideiv13 = trunc i64 %indvars.iv.next12 to i32, !llfi_index !233
  %exitcond14 = icmp eq i32 %lftr.wideiv13, %size, !llfi_index !234
  br i1 %exitcond14, label %._crit_edge6, label %.preheader.lr.ph.split.us, !llfi_index !235

._crit_edge6:                                     ; preds = %._crit_edge4, %0
  ret void, !llfi_index !236
}

; Function Attrs: nounwind uwtable
define i32 @lud_verify(float* nocapture readonly %m, float* nocapture readonly %lu, i32 %matrix_dim) #0 {
  %1 = mul nsw i32 %matrix_dim, %matrix_dim, !llfi_index !237
  %2 = zext i32 %1 to i64, !llfi_index !238
  %3 = shl nuw nsw i64 %2, 2, !llfi_index !239
  %4 = tail call noalias i8* @malloc(i64 %3) #1, !llfi_index !240
  %5 = bitcast i8* %4 to float*, !llfi_index !241
  %6 = icmp sgt i32 %matrix_dim, 0, !llfi_index !242
  br i1 %6, label %.preheader27.lr.ph, label %._crit_edge36.thread, !llfi_index !243

._crit_edge36.thread:                             ; preds = %0
  %puts81 = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str, i64 0, i64 0)), !llfi_index !244
  br label %._crit_edge26.thread, !llfi_index !245

.preheader27.lr.ph:                               ; preds = %._crit_edge34, %0
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %._crit_edge34 ], [ 0, %0 ], !llfi_index !246
  %indvars.iv61 = phi i32 [ %indvars.iv.next62, %._crit_edge34 ], [ -1, %0 ], !llfi_index !247
  %7 = trunc i64 %indvars.iv69 to i32, !llfi_index !248
  %8 = mul nsw i32 %7, %matrix_dim, !llfi_index !249
  %9 = sext i32 %8 to i64, !llfi_index !250
  br label %.preheader27, !llfi_index !251

.preheader27:                                     ; preds = %._crit_edge31, %.preheader27.lr.ph
  %indvars.iv65 = phi i64 [ 0, %.preheader27.lr.ph ], [ %indvars.iv.next66, %._crit_edge31 ], !llfi_index !252
  %indvars.iv59 = phi i32 [ -1, %.preheader27.lr.ph ], [ %indvars.iv.next60, %._crit_edge31 ], !llfi_index !253
  %10 = icmp sgt i32 %indvars.iv59, %indvars.iv61, !llfi_index !254
  %smax = select i1 %10, i32 %indvars.iv59, i32 %indvars.iv61, !llfi_index !255
  %11 = sub i32 0, %smax, !llfi_index !256
  %12 = trunc i64 %indvars.iv65 to i32, !llfi_index !257
  %13 = icmp slt i32 %7, %12, !llfi_index !258
  %14 = select i1 %13, i32 %7, i32 %12, !llfi_index !259
  %15 = icmp slt i32 %14, 0, !llfi_index !260
  br i1 %15, label %._crit_edge31, label %.lr.ph30, !llfi_index !261

.lr.ph30:                                         ; preds = %22, %.preheader27
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %22 ], [ 0, %.preheader27 ], !llfi_index !262
  %sum.029 = phi float [ %29, %22 ], [ 0.000000e+00, %.preheader27 ], !llfi_index !263
  %16 = trunc i64 %indvars.iv57 to i32, !llfi_index !264
  %17 = icmp eq i32 %7, %16, !llfi_index !265
  br i1 %17, label %22, label %18, !llfi_index !266

; <label>:18                                      ; preds = %.lr.ph30
  %19 = add nsw i64 %indvars.iv57, %9, !llfi_index !267
  %20 = getelementptr inbounds float* %lu, i64 %19, !llfi_index !268
  %21 = load float* %20, align 4, !tbaa !169, !llfi_index !269
  br label %22, !llfi_index !270

; <label>:22                                      ; preds = %18, %.lr.ph30
  %l.0 = phi float [ %21, %18 ], [ 1.000000e+00, %.lr.ph30 ], !llfi_index !271
  %23 = mul nsw i32 %16, %matrix_dim, !llfi_index !272
  %24 = add nsw i32 %23, %12, !llfi_index !273
  %25 = sext i32 %24 to i64, !llfi_index !274
  %26 = getelementptr inbounds float* %lu, i64 %25, !llfi_index !275
  %27 = load float* %26, align 4, !tbaa !169, !llfi_index !276
  %28 = fmul float %l.0, %27, !llfi_index !277
  %29 = fadd float %sum.029, %28, !llfi_index !278
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1, !llfi_index !279
  %lftr.wideiv63 = trunc i64 %indvars.iv.next58 to i32, !llfi_index !280
  %exitcond64 = icmp eq i32 %lftr.wideiv63, %11, !llfi_index !281
  br i1 %exitcond64, label %._crit_edge31, label %.lr.ph30, !llfi_index !282

._crit_edge31:                                    ; preds = %22, %.preheader27
  %sum.0.lcssa = phi float [ 0.000000e+00, %.preheader27 ], [ %29, %22 ], !llfi_index !283
  %30 = add nsw i64 %indvars.iv65, %9, !llfi_index !284
  %31 = getelementptr inbounds float* %5, i64 %30, !llfi_index !285
  store float %sum.0.lcssa, float* %31, align 4, !tbaa !169, !llfi_index !286
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1, !llfi_index !287
  %indvars.iv.next60 = add i32 %indvars.iv59, -1, !llfi_index !288
  %lftr.wideiv67 = trunc i64 %indvars.iv.next66 to i32, !llfi_index !289
  %exitcond68 = icmp eq i32 %lftr.wideiv67, %matrix_dim, !llfi_index !290
  br i1 %exitcond68, label %._crit_edge34, label %.preheader27, !llfi_index !291

._crit_edge34:                                    ; preds = %._crit_edge31
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1, !llfi_index !292
  %indvars.iv.next62 = add i32 %indvars.iv61, -1, !llfi_index !293
  %lftr.wideiv71 = trunc i64 %indvars.iv.next70 to i32, !llfi_index !294
  %exitcond72 = icmp eq i32 %lftr.wideiv71, %matrix_dim, !llfi_index !295
  br i1 %exitcond72, label %._crit_edge36, label %.preheader27.lr.ph, !llfi_index !296

._crit_edge36:                                    ; preds = %._crit_edge34
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str, i64 0, i64 0)), !llfi_index !297
  br i1 %6, label %.lr.ph23, label %._crit_edge26.thread, !llfi_index !298

.lr.ph23:                                         ; preds = %._crit_edge24, %._crit_edge36
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %._crit_edge24 ], [ 0, %._crit_edge36 ], !llfi_index !299
  %32 = trunc i64 %indvars.iv53 to i32, !llfi_index !300
  %33 = mul nsw i32 %32, %matrix_dim, !llfi_index !301
  %34 = sext i32 %33 to i64, !llfi_index !302
  br label %35, !llfi_index !303

; <label>:35                                      ; preds = %35, %.lr.ph23
  %indvars.iv49 = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next50, %35 ], !llfi_index !304
  %36 = add nsw i64 %indvars.iv49, %34, !llfi_index !305
  %37 = getelementptr inbounds float* %lu, i64 %36, !llfi_index !306
  %38 = load float* %37, align 4, !tbaa !169, !llfi_index !307
  %39 = fpext float %38 to double, !llfi_index !308
  %40 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double %39) #1, !llfi_index !309
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1, !llfi_index !310
  %lftr.wideiv51 = trunc i64 %indvars.iv.next50 to i32, !llfi_index !311
  %exitcond52 = icmp eq i32 %lftr.wideiv51, %matrix_dim, !llfi_index !312
  br i1 %exitcond52, label %._crit_edge24, label %35, !llfi_index !313

._crit_edge24:                                    ; preds = %35
  %putchar4 = tail call i32 @putchar(i32 10) #1, !llfi_index !314
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1, !llfi_index !315
  %lftr.wideiv55 = trunc i64 %indvars.iv.next54 to i32, !llfi_index !316
  %exitcond56 = icmp eq i32 %lftr.wideiv55, %matrix_dim, !llfi_index !317
  br i1 %exitcond56, label %._crit_edge26, label %.lr.ph23, !llfi_index !318

._crit_edge26.thread:                             ; preds = %._crit_edge36, %._crit_edge36.thread
  %puts182 = tail call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str8, i64 0, i64 0)), !llfi_index !319
  br label %._crit_edge20, !llfi_index !320

._crit_edge26:                                    ; preds = %._crit_edge24
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str8, i64 0, i64 0)), !llfi_index !321
  br i1 %6, label %.lr.ph17, label %._crit_edge20.thread, !llfi_index !322

._crit_edge20.thread:                             ; preds = %._crit_edge26
  %puts283 = tail call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str9, i64 0, i64 0)), !llfi_index !323
  br label %._crit_edge9, !llfi_index !324

.lr.ph17:                                         ; preds = %._crit_edge18, %._crit_edge26
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %._crit_edge18 ], [ 0, %._crit_edge26 ], !llfi_index !325
  %41 = trunc i64 %indvars.iv45 to i32, !llfi_index !326
  %42 = mul nsw i32 %41, %matrix_dim, !llfi_index !327
  %43 = sext i32 %42 to i64, !llfi_index !328
  br label %44, !llfi_index !329

; <label>:44                                      ; preds = %44, %.lr.ph17
  %indvars.iv41 = phi i64 [ 0, %.lr.ph17 ], [ %indvars.iv.next42, %44 ], !llfi_index !330
  %45 = add nsw i64 %indvars.iv41, %43, !llfi_index !331
  %46 = getelementptr inbounds float* %5, i64 %45, !llfi_index !332
  %47 = load float* %46, align 4, !tbaa !169, !llfi_index !333
  %48 = fpext float %47 to double, !llfi_index !334
  %49 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double %48) #1, !llfi_index !335
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1, !llfi_index !336
  %lftr.wideiv43 = trunc i64 %indvars.iv.next42 to i32, !llfi_index !337
  %exitcond44 = icmp eq i32 %lftr.wideiv43, %matrix_dim, !llfi_index !338
  br i1 %exitcond44, label %._crit_edge18, label %44, !llfi_index !339

._crit_edge18:                                    ; preds = %44
  %putchar3 = tail call i32 @putchar(i32 10) #1, !llfi_index !340
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1, !llfi_index !341
  %lftr.wideiv47 = trunc i64 %indvars.iv.next46 to i32, !llfi_index !342
  %exitcond48 = icmp eq i32 %lftr.wideiv47, %matrix_dim, !llfi_index !343
  br i1 %exitcond48, label %._crit_edge20, label %.lr.ph17, !llfi_index !344

._crit_edge20:                                    ; preds = %._crit_edge18, %._crit_edge26.thread
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str9, i64 0, i64 0)), !llfi_index !345
  br i1 %6, label %.lr.ph12, label %._crit_edge9, !llfi_index !346

.lr.ph12:                                         ; preds = %._crit_edge13, %._crit_edge20
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %._crit_edge13 ], [ 0, %._crit_edge20 ], !llfi_index !347
  %50 = trunc i64 %indvars.iv37 to i32, !llfi_index !348
  %51 = mul nsw i32 %50, %matrix_dim, !llfi_index !349
  %52 = sext i32 %51 to i64, !llfi_index !350
  br label %72, !llfi_index !351

.preheader6:                                      ; preds = %._crit_edge13
  br i1 %6, label %.lr.ph.us, label %._crit_edge9, !llfi_index !352

; <label>:53                                      ; preds = %68
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1, !llfi_index !353
  %lftr.wideiv79 = trunc i64 %indvars.iv.next78 to i32, !llfi_index !354
  %exitcond80 = icmp eq i32 %lftr.wideiv79, %matrix_dim, !llfi_index !355
  br i1 %exitcond80, label %._crit_edge9, label %.lr.ph.us, !llfi_index !356

; <label>:54                                      ; preds = %.lr.ph.us, %68
  %indvars.iv73 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next74, %68 ], !llfi_index !357
  %55 = add nsw i64 %indvars.iv73, %71, !llfi_index !358
  %56 = getelementptr inbounds float* %m, i64 %55, !llfi_index !359
  %57 = load float* %56, align 4, !tbaa !169, !llfi_index !360
  %58 = getelementptr inbounds float* %5, i64 %55, !llfi_index !361
  %59 = load float* %58, align 4, !tbaa !169, !llfi_index !362
  %60 = fsub float %57, %59, !llfi_index !363
  %fabsf.us = tail call float @fabsf(float %60) #7, !llfi_index !364
  %61 = fpext float %fabsf.us to double, !llfi_index !365
  %62 = fcmp ogt double %61, 1.000000e-04, !llfi_index !366
  br i1 %62, label %63, label %68, !llfi_index !367

; <label>:63                                      ; preds = %54
  %64 = fpext float %57 to double, !llfi_index !368
  %65 = fpext float %59 to double, !llfi_index !369
  %66 = trunc i64 %indvars.iv73 to i32, !llfi_index !370
  %67 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str7, i64 0, i64 0), i32 %69, i32 %66, double %64, double %65) #1, !llfi_index !371
  br label %68, !llfi_index !372

; <label>:68                                      ; preds = %63, %54
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1, !llfi_index !373
  %lftr.wideiv75 = trunc i64 %indvars.iv.next74 to i32, !llfi_index !374
  %exitcond76 = icmp eq i32 %lftr.wideiv75, %matrix_dim, !llfi_index !375
  br i1 %exitcond76, label %53, label %54, !llfi_index !376

.lr.ph.us:                                        ; preds = %53, %.preheader6
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %53 ], [ 0, %.preheader6 ], !llfi_index !377
  %69 = trunc i64 %indvars.iv77 to i32, !llfi_index !378
  %70 = mul nsw i32 %69, %matrix_dim, !llfi_index !379
  %71 = sext i32 %70 to i64, !llfi_index !380
  br label %54, !llfi_index !381

; <label>:72                                      ; preds = %72, %.lr.ph12
  %indvars.iv = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next, %72 ], !llfi_index !382
  %73 = add nsw i64 %indvars.iv, %52, !llfi_index !383
  %74 = getelementptr inbounds float* %m, i64 %73, !llfi_index !384
  %75 = load float* %74, align 4, !tbaa !169, !llfi_index !385
  %76 = fpext float %75 to double, !llfi_index !386
  %77 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double %76) #1, !llfi_index !387
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !388
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !389
  %exitcond = icmp eq i32 %lftr.wideiv, %matrix_dim, !llfi_index !390
  br i1 %exitcond, label %._crit_edge13, label %72, !llfi_index !391

._crit_edge13:                                    ; preds = %72
  %putchar = tail call i32 @putchar(i32 10) #1, !llfi_index !392
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !llfi_index !393
  %lftr.wideiv39 = trunc i64 %indvars.iv.next38 to i32, !llfi_index !394
  %exitcond40 = icmp eq i32 %lftr.wideiv39, %matrix_dim, !llfi_index !395
  br i1 %exitcond40, label %.preheader6, label %.lr.ph12, !llfi_index !396

._crit_edge9:                                     ; preds = %53, %.preheader6, %._crit_edge20, %._crit_edge20.thread
  tail call void @free(i8* %4) #1, !llfi_index !397
  ret i32 undef, !llfi_index !398
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind uwtable
define void @matrix_duplicate(float* nocapture readonly %src, float** nocapture %dst, i32 %matrix_dim) #0 {
  %1 = shl i32 %matrix_dim, 2, !llfi_index !399
  %2 = mul i32 %1, %matrix_dim, !llfi_index !400
  %3 = sext i32 %2 to i64, !llfi_index !401
  %4 = tail call noalias i8* @malloc(i64 %3) #1, !llfi_index !402
  %5 = bitcast i8* %4 to float*, !llfi_index !403
  %6 = bitcast float* %src to i8*, !llfi_index !404
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %6, i64 %3, i32 4, i1 false), !llfi_index !405
  store float* %5, float** %dst, align 8, !tbaa !103, !llfi_index !406
  ret void, !llfi_index !407
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @print_matrix(float* nocapture readonly %m, i32 %matrix_dim) #0 {
  %1 = icmp sgt i32 %matrix_dim, 0, !llfi_index !408
  br i1 %1, label %.lr.ph, label %._crit_edge3, !llfi_index !409

.lr.ph:                                           ; preds = %._crit_edge, %0
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %._crit_edge ], [ 0, %0 ], !llfi_index !410
  %2 = trunc i64 %indvars.iv4 to i32, !llfi_index !411
  %3 = mul nsw i32 %2, %matrix_dim, !llfi_index !412
  %4 = sext i32 %3 to i64, !llfi_index !413
  br label %5, !llfi_index !414

; <label>:5                                       ; preds = %5, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %5 ], !llfi_index !415
  %6 = add nsw i64 %indvars.iv, %4, !llfi_index !416
  %7 = getelementptr inbounds float* %m, i64 %6, !llfi_index !417
  %8 = load float* %7, align 4, !tbaa !169, !llfi_index !418
  %9 = fpext float %8 to double, !llfi_index !419
  %10 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double %9) #1, !llfi_index !420
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !421
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !422
  %exitcond = icmp eq i32 %lftr.wideiv, %matrix_dim, !llfi_index !423
  br i1 %exitcond, label %._crit_edge, label %5, !llfi_index !424

._crit_edge:                                      ; preds = %5
  %putchar = tail call i32 @putchar(i32 10) #1, !llfi_index !425
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !llfi_index !426
  %lftr.wideiv6 = trunc i64 %indvars.iv.next5 to i32, !llfi_index !427
  %exitcond7 = icmp eq i32 %lftr.wideiv6, %matrix_dim, !llfi_index !428
  br i1 %exitcond7, label %._crit_edge3, label %.lr.ph, !llfi_index !429

._crit_edge3:                                     ; preds = %._crit_edge, %0
  ret void, !llfi_index !430
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i32 @putchar(i32) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %matrix_dim = alloca i32, align 4, !llfi_index !431
  %option_index = alloca i32, align 4, !llfi_index !432
  %m = alloca float*, align 8, !llfi_index !433
  %mm = alloca float*, align 8, !llfi_index !434
  %sw = alloca %struct.__stopwatch_t, align 8, !llfi_index !435
  store i32 32, i32* %matrix_dim, align 4, !tbaa !66, !llfi_index !436
  store i32 0, i32* %option_index, align 4, !tbaa !66, !llfi_index !437
  br label %.outer, !llfi_index !438

.outer:                                           ; preds = %.backedge, %0
  %.ph = phi i32 [ 0, %0 ], [ 1, %.backedge ], !llfi_index !439
  %input_file.0.ph = phi i8* [ null, %0 ], [ %input_file.0.ph5, %.backedge ], !llfi_index !440
  br label %.outer4, !llfi_index !441

.outer4:                                          ; preds = %2, %.outer
  %input_file.0.ph5 = phi i8* [ %3, %2 ], [ %input_file.0.ph, %.outer ], !llfi_index !442
  br label %.backedge, !llfi_index !443

.backedge:                                        ; preds = %16, %13, %.outer4
  %1 = call i32 @getopt_long(i32 %argc, i8** %argv, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), %struct.option* bitcast (<{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }>* @long_options to %struct.option*), i32* %option_index) #1, !llfi_index !444
  switch i32 %1, label %19 [
    i32 -1, label %23
    i32 105, label %2
    i32 118, label %.outer
    i32 115, label %4
    i32 63, label %13
    i32 58, label %16
  ], !llfi_index !445

; <label>:2                                       ; preds = %.backedge
  %3 = load i8** @optarg, align 8, !tbaa !103, !llfi_index !446
  br label %.outer4, !llfi_index !447

; <label>:4                                       ; preds = %.backedge
  %5 = load i8** @optarg, align 8, !tbaa !103, !llfi_index !448
  %6 = call i64 @strtol(i8* nocapture %5, i8** null, i32 10) #1, !llfi_index !449
  %7 = trunc i64 %6 to i32, !llfi_index !450
  store i32 %7, i32* %matrix_dim, align 4, !tbaa !66, !llfi_index !451
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !103, !llfi_index !452
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str14, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %8) #8, !llfi_index !453
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !103, !llfi_index !454
  %11 = load i8** %argv, align 8, !tbaa !103, !llfi_index !455
  %12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([47 x i8]* @.str25, i64 0, i64 0), i8* %11) #9, !llfi_index !456
  call void @exit(i32 1) #5, !llfi_index !457
  unreachable, !llfi_index !458

; <label>:13                                      ; preds = %.backedge
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !103, !llfi_index !459
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str36, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %14) #8, !llfi_index !460
  br label %.backedge, !llfi_index !461

; <label>:16                                      ; preds = %.backedge
  %17 = load %struct._IO_FILE** @stderr, align 8, !tbaa !103, !llfi_index !462
  %18 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str4, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %17) #8, !llfi_index !463
  br label %.backedge, !llfi_index !464

; <label>:19                                      ; preds = %.backedge
  %20 = load %struct._IO_FILE** @stderr, align 8, !tbaa !103, !llfi_index !465
  %21 = load i8** %argv, align 8, !tbaa !103, !llfi_index !466
  %22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([47 x i8]* @.str25, i64 0, i64 0), i8* %21) #9, !llfi_index !467
  call void @exit(i32 1) #5, !llfi_index !468
  unreachable, !llfi_index !469

; <label>:23                                      ; preds = %.backedge
  %24 = load i32* @optind, align 4, !tbaa !66, !llfi_index !470
  %25 = icmp slt i32 %24, %argc, !llfi_index !471
  %26 = icmp eq i32 %24, 1, !llfi_index !472
  %or.cond = or i1 %25, %26, !llfi_index !473
  br i1 %or.cond, label %27, label %31, !llfi_index !474

; <label>:27                                      ; preds = %23
  %28 = load %struct._IO_FILE** @stderr, align 8, !tbaa !103, !llfi_index !475
  %29 = load i8** %argv, align 8, !tbaa !103, !llfi_index !476
  %30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([47 x i8]* @.str25, i64 0, i64 0), i8* %29) #9, !llfi_index !477
  call void @exit(i32 1) #5, !llfi_index !478
  unreachable, !llfi_index !479

; <label>:31                                      ; preds = %23
  %32 = icmp eq i8* %input_file.0.ph5, null, !llfi_index !480
  br i1 %32, label %40, label %33, !llfi_index !481

; <label>:33                                      ; preds = %31
  %34 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str5, i64 0, i64 0), i8* %input_file.0.ph5) #1, !llfi_index !482
  %35 = call i32 @create_matrix_from_file(float** %m, i8* %input_file.0.ph5, i32* %matrix_dim) #1, !llfi_index !483
  %36 = icmp eq i32 %35, 0, !llfi_index !484
  br i1 %36, label %41, label %37, !llfi_index !485

; <label>:37                                      ; preds = %33
  store float* null, float** %m, align 8, !tbaa !103, !llfi_index !486
  %38 = load %struct._IO_FILE** @stderr, align 8, !tbaa !103, !llfi_index !487
  %39 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([34 x i8]* @.str6, i64 0, i64 0), i8* %input_file.0.ph5) #9, !llfi_index !488
  call void @exit(i32 1) #5, !llfi_index !489
  unreachable, !llfi_index !490

; <label>:40                                      ; preds = %31
  %puts = call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str7, i64 0, i64 0)), !llfi_index !491
  call void @exit(i32 1) #5, !llfi_index !492
  unreachable, !llfi_index !493

; <label>:41                                      ; preds = %33
  %42 = icmp eq i32 %.ph, 0, !llfi_index !494
  br i1 %42, label %.critedge, label %43, !llfi_index !495

; <label>:43                                      ; preds = %41
  %puts3 = call i32 @puts(i8* getelementptr inbounds ([11 x i8]* @str14, i64 0, i64 0)), !llfi_index !496
  %44 = load float** %m, align 8, !tbaa !103, !llfi_index !497
  %45 = load i32* %matrix_dim, align 4, !tbaa !66, !llfi_index !498
  call void @print_matrix(float* %44, i32 %45) #1, !llfi_index !499
  %46 = load float** %m, align 8, !tbaa !103, !llfi_index !500
  %47 = load i32* %matrix_dim, align 4, !tbaa !66, !llfi_index !501
  call void @matrix_duplicate(float* %46, float** %mm, i32 %47) #1, !llfi_index !502
  call void @stopwatch_start(%struct.__stopwatch_t* %sw) #1, !llfi_index !503
  %48 = load float** %m, align 8, !tbaa !103, !llfi_index !504
  %49 = load i32* %matrix_dim, align 4, !tbaa !66, !llfi_index !505
  call void @lud_base(float* %48, i32 %49) #1, !llfi_index !506
  call void @stopwatch_stop(%struct.__stopwatch_t* %sw) #1, !llfi_index !507
  %puts2 = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str13, i64 0, i64 0)), !llfi_index !508
  %50 = load float** %m, align 8, !tbaa !103, !llfi_index !509
  %51 = load i32* %matrix_dim, align 4, !tbaa !66, !llfi_index !510
  call void @print_matrix(float* %50, i32 %51) #1, !llfi_index !511
  %52 = load float** %mm, align 8, !tbaa !103, !llfi_index !512
  %53 = bitcast float* %52 to i8*, !llfi_index !513
  call void @free(i8* %53) #1, !llfi_index !514
  br label %56, !llfi_index !515

.critedge:                                        ; preds = %41
  call void @stopwatch_start(%struct.__stopwatch_t* %sw) #1, !llfi_index !516
  %54 = load float** %m, align 8, !tbaa !103, !llfi_index !517
  %55 = load i32* %matrix_dim, align 4, !tbaa !66, !llfi_index !518
  call void @lud_base(float* %54, i32 %55) #1, !llfi_index !519
  call void @stopwatch_stop(%struct.__stopwatch_t* %sw) #1, !llfi_index !520
  br label %56, !llfi_index !521

; <label>:56                                      ; preds = %.critedge, %43
  %57 = load float** %m, align 8, !tbaa !103, !llfi_index !522
  %58 = bitcast float* %57 to i8*, !llfi_index !523
  call void @free(i8* %58) #1, !llfi_index !524
  ret i32 0, !llfi_index !525
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind uwtable
define void @lud_base(float* nocapture %a, i32 %size) #0 {
  %1 = icmp sgt i32 %size, 0, !llfi_index !526
  br i1 %1, label %.lr.ph4.preheader, label %._crit_edge16, !llfi_index !527

.lr.ph4.preheader:                                ; preds = %0
  %2 = add i32 %size, -1, !llfi_index !528
  %3 = zext i32 %2 to i64, !llfi_index !529
  br label %.lr.ph4, !llfi_index !530

.loopexit:                                        ; preds = %.preheader, %37, %._crit_edge5
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1, !llfi_index !531
  %exitcond53 = icmp eq i32 %29, %size, !llfi_index !532
  br i1 %exitcond53, label %._crit_edge16, label %.lr.ph4, !llfi_index !533

.lr.ph4:                                          ; preds = %.loopexit, %.lr.ph4.preheader
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %.loopexit ], [ 0, %.lr.ph4.preheader ], !llfi_index !534
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.loopexit ], [ 1, %.lr.ph4.preheader ], !llfi_index !535
  %indvars.iv40 = phi i32 [ %indvars.iv.next41, %.loopexit ], [ 0, %.lr.ph4.preheader ], !llfi_index !536
  %4 = sub i64 %3, %indvars.iv50, !llfi_index !537
  %5 = and i64 %4, 4294967295, !llfi_index !538
  %6 = add i64 %5, 1, !llfi_index !539
  %7 = trunc i64 %indvars.iv50 to i32, !llfi_index !540
  %8 = icmp sgt i32 %7, 0, !llfi_index !541
  br i1 %8, label %.lr.ph4.split.us, label %.lr.ph4..lr.ph4.split_crit_edge.preheader, !llfi_index !542

.lr.ph4..lr.ph4.split_crit_edge.preheader:        ; preds = %.lr.ph4
  %end.idx = add i64 %6, %indvars.iv50, !llfi_index !543
  %fold = add i64 %4, 1, !llfi_index !544
  %n.mod.vf = and i64 %fold, 31, !llfi_index !545
  %n.vec = sub i64 %6, %n.mod.vf, !llfi_index !546
  %end.idx.rnd.down = add i64 %n.vec, %indvars.iv50, !llfi_index !547
  %cmp.zero = icmp eq i64 %6, %n.mod.vf, !llfi_index !548
  br i1 %cmp.zero, label %middle.block, label %vector.body, !llfi_index !549

vector.body:                                      ; preds = %vector.body, %.lr.ph4..lr.ph4.split_crit_edge.preheader
  %index = phi i64 [ %index.next, %vector.body ], [ %indvars.iv50, %.lr.ph4..lr.ph4.split_crit_edge.preheader ], !llfi_index !550
  %index.next = add i64 %index, 32, !llfi_index !551
  %9 = icmp eq i64 %index.next, %end.idx.rnd.down, !llfi_index !552
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !553, !llfi_index !554

middle.block:                                     ; preds = %vector.body, %.lr.ph4..lr.ph4.split_crit_edge.preheader
  %resume.val = phi i64 [ %indvars.iv50, %.lr.ph4..lr.ph4.split_crit_edge.preheader ], [ %end.idx.rnd.down, %vector.body ], !llfi_index !555
  %cmp.n = icmp eq i64 %end.idx, %resume.val, !llfi_index !556
  br i1 %cmp.n, label %._crit_edge5, label %.lr.ph4..lr.ph4.split_crit_edge, !llfi_index !557

.lr.ph4.split.us:                                 ; preds = %.lr.ph4
  %10 = mul nsw i32 %7, %size, !llfi_index !558
  %11 = sext i32 %10 to i64, !llfi_index !559
  br label %.lr.ph.us, !llfi_index !560

; <label>:12                                      ; preds = %13
  store float %25, float* %27, align 4, !tbaa !169, !llfi_index !561
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1, !llfi_index !562
  %lftr.wideiv35 = trunc i64 %indvars.iv.next34 to i32, !llfi_index !563
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %size, !llfi_index !564
  br i1 %exitcond36, label %._crit_edge5, label %.lr.ph.us, !llfi_index !565

; <label>:13                                      ; preds = %.lr.ph.us, %13
  %indvars.iv25 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next26, %13 ], !llfi_index !566
  %sum.02.us = phi float [ %28, %.lr.ph.us ], [ %25, %13 ], !llfi_index !567
  %14 = add nsw i64 %indvars.iv25, %11, !llfi_index !568
  %15 = getelementptr inbounds float* %a, i64 %14, !llfi_index !569
  %16 = load float* %15, align 4, !tbaa !169, !llfi_index !570
  %17 = trunc i64 %indvars.iv25 to i32, !llfi_index !571
  %18 = mul nsw i32 %17, %size, !llfi_index !572
  %19 = trunc i64 %indvars.iv33 to i32, !llfi_index !573
  %20 = add nsw i32 %18, %19, !llfi_index !574
  %21 = sext i32 %20 to i64, !llfi_index !575
  %22 = getelementptr inbounds float* %a, i64 %21, !llfi_index !576
  %23 = load float* %22, align 4, !tbaa !169, !llfi_index !577
  %24 = fmul float %16, %23, !llfi_index !578
  %25 = fsub float %sum.02.us, %24, !llfi_index !579
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1, !llfi_index !580
  %lftr.wideiv29 = trunc i64 %indvars.iv.next26 to i32, !llfi_index !581
  %exitcond30 = icmp eq i32 %lftr.wideiv29, %indvars.iv40, !llfi_index !582
  br i1 %exitcond30, label %12, label %13, !llfi_index !583

.lr.ph.us:                                        ; preds = %12, %.lr.ph4.split.us
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %12 ], [ %indvars.iv50, %.lr.ph4.split.us ], !llfi_index !584
  %26 = add nsw i64 %indvars.iv33, %11, !llfi_index !585
  %27 = getelementptr inbounds float* %a, i64 %26, !llfi_index !586
  %28 = load float* %27, align 4, !tbaa !169, !llfi_index !587
  br label %13, !llfi_index !588

.lr.ph4..lr.ph4.split_crit_edge:                  ; preds = %.lr.ph4..lr.ph4.split_crit_edge, %middle.block
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %.lr.ph4..lr.ph4.split_crit_edge ], [ %resume.val, %middle.block ], !llfi_index !589
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !llfi_index !590
  %lftr.wideiv = trunc i64 %indvars.iv.next18 to i32, !llfi_index !591
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !llfi_index !592
  br i1 %exitcond, label %._crit_edge5, label %.lr.ph4..lr.ph4.split_crit_edge, !llvm.loop !593, !llfi_index !594

._crit_edge5:                                     ; preds = %.lr.ph4..lr.ph4.split_crit_edge, %12, %middle.block
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1, !llfi_index !595
  %indvars.iv.next41 = add nuw nsw i32 %indvars.iv40, 1, !llfi_index !596
  %29 = trunc i64 %indvars.iv.next51 to i32, !llfi_index !597
  %30 = icmp slt i32 %29, %size, !llfi_index !598
  br i1 %30, label %.lr.ph14, label %.loopexit, !llfi_index !599

.lr.ph14:                                         ; preds = %._crit_edge5
  %31 = trunc i64 %indvars.iv50 to i32, !llfi_index !600
  %32 = icmp sgt i32 %31, 0, !llfi_index !601
  %33 = mul nsw i32 %31, %size, !llfi_index !602
  %34 = add nsw i32 %33, %31, !llfi_index !603
  %35 = sext i32 %34 to i64, !llfi_index !604
  %36 = getelementptr inbounds float* %a, i64 %35, !llfi_index !605
  br i1 %32, label %.lr.ph9.us, label %.preheader, !llfi_index !606

; <label>:37                                      ; preds = %40
  %38 = load float* %36, align 4, !tbaa !169, !llfi_index !607
  %39 = fdiv float %51, %38, !llfi_index !608
  store float %39, float* %56, align 4, !tbaa !169, !llfi_index !609
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !llfi_index !610
  %lftr.wideiv48 = trunc i64 %indvars.iv.next47 to i32, !llfi_index !611
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %size, !llfi_index !612
  br i1 %exitcond49, label %.loopexit, label %.lr.ph9.us, !llfi_index !613

; <label>:40                                      ; preds = %.lr.ph9.us, %40
  %indvars.iv38 = phi i64 [ 0, %.lr.ph9.us ], [ %indvars.iv.next39, %40 ], !llfi_index !614
  %sum.17.us = phi float [ %57, %.lr.ph9.us ], [ %51, %40 ], !llfi_index !615
  %41 = add nsw i64 %indvars.iv38, %58, !llfi_index !616
  %42 = getelementptr inbounds float* %a, i64 %41, !llfi_index !617
  %43 = load float* %42, align 4, !tbaa !169, !llfi_index !618
  %44 = trunc i64 %indvars.iv38 to i32, !llfi_index !619
  %45 = mul nsw i32 %44, %size, !llfi_index !620
  %46 = add nsw i32 %45, %31, !llfi_index !621
  %47 = sext i32 %46 to i64, !llfi_index !622
  %48 = getelementptr inbounds float* %a, i64 %47, !llfi_index !623
  %49 = load float* %48, align 4, !tbaa !169, !llfi_index !624
  %50 = fmul float %43, %49, !llfi_index !625
  %51 = fsub float %sum.17.us, %50, !llfi_index !626
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1, !llfi_index !627
  %lftr.wideiv42 = trunc i64 %indvars.iv.next39 to i32, !llfi_index !628
  %exitcond43 = icmp eq i32 %lftr.wideiv42, %indvars.iv40, !llfi_index !629
  br i1 %exitcond43, label %37, label %40, !llfi_index !630

.lr.ph9.us:                                       ; preds = %37, %.lr.ph14
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %37 ], [ %indvars.iv44, %.lr.ph14 ], !llfi_index !631
  %52 = trunc i64 %indvars.iv46 to i32, !llfi_index !632
  %53 = mul nsw i32 %52, %size, !llfi_index !633
  %54 = add nsw i32 %53, %31, !llfi_index !634
  %55 = sext i32 %54 to i64, !llfi_index !635
  %56 = getelementptr inbounds float* %a, i64 %55, !llfi_index !636
  %57 = load float* %56, align 4, !tbaa !169, !llfi_index !637
  %58 = sext i32 %53 to i64, !llfi_index !638
  br label %40, !llfi_index !639

.preheader:                                       ; preds = %.preheader, %.lr.ph14
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %.preheader ], [ %indvars.iv44, %.lr.ph14 ], !llfi_index !640
  %59 = trunc i64 %indvars.iv21 to i32, !llfi_index !641
  %60 = mul nsw i32 %59, %size, !llfi_index !642
  %61 = add nsw i32 %60, %31, !llfi_index !643
  %62 = sext i32 %61 to i64, !llfi_index !644
  %63 = getelementptr inbounds float* %a, i64 %62, !llfi_index !645
  %64 = load float* %63, align 4, !tbaa !169, !llfi_index !646
  %65 = load float* %36, align 4, !tbaa !169, !llfi_index !647
  %66 = fdiv float %64, %65, !llfi_index !648
  store float %66, float* %63, align 4, !tbaa !169, !llfi_index !649
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !llfi_index !650
  %lftr.wideiv23 = trunc i64 %indvars.iv.next22 to i32, !llfi_index !651
  %exitcond24 = icmp eq i32 %lftr.wideiv23, %size, !llfi_index !652
  br i1 %exitcond24, label %.loopexit, label %.preheader, !llfi_index !653

._crit_edge16:                                    ; preds = %.loopexit, %0
  ret void, !llfi_index !654
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { cold }
attributes #9 = { cold nounwind }

!llvm.ident = !{!0, !0, !0}

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
!18 = metadata !{metadata !19, metadata !21, i64 16}
!19 = metadata !{metadata !"__stopwatch_t", metadata !20, i64 0, metadata !20, i64 16}
!20 = metadata !{metadata !"timeval", metadata !21, i64 0, metadata !21, i64 8}
!21 = metadata !{metadata !"long", metadata !22, i64 0}
!22 = metadata !{metadata !"omnipotent char", metadata !23, i64 0}
!23 = metadata !{metadata !"Simple C/C++ TBAA"}
!24 = metadata !{i64 18}
!25 = metadata !{i64 19}
!26 = metadata !{metadata !19, metadata !21, i64 0}
!27 = metadata !{i64 20}
!28 = metadata !{i64 21}
!29 = metadata !{i64 22}
!30 = metadata !{i64 23}
!31 = metadata !{metadata !19, metadata !21, i64 24}
!32 = metadata !{i64 24}
!33 = metadata !{i64 25}
!34 = metadata !{metadata !19, metadata !21, i64 8}
!35 = metadata !{i64 26}
!36 = metadata !{i64 27}
!37 = metadata !{i64 28}
!38 = metadata !{i64 29}
!39 = metadata !{i64 30}
!40 = metadata !{i64 31}
!41 = metadata !{i64 32}
!42 = metadata !{i64 33}
!43 = metadata !{i64 34}
!44 = metadata !{i64 35}
!45 = metadata !{i64 36}
!46 = metadata !{i64 37}
!47 = metadata !{i64 38}
!48 = metadata !{i64 39}
!49 = metadata !{i64 40}
!50 = metadata !{i64 41}
!51 = metadata !{i64 42}
!52 = metadata !{i64 43}
!53 = metadata !{i64 44}
!54 = metadata !{i64 45}
!55 = metadata !{i64 46}
!56 = metadata !{i64 47}
!57 = metadata !{i64 48}
!58 = metadata !{i64 49}
!59 = metadata !{i64 50}
!60 = metadata !{i64 51}
!61 = metadata !{i64 52}
!62 = metadata !{i64 53}
!63 = metadata !{i64 54}
!64 = metadata !{i64 55}
!65 = metadata !{i64 56}
!66 = metadata !{metadata !67, metadata !67, i64 0}
!67 = metadata !{metadata !"int", metadata !22, i64 0}
!68 = metadata !{i64 57}
!69 = metadata !{i64 58}
!70 = metadata !{i64 59}
!71 = metadata !{i64 60}
!72 = metadata !{i64 61}
!73 = metadata !{i64 62}
!74 = metadata !{i64 63}
!75 = metadata !{i64 64}
!76 = metadata !{i64 65}
!77 = metadata !{i64 66}
!78 = metadata !{i64 67}
!79 = metadata !{i64 68}
!80 = metadata !{i64 69}
!81 = metadata !{i64 70}
!82 = metadata !{i64 71}
!83 = metadata !{i64 72}
!84 = metadata !{i64 73}
!85 = metadata !{i64 74}
!86 = metadata !{i64 75}
!87 = metadata !{i64 76}
!88 = metadata !{i64 77}
!89 = metadata !{i64 78}
!90 = metadata !{i64 79}
!91 = metadata !{i64 80}
!92 = metadata !{i64 81}
!93 = metadata !{i64 82}
!94 = metadata !{i64 83}
!95 = metadata !{i64 84}
!96 = metadata !{i64 85}
!97 = metadata !{i64 86}
!98 = metadata !{i64 87}
!99 = metadata !{i64 88}
!100 = metadata !{i64 89}
!101 = metadata !{i64 90}
!102 = metadata !{i64 91}
!103 = metadata !{metadata !104, metadata !104, i64 0}
!104 = metadata !{metadata !"any pointer", metadata !22, i64 0}
!105 = metadata !{i64 92}
!106 = metadata !{i64 93}
!107 = metadata !{i64 94}
!108 = metadata !{i64 95}
!109 = metadata !{i64 96}
!110 = metadata !{i64 97}
!111 = metadata !{i64 98}
!112 = metadata !{i64 99}
!113 = metadata !{i64 100}
!114 = metadata !{i64 101}
!115 = metadata !{i64 102}
!116 = metadata !{i64 103}
!117 = metadata !{i64 104}
!118 = metadata !{i64 105}
!119 = metadata !{i64 106}
!120 = metadata !{i64 107}
!121 = metadata !{i64 108}
!122 = metadata !{i64 109}
!123 = metadata !{i64 110}
!124 = metadata !{i64 111}
!125 = metadata !{i64 112}
!126 = metadata !{i64 113}
!127 = metadata !{i64 114}
!128 = metadata !{i64 115}
!129 = metadata !{i64 116}
!130 = metadata !{i64 117}
!131 = metadata !{i64 118}
!132 = metadata !{i64 119}
!133 = metadata !{i64 120}
!134 = metadata !{i64 121}
!135 = metadata !{i64 122}
!136 = metadata !{i64 123}
!137 = metadata !{i64 124}
!138 = metadata !{i64 125}
!139 = metadata !{i64 126}
!140 = metadata !{i64 127}
!141 = metadata !{i64 128}
!142 = metadata !{i64 129}
!143 = metadata !{i64 130}
!144 = metadata !{i64 131}
!145 = metadata !{i64 132}
!146 = metadata !{i64 133}
!147 = metadata !{i64 134}
!148 = metadata !{i64 135}
!149 = metadata !{i64 136}
!150 = metadata !{i64 137}
!151 = metadata !{i64 138}
!152 = metadata !{i64 139}
!153 = metadata !{i64 140}
!154 = metadata !{i64 141}
!155 = metadata !{i64 142}
!156 = metadata !{i64 143}
!157 = metadata !{i64 144}
!158 = metadata !{i64 145}
!159 = metadata !{i64 146}
!160 = metadata !{i64 147}
!161 = metadata !{i64 148}
!162 = metadata !{i64 149}
!163 = metadata !{i64 150}
!164 = metadata !{i64 151}
!165 = metadata !{i64 152}
!166 = metadata !{i64 153}
!167 = metadata !{i64 154}
!168 = metadata !{i64 155}
!169 = metadata !{metadata !170, metadata !170, i64 0}
!170 = metadata !{metadata !"float", metadata !22, i64 0}
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
!182 = metadata !{metadata !182, metadata !183, metadata !184}
!183 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!184 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!185 = metadata !{i64 167}
!186 = metadata !{i64 168}
!187 = metadata !{i64 169}
!188 = metadata !{i64 170}
!189 = metadata !{i64 171}
!190 = metadata !{i64 172}
!191 = metadata !{i64 173}
!192 = metadata !{i64 174}
!193 = metadata !{i64 175}
!194 = metadata !{i64 176}
!195 = metadata !{i64 177}
!196 = metadata !{i64 178}
!197 = metadata !{i64 179}
!198 = metadata !{i64 180}
!199 = metadata !{i64 181}
!200 = metadata !{i64 182}
!201 = metadata !{i64 183}
!202 = metadata !{i64 184}
!203 = metadata !{i64 185}
!204 = metadata !{i64 186}
!205 = metadata !{i64 187}
!206 = metadata !{i64 188}
!207 = metadata !{i64 189}
!208 = metadata !{i64 190}
!209 = metadata !{i64 191}
!210 = metadata !{i64 192}
!211 = metadata !{i64 193}
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
!223 = metadata !{i64 205}
!224 = metadata !{i64 206}
!225 = metadata !{i64 207}
!226 = metadata !{i64 208}
!227 = metadata !{metadata !227, metadata !183, metadata !184}
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
!238 = metadata !{i64 219}
!239 = metadata !{i64 220}
!240 = metadata !{i64 221}
!241 = metadata !{i64 222}
!242 = metadata !{i64 223}
!243 = metadata !{i64 224}
!244 = metadata !{i64 225}
!245 = metadata !{i64 226}
!246 = metadata !{i64 227}
!247 = metadata !{i64 228}
!248 = metadata !{i64 229}
!249 = metadata !{i64 230}
!250 = metadata !{i64 231}
!251 = metadata !{i64 232}
!252 = metadata !{i64 233}
!253 = metadata !{i64 234}
!254 = metadata !{i64 235}
!255 = metadata !{i64 236}
!256 = metadata !{i64 237}
!257 = metadata !{i64 238}
!258 = metadata !{i64 239}
!259 = metadata !{i64 240}
!260 = metadata !{i64 241}
!261 = metadata !{i64 242}
!262 = metadata !{i64 243}
!263 = metadata !{i64 244}
!264 = metadata !{i64 245}
!265 = metadata !{i64 246}
!266 = metadata !{i64 247}
!267 = metadata !{i64 248}
!268 = metadata !{i64 249}
!269 = metadata !{i64 250}
!270 = metadata !{i64 251}
!271 = metadata !{i64 252}
!272 = metadata !{i64 253}
!273 = metadata !{i64 254}
!274 = metadata !{i64 255}
!275 = metadata !{i64 256}
!276 = metadata !{i64 257}
!277 = metadata !{i64 258}
!278 = metadata !{i64 259}
!279 = metadata !{i64 260}
!280 = metadata !{i64 261}
!281 = metadata !{i64 262}
!282 = metadata !{i64 263}
!283 = metadata !{i64 264}
!284 = metadata !{i64 265}
!285 = metadata !{i64 266}
!286 = metadata !{i64 267}
!287 = metadata !{i64 268}
!288 = metadata !{i64 269}
!289 = metadata !{i64 270}
!290 = metadata !{i64 271}
!291 = metadata !{i64 272}
!292 = metadata !{i64 273}
!293 = metadata !{i64 274}
!294 = metadata !{i64 275}
!295 = metadata !{i64 276}
!296 = metadata !{i64 277}
!297 = metadata !{i64 278}
!298 = metadata !{i64 279}
!299 = metadata !{i64 280}
!300 = metadata !{i64 281}
!301 = metadata !{i64 282}
!302 = metadata !{i64 283}
!303 = metadata !{i64 284}
!304 = metadata !{i64 285}
!305 = metadata !{i64 286}
!306 = metadata !{i64 287}
!307 = metadata !{i64 288}
!308 = metadata !{i64 289}
!309 = metadata !{i64 290}
!310 = metadata !{i64 291}
!311 = metadata !{i64 292}
!312 = metadata !{i64 293}
!313 = metadata !{i64 294}
!314 = metadata !{i64 295}
!315 = metadata !{i64 296}
!316 = metadata !{i64 297}
!317 = metadata !{i64 298}
!318 = metadata !{i64 299}
!319 = metadata !{i64 300}
!320 = metadata !{i64 301}
!321 = metadata !{i64 302}
!322 = metadata !{i64 303}
!323 = metadata !{i64 304}
!324 = metadata !{i64 305}
!325 = metadata !{i64 306}
!326 = metadata !{i64 307}
!327 = metadata !{i64 308}
!328 = metadata !{i64 309}
!329 = metadata !{i64 310}
!330 = metadata !{i64 311}
!331 = metadata !{i64 312}
!332 = metadata !{i64 313}
!333 = metadata !{i64 314}
!334 = metadata !{i64 315}
!335 = metadata !{i64 316}
!336 = metadata !{i64 317}
!337 = metadata !{i64 318}
!338 = metadata !{i64 319}
!339 = metadata !{i64 320}
!340 = metadata !{i64 321}
!341 = metadata !{i64 322}
!342 = metadata !{i64 323}
!343 = metadata !{i64 324}
!344 = metadata !{i64 325}
!345 = metadata !{i64 326}
!346 = metadata !{i64 327}
!347 = metadata !{i64 328}
!348 = metadata !{i64 329}
!349 = metadata !{i64 330}
!350 = metadata !{i64 331}
!351 = metadata !{i64 332}
!352 = metadata !{i64 333}
!353 = metadata !{i64 334}
!354 = metadata !{i64 335}
!355 = metadata !{i64 336}
!356 = metadata !{i64 337}
!357 = metadata !{i64 338}
!358 = metadata !{i64 339}
!359 = metadata !{i64 340}
!360 = metadata !{i64 341}
!361 = metadata !{i64 342}
!362 = metadata !{i64 343}
!363 = metadata !{i64 344}
!364 = metadata !{i64 345}
!365 = metadata !{i64 346}
!366 = metadata !{i64 347}
!367 = metadata !{i64 348}
!368 = metadata !{i64 349}
!369 = metadata !{i64 350}
!370 = metadata !{i64 351}
!371 = metadata !{i64 352}
!372 = metadata !{i64 353}
!373 = metadata !{i64 354}
!374 = metadata !{i64 355}
!375 = metadata !{i64 356}
!376 = metadata !{i64 357}
!377 = metadata !{i64 358}
!378 = metadata !{i64 359}
!379 = metadata !{i64 360}
!380 = metadata !{i64 361}
!381 = metadata !{i64 362}
!382 = metadata !{i64 363}
!383 = metadata !{i64 364}
!384 = metadata !{i64 365}
!385 = metadata !{i64 366}
!386 = metadata !{i64 367}
!387 = metadata !{i64 368}
!388 = metadata !{i64 369}
!389 = metadata !{i64 370}
!390 = metadata !{i64 371}
!391 = metadata !{i64 372}
!392 = metadata !{i64 373}
!393 = metadata !{i64 374}
!394 = metadata !{i64 375}
!395 = metadata !{i64 376}
!396 = metadata !{i64 377}
!397 = metadata !{i64 378}
!398 = metadata !{i64 379}
!399 = metadata !{i64 380}
!400 = metadata !{i64 381}
!401 = metadata !{i64 382}
!402 = metadata !{i64 383}
!403 = metadata !{i64 384}
!404 = metadata !{i64 385}
!405 = metadata !{i64 386}
!406 = metadata !{i64 387}
!407 = metadata !{i64 388}
!408 = metadata !{i64 389}
!409 = metadata !{i64 390}
!410 = metadata !{i64 391}
!411 = metadata !{i64 392}
!412 = metadata !{i64 393}
!413 = metadata !{i64 394}
!414 = metadata !{i64 395}
!415 = metadata !{i64 396}
!416 = metadata !{i64 397}
!417 = metadata !{i64 398}
!418 = metadata !{i64 399}
!419 = metadata !{i64 400}
!420 = metadata !{i64 401}
!421 = metadata !{i64 402}
!422 = metadata !{i64 403}
!423 = metadata !{i64 404}
!424 = metadata !{i64 405}
!425 = metadata !{i64 406}
!426 = metadata !{i64 407}
!427 = metadata !{i64 408}
!428 = metadata !{i64 409}
!429 = metadata !{i64 410}
!430 = metadata !{i64 411}
!431 = metadata !{i64 412}
!432 = metadata !{i64 413}
!433 = metadata !{i64 414}
!434 = metadata !{i64 415}
!435 = metadata !{i64 416}
!436 = metadata !{i64 417}
!437 = metadata !{i64 418}
!438 = metadata !{i64 419}
!439 = metadata !{i64 420}
!440 = metadata !{i64 421}
!441 = metadata !{i64 422}
!442 = metadata !{i64 423}
!443 = metadata !{i64 424}
!444 = metadata !{i64 425}
!445 = metadata !{i64 426}
!446 = metadata !{i64 427}
!447 = metadata !{i64 428}
!448 = metadata !{i64 429}
!449 = metadata !{i64 430}
!450 = metadata !{i64 431}
!451 = metadata !{i64 432}
!452 = metadata !{i64 433}
!453 = metadata !{i64 434}
!454 = metadata !{i64 435}
!455 = metadata !{i64 436}
!456 = metadata !{i64 437}
!457 = metadata !{i64 438}
!458 = metadata !{i64 439}
!459 = metadata !{i64 440}
!460 = metadata !{i64 441}
!461 = metadata !{i64 442}
!462 = metadata !{i64 443}
!463 = metadata !{i64 444}
!464 = metadata !{i64 445}
!465 = metadata !{i64 446}
!466 = metadata !{i64 447}
!467 = metadata !{i64 448}
!468 = metadata !{i64 449}
!469 = metadata !{i64 450}
!470 = metadata !{i64 451}
!471 = metadata !{i64 452}
!472 = metadata !{i64 453}
!473 = metadata !{i64 454}
!474 = metadata !{i64 455}
!475 = metadata !{i64 456}
!476 = metadata !{i64 457}
!477 = metadata !{i64 458}
!478 = metadata !{i64 459}
!479 = metadata !{i64 460}
!480 = metadata !{i64 461}
!481 = metadata !{i64 462}
!482 = metadata !{i64 463}
!483 = metadata !{i64 464}
!484 = metadata !{i64 465}
!485 = metadata !{i64 466}
!486 = metadata !{i64 467}
!487 = metadata !{i64 468}
!488 = metadata !{i64 469}
!489 = metadata !{i64 470}
!490 = metadata !{i64 471}
!491 = metadata !{i64 472}
!492 = metadata !{i64 473}
!493 = metadata !{i64 474}
!494 = metadata !{i64 475}
!495 = metadata !{i64 476}
!496 = metadata !{i64 477}
!497 = metadata !{i64 478}
!498 = metadata !{i64 479}
!499 = metadata !{i64 480}
!500 = metadata !{i64 481}
!501 = metadata !{i64 482}
!502 = metadata !{i64 483}
!503 = metadata !{i64 484}
!504 = metadata !{i64 485}
!505 = metadata !{i64 486}
!506 = metadata !{i64 487}
!507 = metadata !{i64 488}
!508 = metadata !{i64 489}
!509 = metadata !{i64 490}
!510 = metadata !{i64 491}
!511 = metadata !{i64 492}
!512 = metadata !{i64 493}
!513 = metadata !{i64 494}
!514 = metadata !{i64 495}
!515 = metadata !{i64 496}
!516 = metadata !{i64 497}
!517 = metadata !{i64 498}
!518 = metadata !{i64 499}
!519 = metadata !{i64 500}
!520 = metadata !{i64 501}
!521 = metadata !{i64 502}
!522 = metadata !{i64 503}
!523 = metadata !{i64 504}
!524 = metadata !{i64 505}
!525 = metadata !{i64 506}
!526 = metadata !{i64 507}
!527 = metadata !{i64 508}
!528 = metadata !{i64 509}
!529 = metadata !{i64 510}
!530 = metadata !{i64 511}
!531 = metadata !{i64 512}
!532 = metadata !{i64 513}
!533 = metadata !{i64 514}
!534 = metadata !{i64 515}
!535 = metadata !{i64 516}
!536 = metadata !{i64 517}
!537 = metadata !{i64 518}
!538 = metadata !{i64 519}
!539 = metadata !{i64 520}
!540 = metadata !{i64 521}
!541 = metadata !{i64 522}
!542 = metadata !{i64 523}
!543 = metadata !{i64 524}
!544 = metadata !{i64 525}
!545 = metadata !{i64 526}
!546 = metadata !{i64 527}
!547 = metadata !{i64 528}
!548 = metadata !{i64 529}
!549 = metadata !{i64 530}
!550 = metadata !{i64 531}
!551 = metadata !{i64 532}
!552 = metadata !{i64 533}
!553 = metadata !{metadata !553, metadata !183, metadata !184}
!554 = metadata !{i64 534}
!555 = metadata !{i64 535}
!556 = metadata !{i64 536}
!557 = metadata !{i64 537}
!558 = metadata !{i64 538}
!559 = metadata !{i64 539}
!560 = metadata !{i64 540}
!561 = metadata !{i64 541}
!562 = metadata !{i64 542}
!563 = metadata !{i64 543}
!564 = metadata !{i64 544}
!565 = metadata !{i64 545}
!566 = metadata !{i64 546}
!567 = metadata !{i64 547}
!568 = metadata !{i64 548}
!569 = metadata !{i64 549}
!570 = metadata !{i64 550}
!571 = metadata !{i64 551}
!572 = metadata !{i64 552}
!573 = metadata !{i64 553}
!574 = metadata !{i64 554}
!575 = metadata !{i64 555}
!576 = metadata !{i64 556}
!577 = metadata !{i64 557}
!578 = metadata !{i64 558}
!579 = metadata !{i64 559}
!580 = metadata !{i64 560}
!581 = metadata !{i64 561}
!582 = metadata !{i64 562}
!583 = metadata !{i64 563}
!584 = metadata !{i64 564}
!585 = metadata !{i64 565}
!586 = metadata !{i64 566}
!587 = metadata !{i64 567}
!588 = metadata !{i64 568}
!589 = metadata !{i64 569}
!590 = metadata !{i64 570}
!591 = metadata !{i64 571}
!592 = metadata !{i64 572}
!593 = metadata !{metadata !593, metadata !183, metadata !184}
!594 = metadata !{i64 573}
!595 = metadata !{i64 574}
!596 = metadata !{i64 575}
!597 = metadata !{i64 576}
!598 = metadata !{i64 577}
!599 = metadata !{i64 578}
!600 = metadata !{i64 579}
!601 = metadata !{i64 580}
!602 = metadata !{i64 581}
!603 = metadata !{i64 582}
!604 = metadata !{i64 583}
!605 = metadata !{i64 584}
!606 = metadata !{i64 585}
!607 = metadata !{i64 586}
!608 = metadata !{i64 587}
!609 = metadata !{i64 588}
!610 = metadata !{i64 589}
!611 = metadata !{i64 590}
!612 = metadata !{i64 591}
!613 = metadata !{i64 592}
!614 = metadata !{i64 593}
!615 = metadata !{i64 594}
!616 = metadata !{i64 595}
!617 = metadata !{i64 596}
!618 = metadata !{i64 597}
!619 = metadata !{i64 598}
!620 = metadata !{i64 599}
!621 = metadata !{i64 600}
!622 = metadata !{i64 601}
!623 = metadata !{i64 602}
!624 = metadata !{i64 603}
!625 = metadata !{i64 604}
!626 = metadata !{i64 605}
!627 = metadata !{i64 606}
!628 = metadata !{i64 607}
!629 = metadata !{i64 608}
!630 = metadata !{i64 609}
!631 = metadata !{i64 610}
!632 = metadata !{i64 611}
!633 = metadata !{i64 612}
!634 = metadata !{i64 613}
!635 = metadata !{i64 614}
!636 = metadata !{i64 615}
!637 = metadata !{i64 616}
!638 = metadata !{i64 617}
!639 = metadata !{i64 618}
!640 = metadata !{i64 619}
!641 = metadata !{i64 620}
!642 = metadata !{i64 621}
!643 = metadata !{i64 622}
!644 = metadata !{i64 623}
!645 = metadata !{i64 624}
!646 = metadata !{i64 625}
!647 = metadata !{i64 626}
!648 = metadata !{i64 627}
!649 = metadata !{i64 628}
!650 = metadata !{i64 629}
!651 = metadata !{i64 630}
!652 = metadata !{i64 631}
!653 = metadata !{i64 632}
!654 = metadata !{i64 633}
