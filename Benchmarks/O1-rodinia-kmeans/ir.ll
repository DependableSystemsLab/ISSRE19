; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/rodinia-kmeans/fault injection/llfi-O1/kmeans.ll'
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
define i32 @cluster(i32 %numObjects, i32 %numAttributes, float** nocapture readonly %attributes, i32 %num_nclusters, float %threshold, float*** nocapture %cluster_centres) #0 {
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
  %nclusters.0 = phi i32 [ %12, %10 ], [ %nclusters.0.ph38, %.outer36 ], !llfi_index !48
  %3 = call i32 @getopt(i32 %argc, i8** %argv, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #4, !llfi_index !49
  switch i32 %3, label %15 [
    i32 -1, label %17
    i32 105, label %4
    i32 98, label %.outer31
    i32 116, label %6
    i32 107, label %10
    i32 63, label %13
  ], !llfi_index !50

; <label>:4                                       ; preds = %2
  %5 = load i8** @optarg, align 8, !tbaa !7, !llfi_index !51
  br label %.outer36, !llfi_index !52

; <label>:6                                       ; preds = %2
  %7 = load i8** @optarg, align 8, !tbaa !7, !llfi_index !53
  %8 = call double @atof(i8* %7) #10, !llfi_index !54
  %9 = fptrunc double %8 to float, !llfi_index !55
  br label %.outer32, !llfi_index !56

; <label>:10                                      ; preds = %2
  %11 = load i8** @optarg, align 8, !tbaa !7, !llfi_index !57
  %12 = call i32 @atoi(i8* %11) #10, !llfi_index !58
  br label %2, !llfi_index !59

; <label>:13                                      ; preds = %2
  %14 = load i8** %argv, align 8, !tbaa !7, !llfi_index !60
  call void @usage(i8* %14), !llfi_index !61
  unreachable, !llfi_index !62

; <label>:15                                      ; preds = %2
  %16 = load i8** %argv, align 8, !tbaa !7, !llfi_index !63
  call void @usage(i8* %16), !llfi_index !64
  unreachable, !llfi_index !65

; <label>:17                                      ; preds = %2
  %18 = icmp eq i8* %filename.0.ph37, null, !llfi_index !66
  br i1 %18, label %19, label %21, !llfi_index !67

; <label>:19                                      ; preds = %17
  %20 = load i8** %argv, align 8, !tbaa !7, !llfi_index !68
  call void @usage(i8* %20), !llfi_index !69
  unreachable, !llfi_index !70

; <label>:21                                      ; preds = %17
  store i32 0, i32* %numObjects, align 4, !tbaa !71, !llfi_index !73
  store i32 0, i32* %numAttributes, align 4, !tbaa !71, !llfi_index !74
  %22 = icmp eq i32 %isBinaryFile.0.ph, 0, !llfi_index !75
  br i1 %22, label %67, label %23, !llfi_index !76

; <label>:23                                      ; preds = %21
  %24 = call i32 (i8*, i32, ...)* @open(i8* %filename.0.ph37, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #4, !llfi_index !77
  %25 = icmp eq i32 %24, -1, !llfi_index !78
  br i1 %25, label %26, label %29, !llfi_index !79

; <label>:26                                      ; preds = %23
  %27 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7, !llfi_index !80
  %28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0), i8* %filename.0.ph37) #8, !llfi_index !81
  call void @exit(i32 1) #9, !llfi_index !82
  unreachable, !llfi_index !83

; <label>:29                                      ; preds = %23
  %30 = call i32 (i32, i32*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i32*, i64, ...)*)(i32 %24, i32* %numObjects, i64 4) #4, !llfi_index !84
  %31 = call i32 (i32, i32*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, i32*, i64, ...)*)(i32 %24, i32* %numAttributes, i64 4) #4, !llfi_index !85
  %32 = load i32* %numObjects, align 4, !tbaa !71, !llfi_index !86
  %33 = load i32* %numAttributes, align 4, !tbaa !71, !llfi_index !87
  %34 = mul nsw i32 %33, %32, !llfi_index !88
  %35 = sext i32 %34 to i64, !llfi_index !89
  %36 = shl nsw i64 %35, 2, !llfi_index !90
  %37 = call noalias i8* @malloc(i64 %36) #4, !llfi_index !91
  %38 = bitcast i8* %37 to float*, !llfi_index !92
  %39 = load i32* %numObjects, align 4, !tbaa !71, !llfi_index !93
  %40 = sext i32 %39 to i64, !llfi_index !94
  %41 = shl nsw i64 %40, 3, !llfi_index !95
  %42 = call noalias i8* @malloc(i64 %41) #4, !llfi_index !96
  %43 = bitcast i8* %42 to float**, !llfi_index !97
  %44 = load i32* %numObjects, align 4, !tbaa !71, !llfi_index !98
  %45 = load i32* %numAttributes, align 4, !tbaa !71, !llfi_index !99
  %46 = mul nsw i32 %45, %44, !llfi_index !100
  %47 = sext i32 %46 to i64, !llfi_index !101
  %48 = shl nsw i64 %47, 2, !llfi_index !102
  %49 = call noalias i8* @malloc(i64 %48) #4, !llfi_index !103
  %50 = bitcast i8* %49 to float*, !llfi_index !104
  store float* %50, float** %43, align 8, !tbaa !7, !llfi_index !105
  %51 = load i32* %numObjects, align 4, !tbaa !71, !llfi_index !106
  %52 = icmp sgt i32 %51, 1, !llfi_index !107
  br i1 %52, label %.lr.ph28, label %._crit_edge29, !llfi_index !108

.lr.ph28:                                         ; preds = %29
  %53 = load i32* %numAttributes, align 4, !tbaa !71, !llfi_index !109
  %54 = sext i32 %53 to i64, !llfi_index !110
  br label %55, !llfi_index !111

; <label>:55                                      ; preds = %55, %.lr.ph28
  %indvars.iv60 = phi i64 [ 1, %.lr.ph28 ], [ %indvars.iv.next61, %55 ], !llfi_index !112
  %56 = add nsw i64 %indvars.iv60, -1, !llfi_index !113
  %57 = getelementptr inbounds float** %43, i64 %56, !llfi_index !114
  %58 = load float** %57, align 8, !tbaa !7, !llfi_index !115
  %59 = getelementptr inbounds float* %58, i64 %54, !llfi_index !116
  %60 = getelementptr inbounds float** %43, i64 %indvars.iv60, !llfi_index !117
  store float* %59, float** %60, align 8, !tbaa !7, !llfi_index !118
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1, !llfi_index !119
  %lftr.wideiv = trunc i64 %indvars.iv.next61 to i32, !llfi_index !120
  %exitcond = icmp eq i32 %lftr.wideiv, %51, !llfi_index !121
  br i1 %exitcond, label %._crit_edge29, label %55, !llfi_index !122

._crit_edge29:                                    ; preds = %55, %29
  %61 = load i32* %numAttributes, align 4, !tbaa !71, !llfi_index !123
  %62 = mul nsw i32 %61, %51, !llfi_index !124
  %63 = sext i32 %62 to i64, !llfi_index !125
  %64 = shl nsw i64 %63, 2, !llfi_index !126
  %65 = call i32 (i32, float*, i64, ...)* bitcast (i32 (...)* @read to i32 (i32, float*, i64, ...)*)(i32 %24, float* %38, i64 %64) #4, !llfi_index !127
  %66 = call i32 (i32, ...)* bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 %24) #4, !llfi_index !128
  br label %142, !llfi_index !129

; <label>:67                                      ; preds = %21
  %68 = call %struct._IO_FILE* @fopen(i8* %filename.0.ph37, i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #4, !llfi_index !130
  %69 = icmp eq %struct._IO_FILE* %68, null, !llfi_index !131
  br i1 %69, label %72, label %.preheader23, !llfi_index !132

.preheader23:                                     ; preds = %67
  %70 = call i8* @fgets(i8* %1, i32 1024, %struct._IO_FILE* %68) #4, !llfi_index !133
  %71 = icmp eq i8* %70, null, !llfi_index !134
  br i1 %71, label %._crit_edge25, label %.lr.ph24, !llfi_index !135

; <label>:72                                      ; preds = %67
  %73 = load %struct._IO_FILE** @stderr, align 8, !tbaa !7, !llfi_index !136
  %74 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0), i8* %filename.0.ph37) #8, !llfi_index !137
  call void @exit(i32 1) #9, !llfi_index !138
  unreachable, !llfi_index !139

.lr.ph24:                                         ; preds = %.backedge, %.preheader23
  %75 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0)) #4, !llfi_index !140
  %76 = icmp eq i8* %75, null, !llfi_index !141
  br i1 %76, label %.backedge, label %77, !llfi_index !142

; <label>:77                                      ; preds = %.lr.ph24
  %78 = load i32* %numObjects, align 4, !tbaa !71, !llfi_index !143
  %79 = add nsw i32 %78, 1, !llfi_index !144
  store i32 %79, i32* %numObjects, align 4, !tbaa !71, !llfi_index !145
  br label %.backedge, !llfi_index !146

.backedge:                                        ; preds = %77, %.lr.ph24
  %80 = call i8* @fgets(i8* %1, i32 1024, %struct._IO_FILE* %68) #4, !llfi_index !147
  %81 = icmp eq i8* %80, null, !llfi_index !148
  br i1 %81, label %._crit_edge25, label %.lr.ph24, !llfi_index !149

._crit_edge25:                                    ; preds = %.backedge, %.preheader23
  call void @rewind(%struct._IO_FILE* %68) #4, !llfi_index !150
  br label %82, !llfi_index !151

; <label>:82                                      ; preds = %85, %._crit_edge25
  %83 = call i8* @fgets(i8* %1, i32 1024, %struct._IO_FILE* %68) #4, !llfi_index !152
  %84 = icmp eq i8* %83, null, !llfi_index !153
  br i1 %84, label %.loopexit20, label %85, !llfi_index !154

; <label>:85                                      ; preds = %82
  %86 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0)) #4, !llfi_index !155
  %87 = icmp eq i8* %86, null, !llfi_index !156
  br i1 %87, label %82, label %.preheader19, !llfi_index !157

.preheader19:                                     ; preds = %85
  %88 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #4, !llfi_index !158
  %89 = icmp eq i8* %88, null, !llfi_index !159
  br i1 %89, label %.loopexit20, label %.lr.ph21, !llfi_index !160

.lr.ph21:                                         ; preds = %.lr.ph21, %.preheader19
  %90 = load i32* %numAttributes, align 4, !tbaa !71, !llfi_index !161
  %91 = add nsw i32 %90, 1, !llfi_index !162
  store i32 %91, i32* %numAttributes, align 4, !tbaa !71, !llfi_index !163
  %92 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #4, !llfi_index !164
  %93 = icmp eq i8* %92, null, !llfi_index !165
  br i1 %93, label %.loopexit20, label %.lr.ph21, !llfi_index !166

.loopexit20:                                      ; preds = %.lr.ph21, %.preheader19, %82
  %94 = load i32* %numObjects, align 4, !tbaa !71, !llfi_index !167
  %95 = load i32* %numAttributes, align 4, !tbaa !71, !llfi_index !168
  %96 = mul nsw i32 %95, %94, !llfi_index !169
  %97 = sext i32 %96 to i64, !llfi_index !170
  %98 = shl nsw i64 %97, 2, !llfi_index !171
  %99 = call noalias i8* @malloc(i64 %98) #4, !llfi_index !172
  %100 = bitcast i8* %99 to float*, !llfi_index !173
  %101 = load i32* %numObjects, align 4, !tbaa !71, !llfi_index !174
  %102 = sext i32 %101 to i64, !llfi_index !175
  %103 = shl nsw i64 %102, 3, !llfi_index !176
  %104 = call noalias i8* @malloc(i64 %103) #4, !llfi_index !177
  %105 = bitcast i8* %104 to float**, !llfi_index !178
  %106 = load i32* %numObjects, align 4, !tbaa !71, !llfi_index !179
  %107 = load i32* %numAttributes, align 4, !tbaa !71, !llfi_index !180
  %108 = mul nsw i32 %107, %106, !llfi_index !181
  %109 = sext i32 %108 to i64, !llfi_index !182
  %110 = shl nsw i64 %109, 2, !llfi_index !183
  %111 = call noalias i8* @malloc(i64 %110) #4, !llfi_index !184
  %112 = bitcast i8* %111 to float*, !llfi_index !185
  store float* %112, float** %105, align 8, !tbaa !7, !llfi_index !186
  %113 = load i32* %numObjects, align 4, !tbaa !71, !llfi_index !187
  %114 = icmp sgt i32 %113, 1, !llfi_index !188
  br i1 %114, label %.lr.ph17, label %._crit_edge18, !llfi_index !189

.lr.ph17:                                         ; preds = %.loopexit20
  %115 = load i32* %numAttributes, align 4, !tbaa !71, !llfi_index !190
  %116 = sext i32 %115 to i64, !llfi_index !191
  br label %117, !llfi_index !192

; <label>:117                                     ; preds = %117, %.lr.ph17
  %indvars.iv58 = phi i64 [ 1, %.lr.ph17 ], [ %indvars.iv.next59, %117 ], !llfi_index !193
  %118 = add nsw i64 %indvars.iv58, -1, !llfi_index !194
  %119 = getelementptr inbounds float** %105, i64 %118, !llfi_index !195
  %120 = load float** %119, align 8, !tbaa !7, !llfi_index !196
  %121 = getelementptr inbounds float* %120, i64 %116, !llfi_index !197
  %122 = getelementptr inbounds float** %105, i64 %indvars.iv58, !llfi_index !198
  store float* %121, float** %122, align 8, !tbaa !7, !llfi_index !199
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1, !llfi_index !200
  %lftr.wideiv19 = trunc i64 %indvars.iv.next59 to i32, !llfi_index !201
  %exitcond20 = icmp eq i32 %lftr.wideiv19, %113, !llfi_index !202
  br i1 %exitcond20, label %._crit_edge18, label %117, !llfi_index !203

._crit_edge18:                                    ; preds = %117, %.loopexit20
  call void @rewind(%struct._IO_FILE* %68) #4, !llfi_index !204
  br label %.outer.outer, !llfi_index !205

.outer.outer:                                     ; preds = %131, %._crit_edge18
  %i.2.ph.ph = phi i32 [ 0, %._crit_edge18 ], [ %136, %131 ], !llfi_index !206
  br label %.outer, !llfi_index !207

.outer:                                           ; preds = %125, %.outer.outer
  %123 = call i8* @fgets(i8* %1, i32 1024, %struct._IO_FILE* %68) #4, !llfi_index !208
  %124 = icmp eq i8* %123, null, !llfi_index !209
  br i1 %124, label %140, label %125, !llfi_index !210

; <label>:125                                     ; preds = %.outer
  %126 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0)) #4, !llfi_index !211
  %127 = icmp ne i8* %126, null, !llfi_index !212
  %128 = load i32* %numAttributes, align 4, !tbaa !71, !llfi_index !213
  %129 = icmp sgt i32 %128, 0, !llfi_index !214
  %or.cond = and i1 %127, %129, !llfi_index !215
  br i1 %or.cond, label %.lr.ph14, label %.outer, !llfi_index !216

.lr.ph14:                                         ; preds = %125
  %130 = sext i32 %i.2.ph.ph to i64, !llfi_index !217
  br label %131, !llfi_index !218

; <label>:131                                     ; preds = %131, %.lr.ph14
  %indvars.iv56 = phi i64 [ %130, %.lr.ph14 ], [ %indvars.iv.next57, %131 ], !llfi_index !219
  %j.013 = phi i32 [ 0, %.lr.ph14 ], [ %137, %131 ], !llfi_index !220
  %i.312 = phi i32 [ %i.2.ph.ph, %.lr.ph14 ], [ %136, %131 ], !llfi_index !221
  %132 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #4, !llfi_index !222
  %133 = call double @atof(i8* %132) #10, !llfi_index !223
  %134 = fptrunc double %133 to float, !llfi_index !224
  %135 = getelementptr inbounds float* %100, i64 %indvars.iv56, !llfi_index !225
  store float %134, float* %135, align 4, !tbaa !226, !llfi_index !228
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, 1, !llfi_index !229
  %136 = add nsw i32 %i.312, 1, !llfi_index !230
  %137 = add nsw i32 %j.013, 1, !llfi_index !231
  %138 = load i32* %numAttributes, align 4, !tbaa !71, !llfi_index !232
  %139 = icmp slt i32 %137, %138, !llfi_index !233
  br i1 %139, label %131, label %.outer.outer, !llfi_index !234

; <label>:140                                     ; preds = %.outer
  %141 = call i32 @fclose(%struct._IO_FILE* %68) #4, !llfi_index !235
  br label %142, !llfi_index !236

; <label>:142                                     ; preds = %140, %._crit_edge29
  %attributes.0 = phi float** [ %43, %._crit_edge29 ], [ %105, %140 ], !llfi_index !237
  %buf.0 = phi float* [ %38, %._crit_edge29 ], [ %100, %140 ], !llfi_index !238
  %puts = call i32 @puts(i8* getelementptr inbounds ([14 x i8]* @str, i64 0, i64 0)), !llfi_index !239
  %143 = load float** %attributes.0, align 8, !tbaa !7, !llfi_index !240
  %144 = bitcast float* %143 to i8*, !llfi_index !241
  %145 = bitcast float* %buf.0 to i8*, !llfi_index !242
  %146 = load i32* %numObjects, align 4, !tbaa !71, !llfi_index !243
  %147 = load i32* %numAttributes, align 4, !tbaa !71, !llfi_index !244
  %148 = mul nsw i32 %147, %146, !llfi_index !245
  %149 = sext i32 %148 to i64, !llfi_index !246
  %150 = shl nsw i64 %149, 2, !llfi_index !247
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 %150, i32 4, i1 false), !llfi_index !248
  %151 = call double @omp_get_wtime() #4, !llfi_index !249
  store float** null, float*** %cluster_centres, align 8, !tbaa !7, !llfi_index !250
  %152 = load i32* %numObjects, align 4, !tbaa !71, !llfi_index !251
  %153 = load i32* %numAttributes, align 4, !tbaa !71, !llfi_index !252
  %154 = call i32 @cluster(i32 %152, i32 %153, float** %attributes.0, i32 %nclusters.0, float %threshold.0.ph33, float*** %cluster_centres) #4, !llfi_index !253
  %155 = call double @omp_get_wtime() #4, !llfi_index !254
  %156 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str8, i64 0, i64 0), i32 %nclusters.0) #4, !llfi_index !255
  %157 = load i32* %numAttributes, align 4, !tbaa !71, !llfi_index !256
  %158 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str9, i64 0, i64 0), i32 %157) #4, !llfi_index !257
  %puts2 = call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str16, i64 0, i64 0)), !llfi_index !258
  %puts3 = call i32 @puts(i8* getelementptr inbounds ([76 x i8]* @str17, i64 0, i64 0)), !llfi_index !259
  %puts4 = call i32 @puts(i8* getelementptr inbounds ([79 x i8]* @str18, i64 0, i64 0)), !llfi_index !260
  %159 = icmp sgt i32 %nclusters.0, 0, !llfi_index !261
  br i1 %159, label %.lr.ph9.preheader, label %._crit_edge10, !llfi_index !262

.lr.ph9.preheader:                                ; preds = %142
  %160 = load float*** %cluster_centres, align 8, !tbaa !7, !llfi_index !263
  br label %.lr.ph9, !llfi_index !264

.lr.ph9:                                          ; preds = %._crit_edge, %.lr.ph9.preheader
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %._crit_edge ], [ 0, %.lr.ph9.preheader ], !llfi_index !265
  %161 = trunc i64 %indvars.iv53 to i32, !llfi_index !266
  %162 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i32 %161) #4, !llfi_index !267
  %163 = load i32* %numAttributes, align 4, !tbaa !71, !llfi_index !268
  %164 = icmp sgt i32 %163, 0, !llfi_index !269
  br i1 %164, label %.lr.ph.preheader, label %._crit_edge, !llfi_index !270

.lr.ph.preheader:                                 ; preds = %.lr.ph9
  %165 = getelementptr inbounds float** %160, i64 %indvars.iv53, !llfi_index !271
  br label %.lr.ph, !llfi_index !272

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ], !llfi_index !273
  %166 = load float** %165, align 8, !tbaa !7, !llfi_index !274
  %167 = getelementptr inbounds float* %166, i64 %indvars.iv, !llfi_index !275
  %168 = load float* %167, align 4, !tbaa !226, !llfi_index !276
  %169 = fpext float %168 to double, !llfi_index !277
  %170 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), double %169) #4, !llfi_index !278
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !279
  %171 = load i32* %numAttributes, align 4, !tbaa !71, !llfi_index !280
  %172 = trunc i64 %indvars.iv.next to i32, !llfi_index !281
  %173 = icmp slt i32 %172, %171, !llfi_index !282
  br i1 %173, label %.lr.ph, label %._crit_edge, !llfi_index !283

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph9
  %puts5 = call i32 @puts(i8* getelementptr inbounds ([2 x i8]* @str19, i64 0, i64 0)), !llfi_index !284
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1, !llfi_index !285
  %lftr.wideiv17 = trunc i64 %indvars.iv.next54 to i32, !llfi_index !286
  %exitcond18 = icmp eq i32 %lftr.wideiv17, %nclusters.0, !llfi_index !287
  br i1 %exitcond18, label %._crit_edge10, label %.lr.ph9, !llfi_index !288

._crit_edge10:                                    ; preds = %._crit_edge, %142
  %174 = bitcast float** %attributes.0 to i8*, !llfi_index !289
  call void @free(i8* %174) #4, !llfi_index !290
  %175 = load float*** %cluster_centres, align 8, !tbaa !7, !llfi_index !291
  %176 = load float** %175, align 8, !tbaa !7, !llfi_index !292
  %177 = bitcast float* %176 to i8*, !llfi_index !293
  call void @free(i8* %177) #4, !llfi_index !294
  %178 = load float*** %cluster_centres, align 8, !tbaa !7, !llfi_index !295
  %179 = bitcast float** %178 to i8*, !llfi_index !296
  call void @free(i8* %179) #4, !llfi_index !297
  call void @free(i8* %145) #4, !llfi_index !298
  call void @llvm.lifetime.end(i64 1024, i8* %1) #4, !llfi_index !299
  ret i32 0, !llfi_index !300
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

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally double @atof(i8* nocapture readonly %__nptr) #6 {
  %1 = tail call double @strtod(i8* nocapture %__nptr, i8** null) #4, !llfi_index !301
  ret double %1, !llfi_index !302
}

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nocapture readonly %__nptr) #6 {
  %1 = tail call i64 @strtol(i8* nocapture %__nptr, i8** null, i32 10) #4, !llfi_index !303
  %2 = trunc i64 %1 to i32, !llfi_index !304
  ret i32 %2, !llfi_index !305
}

; Function Attrs: nounwind readonly uwtable
define i32 @find_nearest_point(float* nocapture readonly %pt, i32 %nfeatures, float** nocapture readonly %pts, i32 %npts) #7 {
  %1 = icmp sgt i32 %npts, 0, !llfi_index !306
  br i1 %1, label %.lr.ph, label %._crit_edge, !llfi_index !307

.lr.ph:                                           ; preds = %.lr.ph, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ], !llfi_index !308
  %index.03 = phi i32 [ %index.1, %.lr.ph ], [ undef, %0 ], !llfi_index !309
  %max_dist.02 = phi float [ %max_dist.1, %.lr.ph ], [ 0x47EFFFFFE0000000, %0 ], !llfi_index !310
  %2 = getelementptr inbounds float** %pts, i64 %indvars.iv, !llfi_index !311
  %3 = load float** %2, align 8, !tbaa !7, !llfi_index !312
  %4 = tail call float @euclid_dist_2(float* %pt, float* %3, i32 %nfeatures), !llfi_index !313
  %5 = fcmp olt float %4, %max_dist.02, !llfi_index !314
  %max_dist.1 = select i1 %5, float %4, float %max_dist.02, !llfi_index !315
  %6 = trunc i64 %indvars.iv to i32, !llfi_index !316
  %index.1 = select i1 %5, i32 %6, i32 %index.03, !llfi_index !317
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !318
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !319
  %exitcond = icmp eq i32 %lftr.wideiv, %npts, !llfi_index !320
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !321

._crit_edge:                                      ; preds = %.lr.ph, %0
  %index.0.lcssa = phi i32 [ undef, %0 ], [ %index.1, %.lr.ph ], !llfi_index !322
  ret i32 %index.0.lcssa, !llfi_index !323
}

; Function Attrs: inlinehint nounwind readonly uwtable
define float @euclid_dist_2(float* nocapture readonly %pt1, float* nocapture readonly %pt2, i32 %numdims) #6 {
  %1 = icmp sgt i32 %numdims, 0, !llfi_index !324
  br i1 %1, label %.lr.ph, label %._crit_edge, !llfi_index !325

.lr.ph:                                           ; preds = %.lr.ph, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ], !llfi_index !326
  %ans.02 = phi float [ %8, %.lr.ph ], [ 0.000000e+00, %0 ], !llfi_index !327
  %2 = getelementptr inbounds float* %pt1, i64 %indvars.iv, !llfi_index !328
  %3 = load float* %2, align 4, !tbaa !226, !llfi_index !329
  %4 = getelementptr inbounds float* %pt2, i64 %indvars.iv, !llfi_index !330
  %5 = load float* %4, align 4, !tbaa !226, !llfi_index !331
  %6 = fsub float %3, %5, !llfi_index !332
  %7 = fmul float %6, %6, !llfi_index !333
  %8 = fadd float %ans.02, %7, !llfi_index !334
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !335
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !336
  %exitcond = icmp eq i32 %lftr.wideiv, %numdims, !llfi_index !337
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !338

._crit_edge:                                      ; preds = %.lr.ph, %0
  %ans.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %8, %.lr.ph ], !llfi_index !339
  ret float %ans.0.lcssa, !llfi_index !340
}

; Function Attrs: nounwind uwtable
define noalias float** @kmeans_clustering(float** nocapture readonly %feature, i32 %nfeatures, i32 %npoints, i32 %nclusters, float %threshold, i32* nocapture %membership) #0 {
  %membership43 = bitcast i32* %membership to i8*, !llfi_index !341
  %1 = sext i32 %nclusters to i64, !llfi_index !342
  %2 = shl nsw i64 %1, 3, !llfi_index !343
  %3 = tail call noalias i8* @malloc(i64 %2) #4, !llfi_index !344
  %4 = bitcast i8* %3 to float**, !llfi_index !345
  %5 = mul nsw i32 %nclusters, %nfeatures, !llfi_index !346
  %6 = sext i32 %5 to i64, !llfi_index !347
  %7 = shl nsw i64 %6, 2, !llfi_index !348
  %8 = tail call noalias i8* @malloc(i64 %7) #4, !llfi_index !349
  %9 = bitcast i8* %8 to float*, !llfi_index !350
  store float* %9, float** %4, align 8, !tbaa !7, !llfi_index !351
  %10 = icmp sgt i32 %nclusters, 1, !llfi_index !352
  br i1 %10, label %.lr.ph26, label %.preheader21, !llfi_index !353

.lr.ph26:                                         ; preds = %0
  %11 = sext i32 %nfeatures to i64, !llfi_index !354
  br label %14, !llfi_index !355

.preheader21:                                     ; preds = %14, %0
  %12 = icmp sgt i32 %nclusters, 0, !llfi_index !356
  br i1 %12, label %.preheader17.lr.ph, label %.preheader13, !llfi_index !357

.preheader17.lr.ph:                               ; preds = %.preheader21
  %13 = icmp sgt i32 %nfeatures, 0, !llfi_index !358
  br label %.preheader17, !llfi_index !359

; <label>:14                                      ; preds = %14, %.lr.ph26
  %indvars.iv52 = phi i64 [ 1, %.lr.ph26 ], [ %indvars.iv.next53, %14 ], !llfi_index !360
  %15 = add nsw i64 %indvars.iv52, -1, !llfi_index !361
  %16 = getelementptr inbounds float** %4, i64 %15, !llfi_index !362
  %17 = load float** %16, align 8, !tbaa !7, !llfi_index !363
  %18 = getelementptr inbounds float* %17, i64 %11, !llfi_index !364
  %19 = getelementptr inbounds float** %4, i64 %indvars.iv52, !llfi_index !365
  store float* %18, float** %19, align 8, !tbaa !7, !llfi_index !366
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1, !llfi_index !367
  %lftr.wideiv12 = trunc i64 %indvars.iv.next53 to i32, !llfi_index !368
  %exitcond13 = icmp eq i32 %lftr.wideiv12, %nclusters, !llfi_index !369
  br i1 %exitcond13, label %.preheader21, label %14, !llfi_index !370

.preheader17:                                     ; preds = %._crit_edge20, %.preheader17.lr.ph
  %indvars.iv48 = phi i64 [ 0, %.preheader17.lr.ph ], [ %indvars.iv.next49, %._crit_edge20 ], !llfi_index !371
  br i1 %13, label %.lr.ph19, label %._crit_edge20, !llfi_index !372

.lr.ph19:                                         ; preds = %.preheader17
  %20 = getelementptr inbounds float** %feature, i64 %indvars.iv48, !llfi_index !373
  %21 = load float** %20, align 8, !tbaa !7, !llfi_index !374
  %22 = getelementptr inbounds float** %4, i64 %indvars.iv48, !llfi_index !375
  %23 = load float** %22, align 8, !tbaa !7, !llfi_index !376
  br label %25, !llfi_index !377

.preheader13:                                     ; preds = %._crit_edge20, %.preheader21
  %24 = icmp sgt i32 %npoints, 0, !llfi_index !378
  br i1 %24, label %._crit_edge16, label %33, !llfi_index !379

; <label>:25                                      ; preds = %25, %.lr.ph19
  %indvars.iv44 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next45, %25 ], !llfi_index !380
  %26 = getelementptr inbounds float* %21, i64 %indvars.iv44, !llfi_index !381
  %27 = load float* %26, align 4, !tbaa !226, !llfi_index !382
  %28 = getelementptr inbounds float* %23, i64 %indvars.iv44, !llfi_index !383
  store float %27, float* %28, align 4, !tbaa !226, !llfi_index !384
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1, !llfi_index !385
  %lftr.wideiv8 = trunc i64 %indvars.iv.next45 to i32, !llfi_index !386
  %exitcond9 = icmp eq i32 %lftr.wideiv8, %nfeatures, !llfi_index !387
  br i1 %exitcond9, label %._crit_edge20, label %25, !llfi_index !388

._crit_edge20:                                    ; preds = %25, %.preheader17
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1, !llfi_index !389
  %lftr.wideiv10 = trunc i64 %indvars.iv.next49 to i32, !llfi_index !390
  %exitcond11 = icmp eq i32 %lftr.wideiv10, %nclusters, !llfi_index !391
  br i1 %exitcond11, label %.preheader13, label %.preheader17, !llfi_index !392

._crit_edge16:                                    ; preds = %.preheader13
  %29 = add i32 %npoints, -1, !llfi_index !393
  %30 = zext i32 %29 to i64, !llfi_index !394
  %31 = shl nuw nsw i64 %30, 2, !llfi_index !395
  %32 = add i64 %31, 4, !llfi_index !396
  tail call void @llvm.memset.p0i8.i64(i8* %membership43, i8 -1, i64 %32, i32 4, i1 false), !llfi_index !397
  br label %33, !llfi_index !398

; <label>:33                                      ; preds = %._crit_edge16, %.preheader13
  %34 = tail call noalias i8* @calloc(i64 %1, i64 4) #4, !llfi_index !399
  %35 = bitcast i8* %34 to i32*, !llfi_index !400
  %36 = tail call noalias i8* @malloc(i64 %2) #4, !llfi_index !401
  %37 = bitcast i8* %36 to float**, !llfi_index !402
  %38 = tail call noalias i8* @calloc(i64 %6, i64 4) #4, !llfi_index !403
  %39 = bitcast i8* %38 to float*, !llfi_index !404
  store float* %39, float** %37, align 8, !tbaa !7, !llfi_index !405
  br i1 %10, label %.lr.ph12, label %.preheader9, !llfi_index !406

.lr.ph12:                                         ; preds = %33
  %40 = sext i32 %nfeatures to i64, !llfi_index !407
  br label %42, !llfi_index !408

.preheader9:                                      ; preds = %42, %33
  %41 = icmp sgt i32 %nfeatures, 0, !llfi_index !409
  br label %.backedge, !llfi_index !410

; <label>:42                                      ; preds = %42, %.lr.ph12
  %indvars.iv35 = phi i64 [ 1, %.lr.ph12 ], [ %indvars.iv.next36, %42 ], !llfi_index !411
  %43 = add nsw i64 %indvars.iv35, -1, !llfi_index !412
  %44 = getelementptr inbounds float** %37, i64 %43, !llfi_index !413
  %45 = load float** %44, align 8, !tbaa !7, !llfi_index !414
  %46 = getelementptr inbounds float* %45, i64 %40, !llfi_index !415
  %47 = getelementptr inbounds float** %37, i64 %indvars.iv35, !llfi_index !416
  store float* %46, float** %47, align 8, !tbaa !7, !llfi_index !417
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1, !llfi_index !418
  %lftr.wideiv6 = trunc i64 %indvars.iv.next36 to i32, !llfi_index !419
  %exitcond7 = icmp eq i32 %lftr.wideiv6, %nclusters, !llfi_index !420
  br i1 %exitcond7, label %.preheader9, label %42, !llfi_index !421

.backedge:                                        ; preds = %._crit_edge4, %._crit_edge8, %.preheader9
  %delta.0 = phi float [ 0.000000e+00, %.preheader9 ], [ %delta.1, %._crit_edge8 ], [ 0.000000e+00, %._crit_edge4 ], !llfi_index !422
  %i.4 = phi i32 [ 0, %.preheader9 ], [ %73, %._crit_edge8 ], [ 0, %._crit_edge4 ], !llfi_index !423
  %48 = icmp slt i32 %i.4, %npoints, !llfi_index !424
  br i1 %48, label %49, label %.preheader2, !llfi_index !425

.preheader2:                                      ; preds = %.backedge
  br i1 %12, label %.preheader, label %._crit_edge4, !llfi_index !426

; <label>:49                                      ; preds = %.backedge
  %50 = sext i32 %i.4 to i64, !llfi_index !427
  %51 = getelementptr inbounds float** %feature, i64 %50, !llfi_index !428
  %52 = load float** %51, align 8, !tbaa !7, !llfi_index !429
  %53 = tail call i32 @find_nearest_point(float* %52, i32 %nfeatures, float** %4, i32 %nclusters), !llfi_index !430
  %54 = getelementptr inbounds i32* %membership, i64 %50, !llfi_index !431
  %55 = load i32* %54, align 4, !tbaa !71, !llfi_index !432
  %56 = icmp eq i32 %55, %53, !llfi_index !433
  br i1 %56, label %59, label %57, !llfi_index !434

; <label>:57                                      ; preds = %49
  %58 = fadd float %delta.0, 1.000000e+00, !llfi_index !435
  br label %59, !llfi_index !436

; <label>:59                                      ; preds = %57, %49
  %delta.1 = phi float [ %58, %57 ], [ %delta.0, %49 ], !llfi_index !437
  store i32 %53, i32* %54, align 4, !tbaa !71, !llfi_index !438
  %60 = sext i32 %53 to i64, !llfi_index !439
  %61 = getelementptr inbounds i32* %35, i64 %60, !llfi_index !440
  %62 = load i32* %61, align 4, !tbaa !71, !llfi_index !441
  %63 = add nsw i32 %62, 1, !llfi_index !442
  store i32 %63, i32* %61, align 4, !tbaa !71, !llfi_index !443
  br i1 %41, label %.lr.ph7, label %._crit_edge8, !llfi_index !444

.lr.ph7:                                          ; preds = %59
  %64 = load float** %51, align 8, !tbaa !7, !llfi_index !445
  %65 = getelementptr inbounds float** %37, i64 %60, !llfi_index !446
  %66 = load float** %65, align 8, !tbaa !7, !llfi_index !447
  br label %67, !llfi_index !448

; <label>:67                                      ; preds = %67, %.lr.ph7
  %indvars.iv31 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next32, %67 ], !llfi_index !449
  %68 = getelementptr inbounds float* %64, i64 %indvars.iv31, !llfi_index !450
  %69 = load float* %68, align 4, !tbaa !226, !llfi_index !451
  %70 = getelementptr inbounds float* %66, i64 %indvars.iv31, !llfi_index !452
  %71 = load float* %70, align 4, !tbaa !226, !llfi_index !453
  %72 = fadd float %69, %71, !llfi_index !454
  store float %72, float* %70, align 4, !tbaa !226, !llfi_index !455
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1, !llfi_index !456
  %lftr.wideiv = trunc i64 %indvars.iv.next32 to i32, !llfi_index !457
  %exitcond = icmp eq i32 %lftr.wideiv, %nfeatures, !llfi_index !458
  br i1 %exitcond, label %._crit_edge8, label %67, !llfi_index !459

._crit_edge8:                                     ; preds = %67, %59
  %73 = add nsw i32 %i.4, 1, !llfi_index !460
  br label %.backedge, !llfi_index !461

.preheader:                                       ; preds = %._crit_edge, %.preheader2
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %._crit_edge ], [ 0, %.preheader2 ], !llfi_index !462
  %74 = getelementptr inbounds i32* %35, i64 %indvars.iv27, !llfi_index !463
  br i1 %41, label %.lr.ph, label %._crit_edge, !llfi_index !464

.lr.ph:                                           ; preds = %.preheader
  %75 = load i32* %74, align 4, !tbaa !71, !llfi_index !465
  %76 = icmp sgt i32 %75, 0, !llfi_index !466
  %77 = getelementptr inbounds float** %37, i64 %indvars.iv27, !llfi_index !467
  %78 = sitofp i32 %75 to float, !llfi_index !468
  %79 = getelementptr inbounds float** %4, i64 %indvars.iv27, !llfi_index !469
  %80 = load float** %77, align 8, !tbaa !7, !llfi_index !470
  br label %81, !llfi_index !471

; <label>:81                                      ; preds = %89, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %89 ], !llfi_index !472
  br i1 %76, label %82, label %89, !llfi_index !473

; <label>:82                                      ; preds = %81
  %83 = load float** %77, align 8, !tbaa !7, !llfi_index !474
  %84 = getelementptr inbounds float* %83, i64 %indvars.iv, !llfi_index !475
  %85 = load float* %84, align 4, !tbaa !226, !llfi_index !476
  %86 = fdiv float %85, %78, !llfi_index !477
  %87 = load float** %79, align 8, !tbaa !7, !llfi_index !478
  %88 = getelementptr inbounds float* %87, i64 %indvars.iv, !llfi_index !479
  store float %86, float* %88, align 4, !tbaa !226, !llfi_index !480
  br label %89, !llfi_index !481

; <label>:89                                      ; preds = %82, %81
  %90 = getelementptr inbounds float* %80, i64 %indvars.iv, !llfi_index !482
  store float 0.000000e+00, float* %90, align 4, !tbaa !226, !llfi_index !483
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !484
  %lftr.wideiv2 = trunc i64 %indvars.iv.next to i32, !llfi_index !485
  %exitcond3 = icmp eq i32 %lftr.wideiv2, %nfeatures, !llfi_index !486
  br i1 %exitcond3, label %._crit_edge, label %81, !llfi_index !487

._crit_edge:                                      ; preds = %89, %.preheader
  store i32 0, i32* %74, align 4, !tbaa !71, !llfi_index !488
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1, !llfi_index !489
  %lftr.wideiv4 = trunc i64 %indvars.iv.next28 to i32, !llfi_index !490
  %exitcond5 = icmp eq i32 %lftr.wideiv4, %nclusters, !llfi_index !491
  br i1 %exitcond5, label %._crit_edge4, label %.preheader, !llfi_index !492

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader2
  %91 = fcmp ogt float %delta.0, %threshold, !llfi_index !493
  br i1 %91, label %.backedge, label %92, !llfi_index !494

; <label>:92                                      ; preds = %._crit_edge4
  %93 = load float** %37, align 8, !tbaa !7, !llfi_index !495
  %94 = bitcast float* %93 to i8*, !llfi_index !496
  tail call void @free(i8* %94) #4, !llfi_index !497
  tail call void @free(i8* %36) #4, !llfi_index !498
  tail call void @free(i8* %34) #4, !llfi_index !499
  ret float** %4, !llfi_index !500
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
attributes #6 = { inlinehint nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { cold nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }

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
!71 = metadata !{metadata !72, metadata !72, i64 0}
!72 = metadata !{metadata !"int", metadata !9, i64 0}
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
!203 = metadata !{i64 197}
!204 = metadata !{i64 198}
!205 = metadata !{i64 199}
!206 = metadata !{i64 200}
!207 = metadata !{i64 201}
!208 = metadata !{i64 202}
!209 = metadata !{i64 203}
!210 = metadata !{i64 204}
!211 = metadata !{i64 205}
!212 = metadata !{i64 206}
!213 = metadata !{i64 207}
!214 = metadata !{i64 208}
!215 = metadata !{i64 209}
!216 = metadata !{i64 210}
!217 = metadata !{i64 211}
!218 = metadata !{i64 212}
!219 = metadata !{i64 213}
!220 = metadata !{i64 214}
!221 = metadata !{i64 215}
!222 = metadata !{i64 216}
!223 = metadata !{i64 217}
!224 = metadata !{i64 218}
!225 = metadata !{i64 219}
!226 = metadata !{metadata !227, metadata !227, i64 0}
!227 = metadata !{metadata !"float", metadata !9, i64 0}
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
!392 = metadata !{i64 384}
!393 = metadata !{i64 385}
!394 = metadata !{i64 386}
!395 = metadata !{i64 387}
!396 = metadata !{i64 388}
!397 = metadata !{i64 389}
!398 = metadata !{i64 390}
!399 = metadata !{i64 391}
!400 = metadata !{i64 392}
!401 = metadata !{i64 393}
!402 = metadata !{i64 394}
!403 = metadata !{i64 395}
!404 = metadata !{i64 396}
!405 = metadata !{i64 397}
!406 = metadata !{i64 398}
!407 = metadata !{i64 399}
!408 = metadata !{i64 400}
!409 = metadata !{i64 401}
!410 = metadata !{i64 402}
!411 = metadata !{i64 403}
!412 = metadata !{i64 404}
!413 = metadata !{i64 405}
!414 = metadata !{i64 406}
!415 = metadata !{i64 407}
!416 = metadata !{i64 408}
!417 = metadata !{i64 409}
!418 = metadata !{i64 410}
!419 = metadata !{i64 411}
!420 = metadata !{i64 412}
!421 = metadata !{i64 413}
!422 = metadata !{i64 414}
!423 = metadata !{i64 415}
!424 = metadata !{i64 416}
!425 = metadata !{i64 417}
!426 = metadata !{i64 418}
!427 = metadata !{i64 419}
!428 = metadata !{i64 420}
!429 = metadata !{i64 421}
!430 = metadata !{i64 422}
!431 = metadata !{i64 423}
!432 = metadata !{i64 424}
!433 = metadata !{i64 425}
!434 = metadata !{i64 426}
!435 = metadata !{i64 427}
!436 = metadata !{i64 428}
!437 = metadata !{i64 429}
!438 = metadata !{i64 430}
!439 = metadata !{i64 431}
!440 = metadata !{i64 432}
!441 = metadata !{i64 433}
!442 = metadata !{i64 434}
!443 = metadata !{i64 435}
!444 = metadata !{i64 436}
!445 = metadata !{i64 437}
!446 = metadata !{i64 438}
!447 = metadata !{i64 439}
!448 = metadata !{i64 440}
!449 = metadata !{i64 441}
!450 = metadata !{i64 442}
!451 = metadata !{i64 443}
!452 = metadata !{i64 444}
!453 = metadata !{i64 445}
!454 = metadata !{i64 446}
!455 = metadata !{i64 447}
!456 = metadata !{i64 448}
!457 = metadata !{i64 449}
!458 = metadata !{i64 450}
!459 = metadata !{i64 451}
!460 = metadata !{i64 452}
!461 = metadata !{i64 453}
!462 = metadata !{i64 454}
!463 = metadata !{i64 455}
!464 = metadata !{i64 456}
!465 = metadata !{i64 457}
!466 = metadata !{i64 458}
!467 = metadata !{i64 459}
!468 = metadata !{i64 460}
!469 = metadata !{i64 461}
!470 = metadata !{i64 462}
!471 = metadata !{i64 463}
!472 = metadata !{i64 464}
!473 = metadata !{i64 465}
!474 = metadata !{i64 466}
!475 = metadata !{i64 467}
!476 = metadata !{i64 468}
!477 = metadata !{i64 469}
!478 = metadata !{i64 470}
!479 = metadata !{i64 471}
!480 = metadata !{i64 472}
!481 = metadata !{i64 473}
!482 = metadata !{i64 474}
!483 = metadata !{i64 475}
!484 = metadata !{i64 476}
!485 = metadata !{i64 477}
!486 = metadata !{i64 478}
!487 = metadata !{i64 479}
!488 = metadata !{i64 480}
!489 = metadata !{i64 481}
!490 = metadata !{i64 482}
!491 = metadata !{i64 483}
!492 = metadata !{i64 484}
!493 = metadata !{i64 485}
!494 = metadata !{i64 486}
!495 = metadata !{i64 487}
!496 = metadata !{i64 488}
!497 = metadata !{i64 489}
!498 = metadata !{i64 490}
!499 = metadata !{i64 491}
!500 = metadata !{i64 492}
