; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/COMPLETED BENCHMARKS/rodinia-lud/fault injection/llfi-O1/lud.ll'
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
@.str3 = private unnamed_addr constant [16 x i8] c">>>>>LU<<<<<<<\0A\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str5 = private unnamed_addr constant [20 x i8] c">>>>>result<<<<<<<\0A\00", align 1
@.str6 = private unnamed_addr constant [19 x i8] c">>>>>input<<<<<<<\0A\00", align 1
@.str7 = private unnamed_addr constant [35 x i8] c"dismatch at (%d, %d): (o)%f (n)%f\0A\00", align 1
@str = private unnamed_addr constant [15 x i8] c">>>>>LU<<<<<<<\00"
@str8 = private unnamed_addr constant [19 x i8] c">>>>>result<<<<<<<\00"
@str9 = private unnamed_addr constant [18 x i8] c">>>>>input<<<<<<<\00"
@.str8 = private unnamed_addr constant [8 x i8] c"::vs:i:\00", align 1
@optarg = external global i8*
@stderr = external global %struct._IO_FILE*
@.str19 = private unnamed_addr constant [41 x i8] c"Currently not supported, use -i instead\0A\00", align 1
@.str210 = private unnamed_addr constant [47 x i8] c"Usage: %s [-v] [-s matrix_size|-i input_file]\0A\00", align 1
@.str311 = private unnamed_addr constant [16 x i8] c"invalid option\0A\00", align 1
@.str412 = private unnamed_addr constant [18 x i8] c"missing argument\0A\00", align 1
@optind = external global i32
@.str513 = private unnamed_addr constant [29 x i8] c"Reading matrix from file %s\0A\00", align 1
@.str614 = private unnamed_addr constant [34 x i8] c"error create matrix from file %s\0A\00", align 1
@.str715 = private unnamed_addr constant [26 x i8] c"No input file specified!\0A\00", align 1
@.str816 = private unnamed_addr constant [12 x i8] c"Before LUD\0A\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"After LUD\0A\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str12 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@long_options = internal global <{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }> <{ { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0), i32 1, i32* null, i32 105, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 0), i32 1, i32* null, i32 115, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str12, i32 0, i32 0), i32 0, i32* null, i32 118, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* null, i32 0, i32* null, i32 0, [4 x i8] undef } }>, align 16
@str17 = private unnamed_addr constant [25 x i8] c"No input file specified!\00"
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
  br i1 %2, label %31, label %3, !llfi_index !64

; <label>:3                                       ; preds = %0
  %4 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32* %size) #1, !llfi_index !65
  %5 = load i32* %size, align 4, !tbaa !66, !llfi_index !68
  %6 = sext i32 %5 to i64, !llfi_index !69
  %7 = shl nsw i64 %6, 2, !llfi_index !70
  %8 = mul i64 %7, %6, !llfi_index !71
  %9 = call noalias i8* @malloc(i64 %8) #1, !llfi_index !72
  %10 = bitcast i8* %9 to float*, !llfi_index !73
  %11 = icmp eq i8* %9, null, !llfi_index !74
  br i1 %11, label %14, label %.preheader2, !llfi_index !75

.preheader2:                                      ; preds = %3
  %12 = load i32* %size, align 4, !tbaa !66, !llfi_index !76
  %13 = icmp sgt i32 %12, 0, !llfi_index !77
  br i1 %13, label %.preheader, label %._crit_edge5, !llfi_index !78

; <label>:14                                      ; preds = %3
  %15 = call i32 @fclose(%struct._IO_FILE* %1) #1, !llfi_index !79
  br label %31, !llfi_index !80

.preheader:                                       ; preds = %._crit_edge, %.preheader2
  %16 = phi i32 [ %12, %.preheader2 ], [ %27, %._crit_edge ], !llfi_index !81
  %i.03 = phi i32 [ 0, %.preheader2 ], [ %26, %._crit_edge ], !llfi_index !82
  %17 = icmp sgt i32 %16, 0, !llfi_index !83
  br i1 %17, label %.lr.ph, label %._crit_edge, !llfi_index !84

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ], !llfi_index !85
  %18 = phi i32 [ %23, %.lr.ph ], [ %16, %.preheader ], !llfi_index !86
  %19 = mul nsw i32 %18, %i.03, !llfi_index !87
  %20 = sext i32 %19 to i64, !llfi_index !88
  %.sum = add i64 %20, %indvars.iv, !llfi_index !89
  %21 = getelementptr inbounds float* %10, i64 %.sum, !llfi_index !90
  %22 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), float* %21) #1, !llfi_index !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !92
  %23 = load i32* %size, align 4, !tbaa !66, !llfi_index !93
  %24 = trunc i64 %indvars.iv.next to i32, !llfi_index !94
  %25 = icmp slt i32 %24, %23, !llfi_index !95
  br i1 %25, label %.lr.ph, label %._crit_edge, !llfi_index !96

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %26 = add nsw i32 %i.03, 1, !llfi_index !97
  %27 = load i32* %size, align 4, !tbaa !66, !llfi_index !98
  %28 = icmp slt i32 %26, %27, !llfi_index !99
  br i1 %28, label %.preheader, label %._crit_edge5, !llfi_index !100

._crit_edge5:                                     ; preds = %._crit_edge, %.preheader2
  %29 = call i32 @fclose(%struct._IO_FILE* %1) #1, !llfi_index !101
  %30 = load i32* %size, align 4, !tbaa !66, !llfi_index !102
  store i32 %30, i32* %size_p, align 4, !tbaa !66, !llfi_index !103
  store float* %10, float** %mp, align 8, !tbaa !104, !llfi_index !106
  br label %31, !llfi_index !107

; <label>:31                                      ; preds = %._crit_edge5, %14, %0
  %.0 = phi i32 [ 1, %14 ], [ 0, %._crit_edge5 ], [ 1, %0 ], !llfi_index !108
  ret i32 %.0, !llfi_index !109
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
  %1 = tail call i64 @time(i64* null) #1, !llfi_index !110
  %2 = trunc i64 %1 to i32, !llfi_index !111
  tail call void @srand(i32 %2) #1, !llfi_index !112
  %3 = icmp sgt i32 %size, 0, !llfi_index !113
  br i1 %3, label %.preheader11, label %._crit_edge4, !llfi_index !114

.preheader11:                                     ; preds = %._crit_edge14, %0
  %i.015 = phi i32 [ %10, %._crit_edge14 ], [ 0, %0 ], !llfi_index !115
  br label %.lr.ph13, !llfi_index !116

.preheader9:                                      ; preds = %._crit_edge14
  %4 = icmp sgt i32 %size, 0, !llfi_index !117
  br i1 %4, label %.preheader5, label %._crit_edge4, !llfi_index !118

.lr.ph13:                                         ; preds = %8, %.preheader11
  %j.012 = phi i32 [ %9, %8 ], [ 0, %.preheader11 ], !llfi_index !119
  %5 = icmp sgt i32 %i.015, %j.012, !llfi_index !120
  br i1 %5, label %6, label %8, !llfi_index !121

; <label>:6                                       ; preds = %.lr.ph13
  %7 = tail call i32 @rand() #1, !llfi_index !122
  br label %8, !llfi_index !123

; <label>:8                                       ; preds = %6, %.lr.ph13
  %9 = add nsw i32 %j.012, 1, !llfi_index !124
  %exitcond17 = icmp eq i32 %9, %size, !llfi_index !125
  br i1 %exitcond17, label %._crit_edge14, label %.lr.ph13, !llfi_index !126

._crit_edge14:                                    ; preds = %8
  %10 = add nsw i32 %i.015, 1, !llfi_index !127
  %exitcond18 = icmp eq i32 %10, %size, !llfi_index !128
  br i1 %exitcond18, label %.preheader9, label %.preheader11, !llfi_index !129

.preheader5:                                      ; preds = %._crit_edge8, %.preheader9
  %j.110 = phi i32 [ %17, %._crit_edge8 ], [ 0, %.preheader9 ], !llfi_index !130
  br label %.lr.ph7, !llfi_index !131

.preheader2:                                      ; preds = %._crit_edge8
  %11 = icmp sgt i32 %size, 0, !llfi_index !132
  br i1 %11, label %.preheader, label %._crit_edge4, !llfi_index !133

.lr.ph7:                                          ; preds = %15, %.preheader5
  %i.16 = phi i32 [ %16, %15 ], [ 0, %.preheader5 ], !llfi_index !134
  %12 = icmp sgt i32 %i.16, %j.110, !llfi_index !135
  br i1 %12, label %15, label %13, !llfi_index !136

; <label>:13                                      ; preds = %.lr.ph7
  %14 = tail call i32 @rand() #1, !llfi_index !137
  br label %15, !llfi_index !138

; <label>:15                                      ; preds = %13, %.lr.ph7
  %16 = add nsw i32 %i.16, 1, !llfi_index !139
  %exitcond = icmp eq i32 %16, %size, !llfi_index !140
  br i1 %exitcond, label %._crit_edge8, label %.lr.ph7, !llfi_index !141

._crit_edge8:                                     ; preds = %15
  %17 = add nsw i32 %j.110, 1, !llfi_index !142
  %exitcond16 = icmp eq i32 %17, %size, !llfi_index !143
  br i1 %exitcond16, label %.preheader2, label %.preheader5, !llfi_index !144

.preheader:                                       ; preds = %._crit_edge, %.preheader2
  %i.23 = phi i32 [ %25, %._crit_edge ], [ 0, %.preheader2 ], !llfi_index !145
  br label %.lr.ph, !llfi_index !146

; <label>:18                                      ; preds = %.lr.ph
  %19 = icmp slt i32 %23, %size, !llfi_index !147
  br i1 %19, label %.lr.ph, label %._crit_edge, !llfi_index !148

.lr.ph:                                           ; preds = %18, %.preheader
  %j.21 = phi i32 [ %23, %18 ], [ 0, %.preheader ], !llfi_index !149
  %20 = icmp slt i32 %i.23, %j.21, !llfi_index !150
  %21 = select i1 %20, i32 %i.23, i32 %j.21, !llfi_index !151
  %22 = icmp slt i32 %21, 0, !llfi_index !152
  %23 = add nsw i32 %j.21, 1, !llfi_index !153
  br i1 %22, label %18, label %24, !llfi_index !154

; <label>:24                                      ; preds = %.lr.ph
  tail call void @llvm.trap(), !llfi_index !155
  unreachable, !llfi_index !156

._crit_edge:                                      ; preds = %18
  %25 = add nsw i32 %i.23, 1, !llfi_index !157
  %26 = icmp slt i32 %25, %size, !llfi_index !158
  br i1 %26, label %.preheader, label %._crit_edge4, !llfi_index !159

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader2, %.preheader9, %0
  ret i32 0, !llfi_index !160
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
  %1 = icmp sgt i32 %size, 0, !llfi_index !161
  br i1 %1, label %.preheader.lr.ph, label %._crit_edge6, !llfi_index !162

.preheader.lr.ph:                                 ; preds = %._crit_edge4, %0
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %._crit_edge4 ], [ 0, %0 ], !llfi_index !163
  %2 = trunc i64 %indvars.iv11 to i32, !llfi_index !164
  %3 = mul nsw i32 %2, %size, !llfi_index !165
  %4 = sext i32 %3 to i64, !llfi_index !166
  %5 = sext i32 %3 to i64, !llfi_index !167
  br label %.lr.ph, !llfi_index !168

.lr.ph:                                           ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv7 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next8, %._crit_edge ], !llfi_index !169
  %6 = add nsw i64 %indvars.iv7, %5, !llfi_index !170
  %7 = getelementptr inbounds float* %inputa, i64 %6, !llfi_index !171
  %8 = trunc i64 %indvars.iv7 to i32, !llfi_index !172
  %9 = mul nsw i32 %8, %size, !llfi_index !173
  %10 = sext i32 %9 to i64, !llfi_index !174
  br label %11, !llfi_index !175

; <label>:11                                      ; preds = %11, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %11 ], !llfi_index !176
  %12 = load float* %7, align 4, !tbaa !177, !llfi_index !179
  %13 = add nsw i64 %indvars.iv, %10, !llfi_index !180
  %14 = getelementptr inbounds float* %inputb, i64 %13, !llfi_index !181
  %15 = load float* %14, align 4, !tbaa !177, !llfi_index !182
  %16 = fmul float %12, %15, !llfi_index !183
  %17 = add nsw i64 %indvars.iv, %4, !llfi_index !184
  %18 = getelementptr inbounds float* %output, i64 %17, !llfi_index !185
  store float %16, float* %18, align 4, !tbaa !177, !llfi_index !186
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !187
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !188
  %exitcond = icmp eq i32 %lftr.wideiv, %size, !llfi_index !189
  br i1 %exitcond, label %._crit_edge, label %11, !llfi_index !190

._crit_edge:                                      ; preds = %11
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !llfi_index !191
  %lftr.wideiv9 = trunc i64 %indvars.iv.next8 to i32, !llfi_index !192
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %size, !llfi_index !193
  br i1 %exitcond10, label %._crit_edge4, label %.lr.ph, !llfi_index !194

._crit_edge4:                                     ; preds = %._crit_edge
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !llfi_index !195
  %lftr.wideiv13 = trunc i64 %indvars.iv.next12 to i32, !llfi_index !196
  %exitcond14 = icmp eq i32 %lftr.wideiv13, %size, !llfi_index !197
  br i1 %exitcond14, label %._crit_edge6, label %.preheader.lr.ph, !llfi_index !198

._crit_edge6:                                     ; preds = %._crit_edge4, %0
  ret void, !llfi_index !199
}

; Function Attrs: nounwind uwtable
define i32 @lud_verify(float* nocapture readonly %m, float* nocapture readonly %lu, i32 %matrix_dim) #0 {
  %1 = mul nsw i32 %matrix_dim, %matrix_dim, !llfi_index !200
  %2 = zext i32 %1 to i64, !llfi_index !201
  %3 = shl nuw nsw i64 %2, 2, !llfi_index !202
  %4 = tail call noalias i8* @malloc(i64 %3) #1, !llfi_index !203
  %5 = bitcast i8* %4 to float*, !llfi_index !204
  %6 = icmp sgt i32 %matrix_dim, 0, !llfi_index !205
  br i1 %6, label %.preheader27.lr.ph, label %._crit_edge36.thread, !llfi_index !206

._crit_edge36.thread:                             ; preds = %0
  %puts81 = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str, i64 0, i64 0)), !llfi_index !207
  br label %._crit_edge26.thread, !llfi_index !208

.preheader27.lr.ph:                               ; preds = %._crit_edge34, %0
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %._crit_edge34 ], [ 0, %0 ], !llfi_index !209
  %indvars.iv69 = phi i32 [ %indvars.iv.next70, %._crit_edge34 ], [ -1, %0 ], !llfi_index !210
  %7 = trunc i64 %indvars.iv77 to i32, !llfi_index !211
  %8 = mul nsw i32 %7, %matrix_dim, !llfi_index !212
  %9 = trunc i64 %indvars.iv77 to i32, !llfi_index !213
  %10 = mul nsw i32 %9, %matrix_dim, !llfi_index !214
  %11 = sext i32 %10 to i64, !llfi_index !215
  %12 = sext i32 %8 to i64, !llfi_index !216
  br label %.preheader27, !llfi_index !217

.preheader27:                                     ; preds = %._crit_edge31, %.preheader27.lr.ph
  %indvars.iv73 = phi i64 [ 0, %.preheader27.lr.ph ], [ %indvars.iv.next74, %._crit_edge31 ], !llfi_index !218
  %indvars.iv67 = phi i32 [ -1, %.preheader27.lr.ph ], [ %indvars.iv.next68, %._crit_edge31 ], !llfi_index !219
  %13 = icmp sgt i32 %indvars.iv67, %indvars.iv69, !llfi_index !220
  %smax = select i1 %13, i32 %indvars.iv67, i32 %indvars.iv69, !llfi_index !221
  %14 = sub i32 0, %smax, !llfi_index !222
  %15 = trunc i64 %indvars.iv73 to i32, !llfi_index !223
  %16 = trunc i64 %indvars.iv77 to i32, !llfi_index !224
  %17 = icmp slt i32 %16, %15, !llfi_index !225
  %.v = select i1 %17, i64 %indvars.iv77, i64 %indvars.iv73, !llfi_index !226
  %18 = trunc i64 %.v to i32, !llfi_index !227
  %19 = icmp slt i32 %18, 0, !llfi_index !228
  br i1 %19, label %._crit_edge31, label %.lr.ph30, !llfi_index !229

.lr.ph30:                                         ; preds = %27, %.preheader27
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %27 ], [ 0, %.preheader27 ], !llfi_index !230
  %sum.029 = phi float [ %36, %27 ], [ 0.000000e+00, %.preheader27 ], !llfi_index !231
  %20 = trunc i64 %indvars.iv65 to i32, !llfi_index !232
  %21 = trunc i64 %indvars.iv77 to i32, !llfi_index !233
  %22 = icmp eq i32 %21, %20, !llfi_index !234
  br i1 %22, label %27, label %23, !llfi_index !235

; <label>:23                                      ; preds = %.lr.ph30
  %24 = add nsw i64 %indvars.iv65, %11, !llfi_index !236
  %25 = getelementptr inbounds float* %lu, i64 %24, !llfi_index !237
  %26 = load float* %25, align 4, !tbaa !177, !llfi_index !238
  br label %27, !llfi_index !239

; <label>:27                                      ; preds = %23, %.lr.ph30
  %l.0 = phi float [ %26, %23 ], [ 1.000000e+00, %.lr.ph30 ], !llfi_index !240
  %28 = trunc i64 %indvars.iv65 to i32, !llfi_index !241
  %29 = mul nsw i32 %28, %matrix_dim, !llfi_index !242
  %30 = trunc i64 %indvars.iv73 to i32, !llfi_index !243
  %31 = add nsw i32 %29, %30, !llfi_index !244
  %32 = sext i32 %31 to i64, !llfi_index !245
  %33 = getelementptr inbounds float* %lu, i64 %32, !llfi_index !246
  %34 = load float* %33, align 4, !tbaa !177, !llfi_index !247
  %35 = fmul float %l.0, %34, !llfi_index !248
  %36 = fadd float %sum.029, %35, !llfi_index !249
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1, !llfi_index !250
  %lftr.wideiv71 = trunc i64 %indvars.iv.next66 to i32, !llfi_index !251
  %exitcond72 = icmp eq i32 %lftr.wideiv71, %14, !llfi_index !252
  br i1 %exitcond72, label %._crit_edge31, label %.lr.ph30, !llfi_index !253

._crit_edge31:                                    ; preds = %27, %.preheader27
  %sum.0.lcssa = phi float [ 0.000000e+00, %.preheader27 ], [ %36, %27 ], !llfi_index !254
  %37 = add nsw i64 %indvars.iv73, %12, !llfi_index !255
  %38 = getelementptr inbounds float* %5, i64 %37, !llfi_index !256
  store float %sum.0.lcssa, float* %38, align 4, !tbaa !177, !llfi_index !257
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1, !llfi_index !258
  %indvars.iv.next68 = add i32 %indvars.iv67, -1, !llfi_index !259
  %lftr.wideiv75 = trunc i64 %indvars.iv.next74 to i32, !llfi_index !260
  %exitcond76 = icmp eq i32 %lftr.wideiv75, %matrix_dim, !llfi_index !261
  br i1 %exitcond76, label %._crit_edge34, label %.preheader27, !llfi_index !262

._crit_edge34:                                    ; preds = %._crit_edge31
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1, !llfi_index !263
  %indvars.iv.next70 = add i32 %indvars.iv69, -1, !llfi_index !264
  %lftr.wideiv79 = trunc i64 %indvars.iv.next78 to i32, !llfi_index !265
  %exitcond80 = icmp eq i32 %lftr.wideiv79, %matrix_dim, !llfi_index !266
  br i1 %exitcond80, label %._crit_edge36, label %.preheader27.lr.ph, !llfi_index !267

._crit_edge36:                                    ; preds = %._crit_edge34
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str, i64 0, i64 0)), !llfi_index !268
  %39 = icmp sgt i32 %matrix_dim, 0, !llfi_index !269
  br i1 %39, label %.lr.ph23, label %._crit_edge26.thread, !llfi_index !270

.lr.ph23:                                         ; preds = %._crit_edge24, %._crit_edge36
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %._crit_edge24 ], [ 0, %._crit_edge36 ], !llfi_index !271
  %40 = trunc i64 %indvars.iv61 to i32, !llfi_index !272
  %41 = mul nsw i32 %40, %matrix_dim, !llfi_index !273
  %42 = sext i32 %41 to i64, !llfi_index !274
  br label %43, !llfi_index !275

; <label>:43                                      ; preds = %43, %.lr.ph23
  %indvars.iv57 = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next58, %43 ], !llfi_index !276
  %44 = add nsw i64 %indvars.iv57, %42, !llfi_index !277
  %45 = getelementptr inbounds float* %lu, i64 %44, !llfi_index !278
  %46 = load float* %45, align 4, !tbaa !177, !llfi_index !279
  %47 = fpext float %46 to double, !llfi_index !280
  %48 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double %47) #1, !llfi_index !281
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1, !llfi_index !282
  %lftr.wideiv59 = trunc i64 %indvars.iv.next58 to i32, !llfi_index !283
  %exitcond60 = icmp eq i32 %lftr.wideiv59, %matrix_dim, !llfi_index !284
  br i1 %exitcond60, label %._crit_edge24, label %43, !llfi_index !285

._crit_edge24:                                    ; preds = %43
  %putchar4 = tail call i32 @putchar(i32 10) #1, !llfi_index !286
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1, !llfi_index !287
  %lftr.wideiv63 = trunc i64 %indvars.iv.next62 to i32, !llfi_index !288
  %exitcond64 = icmp eq i32 %lftr.wideiv63, %matrix_dim, !llfi_index !289
  br i1 %exitcond64, label %._crit_edge26, label %.lr.ph23, !llfi_index !290

._crit_edge26.thread:                             ; preds = %._crit_edge36, %._crit_edge36.thread
  %puts182 = tail call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str8, i64 0, i64 0)), !llfi_index !291
  br label %._crit_edge20, !llfi_index !292

._crit_edge26:                                    ; preds = %._crit_edge24
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str8, i64 0, i64 0)), !llfi_index !293
  %49 = icmp sgt i32 %matrix_dim, 0, !llfi_index !294
  br i1 %49, label %.lr.ph17, label %._crit_edge20.thread, !llfi_index !295

._crit_edge20.thread:                             ; preds = %._crit_edge26
  %puts283 = tail call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str9, i64 0, i64 0)), !llfi_index !296
  br label %._crit_edge9, !llfi_index !297

.lr.ph17:                                         ; preds = %._crit_edge18, %._crit_edge26
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %._crit_edge18 ], [ 0, %._crit_edge26 ], !llfi_index !298
  %50 = trunc i64 %indvars.iv53 to i32, !llfi_index !299
  %51 = mul nsw i32 %50, %matrix_dim, !llfi_index !300
  %52 = sext i32 %51 to i64, !llfi_index !301
  br label %53, !llfi_index !302

; <label>:53                                      ; preds = %53, %.lr.ph17
  %indvars.iv49 = phi i64 [ 0, %.lr.ph17 ], [ %indvars.iv.next50, %53 ], !llfi_index !303
  %54 = add nsw i64 %indvars.iv49, %52, !llfi_index !304
  %55 = getelementptr inbounds float* %5, i64 %54, !llfi_index !305
  %56 = load float* %55, align 4, !tbaa !177, !llfi_index !306
  %57 = fpext float %56 to double, !llfi_index !307
  %58 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double %57) #1, !llfi_index !308
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1, !llfi_index !309
  %lftr.wideiv51 = trunc i64 %indvars.iv.next50 to i32, !llfi_index !310
  %exitcond52 = icmp eq i32 %lftr.wideiv51, %matrix_dim, !llfi_index !311
  br i1 %exitcond52, label %._crit_edge18, label %53, !llfi_index !312

._crit_edge18:                                    ; preds = %53
  %putchar3 = tail call i32 @putchar(i32 10) #1, !llfi_index !313
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1, !llfi_index !314
  %lftr.wideiv55 = trunc i64 %indvars.iv.next54 to i32, !llfi_index !315
  %exitcond56 = icmp eq i32 %lftr.wideiv55, %matrix_dim, !llfi_index !316
  br i1 %exitcond56, label %._crit_edge20, label %.lr.ph17, !llfi_index !317

._crit_edge20:                                    ; preds = %._crit_edge18, %._crit_edge26.thread
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str9, i64 0, i64 0)), !llfi_index !318
  %59 = icmp sgt i32 %matrix_dim, 0, !llfi_index !319
  br i1 %59, label %.lr.ph12, label %._crit_edge9, !llfi_index !320

.lr.ph12:                                         ; preds = %._crit_edge13, %._crit_edge20
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %._crit_edge13 ], [ 0, %._crit_edge20 ], !llfi_index !321
  %60 = trunc i64 %indvars.iv45 to i32, !llfi_index !322
  %61 = mul nsw i32 %60, %matrix_dim, !llfi_index !323
  %62 = sext i32 %61 to i64, !llfi_index !324
  br label %64, !llfi_index !325

.preheader6:                                      ; preds = %._crit_edge13
  %63 = icmp sgt i32 %matrix_dim, 0, !llfi_index !326
  br i1 %63, label %.lr.ph, label %._crit_edge9, !llfi_index !327

; <label>:64                                      ; preds = %64, %.lr.ph12
  %indvars.iv41 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next42, %64 ], !llfi_index !328
  %65 = add nsw i64 %indvars.iv41, %62, !llfi_index !329
  %66 = getelementptr inbounds float* %m, i64 %65, !llfi_index !330
  %67 = load float* %66, align 4, !tbaa !177, !llfi_index !331
  %68 = fpext float %67 to double, !llfi_index !332
  %69 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double %68) #1, !llfi_index !333
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1, !llfi_index !334
  %lftr.wideiv43 = trunc i64 %indvars.iv.next42 to i32, !llfi_index !335
  %exitcond44 = icmp eq i32 %lftr.wideiv43, %matrix_dim, !llfi_index !336
  br i1 %exitcond44, label %._crit_edge13, label %64, !llfi_index !337

._crit_edge13:                                    ; preds = %64
  %putchar = tail call i32 @putchar(i32 10) #1, !llfi_index !338
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1, !llfi_index !339
  %lftr.wideiv47 = trunc i64 %indvars.iv.next46 to i32, !llfi_index !340
  %exitcond48 = icmp eq i32 %lftr.wideiv47, %matrix_dim, !llfi_index !341
  br i1 %exitcond48, label %.preheader6, label %.lr.ph12, !llfi_index !342

.lr.ph:                                           ; preds = %._crit_edge, %.preheader6
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %._crit_edge ], [ 0, %.preheader6 ], !llfi_index !343
  %70 = trunc i64 %indvars.iv37 to i32, !llfi_index !344
  %71 = mul nsw i32 %70, %matrix_dim, !llfi_index !345
  %72 = sext i32 %71 to i64, !llfi_index !346
  br label %73, !llfi_index !347

; <label>:73                                      ; preds = %88, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %88 ], !llfi_index !348
  %74 = add nsw i64 %indvars.iv, %72, !llfi_index !349
  %75 = getelementptr inbounds float* %m, i64 %74, !llfi_index !350
  %76 = load float* %75, align 4, !tbaa !177, !llfi_index !351
  %77 = getelementptr inbounds float* %5, i64 %74, !llfi_index !352
  %78 = load float* %77, align 4, !tbaa !177, !llfi_index !353
  %79 = fsub float %76, %78, !llfi_index !354
  %fabsf = tail call float @fabsf(float %79) #8, !llfi_index !355
  %80 = fpext float %fabsf to double, !llfi_index !356
  %81 = fcmp ogt double %80, 1.000000e-04, !llfi_index !357
  br i1 %81, label %82, label %88, !llfi_index !358

; <label>:82                                      ; preds = %73
  %83 = fpext float %76 to double, !llfi_index !359
  %84 = fpext float %78 to double, !llfi_index !360
  %85 = trunc i64 %indvars.iv to i32, !llfi_index !361
  %86 = trunc i64 %indvars.iv37 to i32, !llfi_index !362
  %87 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str7, i64 0, i64 0), i32 %86, i32 %85, double %83, double %84) #1, !llfi_index !363
  br label %88, !llfi_index !364

; <label>:88                                      ; preds = %82, %73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !365
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !366
  %exitcond = icmp eq i32 %lftr.wideiv, %matrix_dim, !llfi_index !367
  br i1 %exitcond, label %._crit_edge, label %73, !llfi_index !368

._crit_edge:                                      ; preds = %88
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !llfi_index !369
  %lftr.wideiv39 = trunc i64 %indvars.iv.next38 to i32, !llfi_index !370
  %exitcond40 = icmp eq i32 %lftr.wideiv39, %matrix_dim, !llfi_index !371
  br i1 %exitcond40, label %._crit_edge9, label %.lr.ph, !llfi_index !372

._crit_edge9:                                     ; preds = %._crit_edge, %.preheader6, %._crit_edge20, %._crit_edge20.thread
  tail call void @free(i8* %4) #1, !llfi_index !373
  ret i32 undef, !llfi_index !374
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind uwtable
define void @matrix_duplicate(float* nocapture readonly %src, float** nocapture %dst, i32 %matrix_dim) #0 {
  %1 = shl i32 %matrix_dim, 2, !llfi_index !375
  %2 = mul i32 %1, %matrix_dim, !llfi_index !376
  %3 = sext i32 %2 to i64, !llfi_index !377
  %4 = tail call noalias i8* @malloc(i64 %3) #1, !llfi_index !378
  %5 = bitcast i8* %4 to float*, !llfi_index !379
  %6 = bitcast float* %src to i8*, !llfi_index !380
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %6, i64 %3, i32 4, i1 false), !llfi_index !381
  store float* %5, float** %dst, align 8, !tbaa !104, !llfi_index !382
  ret void, !llfi_index !383
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @print_matrix(float* nocapture readonly %m, i32 %matrix_dim) #0 {
  %1 = icmp sgt i32 %matrix_dim, 0, !llfi_index !384
  br i1 %1, label %.lr.ph, label %._crit_edge3, !llfi_index !385

.lr.ph:                                           ; preds = %._crit_edge, %0
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %._crit_edge ], [ 0, %0 ], !llfi_index !386
  %2 = trunc i64 %indvars.iv4 to i32, !llfi_index !387
  %3 = mul nsw i32 %2, %matrix_dim, !llfi_index !388
  %4 = sext i32 %3 to i64, !llfi_index !389
  br label %5, !llfi_index !390

; <label>:5                                       ; preds = %5, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %5 ], !llfi_index !391
  %6 = add nsw i64 %indvars.iv, %4, !llfi_index !392
  %7 = getelementptr inbounds float* %m, i64 %6, !llfi_index !393
  %8 = load float* %7, align 4, !tbaa !177, !llfi_index !394
  %9 = fpext float %8 to double, !llfi_index !395
  %10 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double %9) #1, !llfi_index !396
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !397
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !398
  %exitcond = icmp eq i32 %lftr.wideiv, %matrix_dim, !llfi_index !399
  br i1 %exitcond, label %._crit_edge, label %5, !llfi_index !400

._crit_edge:                                      ; preds = %5
  %putchar = tail call i32 @putchar(i32 10) #1, !llfi_index !401
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !llfi_index !402
  %lftr.wideiv6 = trunc i64 %indvars.iv.next5 to i32, !llfi_index !403
  %exitcond7 = icmp eq i32 %lftr.wideiv6, %matrix_dim, !llfi_index !404
  br i1 %exitcond7, label %._crit_edge3, label %.lr.ph, !llfi_index !405

._crit_edge3:                                     ; preds = %._crit_edge, %0
  ret void, !llfi_index !406
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
  %matrix_dim = alloca i32, align 4, !llfi_index !407
  %option_index = alloca i32, align 4, !llfi_index !408
  %m = alloca float*, align 8, !llfi_index !409
  %mm = alloca float*, align 8, !llfi_index !410
  %sw = alloca %struct.__stopwatch_t, align 8, !llfi_index !411
  store i32 32, i32* %matrix_dim, align 4, !tbaa !66, !llfi_index !412
  store i32 0, i32* %option_index, align 4, !tbaa !66, !llfi_index !413
  br label %.outer, !llfi_index !414

.outer:                                           ; preds = %.backedge, %0
  %.ph = phi i32 [ 0, %0 ], [ 1, %.backedge ], !llfi_index !415
  %input_file.0.ph = phi i8* [ null, %0 ], [ %input_file.0.ph5, %.backedge ], !llfi_index !416
  br label %.outer4, !llfi_index !417

.outer4:                                          ; preds = %2, %.outer
  %input_file.0.ph5 = phi i8* [ %3, %2 ], [ %input_file.0.ph, %.outer ], !llfi_index !418
  br label %.backedge, !llfi_index !419

.backedge:                                        ; preds = %15, %12, %.outer4
  %1 = call i32 @getopt_long(i32 %argc, i8** %argv, i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), %struct.option* bitcast (<{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }>* @long_options to %struct.option*), i32* %option_index) #1, !llfi_index !420
  switch i32 %1, label %18 [
    i32 -1, label %22
    i32 105, label %2
    i32 118, label %.outer
    i32 115, label %4
    i32 63, label %12
    i32 58, label %15
  ], !llfi_index !421

; <label>:2                                       ; preds = %.backedge
  %3 = load i8** @optarg, align 8, !tbaa !104, !llfi_index !422
  br label %.outer4, !llfi_index !423

; <label>:4                                       ; preds = %.backedge
  %5 = load i8** @optarg, align 8, !tbaa !104, !llfi_index !424
  %6 = call i32 @atoi(i8* %5) #9, !llfi_index !425
  store i32 %6, i32* %matrix_dim, align 4, !tbaa !66, !llfi_index !426
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !104, !llfi_index !427
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str19, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %7) #10, !llfi_index !428
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !104, !llfi_index !429
  %10 = load i8** %argv, align 8, !tbaa !104, !llfi_index !430
  %11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([47 x i8]* @.str210, i64 0, i64 0), i8* %10) #11, !llfi_index !431
  call void @exit(i32 1) #5, !llfi_index !432
  unreachable, !llfi_index !433

; <label>:12                                      ; preds = %.backedge
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !104, !llfi_index !434
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str311, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %13) #10, !llfi_index !435
  br label %.backedge, !llfi_index !436

; <label>:15                                      ; preds = %.backedge
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !104, !llfi_index !437
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str412, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %16) #10, !llfi_index !438
  br label %.backedge, !llfi_index !439

; <label>:18                                      ; preds = %.backedge
  %19 = load %struct._IO_FILE** @stderr, align 8, !tbaa !104, !llfi_index !440
  %20 = load i8** %argv, align 8, !tbaa !104, !llfi_index !441
  %21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([47 x i8]* @.str210, i64 0, i64 0), i8* %20) #11, !llfi_index !442
  call void @exit(i32 1) #5, !llfi_index !443
  unreachable, !llfi_index !444

; <label>:22                                      ; preds = %.backedge
  %23 = load i32* @optind, align 4, !tbaa !66, !llfi_index !445
  %24 = icmp slt i32 %23, %argc, !llfi_index !446
  %25 = icmp eq i32 %23, 1, !llfi_index !447
  %or.cond = or i1 %24, %25, !llfi_index !448
  br i1 %or.cond, label %26, label %30, !llfi_index !449

; <label>:26                                      ; preds = %22
  %27 = load %struct._IO_FILE** @stderr, align 8, !tbaa !104, !llfi_index !450
  %28 = load i8** %argv, align 8, !tbaa !104, !llfi_index !451
  %29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([47 x i8]* @.str210, i64 0, i64 0), i8* %28) #11, !llfi_index !452
  call void @exit(i32 1) #5, !llfi_index !453
  unreachable, !llfi_index !454

; <label>:30                                      ; preds = %22
  %31 = icmp eq i8* %input_file.0.ph5, null, !llfi_index !455
  br i1 %31, label %39, label %32, !llfi_index !456

; <label>:32                                      ; preds = %30
  %33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str513, i64 0, i64 0), i8* %input_file.0.ph5) #1, !llfi_index !457
  %34 = call i32 @create_matrix_from_file(float** %m, i8* %input_file.0.ph5, i32* %matrix_dim) #1, !llfi_index !458
  %35 = icmp eq i32 %34, 0, !llfi_index !459
  br i1 %35, label %40, label %36, !llfi_index !460

; <label>:36                                      ; preds = %32
  store float* null, float** %m, align 8, !tbaa !104, !llfi_index !461
  %37 = load %struct._IO_FILE** @stderr, align 8, !tbaa !104, !llfi_index !462
  %38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([34 x i8]* @.str614, i64 0, i64 0), i8* %input_file.0.ph5) #11, !llfi_index !463
  call void @exit(i32 1) #5, !llfi_index !464
  unreachable, !llfi_index !465

; <label>:39                                      ; preds = %30
  %puts = call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str17, i64 0, i64 0)), !llfi_index !466
  call void @exit(i32 1) #5, !llfi_index !467
  unreachable, !llfi_index !468

; <label>:40                                      ; preds = %32
  %41 = icmp eq i32 %.ph, 0, !llfi_index !469
  br i1 %41, label %.critedge, label %42, !llfi_index !470

; <label>:42                                      ; preds = %40
  %puts3 = call i32 @puts(i8* getelementptr inbounds ([11 x i8]* @str14, i64 0, i64 0)), !llfi_index !471
  %43 = load float** %m, align 8, !tbaa !104, !llfi_index !472
  %44 = load i32* %matrix_dim, align 4, !tbaa !66, !llfi_index !473
  call void @print_matrix(float* %43, i32 %44) #1, !llfi_index !474
  %45 = load float** %m, align 8, !tbaa !104, !llfi_index !475
  %46 = load i32* %matrix_dim, align 4, !tbaa !66, !llfi_index !476
  call void @matrix_duplicate(float* %45, float** %mm, i32 %46) #1, !llfi_index !477
  call void @stopwatch_start(%struct.__stopwatch_t* %sw) #1, !llfi_index !478
  %47 = load float** %m, align 8, !tbaa !104, !llfi_index !479
  %48 = load i32* %matrix_dim, align 4, !tbaa !66, !llfi_index !480
  call void @lud_base(float* %47, i32 %48) #1, !llfi_index !481
  call void @stopwatch_stop(%struct.__stopwatch_t* %sw) #1, !llfi_index !482
  %puts2 = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str13, i64 0, i64 0)), !llfi_index !483
  %49 = load float** %m, align 8, !tbaa !104, !llfi_index !484
  %50 = load i32* %matrix_dim, align 4, !tbaa !66, !llfi_index !485
  call void @print_matrix(float* %49, i32 %50) #1, !llfi_index !486
  %51 = load float** %mm, align 8, !tbaa !104, !llfi_index !487
  %52 = bitcast float* %51 to i8*, !llfi_index !488
  call void @free(i8* %52) #1, !llfi_index !489
  br label %55, !llfi_index !490

.critedge:                                        ; preds = %40
  call void @stopwatch_start(%struct.__stopwatch_t* %sw) #1, !llfi_index !491
  %53 = load float** %m, align 8, !tbaa !104, !llfi_index !492
  %54 = load i32* %matrix_dim, align 4, !tbaa !66, !llfi_index !493
  call void @lud_base(float* %53, i32 %54) #1, !llfi_index !494
  call void @stopwatch_stop(%struct.__stopwatch_t* %sw) #1, !llfi_index !495
  br label %55, !llfi_index !496

; <label>:55                                      ; preds = %.critedge, %42
  %56 = load float** %m, align 8, !tbaa !104, !llfi_index !497
  %57 = bitcast float* %56 to i8*, !llfi_index !498
  call void @free(i8* %57) #1, !llfi_index !499
  ret i32 0, !llfi_index !500
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

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nocapture readonly %__nptr) #7 {
  %1 = tail call i64 @strtol(i8* nocapture %__nptr, i8** null, i32 10) #1, !llfi_index !501
  %2 = trunc i64 %1 to i32, !llfi_index !502
  ret i32 %2, !llfi_index !503
}

; Function Attrs: nounwind uwtable
define void @lud_base(float* nocapture %a, i32 %size) #0 {
  %1 = icmp sgt i32 %size, 0, !llfi_index !504
  br i1 %1, label %.lr.ph4, label %._crit_edge16, !llfi_index !505

.loopexit:                                        ; preds = %._crit_edge10, %._crit_edge5
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1, !llfi_index !506
  %lftr.wideiv40 = trunc i64 %indvars.iv.next39 to i32, !llfi_index !507
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %size, !llfi_index !508
  br i1 %exitcond41, label %._crit_edge16, label %.lr.ph4, !llfi_index !509

.lr.ph4:                                          ; preds = %.loopexit, %0
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %.loopexit ], [ 0, %0 ], !llfi_index !510
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.loopexit ], [ 1, %0 ], !llfi_index !511
  %indvars.iv28 = phi i32 [ %indvars.iv.next29, %.loopexit ], [ 0, %0 ], !llfi_index !512
  %2 = trunc i64 %indvars.iv38 to i32, !llfi_index !513
  %3 = mul nsw i32 %2, %size, !llfi_index !514
  %4 = trunc i64 %indvars.iv38 to i32, !llfi_index !515
  %5 = icmp sgt i32 %4, 0, !llfi_index !516
  %6 = sext i32 %3 to i64, !llfi_index !517
  %7 = sext i32 %3 to i64, !llfi_index !518
  br label %8, !llfi_index !519

; <label>:8                                       ; preds = %._crit_edge, %.lr.ph4
  %indvars.iv21 = phi i64 [ %indvars.iv38, %.lr.ph4 ], [ %indvars.iv.next22, %._crit_edge ], !llfi_index !520
  %9 = add nsw i64 %indvars.iv21, %7, !llfi_index !521
  %10 = getelementptr inbounds float* %a, i64 %9, !llfi_index !522
  %11 = load float* %10, align 4, !tbaa !177, !llfi_index !523
  br i1 %5, label %.lr.ph, label %._crit_edge, !llfi_index !524

.lr.ph:                                           ; preds = %.lr.ph, %8
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %8 ], !llfi_index !525
  %sum.02 = phi float [ %23, %.lr.ph ], [ %11, %8 ], !llfi_index !526
  %12 = add nsw i64 %indvars.iv, %6, !llfi_index !527
  %13 = getelementptr inbounds float* %a, i64 %12, !llfi_index !528
  %14 = load float* %13, align 4, !tbaa !177, !llfi_index !529
  %15 = trunc i64 %indvars.iv to i32, !llfi_index !530
  %16 = mul nsw i32 %15, %size, !llfi_index !531
  %17 = trunc i64 %indvars.iv21 to i32, !llfi_index !532
  %18 = add nsw i32 %16, %17, !llfi_index !533
  %19 = sext i32 %18 to i64, !llfi_index !534
  %20 = getelementptr inbounds float* %a, i64 %19, !llfi_index !535
  %21 = load float* %20, align 4, !tbaa !177, !llfi_index !536
  %22 = fmul float %14, %21, !llfi_index !537
  %23 = fsub float %sum.02, %22, !llfi_index !538
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !539
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !540
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv28, !llfi_index !541
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !542

._crit_edge:                                      ; preds = %.lr.ph, %8
  %sum.0.lcssa = phi float [ %11, %8 ], [ %23, %.lr.ph ], !llfi_index !543
  store float %sum.0.lcssa, float* %10, align 4, !tbaa !177, !llfi_index !544
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !llfi_index !545
  %lftr.wideiv23 = trunc i64 %indvars.iv.next22 to i32, !llfi_index !546
  %exitcond24 = icmp eq i32 %lftr.wideiv23, %size, !llfi_index !547
  br i1 %exitcond24, label %._crit_edge5, label %8, !llfi_index !548

._crit_edge5:                                     ; preds = %._crit_edge
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1, !llfi_index !549
  %indvars.iv.next29 = add nuw nsw i32 %indvars.iv28, 1, !llfi_index !550
  %24 = trunc i64 %indvars.iv.next39 to i32, !llfi_index !551
  %25 = icmp slt i32 %24, %size, !llfi_index !552
  br i1 %25, label %.lr.ph14, label %.loopexit, !llfi_index !553

.lr.ph14:                                         ; preds = %._crit_edge5
  %26 = trunc i64 %indvars.iv38 to i32, !llfi_index !554
  %27 = icmp sgt i32 %26, 0, !llfi_index !555
  %28 = trunc i64 %indvars.iv38 to i32, !llfi_index !556
  %29 = mul nsw i32 %28, %size, !llfi_index !557
  %30 = trunc i64 %indvars.iv38 to i32, !llfi_index !558
  %31 = add nsw i32 %29, %30, !llfi_index !559
  %32 = sext i32 %31 to i64, !llfi_index !560
  %33 = getelementptr inbounds float* %a, i64 %32, !llfi_index !561
  br label %34, !llfi_index !562

; <label>:34                                      ; preds = %._crit_edge10, %.lr.ph14
  %indvars.iv34 = phi i64 [ %indvars.iv32, %.lr.ph14 ], [ %indvars.iv.next35, %._crit_edge10 ], !llfi_index !563
  %35 = trunc i64 %indvars.iv34 to i32, !llfi_index !564
  %36 = mul nsw i32 %35, %size, !llfi_index !565
  %37 = trunc i64 %indvars.iv38 to i32, !llfi_index !566
  %38 = add nsw i32 %36, %37, !llfi_index !567
  %39 = sext i32 %38 to i64, !llfi_index !568
  %40 = getelementptr inbounds float* %a, i64 %39, !llfi_index !569
  %41 = load float* %40, align 4, !tbaa !177, !llfi_index !570
  br i1 %27, label %.lr.ph9, label %._crit_edge10, !llfi_index !571

.lr.ph9:                                          ; preds = %34
  %42 = sext i32 %36 to i64, !llfi_index !572
  br label %43, !llfi_index !573

; <label>:43                                      ; preds = %43, %.lr.ph9
  %indvars.iv26 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next27, %43 ], !llfi_index !574
  %sum.17 = phi float [ %41, %.lr.ph9 ], [ %55, %43 ], !llfi_index !575
  %44 = add nsw i64 %indvars.iv26, %42, !llfi_index !576
  %45 = getelementptr inbounds float* %a, i64 %44, !llfi_index !577
  %46 = load float* %45, align 4, !tbaa !177, !llfi_index !578
  %47 = trunc i64 %indvars.iv26 to i32, !llfi_index !579
  %48 = mul nsw i32 %47, %size, !llfi_index !580
  %49 = trunc i64 %indvars.iv38 to i32, !llfi_index !581
  %50 = add nsw i32 %48, %49, !llfi_index !582
  %51 = sext i32 %50 to i64, !llfi_index !583
  %52 = getelementptr inbounds float* %a, i64 %51, !llfi_index !584
  %53 = load float* %52, align 4, !tbaa !177, !llfi_index !585
  %54 = fmul float %46, %53, !llfi_index !586
  %55 = fsub float %sum.17, %54, !llfi_index !587
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1, !llfi_index !588
  %lftr.wideiv30 = trunc i64 %indvars.iv.next27 to i32, !llfi_index !589
  %exitcond31 = icmp eq i32 %lftr.wideiv30, %indvars.iv28, !llfi_index !590
  br i1 %exitcond31, label %._crit_edge10, label %43, !llfi_index !591

._crit_edge10:                                    ; preds = %43, %34
  %sum.1.lcssa = phi float [ %41, %34 ], [ %55, %43 ], !llfi_index !592
  %56 = load float* %33, align 4, !tbaa !177, !llfi_index !593
  %57 = fdiv float %sum.1.lcssa, %56, !llfi_index !594
  store float %57, float* %40, align 4, !tbaa !177, !llfi_index !595
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1, !llfi_index !596
  %lftr.wideiv36 = trunc i64 %indvars.iv.next35 to i32, !llfi_index !597
  %exitcond37 = icmp eq i32 %lftr.wideiv36, %size, !llfi_index !598
  br i1 %exitcond37, label %.loopexit, label %34, !llfi_index !599

._crit_edge16:                                    ; preds = %.loopexit, %0
  ret void, !llfi_index !600
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

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
!103 = metadata !{i64 92}
!104 = metadata !{metadata !105, metadata !105, i64 0}
!105 = metadata !{metadata !"any pointer", metadata !22, i64 0}
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
!169 = metadata !{i64 156}
!170 = metadata !{i64 157}
!171 = metadata !{i64 158}
!172 = metadata !{i64 159}
!173 = metadata !{i64 160}
!174 = metadata !{i64 161}
!175 = metadata !{i64 162}
!176 = metadata !{i64 163}
!177 = metadata !{metadata !178, metadata !178, i64 0}
!178 = metadata !{metadata !"float", metadata !22, i64 0}
!179 = metadata !{i64 164}
!180 = metadata !{i64 165}
!181 = metadata !{i64 166}
!182 = metadata !{i64 167}
!183 = metadata !{i64 168}
!184 = metadata !{i64 169}
!185 = metadata !{i64 170}
!186 = metadata !{i64 171}
!187 = metadata !{i64 172}
!188 = metadata !{i64 173}
!189 = metadata !{i64 174}
!190 = metadata !{i64 175}
!191 = metadata !{i64 176}
!192 = metadata !{i64 177}
!193 = metadata !{i64 178}
!194 = metadata !{i64 179}
!195 = metadata !{i64 180}
!196 = metadata !{i64 181}
!197 = metadata !{i64 182}
!198 = metadata !{i64 183}
!199 = metadata !{i64 184}
!200 = metadata !{i64 185}
!201 = metadata !{i64 186}
!202 = metadata !{i64 187}
!203 = metadata !{i64 188}
!204 = metadata !{i64 189}
!205 = metadata !{i64 190}
!206 = metadata !{i64 191}
!207 = metadata !{i64 192}
!208 = metadata !{i64 193}
!209 = metadata !{i64 194}
!210 = metadata !{i64 195}
!211 = metadata !{i64 196}
!212 = metadata !{i64 197}
!213 = metadata !{i64 198}
!214 = metadata !{i64 199}
!215 = metadata !{i64 200}
!216 = metadata !{i64 201}
!217 = metadata !{i64 202}
!218 = metadata !{i64 203}
!219 = metadata !{i64 204}
!220 = metadata !{i64 205}
!221 = metadata !{i64 206}
!222 = metadata !{i64 207}
!223 = metadata !{i64 208}
!224 = metadata !{i64 209}
!225 = metadata !{i64 210}
!226 = metadata !{i64 211}
!227 = metadata !{i64 212}
!228 = metadata !{i64 213}
!229 = metadata !{i64 214}
!230 = metadata !{i64 215}
!231 = metadata !{i64 216}
!232 = metadata !{i64 217}
!233 = metadata !{i64 218}
!234 = metadata !{i64 219}
!235 = metadata !{i64 220}
!236 = metadata !{i64 221}
!237 = metadata !{i64 222}
!238 = metadata !{i64 223}
!239 = metadata !{i64 224}
!240 = metadata !{i64 225}
!241 = metadata !{i64 226}
!242 = metadata !{i64 227}
!243 = metadata !{i64 228}
!244 = metadata !{i64 229}
!245 = metadata !{i64 230}
!246 = metadata !{i64 231}
!247 = metadata !{i64 232}
!248 = metadata !{i64 233}
!249 = metadata !{i64 234}
!250 = metadata !{i64 235}
!251 = metadata !{i64 236}
!252 = metadata !{i64 237}
!253 = metadata !{i64 238}
!254 = metadata !{i64 239}
!255 = metadata !{i64 240}
!256 = metadata !{i64 241}
!257 = metadata !{i64 242}
!258 = metadata !{i64 243}
!259 = metadata !{i64 244}
!260 = metadata !{i64 245}
!261 = metadata !{i64 246}
!262 = metadata !{i64 247}
!263 = metadata !{i64 248}
!264 = metadata !{i64 249}
!265 = metadata !{i64 250}
!266 = metadata !{i64 251}
!267 = metadata !{i64 252}
!268 = metadata !{i64 253}
!269 = metadata !{i64 254}
!270 = metadata !{i64 255}
!271 = metadata !{i64 256}
!272 = metadata !{i64 257}
!273 = metadata !{i64 258}
!274 = metadata !{i64 259}
!275 = metadata !{i64 260}
!276 = metadata !{i64 261}
!277 = metadata !{i64 262}
!278 = metadata !{i64 263}
!279 = metadata !{i64 264}
!280 = metadata !{i64 265}
!281 = metadata !{i64 266}
!282 = metadata !{i64 267}
!283 = metadata !{i64 268}
!284 = metadata !{i64 269}
!285 = metadata !{i64 270}
!286 = metadata !{i64 271}
!287 = metadata !{i64 272}
!288 = metadata !{i64 273}
!289 = metadata !{i64 274}
!290 = metadata !{i64 275}
!291 = metadata !{i64 276}
!292 = metadata !{i64 277}
!293 = metadata !{i64 278}
!294 = metadata !{i64 279}
!295 = metadata !{i64 280}
!296 = metadata !{i64 281}
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
!360 = metadata !{i64 345}
!361 = metadata !{i64 346}
!362 = metadata !{i64 347}
!363 = metadata !{i64 348}
!364 = metadata !{i64 349}
!365 = metadata !{i64 350}
!366 = metadata !{i64 351}
!367 = metadata !{i64 352}
!368 = metadata !{i64 353}
!369 = metadata !{i64 354}
!370 = metadata !{i64 355}
!371 = metadata !{i64 356}
!372 = metadata !{i64 357}
!373 = metadata !{i64 358}
!374 = metadata !{i64 359}
!375 = metadata !{i64 360}
!376 = metadata !{i64 361}
!377 = metadata !{i64 362}
!378 = metadata !{i64 363}
!379 = metadata !{i64 364}
!380 = metadata !{i64 365}
!381 = metadata !{i64 366}
!382 = metadata !{i64 367}
!383 = metadata !{i64 368}
!384 = metadata !{i64 369}
!385 = metadata !{i64 370}
!386 = metadata !{i64 371}
!387 = metadata !{i64 372}
!388 = metadata !{i64 373}
!389 = metadata !{i64 374}
!390 = metadata !{i64 375}
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
!488 = metadata !{i64 473}
!489 = metadata !{i64 474}
!490 = metadata !{i64 475}
!491 = metadata !{i64 476}
!492 = metadata !{i64 477}
!493 = metadata !{i64 478}
!494 = metadata !{i64 479}
!495 = metadata !{i64 480}
!496 = metadata !{i64 481}
!497 = metadata !{i64 482}
!498 = metadata !{i64 483}
!499 = metadata !{i64 484}
!500 = metadata !{i64 485}
!501 = metadata !{i64 486}
!502 = metadata !{i64 487}
!503 = metadata !{i64 488}
!504 = metadata !{i64 489}
!505 = metadata !{i64 490}
!506 = metadata !{i64 491}
!507 = metadata !{i64 492}
!508 = metadata !{i64 493}
!509 = metadata !{i64 494}
!510 = metadata !{i64 495}
!511 = metadata !{i64 496}
!512 = metadata !{i64 497}
!513 = metadata !{i64 498}
!514 = metadata !{i64 499}
!515 = metadata !{i64 500}
!516 = metadata !{i64 501}
!517 = metadata !{i64 502}
!518 = metadata !{i64 503}
!519 = metadata !{i64 504}
!520 = metadata !{i64 505}
!521 = metadata !{i64 506}
!522 = metadata !{i64 507}
!523 = metadata !{i64 508}
!524 = metadata !{i64 509}
!525 = metadata !{i64 510}
!526 = metadata !{i64 511}
!527 = metadata !{i64 512}
!528 = metadata !{i64 513}
!529 = metadata !{i64 514}
!530 = metadata !{i64 515}
!531 = metadata !{i64 516}
!532 = metadata !{i64 517}
!533 = metadata !{i64 518}
!534 = metadata !{i64 519}
!535 = metadata !{i64 520}
!536 = metadata !{i64 521}
!537 = metadata !{i64 522}
!538 = metadata !{i64 523}
!539 = metadata !{i64 524}
!540 = metadata !{i64 525}
!541 = metadata !{i64 526}
!542 = metadata !{i64 527}
!543 = metadata !{i64 528}
!544 = metadata !{i64 529}
!545 = metadata !{i64 530}
!546 = metadata !{i64 531}
!547 = metadata !{i64 532}
!548 = metadata !{i64 533}
!549 = metadata !{i64 534}
!550 = metadata !{i64 535}
!551 = metadata !{i64 536}
!552 = metadata !{i64 537}
!553 = metadata !{i64 538}
!554 = metadata !{i64 539}
!555 = metadata !{i64 540}
!556 = metadata !{i64 541}
!557 = metadata !{i64 542}
!558 = metadata !{i64 543}
!559 = metadata !{i64 544}
!560 = metadata !{i64 545}
!561 = metadata !{i64 546}
!562 = metadata !{i64 547}
!563 = metadata !{i64 548}
!564 = metadata !{i64 549}
!565 = metadata !{i64 550}
!566 = metadata !{i64 551}
!567 = metadata !{i64 552}
!568 = metadata !{i64 553}
!569 = metadata !{i64 554}
!570 = metadata !{i64 555}
!571 = metadata !{i64 556}
!572 = metadata !{i64 557}
!573 = metadata !{i64 558}
!574 = metadata !{i64 559}
!575 = metadata !{i64 560}
!576 = metadata !{i64 561}
!577 = metadata !{i64 562}
!578 = metadata !{i64 563}
!579 = metadata !{i64 564}
!580 = metadata !{i64 565}
!581 = metadata !{i64 566}
!582 = metadata !{i64 567}
!583 = metadata !{i64 568}
!584 = metadata !{i64 569}
!585 = metadata !{i64 570}
!586 = metadata !{i64 571}
!587 = metadata !{i64 572}
!588 = metadata !{i64 573}
!589 = metadata !{i64 574}
!590 = metadata !{i64 575}
!591 = metadata !{i64 576}
!592 = metadata !{i64 577}
!593 = metadata !{i64 578}
!594 = metadata !{i64 579}
!595 = metadata !{i64 580}
!596 = metadata !{i64 581}
!597 = metadata !{i64 582}
!598 = metadata !{i64 583}
!599 = metadata !{i64 584}
!600 = metadata !{i64 585}
