; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/rodinia-kmeans/fault injection/llfi-O2/kmeans.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [259 x i8] c"Usage: %s [switches] -i filename\0A       -i filename     :  file containing data to be clustered\0A       -b                 :input file is in binary format\0A       -k                 : number of clusters (default is 8) \0A       -t threshold    : threshold value\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [8 x i8] c"i:k:t:b\00", align 1
@optarg = external global i8*
@.str2 = private unnamed_addr constant [5 x i8] c"0600\00", align 1
@.str3 = private unnamed_addr constant [26 x i8] c"Error: no such file (%s)\0A\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c" ,\09\0A\00", align 1
@.str8 = private unnamed_addr constant [23 x i8] c"number of Clusters %d\0A\00", align 1
@.str9 = private unnamed_addr constant [26 x i8] c"number of Attributes %d\0A\0A\00", align 1
@.str13 = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@str = private unnamed_addr constant [14 x i8] c"I/O completed\00"
@str16 = private unnamed_addr constant [23 x i8] c"Cluster Centers Output\00"
@str17 = private unnamed_addr constant [76 x i8] c"The first number is cluster number and the following data is arribute value\00"
@str18 = private unnamed_addr constant [79 x i8] c"=============================================================================\0A\00"
@str19 = private unnamed_addr constant [2 x i8] c"\0A\00"

; Function Attrs: nounwind uwtable
define i32 @cluster(i32 %numObjects, i32 %numAttributes, float** %attributes, i32 %num_nclusters, float %threshold, float*** nocapture %cluster_centres) #0 {
  %1 = sext i32 %numObjects to i64, !llfi_index !1
  %2 = shl nsw i64 %1, 2, !llfi_index !2
  %3 = tail call noalias i8* @malloc(i64 %2) #4, !llfi_index !3
  %4 = bitcast i8* %3 to i32*, !llfi_index !4
  tail call void @srand(i32 7) #4, !llfi_index !5
  %5 = tail call float** @kmeans_clustering(float** %attributes, i32 %numAttributes, i32 %numObjects, i32 %num_nclusters, float %threshold, i32* %4) #4, !llfi_index !6
  %6 = load float*** %cluster_centres, align 8, !tbaa !7, !llfi_index !11
  %7 = icmp eq float** %6, null, !llfi_index !12
  br i1 %7, label %13, label %8, !llfi_index !13

; <label>:8                                       ; preds = %0
  %9 = load float** %6, align 8, !tbaa !7, !llfi_index !14
  %10 = bitcast float* %9 to i8*, !llfi_index !15
  tail call void @free(i8* %10) #4, !llfi_index !16
  %11 = load float*** %cluster_centres, align 8, !tbaa !7, !llfi_index !17
  %12 = bitcast float** %11 to i8*, !llfi_index !18
  tail call void @free(i8* %12) #4, !llfi_index !19
  br label %13, !llfi_index !20

; <label>:13                                      ; preds = %8, %0
  store float** %5, float*** %cluster_centres, align 8, !tbaa !7, !llfi_index !21
  tail call void @free(i8* %3) #4, !llfi_index !22
  ret i32 0, !llfi_index !23
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: noreturn nounwind uwtable
define void @usage(i8* %argv0) #2 {
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7, !llfi_index !24
  %2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([259 x i8]* @.str, i64 0, i64 0), i8* %argv0) #8, !llfi_index !25
  tail call void @exit(i32 -1) #9, !llfi_index !26
  unreachable, !llfi_index !27
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %cluster_centres = alloca float**, align 8, !llfi_index !28
  %numAttributes = alloca i32, align 4, !llfi_index !29
  %numObjects = alloca i32, align 4, !llfi_index !30
  %line = alloca [1024 x i8], align 16, !llfi_index !31
  store float** null, float*** %cluster_centres, align 8, !tbaa !7, !llfi_index !32
  %1 = getelementptr inbounds [1024 x i8]* %line, i64 0, i64 0, !llfi_index !33
  call void @llvm.lifetime.start(i64 1024, i8* %1) #4, !llfi_index !34
  br label %.outer31, !llfi_index !35

.outer31:                                         ; preds = %2, %0
  %isBinaryFile.0.ph = phi i32 [ 0, %0 ], [ 1, %2 ], !llfi_index !36
  %threshold.0.ph = phi float [ 0x3F50624DE0000000, %0 ], [ %threshold.0.ph33, %2 ], !llfi_index !37
  %filename.0.ph = phi i8* [ null, %0 ], [ %filename.0.ph37, %2 ], !llfi_index !38
  %nclusters.0.ph = phi i32 [ 5, %0 ], [ %nclusters.0, %2 ], !llfi_index !39
  br label %.outer32, !llfi_index !40

.outer32:                                         ; preds = %6, %.outer31
  %threshold.0.ph33 = phi float [ %9, %6 ], [ %threshold.0.ph, %.outer31 ], !llfi_index !41
  %filename.0.ph34 = phi i8* [ %filename.0.ph37, %6 ], [ %filename.0.ph, %.outer31 ], !llfi_index !42
  %nclusters.0.ph35 = phi i32 [ %nclusters.0, %6 ], [ %nclusters.0.ph, %.outer31 ], !llfi_index !43
  br label %.outer36, !llfi_index !44

.outer36:                                         ; preds = %4, %.outer32
  %filename.0.ph37 = phi i8* [ %5, %4 ], [ %filename.0.ph34, %.outer32 ], !llfi_index !45
  %nclusters.0.ph38 = phi i32 [ %nclusters.0, %4 ], [ %nclusters.0.ph35, %.outer32 ], !llfi_index !46
  br label %2, !llfi_index !47

; <label>:2                                       ; preds = %10, %.outer36
  %nclusters.0 = phi i32 [ %13, %10 ], [ %nclusters.0.ph38, %.outer36 ], !llfi_index !48
  %3 = call i32 @getopt(i32 %argc, i8** %argv, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #4, !llfi_index !49
  switch i32 %3, label %16 [
    i32 -1, label %18
    i32 105, label %4
    i32 98, label %.outer31
    i32 116, label %6
    i32 107, label %10
    i32 63, label %14
  ], !llfi_index !50

; <label>:4                                       ; preds = %2
  %5 = load i8** @optarg, align 8, !tbaa !7, !llfi_index !51
  br label %.outer36, !llfi_index !52

; <label>:6                                       ; preds = %2
  %7 = load i8** @optarg, align 8, !tbaa !7, !llfi_index !53
  %8 = call double @strtod(i8* nocapture %7, i8** null) #4, !llfi_index !54
  %9 = fptrunc double %8 to float, !llfi_index !55
  br label %.outer32, !llfi_index !56

; <label>:10                                      ; preds = %2
  %11 = load i8** @optarg, align 8, !tbaa !7, !llfi_index !57
  %12 = call i64 @strtol(i8* nocapture %11, i8** null, i32 10) #4, !llfi_index !58
  %13 = trunc i64 %12 to i32, !llfi_index !59
  br label %2, !llfi_index !60

; <label>:14                                      ; preds = %2
  %15 = load i8** %argv, align 8, !tbaa !7, !llfi_index !61
  call void @usage(i8* %15), !llfi_index !62
  unreachable, !llfi_index !63

; <label>:16                                      ; preds = %2
  %17 = load i8** %argv, align 8, !tbaa !7, !llfi_index !64
  call void @usage(i8* %17), !llfi_index !65
  unreachable, !llfi_index !66

; <label>:18                                      ; preds = %2
  %19 = icmp eq i8* %filename.0.ph37, null, !llfi_index !67
  br i1 %19, label %20, label %22, !llfi_index !68

; <label>:20                                      ; preds = %18
  %21 = load i8** %argv, align 8, !tbaa !7, !llfi_index !69
  call void @usage(i8* %21), !llfi_index !70
  unreachable, !llfi_index !71

; <label>:22                                      ; preds = %18
  store i32 0, i32* %numObjects, align 4, !tbaa !72, !llfi_index !74
  store i32 0, i32* %numAttributes, align 4, !tbaa !72, !llfi_index !75
  %23 = icmp eq i32 %isBinaryFile.0.ph, 0, !llfi_index !76
  br i1 %23, label %56, label %24, !llfi_index !77

; <label>:24                                      ; preds = %22
  %25 = call i32 (i8*, i32, ...)* @open(i8* %filename.0.ph37, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #4, !llfi_index !78
  %26 = icmp eq i32 %25, -1, !llfi_index !79
  br i1 %26, label %27, label %30, !llfi_index !80

; <label>:27                                      ; preds = %24
  %28 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7, !llfi_index !81
  %29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0), i8* %filename.0.ph37) #8, !llfi_index !82
  call void @exit(i32 1) #9, !llfi_index !83
  unreachable, !llfi_index !84

; <label>:30                                      ; preds = %24
  %31 = call i32 (i32, i32*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i32*, i64, ...)*)(i32 %25, i32* %numObjects, i64 4) #4, !llfi_index !85
  %32 = call i32 (i32, i32*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i32*, i64, ...)*)(i32 %25, i32* %numAttributes, i64 4) #4, !llfi_index !86
  %33 = load i32* %numObjects, align 4, !tbaa !72, !llfi_index !87
  %34 = load i32* %numAttributes, align 4, !tbaa !72, !llfi_index !88
  %35 = mul nsw i32 %34, %33, !llfi_index !89
  %36 = sext i32 %35 to i64, !llfi_index !90
  %37 = shl nsw i64 %36, 2, !llfi_index !91
  %38 = call noalias i8* @malloc(i64 %37) #4, !llfi_index !92
  %39 = bitcast i8* %38 to float*, !llfi_index !93
  %40 = sext i32 %33 to i64, !llfi_index !94
  %41 = shl nsw i64 %40, 3, !llfi_index !95
  %42 = call noalias i8* @malloc(i64 %41) #4, !llfi_index !96
  %43 = bitcast i8* %42 to float**, !llfi_index !97
  %44 = call noalias i8* @malloc(i64 %37) #4, !llfi_index !98
  %45 = bitcast i8* %44 to float*, !llfi_index !99
  store float* %45, float** %43, align 8, !tbaa !7, !llfi_index !100
  %46 = icmp sgt i32 %33, 1, !llfi_index !101
  br i1 %46, label %.lr.ph28, label %._crit_edge29, !llfi_index !102

.lr.ph28:                                         ; preds = %30
  %47 = sext i32 %34 to i64, !llfi_index !103
  br label %48, !llfi_index !104

; <label>:48                                      ; preds = %48, %.lr.ph28
  %49 = phi float* [ %45, %.lr.ph28 ], [ %50, %48 ], !llfi_index !105
  %indvars.iv60 = phi i64 [ 1, %.lr.ph28 ], [ %indvars.iv.next61, %48 ], !llfi_index !106
  %50 = getelementptr inbounds float* %49, i64 %47, !llfi_index !107
  %51 = getelementptr inbounds float** %43, i64 %indvars.iv60, !llfi_index !108
  store float* %50, float** %51, align 8, !tbaa !7, !llfi_index !109
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1, !llfi_index !110
  %52 = trunc i64 %indvars.iv.next61 to i32, !llfi_index !111
  %53 = icmp slt i32 %52, %33, !llfi_index !112
  br i1 %53, label %48, label %._crit_edge29, !llfi_index !113

._crit_edge29:                                    ; preds = %48, %30
  %54 = call i32 (i32, float*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, float*, i64, ...)*)(i32 %25, float* %39, i64 %37) #4, !llfi_index !114
  %55 = call i32 (i32, ...)* bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 %25) #4, !llfi_index !115
  br label %123, !llfi_index !116

; <label>:56                                      ; preds = %22
  %57 = call %struct._IO_FILE* @fopen(i8* %filename.0.ph37, i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #4, !llfi_index !117
  %58 = icmp eq %struct._IO_FILE* %57, null, !llfi_index !118
  br i1 %58, label %61, label %.preheader23, !llfi_index !119

.preheader23:                                     ; preds = %56
  %59 = call i8* @fgets(i8* %1, i32 1024, %struct._IO_FILE* %57) #4, !llfi_index !120
  %60 = icmp eq i8* %59, null, !llfi_index !121
  br i1 %60, label %._crit_edge25, label %.lr.ph24, !llfi_index !122

; <label>:61                                      ; preds = %56
  %62 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7, !llfi_index !123
  %63 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0), i8* %filename.0.ph37) #8, !llfi_index !124
  call void @exit(i32 1) #9, !llfi_index !125
  unreachable, !llfi_index !126

.lr.ph24:                                         ; preds = %.backedge, %.preheader23
  %64 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0)) #4, !llfi_index !127
  %65 = icmp eq i8* %64, null, !llfi_index !128
  br i1 %65, label %.backedge, label %66, !llfi_index !129

; <label>:66                                      ; preds = %.lr.ph24
  %67 = load i32* %numObjects, align 4, !tbaa !72, !llfi_index !130
  %68 = add nsw i32 %67, 1, !llfi_index !131
  store i32 %68, i32* %numObjects, align 4, !tbaa !72, !llfi_index !132
  br label %.backedge, !llfi_index !133

.backedge:                                        ; preds = %66, %.lr.ph24
  %69 = call i8* @fgets(i8* %1, i32 1024, %struct._IO_FILE* %57) #4, !llfi_index !134
  %70 = icmp eq i8* %69, null, !llfi_index !135
  br i1 %70, label %._crit_edge25, label %.lr.ph24, !llfi_index !136

._crit_edge25:                                    ; preds = %.backedge, %.preheader23
  call void @rewind(%struct._IO_FILE* %57) #4, !llfi_index !137
  br label %71, !llfi_index !138

; <label>:71                                      ; preds = %74, %._crit_edge25
  %72 = call i8* @fgets(i8* %1, i32 1024, %struct._IO_FILE* %57) #4, !llfi_index !139
  %73 = icmp eq i8* %72, null, !llfi_index !140
  br i1 %73, label %.loopexit20, label %74, !llfi_index !141

; <label>:74                                      ; preds = %71
  %75 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0)) #4, !llfi_index !142
  %76 = icmp eq i8* %75, null, !llfi_index !143
  br i1 %76, label %71, label %.preheader19, !llfi_index !144

.preheader19:                                     ; preds = %74
  %77 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #4, !llfi_index !145
  %78 = icmp eq i8* %77, null, !llfi_index !146
  br i1 %78, label %.loopexit20, label %.lr.ph21, !llfi_index !147

.lr.ph21:                                         ; preds = %.lr.ph21, %.preheader19
  %79 = load i32* %numAttributes, align 4, !tbaa !72, !llfi_index !148
  %80 = add nsw i32 %79, 1, !llfi_index !149
  store i32 %80, i32* %numAttributes, align 4, !tbaa !72, !llfi_index !150
  %81 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #4, !llfi_index !151
  %82 = icmp eq i8* %81, null, !llfi_index !152
  br i1 %82, label %.loopexit20, label %.lr.ph21, !llfi_index !153

.loopexit20:                                      ; preds = %.lr.ph21, %.preheader19, %71
  %83 = load i32* %numObjects, align 4, !tbaa !72, !llfi_index !154
  %84 = load i32* %numAttributes, align 4, !tbaa !72, !llfi_index !155
  %85 = mul nsw i32 %84, %83, !llfi_index !156
  %86 = sext i32 %85 to i64, !llfi_index !157
  %87 = shl nsw i64 %86, 2, !llfi_index !158
  %88 = call noalias i8* @malloc(i64 %87) #4, !llfi_index !159
  %89 = bitcast i8* %88 to float*, !llfi_index !160
  %90 = sext i32 %83 to i64, !llfi_index !161
  %91 = shl nsw i64 %90, 3, !llfi_index !162
  %92 = call noalias i8* @malloc(i64 %91) #4, !llfi_index !163
  %93 = bitcast i8* %92 to float**, !llfi_index !164
  %94 = call noalias i8* @malloc(i64 %87) #4, !llfi_index !165
  %95 = bitcast i8* %94 to float*, !llfi_index !166
  store float* %95, float** %93, align 8, !tbaa !7, !llfi_index !167
  %96 = icmp sgt i32 %83, 1, !llfi_index !168
  br i1 %96, label %.lr.ph17, label %._crit_edge18, !llfi_index !169

.lr.ph17:                                         ; preds = %.loopexit20
  %97 = sext i32 %84 to i64, !llfi_index !170
  br label %98, !llfi_index !171

; <label>:98                                      ; preds = %98, %.lr.ph17
  %99 = phi float* [ %95, %.lr.ph17 ], [ %100, %98 ], !llfi_index !172
  %indvars.iv58 = phi i64 [ 1, %.lr.ph17 ], [ %indvars.iv.next59, %98 ], !llfi_index !173
  %100 = getelementptr inbounds float* %99, i64 %97, !llfi_index !174
  %101 = getelementptr inbounds float** %93, i64 %indvars.iv58, !llfi_index !175
  store float* %100, float** %101, align 8, !tbaa !7, !llfi_index !176
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1, !llfi_index !177
  %102 = trunc i64 %indvars.iv.next59 to i32, !llfi_index !178
  %103 = icmp slt i32 %102, %83, !llfi_index !179
  br i1 %103, label %98, label %._crit_edge18, !llfi_index !180

._crit_edge18:                                    ; preds = %98, %.loopexit20
  call void @rewind(%struct._IO_FILE* %57) #4, !llfi_index !181
  br label %.outer.outer, !llfi_index !182

.outer.outer:                                     ; preds = %112, %._crit_edge18
  %i.2.ph.ph = phi i32 [ 0, %._crit_edge18 ], [ %117, %112 ], !llfi_index !183
  br label %.outer, !llfi_index !184

.outer:                                           ; preds = %106, %.outer.outer
  %104 = call i8* @fgets(i8* %1, i32 1024, %struct._IO_FILE* %57) #4, !llfi_index !185
  %105 = icmp eq i8* %104, null, !llfi_index !186
  br i1 %105, label %121, label %106, !llfi_index !187

; <label>:106                                     ; preds = %.outer
  %107 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0)) #4, !llfi_index !188
  %108 = icmp ne i8* %107, null, !llfi_index !189
  %109 = load i32* %numAttributes, align 4, !tbaa !72, !llfi_index !190
  %110 = icmp sgt i32 %109, 0, !llfi_index !191
  %or.cond = and i1 %108, %110, !llfi_index !192
  br i1 %or.cond, label %.lr.ph14, label %.outer, !llfi_index !193

.lr.ph14:                                         ; preds = %106
  %111 = sext i32 %i.2.ph.ph to i64, !llfi_index !194
  br label %112, !llfi_index !195

; <label>:112                                     ; preds = %112, %.lr.ph14
  %indvars.iv56 = phi i64 [ %111, %.lr.ph14 ], [ %indvars.iv.next57, %112 ], !llfi_index !196
  %j.013 = phi i32 [ 0, %.lr.ph14 ], [ %118, %112 ], !llfi_index !197
  %i.312 = phi i32 [ %i.2.ph.ph, %.lr.ph14 ], [ %117, %112 ], !llfi_index !198
  %113 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #4, !llfi_index !199
  %114 = call double @strtod(i8* nocapture %113, i8** null) #4, !llfi_index !200
  %115 = fptrunc double %114 to float, !llfi_index !201
  %116 = getelementptr inbounds float* %89, i64 %indvars.iv56, !llfi_index !202
  store float %115, float* %116, align 4, !tbaa !203, !llfi_index !205
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, 1, !llfi_index !206
  %117 = add nsw i32 %i.312, 1, !llfi_index !207
  %118 = add nsw i32 %j.013, 1, !llfi_index !208
  %119 = load i32* %numAttributes, align 4, !tbaa !72, !llfi_index !209
  %120 = icmp slt i32 %118, %119, !llfi_index !210
  br i1 %120, label %112, label %.outer.outer, !llfi_index !211

; <label>:121                                     ; preds = %.outer
  %122 = call i32 @fclose(%struct._IO_FILE* %57) #4, !llfi_index !212
  br label %123, !llfi_index !213

; <label>:123                                     ; preds = %121, %._crit_edge29
  %attributes.0 = phi float** [ %43, %._crit_edge29 ], [ %93, %121 ], !llfi_index !214
  %buf.0 = phi float* [ %39, %._crit_edge29 ], [ %89, %121 ], !llfi_index !215
  %puts = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str, i64 0, i64 0)), !llfi_index !216
  %124 = load float** %attributes.0, align 8, !tbaa !7, !llfi_index !217
  %125 = bitcast float* %124 to i8*, !llfi_index !218
  %126 = bitcast float* %buf.0 to i8*, !llfi_index !219
  %127 = load i32* %numObjects, align 4, !tbaa !72, !llfi_index !220
  %128 = load i32* %numAttributes, align 4, !tbaa !72, !llfi_index !221
  %129 = mul nsw i32 %128, %127, !llfi_index !222
  %130 = sext i32 %129 to i64, !llfi_index !223
  %131 = shl nsw i64 %130, 2, !llfi_index !224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* %126, i64 %131, i32 4, i1 false), !llfi_index !225
  %132 = call double @omp_get_wtime() #4, !llfi_index !226
  store float** null, float*** %cluster_centres, align 8, !tbaa !7, !llfi_index !227
  %133 = load i32* %numObjects, align 4, !tbaa !72, !llfi_index !228
  %134 = load i32* %numAttributes, align 4, !tbaa !72, !llfi_index !229
  %135 = call i32 @cluster(i32 %133, i32 %134, float** %attributes.0, i32 %nclusters.0, float %threshold.0.ph33, float*** %cluster_centres) #4, !llfi_index !230
  %136 = call double @omp_get_wtime() #4, !llfi_index !231
  %137 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str8, i64 0, i64 0), i32 %nclusters.0) #4, !llfi_index !232
  %138 = load i32* %numAttributes, align 4, !tbaa !72, !llfi_index !233
  %139 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str9, i64 0, i64 0), i32 %138) #4, !llfi_index !234
  %puts2 = call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str16, i64 0, i64 0)), !llfi_index !235
  %puts3 = call i32 @puts(i8* getelementptr inbounds ([76 x i8]* @str17, i64 0, i64 0)), !llfi_index !236
  %puts4 = call i32 @puts(i8* getelementptr inbounds ([79 x i8]* @str18, i64 0, i64 0)), !llfi_index !237
  %140 = icmp sgt i32 %nclusters.0, 0, !llfi_index !238
  br i1 %140, label %.lr.ph9, label %._crit_edge10, !llfi_index !239

.lr.ph9:                                          ; preds = %._crit_edge, %123
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %._crit_edge ], [ 0, %123 ], !llfi_index !240
  %141 = trunc i64 %indvars.iv53 to i32, !llfi_index !241
  %142 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i32 %141) #4, !llfi_index !242
  %143 = load i32* %numAttributes, align 4, !tbaa !72, !llfi_index !243
  %144 = icmp sgt i32 %143, 0, !llfi_index !244
  br i1 %144, label %.lr.ph, label %._crit_edge, !llfi_index !245

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph9
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph9 ], !llfi_index !246
  %145 = load float*** %cluster_centres, align 8, !tbaa !7, !llfi_index !247
  %146 = getelementptr inbounds float** %145, i64 %indvars.iv53, !llfi_index !248
  %147 = load float** %146, align 8, !tbaa !7, !llfi_index !249
  %148 = getelementptr inbounds float* %147, i64 %indvars.iv, !llfi_index !250
  %149 = load float* %148, align 4, !tbaa !203, !llfi_index !251
  %150 = fpext float %149 to double, !llfi_index !252
  %151 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), double %150) #4, !llfi_index !253
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !254
  %152 = load i32* %numAttributes, align 4, !tbaa !72, !llfi_index !255
  %153 = trunc i64 %indvars.iv.next to i32, !llfi_index !256
  %154 = icmp slt i32 %153, %152, !llfi_index !257
  br i1 %154, label %.lr.ph, label %._crit_edge, !llfi_index !258

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph9
  %puts5 = call i32 @puts(i8* getelementptr inbounds ([2 x i8]* @str19, i64 0, i64 0)), !llfi_index !259
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1, !llfi_index !260
  %lftr.wideiv = trunc i64 %indvars.iv.next54 to i32, !llfi_index !261
  %exitcond = icmp eq i32 %lftr.wideiv, %nclusters.0, !llfi_index !262
  br i1 %exitcond, label %._crit_edge10, label %.lr.ph9, !llfi_index !263

._crit_edge10:                                    ; preds = %._crit_edge, %123
  %155 = bitcast float** %attributes.0 to i8*, !llfi_index !264
  call void @free(i8* %155) #4, !llfi_index !265
  %156 = load float*** %cluster_centres, align 8, !tbaa !7, !llfi_index !266
  %157 = load float** %156, align 8, !tbaa !7, !llfi_index !267
  %158 = bitcast float* %157 to i8*, !llfi_index !268
  call void @free(i8* %158) #4, !llfi_index !269
  %159 = load float*** %cluster_centres, align 8, !tbaa !7, !llfi_index !270
  %160 = bitcast float** %159 to i8*, !llfi_index !271
  call void @free(i8* %160) #4, !llfi_index !272
  call void @free(i8* %126) #4, !llfi_index !273
  call void @llvm.lifetime.end(i64 1024, i8* %1) #4, !llfi_index !274
  ret i32 0, !llfi_index !275
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

declare i32 @getopt(i32, i8**, i8*) #5

declare i32 @open(i8* nocapture readonly, i32, ...) #5

declare i32 @read(...) #5

declare i32 @close(...) #5

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare void @rewind(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare double @omp_get_wtime() #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #1

; Function Attrs: nounwind
declare double @strtod(i8* readonly, i8** nocapture) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

; Function Attrs: nounwind readonly uwtable
define i32 @find_nearest_point(float* nocapture readonly %pt, i32 %nfeatures, float** nocapture readonly %pts, i32 %npts) #6 {
  %1 = icmp sgt i32 %npts, 0, !llfi_index !276
  br i1 %1, label %.lr.ph, label %._crit_edge, !llfi_index !277

.lr.ph:                                           ; preds = %0
  %2 = icmp sgt i32 %nfeatures, 0, !llfi_index !278
  br label %3, !llfi_index !279

; <label>:3                                       ; preds = %euclid_dist_2.exit, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %euclid_dist_2.exit ], !llfi_index !280
  %index.03 = phi i32 [ undef, %.lr.ph ], [ %index.1, %euclid_dist_2.exit ], !llfi_index !281
  %max_dist.02 = phi float [ 0x47EFFFFFE0000000, %.lr.ph ], [ %max_dist.1, %euclid_dist_2.exit ], !llfi_index !282
  %4 = getelementptr inbounds float** %pts, i64 %indvars.iv, !llfi_index !283
  %5 = load float** %4, align 8, !tbaa !7, !llfi_index !284
  br i1 %2, label %.lr.ph.i, label %euclid_dist_2.exit, !llfi_index !285

.lr.ph.i:                                         ; preds = %.lr.ph.i, %3
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %3 ], !llfi_index !286
  %ans.02.i = phi float [ %12, %.lr.ph.i ], [ 0.000000e+00, %3 ], !llfi_index !287
  %6 = getelementptr inbounds float* %pt, i64 %indvars.iv.i, !llfi_index !288
  %7 = load float* %6, align 4, !tbaa !203, !llfi_index !289
  %8 = getelementptr inbounds float* %5, i64 %indvars.iv.i, !llfi_index !290
  %9 = load float* %8, align 4, !tbaa !203, !llfi_index !291
  %10 = fsub float %7, %9, !llfi_index !292
  %11 = fmul float %10, %10, !llfi_index !293
  %12 = fadd float %ans.02.i, %11, !llfi_index !294
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !llfi_index !295
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !llfi_index !296
  %exitcond = icmp eq i32 %lftr.wideiv, %nfeatures, !llfi_index !297
  br i1 %exitcond, label %euclid_dist_2.exit, label %.lr.ph.i, !llfi_index !298

euclid_dist_2.exit:                               ; preds = %.lr.ph.i, %3
  %ans.0.lcssa.i = phi float [ 0.000000e+00, %3 ], [ %12, %.lr.ph.i ], !llfi_index !299
  %13 = fcmp olt float %ans.0.lcssa.i, %max_dist.02, !llfi_index !300
  %max_dist.1 = select i1 %13, float %ans.0.lcssa.i, float %max_dist.02, !llfi_index !301
  %14 = trunc i64 %indvars.iv to i32, !llfi_index !302
  %index.1 = select i1 %13, i32 %14, i32 %index.03, !llfi_index !303
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !304
  %lftr.wideiv4 = trunc i64 %indvars.iv.next to i32, !llfi_index !305
  %exitcond5 = icmp eq i32 %lftr.wideiv4, %npts, !llfi_index !306
  br i1 %exitcond5, label %._crit_edge, label %3, !llfi_index !307

._crit_edge:                                      ; preds = %euclid_dist_2.exit, %0
  %index.0.lcssa = phi i32 [ undef, %0 ], [ %index.1, %euclid_dist_2.exit ], !llfi_index !308
  ret i32 %index.0.lcssa, !llfi_index !309
}

; Function Attrs: inlinehint nounwind readonly uwtable
define float @euclid_dist_2(float* nocapture readonly %pt1, float* nocapture readonly %pt2, i32 %numdims) #7 {
  %1 = icmp sgt i32 %numdims, 0, !llfi_index !310
  br i1 %1, label %.lr.ph, label %._crit_edge, !llfi_index !311

.lr.ph:                                           ; preds = %.lr.ph, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ], !llfi_index !312
  %ans.02 = phi float [ %8, %.lr.ph ], [ 0.000000e+00, %0 ], !llfi_index !313
  %2 = getelementptr inbounds float* %pt1, i64 %indvars.iv, !llfi_index !314
  %3 = load float* %2, align 4, !tbaa !203, !llfi_index !315
  %4 = getelementptr inbounds float* %pt2, i64 %indvars.iv, !llfi_index !316
  %5 = load float* %4, align 4, !tbaa !203, !llfi_index !317
  %6 = fsub float %3, %5, !llfi_index !318
  %7 = fmul float %6, %6, !llfi_index !319
  %8 = fadd float %ans.02, %7, !llfi_index !320
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !321
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !322
  %exitcond = icmp eq i32 %lftr.wideiv, %numdims, !llfi_index !323
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !324

._crit_edge:                                      ; preds = %.lr.ph, %0
  %ans.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %8, %.lr.ph ], !llfi_index !325
  ret float %ans.0.lcssa, !llfi_index !326
}

; Function Attrs: nounwind uwtable
define noalias float** @kmeans_clustering(float** nocapture readonly %feature, i32 %nfeatures, i32 %npoints, i32 %nclusters, float %threshold, i32* nocapture %membership) #0 {
  %membership48 = bitcast i32* %membership to i8*, !llfi_index !327
  %1 = sext i32 %nclusters to i64, !llfi_index !328
  %2 = shl nsw i64 %1, 3, !llfi_index !329
  %3 = tail call noalias i8* @malloc(i64 %2) #4, !llfi_index !330
  %4 = bitcast i8* %3 to float**, !llfi_index !331
  %5 = mul nsw i32 %nclusters, %nfeatures, !llfi_index !332
  %6 = sext i32 %5 to i64, !llfi_index !333
  %7 = shl nsw i64 %6, 2, !llfi_index !334
  %8 = tail call noalias i8* @malloc(i64 %7) #4, !llfi_index !335
  %9 = bitcast i8* %8 to float*, !llfi_index !336
  store float* %9, float** %4, align 8, !tbaa !7, !llfi_index !337
  %10 = icmp sgt i32 %nclusters, 1, !llfi_index !338
  br i1 %10, label %.lr.ph27, label %.preheader22, !llfi_index !339

.lr.ph27:                                         ; preds = %0
  %11 = sext i32 %nfeatures to i64, !llfi_index !340
  br label %18, !llfi_index !341

.preheader22:                                     ; preds = %18, %0
  %12 = icmp sgt i32 %nclusters, 0, !llfi_index !342
  br i1 %12, label %.preheader18.lr.ph, label %.preheader14, !llfi_index !343

.preheader18.lr.ph:                               ; preds = %.preheader22
  %13 = icmp sgt i32 %nfeatures, 0, !llfi_index !344
  %14 = add i32 %nfeatures, -1, !llfi_index !345
  %15 = zext i32 %14 to i64, !llfi_index !346
  %16 = add i64 %15, 1, !llfi_index !347
  %17 = zext i32 %14 to i64, !llfi_index !348
  br label %.preheader18, !llfi_index !349

; <label>:18                                      ; preds = %18, %.lr.ph27
  %19 = phi float* [ %9, %.lr.ph27 ], [ %20, %18 ], !llfi_index !350
  %indvars.iv57 = phi i64 [ 1, %.lr.ph27 ], [ %indvars.iv.next58, %18 ], !llfi_index !351
  %20 = getelementptr inbounds float* %19, i64 %11, !llfi_index !352
  %21 = getelementptr inbounds float** %4, i64 %indvars.iv57, !llfi_index !353
  store float* %20, float** %21, align 8, !tbaa !7, !llfi_index !354
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1, !llfi_index !355
  %lftr.wideiv59 = trunc i64 %indvars.iv.next58 to i32, !llfi_index !356
  %exitcond60 = icmp eq i32 %lftr.wideiv59, %nclusters, !llfi_index !357
  br i1 %exitcond60, label %.preheader22, label %18, !llfi_index !358

.preheader18:                                     ; preds = %._crit_edge21, %.preheader18.lr.ph
  %indvars.iv53 = phi i64 [ 0, %.preheader18.lr.ph ], [ %indvars.iv.next54, %._crit_edge21 ], !llfi_index !359
  br i1 %13, label %.lr.ph20, label %._crit_edge21, !llfi_index !360

.lr.ph20:                                         ; preds = %.preheader18
  %22 = getelementptr inbounds float** %feature, i64 %indvars.iv53, !llfi_index !361
  %23 = load float** %22, align 8, !tbaa !7, !llfi_index !362
  %24 = getelementptr inbounds float** %4, i64 %indvars.iv53, !llfi_index !363
  %25 = load float** %24, align 8, !tbaa !7, !llfi_index !364
  %end.idx76 = add i64 %15, 1, !llfi_index !365
  %n.vec78 = and i64 %16, 8589934584, !llfi_index !366
  %cmp.zero80 = icmp eq i64 %n.vec78, 0, !llfi_index !367
  br i1 %cmp.zero80, label %middle.block73, label %vector.memcheck89, !llfi_index !368

vector.memcheck89:                                ; preds = %.lr.ph20
  %scevgep83 = getelementptr float* %23, i64 %17, !llfi_index !369
  %scevgep81 = getelementptr float* %25, i64 %17, !llfi_index !370
  %bound186 = icmp ule float* %23, %scevgep81, !llfi_index !371
  %bound085 = icmp ule float* %25, %scevgep83, !llfi_index !372
  %memcheck.conflict88 = and i1 %bound085, %bound186, !llfi_index !373
  br i1 %memcheck.conflict88, label %middle.block73, label %vector.body72, !llfi_index !374

vector.body72:                                    ; preds = %vector.body72, %vector.memcheck89
  %index75 = phi i64 [ %index.next93, %vector.body72 ], [ 0, %vector.memcheck89 ], !llfi_index !375
  %26 = getelementptr inbounds float* %23, i64 %index75, !llfi_index !376
  %27 = bitcast float* %26 to <4 x float>*, !llfi_index !377
  %wide.load98 = load <4 x float>* %27, align 4, !llfi_index !378
  %.sum104 = or i64 %index75, 4, !llfi_index !379
  %28 = getelementptr float* %23, i64 %.sum104, !llfi_index !380
  %29 = bitcast float* %28 to <4 x float>*, !llfi_index !381
  %wide.load99 = load <4 x float>* %29, align 4, !llfi_index !382
  %30 = getelementptr inbounds float* %25, i64 %index75, !llfi_index !383
  %31 = bitcast float* %30 to <4 x float>*, !llfi_index !384
  store <4 x float> %wide.load98, <4 x float>* %31, align 4, !llfi_index !385
  %.sum105 = or i64 %index75, 4, !llfi_index !386
  %32 = getelementptr float* %25, i64 %.sum105, !llfi_index !387
  %33 = bitcast float* %32 to <4 x float>*, !llfi_index !388
  store <4 x float> %wide.load99, <4 x float>* %33, align 4, !llfi_index !389
  %index.next93 = add i64 %index75, 8, !llfi_index !390
  %34 = icmp eq i64 %index.next93, %n.vec78, !llfi_index !391
  br i1 %34, label %middle.block73, label %vector.body72, !llvm.loop !392, !llfi_index !395

middle.block73:                                   ; preds = %vector.body72, %vector.memcheck89, %.lr.ph20
  %resume.val90 = phi i64 [ 0, %.lr.ph20 ], [ 0, %vector.memcheck89 ], [ %n.vec78, %vector.body72 ], !llfi_index !396
  %cmp.n92 = icmp eq i64 %end.idx76, %resume.val90, !llfi_index !397
  br i1 %cmp.n92, label %._crit_edge21, label %scalar.ph74, !llfi_index !398

.preheader14:                                     ; preds = %._crit_edge21, %.preheader22
  %35 = icmp sgt i32 %npoints, 0, !llfi_index !399
  br i1 %35, label %.lr.ph16, label %43, !llfi_index !400

.lr.ph16:                                         ; preds = %.preheader14
  %36 = add i32 %npoints, -1, !llfi_index !401
  %37 = zext i32 %36 to i64, !llfi_index !402
  %38 = shl nuw nsw i64 %37, 2, !llfi_index !403
  %39 = add i64 %38, 4, !llfi_index !404
  call void @llvm.memset.p0i8.i64(i8* %membership48, i8 -1, i64 %39, i32 4, i1 false), !llfi_index !405
  br label %43, !llfi_index !406

scalar.ph74:                                      ; preds = %scalar.ph74, %middle.block73
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %scalar.ph74 ], [ %resume.val90, %middle.block73 ], !llfi_index !407
  %40 = getelementptr inbounds float* %23, i64 %indvars.iv49, !llfi_index !408
  %41 = load float* %40, align 4, !tbaa !203, !llfi_index !409
  %42 = getelementptr inbounds float* %25, i64 %indvars.iv49, !llfi_index !410
  store float %41, float* %42, align 4, !tbaa !203, !llfi_index !411
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1, !llfi_index !412
  %lftr.wideiv51 = trunc i64 %indvars.iv.next50 to i32, !llfi_index !413
  %exitcond52 = icmp eq i32 %lftr.wideiv51, %nfeatures, !llfi_index !414
  br i1 %exitcond52, label %._crit_edge21, label %scalar.ph74, !llvm.loop !415, !llfi_index !416

._crit_edge21:                                    ; preds = %scalar.ph74, %middle.block73, %.preheader18
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1, !llfi_index !417
  %lftr.wideiv55 = trunc i64 %indvars.iv.next54 to i32, !llfi_index !418
  %exitcond56 = icmp eq i32 %lftr.wideiv55, %nclusters, !llfi_index !419
  br i1 %exitcond56, label %.preheader14, label %.preheader18, !llfi_index !420

; <label>:43                                      ; preds = %.lr.ph16, %.preheader14
  %44 = tail call noalias i8* @calloc(i64 %1, i64 4) #4, !llfi_index !421
  %45 = bitcast i8* %44 to i32*, !llfi_index !422
  %46 = tail call noalias i8* @malloc(i64 %2) #4, !llfi_index !423
  %47 = bitcast i8* %46 to float**, !llfi_index !424
  %48 = tail call noalias i8* @calloc(i64 %6, i64 4) #4, !llfi_index !425
  %49 = bitcast i8* %48 to float*, !llfi_index !426
  store float* %49, float** %47, align 8, !tbaa !7, !llfi_index !427
  br i1 %10, label %.lr.ph13, label %.preheader10, !llfi_index !428

.lr.ph13:                                         ; preds = %43
  %50 = sext i32 %nfeatures to i64, !llfi_index !429
  br label %56, !llfi_index !430

.preheader10:                                     ; preds = %56, %43
  %51 = icmp sgt i32 %nfeatures, 0, !llfi_index !431
  %52 = add i32 %nfeatures, -1, !llfi_index !432
  %53 = zext i32 %52 to i64, !llfi_index !433
  %54 = add i64 %53, 1, !llfi_index !434
  %55 = zext i32 %52 to i64, !llfi_index !435
  br label %.backedge, !llfi_index !436

; <label>:56                                      ; preds = %56, %.lr.ph13
  %57 = phi float* [ %49, %.lr.ph13 ], [ %58, %56 ], !llfi_index !437
  %indvars.iv40 = phi i64 [ 1, %.lr.ph13 ], [ %indvars.iv.next41, %56 ], !llfi_index !438
  %58 = getelementptr inbounds float* %57, i64 %50, !llfi_index !439
  %59 = getelementptr inbounds float** %47, i64 %indvars.iv40, !llfi_index !440
  store float* %58, float** %59, align 8, !tbaa !7, !llfi_index !441
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1, !llfi_index !442
  %lftr.wideiv42 = trunc i64 %indvars.iv.next41 to i32, !llfi_index !443
  %exitcond43 = icmp eq i32 %lftr.wideiv42, %nclusters, !llfi_index !444
  br i1 %exitcond43, label %.preheader10, label %56, !llfi_index !445

.backedge:                                        ; preds = %._crit_edge4, %._crit_edge9, %.preheader10
  %delta.0 = phi float [ 0.000000e+00, %.preheader10 ], [ %delta.1, %._crit_edge9 ], [ 0.000000e+00, %._crit_edge4 ], !llfi_index !446
  %i.4 = phi i32 [ 0, %.preheader10 ], [ %106, %._crit_edge9 ], [ 0, %._crit_edge4 ], !llfi_index !447
  %60 = icmp slt i32 %i.4, %npoints, !llfi_index !448
  br i1 %60, label %61, label %.preheader2, !llfi_index !449

.preheader2:                                      ; preds = %.backedge
  br i1 %12, label %.preheader, label %._crit_edge4, !llfi_index !450

; <label>:61                                      ; preds = %.backedge
  %62 = sext i32 %i.4 to i64, !llfi_index !451
  %63 = getelementptr inbounds float** %feature, i64 %62, !llfi_index !452
  %64 = load float** %63, align 8, !tbaa !7, !llfi_index !453
  br i1 %12, label %.lr.ph.i, label %find_nearest_point.exit, !llfi_index !454

.lr.ph.i:                                         ; preds = %euclid_dist_2.exit.i, %61
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %euclid_dist_2.exit.i ], [ 0, %61 ], !llfi_index !455
  %index.03.i = phi i32 [ %index.1.i, %euclid_dist_2.exit.i ], [ undef, %61 ], !llfi_index !456
  %max_dist.02.i = phi float [ %max_dist.1.i, %euclid_dist_2.exit.i ], [ 0x47EFFFFFE0000000, %61 ], !llfi_index !457
  %65 = getelementptr inbounds float** %4, i64 %indvars.iv.i, !llfi_index !458
  %66 = load float** %65, align 8, !tbaa !7, !llfi_index !459
  br i1 %51, label %.lr.ph.i.i, label %euclid_dist_2.exit.i, !llfi_index !460

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i ], !llfi_index !461
  %ans.02.i.i = phi float [ %73, %.lr.ph.i.i ], [ 0.000000e+00, %.lr.ph.i ], !llfi_index !462
  %67 = getelementptr inbounds float* %64, i64 %indvars.iv.i.i, !llfi_index !463
  %68 = load float* %67, align 4, !tbaa !203, !llfi_index !464
  %69 = getelementptr inbounds float* %66, i64 %indvars.iv.i.i, !llfi_index !465
  %70 = load float* %69, align 4, !tbaa !203, !llfi_index !466
  %71 = fsub float %68, %70, !llfi_index !467
  %72 = fmul float %71, %71, !llfi_index !468
  %73 = fadd float %ans.02.i.i, %72, !llfi_index !469
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !llfi_index !470
  %lftr.wideiv32 = trunc i64 %indvars.iv.next.i.i to i32, !llfi_index !471
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %nfeatures, !llfi_index !472
  br i1 %exitcond33, label %euclid_dist_2.exit.i, label %.lr.ph.i.i, !llfi_index !473

euclid_dist_2.exit.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i
  %ans.0.lcssa.i.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %73, %.lr.ph.i.i ], !llfi_index !474
  %74 = fcmp olt float %ans.0.lcssa.i.i, %max_dist.02.i, !llfi_index !475
  %max_dist.1.i = select i1 %74, float %ans.0.lcssa.i.i, float %max_dist.02.i, !llfi_index !476
  %75 = trunc i64 %indvars.iv.i to i32, !llfi_index !477
  %index.1.i = select i1 %74, i32 %75, i32 %index.03.i, !llfi_index !478
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !llfi_index !479
  %lftr.wideiv34 = trunc i64 %indvars.iv.next.i to i32, !llfi_index !480
  %exitcond35 = icmp eq i32 %lftr.wideiv34, %nclusters, !llfi_index !481
  br i1 %exitcond35, label %find_nearest_point.exit, label %.lr.ph.i, !llfi_index !482

find_nearest_point.exit:                          ; preds = %euclid_dist_2.exit.i, %61
  %index.0.lcssa.i = phi i32 [ undef, %61 ], [ %index.1.i, %euclid_dist_2.exit.i ], !llfi_index !483
  %76 = getelementptr inbounds i32* %membership, i64 %62, !llfi_index !484
  %77 = load i32* %76, align 4, !tbaa !72, !llfi_index !485
  %78 = icmp eq i32 %77, %index.0.lcssa.i, !llfi_index !486
  br i1 %78, label %81, label %79, !llfi_index !487

; <label>:79                                      ; preds = %find_nearest_point.exit
  %80 = fadd float %delta.0, 1.000000e+00, !llfi_index !488
  br label %81, !llfi_index !489

; <label>:81                                      ; preds = %79, %find_nearest_point.exit
  %delta.1 = phi float [ %80, %79 ], [ %delta.0, %find_nearest_point.exit ], !llfi_index !490
  store i32 %index.0.lcssa.i, i32* %76, align 4, !tbaa !72, !llfi_index !491
  %82 = sext i32 %index.0.lcssa.i to i64, !llfi_index !492
  %83 = getelementptr inbounds i32* %45, i64 %82, !llfi_index !493
  %84 = load i32* %83, align 4, !tbaa !72, !llfi_index !494
  %85 = add nsw i32 %84, 1, !llfi_index !495
  store i32 %85, i32* %83, align 4, !tbaa !72, !llfi_index !496
  br i1 %51, label %.lr.ph8, label %._crit_edge9, !llfi_index !497

.lr.ph8:                                          ; preds = %81
  %86 = getelementptr inbounds float** %47, i64 %82, !llfi_index !498
  %87 = load float** %86, align 8, !tbaa !7, !llfi_index !499
  %end.idx = add i64 %53, 1, !llfi_index !500
  %n.vec = and i64 %54, 8589934584, !llfi_index !501
  %cmp.zero = icmp eq i64 %n.vec, 0, !llfi_index !502
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck, !llfi_index !503

vector.memcheck:                                  ; preds = %.lr.ph8
  %scevgep63 = getelementptr float* %64, i64 %55, !llfi_index !504
  %scevgep = getelementptr float* %87, i64 %55, !llfi_index !505
  %bound1 = icmp ule float* %64, %scevgep, !llfi_index !506
  %bound0 = icmp ule float* %87, %scevgep63, !llfi_index !507
  %memcheck.conflict = and i1 %bound0, %bound1, !llfi_index !508
  br i1 %memcheck.conflict, label %middle.block, label %vector.body, !llfi_index !509

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ], !llfi_index !510
  %88 = getelementptr inbounds float* %64, i64 %index, !llfi_index !511
  %89 = bitcast float* %88 to <4 x float>*, !llfi_index !512
  %wide.load = load <4 x float>* %89, align 4, !llfi_index !513
  %.sum102 = or i64 %index, 4, !llfi_index !514
  %90 = getelementptr float* %64, i64 %.sum102, !llfi_index !515
  %91 = bitcast float* %90 to <4 x float>*, !llfi_index !516
  %wide.load66 = load <4 x float>* %91, align 4, !llfi_index !517
  %92 = getelementptr inbounds float* %87, i64 %index, !llfi_index !518
  %93 = bitcast float* %92 to <4 x float>*, !llfi_index !519
  %wide.load67 = load <4 x float>* %93, align 4, !llfi_index !520
  %.sum103 = or i64 %index, 4, !llfi_index !521
  %94 = getelementptr float* %87, i64 %.sum103, !llfi_index !522
  %95 = bitcast float* %94 to <4 x float>*, !llfi_index !523
  %wide.load68 = load <4 x float>* %95, align 4, !llfi_index !524
  %96 = fadd <4 x float> %wide.load, %wide.load67, !llfi_index !525
  %97 = fadd <4 x float> %wide.load66, %wide.load68, !llfi_index !526
  %98 = bitcast float* %92 to <4 x float>*, !llfi_index !527
  store <4 x float> %96, <4 x float>* %98, align 4, !llfi_index !528
  %99 = bitcast float* %94 to <4 x float>*, !llfi_index !529
  store <4 x float> %97, <4 x float>* %99, align 4, !llfi_index !530
  %index.next = add i64 %index, 8, !llfi_index !531
  %100 = icmp eq i64 %index.next, %n.vec, !llfi_index !532
  br i1 %100, label %middle.block, label %vector.body, !llvm.loop !533, !llfi_index !534

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph8
  %resume.val = phi i64 [ 0, %.lr.ph8 ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ], !llfi_index !535
  %cmp.n = icmp eq i64 %end.idx, %resume.val, !llfi_index !536
  br i1 %cmp.n, label %._crit_edge9, label %scalar.ph, !llfi_index !537

scalar.ph:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %scalar.ph ], [ %resume.val, %middle.block ], !llfi_index !538
  %101 = getelementptr inbounds float* %64, i64 %indvars.iv36, !llfi_index !539
  %102 = load float* %101, align 4, !tbaa !203, !llfi_index !540
  %103 = getelementptr inbounds float* %87, i64 %indvars.iv36, !llfi_index !541
  %104 = load float* %103, align 4, !tbaa !203, !llfi_index !542
  %105 = fadd float %102, %104, !llfi_index !543
  store float %105, float* %103, align 4, !tbaa !203, !llfi_index !544
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1, !llfi_index !545
  %lftr.wideiv38 = trunc i64 %indvars.iv.next37 to i32, !llfi_index !546
  %exitcond39 = icmp eq i32 %lftr.wideiv38, %nfeatures, !llfi_index !547
  br i1 %exitcond39, label %._crit_edge9, label %scalar.ph, !llvm.loop !548, !llfi_index !549

._crit_edge9:                                     ; preds = %scalar.ph, %middle.block, %81
  %106 = add nsw i32 %i.4, 1, !llfi_index !550
  br label %.backedge, !llfi_index !551

.preheader:                                       ; preds = %._crit_edge, %.preheader2
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %._crit_edge ], [ 0, %.preheader2 ], !llfi_index !552
  %107 = getelementptr inbounds i32* %45, i64 %indvars.iv28, !llfi_index !553
  br i1 %51, label %.lr.ph, label %._crit_edge, !llfi_index !554

.lr.ph:                                           ; preds = %.preheader
  %108 = load i32* %107, align 4, !tbaa !72, !llfi_index !555
  %109 = icmp sgt i32 %108, 0, !llfi_index !556
  %110 = getelementptr inbounds float** %47, i64 %indvars.iv28, !llfi_index !557
  %111 = sitofp i32 %108 to float, !llfi_index !558
  %112 = getelementptr inbounds float** %4, i64 %indvars.iv28, !llfi_index !559
  %113 = load float** %110, align 8, !tbaa !7, !llfi_index !560
  br label %114, !llfi_index !561

; <label>:114                                     ; preds = %._crit_edge61, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge61 ], !llfi_index !562
  %115 = getelementptr inbounds float* %113, i64 %indvars.iv, !llfi_index !563
  br i1 %109, label %116, label %._crit_edge61, !llfi_index !564

; <label>:116                                     ; preds = %114
  %117 = load float* %115, align 4, !tbaa !203, !llfi_index !565
  %118 = fdiv float %117, %111, !llfi_index !566
  %119 = load float** %112, align 8, !tbaa !7, !llfi_index !567
  %120 = getelementptr inbounds float* %119, i64 %indvars.iv, !llfi_index !568
  store float %118, float* %120, align 4, !tbaa !203, !llfi_index !569
  br label %._crit_edge61, !llfi_index !570

._crit_edge61:                                    ; preds = %116, %114
  store float 0.000000e+00, float* %115, align 4, !tbaa !203, !llfi_index !571
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !572
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !573
  %exitcond = icmp eq i32 %lftr.wideiv, %nfeatures, !llfi_index !574
  br i1 %exitcond, label %._crit_edge, label %114, !llfi_index !575

._crit_edge:                                      ; preds = %._crit_edge61, %.preheader
  store i32 0, i32* %107, align 4, !tbaa !72, !llfi_index !576
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1, !llfi_index !577
  %lftr.wideiv30 = trunc i64 %indvars.iv.next29 to i32, !llfi_index !578
  %exitcond31 = icmp eq i32 %lftr.wideiv30, %nclusters, !llfi_index !579
  br i1 %exitcond31, label %._crit_edge4, label %.preheader, !llfi_index !580

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader2
  %121 = fcmp ogt float %delta.0, %threshold, !llfi_index !581
  br i1 %121, label %.backedge, label %122, !llfi_index !582

; <label>:122                                     ; preds = %._crit_edge4
  %123 = load float** %47, align 8, !tbaa !7, !llfi_index !583
  %124 = bitcast float* %123 to i8*, !llfi_index !584
  tail call void @free(i8* %124) #4, !llfi_index !585
  tail call void @free(i8* %46) #4, !llfi_index !586
  tail call void @free(i8* %44) #4, !llfi_index !587
  ret float** %4, !llfi_index !588
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { cold nounwind }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!1 = metadata !{i64 1}
!2 = metadata !{i64 2}
!3 = metadata !{i64 3}
!4 = metadata !{i64 4}
!5 = metadata !{i64 5}
!6 = metadata !{i64 6}
!7 = metadata !{metadata !8, metadata !8, i64 0}
!8 = metadata !{metadata !"any pointer", metadata !9, i64 0}
!9 = metadata !{metadata !"omnipotent char", metadata !10, i64 0}
!10 = metadata !{metadata !"Simple C/C++ TBAA"}
!11 = metadata !{i64 7}
!12 = metadata !{i64 8}
!13 = metadata !{i64 9}
!14 = metadata !{i64 10}
!15 = metadata !{i64 11}
!16 = metadata !{i64 12}
!17 = metadata !{i64 13}
!18 = metadata !{i64 14}
!19 = metadata !{i64 15}
!20 = metadata !{i64 16}
!21 = metadata !{i64 17}
!22 = metadata !{i64 18}
!23 = metadata !{i64 19}
!24 = metadata !{i64 20}
!25 = metadata !{i64 21}
!26 = metadata !{i64 22}
!27 = metadata !{i64 23}
!28 = metadata !{i64 24}
!29 = metadata !{i64 25}
!30 = metadata !{i64 26}
!31 = metadata !{i64 27}
!32 = metadata !{i64 28}
!33 = metadata !{i64 29}
!34 = metadata !{i64 30}
!35 = metadata !{i64 31}
!36 = metadata !{i64 32}
!37 = metadata !{i64 33}
!38 = metadata !{i64 34}
!39 = metadata !{i64 35}
!40 = metadata !{i64 36}
!41 = metadata !{i64 37}
!42 = metadata !{i64 38}
!43 = metadata !{i64 39}
!44 = metadata !{i64 40}
!45 = metadata !{i64 41}
!46 = metadata !{i64 42}
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
!70 = metadata !{i64 66}
!71 = metadata !{i64 67}
!72 = metadata !{metadata !73, metadata !73, i64 0}
!73 = metadata !{metadata !"int", metadata !9, i64 0}
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
!124 = metadata !{i64 118}
!125 = metadata !{i64 119}
!126 = metadata !{i64 120}
!127 = metadata !{i64 121}
!128 = metadata !{i64 122}
!129 = metadata !{i64 123}
!130 = metadata !{i64 124}
!131 = metadata !{i64 125}
!132 = metadata !{i64 126}
!133 = metadata !{i64 127}
!134 = metadata !{i64 128}
!135 = metadata !{i64 129}
!136 = metadata !{i64 130}
!137 = metadata !{i64 131}
!138 = metadata !{i64 132}
!139 = metadata !{i64 133}
!140 = metadata !{i64 134}
!141 = metadata !{i64 135}
!142 = metadata !{i64 136}
!143 = metadata !{i64 137}
!144 = metadata !{i64 138}
!145 = metadata !{i64 139}
!146 = metadata !{i64 140}
!147 = metadata !{i64 141}
!148 = metadata !{i64 142}
!149 = metadata !{i64 143}
!150 = metadata !{i64 144}
!151 = metadata !{i64 145}
!152 = metadata !{i64 146}
!153 = metadata !{i64 147}
!154 = metadata !{i64 148}
!155 = metadata !{i64 149}
!156 = metadata !{i64 150}
!157 = metadata !{i64 151}
!158 = metadata !{i64 152}
!159 = metadata !{i64 153}
!160 = metadata !{i64 154}
!161 = metadata !{i64 155}
!162 = metadata !{i64 156}
!163 = metadata !{i64 157}
!164 = metadata !{i64 158}
!165 = metadata !{i64 159}
!166 = metadata !{i64 160}
!167 = metadata !{i64 161}
!168 = metadata !{i64 162}
!169 = metadata !{i64 163}
!170 = metadata !{i64 164}
!171 = metadata !{i64 165}
!172 = metadata !{i64 166}
!173 = metadata !{i64 167}
!174 = metadata !{i64 168}
!175 = metadata !{i64 169}
!176 = metadata !{i64 170}
!177 = metadata !{i64 171}
!178 = metadata !{i64 172}
!179 = metadata !{i64 173}
!180 = metadata !{i64 174}
!181 = metadata !{i64 175}
!182 = metadata !{i64 176}
!183 = metadata !{i64 177}
!184 = metadata !{i64 178}
!185 = metadata !{i64 179}
!186 = metadata !{i64 180}
!187 = metadata !{i64 181}
!188 = metadata !{i64 182}
!189 = metadata !{i64 183}
!190 = metadata !{i64 184}
!191 = metadata !{i64 185}
!192 = metadata !{i64 186}
!193 = metadata !{i64 187}
!194 = metadata !{i64 188}
!195 = metadata !{i64 189}
!196 = metadata !{i64 190}
!197 = metadata !{i64 191}
!198 = metadata !{i64 192}
!199 = metadata !{i64 193}
!200 = metadata !{i64 194}
!201 = metadata !{i64 195}
!202 = metadata !{i64 196}
!203 = metadata !{metadata !204, metadata !204, i64 0}
!204 = metadata !{metadata !"float", metadata !9, i64 0}
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
!359 = metadata !{i64 351}
!360 = metadata !{i64 352}
!361 = metadata !{i64 353}
!362 = metadata !{i64 354}
!363 = metadata !{i64 355}
!364 = metadata !{i64 356}
!365 = metadata !{i64 357}
!366 = metadata !{i64 358}
!367 = metadata !{i64 359}
!368 = metadata !{i64 360}
!369 = metadata !{i64 361}
!370 = metadata !{i64 362}
!371 = metadata !{i64 363}
!372 = metadata !{i64 364}
!373 = metadata !{i64 365}
!374 = metadata !{i64 366}
!375 = metadata !{i64 367}
!376 = metadata !{i64 368}
!377 = metadata !{i64 369}
!378 = metadata !{i64 370}
!379 = metadata !{i64 371}
!380 = metadata !{i64 372}
!381 = metadata !{i64 373}
!382 = metadata !{i64 374}
!383 = metadata !{i64 375}
!384 = metadata !{i64 376}
!385 = metadata !{i64 377}
!386 = metadata !{i64 378}
!387 = metadata !{i64 379}
!388 = metadata !{i64 380}
!389 = metadata !{i64 381}
!390 = metadata !{i64 382}
!391 = metadata !{i64 383}
!392 = metadata !{metadata !392, metadata !393, metadata !394}
!393 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!394 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!395 = metadata !{i64 384}
!396 = metadata !{i64 385}
!397 = metadata !{i64 386}
!398 = metadata !{i64 387}
!399 = metadata !{i64 388}
!400 = metadata !{i64 389}
!401 = metadata !{i64 390}
!402 = metadata !{i64 391}
!403 = metadata !{i64 392}
!404 = metadata !{i64 393}
!405 = metadata !{i64 394}
!406 = metadata !{i64 395}
!407 = metadata !{i64 396}
!408 = metadata !{i64 397}
!409 = metadata !{i64 398}
!410 = metadata !{i64 399}
!411 = metadata !{i64 400}
!412 = metadata !{i64 401}
!413 = metadata !{i64 402}
!414 = metadata !{i64 403}
!415 = metadata !{metadata !415, metadata !393, metadata !394}
!416 = metadata !{i64 404}
!417 = metadata !{i64 405}
!418 = metadata !{i64 406}
!419 = metadata !{i64 407}
!420 = metadata !{i64 408}
!421 = metadata !{i64 409}
!422 = metadata !{i64 410}
!423 = metadata !{i64 411}
!424 = metadata !{i64 412}
!425 = metadata !{i64 413}
!426 = metadata !{i64 414}
!427 = metadata !{i64 415}
!428 = metadata !{i64 416}
!429 = metadata !{i64 417}
!430 = metadata !{i64 418}
!431 = metadata !{i64 419}
!432 = metadata !{i64 420}
!433 = metadata !{i64 421}
!434 = metadata !{i64 422}
!435 = metadata !{i64 423}
!436 = metadata !{i64 424}
!437 = metadata !{i64 425}
!438 = metadata !{i64 426}
!439 = metadata !{i64 427}
!440 = metadata !{i64 428}
!441 = metadata !{i64 429}
!442 = metadata !{i64 430}
!443 = metadata !{i64 431}
!444 = metadata !{i64 432}
!445 = metadata !{i64 433}
!446 = metadata !{i64 434}
!447 = metadata !{i64 435}
!448 = metadata !{i64 436}
!449 = metadata !{i64 437}
!450 = metadata !{i64 438}
!451 = metadata !{i64 439}
!452 = metadata !{i64 440}
!453 = metadata !{i64 441}
!454 = metadata !{i64 442}
!455 = metadata !{i64 443}
!456 = metadata !{i64 444}
!457 = metadata !{i64 445}
!458 = metadata !{i64 446}
!459 = metadata !{i64 447}
!460 = metadata !{i64 448}
!461 = metadata !{i64 449}
!462 = metadata !{i64 450}
!463 = metadata !{i64 451}
!464 = metadata !{i64 452}
!465 = metadata !{i64 453}
!466 = metadata !{i64 454}
!467 = metadata !{i64 455}
!468 = metadata !{i64 456}
!469 = metadata !{i64 457}
!470 = metadata !{i64 458}
!471 = metadata !{i64 459}
!472 = metadata !{i64 460}
!473 = metadata !{i64 461}
!474 = metadata !{i64 462}
!475 = metadata !{i64 463}
!476 = metadata !{i64 464}
!477 = metadata !{i64 465}
!478 = metadata !{i64 466}
!479 = metadata !{i64 467}
!480 = metadata !{i64 468}
!481 = metadata !{i64 469}
!482 = metadata !{i64 470}
!483 = metadata !{i64 471}
!484 = metadata !{i64 472}
!485 = metadata !{i64 473}
!486 = metadata !{i64 474}
!487 = metadata !{i64 475}
!488 = metadata !{i64 476}
!489 = metadata !{i64 477}
!490 = metadata !{i64 478}
!491 = metadata !{i64 479}
!492 = metadata !{i64 480}
!493 = metadata !{i64 481}
!494 = metadata !{i64 482}
!495 = metadata !{i64 483}
!496 = metadata !{i64 484}
!497 = metadata !{i64 485}
!498 = metadata !{i64 486}
!499 = metadata !{i64 487}
!500 = metadata !{i64 488}
!501 = metadata !{i64 489}
!502 = metadata !{i64 490}
!503 = metadata !{i64 491}
!504 = metadata !{i64 492}
!505 = metadata !{i64 493}
!506 = metadata !{i64 494}
!507 = metadata !{i64 495}
!508 = metadata !{i64 496}
!509 = metadata !{i64 497}
!510 = metadata !{i64 498}
!511 = metadata !{i64 499}
!512 = metadata !{i64 500}
!513 = metadata !{i64 501}
!514 = metadata !{i64 502}
!515 = metadata !{i64 503}
!516 = metadata !{i64 504}
!517 = metadata !{i64 505}
!518 = metadata !{i64 506}
!519 = metadata !{i64 507}
!520 = metadata !{i64 508}
!521 = metadata !{i64 509}
!522 = metadata !{i64 510}
!523 = metadata !{i64 511}
!524 = metadata !{i64 512}
!525 = metadata !{i64 513}
!526 = metadata !{i64 514}
!527 = metadata !{i64 515}
!528 = metadata !{i64 516}
!529 = metadata !{i64 517}
!530 = metadata !{i64 518}
!531 = metadata !{i64 519}
!532 = metadata !{i64 520}
!533 = metadata !{metadata !533, metadata !393, metadata !394}
!534 = metadata !{i64 521}
!535 = metadata !{i64 522}
!536 = metadata !{i64 523}
!537 = metadata !{i64 524}
!538 = metadata !{i64 525}
!539 = metadata !{i64 526}
!540 = metadata !{i64 527}
!541 = metadata !{i64 528}
!542 = metadata !{i64 529}
!543 = metadata !{i64 530}
!544 = metadata !{i64 531}
!545 = metadata !{i64 532}
!546 = metadata !{i64 533}
!547 = metadata !{i64 534}
!548 = metadata !{metadata !548, metadata !393, metadata !394}
!549 = metadata !{i64 535}
!550 = metadata !{i64 536}
!551 = metadata !{i64 537}
!552 = metadata !{i64 538}
!553 = metadata !{i64 539}
!554 = metadata !{i64 540}
!555 = metadata !{i64 541}
!556 = metadata !{i64 542}
!557 = metadata !{i64 543}
!558 = metadata !{i64 544}
!559 = metadata !{i64 545}
!560 = metadata !{i64 546}
!561 = metadata !{i64 547}
!562 = metadata !{i64 548}
!563 = metadata !{i64 549}
!564 = metadata !{i64 550}
!565 = metadata !{i64 551}
!566 = metadata !{i64 552}
!567 = metadata !{i64 553}
!568 = metadata !{i64 554}
!569 = metadata !{i64 555}
!570 = metadata !{i64 556}
!571 = metadata !{i64 557}
!572 = metadata !{i64 558}
!573 = metadata !{i64 559}
!574 = metadata !{i64 560}
!575 = metadata !{i64 561}
!576 = metadata !{i64 562}
!577 = metadata !{i64 563}
!578 = metadata !{i64 564}
!579 = metadata !{i64 565}
!580 = metadata !{i64 566}
!581 = metadata !{i64 567}
!582 = metadata !{i64 568}
!583 = metadata !{i64 569}
!584 = metadata !{i64 570}
!585 = metadata !{i64 571}
!586 = metadata !{i64 572}
!587 = metadata !{i64 573}
!588 = metadata !{i64 574}
