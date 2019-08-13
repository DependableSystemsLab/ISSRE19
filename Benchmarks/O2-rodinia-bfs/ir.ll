; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/rodinia-bfs/fault injection/llfi-O2/bfs.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Node = type { i32, i32 }

@no_of_nodes = global i32 0, align 4
@edge_list_size = global i32 0, align 4
@fp = global %struct._IO_FILE* null, align 8
@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [38 x i8] c"Usage: %s <num_threads> <input_file>\0A\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"%d) cost:%d\0A\00", align 1
@str = private unnamed_addr constant [13 x i8] c"Reading File\00"
@str9 = private unnamed_addr constant [25 x i8] c"Error Reading graph file\00"
@str10 = private unnamed_addr constant [26 x i8] c"Start traversing the tree\00"
@str11 = private unnamed_addr constant [10 x i8] c"Complete.\00"

; Function Attrs: nounwind uwtable
define void @_Z5UsageiPPc(i32 %argc, i8** nocapture readonly %argv) #0 {
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !1, !llfi_index !5
  %2 = load i8** %argv, align 8, !tbaa !1, !llfi_index !6
  %3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([38 x i8]* @.str, i64 0, i64 0), i8* %2) #6, !llfi_index !7
  ret void, !llfi_index !8
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #2 {
  store i32 0, i32* @no_of_nodes, align 4, !tbaa !9, !llfi_index !11
  store i32 0, i32* @edge_list_size, align 4, !tbaa !9, !llfi_index !12
  tail call void @_Z8BFSGraphiPPc(i32 %argc, i8** %argv), !llfi_index !13
  ret i32 0, !llfi_index !14
}

; Function Attrs: uwtable
define void @_Z8BFSGraphiPPc(i32 %argc, i8** nocapture readonly %argv) #2 {
  %source = alloca i32, align 4, !llfi_index !15
  %start = alloca i32, align 4, !llfi_index !16
  %edgeno = alloca i32, align 4, !llfi_index !17
  %id = alloca i32, align 4, !llfi_index !18
  %cost = alloca i32, align 4, !llfi_index !19
  %1 = icmp eq i32 %argc, 3, !llfi_index !20
  br i1 %1, label %6, label %2, !llfi_index !21

; <label>:2                                       ; preds = %0
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !1, !llfi_index !22
  %4 = load i8** %argv, align 8, !tbaa !1, !llfi_index !23
  %5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([38 x i8]* @.str, i64 0, i64 0), i8* %4) #7, !llfi_index !24
  call void @exit(i32 0) #8, !llfi_index !25
  unreachable, !llfi_index !26

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds i8** %argv, i64 1, !llfi_index !27
  %8 = load i8** %7, align 8, !tbaa !1, !llfi_index !28
  %9 = call i64 @strtol(i8* nocapture %8, i8** null, i32 10) #5, !llfi_index !29
  %10 = trunc i64 %9 to i32, !llfi_index !30
  %11 = getelementptr inbounds i8** %argv, i64 2, !llfi_index !31
  %12 = load i8** %11, align 8, !tbaa !1, !llfi_index !32
  %puts = call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @str, i64 0, i64 0)), !llfi_index !33
  %13 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)), !llfi_index !34
  store %struct._IO_FILE* %13, %struct._IO_FILE** @fp, align 8, !tbaa !1, !llfi_index !35
  %14 = icmp eq %struct._IO_FILE* %13, null, !llfi_index !36
  br i1 %14, label %15, label %16, !llfi_index !37

; <label>:15                                      ; preds = %6
  %puts7 = call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str9, i64 0, i64 0)), !llfi_index !38
  br label %129, !llfi_index !39

; <label>:16                                      ; preds = %6
  store i32 0, i32* %source, align 4, !tbaa !9, !llfi_index !40
  %17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i32* @no_of_nodes), !llfi_index !41
  %18 = load i32* @no_of_nodes, align 4, !tbaa !9, !llfi_index !42
  %19 = sext i32 %18 to i64, !llfi_index !43
  %20 = shl nsw i64 %19, 3, !llfi_index !44
  %21 = call noalias i8* @malloc(i64 %20) #5, !llfi_index !45
  %22 = bitcast i8* %21 to %struct.Node*, !llfi_index !46
  %23 = call noalias i8* @malloc(i64 %19) #5, !llfi_index !47
  %24 = call noalias i8* @malloc(i64 %19) #5, !llfi_index !48
  %25 = call noalias i8* @malloc(i64 %19) #5, !llfi_index !49
  %26 = icmp eq i32 %18, 0, !llfi_index !50
  %27 = load %struct._IO_FILE** @fp, align 8, !tbaa !1, !llfi_index !51
  br i1 %26, label %._crit_edge35, label %.lr.ph34, !llfi_index !52

.lr.ph34:                                         ; preds = %.lr.ph34, %16
  %28 = phi %struct._IO_FILE* [ %41, %.lr.ph34 ], [ %27, %16 ], !llfi_index !53
  %i.032 = phi i32 [ %38, %.lr.ph34 ], [ 0, %16 ], !llfi_index !54
  %29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i32* %start, i32* %edgeno), !llfi_index !55
  %30 = load i32* %start, align 4, !tbaa !9, !llfi_index !56
  %31 = zext i32 %i.032 to i64, !llfi_index !57
  %32 = getelementptr inbounds %struct.Node* %22, i64 %31, i32 0, !llfi_index !58
  store i32 %30, i32* %32, align 4, !tbaa !59, !llfi_index !61
  %33 = load i32* %edgeno, align 4, !tbaa !9, !llfi_index !62
  %34 = getelementptr inbounds %struct.Node* %22, i64 %31, i32 1, !llfi_index !63
  store i32 %33, i32* %34, align 4, !tbaa !64, !llfi_index !65
  %35 = getelementptr inbounds i8* %23, i64 %31, !llfi_index !66
  store i8 0, i8* %35, align 1, !tbaa !67, !llfi_index !69
  %36 = getelementptr inbounds i8* %24, i64 %31, !llfi_index !70
  store i8 0, i8* %36, align 1, !tbaa !67, !llfi_index !71
  %37 = getelementptr inbounds i8* %25, i64 %31, !llfi_index !72
  store i8 0, i8* %37, align 1, !tbaa !67, !llfi_index !73
  %38 = add i32 %i.032, 1, !llfi_index !74
  %39 = load i32* @no_of_nodes, align 4, !tbaa !9, !llfi_index !75
  %40 = icmp ult i32 %38, %39, !llfi_index !76
  %41 = load %struct._IO_FILE** @fp, align 8, !tbaa !1, !llfi_index !77
  br i1 %40, label %.lr.ph34, label %._crit_edge35, !llfi_index !78

._crit_edge35:                                    ; preds = %.lr.ph34, %16
  %.lcssa31 = phi %struct._IO_FILE* [ %27, %16 ], [ %41, %.lr.ph34 ], !llfi_index !79
  %42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %.lcssa31, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i32* %source), !llfi_index !80
  store i32 0, i32* %source, align 4, !tbaa !9, !llfi_index !81
  store i8 1, i8* %23, align 1, !tbaa !67, !llfi_index !82
  store i8 1, i8* %25, align 1, !tbaa !67, !llfi_index !83
  %43 = load %struct._IO_FILE** @fp, align 8, !tbaa !1, !llfi_index !84
  %44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i32* @edge_list_size), !llfi_index !85
  %45 = load i32* @edge_list_size, align 4, !tbaa !9, !llfi_index !86
  %46 = sext i32 %45 to i64, !llfi_index !87
  %47 = shl nsw i64 %46, 2, !llfi_index !88
  %48 = call noalias i8* @malloc(i64 %47) #5, !llfi_index !89
  %49 = bitcast i8* %48 to i32*, !llfi_index !90
  %50 = icmp sgt i32 %45, 0, !llfi_index !91
  %51 = load %struct._IO_FILE** @fp, align 8, !tbaa !1, !llfi_index !92
  br i1 %50, label %.lr.ph28, label %._crit_edge29, !llfi_index !93

.lr.ph28:                                         ; preds = %.lr.ph28, %._crit_edge35
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %.lr.ph28 ], [ 0, %._crit_edge35 ], !llfi_index !94
  %52 = phi %struct._IO_FILE* [ %61, %.lr.ph28 ], [ %51, %._crit_edge35 ], !llfi_index !95
  %53 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i32* %id), !llfi_index !96
  %54 = load %struct._IO_FILE** @fp, align 8, !tbaa !1, !llfi_index !97
  %55 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i32* %cost), !llfi_index !98
  %56 = load i32* %id, align 4, !tbaa !9, !llfi_index !99
  %57 = getelementptr inbounds i32* %49, i64 %indvars.iv46, !llfi_index !100
  store i32 %56, i32* %57, align 4, !tbaa !9, !llfi_index !101
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !llfi_index !102
  %58 = load i32* @edge_list_size, align 4, !tbaa !9, !llfi_index !103
  %59 = trunc i64 %indvars.iv.next47 to i32, !llfi_index !104
  %60 = icmp slt i32 %59, %58, !llfi_index !105
  %61 = load %struct._IO_FILE** @fp, align 8, !tbaa !1, !llfi_index !106
  br i1 %60, label %.lr.ph28, label %._crit_edge29, !llfi_index !107

._crit_edge29:                                    ; preds = %.lr.ph28, %._crit_edge35
  %.lcssa = phi %struct._IO_FILE* [ %51, %._crit_edge35 ], [ %61, %.lr.ph28 ], !llfi_index !108
  %62 = icmp eq %struct._IO_FILE* %.lcssa, null, !llfi_index !109
  br i1 %62, label %65, label %63, !llfi_index !110

; <label>:63                                      ; preds = %._crit_edge29
  %64 = call i32 @fclose(%struct._IO_FILE* %.lcssa), !llfi_index !111
  br label %65, !llfi_index !112

; <label>:65                                      ; preds = %63, %._crit_edge29
  %66 = load i32* @no_of_nodes, align 4, !tbaa !9, !llfi_index !113
  %67 = sext i32 %66 to i64, !llfi_index !114
  %68 = shl nsw i64 %67, 2, !llfi_index !115
  %69 = call noalias i8* @malloc(i64 %68) #5, !llfi_index !116
  %70 = bitcast i8* %69 to i32*, !llfi_index !117
  %71 = icmp sgt i32 %66, 0, !llfi_index !118
  br i1 %71, label %.lr.ph24, label %75, !llfi_index !119

.lr.ph24:                                         ; preds = %65
  %72 = icmp sgt i32 %66, 1, !llfi_index !120
  %.op = add i32 %66, -1, !llfi_index !121
  %73 = zext i32 %.op to i64, !llfi_index !122
  %.op49 = shl nuw nsw i64 %73, 2, !llfi_index !123
  %.op49.op = add i64 %.op49, 4, !llfi_index !124
  %74 = select i1 %72, i64 %.op49.op, i64 4, !llfi_index !125
  call void @llvm.memset.p0i8.i64(i8* %69, i8 -1, i64 %74, i32 4, i1 false), !llfi_index !126
  br label %75, !llfi_index !127

; <label>:75                                      ; preds = %.lr.ph24, %65
  %76 = load i32* %source, align 4, !tbaa !9, !llfi_index !128
  %77 = sext i32 %76 to i64, !llfi_index !129
  %78 = getelementptr inbounds i32* %70, i64 %77, !llfi_index !130
  store i32 0, i32* %78, align 4, !tbaa !9, !llfi_index !131
  %puts8 = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str10, i64 0, i64 0)), !llfi_index !132
  br label %79, !llfi_index !133

; <label>:79                                      ; preds = %._crit_edge21, %75
  call void @omp_set_num_threads(i32 %10), !llfi_index !134
  %80 = load i32* @no_of_nodes, align 4, !tbaa !9, !llfi_index !135
  %81 = icmp sgt i32 %80, 0, !llfi_index !136
  br i1 %81, label %.lr.ph17, label %._crit_edge, !llfi_index !137

.lr.ph17:                                         ; preds = %.loopexit, %79
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %.loopexit ], [ 0, %79 ], !llfi_index !138
  %82 = getelementptr inbounds i8* %23, i64 %indvars.iv39, !llfi_index !139
  %83 = load i8* %82, align 1, !tbaa !67, !range !140, !llfi_index !141
  %84 = icmp eq i8 %83, 0, !llfi_index !142
  br i1 %84, label %.loopexit, label %85, !llfi_index !143

; <label>:85                                      ; preds = %.lr.ph17
  store i8 0, i8* %82, align 1, !tbaa !67, !llfi_index !144
  %86 = getelementptr inbounds %struct.Node* %22, i64 %indvars.iv39, i32 1, !llfi_index !145
  %87 = load i32* %86, align 4, !tbaa !64, !llfi_index !146
  %88 = icmp sgt i32 %87, 0, !llfi_index !147
  br i1 %88, label %.lr.ph13, label %.loopexit, !llfi_index !148

.lr.ph13:                                         ; preds = %85
  %89 = getelementptr inbounds %struct.Node* %22, i64 %indvars.iv39, i32 0, !llfi_index !149
  %90 = load i32* %89, align 4, !tbaa !59, !llfi_index !150
  %91 = getelementptr inbounds i32* %70, i64 %indvars.iv39, !llfi_index !151
  %92 = add nsw i32 %90, %87, !llfi_index !152
  %93 = sext i32 %90 to i64, !llfi_index !153
  br label %94, !llfi_index !154

; <label>:94                                      ; preds = %106, %.lr.ph13
  %indvars.iv37 = phi i64 [ %93, %.lr.ph13 ], [ %indvars.iv.next38, %106 ], !llfi_index !155
  %95 = getelementptr inbounds i32* %49, i64 %indvars.iv37, !llfi_index !156
  %96 = load i32* %95, align 4, !tbaa !9, !llfi_index !157
  %97 = sext i32 %96 to i64, !llfi_index !158
  %98 = getelementptr inbounds i8* %25, i64 %97, !llfi_index !159
  %99 = load i8* %98, align 1, !tbaa !67, !range !140, !llfi_index !160
  %100 = icmp eq i8 %99, 0, !llfi_index !161
  br i1 %100, label %101, label %106, !llfi_index !162

; <label>:101                                     ; preds = %94
  %102 = load i32* %91, align 4, !tbaa !9, !llfi_index !163
  %103 = add nsw i32 %102, 1, !llfi_index !164
  %104 = getelementptr inbounds i32* %70, i64 %97, !llfi_index !165
  store i32 %103, i32* %104, align 4, !tbaa !9, !llfi_index !166
  %105 = getelementptr inbounds i8* %24, i64 %97, !llfi_index !167
  store i8 1, i8* %105, align 1, !tbaa !67, !llfi_index !168
  br label %106, !llfi_index !169

; <label>:106                                     ; preds = %101, %94
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, 1, !llfi_index !170
  %107 = trunc i64 %indvars.iv.next38 to i32, !llfi_index !171
  %108 = icmp slt i32 %107, %92, !llfi_index !172
  br i1 %108, label %94, label %.loopexit, !llfi_index !173

.loopexit:                                        ; preds = %106, %85, %.lr.ph17
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1, !llfi_index !174
  %109 = trunc i64 %indvars.iv.next40 to i32, !llfi_index !175
  %110 = icmp slt i32 %109, %80, !llfi_index !176
  br i1 %110, label %.lr.ph17, label %.loopexit14, !llfi_index !177

.loopexit14:                                      ; preds = %.loopexit
  br i1 %81, label %.lr.ph20, label %._crit_edge, !llfi_index !178

.lr.ph20:                                         ; preds = %117, %.loopexit14
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %117 ], [ 0, %.loopexit14 ], !llfi_index !179
  %stop.018 = phi i8 [ %stop.1, %117 ], [ 0, %.loopexit14 ], !llfi_index !180
  %111 = getelementptr inbounds i8* %24, i64 %indvars.iv41, !llfi_index !181
  %112 = load i8* %111, align 1, !tbaa !67, !range !140, !llfi_index !182
  %113 = icmp eq i8 %112, 0, !llfi_index !183
  br i1 %113, label %117, label %114, !llfi_index !184

; <label>:114                                     ; preds = %.lr.ph20
  %115 = getelementptr inbounds i8* %23, i64 %indvars.iv41, !llfi_index !185
  store i8 1, i8* %115, align 1, !tbaa !67, !llfi_index !186
  %116 = getelementptr inbounds i8* %25, i64 %indvars.iv41, !llfi_index !187
  store i8 1, i8* %116, align 1, !tbaa !67, !llfi_index !188
  store i8 0, i8* %111, align 1, !tbaa !67, !llfi_index !189
  br label %117, !llfi_index !190

; <label>:117                                     ; preds = %114, %.lr.ph20
  %stop.1 = phi i8 [ 1, %114 ], [ %stop.018, %.lr.ph20 ], !llfi_index !191
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1, !llfi_index !192
  %118 = trunc i64 %indvars.iv.next42 to i32, !llfi_index !193
  %119 = icmp slt i32 %118, %80, !llfi_index !194
  br i1 %119, label %.lr.ph20, label %._crit_edge21, !llfi_index !195

._crit_edge21:                                    ; preds = %117
  %120 = and i8 %stop.1, 1, !llfi_index !196
  %121 = icmp eq i8 %120, 0, !llfi_index !197
  br i1 %121, label %.preheader, label %79, !llfi_index !198

.preheader:                                       ; preds = %._crit_edge21
  br i1 %81, label %.lr.ph, label %._crit_edge, !llfi_index !199

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ], !llfi_index !200
  %122 = getelementptr inbounds i32* %70, i64 %indvars.iv, !llfi_index !201
  %123 = load i32* %122, align 4, !tbaa !9, !llfi_index !202
  %124 = trunc i64 %indvars.iv to i32, !llfi_index !203
  %125 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0), i32 %124, i32 %123), !llfi_index !204
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !205
  %126 = load i32* @no_of_nodes, align 4, !tbaa !9, !llfi_index !206
  %127 = trunc i64 %indvars.iv.next to i32, !llfi_index !207
  %128 = icmp slt i32 %127, %126, !llfi_index !208
  br i1 %128, label %.lr.ph, label %._crit_edge, !llfi_index !209

._crit_edge:                                      ; preds = %.lr.ph, %.preheader, %.loopexit14, %79
  %puts9 = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str11, i64 0, i64 0)), !llfi_index !210
  call void @free(i8* %21) #5, !llfi_index !211
  call void @free(i8* %48) #5, !llfi_index !212
  call void @free(i8* %23) #5, !llfi_index !213
  call void @free(i8* %24) #5, !llfi_index !214
  call void @free(i8* %25) #5, !llfi_index !215
  call void @free(i8* %69) #5, !llfi_index !216
  br label %129, !llfi_index !217

; <label>:129                                     ; preds = %._crit_edge, %15
  ret void, !llfi_index !218
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

declare void @omp_set_num_threads(i32) #4

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { cold }
attributes #7 = { cold nounwind }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"any pointer", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
!5 = metadata !{i64 1}
!6 = metadata !{i64 2}
!7 = metadata !{i64 3}
!8 = metadata !{i64 4}
!9 = metadata !{metadata !10, metadata !10, i64 0}
!10 = metadata !{metadata !"int", metadata !3, i64 0}
!11 = metadata !{i64 5}
!12 = metadata !{i64 6}
!13 = metadata !{i64 7}
!14 = metadata !{i64 8}
!15 = metadata !{i64 9}
!16 = metadata !{i64 10}
!17 = metadata !{i64 11}
!18 = metadata !{i64 12}
!19 = metadata !{i64 13}
!20 = metadata !{i64 14}
!21 = metadata !{i64 15}
!22 = metadata !{i64 16}
!23 = metadata !{i64 17}
!24 = metadata !{i64 18}
!25 = metadata !{i64 19}
!26 = metadata !{i64 20}
!27 = metadata !{i64 21}
!28 = metadata !{i64 22}
!29 = metadata !{i64 23}
!30 = metadata !{i64 24}
!31 = metadata !{i64 25}
!32 = metadata !{i64 26}
!33 = metadata !{i64 27}
!34 = metadata !{i64 28}
!35 = metadata !{i64 29}
!36 = metadata !{i64 30}
!37 = metadata !{i64 31}
!38 = metadata !{i64 32}
!39 = metadata !{i64 33}
!40 = metadata !{i64 34}
!41 = metadata !{i64 35}
!42 = metadata !{i64 36}
!43 = metadata !{i64 37}
!44 = metadata !{i64 38}
!45 = metadata !{i64 39}
!46 = metadata !{i64 40}
!47 = metadata !{i64 41}
!48 = metadata !{i64 42}
!49 = metadata !{i64 43}
!50 = metadata !{i64 44}
!51 = metadata !{i64 45}
!52 = metadata !{i64 46}
!53 = metadata !{i64 47}
!54 = metadata !{i64 48}
!55 = metadata !{i64 49}
!56 = metadata !{i64 50}
!57 = metadata !{i64 51}
!58 = metadata !{i64 52}
!59 = metadata !{metadata !60, metadata !10, i64 0}
!60 = metadata !{metadata !"_ZTS4Node", metadata !10, i64 0, metadata !10, i64 4}
!61 = metadata !{i64 53}
!62 = metadata !{i64 54}
!63 = metadata !{i64 55}
!64 = metadata !{metadata !60, metadata !10, i64 4}
!65 = metadata !{i64 56}
!66 = metadata !{i64 57}
!67 = metadata !{metadata !68, metadata !68, i64 0}
!68 = metadata !{metadata !"bool", metadata !3, i64 0}
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
!104 = metadata !{i64 93}
!105 = metadata !{i64 94}
!106 = metadata !{i64 95}
!107 = metadata !{i64 96}
!108 = metadata !{i64 97}
!109 = metadata !{i64 98}
!110 = metadata !{i64 99}
!111 = metadata !{i64 100}
!112 = metadata !{i64 101}
!113 = metadata !{i64 102}
!114 = metadata !{i64 103}
!115 = metadata !{i64 104}
!116 = metadata !{i64 105}
!117 = metadata !{i64 106}
!118 = metadata !{i64 107}
!119 = metadata !{i64 108}
!120 = metadata !{i64 109}
!121 = metadata !{i64 110}
!122 = metadata !{i64 111}
!123 = metadata !{i64 112}
!124 = metadata !{i64 113}
!125 = metadata !{i64 114}
!126 = metadata !{i64 115}
!127 = metadata !{i64 116}
!128 = metadata !{i64 117}
!129 = metadata !{i64 118}
!130 = metadata !{i64 119}
!131 = metadata !{i64 120}
!132 = metadata !{i64 121}
!133 = metadata !{i64 122}
!134 = metadata !{i64 123}
!135 = metadata !{i64 124}
!136 = metadata !{i64 125}
!137 = metadata !{i64 126}
!138 = metadata !{i64 127}
!139 = metadata !{i64 128}
!140 = metadata !{i8 0, i8 2}
!141 = metadata !{i64 129}
!142 = metadata !{i64 130}
!143 = metadata !{i64 131}
!144 = metadata !{i64 132}
!145 = metadata !{i64 133}
!146 = metadata !{i64 134}
!147 = metadata !{i64 135}
!148 = metadata !{i64 136}
!149 = metadata !{i64 137}
!150 = metadata !{i64 138}
!151 = metadata !{i64 139}
!152 = metadata !{i64 140}
!153 = metadata !{i64 141}
!154 = metadata !{i64 142}
!155 = metadata !{i64 143}
!156 = metadata !{i64 144}
!157 = metadata !{i64 145}
!158 = metadata !{i64 146}
!159 = metadata !{i64 147}
!160 = metadata !{i64 148}
!161 = metadata !{i64 149}
!162 = metadata !{i64 150}
!163 = metadata !{i64 151}
!164 = metadata !{i64 152}
!165 = metadata !{i64 153}
!166 = metadata !{i64 154}
!167 = metadata !{i64 155}
!168 = metadata !{i64 156}
!169 = metadata !{i64 157}
!170 = metadata !{i64 158}
!171 = metadata !{i64 159}
!172 = metadata !{i64 160}
!173 = metadata !{i64 161}
!174 = metadata !{i64 162}
!175 = metadata !{i64 163}
!176 = metadata !{i64 164}
!177 = metadata !{i64 165}
!178 = metadata !{i64 166}
!179 = metadata !{i64 167}
!180 = metadata !{i64 168}
!181 = metadata !{i64 169}
!182 = metadata !{i64 170}
!183 = metadata !{i64 171}
!184 = metadata !{i64 172}
!185 = metadata !{i64 173}
!186 = metadata !{i64 174}
!187 = metadata !{i64 175}
!188 = metadata !{i64 176}
!189 = metadata !{i64 177}
!190 = metadata !{i64 178}
!191 = metadata !{i64 179}
!192 = metadata !{i64 180}
!193 = metadata !{i64 181}
!194 = metadata !{i64 182}
!195 = metadata !{i64 183}
!196 = metadata !{i64 184}
!197 = metadata !{i64 185}
!198 = metadata !{i64 186}
!199 = metadata !{i64 187}
!200 = metadata !{i64 188}
!201 = metadata !{i64 189}
!202 = metadata !{i64 190}
!203 = metadata !{i64 191}
!204 = metadata !{i64 192}
!205 = metadata !{i64 193}
!206 = metadata !{i64 194}
!207 = metadata !{i64 195}
!208 = metadata !{i64 196}
!209 = metadata !{i64 197}
!210 = metadata !{i64 198}
!211 = metadata !{i64 199}
!212 = metadata !{i64 200}
!213 = metadata !{i64 201}
!214 = metadata !{i64 202}
!215 = metadata !{i64 203}
!216 = metadata !{i64 204}
!217 = metadata !{i64 205}
!218 = metadata !{i64 206}
