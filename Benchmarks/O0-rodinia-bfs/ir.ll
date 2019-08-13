; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/rodinia-bfs/fault injection/llfi-O0/bfs.ll'
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
@.str1 = private unnamed_addr constant [14 x i8] c"Reading File\0A\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str3 = private unnamed_addr constant [26 x i8] c"Error Reading graph file\0A\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str6 = private unnamed_addr constant [27 x i8] c"Start traversing the tree\0A\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"%d) cost:%d\0A\00", align 1
@.str8 = private unnamed_addr constant [11 x i8] c"Complete.\0A\00", align 1

; Function Attrs: uwtable
define void @_Z5UsageiPPc(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !1
  %2 = alloca i8**, align 8, !llfi_index !2
  store i32 %argc, i32* %1, align 4, !llfi_index !3
  store i8** %argv, i8*** %2, align 8, !llfi_index !4
  %3 = load %struct._IO_FILE** @stderr, align 8, !llfi_index !5
  %4 = load i8*** %2, align 8, !llfi_index !6
  %5 = getelementptr inbounds i8** %4, i64 0, !llfi_index !7
  %6 = load i8** %5, align 8, !llfi_index !8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([38 x i8]* @.str, i32 0, i32 0), i8* %6), !llfi_index !9
  ret void, !llfi_index !10
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !11
  %2 = alloca i8**, align 8, !llfi_index !12
  store i32 %argc, i32* %1, align 4, !llfi_index !13
  store i8** %argv, i8*** %2, align 8, !llfi_index !14
  store i32 0, i32* @no_of_nodes, align 4, !llfi_index !15
  store i32 0, i32* @edge_list_size, align 4, !llfi_index !16
  %3 = load i32* %1, align 4, !llfi_index !17
  %4 = load i8*** %2, align 8, !llfi_index !18
  call void @_Z8BFSGraphiPPc(i32 %3, i8** %4), !llfi_index !19
  ret i32 0, !llfi_index !20
}

; Function Attrs: uwtable
define void @_Z8BFSGraphiPPc(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4, !llfi_index !21
  %2 = alloca i8**, align 8, !llfi_index !22
  %input_f = alloca i8*, align 8, !llfi_index !23
  %num_omp_threads = alloca i32, align 4, !llfi_index !24
  %source = alloca i32, align 4, !llfi_index !25
  %h_graph_nodes = alloca %struct.Node*, align 8, !llfi_index !26
  %h_graph_mask = alloca i8*, align 8, !llfi_index !27
  %h_updating_graph_mask = alloca i8*, align 8, !llfi_index !28
  %h_graph_visited = alloca i8*, align 8, !llfi_index !29
  %start = alloca i32, align 4, !llfi_index !30
  %edgeno = alloca i32, align 4, !llfi_index !31
  %i = alloca i32, align 4, !llfi_index !32
  %id = alloca i32, align 4, !llfi_index !33
  %cost = alloca i32, align 4, !llfi_index !34
  %h_graph_edges = alloca i32*, align 8, !llfi_index !35
  %i1 = alloca i32, align 4, !llfi_index !36
  %h_cost = alloca i32*, align 8, !llfi_index !37
  %i2 = alloca i32, align 4, !llfi_index !38
  %k = alloca i32, align 4, !llfi_index !39
  %stop = alloca i8, align 1, !llfi_index !40
  %tid = alloca i32, align 4, !llfi_index !41
  %i3 = alloca i32, align 4, !llfi_index !42
  %id4 = alloca i32, align 4, !llfi_index !43
  %tid5 = alloca i32, align 4, !llfi_index !44
  %i6 = alloca i32, align 4, !llfi_index !45
  store i32 %argc, i32* %1, align 4, !llfi_index !46
  store i8** %argv, i8*** %2, align 8, !llfi_index !47
  %3 = load i32* %1, align 4, !llfi_index !48
  %4 = icmp ne i32 %3, 3, !llfi_index !49
  br i1 %4, label %5, label %8, !llfi_index !50

; <label>:5                                       ; preds = %0
  %6 = load i32* %1, align 4, !llfi_index !51
  %7 = load i8*** %2, align 8, !llfi_index !52
  call void @_Z5UsageiPPc(i32 %6, i8** %7), !llfi_index !53
  call void @exit(i32 0) #5, !llfi_index !54
  unreachable, !llfi_index !55

; <label>:8                                       ; preds = %0
  %9 = load i8*** %2, align 8, !llfi_index !56
  %10 = getelementptr inbounds i8** %9, i64 1, !llfi_index !57
  %11 = load i8** %10, align 8, !llfi_index !58
  %12 = call i32 @atoi(i8* %11) #6, !llfi_index !59
  store i32 %12, i32* %num_omp_threads, align 4, !llfi_index !60
  %13 = load i8*** %2, align 8, !llfi_index !61
  %14 = getelementptr inbounds i8** %13, i64 2, !llfi_index !62
  %15 = load i8** %14, align 8, !llfi_index !63
  store i8* %15, i8** %input_f, align 8, !llfi_index !64
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str1, i32 0, i32 0)), !llfi_index !65
  %17 = load i8** %input_f, align 8, !llfi_index !66
  %18 = call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !llfi_index !67
  store %struct._IO_FILE* %18, %struct._IO_FILE** @fp, align 8, !llfi_index !68
  %19 = load %struct._IO_FILE** @fp, align 8, !llfi_index !69
  %20 = icmp ne %struct._IO_FILE* %19, null, !llfi_index !70
  br i1 %20, label %23, label %21, !llfi_index !71

; <label>:21                                      ; preds = %8
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str3, i32 0, i32 0)), !llfi_index !72
  br label %284, !llfi_index !73

; <label>:23                                      ; preds = %8
  store i32 0, i32* %source, align 4, !llfi_index !74
  %24 = load %struct._IO_FILE** @fp, align 8, !llfi_index !75
  %25 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i32* @no_of_nodes), !llfi_index !76
  %26 = load i32* @no_of_nodes, align 4, !llfi_index !77
  %27 = sext i32 %26 to i64, !llfi_index !78
  %28 = mul i64 8, %27, !llfi_index !79
  %29 = call noalias i8* @malloc(i64 %28) #7, !llfi_index !80
  %30 = bitcast i8* %29 to %struct.Node*, !llfi_index !81
  store %struct.Node* %30, %struct.Node** %h_graph_nodes, align 8, !llfi_index !82
  %31 = load i32* @no_of_nodes, align 4, !llfi_index !83
  %32 = sext i32 %31 to i64, !llfi_index !84
  %33 = mul i64 1, %32, !llfi_index !85
  %34 = call noalias i8* @malloc(i64 %33) #7, !llfi_index !86
  store i8* %34, i8** %h_graph_mask, align 8, !llfi_index !87
  %35 = load i32* @no_of_nodes, align 4, !llfi_index !88
  %36 = sext i32 %35 to i64, !llfi_index !89
  %37 = mul i64 1, %36, !llfi_index !90
  %38 = call noalias i8* @malloc(i64 %37) #7, !llfi_index !91
  store i8* %38, i8** %h_updating_graph_mask, align 8, !llfi_index !92
  %39 = load i32* @no_of_nodes, align 4, !llfi_index !93
  %40 = sext i32 %39 to i64, !llfi_index !94
  %41 = mul i64 1, %40, !llfi_index !95
  %42 = call noalias i8* @malloc(i64 %41) #7, !llfi_index !96
  store i8* %42, i8** %h_graph_visited, align 8, !llfi_index !97
  store i32 0, i32* %i, align 4, !llfi_index !98
  br label %43, !llfi_index !99

; <label>:43                                      ; preds = %74, %23
  %44 = load i32* %i, align 4, !llfi_index !100
  %45 = load i32* @no_of_nodes, align 4, !llfi_index !101
  %46 = icmp ult i32 %44, %45, !llfi_index !102
  br i1 %46, label %47, label %77, !llfi_index !103

; <label>:47                                      ; preds = %43
  %48 = load %struct._IO_FILE** @fp, align 8, !llfi_index !104
  %49 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i32* %start, i32* %edgeno), !llfi_index !105
  %50 = load i32* %start, align 4, !llfi_index !106
  %51 = load i32* %i, align 4, !llfi_index !107
  %52 = zext i32 %51 to i64, !llfi_index !108
  %53 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !109
  %54 = getelementptr inbounds %struct.Node* %53, i64 %52, !llfi_index !110
  %55 = getelementptr inbounds %struct.Node* %54, i32 0, i32 0, !llfi_index !111
  store i32 %50, i32* %55, align 4, !llfi_index !112
  %56 = load i32* %edgeno, align 4, !llfi_index !113
  %57 = load i32* %i, align 4, !llfi_index !114
  %58 = zext i32 %57 to i64, !llfi_index !115
  %59 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !116
  %60 = getelementptr inbounds %struct.Node* %59, i64 %58, !llfi_index !117
  %61 = getelementptr inbounds %struct.Node* %60, i32 0, i32 1, !llfi_index !118
  store i32 %56, i32* %61, align 4, !llfi_index !119
  %62 = load i32* %i, align 4, !llfi_index !120
  %63 = zext i32 %62 to i64, !llfi_index !121
  %64 = load i8** %h_graph_mask, align 8, !llfi_index !122
  %65 = getelementptr inbounds i8* %64, i64 %63, !llfi_index !123
  store i8 0, i8* %65, align 1, !llfi_index !124
  %66 = load i32* %i, align 4, !llfi_index !125
  %67 = zext i32 %66 to i64, !llfi_index !126
  %68 = load i8** %h_updating_graph_mask, align 8, !llfi_index !127
  %69 = getelementptr inbounds i8* %68, i64 %67, !llfi_index !128
  store i8 0, i8* %69, align 1, !llfi_index !129
  %70 = load i32* %i, align 4, !llfi_index !130
  %71 = zext i32 %70 to i64, !llfi_index !131
  %72 = load i8** %h_graph_visited, align 8, !llfi_index !132
  %73 = getelementptr inbounds i8* %72, i64 %71, !llfi_index !133
  store i8 0, i8* %73, align 1, !llfi_index !134
  br label %74, !llfi_index !135

; <label>:74                                      ; preds = %47
  %75 = load i32* %i, align 4, !llfi_index !136
  %76 = add i32 %75, 1, !llfi_index !137
  store i32 %76, i32* %i, align 4, !llfi_index !138
  br label %43, !llfi_index !139

; <label>:77                                      ; preds = %43
  %78 = load %struct._IO_FILE** @fp, align 8, !llfi_index !140
  %79 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i32* %source), !llfi_index !141
  store i32 0, i32* %source, align 4, !llfi_index !142
  %80 = load i32* %source, align 4, !llfi_index !143
  %81 = sext i32 %80 to i64, !llfi_index !144
  %82 = load i8** %h_graph_mask, align 8, !llfi_index !145
  %83 = getelementptr inbounds i8* %82, i64 %81, !llfi_index !146
  store i8 1, i8* %83, align 1, !llfi_index !147
  %84 = load i32* %source, align 4, !llfi_index !148
  %85 = sext i32 %84 to i64, !llfi_index !149
  %86 = load i8** %h_graph_visited, align 8, !llfi_index !150
  %87 = getelementptr inbounds i8* %86, i64 %85, !llfi_index !151
  store i8 1, i8* %87, align 1, !llfi_index !152
  %88 = load %struct._IO_FILE** @fp, align 8, !llfi_index !153
  %89 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i32* @edge_list_size), !llfi_index !154
  %90 = load i32* @edge_list_size, align 4, !llfi_index !155
  %91 = sext i32 %90 to i64, !llfi_index !156
  %92 = mul i64 4, %91, !llfi_index !157
  %93 = call noalias i8* @malloc(i64 %92) #7, !llfi_index !158
  %94 = bitcast i8* %93 to i32*, !llfi_index !159
  store i32* %94, i32** %h_graph_edges, align 8, !llfi_index !160
  store i32 0, i32* %i1, align 4, !llfi_index !161
  br label %95, !llfi_index !162

; <label>:95                                      ; preds = %109, %77
  %96 = load i32* %i1, align 4, !llfi_index !163
  %97 = load i32* @edge_list_size, align 4, !llfi_index !164
  %98 = icmp slt i32 %96, %97, !llfi_index !165
  br i1 %98, label %99, label %112, !llfi_index !166

; <label>:99                                      ; preds = %95
  %100 = load %struct._IO_FILE** @fp, align 8, !llfi_index !167
  %101 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i32* %id), !llfi_index !168
  %102 = load %struct._IO_FILE** @fp, align 8, !llfi_index !169
  %103 = call i32 (%struct._IO_FILE*, i8*, ...)* @fscanf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i32* %cost), !llfi_index !170
  %104 = load i32* %id, align 4, !llfi_index !171
  %105 = load i32* %i1, align 4, !llfi_index !172
  %106 = sext i32 %105 to i64, !llfi_index !173
  %107 = load i32** %h_graph_edges, align 8, !llfi_index !174
  %108 = getelementptr inbounds i32* %107, i64 %106, !llfi_index !175
  store i32 %104, i32* %108, align 4, !llfi_index !176
  br label %109, !llfi_index !177

; <label>:109                                     ; preds = %99
  %110 = load i32* %i1, align 4, !llfi_index !178
  %111 = add nsw i32 %110, 1, !llfi_index !179
  store i32 %111, i32* %i1, align 4, !llfi_index !180
  br label %95, !llfi_index !181

; <label>:112                                     ; preds = %95
  %113 = load %struct._IO_FILE** @fp, align 8, !llfi_index !182
  %114 = icmp ne %struct._IO_FILE* %113, null, !llfi_index !183
  br i1 %114, label %115, label %118, !llfi_index !184

; <label>:115                                     ; preds = %112
  %116 = load %struct._IO_FILE** @fp, align 8, !llfi_index !185
  %117 = call i32 @fclose(%struct._IO_FILE* %116), !llfi_index !186
  br label %118, !llfi_index !187

; <label>:118                                     ; preds = %115, %112
  %119 = load i32* @no_of_nodes, align 4, !llfi_index !188
  %120 = sext i32 %119 to i64, !llfi_index !189
  %121 = mul i64 4, %120, !llfi_index !190
  %122 = call noalias i8* @malloc(i64 %121) #7, !llfi_index !191
  %123 = bitcast i8* %122 to i32*, !llfi_index !192
  store i32* %123, i32** %h_cost, align 8, !llfi_index !193
  store i32 0, i32* %i2, align 4, !llfi_index !194
  br label %124, !llfi_index !195

; <label>:124                                     ; preds = %133, %118
  %125 = load i32* %i2, align 4, !llfi_index !196
  %126 = load i32* @no_of_nodes, align 4, !llfi_index !197
  %127 = icmp slt i32 %125, %126, !llfi_index !198
  br i1 %127, label %128, label %136, !llfi_index !199

; <label>:128                                     ; preds = %124
  %129 = load i32* %i2, align 4, !llfi_index !200
  %130 = sext i32 %129 to i64, !llfi_index !201
  %131 = load i32** %h_cost, align 8, !llfi_index !202
  %132 = getelementptr inbounds i32* %131, i64 %130, !llfi_index !203
  store i32 -1, i32* %132, align 4, !llfi_index !204
  br label %133, !llfi_index !205

; <label>:133                                     ; preds = %128
  %134 = load i32* %i2, align 4, !llfi_index !206
  %135 = add nsw i32 %134, 1, !llfi_index !207
  store i32 %135, i32* %i2, align 4, !llfi_index !208
  br label %124, !llfi_index !209

; <label>:136                                     ; preds = %124
  %137 = load i32* %source, align 4, !llfi_index !210
  %138 = sext i32 %137 to i64, !llfi_index !211
  %139 = load i32** %h_cost, align 8, !llfi_index !212
  %140 = getelementptr inbounds i32* %139, i64 %138, !llfi_index !213
  store i32 0, i32* %140, align 4, !llfi_index !214
  %141 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str6, i32 0, i32 0)), !llfi_index !215
  store i32 0, i32* %k, align 4, !llfi_index !216
  br label %142, !llfi_index !217

; <label>:142                                     ; preds = %254, %136
  store i8 0, i8* %stop, align 1, !llfi_index !218
  %143 = load i32* %num_omp_threads, align 4, !llfi_index !219
  call void @omp_set_num_threads(i32 %143), !llfi_index !220
  store i32 0, i32* %tid, align 4, !llfi_index !221
  br label %144, !llfi_index !222

; <label>:144                                     ; preds = %217, %142
  %145 = load i32* %tid, align 4, !llfi_index !223
  %146 = load i32* @no_of_nodes, align 4, !llfi_index !224
  %147 = icmp slt i32 %145, %146, !llfi_index !225
  br i1 %147, label %148, label %220, !llfi_index !226

; <label>:148                                     ; preds = %144
  %149 = load i32* %tid, align 4, !llfi_index !227
  %150 = sext i32 %149 to i64, !llfi_index !228
  %151 = load i8** %h_graph_mask, align 8, !llfi_index !229
  %152 = getelementptr inbounds i8* %151, i64 %150, !llfi_index !230
  %153 = load i8* %152, align 1, !llfi_index !231
  %154 = trunc i8 %153 to i1, !llfi_index !232
  %155 = zext i1 %154 to i32, !llfi_index !233
  %156 = icmp eq i32 %155, 1, !llfi_index !234
  br i1 %156, label %157, label %216, !llfi_index !235

; <label>:157                                     ; preds = %148
  %158 = load i32* %tid, align 4, !llfi_index !236
  %159 = sext i32 %158 to i64, !llfi_index !237
  %160 = load i8** %h_graph_mask, align 8, !llfi_index !238
  %161 = getelementptr inbounds i8* %160, i64 %159, !llfi_index !239
  store i8 0, i8* %161, align 1, !llfi_index !240
  %162 = load i32* %tid, align 4, !llfi_index !241
  %163 = sext i32 %162 to i64, !llfi_index !242
  %164 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !243
  %165 = getelementptr inbounds %struct.Node* %164, i64 %163, !llfi_index !244
  %166 = getelementptr inbounds %struct.Node* %165, i32 0, i32 0, !llfi_index !245
  %167 = load i32* %166, align 4, !llfi_index !246
  store i32 %167, i32* %i3, align 4, !llfi_index !247
  br label %168, !llfi_index !248

; <label>:168                                     ; preds = %212, %157
  %169 = load i32* %i3, align 4, !llfi_index !249
  %170 = load i32* %tid, align 4, !llfi_index !250
  %171 = sext i32 %170 to i64, !llfi_index !251
  %172 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !252
  %173 = getelementptr inbounds %struct.Node* %172, i64 %171, !llfi_index !253
  %174 = getelementptr inbounds %struct.Node* %173, i32 0, i32 1, !llfi_index !254
  %175 = load i32* %174, align 4, !llfi_index !255
  %176 = load i32* %tid, align 4, !llfi_index !256
  %177 = sext i32 %176 to i64, !llfi_index !257
  %178 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !258
  %179 = getelementptr inbounds %struct.Node* %178, i64 %177, !llfi_index !259
  %180 = getelementptr inbounds %struct.Node* %179, i32 0, i32 0, !llfi_index !260
  %181 = load i32* %180, align 4, !llfi_index !261
  %182 = add nsw i32 %175, %181, !llfi_index !262
  %183 = icmp slt i32 %169, %182, !llfi_index !263
  br i1 %183, label %184, label %215, !llfi_index !264

; <label>:184                                     ; preds = %168
  %185 = load i32* %i3, align 4, !llfi_index !265
  %186 = sext i32 %185 to i64, !llfi_index !266
  %187 = load i32** %h_graph_edges, align 8, !llfi_index !267
  %188 = getelementptr inbounds i32* %187, i64 %186, !llfi_index !268
  %189 = load i32* %188, align 4, !llfi_index !269
  store i32 %189, i32* %id4, align 4, !llfi_index !270
  %190 = load i32* %id4, align 4, !llfi_index !271
  %191 = sext i32 %190 to i64, !llfi_index !272
  %192 = load i8** %h_graph_visited, align 8, !llfi_index !273
  %193 = getelementptr inbounds i8* %192, i64 %191, !llfi_index !274
  %194 = load i8* %193, align 1, !llfi_index !275
  %195 = trunc i8 %194 to i1, !llfi_index !276
  br i1 %195, label %211, label %196, !llfi_index !277

; <label>:196                                     ; preds = %184
  %197 = load i32* %tid, align 4, !llfi_index !278
  %198 = sext i32 %197 to i64, !llfi_index !279
  %199 = load i32** %h_cost, align 8, !llfi_index !280
  %200 = getelementptr inbounds i32* %199, i64 %198, !llfi_index !281
  %201 = load i32* %200, align 4, !llfi_index !282
  %202 = add nsw i32 %201, 1, !llfi_index !283
  %203 = load i32* %id4, align 4, !llfi_index !284
  %204 = sext i32 %203 to i64, !llfi_index !285
  %205 = load i32** %h_cost, align 8, !llfi_index !286
  %206 = getelementptr inbounds i32* %205, i64 %204, !llfi_index !287
  store i32 %202, i32* %206, align 4, !llfi_index !288
  %207 = load i32* %id4, align 4, !llfi_index !289
  %208 = sext i32 %207 to i64, !llfi_index !290
  %209 = load i8** %h_updating_graph_mask, align 8, !llfi_index !291
  %210 = getelementptr inbounds i8* %209, i64 %208, !llfi_index !292
  store i8 1, i8* %210, align 1, !llfi_index !293
  br label %211, !llfi_index !294

; <label>:211                                     ; preds = %196, %184
  br label %212, !llfi_index !295

; <label>:212                                     ; preds = %211
  %213 = load i32* %i3, align 4, !llfi_index !296
  %214 = add nsw i32 %213, 1, !llfi_index !297
  store i32 %214, i32* %i3, align 4, !llfi_index !298
  br label %168, !llfi_index !299

; <label>:215                                     ; preds = %168
  br label %216, !llfi_index !300

; <label>:216                                     ; preds = %215, %148
  br label %217, !llfi_index !301

; <label>:217                                     ; preds = %216
  %218 = load i32* %tid, align 4, !llfi_index !302
  %219 = add nsw i32 %218, 1, !llfi_index !303
  store i32 %219, i32* %tid, align 4, !llfi_index !304
  br label %144, !llfi_index !305

; <label>:220                                     ; preds = %144
  store i32 0, i32* %tid5, align 4, !llfi_index !306
  br label %221, !llfi_index !307

; <label>:221                                     ; preds = %248, %220
  %222 = load i32* %tid5, align 4, !llfi_index !308
  %223 = load i32* @no_of_nodes, align 4, !llfi_index !309
  %224 = icmp slt i32 %222, %223, !llfi_index !310
  br i1 %224, label %225, label %251, !llfi_index !311

; <label>:225                                     ; preds = %221
  %226 = load i32* %tid5, align 4, !llfi_index !312
  %227 = sext i32 %226 to i64, !llfi_index !313
  %228 = load i8** %h_updating_graph_mask, align 8, !llfi_index !314
  %229 = getelementptr inbounds i8* %228, i64 %227, !llfi_index !315
  %230 = load i8* %229, align 1, !llfi_index !316
  %231 = trunc i8 %230 to i1, !llfi_index !317
  %232 = zext i1 %231 to i32, !llfi_index !318
  %233 = icmp eq i32 %232, 1, !llfi_index !319
  br i1 %233, label %234, label %247, !llfi_index !320

; <label>:234                                     ; preds = %225
  %235 = load i32* %tid5, align 4, !llfi_index !321
  %236 = sext i32 %235 to i64, !llfi_index !322
  %237 = load i8** %h_graph_mask, align 8, !llfi_index !323
  %238 = getelementptr inbounds i8* %237, i64 %236, !llfi_index !324
  store i8 1, i8* %238, align 1, !llfi_index !325
  %239 = load i32* %tid5, align 4, !llfi_index !326
  %240 = sext i32 %239 to i64, !llfi_index !327
  %241 = load i8** %h_graph_visited, align 8, !llfi_index !328
  %242 = getelementptr inbounds i8* %241, i64 %240, !llfi_index !329
  store i8 1, i8* %242, align 1, !llfi_index !330
  store i8 1, i8* %stop, align 1, !llfi_index !331
  %243 = load i32* %tid5, align 4, !llfi_index !332
  %244 = sext i32 %243 to i64, !llfi_index !333
  %245 = load i8** %h_updating_graph_mask, align 8, !llfi_index !334
  %246 = getelementptr inbounds i8* %245, i64 %244, !llfi_index !335
  store i8 0, i8* %246, align 1, !llfi_index !336
  br label %247, !llfi_index !337

; <label>:247                                     ; preds = %234, %225
  br label %248, !llfi_index !338

; <label>:248                                     ; preds = %247
  %249 = load i32* %tid5, align 4, !llfi_index !339
  %250 = add nsw i32 %249, 1, !llfi_index !340
  store i32 %250, i32* %tid5, align 4, !llfi_index !341
  br label %221, !llfi_index !342

; <label>:251                                     ; preds = %221
  %252 = load i32* %k, align 4, !llfi_index !343
  %253 = add nsw i32 %252, 1, !llfi_index !344
  store i32 %253, i32* %k, align 4, !llfi_index !345
  br label %254, !llfi_index !346

; <label>:254                                     ; preds = %251
  %255 = load i8* %stop, align 1, !llfi_index !347
  %256 = trunc i8 %255 to i1, !llfi_index !348
  br i1 %256, label %142, label %257, !llfi_index !349

; <label>:257                                     ; preds = %254
  store i32 0, i32* %i6, align 4, !llfi_index !350
  br label %258, !llfi_index !351

; <label>:258                                     ; preds = %270, %257
  %259 = load i32* %i6, align 4, !llfi_index !352
  %260 = load i32* @no_of_nodes, align 4, !llfi_index !353
  %261 = icmp slt i32 %259, %260, !llfi_index !354
  br i1 %261, label %262, label %273, !llfi_index !355

; <label>:262                                     ; preds = %258
  %263 = load i32* %i6, align 4, !llfi_index !356
  %264 = load i32* %i6, align 4, !llfi_index !357
  %265 = sext i32 %264 to i64, !llfi_index !358
  %266 = load i32** %h_cost, align 8, !llfi_index !359
  %267 = getelementptr inbounds i32* %266, i64 %265, !llfi_index !360
  %268 = load i32* %267, align 4, !llfi_index !361
  %269 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0), i32 %263, i32 %268), !llfi_index !362
  br label %270, !llfi_index !363

; <label>:270                                     ; preds = %262
  %271 = load i32* %i6, align 4, !llfi_index !364
  %272 = add nsw i32 %271, 1, !llfi_index !365
  store i32 %272, i32* %i6, align 4, !llfi_index !366
  br label %258, !llfi_index !367

; <label>:273                                     ; preds = %258
  %274 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str8, i32 0, i32 0)), !llfi_index !368
  %275 = load %struct.Node** %h_graph_nodes, align 8, !llfi_index !369
  %276 = bitcast %struct.Node* %275 to i8*, !llfi_index !370
  call void @free(i8* %276) #7, !llfi_index !371
  %277 = load i32** %h_graph_edges, align 8, !llfi_index !372
  %278 = bitcast i32* %277 to i8*, !llfi_index !373
  call void @free(i8* %278) #7, !llfi_index !374
  %279 = load i8** %h_graph_mask, align 8, !llfi_index !375
  call void @free(i8* %279) #7, !llfi_index !376
  %280 = load i8** %h_updating_graph_mask, align 8, !llfi_index !377
  call void @free(i8* %280) #7, !llfi_index !378
  %281 = load i8** %h_graph_visited, align 8, !llfi_index !379
  call void @free(i8* %281) #7, !llfi_index !380
  %282 = load i32** %h_cost, align 8, !llfi_index !381
  %283 = bitcast i32* %282 to i8*, !llfi_index !382
  call void @free(i8* %283) #7, !llfi_index !383
  br label %284, !llfi_index !384

; <label>:284                                     ; preds = %273, %21
  ret void, !llfi_index !385
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare i32 @printf(i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @omp_set_num_threads(i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

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
