; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/spec-libquantum/fault injection/llfi-O3/libquantum.ll'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.quantum_reg_struct = type { i32, i32, i32, %struct.quantum_reg_node_struct*, i32* }
%struct.quantum_reg_node_struct = type { { float, float }, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.quantum_matrix_struct = type { i32, i32, { float, float }* }

@type = global i32 0, align 4
@width = global i32 0, align 4
@quantum_qec_counter.counter = internal unnamed_addr global i32 0, align 4
@quantum_qec_counter.freq = internal unnamed_addr global i32 1073741824, align 4
@.str2 = private unnamed_addr constant [28 x i8] c"N = %i, %i qubits required\0A\00", align 1
@.str5 = private unnamed_addr constant [19 x i8] c"Measured %i (%f), \00", align 1
@.str6 = private unnamed_addr constant [36 x i8] c"fractional approximation is %i/%i.\0A\00", align 1
@.str9 = private unnamed_addr constant [24 x i8] c"Possible period is %i.\0A\00", align 1
@.str10 = private unnamed_addr constant [14 x i8] c"%i = %i * %i\0A\00", align 1
@str = private unnamed_addr constant [40 x i8] c"Unable to determine factors, try again.\00"
@str12 = private unnamed_addr constant [23 x i8] c"Odd period, try again.\00"
@str13 = private unnamed_addr constant [40 x i8] c"Odd denominator, trying to expand by 2.\00"
@str14 = private unnamed_addr constant [26 x i8] c"Measured zero, try again.\00"
@str15 = private unnamed_addr constant [24 x i8] c"Impossible Measurement!\00"
@str16 = private unnamed_addr constant [16 x i8] c"Invalid number\0A\00"
@str17 = private unnamed_addr constant [22 x i8] c"Usage: shor [number]\0A\00"
@.str = private unnamed_addr constant [40 x i8] c"Error allocating %i-element int array!\0A\00", align 1
@.str21 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i-sized qubit!\0A\00", align 1
@.str3 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i bytes array!\0A\00", align 1
@quantum_gate_counter.counter = internal unnamed_addr global i32 0, align 4
@str2 = private unnamed_addr constant [28 x i8] c"Matrix is not a 2x2 matrix!\00"
@str5 = private unnamed_addr constant [28 x i8] c"Matrix is not a 4x4 matrix!\00"
@.str17 = private unnamed_addr constant [51 x i8] c"Error! Cannot convert a multi-column-matrix (%i)!\0A\00", align 1
@.str1 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i-sized qubit!\0A\00", align 1
@.str218 = private unnamed_addr constant [38 x i8] c"Not enough memory for %i-sized hash!\0A\00", align 1
@.str319 = private unnamed_addr constant [9 x i8] c"QUOBFILE\00", align 1
@.str4 = private unnamed_addr constant [23 x i8] c"% f %+fi|%lli> (%e) (|\00", align 1
@.str620 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str921 = private unnamed_addr constant [10 x i8] c"%i: %lli\0A\00", align 1
@.str1022 = private unnamed_addr constant [13 x i8] c"%i: %i %llu\0A\00", align 1
@.str11 = private unnamed_addr constant [50 x i8] c"Not enough memory for %i-sized quantum register!\0A\00", align 1
@str23 = private unnamed_addr constant [3 x i8] c">)\00"
@quantum_memman.mem = internal unnamed_addr global i64 0, align 8
@quantum_memman.max = internal unnamed_addr global i64 0, align 8
@.str30 = private unnamed_addr constant [35 x i8] c"Not enogh memory for %ix%i-Matrix!\00", align 1
@.str131 = private unnamed_addr constant [10 x i8] c"% f %+fi\09\00", align 1
@.str52 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i-sized qubit!\0A\00", align 1
@opstatus = global i32 0, align 4
@objcode = global i8* null, align 8
@position = global i64 0, align 8
@allocated = global i64 0, align 8
@.str157 = private unnamed_addr constant [24 x i8] c"Unknown opcode 0x(%X)!\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str358 = private unnamed_addr constant [74 x i8] c"Object code generation not active! Forgot to call quantum_objcode_start?\0A\00", align 1
@globalfile = common global i8* null, align 8
@.str459 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str560 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str661 = private unnamed_addr constant [41 x i8] c"quantum_objcode_run: Could not open %s: \00", align 1
@.str7 = private unnamed_addr constant [28 x i8] c"%i: Unknown opcode 0x(%X)!\0A\00", align 1
@str62 = private unnamed_addr constant [42 x i8] c"Error allocating memory for objcode data!\00"
@str8 = private unnamed_addr constant [44 x i8] c"Error reallocating memory for objcode data!\00"
@.str71 = private unnamed_addr constant [6 x i8] c"0.2.4\00", align 1
@seedi = internal unnamed_addr global i32 0, align 4
@status = global i32 0, align 4
@lambda = global float 0.000000e+00, align 4
@.str76 = private unnamed_addr constant [48 x i8] c"Not enough memory for %i-sized array of float!\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @quantum_qec_set_status(i32 %stype, i32 %swidth) #0 {
  store i32 %stype, i32* @type, align 4, !tbaa !1, !llfi_index !5
  store i32 %swidth, i32* @width, align 4, !tbaa !1, !llfi_index !6
  ret void, !llfi_index !7
}

; Function Attrs: nounwind uwtable
define void @quantum_qec_get_status(i32* %ptype, i32* %pwidth) #0 {
  %1 = icmp eq i32* %ptype, null, !llfi_index !8
  br i1 %1, label %4, label %2, !llfi_index !9

; <label>:2                                       ; preds = %0
  %3 = load i32* @type, align 4, !tbaa !1, !llfi_index !10
  store i32 %3, i32* %ptype, align 4, !tbaa !1, !llfi_index !11
  br label %4, !llfi_index !12

; <label>:4                                       ; preds = %2, %0
  %5 = icmp eq i32* %pwidth, null, !llfi_index !13
  br i1 %5, label %8, label %6, !llfi_index !14

; <label>:6                                       ; preds = %4
  %7 = load i32* @width, align 4, !tbaa !1, !llfi_index !15
  store i32 %7, i32* %pwidth, align 4, !tbaa !1, !llfi_index !16
  br label %8, !llfi_index !17

; <label>:8                                       ; preds = %6, %4
  ret void, !llfi_index !18
}

; Function Attrs: nounwind uwtable
define void @quantum_qec_encode(i32 %type, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = tail call float (...)* bitcast (float ()* @quantum_get_decoherence to float (...)*)() #3, !llfi_index !19
  tail call void @quantum_set_decoherence(float 0.000000e+00) #3, !llfi_index !20
  %2 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !21
  %3 = load i32* %2, align 4, !tbaa !22, !llfi_index !25
  %4 = icmp sgt i32 %3, 0, !llfi_index !26
  br i1 %4, label %.lr.ph, label %._crit_edge, !llfi_index !27

.lr.ph:                                           ; preds = %26, %0
  %5 = phi i32 [ %28, %26 ], [ %3, %0 ], !llfi_index !28
  %i.02 = phi i32 [ %27, %26 ], [ 0, %0 ], !llfi_index !29
  %6 = add nsw i32 %5, -1, !llfi_index !30
  %7 = icmp eq i32 %i.02, %6, !llfi_index !31
  br i1 %7, label %8, label %9, !llfi_index !32

; <label>:8                                       ; preds = %.lr.ph
  tail call void @quantum_set_decoherence(float %1) #3, !llfi_index !33
  %.pre = load i32* %2, align 4, !tbaa !22, !llfi_index !34
  br label %9, !llfi_index !35

; <label>:9                                       ; preds = %8, %.lr.ph
  %10 = phi i32 [ %.pre, %8 ], [ %5, %.lr.ph ], !llfi_index !36
  %11 = icmp slt i32 %i.02, %width, !llfi_index !37
  %12 = add nsw i32 %10, %i.02, !llfi_index !38
  br i1 %11, label %13, label %22, !llfi_index !39

; <label>:13                                      ; preds = %9
  tail call void @quantum_hadamard(i32 %12, %struct.quantum_reg_struct* %reg) #3, !llfi_index !40
  %14 = load i32* %2, align 4, !tbaa !22, !llfi_index !41
  %15 = shl i32 %14, 1, !llfi_index !42
  %16 = add nsw i32 %15, %i.02, !llfi_index !43
  tail call void @quantum_hadamard(i32 %16, %struct.quantum_reg_struct* %reg) #3, !llfi_index !44
  %17 = load i32* %2, align 4, !tbaa !22, !llfi_index !45
  %18 = add nsw i32 %17, %i.02, !llfi_index !46
  tail call void @quantum_cnot(i32 %18, i32 %i.02, %struct.quantum_reg_struct* %reg) #3, !llfi_index !47
  %19 = load i32* %2, align 4, !tbaa !22, !llfi_index !48
  %20 = shl i32 %19, 1, !llfi_index !49
  %21 = add nsw i32 %20, %i.02, !llfi_index !50
  tail call void @quantum_cnot(i32 %21, i32 %i.02, %struct.quantum_reg_struct* %reg) #3, !llfi_index !51
  br label %26, !llfi_index !52

; <label>:22                                      ; preds = %9
  tail call void @quantum_cnot(i32 %i.02, i32 %12, %struct.quantum_reg_struct* %reg) #3, !llfi_index !53
  %23 = load i32* %2, align 4, !tbaa !22, !llfi_index !54
  %24 = shl i32 %23, 1, !llfi_index !55
  %25 = add nsw i32 %24, %i.02, !llfi_index !56
  tail call void @quantum_cnot(i32 %i.02, i32 %25, %struct.quantum_reg_struct* %reg) #3, !llfi_index !57
  br label %26, !llfi_index !58

; <label>:26                                      ; preds = %22, %13
  %27 = add nsw i32 %i.02, 1, !llfi_index !59
  %28 = load i32* %2, align 4, !tbaa !22, !llfi_index !60
  %29 = icmp slt i32 %27, %28, !llfi_index !61
  br i1 %29, label %.lr.ph, label %._crit_edge, !llfi_index !62

._crit_edge:                                      ; preds = %26, %0
  %.lcssa1 = phi i32 [ %3, %0 ], [ %28, %26 ], !llfi_index !63
  store i32 1, i32* @type, align 4, !tbaa !1, !llfi_index !64
  store i32 %.lcssa1, i32* @width, align 4, !tbaa !1, !llfi_index !65
  %30 = load i32* %2, align 4, !tbaa !22, !llfi_index !66
  %31 = mul nsw i32 %30, 3, !llfi_index !67
  store i32 %31, i32* %2, align 4, !tbaa !22, !llfi_index !68
  ret void, !llfi_index !69
}

; Function Attrs: nounwind uwtable
define void @quantum_qec_decode(i32 %type, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = tail call float (...)* bitcast (float ()* @quantum_get_decoherence to float (...)*)() #3, !llfi_index !70
  tail call void @quantum_set_decoherence(float 0.000000e+00) #3, !llfi_index !71
  %2 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !72
  %3 = load i32* %2, align 4, !tbaa !22, !llfi_index !73
  %4 = sdiv i32 %3, 3, !llfi_index !74
  store i32 0, i32* @type, align 4, !tbaa !1, !llfi_index !75
  store i32 0, i32* @width, align 4, !tbaa !1, !llfi_index !76
  %5 = load i32* %2, align 4, !tbaa !22, !llfi_index !77
  %6 = icmp sgt i32 %5, 2, !llfi_index !78
  br i1 %6, label %.lr.ph8, label %.preheader, !llfi_index !79

.lr.ph8:                                          ; preds = %0
  %7 = sdiv i32 %5, 3, !llfi_index !80
  %8 = shl nsw i32 %4, 1, !llfi_index !81
  br label %11, !llfi_index !82

.preheader:                                       ; preds = %.backedge, %0
  %9 = icmp slt i32 %3, 3, !llfi_index !83
  br i1 %9, label %._crit_edge, label %.lr.ph, !llfi_index !84

.lr.ph:                                           ; preds = %.preheader
  %10 = shl nsw i32 %4, 1, !llfi_index !85
  br label %22, !llfi_index !86

; <label>:11                                      ; preds = %.backedge, %.lr.ph8
  %i.06.in = phi i32 [ %7, %.lr.ph8 ], [ %i.06, %.backedge ], !llfi_index !87
  %i.06 = add nsw i32 %i.06.in, -1, !llfi_index !88
  %12 = icmp eq i32 %i.06, 0, !llfi_index !89
  br i1 %12, label %13, label %14, !llfi_index !90

; <label>:13                                      ; preds = %11
  tail call void @quantum_set_decoherence(float %1) #3, !llfi_index !91
  br label %14, !llfi_index !92

; <label>:14                                      ; preds = %13, %11
  %15 = icmp sgt i32 %i.06.in, %width, !llfi_index !93
  %16 = add nsw i32 %i.06, %8, !llfi_index !94
  br i1 %15, label %20, label %17, !llfi_index !95

; <label>:17                                      ; preds = %14
  tail call void @quantum_cnot(i32 %16, i32 %i.06, %struct.quantum_reg_struct* %reg) #3, !llfi_index !96
  %18 = add nsw i32 %i.06, %4, !llfi_index !97
  tail call void @quantum_cnot(i32 %18, i32 %i.06, %struct.quantum_reg_struct* %reg) #3, !llfi_index !98
  tail call void @quantum_hadamard(i32 %16, %struct.quantum_reg_struct* %reg) #3, !llfi_index !99
  tail call void @quantum_hadamard(i32 %18, %struct.quantum_reg_struct* %reg) #3, !llfi_index !100
  br label %.backedge, !llfi_index !101

.backedge:                                        ; preds = %20, %17
  %19 = icmp sgt i32 %i.06, 0, !llfi_index !102
  br i1 %19, label %11, label %.preheader, !llfi_index !103

; <label>:20                                      ; preds = %14
  tail call void @quantum_cnot(i32 %i.06, i32 %16, %struct.quantum_reg_struct* %reg) #3, !llfi_index !104
  %21 = add nsw i32 %i.06, %4, !llfi_index !105
  tail call void @quantum_cnot(i32 %i.06, i32 %21, %struct.quantum_reg_struct* %reg) #3, !llfi_index !106
  br label %.backedge, !llfi_index !107

; <label>:22                                      ; preds = %29, %.lr.ph
  %i.13 = phi i32 [ 1, %.lr.ph ], [ %30, %29 ], !llfi_index !108
  %23 = tail call i32 @quantum_bmeasure(i32 %4, %struct.quantum_reg_struct* %reg) #3, !llfi_index !109
  %24 = sub nsw i32 %10, %i.13, !llfi_index !110
  %25 = tail call i32 @quantum_bmeasure(i32 %24, %struct.quantum_reg_struct* %reg) #3, !llfi_index !111
  %notlhs = icmp ne i32 %23, 1, !llfi_index !112
  %notrhs = icmp ne i32 %25, 1, !llfi_index !113
  %or.cond.not = or i1 %notrhs, %notlhs, !llfi_index !114
  %26 = icmp sgt i32 %i.13, %width, !llfi_index !115
  %or.cond2 = or i1 %or.cond.not, %26, !llfi_index !116
  br i1 %or.cond2, label %29, label %27, !llfi_index !117

; <label>:27                                      ; preds = %22
  %28 = add nsw i32 %i.13, -1, !llfi_index !118
  tail call void @quantum_sigma_z(i32 %28, %struct.quantum_reg_struct* %reg) #3, !llfi_index !119
  br label %29, !llfi_index !120

; <label>:29                                      ; preds = %27, %22
  %30 = add nsw i32 %i.13, 1, !llfi_index !121
  %31 = icmp slt i32 %i.13, %4, !llfi_index !122
  br i1 %31, label %22, label %._crit_edge, !llfi_index !123

._crit_edge:                                      ; preds = %29, %.preheader
  ret void, !llfi_index !124
}

; Function Attrs: nounwind uwtable
define i32 @quantum_qec_counter(i32 %inc, i32 %frequency, %struct.quantum_reg_struct* %reg) #0 {
  %1 = icmp sgt i32 %inc, 0, !llfi_index !125
  br i1 %1, label %2, label %5, !llfi_index !126

; <label>:2                                       ; preds = %0
  %3 = load i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !127
  %4 = add nsw i32 %3, %inc, !llfi_index !128
  store i32 %4, i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !129
  br label %8, !llfi_index !130

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %inc, 0, !llfi_index !131
  br i1 %6, label %7, label %8, !llfi_index !132

; <label>:7                                       ; preds = %5
  store i32 0, i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !133
  br label %8, !llfi_index !134

; <label>:8                                       ; preds = %7, %5, %2
  %9 = icmp sgt i32 %frequency, 0, !llfi_index !135
  br i1 %9, label %10, label %._crit_edge, !llfi_index !136

._crit_edge:                                      ; preds = %8
  %.pre = load i32* @quantum_qec_counter.freq, align 4, !tbaa !1, !llfi_index !137
  br label %11, !llfi_index !138

; <label>:10                                      ; preds = %8
  store i32 %frequency, i32* @quantum_qec_counter.freq, align 4, !tbaa !1, !llfi_index !139
  br label %11, !llfi_index !140

; <label>:11                                      ; preds = %10, %._crit_edge
  %12 = phi i32 [ %.pre, %._crit_edge ], [ %frequency, %10 ], !llfi_index !141
  %13 = load i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !142
  %14 = icmp slt i32 %13, %12, !llfi_index !143
  br i1 %14, label %18, label %15, !llfi_index !144

; <label>:15                                      ; preds = %11
  store i32 0, i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !145
  %16 = load i32* @width, align 4, !tbaa !1, !llfi_index !146
  tail call void @quantum_qec_decode(i32 undef, i32 %16, %struct.quantum_reg_struct* %reg), !llfi_index !147
  %17 = load i32* @width, align 4, !tbaa !1, !llfi_index !148
  tail call void @quantum_qec_encode(i32 undef, i32 %17, %struct.quantum_reg_struct* %reg), !llfi_index !149
  %.pre1 = load i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !150
  br label %18, !llfi_index !151

; <label>:18                                      ; preds = %15, %11
  %19 = phi i32 [ %13, %11 ], [ %.pre1, %15 ], !llfi_index !152
  ret i32 %19, !llfi_index !153
}

; Function Attrs: nounwind uwtable
define void @quantum_sigma_x_ft(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %1 = load i32* @type, align 4, !tbaa !1, !llfi_index !154
  store i32 0, i32* @type, align 4, !tbaa !1, !llfi_index !155
  %2 = tail call float (...)* bitcast (float ()* @quantum_get_decoherence to float (...)*)() #3, !llfi_index !156
  tail call void @quantum_set_decoherence(float 0.000000e+00) #3, !llfi_index !157
  tail call void @quantum_sigma_x(i32 %target, %struct.quantum_reg_struct* %reg) #3, !llfi_index !158
  %3 = load i32* @width, align 4, !tbaa !1, !llfi_index !159
  %4 = add nsw i32 %3, %target, !llfi_index !160
  tail call void @quantum_sigma_x(i32 %4, %struct.quantum_reg_struct* %reg) #3, !llfi_index !161
  tail call void @quantum_set_decoherence(float %2) #3, !llfi_index !162
  %5 = load i32* @width, align 4, !tbaa !1, !llfi_index !163
  %6 = shl i32 %5, 1, !llfi_index !164
  %7 = add nsw i32 %6, %target, !llfi_index !165
  tail call void @quantum_sigma_x(i32 %7, %struct.quantum_reg_struct* %reg) #3, !llfi_index !166
  %8 = load i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !167
  %9 = add nsw i32 %8, 1, !llfi_index !168
  store i32 %9, i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !169
  %.pre.i = load i32* @quantum_qec_counter.freq, align 4, !tbaa !1, !llfi_index !170
  %10 = icmp slt i32 %9, %.pre.i, !llfi_index !171
  br i1 %10, label %quantum_qec_counter.exit, label %11, !llfi_index !172

; <label>:11                                      ; preds = %0
  store i32 0, i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !173
  %12 = load i32* @width, align 4, !tbaa !1, !llfi_index !174
  tail call void @quantum_qec_decode(i32 undef, i32 %12, %struct.quantum_reg_struct* %reg) #3, !llfi_index !175
  %13 = load i32* @width, align 4, !tbaa !1, !llfi_index !176
  tail call void @quantum_qec_encode(i32 undef, i32 %13, %struct.quantum_reg_struct* %reg) #3, !llfi_index !177
  br label %quantum_qec_counter.exit, !llfi_index !178

quantum_qec_counter.exit:                         ; preds = %11, %0
  store i32 %1, i32* @type, align 4, !tbaa !1, !llfi_index !179
  ret void, !llfi_index !180
}

; Function Attrs: nounwind uwtable
define void @quantum_cnot_ft(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %1 = load i32* @type, align 4, !tbaa !1, !llfi_index !181
  store i32 0, i32* @type, align 4, !tbaa !1, !llfi_index !182
  %2 = tail call float (...)* bitcast (float ()* @quantum_get_decoherence to float (...)*)() #3, !llfi_index !183
  tail call void @quantum_set_decoherence(float 0.000000e+00) #3, !llfi_index !184
  tail call void @quantum_cnot(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #3, !llfi_index !185
  %3 = load i32* @width, align 4, !tbaa !1, !llfi_index !186
  %4 = add nsw i32 %3, %control, !llfi_index !187
  %5 = add nsw i32 %3, %target, !llfi_index !188
  tail call void @quantum_cnot(i32 %4, i32 %5, %struct.quantum_reg_struct* %reg) #3, !llfi_index !189
  tail call void @quantum_set_decoherence(float %2) #3, !llfi_index !190
  %6 = load i32* @width, align 4, !tbaa !1, !llfi_index !191
  %7 = shl nsw i32 %6, 1, !llfi_index !192
  %8 = add nsw i32 %7, %control, !llfi_index !193
  %9 = add nsw i32 %7, %target, !llfi_index !194
  tail call void @quantum_cnot(i32 %8, i32 %9, %struct.quantum_reg_struct* %reg) #3, !llfi_index !195
  %10 = load i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !196
  %11 = add nsw i32 %10, 1, !llfi_index !197
  store i32 %11, i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !198
  %.pre.i = load i32* @quantum_qec_counter.freq, align 4, !tbaa !1, !llfi_index !199
  %12 = icmp slt i32 %11, %.pre.i, !llfi_index !200
  br i1 %12, label %quantum_qec_counter.exit, label %13, !llfi_index !201

; <label>:13                                      ; preds = %0
  store i32 0, i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !202
  %14 = load i32* @width, align 4, !tbaa !1, !llfi_index !203
  tail call void @quantum_qec_decode(i32 undef, i32 %14, %struct.quantum_reg_struct* %reg) #3, !llfi_index !204
  %15 = load i32* @width, align 4, !tbaa !1, !llfi_index !205
  tail call void @quantum_qec_encode(i32 undef, i32 %15, %struct.quantum_reg_struct* %reg) #3, !llfi_index !206
  br label %quantum_qec_counter.exit, !llfi_index !207

quantum_qec_counter.exit:                         ; preds = %13, %0
  store i32 %1, i32* @type, align 4, !tbaa !1, !llfi_index !208
  ret void, !llfi_index !209
}

; Function Attrs: nounwind uwtable
define void @quantum_toffoli_ft(i32 %control1, i32 %control2, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %1 = zext i32 %target to i64, !llfi_index !210
  %2 = shl i64 1, %1, !llfi_index !211
  %3 = load i32* @width, align 4, !tbaa !1, !llfi_index !212
  %4 = add nsw i32 %3, %target, !llfi_index !213
  %5 = zext i32 %4 to i64, !llfi_index !214
  %6 = shl i64 1, %5, !llfi_index !215
  %7 = add i64 %6, %2, !llfi_index !216
  %8 = shl i32 %3, 1, !llfi_index !217
  %9 = add nsw i32 %8, %target, !llfi_index !218
  %10 = zext i32 %9 to i64, !llfi_index !219
  %11 = shl i64 1, %10, !llfi_index !220
  %12 = add i64 %7, %11, !llfi_index !221
  %13 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !222
  %14 = load i32* %13, align 4, !tbaa !223, !llfi_index !224
  %15 = icmp sgt i32 %14, 0, !llfi_index !225
  br i1 %15, label %.lr.ph, label %._crit_edge, !llfi_index !226

.lr.ph:                                           ; preds = %0
  %16 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !227
  %17 = load %struct.quantum_reg_node_struct** %16, align 8, !tbaa !228, !llfi_index !229
  %18 = zext i32 %control1 to i64, !llfi_index !230
  %19 = shl i64 1, %18, !llfi_index !231
  %20 = add nsw i32 %3, %control1, !llfi_index !232
  %21 = zext i32 %20 to i64, !llfi_index !233
  %22 = shl i64 1, %21, !llfi_index !234
  %23 = add nsw i32 %8, %control1, !llfi_index !235
  %24 = zext i32 %23 to i64, !llfi_index !236
  %25 = shl i64 1, %24, !llfi_index !237
  %26 = zext i32 %control2 to i64, !llfi_index !238
  %27 = shl i64 1, %26, !llfi_index !239
  %28 = add nsw i32 %3, %control2, !llfi_index !240
  %29 = zext i32 %28 to i64, !llfi_index !241
  %30 = shl i64 1, %29, !llfi_index !242
  %31 = add nsw i32 %8, %control2, !llfi_index !243
  %32 = zext i32 %31 to i64, !llfi_index !244
  %33 = shl i64 1, %32, !llfi_index !245
  br label %34, !llfi_index !246

; <label>:34                                      ; preds = %45, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %45 ], !llfi_index !247
  %35 = getelementptr inbounds %struct.quantum_reg_node_struct* %17, i64 %indvars.iv, i32 1, !llfi_index !248
  %36 = load i64* %35, align 8, !tbaa !249, !llfi_index !252
  %37 = and i64 %36, %19, !llfi_index !253
  %not. = icmp ne i64 %37, 0, !llfi_index !254
  %38 = and i64 %22, %36, !llfi_index !255
  %not.2 = icmp ne i64 %38, 0, !llfi_index !256
  %c1.13 = xor i1 %not., %not.2, !llfi_index !257
  %39 = and i64 %25, %36, !llfi_index !258
  %not.4 = icmp ne i64 %39, 0, !llfi_index !259
  %c1.1.5 = xor i1 %c1.13, %not.4, !llfi_index !260
  %40 = and i64 %36, %27, !llfi_index !261
  %not.6 = icmp ne i64 %40, 0, !llfi_index !262
  %41 = and i64 %30, %36, !llfi_index !263
  %not.7 = icmp ne i64 %41, 0, !llfi_index !264
  %c2.0.8 = xor i1 %not.6, %not.7, !llfi_index !265
  %42 = and i64 %33, %36, !llfi_index !266
  %not.9 = icmp ne i64 %42, 0, !llfi_index !267
  %c2.210 = xor i1 %c2.0.8, %not.9, !llfi_index !268
  %or.cond = and i1 %c1.1.5, %c2.210, !llfi_index !269
  br i1 %or.cond, label %43, label %45, !llfi_index !270

; <label>:43                                      ; preds = %34
  %44 = xor i64 %36, %12, !llfi_index !271
  store i64 %44, i64* %35, align 8, !tbaa !249, !llfi_index !272
  br label %45, !llfi_index !273

; <label>:45                                      ; preds = %43, %34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !274
  %46 = trunc i64 %indvars.iv.next to i32, !llfi_index !275
  %47 = icmp slt i32 %46, %14, !llfi_index !276
  br i1 %47, label %34, label %._crit_edge, !llfi_index !277

._crit_edge:                                      ; preds = %45, %0
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !278
  %48 = load i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !279
  %49 = add nsw i32 %48, 1, !llfi_index !280
  store i32 %49, i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !281
  %.pre.i = load i32* @quantum_qec_counter.freq, align 4, !tbaa !1, !llfi_index !282
  %50 = icmp slt i32 %49, %.pre.i, !llfi_index !283
  br i1 %50, label %quantum_qec_counter.exit, label %51, !llfi_index !284

; <label>:51                                      ; preds = %._crit_edge
  store i32 0, i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !285
  %52 = load i32* @width, align 4, !tbaa !1, !llfi_index !286
  tail call void @quantum_qec_decode(i32 undef, i32 %52, %struct.quantum_reg_struct* %reg) #3, !llfi_index !287
  %53 = load i32* @width, align 4, !tbaa !1, !llfi_index !288
  tail call void @quantum_qec_encode(i32 undef, i32 %53, %struct.quantum_reg_struct* %reg) #3, !llfi_index !289
  br label %quantum_qec_counter.exit, !llfi_index !290

quantum_qec_counter.exit:                         ; preds = %51, %._crit_edge
  ret void, !llfi_index !291
}

; Function Attrs: nounwind uwtable
define void @quantum_qft(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = add nsw i32 %width, -1, !llfi_index !292
  %2 = icmp sgt i32 %width, 0, !llfi_index !293
  br i1 %2, label %.preheader, label %._crit_edge3, !llfi_index !294

.preheader:                                       ; preds = %._crit_edge, %0
  %i.02 = phi i32 [ %6, %._crit_edge ], [ %1, %0 ], !llfi_index !295
  %3 = icmp sgt i32 %1, %i.02, !llfi_index !296
  br i1 %3, label %.lr.ph, label %._crit_edge, !llfi_index !297

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %j.01 = phi i32 [ %4, %.lr.ph ], [ %1, %.preheader ], !llfi_index !298
  tail call void @quantum_cond_phase(i32 %j.01, i32 %i.02, %struct.quantum_reg_struct* %reg) #3, !llfi_index !299
  %4 = add nsw i32 %j.01, -1, !llfi_index !300
  %5 = icmp sgt i32 %4, %i.02, !llfi_index !301
  br i1 %5, label %.lr.ph, label %._crit_edge, !llfi_index !302

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void @quantum_hadamard(i32 %i.02, %struct.quantum_reg_struct* %reg) #3, !llfi_index !303
  %6 = add nsw i32 %i.02, -1, !llfi_index !304
  %7 = icmp sgt i32 %i.02, 0, !llfi_index !305
  br i1 %7, label %.preheader, label %._crit_edge3, !llfi_index !306

._crit_edge3:                                     ; preds = %._crit_edge, %0
  ret void, !llfi_index !307
}

; Function Attrs: nounwind uwtable
define void @quantum_qft_inv(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = icmp sgt i32 %width, 0, !llfi_index !308
  br i1 %1, label %.lr.ph3, label %._crit_edge, !llfi_index !309

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph3
  %exitcond4 = icmp eq i32 %2, %width, !llfi_index !310
  br i1 %exitcond4, label %._crit_edge, label %.lr.ph3, !llfi_index !311

.lr.ph3:                                          ; preds = %.loopexit, %0
  %i.02 = phi i32 [ %2, %.loopexit ], [ 0, %0 ], !llfi_index !312
  tail call void @quantum_hadamard(i32 %i.02, %struct.quantum_reg_struct* %reg) #3, !llfi_index !313
  %2 = add nsw i32 %i.02, 1, !llfi_index !314
  %3 = icmp slt i32 %2, %width, !llfi_index !315
  br i1 %3, label %.lr.ph, label %.loopexit, !llfi_index !316

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph3
  %j.01 = phi i32 [ %4, %.lr.ph ], [ %2, %.lr.ph3 ], !llfi_index !317
  tail call void @quantum_cond_phase_inv(i32 %j.01, i32 %i.02, %struct.quantum_reg_struct* %reg) #3, !llfi_index !318
  %4 = add nsw i32 %j.01, 1, !llfi_index !319
  %exitcond = icmp eq i32 %4, %width, !llfi_index !320
  br i1 %exitcond, label %.loopexit, label %.lr.ph, !llfi_index !321

._crit_edge:                                      ; preds = %.loopexit, %0
  ret void, !llfi_index !322
}

; Function Attrs: nounwind uwtable
define void @quantum_exp_mod_n(i32 %N, i32 %x, i32 %width_input, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = shl i32 %width, 1, !llfi_index !323
  %2 = add nsw i32 %1, 2, !llfi_index !324
  tail call void @quantum_sigma_x(i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !325
  %3 = icmp slt i32 %width_input, 1, !llfi_index !326
  br i1 %3, label %._crit_edge5, label %.preheader.lr.ph, !llfi_index !327

.preheader.lr.ph:                                 ; preds = %0
  %f.01 = srem i32 %x, %N, !llfi_index !328
  %4 = mul nsw i32 %width, 3, !llfi_index !329
  %5 = add nsw i32 %4, 1, !llfi_index !330
  br label %.preheader, !llfi_index !331

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge ], [ 1, %.preheader.lr.ph ], !llfi_index !332
  %6 = icmp sgt i32 %indvars.iv, 1, !llfi_index !333
  br i1 %6, label %.lr.ph, label %._crit_edge, !llfi_index !334

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %f.03 = phi i32 [ %f.0, %.lr.ph ], [ %f.01, %.preheader ], !llfi_index !335
  %j.02 = phi i32 [ %8, %.lr.ph ], [ 1, %.preheader ], !llfi_index !336
  %7 = mul nsw i32 %f.03, %f.03, !llfi_index !337
  %8 = add nsw i32 %j.02, 1, !llfi_index !338
  %f.0 = srem i32 %7, %N, !llfi_index !339
  %exitcond = icmp eq i32 %8, %indvars.iv, !llfi_index !340
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !341

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %f.0.lcssa = phi i32 [ %f.01, %.preheader ], [ %f.0, %.lr.ph ], !llfi_index !342
  %9 = add nsw i32 %5, %indvars.iv, !llfi_index !343
  tail call void @mul_mod_n(i32 %N, i32 %f.0.lcssa, i32 %9, i32 %width, %struct.quantum_reg_struct* %reg) #3, !llfi_index !344
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1, !llfi_index !345
  %exitcond7 = icmp eq i32 %indvars.iv, %width_input, !llfi_index !346
  br i1 %exitcond7, label %._crit_edge5, label %.preheader, !llfi_index !347

._crit_edge5:                                     ; preds = %._crit_edge, %0
  ret void, !llfi_index !348
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
  %qr = alloca %struct.quantum_reg_struct, align 8, !llfi_index !349
  %c = alloca i32, align 4, !llfi_index !350
  %q = alloca i32, align 4, !llfi_index !351
  call void @spec_srand(i32 26) #3, !llfi_index !352
  %1 = icmp eq i32 %argc, 1, !llfi_index !353
  br i1 %1, label %2, label %3, !llfi_index !354

; <label>:2                                       ; preds = %0
  %puts9 = call i32 @puts(i8* getelementptr inbounds ([22 x i8]* @str17, i64 0, i64 0)), !llfi_index !355
  br label %86, !llfi_index !356

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds i8** %argv, i64 1, !llfi_index !357
  %5 = load i8** %4, align 8, !tbaa !358, !llfi_index !359
  %6 = call i64 @strtol(i8* nocapture %5, i8** null, i32 10) #3, !llfi_index !360
  %7 = trunc i64 %6 to i32, !llfi_index !361
  %8 = icmp slt i32 %7, 15, !llfi_index !362
  br i1 %8, label %9, label %10, !llfi_index !363

; <label>:9                                       ; preds = %3
  %puts8 = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str16, i64 0, i64 0)), !llfi_index !364
  br label %86, !llfi_index !365

; <label>:10                                      ; preds = %3
  %11 = mul nsw i32 %7, %7, !llfi_index !366
  %12 = call i32 @quantum_getwidth(i32 %11) #3, !llfi_index !367
  %13 = call i32 @quantum_getwidth(i32 %7) #3, !llfi_index !368
  %14 = mul i32 %13, 3, !llfi_index !369
  %15 = add i32 %12, 2, !llfi_index !370
  %16 = add i32 %15, %14, !llfi_index !371
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str2, i64 0, i64 0), i32 %7, i32 %16) #3, !llfi_index !372
  %18 = icmp sgt i32 %argc, 2, !llfi_index !373
  br i1 %18, label %.critedge.preheader, label %.critedge.preheader.split.us, !llfi_index !374

.critedge.preheader:                              ; preds = %10
  %19 = getelementptr inbounds i8** %argv, i64 2, !llfi_index !375
  %20 = load i8** %19, align 8, !tbaa !358, !llfi_index !376
  %21 = call i64 @strtol(i8* nocapture %20, i8** null, i32 10) #3, !llfi_index !377
  %22 = trunc i64 %21 to i32, !llfi_index !378
  %23 = icmp slt i32 %22, 2, !llfi_index !379
  br i1 %23, label %.critedge.preheader.split.us, label %.critedge, !llfi_index !380

.critedge.preheader.split.us:                     ; preds = %.critedge.preheader, %10
  %x.0.ph23 = phi i32 [ %22, %.critedge.preheader ], [ 0, %10 ], !llfi_index !381
  br label %.critedge.us, !llfi_index !382

.critedge.us:                                     ; preds = %.critedge.us, %.critedge.preheader.split.us
  %24 = call i32 @quantum_gcd(i32 %7, i32 %x.0.ph23) #3, !llfi_index !383
  br label %.critedge.us, !llfi_index !384

.critedge:                                        ; preds = %.critedge, %.critedge.preheader
  %25 = call i32 @quantum_gcd(i32 %7, i32 %22) #3, !llfi_index !385
  %26 = icmp sgt i32 %25, 1, !llfi_index !386
  br i1 %26, label %.critedge, label %.us-lcssa, !llfi_index !387

.us-lcssa:                                        ; preds = %.critedge
  call void @quantum_new_qureg(%struct.quantum_reg_struct* sret %qr, i64 0, i32 %12) #3, !llfi_index !388
  %27 = icmp sgt i32 %12, 0, !llfi_index !389
  br i1 %27, label %.lr.ph19, label %._crit_edge20, !llfi_index !390

.lr.ph19:                                         ; preds = %.lr.ph19, %.us-lcssa
  %i.017 = phi i32 [ %28, %.lr.ph19 ], [ 0, %.us-lcssa ], !llfi_index !391
  call void @quantum_hadamard(i32 %i.017, %struct.quantum_reg_struct* %qr) #3, !llfi_index !392
  %28 = add nsw i32 %i.017, 1, !llfi_index !393
  %exitcond21 = icmp eq i32 %28, %12, !llfi_index !394
  br i1 %exitcond21, label %._crit_edge20, label %.lr.ph19, !llfi_index !395

._crit_edge20:                                    ; preds = %.lr.ph19, %.us-lcssa
  %29 = add i32 %14, 2, !llfi_index !396
  call void @quantum_addscratch(i32 %29, %struct.quantum_reg_struct* %qr) #3, !llfi_index !397
  call void @quantum_exp_mod_n(i32 %7, i32 %22, i32 %12, i32 %13, %struct.quantum_reg_struct* %qr) #3, !llfi_index !398
  %30 = icmp sgt i32 %29, 0, !llfi_index !399
  br i1 %30, label %.lr.ph15, label %._crit_edge16, !llfi_index !400

.lr.ph15:                                         ; preds = %.lr.ph15, %._crit_edge20
  %i.113 = phi i32 [ %32, %.lr.ph15 ], [ 0, %._crit_edge20 ], !llfi_index !401
  %31 = call i32 @quantum_bmeasure(i32 0, %struct.quantum_reg_struct* %qr) #3, !llfi_index !402
  %32 = add nsw i32 %i.113, 1, !llfi_index !403
  %exitcond = icmp eq i32 %32, %29, !llfi_index !404
  br i1 %exitcond, label %._crit_edge16, label %.lr.ph15, !llfi_index !405

._crit_edge16:                                    ; preds = %.lr.ph15, %._crit_edge20
  call void @quantum_qft(i32 %12, %struct.quantum_reg_struct* %qr) #3, !llfi_index !406
  %33 = sdiv i32 %12, 2, !llfi_index !407
  %34 = icmp sgt i32 %12, 1, !llfi_index !408
  br i1 %34, label %.lr.ph, label %._crit_edge, !llfi_index !409

.lr.ph:                                           ; preds = %.lr.ph, %._crit_edge16
  %i.212 = phi i32 [ %37, %.lr.ph ], [ 0, %._crit_edge16 ], !llfi_index !410
  %35 = sub nsw i32 %12, %i.212, !llfi_index !411
  %36 = add nsw i32 %35, -1, !llfi_index !412
  call void @quantum_cnot(i32 %i.212, i32 %36, %struct.quantum_reg_struct* %qr) #3, !llfi_index !413
  call void @quantum_cnot(i32 %36, i32 %i.212, %struct.quantum_reg_struct* %qr) #3, !llfi_index !414
  call void @quantum_cnot(i32 %i.212, i32 %36, %struct.quantum_reg_struct* %qr) #3, !llfi_index !415
  %37 = add nsw i32 %i.212, 1, !llfi_index !416
  %38 = icmp slt i32 %37, %33, !llfi_index !417
  br i1 %38, label %.lr.ph, label %._crit_edge, !llfi_index !418

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge16
  %39 = call i64 @quantum_measure(%struct.quantum_reg_struct* byval align 8 %qr) #3, !llfi_index !419
  %40 = trunc i64 %39 to i32, !llfi_index !420
  store i32 %40, i32* %c, align 4, !tbaa !1, !llfi_index !421
  switch i32 %40, label %43 [
    i32 -1, label %41
    i32 0, label %42
  ], !llfi_index !422

; <label>:41                                      ; preds = %._crit_edge
  %puts7 = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str15, i64 0, i64 0)), !llfi_index !423
  call void @exit(i32 1) #8, !llfi_index !424
  unreachable, !llfi_index !425

; <label>:42                                      ; preds = %._crit_edge
  %puts6 = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str14, i64 0, i64 0)), !llfi_index !426
  call void @exit(i32 2) #8, !llfi_index !427
  unreachable, !llfi_index !428

; <label>:43                                      ; preds = %._crit_edge
  %44 = shl i32 1, %12, !llfi_index !429
  store i32 %44, i32* %q, align 4, !tbaa !1, !llfi_index !430
  %45 = sitofp i32 %40 to float, !llfi_index !431
  %46 = sitofp i32 %44 to float, !llfi_index !432
  %47 = fdiv float %45, %46, !llfi_index !433
  %48 = fpext float %47 to double, !llfi_index !434
  %49 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0), i32 %40, double %48) #3, !llfi_index !435
  call void @quantum_frac_approx(i32* %c, i32* %q, i32 %12) #3, !llfi_index !436
  %50 = load i32* %c, align 4, !tbaa !1, !llfi_index !437
  %51 = load i32* %q, align 4, !tbaa !1, !llfi_index !438
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str6, i64 0, i64 0), i32 %50, i32 %51) #3, !llfi_index !439
  %53 = load i32* %q, align 4, !tbaa !1, !llfi_index !440
  %54 = srem i32 %53, 2, !llfi_index !441
  %55 = icmp eq i32 %54, 1, !llfi_index !442
  %56 = shl nsw i32 %53, 1, !llfi_index !443
  %57 = icmp slt i32 %56, %44, !llfi_index !444
  %or.cond11 = and i1 %55, %57, !llfi_index !445
  br i1 %or.cond11, label %58, label %61, !llfi_index !446

; <label>:58                                      ; preds = %43
  %puts5 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str13, i64 0, i64 0)), !llfi_index !447
  %59 = load i32* %q, align 4, !tbaa !1, !llfi_index !448
  %60 = shl nsw i32 %59, 1, !llfi_index !449
  store i32 %60, i32* %q, align 4, !tbaa !1, !llfi_index !450
  br label %61, !llfi_index !451

; <label>:61                                      ; preds = %58, %43
  %62 = phi i32 [ %60, %58 ], [ %53, %43 ], !llfi_index !452
  %63 = srem i32 %62, 2, !llfi_index !453
  %64 = icmp eq i32 %63, 1, !llfi_index !454
  br i1 %64, label %65, label %66, !llfi_index !455

; <label>:65                                      ; preds = %61
  %puts4 = call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str12, i64 0, i64 0)), !llfi_index !456
  call void @exit(i32 2) #8, !llfi_index !457
  unreachable, !llfi_index !458

; <label>:66                                      ; preds = %61
  %67 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str9, i64 0, i64 0), i32 %62) #3, !llfi_index !459
  %68 = load i32* %q, align 4, !tbaa !1, !llfi_index !460
  %69 = sdiv i32 %68, 2, !llfi_index !461
  %70 = call i32 @quantum_ipow(i32 %22, i32 %69) #3, !llfi_index !462
  %71 = srem i32 1, %7, !llfi_index !463
  %72 = add nsw i32 %71, %70, !llfi_index !464
  %73 = load i32* %q, align 4, !tbaa !1, !llfi_index !465
  %74 = sdiv i32 %73, 2, !llfi_index !466
  %75 = call i32 @quantum_ipow(i32 %22, i32 %74) #3, !llfi_index !467
  %76 = sub nsw i32 %75, %71, !llfi_index !468
  %77 = call i32 @quantum_gcd(i32 %7, i32 %72) #3, !llfi_index !469
  %78 = call i32 @quantum_gcd(i32 %7, i32 %76) #3, !llfi_index !470
  %79 = icmp sgt i32 %77, %78, !llfi_index !471
  %. = select i1 %79, i32 %77, i32 %78, !llfi_index !472
  %80 = icmp slt i32 %., %7, !llfi_index !473
  %81 = icmp sgt i32 %., 1, !llfi_index !474
  %or.cond = and i1 %80, %81, !llfi_index !475
  br i1 %or.cond, label %82, label %85, !llfi_index !476

; <label>:82                                      ; preds = %66
  %83 = sdiv i32 %7, %., !llfi_index !477
  %84 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0), i32 %7, i32 %., i32 %83) #3, !llfi_index !478
  call void @quantum_delete_qureg(%struct.quantum_reg_struct* %qr) #3, !llfi_index !479
  br label %86, !llfi_index !480

; <label>:85                                      ; preds = %66
  %puts = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str, i64 0, i64 0)), !llfi_index !481
  call void @exit(i32 0) #8, !llfi_index !482
  unreachable, !llfi_index !483

; <label>:86                                      ; preds = %82, %9, %2
  %.0 = phi i32 [ 3, %2 ], [ 3, %9 ], [ 0, %82 ], !llfi_index !484
  ret i32 %.0, !llfi_index !485
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #3

; Function Attrs: nounwind uwtable
define void @quantum_cnot(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %qec = alloca i32, align 4, !llfi_index !486
  call void @quantum_qec_get_status(i32* %qec, i32* null) #3, !llfi_index !487
  %1 = load i32* %qec, align 4, !tbaa !1, !llfi_index !488
  %2 = icmp eq i32 %1, 0, !llfi_index !489
  br i1 %2, label %4, label %3, !llfi_index !490

; <label>:3                                       ; preds = %0
  call void @quantum_cnot_ft(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #3, !llfi_index !491
  br label %26, !llfi_index !492

; <label>:4                                       ; preds = %0
  %5 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 1, i32 %control, i32 %target) #3, !llfi_index !493
  %6 = icmp eq i32 %5, 0, !llfi_index !494
  br i1 %6, label %.preheader, label %26, !llfi_index !495

.preheader:                                       ; preds = %4
  %7 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !496
  %8 = load i32* %7, align 4, !tbaa !223, !llfi_index !497
  %9 = icmp sgt i32 %8, 0, !llfi_index !498
  br i1 %9, label %.lr.ph, label %._crit_edge, !llfi_index !499

.lr.ph:                                           ; preds = %.preheader
  %10 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !500
  %11 = load %struct.quantum_reg_node_struct** %10, align 8, !tbaa !228, !llfi_index !501
  %12 = zext i32 %control to i64, !llfi_index !502
  %13 = shl i64 1, %12, !llfi_index !503
  %14 = zext i32 %target to i64, !llfi_index !504
  %15 = shl i64 1, %14, !llfi_index !505
  br label %16, !llfi_index !506

; <label>:16                                      ; preds = %23, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %23 ], !llfi_index !507
  %17 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %indvars.iv, i32 1, !llfi_index !508
  %18 = load i64* %17, align 8, !tbaa !249, !llfi_index !509
  %19 = and i64 %18, %13, !llfi_index !510
  %20 = icmp eq i64 %19, 0, !llfi_index !511
  br i1 %20, label %23, label %21, !llfi_index !512

; <label>:21                                      ; preds = %16
  %22 = xor i64 %18, %15, !llfi_index !513
  store i64 %22, i64* %17, align 8, !tbaa !249, !llfi_index !514
  br label %23, !llfi_index !515

; <label>:23                                      ; preds = %21, %16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !516
  %24 = trunc i64 %indvars.iv.next to i32, !llfi_index !517
  %25 = icmp slt i32 %24, %8, !llfi_index !518
  br i1 %25, label %16, label %._crit_edge, !llfi_index !519

._crit_edge:                                      ; preds = %23, %.preheader
  call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !520
  br label %26, !llfi_index !521

; <label>:26                                      ; preds = %._crit_edge, %4, %3
  ret void, !llfi_index !522
}

; Function Attrs: nounwind uwtable
define void @quantum_toffoli(i32 %control1, i32 %control2, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %qec = alloca i32, align 4, !llfi_index !523
  call void @quantum_qec_get_status(i32* %qec, i32* null) #3, !llfi_index !524
  %1 = load i32* %qec, align 4, !tbaa !1, !llfi_index !525
  %2 = icmp eq i32 %1, 0, !llfi_index !526
  br i1 %2, label %4, label %3, !llfi_index !527

; <label>:3                                       ; preds = %0
  call void @quantum_toffoli_ft(i32 %control1, i32 %control2, i32 %target, %struct.quantum_reg_struct* %reg) #3, !llfi_index !528
  br label %29, !llfi_index !529

; <label>:4                                       ; preds = %0
  %5 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 2, i32 %control1, i32 %control2, i32 %target) #3, !llfi_index !530
  %6 = icmp eq i32 %5, 0, !llfi_index !531
  br i1 %6, label %.preheader, label %29, !llfi_index !532

.preheader:                                       ; preds = %4
  %7 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !533
  %8 = load i32* %7, align 4, !tbaa !223, !llfi_index !534
  %9 = icmp sgt i32 %8, 0, !llfi_index !535
  br i1 %9, label %.lr.ph, label %._crit_edge, !llfi_index !536

.lr.ph:                                           ; preds = %.preheader
  %10 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !537
  %11 = load %struct.quantum_reg_node_struct** %10, align 8, !tbaa !228, !llfi_index !538
  %12 = zext i32 %control1 to i64, !llfi_index !539
  %13 = shl i64 1, %12, !llfi_index !540
  %14 = zext i32 %control2 to i64, !llfi_index !541
  %15 = shl i64 1, %14, !llfi_index !542
  %16 = zext i32 %target to i64, !llfi_index !543
  %17 = shl i64 1, %16, !llfi_index !544
  br label %18, !llfi_index !545

; <label>:18                                      ; preds = %26, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %26 ], !llfi_index !546
  %19 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %indvars.iv, i32 1, !llfi_index !547
  %20 = load i64* %19, align 8, !tbaa !249, !llfi_index !548
  %21 = or i64 %13, %15, !llfi_index !549
  %22 = and i64 %20, %21, !llfi_index !550
  %23 = icmp eq i64 %22, %21, !llfi_index !551
  br i1 %23, label %24, label %26, !llfi_index !552

; <label>:24                                      ; preds = %18
  %25 = xor i64 %20, %17, !llfi_index !553
  store i64 %25, i64* %19, align 8, !tbaa !249, !llfi_index !554
  br label %26, !llfi_index !555

; <label>:26                                      ; preds = %24, %18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !556
  %27 = trunc i64 %indvars.iv.next to i32, !llfi_index !557
  %28 = icmp slt i32 %27, %8, !llfi_index !558
  br i1 %28, label %18, label %._crit_edge, !llfi_index !559

._crit_edge:                                      ; preds = %26, %.preheader
  call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !560
  br label %29, !llfi_index !561

; <label>:29                                      ; preds = %._crit_edge, %4, %3
  ret void, !llfi_index !562
}

; Function Attrs: nounwind uwtable
define void @quantum_unbounded_toffoli(i32 %controlling, %struct.quantum_reg_struct* %reg, ...) #0 {
  %bits = alloca [1 x %struct.__va_list_tag], align 16, !llfi_index !563
  %1 = sext i32 %controlling to i64, !llfi_index !564
  %2 = shl nsw i64 %1, 2, !llfi_index !565
  %3 = call noalias i8* @malloc(i64 %2) #3, !llfi_index !566
  %4 = bitcast i8* %3 to i32*, !llfi_index !567
  %5 = icmp eq i8* %3, null, !llfi_index !568
  br i1 %5, label %6, label %8, !llfi_index !569

; <label>:6                                       ; preds = %0
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str, i64 0, i64 0), i32 %controlling) #3, !llfi_index !570
  call void @exit(i32 1) #8, !llfi_index !571
  unreachable, !llfi_index !572

; <label>:8                                       ; preds = %0
  %9 = call i64 @quantum_memman(i64 %2) #3, !llfi_index !573
  %10 = bitcast [1 x %struct.__va_list_tag]* %bits to i8*, !llfi_index !574
  call void @llvm.va_start(i8* %10), !llfi_index !575
  %11 = icmp sgt i32 %controlling, 0, !llfi_index !576
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag]* %bits, i64 0, i64 0, i32 0, !llfi_index !577
  %13 = load i32* %12, align 16, !llfi_index !578
  %14 = icmp ult i32 %13, 41, !llfi_index !579
  br i1 %11, label %.lr.ph10, label %._crit_edge11, !llfi_index !580

.lr.ph10:                                         ; preds = %8
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag]* %bits, i64 0, i64 0, i32 3, !llfi_index !581
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag]* %bits, i64 0, i64 0, i32 2, !llfi_index !582
  br label %17, !llfi_index !583

; <label>:17                                      ; preds = %28, %.lr.ph10
  %indvars.iv17 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next18, %28 ], !llfi_index !584
  %18 = phi i1 [ %14, %.lr.ph10 ], [ %33, %28 ], !llfi_index !585
  %19 = phi i32 [ %13, %.lr.ph10 ], [ %29, %28 ], !llfi_index !586
  br i1 %18, label %20, label %25, !llfi_index !587

; <label>:20                                      ; preds = %17
  %21 = load i8** %15, align 16, !llfi_index !588
  %22 = sext i32 %19 to i64, !llfi_index !589
  %23 = getelementptr i8* %21, i64 %22, !llfi_index !590
  %24 = add i32 %19, 8, !llfi_index !591
  store i32 %24, i32* %12, align 16, !llfi_index !592
  br label %28, !llfi_index !593

; <label>:25                                      ; preds = %17
  %26 = load i8** %16, align 8, !llfi_index !594
  %27 = getelementptr i8* %26, i64 8, !llfi_index !595
  store i8* %27, i8** %16, align 8, !llfi_index !596
  br label %28, !llfi_index !597

; <label>:28                                      ; preds = %25, %20
  %29 = phi i32 [ %24, %20 ], [ %19, %25 ], !llfi_index !598
  %.in1 = phi i8* [ %23, %20 ], [ %26, %25 ], !llfi_index !599
  %30 = bitcast i8* %.in1 to i32*, !llfi_index !600
  %31 = load i32* %30, align 4, !llfi_index !601
  %32 = getelementptr inbounds i32* %4, i64 %indvars.iv17, !llfi_index !602
  store i32 %31, i32* %32, align 4, !tbaa !1, !llfi_index !603
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !llfi_index !604
  %33 = icmp ult i32 %29, 41, !llfi_index !605
  %lftr.wideiv = trunc i64 %indvars.iv.next18 to i32, !llfi_index !606
  %exitcond = icmp eq i32 %lftr.wideiv, %controlling, !llfi_index !607
  br i1 %exitcond, label %._crit_edge11, label %17, !llfi_index !608

._crit_edge11:                                    ; preds = %28, %8
  %.lcssa7 = phi i1 [ %14, %8 ], [ %33, %28 ], !llfi_index !609
  %.lcssa6 = phi i32 [ %13, %8 ], [ %29, %28 ], !llfi_index !610
  br i1 %.lcssa7, label %34, label %40, !llfi_index !611

; <label>:34                                      ; preds = %._crit_edge11
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag]* %bits, i64 0, i64 0, i32 3, !llfi_index !612
  %36 = load i8** %35, align 16, !llfi_index !613
  %37 = sext i32 %.lcssa6 to i64, !llfi_index !614
  %38 = getelementptr i8* %36, i64 %37, !llfi_index !615
  %39 = add i32 %.lcssa6, 8, !llfi_index !616
  store i32 %39, i32* %12, align 16, !llfi_index !617
  br label %44, !llfi_index !618

; <label>:40                                      ; preds = %._crit_edge11
  %41 = getelementptr inbounds [1 x %struct.__va_list_tag]* %bits, i64 0, i64 0, i32 2, !llfi_index !619
  %42 = load i8** %41, align 8, !llfi_index !620
  %43 = getelementptr i8* %42, i64 8, !llfi_index !621
  store i8* %43, i8** %41, align 8, !llfi_index !622
  br label %44, !llfi_index !623

; <label>:44                                      ; preds = %40, %34
  %.in = phi i8* [ %38, %34 ], [ %42, %40 ], !llfi_index !624
  %45 = bitcast i8* %.in to i32*, !llfi_index !625
  %46 = load i32* %45, align 4, !llfi_index !626
  call void @llvm.va_end(i8* %10), !llfi_index !627
  %47 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !628
  %48 = load i32* %47, align 4, !tbaa !223, !llfi_index !629
  %49 = icmp sgt i32 %48, 0, !llfi_index !630
  br i1 %49, label %.preheader.lr.ph, label %._crit_edge5, !llfi_index !631

.preheader.lr.ph:                                 ; preds = %44
  %50 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !632
  %51 = zext i32 %46 to i64, !llfi_index !633
  %52 = shl i64 1, %51, !llfi_index !634
  br i1 %11, label %.lr.ph.us, label %.preheader, !llfi_index !635

; <label>:53                                      ; preds = %56
  %54 = trunc i64 %indvars.iv.next23 to i32, !llfi_index !636
  %55 = icmp slt i32 %54, %controlling, !llfi_index !637
  br i1 %55, label %56, label %._crit_edge.us, !llfi_index !638

; <label>:56                                      ; preds = %.lr.ph.us, %53
  %indvars.iv22 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next23, %53 ], !llfi_index !639
  %j.02.us = phi i32 [ 0, %.lr.ph.us ], [ %63, %53 ], !llfi_index !640
  %57 = getelementptr inbounds i32* %4, i64 %indvars.iv22, !llfi_index !641
  %58 = load i32* %57, align 4, !tbaa !1, !llfi_index !642
  %59 = zext i32 %58 to i64, !llfi_index !643
  %60 = shl i64 1, %59, !llfi_index !644
  %61 = and i64 %60, %75, !llfi_index !645
  %62 = icmp eq i64 %61, 0, !llfi_index !646
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !llfi_index !647
  %63 = add nsw i32 %j.02.us, 1, !llfi_index !648
  br i1 %62, label %._crit_edge.us, label %53, !llfi_index !649

._crit_edge.us:                                   ; preds = %56, %53
  %j.0.lcssa.us = phi i32 [ %63, %53 ], [ %j.02.us, %56 ], !llfi_index !650
  %64 = icmp eq i32 %j.0.lcssa.us, %controlling, !llfi_index !651
  br i1 %64, label %65, label %70, !llfi_index !652

; <label>:65                                      ; preds = %._crit_edge.us
  %66 = load %struct.quantum_reg_node_struct** %50, align 8, !tbaa !228, !llfi_index !653
  %67 = getelementptr inbounds %struct.quantum_reg_node_struct* %66, i64 %indvars.iv24, i32 1, !llfi_index !654
  %68 = load i64* %67, align 8, !tbaa !249, !llfi_index !655
  %69 = xor i64 %68, %52, !llfi_index !656
  store i64 %69, i64* %67, align 8, !tbaa !249, !llfi_index !657
  br label %70, !llfi_index !658

; <label>:70                                      ; preds = %65, %._crit_edge.us
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1, !llfi_index !659
  %71 = trunc i64 %indvars.iv.next25 to i32, !llfi_index !660
  %72 = icmp slt i32 %71, %48, !llfi_index !661
  br i1 %72, label %.lr.ph.us, label %._crit_edge5, !llfi_index !662

.lr.ph.us:                                        ; preds = %70, %.preheader.lr.ph
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %70 ], [ 0, %.preheader.lr.ph ], !llfi_index !663
  %73 = load %struct.quantum_reg_node_struct** %50, align 8, !tbaa !228, !llfi_index !664
  %74 = getelementptr inbounds %struct.quantum_reg_node_struct* %73, i64 %indvars.iv24, i32 1, !llfi_index !665
  %75 = load i64* %74, align 8, !tbaa !249, !llfi_index !666
  br label %56, !llfi_index !667

.preheader:                                       ; preds = %82, %.preheader.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %82 ], [ 0, %.preheader.lr.ph ], !llfi_index !668
  %76 = icmp eq i32 %controlling, 0, !llfi_index !669
  br i1 %76, label %77, label %82, !llfi_index !670

; <label>:77                                      ; preds = %.preheader
  %78 = load %struct.quantum_reg_node_struct** %50, align 8, !tbaa !228, !llfi_index !671
  %79 = getelementptr inbounds %struct.quantum_reg_node_struct* %78, i64 %indvars.iv, i32 1, !llfi_index !672
  %80 = load i64* %79, align 8, !tbaa !249, !llfi_index !673
  %81 = xor i64 %80, %52, !llfi_index !674
  store i64 %81, i64* %79, align 8, !tbaa !249, !llfi_index !675
  br label %82, !llfi_index !676

; <label>:82                                      ; preds = %77, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !677
  %83 = trunc i64 %indvars.iv.next to i32, !llfi_index !678
  %84 = icmp slt i32 %83, %48, !llfi_index !679
  br i1 %84, label %.preheader, label %._crit_edge5, !llfi_index !680

._crit_edge5:                                     ; preds = %82, %70, %44
  call void @free(i8* %3) #3, !llfi_index !681
  %85 = sub nsw i32 0, %controlling, !llfi_index !682
  %86 = sext i32 %85 to i64, !llfi_index !683
  %87 = shl nsw i64 %86, 2, !llfi_index !684
  %88 = call i64 @quantum_memman(i64 %87) #3, !llfi_index !685
  call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !686
  ret void, !llfi_index !687
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @quantum_sigma_x(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %qec = alloca i32, align 4, !llfi_index !688
  call void @quantum_qec_get_status(i32* %qec, i32* null) #3, !llfi_index !689
  %1 = load i32* %qec, align 4, !tbaa !1, !llfi_index !690
  %2 = icmp eq i32 %1, 0, !llfi_index !691
  br i1 %2, label %4, label %3, !llfi_index !692

; <label>:3                                       ; preds = %0
  call void @quantum_sigma_x_ft(i32 %target, %struct.quantum_reg_struct* %reg) #3, !llfi_index !693
  br label %20, !llfi_index !694

; <label>:4                                       ; preds = %0
  %5 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 3, i32 %target) #3, !llfi_index !695
  %6 = icmp eq i32 %5, 0, !llfi_index !696
  br i1 %6, label %.preheader, label %20, !llfi_index !697

.preheader:                                       ; preds = %4
  %7 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !698
  %8 = load i32* %7, align 4, !tbaa !223, !llfi_index !699
  %9 = icmp sgt i32 %8, 0, !llfi_index !700
  br i1 %9, label %.lr.ph, label %._crit_edge, !llfi_index !701

.lr.ph:                                           ; preds = %.preheader
  %10 = zext i32 %target to i64, !llfi_index !702
  %11 = shl i64 1, %10, !llfi_index !703
  %12 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !704
  %13 = load %struct.quantum_reg_node_struct** %12, align 8, !tbaa !228, !llfi_index !705
  br label %14, !llfi_index !706

; <label>:14                                      ; preds = %14, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %14 ], !llfi_index !707
  %15 = getelementptr inbounds %struct.quantum_reg_node_struct* %13, i64 %indvars.iv, i32 1, !llfi_index !708
  %16 = load i64* %15, align 8, !tbaa !249, !llfi_index !709
  %17 = xor i64 %16, %11, !llfi_index !710
  store i64 %17, i64* %15, align 8, !tbaa !249, !llfi_index !711
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !712
  %18 = trunc i64 %indvars.iv.next to i32, !llfi_index !713
  %19 = icmp slt i32 %18, %8, !llfi_index !714
  br i1 %19, label %14, label %._crit_edge, !llfi_index !715

._crit_edge:                                      ; preds = %14, %.preheader
  call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !716
  br label %20, !llfi_index !717

; <label>:20                                      ; preds = %._crit_edge, %4, %3
  ret void, !llfi_index !718
}

; Function Attrs: nounwind uwtable
define void @quantum_sigma_y(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %1 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 4, i32 %target) #3, !llfi_index !719
  %2 = icmp eq i32 %1, 0, !llfi_index !720
  br i1 %2, label %.preheader, label %36, !llfi_index !721

.preheader:                                       ; preds = %0
  %3 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !722
  %4 = load i32* %3, align 4, !tbaa !223, !llfi_index !723
  %5 = icmp sgt i32 %4, 0, !llfi_index !724
  br i1 %5, label %.lr.ph, label %._crit_edge, !llfi_index !725

.lr.ph:                                           ; preds = %.preheader
  %6 = zext i32 %target to i64, !llfi_index !726
  %7 = shl i64 1, %6, !llfi_index !727
  %8 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !728
  br label %9, !llfi_index !729

; <label>:9                                       ; preds = %32, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %32 ], !llfi_index !730
  %10 = load %struct.quantum_reg_node_struct** %8, align 8, !tbaa !228, !llfi_index !731
  %11 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv, i32 1, !llfi_index !732
  %12 = load i64* %11, align 8, !tbaa !249, !llfi_index !733
  %13 = xor i64 %12, %7, !llfi_index !734
  store i64 %13, i64* %11, align 8, !tbaa !249, !llfi_index !735
  %14 = and i64 %13, %7, !llfi_index !736
  %15 = icmp eq i64 %14, 0, !llfi_index !737
  %16 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv, i32 0, i32 0, !llfi_index !738
  %17 = load float* %16, align 4, !llfi_index !739
  %18 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv, i32 0, i32 1, !llfi_index !740
  %19 = load float* %18, align 4, !llfi_index !741
  br i1 %15, label %25, label %20, !llfi_index !742

; <label>:20                                      ; preds = %9
  %21 = fmul float %17, 0.000000e+00, !llfi_index !743
  %22 = fsub float %21, %19, !llfi_index !744
  %23 = fmul float %19, 0.000000e+00, !llfi_index !745
  %24 = fadd float %17, %23, !llfi_index !746
  br label %32, !llfi_index !747

; <label>:25                                      ; preds = %9
  %26 = fmul float %17, -0.000000e+00, !llfi_index !748
  %27 = fmul float %19, -1.000000e+00, !llfi_index !749
  %28 = fsub float %26, %27, !llfi_index !750
  %29 = fmul float %19, -0.000000e+00, !llfi_index !751
  %30 = fmul float %17, -1.000000e+00, !llfi_index !752
  %31 = fadd float %30, %29, !llfi_index !753
  br label %32, !llfi_index !754

; <label>:32                                      ; preds = %25, %20
  %storemerge1 = phi float [ %22, %20 ], [ %28, %25 ], !llfi_index !755
  %storemerge = phi float [ %24, %20 ], [ %31, %25 ], !llfi_index !756
  store float %storemerge1, float* %16, align 4, !llfi_index !757
  store float %storemerge, float* %18, align 4, !llfi_index !758
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !759
  %33 = load i32* %3, align 4, !tbaa !223, !llfi_index !760
  %34 = trunc i64 %indvars.iv.next to i32, !llfi_index !761
  %35 = icmp slt i32 %34, %33, !llfi_index !762
  br i1 %35, label %9, label %._crit_edge, !llfi_index !763

._crit_edge:                                      ; preds = %32, %.preheader
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !764
  br label %36, !llfi_index !765

; <label>:36                                      ; preds = %._crit_edge, %0
  ret void, !llfi_index !766
}

; Function Attrs: nounwind uwtable
define void @quantum_sigma_z(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %1 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 5, i32 %target) #3, !llfi_index !767
  %2 = icmp eq i32 %1, 0, !llfi_index !768
  br i1 %2, label %.preheader, label %31, !llfi_index !769

.preheader:                                       ; preds = %0
  %3 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !770
  %4 = load i32* %3, align 4, !tbaa !223, !llfi_index !771
  %5 = icmp sgt i32 %4, 0, !llfi_index !772
  br i1 %5, label %.lr.ph, label %._crit_edge, !llfi_index !773

.lr.ph:                                           ; preds = %.preheader
  %6 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !774
  %7 = zext i32 %target to i64, !llfi_index !775
  %8 = shl i64 1, %7, !llfi_index !776
  br label %9, !llfi_index !777

; <label>:9                                       ; preds = %27, %.lr.ph
  %10 = phi i32 [ %4, %.lr.ph ], [ %28, %27 ], !llfi_index !778
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %27 ], !llfi_index !779
  %11 = load %struct.quantum_reg_node_struct** %6, align 8, !tbaa !228, !llfi_index !780
  %12 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %indvars.iv, i32 1, !llfi_index !781
  %13 = load i64* %12, align 8, !tbaa !249, !llfi_index !782
  %14 = and i64 %13, %8, !llfi_index !783
  %15 = icmp eq i64 %14, 0, !llfi_index !784
  br i1 %15, label %27, label %16, !llfi_index !785

; <label>:16                                      ; preds = %9
  %17 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %indvars.iv, i32 0, i32 0, !llfi_index !786
  %18 = load float* %17, align 4, !llfi_index !787
  %19 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %indvars.iv, i32 0, i32 1, !llfi_index !788
  %20 = load float* %19, align 4, !llfi_index !789
  %21 = fmul float %18, -1.000000e+00, !llfi_index !790
  %22 = fmul float %20, 0.000000e+00, !llfi_index !791
  %23 = fsub float %21, %22, !llfi_index !792
  %24 = fmul float %20, -1.000000e+00, !llfi_index !793
  %25 = fmul float %18, 0.000000e+00, !llfi_index !794
  %26 = fadd float %25, %24, !llfi_index !795
  store float %23, float* %17, align 4, !llfi_index !796
  store float %26, float* %19, align 4, !llfi_index !797
  %.pre = load i32* %3, align 4, !tbaa !223, !llfi_index !798
  br label %27, !llfi_index !799

; <label>:27                                      ; preds = %16, %9
  %28 = phi i32 [ %10, %9 ], [ %.pre, %16 ], !llfi_index !800
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !801
  %29 = trunc i64 %indvars.iv.next to i32, !llfi_index !802
  %30 = icmp slt i32 %29, %28, !llfi_index !803
  br i1 %30, label %9, label %._crit_edge, !llfi_index !804

._crit_edge:                                      ; preds = %27, %.preheader
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !805
  br label %31, !llfi_index !806

; <label>:31                                      ; preds = %._crit_edge, %0
  ret void, !llfi_index !807
}

; Function Attrs: nounwind uwtable
define void @quantum_swaptheleads(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %qec.i8 = alloca i32, align 4, !llfi_index !808
  %qec.i1 = alloca i32, align 4, !llfi_index !809
  %qec.i = alloca i32, align 4, !llfi_index !810
  %qec = alloca i32, align 4, !llfi_index !811
  call void @quantum_qec_get_status(i32* %qec, i32* null) #3, !llfi_index !812
  %1 = load i32* %qec, align 4, !tbaa !1, !llfi_index !813
  %2 = icmp eq i32 %1, 0, !llfi_index !814
  br i1 %2, label %.preheader, label %.preheader22, !llfi_index !815

.preheader22:                                     ; preds = %0
  %3 = icmp sgt i32 %width, 0, !llfi_index !816
  br i1 %3, label %.lr.ph25, label %.loopexit, !llfi_index !817

.lr.ph25:                                         ; preds = %.preheader22
  %4 = bitcast i32* %qec.i to i8*, !llfi_index !818
  %5 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !819
  %6 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !820
  %7 = bitcast i32* %qec.i1 to i8*, !llfi_index !821
  %8 = bitcast i32* %qec.i8 to i8*, !llfi_index !822
  br label %46, !llfi_index !823

.preheader:                                       ; preds = %0
  %9 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !824
  %10 = load i32* %9, align 4, !tbaa !223, !llfi_index !825
  %11 = icmp sgt i32 %10, 0, !llfi_index !826
  br i1 %11, label %.lr.ph21, label %.loopexit, !llfi_index !827

.lr.ph21:                                         ; preds = %.preheader
  %12 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !828
  %13 = zext i32 %width to i64, !llfi_index !829
  %14 = shl nuw i64 1, %13, !llfi_index !830
  %15 = add i64 %14, 4294967295, !llfi_index !831
  %16 = icmp sgt i32 %width, 0, !llfi_index !832
  br i1 %16, label %.lr.ph21.split.us, label %.lr.ph21..lr.ph21.split_crit_edge, !llfi_index !833

.lr.ph21.split.us:                                ; preds = %19, %.lr.ph21
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %19 ], [ 0, %.lr.ph21 ], !llfi_index !834
  %17 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 14, i32 %width) #3, !llfi_index !835
  %18 = icmp eq i32 %17, 0, !llfi_index !836
  br i1 %18, label %.lr.ph.us, label %.loopexit, !llfi_index !837

; <label>:19                                      ; preds = %33
  %20 = trunc i64 %40 to i32, !llfi_index !838
  %21 = add i64 %40, %44, !llfi_index !839
  %sext41 = shl i64 %21, 32, !llfi_index !840
  %22 = ashr exact i64 %sext41, 32, !llfi_index !841
  %23 = shl i32 %45, %width, !llfi_index !842
  %24 = sext i32 %23 to i64, !llfi_index !843
  %25 = ashr i32 %20, %width, !llfi_index !844
  %26 = sext i32 %25 to i64, !llfi_index !845
  %27 = sub i64 %24, %22, !llfi_index !846
  %28 = add i64 %27, %43, !llfi_index !847
  %29 = add i64 %28, %26, !llfi_index !848
  store i64 %29, i64* %42, align 8, !tbaa !249, !llfi_index !849
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1, !llfi_index !850
  %30 = load i32* %9, align 4, !tbaa !223, !llfi_index !851
  %31 = trunc i64 %indvars.iv.next40 to i32, !llfi_index !852
  %32 = icmp slt i32 %31, %30, !llfi_index !853
  br i1 %32, label %.lr.ph21.split.us, label %.loopexit, !llfi_index !854

; <label>:33                                      ; preds = %.lr.ph.us, %33
  %indvars.iv35 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next36, %33 ], !llfi_index !855
  %pat2.017.us = phi i64 [ 0, %.lr.ph.us ], [ %40, %33 ], !llfi_index !856
  %34 = trunc i64 %indvars.iv35 to i32, !llfi_index !857
  %35 = add nsw i32 %34, %width, !llfi_index !858
  %36 = zext i32 %35 to i64, !llfi_index !859
  %37 = shl i64 1, %36, !llfi_index !860
  %38 = and i64 %43, %37, !llfi_index !861
  %39 = and i64 %pat2.017.us, 4294967295, !llfi_index !862
  %40 = add i64 %38, %39, !llfi_index !863
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1, !llfi_index !864
  %lftr.wideiv37 = trunc i64 %indvars.iv.next36 to i32, !llfi_index !865
  %exitcond38 = icmp eq i32 %lftr.wideiv37, %width, !llfi_index !866
  br i1 %exitcond38, label %19, label %33, !llfi_index !867

.lr.ph.us:                                        ; preds = %.lr.ph21.split.us
  %41 = load %struct.quantum_reg_node_struct** %12, align 8, !tbaa !228, !llfi_index !868
  %42 = getelementptr inbounds %struct.quantum_reg_node_struct* %41, i64 %indvars.iv39, i32 1, !llfi_index !869
  %43 = load i64* %42, align 8, !tbaa !249, !llfi_index !870
  %44 = and i64 %43, %15, !llfi_index !871
  %45 = trunc i64 %44 to i32, !llfi_index !872
  br label %33, !llfi_index !873

; <label>:46                                      ; preds = %quantum_cnot.exit14, %.lr.ph25
  %indvars.iv30 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next31, %quantum_cnot.exit14 ], !llfi_index !874
  %47 = trunc i64 %indvars.iv30 to i32, !llfi_index !875
  %48 = add nsw i32 %47, %width, !llfi_index !876
  call void @llvm.lifetime.start(i64 4, i8* %4) #3, !llfi_index !877
  call void @quantum_qec_get_status(i32* %qec.i, i32* null) #3, !llfi_index !878
  %49 = load i32* %qec.i, align 4, !tbaa !1, !llfi_index !879
  %50 = icmp eq i32 %49, 0, !llfi_index !880
  br i1 %50, label %52, label %51, !llfi_index !881

; <label>:51                                      ; preds = %46
  call void @quantum_cnot_ft(i32 %47, i32 %48, %struct.quantum_reg_struct* %reg) #3, !llfi_index !882
  br label %quantum_cnot.exit, !llfi_index !883

; <label>:52                                      ; preds = %46
  %53 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 1, i32 %47, i32 %48) #3, !llfi_index !884
  %54 = icmp eq i32 %53, 0, !llfi_index !885
  br i1 %54, label %.preheader.i, label %quantum_cnot.exit, !llfi_index !886

.preheader.i:                                     ; preds = %52
  %55 = load i32* %5, align 4, !tbaa !223, !llfi_index !887
  %56 = icmp sgt i32 %55, 0, !llfi_index !888
  br i1 %56, label %.lr.ph.i, label %._crit_edge.i, !llfi_index !889

.lr.ph.i:                                         ; preds = %.preheader.i
  %57 = load %struct.quantum_reg_node_struct** %6, align 8, !tbaa !228, !llfi_index !890
  %58 = shl i64 1, %indvars.iv30, !llfi_index !891
  %59 = zext i32 %48 to i64, !llfi_index !892
  %60 = shl i64 1, %59, !llfi_index !893
  br label %61, !llfi_index !894

; <label>:61                                      ; preds = %68, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %68 ], !llfi_index !895
  %62 = getelementptr inbounds %struct.quantum_reg_node_struct* %57, i64 %indvars.iv.i, i32 1, !llfi_index !896
  %63 = load i64* %62, align 8, !tbaa !249, !llfi_index !897
  %64 = and i64 %63, %58, !llfi_index !898
  %65 = icmp eq i64 %64, 0, !llfi_index !899
  br i1 %65, label %68, label %66, !llfi_index !900

; <label>:66                                      ; preds = %61
  %67 = xor i64 %63, %60, !llfi_index !901
  store i64 %67, i64* %62, align 8, !tbaa !249, !llfi_index !902
  br label %68, !llfi_index !903

; <label>:68                                      ; preds = %66, %61
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !llfi_index !904
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !llfi_index !905
  %exitcond = icmp eq i32 %lftr.wideiv, %55, !llfi_index !906
  br i1 %exitcond, label %._crit_edge.i, label %61, !llfi_index !907

._crit_edge.i:                                    ; preds = %68, %.preheader.i
  call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !908
  br label %quantum_cnot.exit, !llfi_index !909

quantum_cnot.exit:                                ; preds = %._crit_edge.i, %52, %51
  call void @llvm.lifetime.end(i64 4, i8* %4) #3, !llfi_index !910
  call void @llvm.lifetime.start(i64 4, i8* %7) #3, !llfi_index !911
  call void @quantum_qec_get_status(i32* %qec.i1, i32* null) #3, !llfi_index !912
  %69 = load i32* %qec.i1, align 4, !tbaa !1, !llfi_index !913
  %70 = icmp eq i32 %69, 0, !llfi_index !914
  br i1 %70, label %72, label %71, !llfi_index !915

; <label>:71                                      ; preds = %quantum_cnot.exit
  call void @quantum_cnot_ft(i32 %48, i32 %47, %struct.quantum_reg_struct* %reg) #3, !llfi_index !916
  br label %quantum_cnot.exit7, !llfi_index !917

; <label>:72                                      ; preds = %quantum_cnot.exit
  %73 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 1, i32 %48, i32 %47) #3, !llfi_index !918
  %74 = icmp eq i32 %73, 0, !llfi_index !919
  br i1 %74, label %.preheader.i2, label %quantum_cnot.exit7, !llfi_index !920

.preheader.i2:                                    ; preds = %72
  %75 = load i32* %5, align 4, !tbaa !223, !llfi_index !921
  %76 = icmp sgt i32 %75, 0, !llfi_index !922
  br i1 %76, label %.lr.ph.i3, label %._crit_edge.i6, !llfi_index !923

.lr.ph.i3:                                        ; preds = %.preheader.i2
  %77 = load %struct.quantum_reg_node_struct** %6, align 8, !tbaa !228, !llfi_index !924
  %78 = zext i32 %48 to i64, !llfi_index !925
  %79 = shl i64 1, %78, !llfi_index !926
  %80 = shl i64 1, %indvars.iv30, !llfi_index !927
  br label %81, !llfi_index !928

; <label>:81                                      ; preds = %88, %.lr.ph.i3
  %indvars.iv.i4 = phi i64 [ 0, %.lr.ph.i3 ], [ %indvars.iv.next.i5, %88 ], !llfi_index !929
  %82 = getelementptr inbounds %struct.quantum_reg_node_struct* %77, i64 %indvars.iv.i4, i32 1, !llfi_index !930
  %83 = load i64* %82, align 8, !tbaa !249, !llfi_index !931
  %84 = and i64 %83, %79, !llfi_index !932
  %85 = icmp eq i64 %84, 0, !llfi_index !933
  br i1 %85, label %88, label %86, !llfi_index !934

; <label>:86                                      ; preds = %81
  %87 = xor i64 %83, %80, !llfi_index !935
  store i64 %87, i64* %82, align 8, !tbaa !249, !llfi_index !936
  br label %88, !llfi_index !937

; <label>:88                                      ; preds = %86, %81
  %indvars.iv.next.i5 = add nuw nsw i64 %indvars.iv.i4, 1, !llfi_index !938
  %lftr.wideiv26 = trunc i64 %indvars.iv.next.i5 to i32, !llfi_index !939
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %75, !llfi_index !940
  br i1 %exitcond27, label %._crit_edge.i6, label %81, !llfi_index !941

._crit_edge.i6:                                   ; preds = %88, %.preheader.i2
  call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !942
  br label %quantum_cnot.exit7, !llfi_index !943

quantum_cnot.exit7:                               ; preds = %._crit_edge.i6, %72, %71
  call void @llvm.lifetime.end(i64 4, i8* %7) #3, !llfi_index !944
  call void @llvm.lifetime.start(i64 4, i8* %8) #3, !llfi_index !945
  call void @quantum_qec_get_status(i32* %qec.i8, i32* null) #3, !llfi_index !946
  %89 = load i32* %qec.i8, align 4, !tbaa !1, !llfi_index !947
  %90 = icmp eq i32 %89, 0, !llfi_index !948
  br i1 %90, label %92, label %91, !llfi_index !949

; <label>:91                                      ; preds = %quantum_cnot.exit7
  call void @quantum_cnot_ft(i32 %47, i32 %48, %struct.quantum_reg_struct* %reg) #3, !llfi_index !950
  br label %quantum_cnot.exit14, !llfi_index !951

; <label>:92                                      ; preds = %quantum_cnot.exit7
  %93 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 1, i32 %47, i32 %48) #3, !llfi_index !952
  %94 = icmp eq i32 %93, 0, !llfi_index !953
  br i1 %94, label %.preheader.i9, label %quantum_cnot.exit14, !llfi_index !954

.preheader.i9:                                    ; preds = %92
  %95 = load i32* %5, align 4, !tbaa !223, !llfi_index !955
  %96 = icmp sgt i32 %95, 0, !llfi_index !956
  br i1 %96, label %.lr.ph.i10, label %._crit_edge.i13, !llfi_index !957

.lr.ph.i10:                                       ; preds = %.preheader.i9
  %97 = load %struct.quantum_reg_node_struct** %6, align 8, !tbaa !228, !llfi_index !958
  %98 = shl i64 1, %indvars.iv30, !llfi_index !959
  %99 = zext i32 %48 to i64, !llfi_index !960
  %100 = shl i64 1, %99, !llfi_index !961
  br label %101, !llfi_index !962

; <label>:101                                     ; preds = %108, %.lr.ph.i10
  %indvars.iv.i11 = phi i64 [ 0, %.lr.ph.i10 ], [ %indvars.iv.next.i12, %108 ], !llfi_index !963
  %102 = getelementptr inbounds %struct.quantum_reg_node_struct* %97, i64 %indvars.iv.i11, i32 1, !llfi_index !964
  %103 = load i64* %102, align 8, !tbaa !249, !llfi_index !965
  %104 = and i64 %103, %98, !llfi_index !966
  %105 = icmp eq i64 %104, 0, !llfi_index !967
  br i1 %105, label %108, label %106, !llfi_index !968

; <label>:106                                     ; preds = %101
  %107 = xor i64 %103, %100, !llfi_index !969
  store i64 %107, i64* %102, align 8, !tbaa !249, !llfi_index !970
  br label %108, !llfi_index !971

; <label>:108                                     ; preds = %106, %101
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i11, 1, !llfi_index !972
  %lftr.wideiv28 = trunc i64 %indvars.iv.next.i12 to i32, !llfi_index !973
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %95, !llfi_index !974
  br i1 %exitcond29, label %._crit_edge.i13, label %101, !llfi_index !975

._crit_edge.i13:                                  ; preds = %108, %.preheader.i9
  call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !976
  br label %quantum_cnot.exit14, !llfi_index !977

quantum_cnot.exit14:                              ; preds = %._crit_edge.i13, %92, %91
  call void @llvm.lifetime.end(i64 4, i8* %8) #3, !llfi_index !978
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1, !llfi_index !979
  %lftr.wideiv32 = trunc i64 %indvars.iv.next31 to i32, !llfi_index !980
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %width, !llfi_index !981
  br i1 %exitcond33, label %.loopexit, label %46, !llfi_index !982

.lr.ph21..lr.ph21.split_crit_edge:                ; preds = %111, %.lr.ph21
  %indvars.iv = phi i64 [ %indvars.iv.next, %111 ], [ 0, %.lr.ph21 ], !llfi_index !983
  %109 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 14, i32 %width) #3, !llfi_index !984
  %110 = icmp eq i32 %109, 0, !llfi_index !985
  br i1 %110, label %111, label %.loopexit, !llfi_index !986

; <label>:111                                     ; preds = %.lr.ph21..lr.ph21.split_crit_edge
  %112 = load %struct.quantum_reg_node_struct** %12, align 8, !tbaa !228, !llfi_index !987
  %113 = getelementptr inbounds %struct.quantum_reg_node_struct* %112, i64 %indvars.iv, i32 1, !llfi_index !988
  %114 = load i64* %113, align 8, !tbaa !249, !llfi_index !989
  %115 = and i64 %114, %15, !llfi_index !990
  %116 = trunc i64 %115 to i32, !llfi_index !991
  %sext = shl i64 %115, 32, !llfi_index !992
  %117 = ashr exact i64 %sext, 32, !llfi_index !993
  %118 = shl i32 %116, %width, !llfi_index !994
  %119 = sext i32 %118 to i64, !llfi_index !995
  %120 = sub i64 %119, %117, !llfi_index !996
  %121 = add i64 %120, %114, !llfi_index !997
  store i64 %121, i64* %113, align 8, !tbaa !249, !llfi_index !998
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !999
  %122 = load i32* %9, align 4, !tbaa !223, !llfi_index !1000
  %123 = trunc i64 %indvars.iv.next to i32, !llfi_index !1001
  %124 = icmp slt i32 %123, %122, !llfi_index !1002
  br i1 %124, label %.lr.ph21..lr.ph21.split_crit_edge, label %.loopexit, !llfi_index !1003

.loopexit:                                        ; preds = %111, %.lr.ph21..lr.ph21.split_crit_edge, %quantum_cnot.exit14, %19, %.lr.ph21.split.us, %.preheader, %.preheader22
  ret void, !llfi_index !1004
}

; Function Attrs: nounwind uwtable
define void @quantum_swaptheleads_omuln_controlled(i32 %control, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = icmp sgt i32 %width, 0, !llfi_index !1005
  br i1 %1, label %.lr.ph, label %._crit_edge, !llfi_index !1006

.lr.ph:                                           ; preds = %0
  %2 = shl i32 %width, 1, !llfi_index !1007
  %3 = add i32 %2, 2, !llfi_index !1008
  br label %4, !llfi_index !1009

; <label>:4                                       ; preds = %4, %.lr.ph
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %7, %4 ], !llfi_index !1010
  %5 = add nsw i32 %i.01, %width, !llfi_index !1011
  %6 = add i32 %3, %i.01, !llfi_index !1012
  tail call void @quantum_toffoli(i32 %control, i32 %5, i32 %6, %struct.quantum_reg_struct* %reg), !llfi_index !1013
  tail call void @quantum_toffoli(i32 %control, i32 %6, i32 %5, %struct.quantum_reg_struct* %reg), !llfi_index !1014
  tail call void @quantum_toffoli(i32 %control, i32 %5, i32 %6, %struct.quantum_reg_struct* %reg), !llfi_index !1015
  %7 = add nsw i32 %i.01, 1, !llfi_index !1016
  %exitcond = icmp eq i32 %7, %width, !llfi_index !1017
  br i1 %exitcond, label %._crit_edge, label %4, !llfi_index !1018

._crit_edge:                                      ; preds = %4, %0
  ret void, !llfi_index !1019
}

; Function Attrs: nounwind uwtable
define void @quantum_gate1(i32 %target, i64 %m.coerce0, { float, float }* %m.coerce1, %struct.quantum_reg_struct* %reg) #0 {
  %1 = icmp eq i64 %m.coerce0, 8589934594, !llfi_index !1020
  br i1 %1, label %.preheader64, label %7, !llfi_index !1021

.preheader64:                                     ; preds = %0
  %2 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !1022
  %3 = load i32* %2, align 4, !tbaa !1023, !llfi_index !1024
  %4 = icmp eq i32 %3, 31, !llfi_index !1025
  br i1 %4, label %.preheader59, label %.lr.ph67, !llfi_index !1026

.lr.ph67:                                         ; preds = %.preheader64
  %5 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !1027
  %6 = load i32** %5, align 8, !tbaa !1028, !llfi_index !1029
  br label %16, !llfi_index !1030

; <label>:7                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str2, i64 0, i64 0)), !llfi_index !1031
  tail call void @exit(i32 1) #8, !llfi_index !1032
  unreachable, !llfi_index !1033

.preheader59:                                     ; preds = %16, %.preheader64
  %8 = phi i32 [ 31, %.preheader64 ], [ %18, %16 ], !llfi_index !1034
  %9 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !1035
  %10 = load i32* %9, align 4, !tbaa !223, !llfi_index !1036
  %11 = icmp sgt i32 %10, 0, !llfi_index !1037
  br i1 %11, label %.lr.ph62, label %.preheader._crit_edge, !llfi_index !1038

.lr.ph62:                                         ; preds = %.preheader59
  %12 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !1039
  %13 = load %struct.quantum_reg_node_struct** %12, align 8, !tbaa !228, !llfi_index !1040
  %14 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !1041
  %15 = load i32** %14, align 8, !tbaa !1028, !llfi_index !1042
  br label %37, !llfi_index !1043

; <label>:16                                      ; preds = %16, %.lr.ph67
  %indvars.iv84 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next85, %16 ], !llfi_index !1044
  %17 = getelementptr inbounds i32* %6, i64 %indvars.iv84, !llfi_index !1045
  store i32 0, i32* %17, align 4, !tbaa !1, !llfi_index !1046
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1, !llfi_index !1047
  %18 = load i32* %2, align 4, !tbaa !1023, !llfi_index !1048
  %19 = shl i32 1, %18, !llfi_index !1049
  %20 = trunc i64 %indvars.iv.next85 to i32, !llfi_index !1050
  %21 = icmp slt i32 %20, %19, !llfi_index !1051
  br i1 %21, label %16, label %.preheader59, !llfi_index !1052

.preheader:                                       ; preds = %quantum_add_hash.exit
  %22 = icmp sgt i32 %60, 0, !llfi_index !1053
  br i1 %22, label %.lr.ph54, label %.preheader._crit_edge, !llfi_index !1054

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader59
  %23 = phi i32 [ %60, %.preheader ], [ %10, %.preheader59 ], !llfi_index !1055
  %.phi.trans.insert = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !1056
  %.pre = load %struct.quantum_reg_node_struct** %.phi.trans.insert, align 8, !tbaa !228, !llfi_index !1057
  br label %._crit_edge55, !llfi_index !1058

.lr.ph54:                                         ; preds = %.preheader
  %24 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !1059
  %25 = load %struct.quantum_reg_node_struct** %24, align 8, !tbaa !228, !llfi_index !1060
  %26 = zext i32 %target to i64, !llfi_index !1061
  %27 = shl i64 1, %26, !llfi_index !1062
  %28 = load i32* %2, align 1, !llfi_index !1063
  %29 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !1064
  %30 = load i32** %29, align 1, !llfi_index !1065
  %31 = sub nsw i32 32, %28, !llfi_index !1066
  %32 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 0, !llfi_index !1067
  %33 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 1, !llfi_index !1068
  %34 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 0, !llfi_index !1069
  %35 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 1, !llfi_index !1070
  %36 = shl i32 1, %28, !llfi_index !1071
  br label %62, !llfi_index !1072

; <label>:37                                      ; preds = %quantum_add_hash.exit._crit_edge, %.lr.ph62
  %38 = phi i32 [ %8, %.lr.ph62 ], [ %.pre88, %quantum_add_hash.exit._crit_edge ], !llfi_index !1073
  %indvars.iv82 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next83, %quantum_add_hash.exit._crit_edge ], !llfi_index !1074
  %39 = getelementptr inbounds %struct.quantum_reg_node_struct* %13, i64 %indvars.iv82, i32 1, !llfi_index !1075
  %40 = load i64* %39, align 8, !tbaa !249, !llfi_index !1076
  %41 = lshr i64 %40, 32, !llfi_index !1077
  %key.masked.i.i = and i64 %40, 4294967295, !llfi_index !1078
  %42 = xor i64 %41, %key.masked.i.i, !llfi_index !1079
  %43 = mul i64 %42, 2654404609, !llfi_index !1080
  %44 = trunc i64 %43 to i32, !llfi_index !1081
  %45 = sub nsw i32 32, %38, !llfi_index !1082
  %46 = lshr i32 %44, %45, !llfi_index !1083
  %47 = sext i32 %46 to i64, !llfi_index !1084
  %48 = getelementptr inbounds i32* %15, i64 %47, !llfi_index !1085
  %49 = load i32* %48, align 4, !tbaa !1, !llfi_index !1086
  %50 = icmp eq i32 %49, 0, !llfi_index !1087
  br i1 %50, label %quantum_add_hash.exit, label %.lr.ph.i, !llfi_index !1088

.lr.ph.i:                                         ; preds = %37
  %51 = shl i32 1, %38, !llfi_index !1089
  br label %52, !llfi_index !1090

; <label>:52                                      ; preds = %52, %.lr.ph.i
  %i.01.i = phi i32 [ %46, %.lr.ph.i ], [ %..i, %52 ], !llfi_index !1091
  %53 = add nsw i32 %i.01.i, 1, !llfi_index !1092
  %54 = icmp eq i32 %53, %51, !llfi_index !1093
  %..i = select i1 %54, i32 0, i32 %53, !llfi_index !1094
  %55 = sext i32 %..i to i64, !llfi_index !1095
  %56 = getelementptr inbounds i32* %15, i64 %55, !llfi_index !1096
  %57 = load i32* %56, align 4, !tbaa !1, !llfi_index !1097
  %58 = icmp eq i32 %57, 0, !llfi_index !1098
  br i1 %58, label %quantum_add_hash.exit, label %52, !llfi_index !1099

quantum_add_hash.exit:                            ; preds = %52, %37
  %.lcssa.i = phi i32* [ %48, %37 ], [ %56, %52 ], !llfi_index !1100
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1, !llfi_index !1101
  %59 = trunc i64 %indvars.iv.next83 to i32, !llfi_index !1102
  store i32 %59, i32* %.lcssa.i, align 4, !tbaa !1, !llfi_index !1103
  %60 = load i32* %9, align 4, !tbaa !223, !llfi_index !1104
  %61 = icmp slt i32 %59, %60, !llfi_index !1105
  br i1 %61, label %quantum_add_hash.exit._crit_edge, label %.preheader, !llfi_index !1106

quantum_add_hash.exit._crit_edge:                 ; preds = %quantum_add_hash.exit
  %.pre88 = load i32* %2, align 4, !tbaa !1023, !llfi_index !1107
  br label %37, !llfi_index !1108

; <label>:62                                      ; preds = %111, %.lr.ph54
  %indvars.iv79 = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next80, %111 ], !llfi_index !1109
  %addsize.052 = phi i32 [ 0, %.lr.ph54 ], [ %addsize.2, %111 ], !llfi_index !1110
  %63 = getelementptr inbounds %struct.quantum_reg_node_struct* %25, i64 %indvars.iv79, i32 1, !llfi_index !1111
  %64 = load i64* %63, align 8, !tbaa !249, !llfi_index !1112
  %65 = xor i64 %64, %27, !llfi_index !1113
  %66 = lshr i64 %65, 32, !llfi_index !1114
  %key.masked.i.i19 = and i64 %65, 4294967295, !llfi_index !1115
  %67 = xor i64 %66, %key.masked.i.i19, !llfi_index !1116
  %68 = mul i64 %67, 2654404609, !llfi_index !1117
  %69 = trunc i64 %68 to i32, !llfi_index !1118
  %70 = lshr i32 %69, %31, !llfi_index !1119
  %71 = sext i32 %70 to i64, !llfi_index !1120
  %72 = getelementptr inbounds i32* %30, i64 %71, !llfi_index !1121
  %73 = load i32* %72, align 4, !tbaa !1, !llfi_index !1122
  %74 = icmp eq i32 %73, 0, !llfi_index !1123
  br i1 %74, label %quantum_get_state.exit24.thread, label %.lr.ph.i20, !llfi_index !1124

.lr.ph.i20:                                       ; preds = %81, %62
  %75 = phi i32 [ %86, %81 ], [ %73, %62 ], !llfi_index !1125
  %i.01.i21 = phi i32 [ %..i22, %81 ], [ %70, %62 ], !llfi_index !1126
  %76 = add nsw i32 %75, -1, !llfi_index !1127
  %77 = sext i32 %76 to i64, !llfi_index !1128
  %78 = getelementptr inbounds %struct.quantum_reg_node_struct* %25, i64 %77, i32 1, !llfi_index !1129
  %79 = load i64* %78, align 8, !tbaa !249, !llfi_index !1130
  %80 = icmp eq i64 %79, %65, !llfi_index !1131
  br i1 %80, label %quantum_get_state.exit24, label %81, !llfi_index !1132

; <label>:81                                      ; preds = %.lr.ph.i20
  %82 = add nsw i32 %i.01.i21, 1, !llfi_index !1133
  %83 = icmp eq i32 %82, %36, !llfi_index !1134
  %..i22 = select i1 %83, i32 0, i32 %82, !llfi_index !1135
  %84 = sext i32 %..i22 to i64, !llfi_index !1136
  %85 = getelementptr inbounds i32* %30, i64 %84, !llfi_index !1137
  %86 = load i32* %85, align 4, !tbaa !1, !llfi_index !1138
  %87 = icmp eq i32 %86, 0, !llfi_index !1139
  br i1 %87, label %quantum_get_state.exit24.thread, label %.lr.ph.i20, !llfi_index !1140

quantum_get_state.exit24:                         ; preds = %.lr.ph.i20
  %88 = icmp eq i32 %75, 0, !llfi_index !1141
  br i1 %88, label %quantum_get_state.exit24.thread, label %111, !llfi_index !1142

quantum_get_state.exit24.thread:                  ; preds = %quantum_get_state.exit24, %81, %62
  %89 = load float* %32, align 4, !llfi_index !1143
  %90 = load float* %33, align 4, !llfi_index !1144
  %91 = fmul float %89, %89, !llfi_index !1145
  %92 = fmul float %90, %90, !llfi_index !1146
  %93 = fadd float %91, %92, !llfi_index !1147
  %94 = fpext float %93 to double, !llfi_index !1148
  %95 = fcmp ogt double %94, 1.000000e-09, !llfi_index !1149
  br i1 %95, label %96, label %99, !llfi_index !1150

; <label>:96                                      ; preds = %quantum_get_state.exit24.thread
  %97 = and i64 %64, %27, !llfi_index !1151
  %not. = icmp ne i64 %97, 0, !llfi_index !1152
  %98 = zext i1 %not. to i32, !llfi_index !1153
  %addsize.0. = add nsw i32 %98, %addsize.052, !llfi_index !1154
  br label %99, !llfi_index !1155

; <label>:99                                      ; preds = %96, %quantum_get_state.exit24.thread
  %addsize.1 = phi i32 [ %addsize.052, %quantum_get_state.exit24.thread ], [ %addsize.0., %96 ], !llfi_index !1156
  %100 = load float* %34, align 4, !llfi_index !1157
  %101 = load float* %35, align 4, !llfi_index !1158
  %102 = fmul float %100, %100, !llfi_index !1159
  %103 = fmul float %101, %101, !llfi_index !1160
  %104 = fadd float %102, %103, !llfi_index !1161
  %105 = fpext float %104 to double, !llfi_index !1162
  %106 = fcmp ogt double %105, 1.000000e-09, !llfi_index !1163
  br i1 %106, label %107, label %111, !llfi_index !1164

; <label>:107                                     ; preds = %99
  %108 = and i64 %64, %27, !llfi_index !1165
  %109 = icmp eq i64 %108, 0, !llfi_index !1166
  %110 = zext i1 %109 to i32, !llfi_index !1167
  %.addsize.1 = add nsw i32 %110, %addsize.1, !llfi_index !1168
  br label %111, !llfi_index !1169

; <label>:111                                     ; preds = %107, %99, %quantum_get_state.exit24
  %addsize.2 = phi i32 [ %addsize.1, %99 ], [ %addsize.052, %quantum_get_state.exit24 ], [ %.addsize.1, %107 ], !llfi_index !1170
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1, !llfi_index !1171
  %112 = trunc i64 %indvars.iv.next80 to i32, !llfi_index !1172
  %113 = icmp slt i32 %112, %60, !llfi_index !1173
  br i1 %113, label %62, label %._crit_edge55, !llfi_index !1174

._crit_edge55:                                    ; preds = %111, %.preheader._crit_edge
  %114 = phi i32 [ %23, %.preheader._crit_edge ], [ %60, %111 ], !llfi_index !1175
  %115 = phi %struct.quantum_reg_node_struct* [ %.pre, %.preheader._crit_edge ], [ %25, %111 ], !llfi_index !1176
  %addsize.0.lcssa = phi i32 [ 0, %.preheader._crit_edge ], [ %addsize.2, %111 ], !llfi_index !1177
  %116 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !1178
  %117 = bitcast %struct.quantum_reg_node_struct* %115 to i8*, !llfi_index !1179
  %118 = add nsw i32 %114, %addsize.0.lcssa, !llfi_index !1180
  %119 = sext i32 %118 to i64, !llfi_index !1181
  %120 = shl nsw i64 %119, 4, !llfi_index !1182
  %121 = tail call i8* @realloc(i8* %117, i64 %120) #3, !llfi_index !1183
  %122 = bitcast i8* %121 to %struct.quantum_reg_node_struct*, !llfi_index !1184
  store %struct.quantum_reg_node_struct* %122, %struct.quantum_reg_node_struct** %116, align 8, !tbaa !228, !llfi_index !1185
  %123 = icmp eq i8* %121, null, !llfi_index !1186
  br i1 %123, label %124, label %128, !llfi_index !1187

; <label>:124                                     ; preds = %._crit_edge55
  %125 = load i32* %9, align 4, !tbaa !223, !llfi_index !1188
  %126 = add nsw i32 %125, %addsize.0.lcssa, !llfi_index !1189
  %127 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str21, i64 0, i64 0), i32 %126) #3, !llfi_index !1190
  tail call void @exit(i32 1) #8, !llfi_index !1191
  unreachable, !llfi_index !1192

; <label>:128                                     ; preds = %._crit_edge55
  %129 = sext i32 %addsize.0.lcssa to i64, !llfi_index !1193
  %130 = shl nsw i64 %129, 4, !llfi_index !1194
  %131 = tail call i64 @quantum_memman(i64 %130) #3, !llfi_index !1195
  %132 = icmp sgt i32 %addsize.0.lcssa, 0, !llfi_index !1196
  %133 = load i32* %9, align 4, !tbaa !223, !llfi_index !1197
  br i1 %132, label %.lr.ph46, label %._crit_edge47, !llfi_index !1198

.lr.ph46:                                         ; preds = %.lr.ph46, %128
  %134 = phi i32 [ %141, %.lr.ph46 ], [ %133, %128 ], !llfi_index !1199
  %i.344 = phi i32 [ %139, %.lr.ph46 ], [ 0, %128 ], !llfi_index !1200
  %135 = add nsw i32 %134, %i.344, !llfi_index !1201
  %136 = sext i32 %135 to i64, !llfi_index !1202
  %137 = load %struct.quantum_reg_node_struct** %116, align 8, !tbaa !228, !llfi_index !1203
  %138 = getelementptr inbounds %struct.quantum_reg_node_struct* %137, i64 %136, i32 0, i32 0, !llfi_index !1204
  %139 = add nsw i32 %i.344, 1, !llfi_index !1205
  %140 = bitcast float* %138 to i8*, !llfi_index !1206
  call void @llvm.memset.p0i8.i64(i8* %140, i8 0, i64 16, i32 4, i1 false), !llfi_index !1207
  %141 = load i32* %9, align 4, !tbaa !223, !llfi_index !1208
  %exitcond = icmp eq i32 %139, %addsize.0.lcssa, !llfi_index !1209
  br i1 %exitcond, label %._crit_edge47, label %.lr.ph46, !llfi_index !1210

._crit_edge47:                                    ; preds = %.lr.ph46, %128
  %142 = phi i32 [ %133, %128 ], [ %141, %.lr.ph46 ], !llfi_index !1211
  %143 = add nsw i32 %142, %addsize.0.lcssa, !llfi_index !1212
  %144 = sext i32 %143 to i64, !llfi_index !1213
  %145 = tail call noalias i8* @calloc(i64 %144, i64 1) #3, !llfi_index !1214
  %146 = icmp eq i8* %145, null, !llfi_index !1215
  br i1 %146, label %147, label %151, !llfi_index !1216

; <label>:147                                     ; preds = %._crit_edge47
  %148 = add nsw i32 %142, %addsize.0.lcssa, !llfi_index !1217
  %149 = sext i32 %148 to i64, !llfi_index !1218
  %150 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str3, i64 0, i64 0), i64 %149) #3, !llfi_index !1219
  tail call void @exit(i32 1) #8, !llfi_index !1220
  unreachable, !llfi_index !1221

; <label>:151                                     ; preds = %._crit_edge47
  %152 = sext i32 %142 to i64, !llfi_index !1222
  %153 = add i64 %152, %129, !llfi_index !1223
  %154 = tail call i64 @quantum_memman(i64 %153) #3, !llfi_index !1224
  %155 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !1225
  %156 = load i32* %155, align 4, !tbaa !22, !llfi_index !1226
  %157 = zext i32 %156 to i64, !llfi_index !1227
  %158 = shl i64 1, %157, !llfi_index !1228
  %159 = uitofp i64 %158 to double, !llfi_index !1229
  %160 = fdiv double 1.000000e+00, %159, !llfi_index !1230
  %161 = fdiv double %160, 1.000000e+06, !llfi_index !1231
  %162 = fptrunc double %161 to float, !llfi_index !1232
  %163 = load i32* %9, align 4, !tbaa !223, !llfi_index !1233
  %164 = icmp sgt i32 %163, 0, !llfi_index !1234
  br i1 %164, label %.lr.ph40, label %._crit_edge41, !llfi_index !1235

.lr.ph40:                                         ; preds = %151
  %165 = zext i32 %target to i64, !llfi_index !1236
  %166 = shl i64 1, %165, !llfi_index !1237
  %167 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !1238
  %168 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 0, !llfi_index !1239
  %169 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 1, !llfi_index !1240
  %170 = getelementptr inbounds { float, float }* %m.coerce1, i64 3, i32 0, !llfi_index !1241
  %171 = getelementptr inbounds { float, float }* %m.coerce1, i64 3, i32 1, !llfi_index !1242
  %172 = getelementptr inbounds { float, float }* %m.coerce1, i64 0, i32 0, !llfi_index !1243
  %173 = getelementptr inbounds { float, float }* %m.coerce1, i64 0, i32 1, !llfi_index !1244
  %174 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 0, !llfi_index !1245
  %175 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 1, !llfi_index !1246
  br label %176, !llfi_index !1247

; <label>:176                                     ; preds = %372, %.lr.ph40
  %indvars.iv74 = phi i64 [ 0, %.lr.ph40 ], [ %indvars.iv.next75, %372 ], !llfi_index !1248
  %k.037 = phi i32 [ %163, %.lr.ph40 ], [ %k.2, %372 ], !llfi_index !1249
  %177 = getelementptr inbounds i8* %145, i64 %indvars.iv74, !llfi_index !1250
  %178 = load i8* %177, align 1, !tbaa !1251, !llfi_index !1252
  %179 = icmp eq i8 %178, 0, !llfi_index !1253
  br i1 %179, label %180, label %372, !llfi_index !1254

; <label>:180                                     ; preds = %176
  %181 = load %struct.quantum_reg_node_struct** %116, align 8, !llfi_index !1255
  %182 = getelementptr inbounds %struct.quantum_reg_node_struct* %181, i64 %indvars.iv74, i32 1, !llfi_index !1256
  %183 = load i64* %182, align 8, !tbaa !249, !llfi_index !1257
  %184 = and i64 %183, %166, !llfi_index !1258
  %185 = trunc i64 %184 to i32, !llfi_index !1259
  %186 = xor i64 %183, %166, !llfi_index !1260
  %187 = load i32* %2, align 1, !llfi_index !1261
  %188 = load i32** %167, align 1, !llfi_index !1262
  %189 = lshr i64 %186, 32, !llfi_index !1263
  %key.masked.i.i12 = and i64 %186, 4294967295, !llfi_index !1264
  %190 = xor i64 %189, %key.masked.i.i12, !llfi_index !1265
  %191 = mul i64 %190, 2654404609, !llfi_index !1266
  %192 = trunc i64 %191 to i32, !llfi_index !1267
  %193 = sub nsw i32 32, %187, !llfi_index !1268
  %194 = lshr i32 %192, %193, !llfi_index !1269
  %195 = sext i32 %194 to i64, !llfi_index !1270
  %196 = getelementptr inbounds i32* %188, i64 %195, !llfi_index !1271
  %197 = load i32* %196, align 4, !tbaa !1, !llfi_index !1272
  %198 = icmp eq i32 %197, 0, !llfi_index !1273
  br i1 %198, label %quantum_get_state.exit.thread, label %.lr.ph.i13, !llfi_index !1274

.lr.ph.i13:                                       ; preds = %180
  %199 = shl i32 1, %187, !llfi_index !1275
  br label %200, !llfi_index !1276

; <label>:200                                     ; preds = %207, %.lr.ph.i13
  %201 = phi i32 [ %197, %.lr.ph.i13 ], [ %212, %207 ], !llfi_index !1277
  %i.01.i14 = phi i32 [ %194, %.lr.ph.i13 ], [ %..i15, %207 ], !llfi_index !1278
  %202 = add nsw i32 %201, -1, !llfi_index !1279
  %203 = sext i32 %202 to i64, !llfi_index !1280
  %204 = getelementptr inbounds %struct.quantum_reg_node_struct* %181, i64 %203, i32 1, !llfi_index !1281
  %205 = load i64* %204, align 8, !tbaa !249, !llfi_index !1282
  %206 = icmp eq i64 %205, %186, !llfi_index !1283
  br i1 %206, label %quantum_get_state.exit, label %207, !llfi_index !1284

; <label>:207                                     ; preds = %200
  %208 = add nsw i32 %i.01.i14, 1, !llfi_index !1285
  %209 = icmp eq i32 %208, %199, !llfi_index !1286
  %..i15 = select i1 %209, i32 0, i32 %208, !llfi_index !1287
  %210 = sext i32 %..i15 to i64, !llfi_index !1288
  %211 = getelementptr inbounds i32* %188, i64 %210, !llfi_index !1289
  %212 = load i32* %211, align 4, !tbaa !1, !llfi_index !1290
  %213 = icmp eq i32 %212, 0, !llfi_index !1291
  br i1 %213, label %quantum_get_state.exit.thread, label %200, !llfi_index !1292

quantum_get_state.exit.thread:                    ; preds = %207, %180
  %214 = getelementptr inbounds %struct.quantum_reg_node_struct* %181, i64 %indvars.iv74, i32 0, i32 0, !llfi_index !1293
  %215 = load float* %214, align 4, !llfi_index !1294
  %216 = getelementptr inbounds %struct.quantum_reg_node_struct* %181, i64 %indvars.iv74, i32 0, i32 1, !llfi_index !1295
  %217 = load float* %216, align 4, !llfi_index !1296
  br label %228, !llfi_index !1297

quantum_get_state.exit:                           ; preds = %200
  %218 = getelementptr inbounds %struct.quantum_reg_node_struct* %181, i64 %indvars.iv74, i32 0, i32 0, !llfi_index !1298
  %219 = load float* %218, align 4, !llfi_index !1299
  %220 = getelementptr inbounds %struct.quantum_reg_node_struct* %181, i64 %indvars.iv74, i32 0, i32 1, !llfi_index !1300
  %221 = load float* %220, align 4, !llfi_index !1301
  %222 = icmp sgt i32 %201, 0, !llfi_index !1302
  br i1 %222, label %223, label %228, !llfi_index !1303

; <label>:223                                     ; preds = %quantum_get_state.exit
  %224 = getelementptr inbounds %struct.quantum_reg_node_struct* %181, i64 %203, i32 0, i32 0, !llfi_index !1304
  %225 = load float* %224, align 4, !llfi_index !1305
  %226 = getelementptr inbounds %struct.quantum_reg_node_struct* %181, i64 %203, i32 0, i32 1, !llfi_index !1306
  %227 = load float* %226, align 4, !llfi_index !1307
  br label %228, !llfi_index !1308

; <label>:228                                     ; preds = %223, %quantum_get_state.exit, %quantum_get_state.exit.thread
  %229 = phi i1 [ true, %223 ], [ false, %quantum_get_state.exit ], [ false, %quantum_get_state.exit.thread ], !llfi_index !1309
  %230 = phi float [ %221, %223 ], [ %221, %quantum_get_state.exit ], [ %217, %quantum_get_state.exit.thread ], !llfi_index !1310
  %231 = phi float [ %219, %223 ], [ %219, %quantum_get_state.exit ], [ %215, %quantum_get_state.exit.thread ], !llfi_index !1311
  %.0.i27 = phi i32 [ %202, %223 ], [ %202, %quantum_get_state.exit ], [ -1, %quantum_get_state.exit.thread ], !llfi_index !1312
  %tnot.sroa.0.0 = phi float [ %225, %223 ], [ 0.000000e+00, %quantum_get_state.exit ], [ 0.000000e+00, %quantum_get_state.exit.thread ], !llfi_index !1313
  %tnot.sroa.7.0 = phi float [ %227, %223 ], [ 0.000000e+00, %quantum_get_state.exit ], [ 0.000000e+00, %quantum_get_state.exit.thread ], !llfi_index !1314
  %232 = icmp ne i32 %185, 0, !llfi_index !1315
  br i1 %232, label %233, label %254, !llfi_index !1316

; <label>:233                                     ; preds = %228
  %234 = load float* %168, align 4, !llfi_index !1317
  %235 = load float* %169, align 4, !llfi_index !1318
  %236 = fmul float %tnot.sroa.0.0, %234, !llfi_index !1319
  %237 = fmul float %tnot.sroa.7.0, %235, !llfi_index !1320
  %238 = fsub float %236, %237, !llfi_index !1321
  %239 = fmul float %tnot.sroa.0.0, %235, !llfi_index !1322
  %240 = fmul float %tnot.sroa.7.0, %234, !llfi_index !1323
  %241 = fadd float %240, %239, !llfi_index !1324
  %242 = load float* %170, align 4, !llfi_index !1325
  %243 = load float* %171, align 4, !llfi_index !1326
  %244 = fmul float %231, %242, !llfi_index !1327
  %245 = fmul float %230, %243, !llfi_index !1328
  %246 = fsub float %244, %245, !llfi_index !1329
  %247 = fmul float %231, %243, !llfi_index !1330
  %248 = fmul float %230, %242, !llfi_index !1331
  %249 = fadd float %248, %247, !llfi_index !1332
  %250 = fadd float %238, %246, !llfi_index !1333
  %251 = fadd float %241, %249, !llfi_index !1334
  %252 = getelementptr inbounds %struct.quantum_reg_node_struct* %181, i64 %indvars.iv74, i32 0, i32 0, !llfi_index !1335
  %253 = getelementptr inbounds %struct.quantum_reg_node_struct* %181, i64 %indvars.iv74, i32 0, i32 1, !llfi_index !1336
  store float %250, float* %252, align 4, !llfi_index !1337
  store float %251, float* %253, align 4, !llfi_index !1338
  br label %275, !llfi_index !1339

; <label>:254                                     ; preds = %228
  %255 = load float* %172, align 4, !llfi_index !1340
  %256 = load float* %173, align 4, !llfi_index !1341
  %257 = fmul float %231, %255, !llfi_index !1342
  %258 = fmul float %230, %256, !llfi_index !1343
  %259 = fsub float %257, %258, !llfi_index !1344
  %260 = fmul float %231, %256, !llfi_index !1345
  %261 = fmul float %230, %255, !llfi_index !1346
  %262 = fadd float %261, %260, !llfi_index !1347
  %263 = load float* %174, align 4, !llfi_index !1348
  %264 = load float* %175, align 4, !llfi_index !1349
  %265 = fmul float %tnot.sroa.0.0, %263, !llfi_index !1350
  %266 = fmul float %tnot.sroa.7.0, %264, !llfi_index !1351
  %267 = fsub float %265, %266, !llfi_index !1352
  %268 = fmul float %tnot.sroa.0.0, %264, !llfi_index !1353
  %269 = fmul float %tnot.sroa.7.0, %263, !llfi_index !1354
  %270 = fadd float %269, %268, !llfi_index !1355
  %271 = fadd float %259, %267, !llfi_index !1356
  %272 = fadd float %262, %270, !llfi_index !1357
  %273 = getelementptr inbounds %struct.quantum_reg_node_struct* %181, i64 %indvars.iv74, i32 0, i32 0, !llfi_index !1358
  %274 = getelementptr inbounds %struct.quantum_reg_node_struct* %181, i64 %indvars.iv74, i32 0, i32 1, !llfi_index !1359
  store float %271, float* %273, align 4, !llfi_index !1360
  store float %272, float* %274, align 4, !llfi_index !1361
  br label %275, !llfi_index !1362

; <label>:275                                     ; preds = %254, %233
  br i1 %229, label %276, label %322, !llfi_index !1363

; <label>:276                                     ; preds = %275
  br i1 %232, label %277, label %.thread, !llfi_index !1364

; <label>:277                                     ; preds = %276
  %278 = load float* %172, align 4, !llfi_index !1365
  %279 = load float* %173, align 4, !llfi_index !1366
  %280 = fmul float %tnot.sroa.0.0, %278, !llfi_index !1367
  %281 = fmul float %tnot.sroa.7.0, %279, !llfi_index !1368
  %282 = fsub float %280, %281, !llfi_index !1369
  %283 = fmul float %tnot.sroa.0.0, %279, !llfi_index !1370
  %284 = fmul float %tnot.sroa.7.0, %278, !llfi_index !1371
  %285 = fadd float %284, %283, !llfi_index !1372
  %286 = load float* %174, align 4, !llfi_index !1373
  %287 = load float* %175, align 4, !llfi_index !1374
  %288 = fmul float %231, %286, !llfi_index !1375
  %289 = fmul float %230, %287, !llfi_index !1376
  %290 = fsub float %288, %289, !llfi_index !1377
  %291 = fmul float %231, %287, !llfi_index !1378
  %292 = fmul float %230, %286, !llfi_index !1379
  %293 = fadd float %292, %291, !llfi_index !1380
  %294 = fadd float %282, %290, !llfi_index !1381
  %295 = fadd float %285, %293, !llfi_index !1382
  %296 = sext i32 %.0.i27 to i64, !llfi_index !1383
  %297 = load %struct.quantum_reg_node_struct** %116, align 8, !tbaa !228, !llfi_index !1384
  %298 = getelementptr inbounds %struct.quantum_reg_node_struct* %297, i64 %296, i32 0, i32 0, !llfi_index !1385
  %299 = getelementptr inbounds %struct.quantum_reg_node_struct* %297, i64 %296, i32 0, i32 1, !llfi_index !1386
  store float %294, float* %298, align 4, !llfi_index !1387
  store float %295, float* %299, align 4, !llfi_index !1388
  br label %369, !llfi_index !1389

.thread:                                          ; preds = %276
  %300 = load float* %168, align 4, !llfi_index !1390
  %301 = load float* %169, align 4, !llfi_index !1391
  %302 = fmul float %231, %300, !llfi_index !1392
  %303 = fmul float %230, %301, !llfi_index !1393
  %304 = fsub float %302, %303, !llfi_index !1394
  %305 = fmul float %231, %301, !llfi_index !1395
  %306 = fmul float %230, %300, !llfi_index !1396
  %307 = fadd float %306, %305, !llfi_index !1397
  %308 = load float* %170, align 4, !llfi_index !1398
  %309 = load float* %171, align 4, !llfi_index !1399
  %310 = fmul float %tnot.sroa.0.0, %308, !llfi_index !1400
  %311 = fmul float %tnot.sroa.7.0, %309, !llfi_index !1401
  %312 = fsub float %310, %311, !llfi_index !1402
  %313 = fmul float %tnot.sroa.0.0, %309, !llfi_index !1403
  %314 = fmul float %tnot.sroa.7.0, %308, !llfi_index !1404
  %315 = fadd float %314, %313, !llfi_index !1405
  %316 = fadd float %304, %312, !llfi_index !1406
  %317 = fadd float %307, %315, !llfi_index !1407
  %318 = sext i32 %.0.i27 to i64, !llfi_index !1408
  %319 = load %struct.quantum_reg_node_struct** %116, align 8, !tbaa !228, !llfi_index !1409
  %320 = getelementptr inbounds %struct.quantum_reg_node_struct* %319, i64 %318, i32 0, i32 0, !llfi_index !1410
  %321 = getelementptr inbounds %struct.quantum_reg_node_struct* %319, i64 %318, i32 0, i32 1, !llfi_index !1411
  store float %316, float* %320, align 4, !llfi_index !1412
  store float %317, float* %321, align 4, !llfi_index !1413
  br label %370, !llfi_index !1414

; <label>:322                                     ; preds = %275
  %323 = load float* %174, align 4, !llfi_index !1415
  %324 = load float* %175, align 4, !llfi_index !1416
  %325 = fmul float %323, %323, !llfi_index !1417
  %326 = fmul float %324, %324, !llfi_index !1418
  %327 = fadd float %325, %326, !llfi_index !1419
  %328 = fpext float %327 to double, !llfi_index !1420
  %329 = fcmp olt double %328, 1.000000e-09, !llfi_index !1421
  %or.cond = and i1 %329, %232, !llfi_index !1422
  br i1 %or.cond, label %split42, label %330, !llfi_index !1423

; <label>:330                                     ; preds = %322
  %331 = load float* %168, align 4, !llfi_index !1424
  %332 = load float* %169, align 4, !llfi_index !1425
  %333 = fmul float %331, %331, !llfi_index !1426
  %334 = fmul float %332, %332, !llfi_index !1427
  %335 = fadd float %333, %334, !llfi_index !1428
  %336 = fpext float %335 to double, !llfi_index !1429
  %337 = fcmp uge double %336, 1.000000e-09, !llfi_index !1430
  %or.cond3 = or i1 %337, %232, !llfi_index !1431
  br i1 %or.cond3, label %338, label %split42, !llfi_index !1432

; <label>:338                                     ; preds = %330
  %339 = load %struct.quantum_reg_node_struct** %116, align 8, !tbaa !228, !llfi_index !1433
  %340 = getelementptr inbounds %struct.quantum_reg_node_struct* %339, i64 %indvars.iv74, i32 1, !llfi_index !1434
  %341 = load i64* %340, align 8, !tbaa !249, !llfi_index !1435
  %342 = xor i64 %341, %166, !llfi_index !1436
  %343 = sext i32 %k.037 to i64, !llfi_index !1437
  %344 = getelementptr inbounds %struct.quantum_reg_node_struct* %339, i64 %343, i32 1, !llfi_index !1438
  store i64 %342, i64* %344, align 8, !tbaa !249, !llfi_index !1439
  br i1 %232, label %345, label %356, !llfi_index !1440

; <label>:345                                     ; preds = %338
  %346 = load float* %174, align 4, !llfi_index !1441
  %347 = load float* %175, align 4, !llfi_index !1442
  %348 = fmul float %231, %346, !llfi_index !1443
  %349 = fmul float %230, %347, !llfi_index !1444
  %350 = fsub float %348, %349, !llfi_index !1445
  %351 = fmul float %231, %347, !llfi_index !1446
  %352 = fmul float %230, %346, !llfi_index !1447
  %353 = fadd float %352, %351, !llfi_index !1448
  %354 = getelementptr inbounds %struct.quantum_reg_node_struct* %339, i64 %343, i32 0, i32 0, !llfi_index !1449
  %355 = getelementptr inbounds %struct.quantum_reg_node_struct* %339, i64 %343, i32 0, i32 1, !llfi_index !1450
  store float %350, float* %354, align 4, !llfi_index !1451
  store float %353, float* %355, align 4, !llfi_index !1452
  br label %367, !llfi_index !1453

; <label>:356                                     ; preds = %338
  %357 = load float* %168, align 4, !llfi_index !1454
  %358 = load float* %169, align 4, !llfi_index !1455
  %359 = fmul float %231, %357, !llfi_index !1456
  %360 = fmul float %230, %358, !llfi_index !1457
  %361 = fsub float %359, %360, !llfi_index !1458
  %362 = fmul float %231, %358, !llfi_index !1459
  %363 = fmul float %230, %357, !llfi_index !1460
  %364 = fadd float %363, %362, !llfi_index !1461
  %365 = getelementptr inbounds %struct.quantum_reg_node_struct* %339, i64 %343, i32 0, i32 0, !llfi_index !1462
  %366 = getelementptr inbounds %struct.quantum_reg_node_struct* %339, i64 %343, i32 0, i32 1, !llfi_index !1463
  store float %361, float* %365, align 4, !llfi_index !1464
  store float %364, float* %366, align 4, !llfi_index !1465
  br label %367, !llfi_index !1466

; <label>:367                                     ; preds = %356, %345
  %368 = add nsw i32 %k.037, 1, !llfi_index !1467
  br label %369, !llfi_index !1468

; <label>:369                                     ; preds = %367, %277
  %k.1 = phi i32 [ %k.037, %277 ], [ %368, %367 ], !llfi_index !1469
  br i1 %229, label %._crit_edge89, label %372, !llfi_index !1470

._crit_edge89:                                    ; preds = %369
  %.pre90 = sext i32 %.0.i27 to i64, !llfi_index !1471
  br label %370, !llfi_index !1472

; <label>:370                                     ; preds = %._crit_edge89, %.thread
  %.pre-phi = phi i64 [ %.pre90, %._crit_edge89 ], [ %318, %.thread ], !llfi_index !1473
  %k.128 = phi i32 [ %k.1, %._crit_edge89 ], [ %k.037, %.thread ], !llfi_index !1474
  %371 = getelementptr inbounds i8* %145, i64 %.pre-phi, !llfi_index !1475
  store i8 1, i8* %371, align 1, !tbaa !1251, !llfi_index !1476
  br label %372, !llfi_index !1477

; <label>:372                                     ; preds = %370, %369, %176
  %k.2 = phi i32 [ %k.037, %176 ], [ %k.128, %370 ], [ %k.1, %369 ], !llfi_index !1478
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1, !llfi_index !1479
  %373 = load i32* %9, align 4, !tbaa !223, !llfi_index !1480
  %374 = trunc i64 %indvars.iv.next75 to i32, !llfi_index !1481
  %375 = icmp slt i32 %374, %373, !llfi_index !1482
  br i1 %375, label %176, label %._crit_edge41, !llfi_index !1483

split42:                                          ; preds = %330, %322
  %.pre86 = load i32* %9, align 4, !tbaa !223, !llfi_index !1484
  br label %._crit_edge41, !llfi_index !1485

._crit_edge41:                                    ; preds = %split42, %372, %151
  %376 = phi i32 [ %.pre86, %split42 ], [ %163, %151 ], [ %373, %372 ], !llfi_index !1486
  %377 = add nsw i32 %376, %addsize.0.lcssa, !llfi_index !1487
  store i32 %377, i32* %9, align 4, !tbaa !223, !llfi_index !1488
  tail call void @free(i8* %145) #3, !llfi_index !1489
  %378 = load i32* %9, align 4, !tbaa !223, !llfi_index !1490
  %379 = sub nsw i32 0, %378, !llfi_index !1491
  %380 = sext i32 %379 to i64, !llfi_index !1492
  %381 = tail call i64 @quantum_memman(i64 %380) #3, !llfi_index !1493
  %382 = load i32* %9, align 4, !tbaa !223, !llfi_index !1494
  %383 = icmp sgt i32 %382, 0, !llfi_index !1495
  br i1 %383, label %.lr.ph, label %._crit_edge.thread, !llfi_index !1496

.lr.ph:                                           ; preds = %410, %._crit_edge41
  %384 = phi i32 [ %411, %410 ], [ %382, %._crit_edge41 ], !llfi_index !1497
  %indvars.iv = phi i64 [ %indvars.iv.next, %410 ], [ 0, %._crit_edge41 ], !llfi_index !1498
  %j.030 = phi i32 [ %j.1, %410 ], [ 0, %._crit_edge41 ], !llfi_index !1499
  %decsize.029 = phi i32 [ %decsize.1, %410 ], [ 0, %._crit_edge41 ], !llfi_index !1500
  %385 = load %struct.quantum_reg_node_struct** %116, align 8, !tbaa !228, !llfi_index !1501
  %386 = getelementptr inbounds %struct.quantum_reg_node_struct* %385, i64 %indvars.iv, i32 0, i32 0, !llfi_index !1502
  %387 = bitcast float* %386 to <2 x float>*, !llfi_index !1503
  %388 = load <2 x float>* %387, align 4, !llfi_index !1504
  %389 = fmul <2 x float> %388, %388, !llfi_index !1505
  %390 = extractelement <2 x float> %389, i32 0, !llfi_index !1506
  %391 = extractelement <2 x float> %389, i32 1, !llfi_index !1507
  %392 = fadd float %390, %391, !llfi_index !1508
  %393 = fcmp olt float %392, %162, !llfi_index !1509
  br i1 %393, label %394, label %397, !llfi_index !1510

; <label>:394                                     ; preds = %.lr.ph
  %395 = add nsw i32 %j.030, 1, !llfi_index !1511
  %396 = add nsw i32 %decsize.029, 1, !llfi_index !1512
  br label %410, !llfi_index !1513

; <label>:397                                     ; preds = %.lr.ph
  %398 = icmp eq i32 %j.030, 0, !llfi_index !1514
  br i1 %398, label %410, label %399, !llfi_index !1515

; <label>:399                                     ; preds = %397
  %400 = getelementptr inbounds %struct.quantum_reg_node_struct* %385, i64 %indvars.iv, i32 1, !llfi_index !1516
  %401 = load i64* %400, align 8, !tbaa !249, !llfi_index !1517
  %402 = trunc i64 %indvars.iv to i32, !llfi_index !1518
  %403 = sub nsw i32 %402, %j.030, !llfi_index !1519
  %404 = sext i32 %403 to i64, !llfi_index !1520
  %405 = getelementptr inbounds %struct.quantum_reg_node_struct* %385, i64 %404, i32 1, !llfi_index !1521
  store i64 %401, i64* %405, align 8, !tbaa !249, !llfi_index !1522
  %406 = getelementptr inbounds %struct.quantum_reg_node_struct* %385, i64 %404, i32 0, i32 0, !llfi_index !1523
  %407 = getelementptr inbounds %struct.quantum_reg_node_struct* %385, i64 %404, i32 0, i32 1, !llfi_index !1524
  %408 = extractelement <2 x float> %388, i32 0, !llfi_index !1525
  store float %408, float* %406, align 4, !llfi_index !1526
  %409 = extractelement <2 x float> %388, i32 1, !llfi_index !1527
  store float %409, float* %407, align 4, !llfi_index !1528
  %.pre87 = load i32* %9, align 4, !tbaa !223, !llfi_index !1529
  br label %410, !llfi_index !1530

; <label>:410                                     ; preds = %399, %397, %394
  %411 = phi i32 [ %384, %394 ], [ %.pre87, %399 ], [ %384, %397 ], !llfi_index !1531
  %decsize.1 = phi i32 [ %396, %394 ], [ %decsize.029, %399 ], [ %decsize.029, %397 ], !llfi_index !1532
  %j.1 = phi i32 [ %395, %394 ], [ %j.030, %399 ], [ 0, %397 ], !llfi_index !1533
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1534
  %412 = trunc i64 %indvars.iv.next to i32, !llfi_index !1535
  %413 = icmp slt i32 %412, %411, !llfi_index !1536
  br i1 %413, label %.lr.ph, label %._crit_edge, !llfi_index !1537

._crit_edge:                                      ; preds = %410
  %414 = icmp eq i32 %decsize.1, 0, !llfi_index !1538
  br i1 %414, label %._crit_edge.thread, label %415, !llfi_index !1539

; <label>:415                                     ; preds = %._crit_edge
  %416 = sub nsw i32 %411, %decsize.1, !llfi_index !1540
  store i32 %416, i32* %9, align 4, !tbaa !223, !llfi_index !1541
  %417 = load %struct.quantum_reg_node_struct** %116, align 8, !tbaa !228, !llfi_index !1542
  %418 = bitcast %struct.quantum_reg_node_struct* %417 to i8*, !llfi_index !1543
  %419 = sext i32 %416 to i64, !llfi_index !1544
  %420 = shl nsw i64 %419, 4, !llfi_index !1545
  %421 = tail call i8* @realloc(i8* %418, i64 %420) #3, !llfi_index !1546
  %422 = bitcast i8* %421 to %struct.quantum_reg_node_struct*, !llfi_index !1547
  store %struct.quantum_reg_node_struct* %422, %struct.quantum_reg_node_struct** %116, align 8, !tbaa !228, !llfi_index !1548
  %423 = icmp eq i8* %421, null, !llfi_index !1549
  br i1 %423, label %424, label %428, !llfi_index !1550

; <label>:424                                     ; preds = %415
  %425 = load i32* %9, align 4, !tbaa !223, !llfi_index !1551
  %426 = add nsw i32 %425, %addsize.0.lcssa, !llfi_index !1552
  %427 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str21, i64 0, i64 0), i32 %426) #3, !llfi_index !1553
  tail call void @exit(i32 1) #8, !llfi_index !1554
  unreachable, !llfi_index !1555

; <label>:428                                     ; preds = %415
  %429 = sub nsw i32 0, %decsize.1, !llfi_index !1556
  %430 = sext i32 %429 to i64, !llfi_index !1557
  %431 = shl nsw i64 %430, 4, !llfi_index !1558
  %432 = tail call i64 @quantum_memman(i64 %431) #3, !llfi_index !1559
  br label %._crit_edge.thread, !llfi_index !1560

._crit_edge.thread:                               ; preds = %428, %._crit_edge, %._crit_edge41
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !1561
  ret void, !llfi_index !1562
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @quantum_gate2(i32 %control, i32 %target, i64 %m.coerce0, { float, float }* %m.coerce1, %struct.quantum_reg_struct* %reg) #0 {
  %1 = icmp eq i64 %m.coerce0, 17179869188, !llfi_index !1563
  br i1 %1, label %.preheader60, label %7, !llfi_index !1564

.preheader60:                                     ; preds = %0
  %2 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !1565
  %3 = load i32* %2, align 4, !tbaa !1023, !llfi_index !1566
  %4 = icmp eq i32 %3, 31, !llfi_index !1567
  br i1 %4, label %.preheader55, label %.lr.ph63, !llfi_index !1568

.lr.ph63:                                         ; preds = %.preheader60
  %5 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !1569
  %6 = load i32** %5, align 8, !tbaa !1028, !llfi_index !1570
  br label %16, !llfi_index !1571

; <label>:7                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str5, i64 0, i64 0)), !llfi_index !1572
  tail call void @exit(i32 1) #8, !llfi_index !1573
  unreachable, !llfi_index !1574

.preheader55:                                     ; preds = %16, %.preheader60
  %8 = phi i32 [ 31, %.preheader60 ], [ %18, %16 ], !llfi_index !1575
  %9 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !1576
  %10 = load i32* %9, align 4, !tbaa !223, !llfi_index !1577
  %11 = icmp sgt i32 %10, 0, !llfi_index !1578
  br i1 %11, label %.lr.ph58, label %.preheader._crit_edge, !llfi_index !1579

.lr.ph58:                                         ; preds = %.preheader55
  %12 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !1580
  %13 = load %struct.quantum_reg_node_struct** %12, align 8, !tbaa !228, !llfi_index !1581
  %14 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !1582
  %15 = load i32** %14, align 8, !tbaa !1028, !llfi_index !1583
  br label %37, !llfi_index !1584

; <label>:16                                      ; preds = %16, %.lr.ph63
  %indvars.iv80 = phi i64 [ 0, %.lr.ph63 ], [ %indvars.iv.next81, %16 ], !llfi_index !1585
  %17 = getelementptr inbounds i32* %6, i64 %indvars.iv80, !llfi_index !1586
  store i32 0, i32* %17, align 4, !tbaa !1, !llfi_index !1587
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1, !llfi_index !1588
  %18 = load i32* %2, align 4, !tbaa !1023, !llfi_index !1589
  %19 = shl i32 1, %18, !llfi_index !1590
  %20 = trunc i64 %indvars.iv.next81 to i32, !llfi_index !1591
  %21 = icmp slt i32 %20, %19, !llfi_index !1592
  br i1 %21, label %16, label %.preheader55, !llfi_index !1593

.preheader:                                       ; preds = %quantum_add_hash.exit
  %22 = icmp sgt i32 %60, 0, !llfi_index !1594
  br i1 %22, label %.lr.ph50, label %.preheader._crit_edge, !llfi_index !1595

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader55
  %23 = phi i32 [ %60, %.preheader ], [ %10, %.preheader55 ], !llfi_index !1596
  %.phi.trans.insert = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !1597
  %.pre = load %struct.quantum_reg_node_struct** %.phi.trans.insert, align 8, !tbaa !228, !llfi_index !1598
  br label %._crit_edge51, !llfi_index !1599

.lr.ph50:                                         ; preds = %.preheader
  %24 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !1600
  %25 = load %struct.quantum_reg_node_struct** %24, align 8, !tbaa !228, !llfi_index !1601
  %26 = zext i32 %target to i64, !llfi_index !1602
  %27 = shl i64 1, %26, !llfi_index !1603
  %28 = load i32* %2, align 1, !llfi_index !1604
  %29 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !1605
  %30 = load i32** %29, align 1, !llfi_index !1606
  %31 = sub nsw i32 32, %28, !llfi_index !1607
  %32 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 0, !llfi_index !1608
  %33 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 1, !llfi_index !1609
  %34 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 0, !llfi_index !1610
  %35 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 1, !llfi_index !1611
  %36 = shl i32 1, %28, !llfi_index !1612
  br label %62, !llfi_index !1613

; <label>:37                                      ; preds = %quantum_add_hash.exit._crit_edge, %.lr.ph58
  %38 = phi i32 [ %8, %.lr.ph58 ], [ %.pre84, %quantum_add_hash.exit._crit_edge ], !llfi_index !1614
  %indvars.iv78 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next79, %quantum_add_hash.exit._crit_edge ], !llfi_index !1615
  %39 = getelementptr inbounds %struct.quantum_reg_node_struct* %13, i64 %indvars.iv78, i32 1, !llfi_index !1616
  %40 = load i64* %39, align 8, !tbaa !249, !llfi_index !1617
  %41 = lshr i64 %40, 32, !llfi_index !1618
  %key.masked.i.i = and i64 %40, 4294967295, !llfi_index !1619
  %42 = xor i64 %41, %key.masked.i.i, !llfi_index !1620
  %43 = mul i64 %42, 2654404609, !llfi_index !1621
  %44 = trunc i64 %43 to i32, !llfi_index !1622
  %45 = sub nsw i32 32, %38, !llfi_index !1623
  %46 = lshr i32 %44, %45, !llfi_index !1624
  %47 = sext i32 %46 to i64, !llfi_index !1625
  %48 = getelementptr inbounds i32* %15, i64 %47, !llfi_index !1626
  %49 = load i32* %48, align 4, !tbaa !1, !llfi_index !1627
  %50 = icmp eq i32 %49, 0, !llfi_index !1628
  br i1 %50, label %quantum_add_hash.exit, label %.lr.ph.i, !llfi_index !1629

.lr.ph.i:                                         ; preds = %37
  %51 = shl i32 1, %38, !llfi_index !1630
  br label %52, !llfi_index !1631

; <label>:52                                      ; preds = %52, %.lr.ph.i
  %i.01.i = phi i32 [ %46, %.lr.ph.i ], [ %..i, %52 ], !llfi_index !1632
  %53 = add nsw i32 %i.01.i, 1, !llfi_index !1633
  %54 = icmp eq i32 %53, %51, !llfi_index !1634
  %..i = select i1 %54, i32 0, i32 %53, !llfi_index !1635
  %55 = sext i32 %..i to i64, !llfi_index !1636
  %56 = getelementptr inbounds i32* %15, i64 %55, !llfi_index !1637
  %57 = load i32* %56, align 4, !tbaa !1, !llfi_index !1638
  %58 = icmp eq i32 %57, 0, !llfi_index !1639
  br i1 %58, label %quantum_add_hash.exit, label %52, !llfi_index !1640

quantum_add_hash.exit:                            ; preds = %52, %37
  %.lcssa.i = phi i32* [ %48, %37 ], [ %56, %52 ], !llfi_index !1641
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1, !llfi_index !1642
  %59 = trunc i64 %indvars.iv.next79 to i32, !llfi_index !1643
  store i32 %59, i32* %.lcssa.i, align 4, !tbaa !1, !llfi_index !1644
  %60 = load i32* %9, align 4, !tbaa !223, !llfi_index !1645
  %61 = icmp slt i32 %59, %60, !llfi_index !1646
  br i1 %61, label %quantum_add_hash.exit._crit_edge, label %.preheader, !llfi_index !1647

quantum_add_hash.exit._crit_edge:                 ; preds = %quantum_add_hash.exit
  %.pre84 = load i32* %2, align 4, !tbaa !1023, !llfi_index !1648
  br label %37, !llfi_index !1649

; <label>:62                                      ; preds = %107, %.lr.ph50
  %indvars.iv75 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next76, %107 ], !llfi_index !1650
  %addsize.048 = phi i32 [ 0, %.lr.ph50 ], [ %addsize.2, %107 ], !llfi_index !1651
  %63 = getelementptr inbounds %struct.quantum_reg_node_struct* %25, i64 %indvars.iv75, i32 1, !llfi_index !1652
  %64 = load i64* %63, align 8, !tbaa !249, !llfi_index !1653
  %65 = xor i64 %64, %27, !llfi_index !1654
  %66 = lshr i64 %65, 32, !llfi_index !1655
  %key.masked.i.i15 = and i64 %65, 4294967295, !llfi_index !1656
  %67 = xor i64 %66, %key.masked.i.i15, !llfi_index !1657
  %68 = mul i64 %67, 2654404609, !llfi_index !1658
  %69 = trunc i64 %68 to i32, !llfi_index !1659
  %70 = lshr i32 %69, %31, !llfi_index !1660
  %71 = sext i32 %70 to i64, !llfi_index !1661
  %72 = getelementptr inbounds i32* %30, i64 %71, !llfi_index !1662
  %73 = load i32* %72, align 4, !tbaa !1, !llfi_index !1663
  %74 = icmp eq i32 %73, 0, !llfi_index !1664
  br i1 %74, label %quantum_get_state.exit20.thread, label %.lr.ph.i16, !llfi_index !1665

.lr.ph.i16:                                       ; preds = %81, %62
  %75 = phi i32 [ %86, %81 ], [ %73, %62 ], !llfi_index !1666
  %i.01.i17 = phi i32 [ %..i18, %81 ], [ %70, %62 ], !llfi_index !1667
  %76 = add nsw i32 %75, -1, !llfi_index !1668
  %77 = sext i32 %76 to i64, !llfi_index !1669
  %78 = getelementptr inbounds %struct.quantum_reg_node_struct* %25, i64 %77, i32 1, !llfi_index !1670
  %79 = load i64* %78, align 8, !tbaa !249, !llfi_index !1671
  %80 = icmp eq i64 %79, %65, !llfi_index !1672
  br i1 %80, label %quantum_get_state.exit20, label %81, !llfi_index !1673

; <label>:81                                      ; preds = %.lr.ph.i16
  %82 = add nsw i32 %i.01.i17, 1, !llfi_index !1674
  %83 = icmp eq i32 %82, %36, !llfi_index !1675
  %..i18 = select i1 %83, i32 0, i32 %82, !llfi_index !1676
  %84 = sext i32 %..i18 to i64, !llfi_index !1677
  %85 = getelementptr inbounds i32* %30, i64 %84, !llfi_index !1678
  %86 = load i32* %85, align 4, !tbaa !1, !llfi_index !1679
  %87 = icmp eq i32 %86, 0, !llfi_index !1680
  br i1 %87, label %quantum_get_state.exit20.thread, label %.lr.ph.i16, !llfi_index !1681

quantum_get_state.exit20:                         ; preds = %.lr.ph.i16
  %88 = icmp eq i32 %75, 0, !llfi_index !1682
  br i1 %88, label %quantum_get_state.exit20.thread, label %107, !llfi_index !1683

quantum_get_state.exit20.thread:                  ; preds = %quantum_get_state.exit20, %81, %62
  %89 = load float* %32, align 4, !llfi_index !1684
  %90 = load float* %33, align 4, !llfi_index !1685
  %91 = fcmp une float %89, 0.000000e+00, !llfi_index !1686
  %92 = fcmp une float %90, 0.000000e+00, !llfi_index !1687
  %93 = or i1 %91, %92, !llfi_index !1688
  br i1 %93, label %94, label %97, !llfi_index !1689

; <label>:94                                      ; preds = %quantum_get_state.exit20.thread
  %95 = and i64 %64, %27, !llfi_index !1690
  %not. = icmp ne i64 %95, 0, !llfi_index !1691
  %96 = zext i1 %not. to i32, !llfi_index !1692
  %addsize.0. = add nsw i32 %96, %addsize.048, !llfi_index !1693
  br label %97, !llfi_index !1694

; <label>:97                                      ; preds = %94, %quantum_get_state.exit20.thread
  %addsize.1 = phi i32 [ %addsize.048, %quantum_get_state.exit20.thread ], [ %addsize.0., %94 ], !llfi_index !1695
  %98 = load float* %34, align 4, !llfi_index !1696
  %99 = load float* %35, align 4, !llfi_index !1697
  %100 = fcmp une float %98, 0.000000e+00, !llfi_index !1698
  %101 = fcmp une float %99, 0.000000e+00, !llfi_index !1699
  %102 = or i1 %100, %101, !llfi_index !1700
  br i1 %102, label %103, label %107, !llfi_index !1701

; <label>:103                                     ; preds = %97
  %104 = and i64 %64, %27, !llfi_index !1702
  %105 = icmp eq i64 %104, 0, !llfi_index !1703
  %106 = zext i1 %105 to i32, !llfi_index !1704
  %.addsize.1 = add nsw i32 %106, %addsize.1, !llfi_index !1705
  br label %107, !llfi_index !1706

; <label>:107                                     ; preds = %103, %97, %quantum_get_state.exit20
  %addsize.2 = phi i32 [ %addsize.1, %97 ], [ %addsize.048, %quantum_get_state.exit20 ], [ %.addsize.1, %103 ], !llfi_index !1707
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1, !llfi_index !1708
  %108 = trunc i64 %indvars.iv.next76 to i32, !llfi_index !1709
  %109 = icmp slt i32 %108, %60, !llfi_index !1710
  br i1 %109, label %62, label %._crit_edge51, !llfi_index !1711

._crit_edge51:                                    ; preds = %107, %.preheader._crit_edge
  %110 = phi i32 [ %23, %.preheader._crit_edge ], [ %60, %107 ], !llfi_index !1712
  %111 = phi %struct.quantum_reg_node_struct* [ %.pre, %.preheader._crit_edge ], [ %25, %107 ], !llfi_index !1713
  %addsize.0.lcssa = phi i32 [ 0, %.preheader._crit_edge ], [ %addsize.2, %107 ], !llfi_index !1714
  %112 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !1715
  %113 = bitcast %struct.quantum_reg_node_struct* %111 to i8*, !llfi_index !1716
  %114 = add nsw i32 %110, %addsize.0.lcssa, !llfi_index !1717
  %115 = sext i32 %114 to i64, !llfi_index !1718
  %116 = shl nsw i64 %115, 4, !llfi_index !1719
  %117 = tail call i8* @realloc(i8* %113, i64 %116) #3, !llfi_index !1720
  %118 = bitcast i8* %117 to %struct.quantum_reg_node_struct*, !llfi_index !1721
  store %struct.quantum_reg_node_struct* %118, %struct.quantum_reg_node_struct** %112, align 8, !tbaa !228, !llfi_index !1722
  %119 = icmp eq i8* %117, null, !llfi_index !1723
  br i1 %119, label %120, label %124, !llfi_index !1724

; <label>:120                                     ; preds = %._crit_edge51
  %121 = load i32* %9, align 4, !tbaa !223, !llfi_index !1725
  %122 = add nsw i32 %121, %addsize.0.lcssa, !llfi_index !1726
  %123 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str21, i64 0, i64 0), i32 %122) #3, !llfi_index !1727
  tail call void @exit(i32 1) #8, !llfi_index !1728
  unreachable, !llfi_index !1729

; <label>:124                                     ; preds = %._crit_edge51
  %125 = sext i32 %addsize.0.lcssa to i64, !llfi_index !1730
  %126 = shl nsw i64 %125, 4, !llfi_index !1731
  %127 = tail call i64 @quantum_memman(i64 %126) #3, !llfi_index !1732
  %128 = icmp sgt i32 %addsize.0.lcssa, 0, !llfi_index !1733
  %129 = load i32* %9, align 4, !tbaa !223, !llfi_index !1734
  br i1 %128, label %.lr.ph42, label %._crit_edge43, !llfi_index !1735

.lr.ph42:                                         ; preds = %.lr.ph42, %124
  %130 = phi i32 [ %137, %.lr.ph42 ], [ %129, %124 ], !llfi_index !1736
  %i.340 = phi i32 [ %135, %.lr.ph42 ], [ 0, %124 ], !llfi_index !1737
  %131 = add nsw i32 %130, %i.340, !llfi_index !1738
  %132 = sext i32 %131 to i64, !llfi_index !1739
  %133 = load %struct.quantum_reg_node_struct** %112, align 8, !tbaa !228, !llfi_index !1740
  %134 = getelementptr inbounds %struct.quantum_reg_node_struct* %133, i64 %132, i32 0, i32 0, !llfi_index !1741
  %135 = add nsw i32 %i.340, 1, !llfi_index !1742
  %136 = bitcast float* %134 to i8*, !llfi_index !1743
  call void @llvm.memset.p0i8.i64(i8* %136, i8 0, i64 16, i32 4, i1 false), !llfi_index !1744
  %137 = load i32* %9, align 4, !tbaa !223, !llfi_index !1745
  %exitcond = icmp eq i32 %135, %addsize.0.lcssa, !llfi_index !1746
  br i1 %exitcond, label %._crit_edge43, label %.lr.ph42, !llfi_index !1747

._crit_edge43:                                    ; preds = %.lr.ph42, %124
  %138 = phi i32 [ %129, %124 ], [ %137, %.lr.ph42 ], !llfi_index !1748
  %139 = add nsw i32 %138, %addsize.0.lcssa, !llfi_index !1749
  %140 = sext i32 %139 to i64, !llfi_index !1750
  %141 = tail call noalias i8* @calloc(i64 %140, i64 1) #3, !llfi_index !1751
  %142 = icmp eq i8* %141, null, !llfi_index !1752
  br i1 %142, label %143, label %147, !llfi_index !1753

; <label>:143                                     ; preds = %._crit_edge43
  %144 = add nsw i32 %138, %addsize.0.lcssa, !llfi_index !1754
  %145 = sext i32 %144 to i64, !llfi_index !1755
  %146 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str3, i64 0, i64 0), i64 %145) #3, !llfi_index !1756
  tail call void @exit(i32 1) #8, !llfi_index !1757
  unreachable, !llfi_index !1758

; <label>:147                                     ; preds = %._crit_edge43
  %148 = sext i32 %138 to i64, !llfi_index !1759
  %149 = add i64 %148, %125, !llfi_index !1760
  %150 = tail call i64 @quantum_memman(i64 %149) #3, !llfi_index !1761
  %151 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !1762
  %152 = load i32* %151, align 4, !tbaa !22, !llfi_index !1763
  %153 = zext i32 %152 to i64, !llfi_index !1764
  %154 = shl i64 1, %153, !llfi_index !1765
  %155 = uitofp i64 %154 to double, !llfi_index !1766
  %156 = fdiv double 1.000000e+00, %155, !llfi_index !1767
  %157 = fdiv double %156, 1.000000e+06, !llfi_index !1768
  %158 = fptrunc double %157 to float, !llfi_index !1769
  %159 = load i32* %9, align 4, !tbaa !223, !llfi_index !1770
  %160 = icmp sgt i32 %159, 0, !llfi_index !1771
  br i1 %160, label %.lr.ph36, label %._crit_edge37, !llfi_index !1772

.lr.ph36:                                         ; preds = %147
  %161 = zext i32 %target to i64, !llfi_index !1773
  %162 = shl i64 1, %161, !llfi_index !1774
  %163 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !1775
  %164 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 0, !llfi_index !1776
  %165 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 1, !llfi_index !1777
  %166 = getelementptr inbounds { float, float }* %m.coerce1, i64 3, i32 0, !llfi_index !1778
  %167 = getelementptr inbounds { float, float }* %m.coerce1, i64 3, i32 1, !llfi_index !1779
  %168 = getelementptr inbounds { float, float }* %m.coerce1, i64 0, i32 0, !llfi_index !1780
  %169 = getelementptr inbounds { float, float }* %m.coerce1, i64 0, i32 1, !llfi_index !1781
  %170 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 0, !llfi_index !1782
  %171 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 1, !llfi_index !1783
  br label %172, !llfi_index !1784

; <label>:172                                     ; preds = %361, %.lr.ph36
  %indvars.iv70 = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next71, %361 ], !llfi_index !1785
  %k.033 = phi i32 [ %159, %.lr.ph36 ], [ %k.2, %361 ], !llfi_index !1786
  %173 = getelementptr inbounds i8* %141, i64 %indvars.iv70, !llfi_index !1787
  %174 = load i8* %173, align 1, !tbaa !1251, !llfi_index !1788
  %175 = icmp eq i8 %174, 0, !llfi_index !1789
  br i1 %175, label %176, label %361, !llfi_index !1790

; <label>:176                                     ; preds = %172
  %177 = load %struct.quantum_reg_node_struct** %112, align 8, !llfi_index !1791
  %178 = getelementptr inbounds %struct.quantum_reg_node_struct* %177, i64 %indvars.iv70, i32 1, !llfi_index !1792
  %179 = load i64* %178, align 8, !tbaa !249, !llfi_index !1793
  %180 = and i64 %179, %162, !llfi_index !1794
  %181 = trunc i64 %180 to i32, !llfi_index !1795
  %182 = xor i64 %179, %162, !llfi_index !1796
  %183 = load i32* %2, align 1, !llfi_index !1797
  %184 = load i32** %163, align 1, !llfi_index !1798
  %185 = lshr i64 %182, 32, !llfi_index !1799
  %key.masked.i.i8 = and i64 %182, 4294967295, !llfi_index !1800
  %186 = xor i64 %185, %key.masked.i.i8, !llfi_index !1801
  %187 = mul i64 %186, 2654404609, !llfi_index !1802
  %188 = trunc i64 %187 to i32, !llfi_index !1803
  %189 = sub nsw i32 32, %183, !llfi_index !1804
  %190 = lshr i32 %188, %189, !llfi_index !1805
  %191 = sext i32 %190 to i64, !llfi_index !1806
  %192 = getelementptr inbounds i32* %184, i64 %191, !llfi_index !1807
  %193 = load i32* %192, align 4, !tbaa !1, !llfi_index !1808
  %194 = icmp eq i32 %193, 0, !llfi_index !1809
  br i1 %194, label %quantum_get_state.exit.thread, label %.lr.ph.i9, !llfi_index !1810

.lr.ph.i9:                                        ; preds = %176
  %195 = shl i32 1, %183, !llfi_index !1811
  br label %196, !llfi_index !1812

; <label>:196                                     ; preds = %203, %.lr.ph.i9
  %197 = phi i32 [ %193, %.lr.ph.i9 ], [ %208, %203 ], !llfi_index !1813
  %i.01.i10 = phi i32 [ %190, %.lr.ph.i9 ], [ %..i11, %203 ], !llfi_index !1814
  %198 = add nsw i32 %197, -1, !llfi_index !1815
  %199 = sext i32 %198 to i64, !llfi_index !1816
  %200 = getelementptr inbounds %struct.quantum_reg_node_struct* %177, i64 %199, i32 1, !llfi_index !1817
  %201 = load i64* %200, align 8, !tbaa !249, !llfi_index !1818
  %202 = icmp eq i64 %201, %182, !llfi_index !1819
  br i1 %202, label %quantum_get_state.exit, label %203, !llfi_index !1820

; <label>:203                                     ; preds = %196
  %204 = add nsw i32 %i.01.i10, 1, !llfi_index !1821
  %205 = icmp eq i32 %204, %195, !llfi_index !1822
  %..i11 = select i1 %205, i32 0, i32 %204, !llfi_index !1823
  %206 = sext i32 %..i11 to i64, !llfi_index !1824
  %207 = getelementptr inbounds i32* %184, i64 %206, !llfi_index !1825
  %208 = load i32* %207, align 4, !tbaa !1, !llfi_index !1826
  %209 = icmp eq i32 %208, 0, !llfi_index !1827
  br i1 %209, label %quantum_get_state.exit.thread, label %196, !llfi_index !1828

quantum_get_state.exit.thread:                    ; preds = %203, %176
  %210 = getelementptr inbounds %struct.quantum_reg_node_struct* %177, i64 %indvars.iv70, i32 0, i32 0, !llfi_index !1829
  %211 = load float* %210, align 4, !llfi_index !1830
  %212 = getelementptr inbounds %struct.quantum_reg_node_struct* %177, i64 %indvars.iv70, i32 0, i32 1, !llfi_index !1831
  %213 = load float* %212, align 4, !llfi_index !1832
  br label %224, !llfi_index !1833

quantum_get_state.exit:                           ; preds = %196
  %214 = getelementptr inbounds %struct.quantum_reg_node_struct* %177, i64 %indvars.iv70, i32 0, i32 0, !llfi_index !1834
  %215 = load float* %214, align 4, !llfi_index !1835
  %216 = getelementptr inbounds %struct.quantum_reg_node_struct* %177, i64 %indvars.iv70, i32 0, i32 1, !llfi_index !1836
  %217 = load float* %216, align 4, !llfi_index !1837
  %218 = icmp sgt i32 %197, 0, !llfi_index !1838
  br i1 %218, label %219, label %224, !llfi_index !1839

; <label>:219                                     ; preds = %quantum_get_state.exit
  %220 = getelementptr inbounds %struct.quantum_reg_node_struct* %177, i64 %199, i32 0, i32 0, !llfi_index !1840
  %221 = load float* %220, align 4, !llfi_index !1841
  %222 = getelementptr inbounds %struct.quantum_reg_node_struct* %177, i64 %199, i32 0, i32 1, !llfi_index !1842
  %223 = load float* %222, align 4, !llfi_index !1843
  br label %224, !llfi_index !1844

; <label>:224                                     ; preds = %219, %quantum_get_state.exit, %quantum_get_state.exit.thread
  %225 = phi i1 [ true, %219 ], [ false, %quantum_get_state.exit ], [ false, %quantum_get_state.exit.thread ], !llfi_index !1845
  %226 = phi float [ %217, %219 ], [ %217, %quantum_get_state.exit ], [ %213, %quantum_get_state.exit.thread ], !llfi_index !1846
  %227 = phi float [ %215, %219 ], [ %215, %quantum_get_state.exit ], [ %211, %quantum_get_state.exit.thread ], !llfi_index !1847
  %.0.i23 = phi i32 [ %198, %219 ], [ %198, %quantum_get_state.exit ], [ -1, %quantum_get_state.exit.thread ], !llfi_index !1848
  %tnot.sroa.7.0 = phi float [ %223, %219 ], [ 0.000000e+00, %quantum_get_state.exit ], [ 0.000000e+00, %quantum_get_state.exit.thread ], !llfi_index !1849
  %tnot.sroa.0.0 = phi float [ %221, %219 ], [ 0.000000e+00, %quantum_get_state.exit ], [ 0.000000e+00, %quantum_get_state.exit.thread ], !llfi_index !1850
  %228 = icmp ne i32 %181, 0, !llfi_index !1851
  br i1 %228, label %229, label %250, !llfi_index !1852

; <label>:229                                     ; preds = %224
  %230 = load float* %164, align 4, !llfi_index !1853
  %231 = load float* %165, align 4, !llfi_index !1854
  %232 = fmul float %tnot.sroa.0.0, %230, !llfi_index !1855
  %233 = fmul float %tnot.sroa.7.0, %231, !llfi_index !1856
  %234 = fsub float %232, %233, !llfi_index !1857
  %235 = fmul float %tnot.sroa.0.0, %231, !llfi_index !1858
  %236 = fmul float %tnot.sroa.7.0, %230, !llfi_index !1859
  %237 = fadd float %236, %235, !llfi_index !1860
  %238 = load float* %166, align 4, !llfi_index !1861
  %239 = load float* %167, align 4, !llfi_index !1862
  %240 = fmul float %227, %238, !llfi_index !1863
  %241 = fmul float %226, %239, !llfi_index !1864
  %242 = fsub float %240, %241, !llfi_index !1865
  %243 = fmul float %227, %239, !llfi_index !1866
  %244 = fmul float %226, %238, !llfi_index !1867
  %245 = fadd float %244, %243, !llfi_index !1868
  %246 = fadd float %234, %242, !llfi_index !1869
  %247 = fadd float %237, %245, !llfi_index !1870
  %248 = getelementptr inbounds %struct.quantum_reg_node_struct* %177, i64 %indvars.iv70, i32 0, i32 0, !llfi_index !1871
  %249 = getelementptr inbounds %struct.quantum_reg_node_struct* %177, i64 %indvars.iv70, i32 0, i32 1, !llfi_index !1872
  store float %246, float* %248, align 4, !llfi_index !1873
  store float %247, float* %249, align 4, !llfi_index !1874
  br label %271, !llfi_index !1875

; <label>:250                                     ; preds = %224
  %251 = load float* %168, align 4, !llfi_index !1876
  %252 = load float* %169, align 4, !llfi_index !1877
  %253 = fmul float %227, %251, !llfi_index !1878
  %254 = fmul float %226, %252, !llfi_index !1879
  %255 = fsub float %253, %254, !llfi_index !1880
  %256 = fmul float %227, %252, !llfi_index !1881
  %257 = fmul float %226, %251, !llfi_index !1882
  %258 = fadd float %257, %256, !llfi_index !1883
  %259 = load float* %170, align 4, !llfi_index !1884
  %260 = load float* %171, align 4, !llfi_index !1885
  %261 = fmul float %tnot.sroa.0.0, %259, !llfi_index !1886
  %262 = fmul float %tnot.sroa.7.0, %260, !llfi_index !1887
  %263 = fsub float %261, %262, !llfi_index !1888
  %264 = fmul float %tnot.sroa.0.0, %260, !llfi_index !1889
  %265 = fmul float %tnot.sroa.7.0, %259, !llfi_index !1890
  %266 = fadd float %265, %264, !llfi_index !1891
  %267 = fadd float %255, %263, !llfi_index !1892
  %268 = fadd float %258, %266, !llfi_index !1893
  %269 = getelementptr inbounds %struct.quantum_reg_node_struct* %177, i64 %indvars.iv70, i32 0, i32 0, !llfi_index !1894
  %270 = getelementptr inbounds %struct.quantum_reg_node_struct* %177, i64 %indvars.iv70, i32 0, i32 1, !llfi_index !1895
  store float %267, float* %269, align 4, !llfi_index !1896
  store float %268, float* %270, align 4, !llfi_index !1897
  br label %271, !llfi_index !1898

; <label>:271                                     ; preds = %250, %229
  br i1 %225, label %272, label %318, !llfi_index !1899

; <label>:272                                     ; preds = %271
  br i1 %228, label %273, label %.thread, !llfi_index !1900

; <label>:273                                     ; preds = %272
  %274 = load float* %168, align 4, !llfi_index !1901
  %275 = load float* %169, align 4, !llfi_index !1902
  %276 = fmul float %tnot.sroa.0.0, %274, !llfi_index !1903
  %277 = fmul float %tnot.sroa.7.0, %275, !llfi_index !1904
  %278 = fsub float %276, %277, !llfi_index !1905
  %279 = fmul float %tnot.sroa.0.0, %275, !llfi_index !1906
  %280 = fmul float %tnot.sroa.7.0, %274, !llfi_index !1907
  %281 = fadd float %280, %279, !llfi_index !1908
  %282 = load float* %170, align 4, !llfi_index !1909
  %283 = load float* %171, align 4, !llfi_index !1910
  %284 = fmul float %227, %282, !llfi_index !1911
  %285 = fmul float %226, %283, !llfi_index !1912
  %286 = fsub float %284, %285, !llfi_index !1913
  %287 = fmul float %227, %283, !llfi_index !1914
  %288 = fmul float %226, %282, !llfi_index !1915
  %289 = fadd float %288, %287, !llfi_index !1916
  %290 = fadd float %278, %286, !llfi_index !1917
  %291 = fadd float %281, %289, !llfi_index !1918
  %292 = sext i32 %.0.i23 to i64, !llfi_index !1919
  %293 = load %struct.quantum_reg_node_struct** %112, align 8, !tbaa !228, !llfi_index !1920
  %294 = getelementptr inbounds %struct.quantum_reg_node_struct* %293, i64 %292, i32 0, i32 0, !llfi_index !1921
  %295 = getelementptr inbounds %struct.quantum_reg_node_struct* %293, i64 %292, i32 0, i32 1, !llfi_index !1922
  store float %290, float* %294, align 4, !llfi_index !1923
  store float %291, float* %295, align 4, !llfi_index !1924
  br label %358, !llfi_index !1925

.thread:                                          ; preds = %272
  %296 = load float* %164, align 4, !llfi_index !1926
  %297 = load float* %165, align 4, !llfi_index !1927
  %298 = fmul float %227, %296, !llfi_index !1928
  %299 = fmul float %226, %297, !llfi_index !1929
  %300 = fsub float %298, %299, !llfi_index !1930
  %301 = fmul float %227, %297, !llfi_index !1931
  %302 = fmul float %226, %296, !llfi_index !1932
  %303 = fadd float %302, %301, !llfi_index !1933
  %304 = load float* %166, align 4, !llfi_index !1934
  %305 = load float* %167, align 4, !llfi_index !1935
  %306 = fmul float %tnot.sroa.0.0, %304, !llfi_index !1936
  %307 = fmul float %tnot.sroa.7.0, %305, !llfi_index !1937
  %308 = fsub float %306, %307, !llfi_index !1938
  %309 = fmul float %tnot.sroa.0.0, %305, !llfi_index !1939
  %310 = fmul float %tnot.sroa.7.0, %304, !llfi_index !1940
  %311 = fadd float %310, %309, !llfi_index !1941
  %312 = fadd float %300, %308, !llfi_index !1942
  %313 = fadd float %303, %311, !llfi_index !1943
  %314 = sext i32 %.0.i23 to i64, !llfi_index !1944
  %315 = load %struct.quantum_reg_node_struct** %112, align 8, !tbaa !228, !llfi_index !1945
  %316 = getelementptr inbounds %struct.quantum_reg_node_struct* %315, i64 %314, i32 0, i32 0, !llfi_index !1946
  %317 = getelementptr inbounds %struct.quantum_reg_node_struct* %315, i64 %314, i32 0, i32 1, !llfi_index !1947
  store float %312, float* %316, align 4, !llfi_index !1948
  store float %313, float* %317, align 4, !llfi_index !1949
  br label %359, !llfi_index !1950

; <label>:318                                     ; preds = %271
  %319 = load float* %170, align 4, !llfi_index !1951
  %320 = load float* %171, align 4, !llfi_index !1952
  %321 = fcmp oeq float %319, 0.000000e+00, !llfi_index !1953
  %322 = fcmp oeq float %320, 0.000000e+00, !llfi_index !1954
  %323 = and i1 %321, %322, !llfi_index !1955
  %or.cond = and i1 %323, %228, !llfi_index !1956
  br i1 %or.cond, label %split38, label %324, !llfi_index !1957

; <label>:324                                     ; preds = %318
  %325 = load float* %164, align 4, !llfi_index !1958
  %326 = load float* %165, align 4, !llfi_index !1959
  %notlhs = fcmp une float %325, 0.000000e+00, !llfi_index !1960
  %notrhs = fcmp une float %326, 0.000000e+00, !llfi_index !1961
  %.not = or i1 %notrhs, %notlhs, !llfi_index !1962
  %or.cond3 = or i1 %.not, %228, !llfi_index !1963
  br i1 %or.cond3, label %327, label %split38, !llfi_index !1964

; <label>:327                                     ; preds = %324
  %328 = load %struct.quantum_reg_node_struct** %112, align 8, !tbaa !228, !llfi_index !1965
  %329 = getelementptr inbounds %struct.quantum_reg_node_struct* %328, i64 %indvars.iv70, i32 1, !llfi_index !1966
  %330 = load i64* %329, align 8, !tbaa !249, !llfi_index !1967
  %331 = xor i64 %330, %162, !llfi_index !1968
  %332 = sext i32 %k.033 to i64, !llfi_index !1969
  %333 = getelementptr inbounds %struct.quantum_reg_node_struct* %328, i64 %332, i32 1, !llfi_index !1970
  store i64 %331, i64* %333, align 8, !tbaa !249, !llfi_index !1971
  br i1 %228, label %334, label %345, !llfi_index !1972

; <label>:334                                     ; preds = %327
  %335 = load float* %170, align 4, !llfi_index !1973
  %336 = load float* %171, align 4, !llfi_index !1974
  %337 = fmul float %227, %335, !llfi_index !1975
  %338 = fmul float %226, %336, !llfi_index !1976
  %339 = fsub float %337, %338, !llfi_index !1977
  %340 = fmul float %227, %336, !llfi_index !1978
  %341 = fmul float %226, %335, !llfi_index !1979
  %342 = fadd float %341, %340, !llfi_index !1980
  %343 = getelementptr inbounds %struct.quantum_reg_node_struct* %328, i64 %332, i32 0, i32 0, !llfi_index !1981
  %344 = getelementptr inbounds %struct.quantum_reg_node_struct* %328, i64 %332, i32 0, i32 1, !llfi_index !1982
  store float %339, float* %343, align 4, !llfi_index !1983
  store float %342, float* %344, align 4, !llfi_index !1984
  br label %356, !llfi_index !1985

; <label>:345                                     ; preds = %327
  %346 = load float* %164, align 4, !llfi_index !1986
  %347 = load float* %165, align 4, !llfi_index !1987
  %348 = fmul float %227, %346, !llfi_index !1988
  %349 = fmul float %226, %347, !llfi_index !1989
  %350 = fsub float %348, %349, !llfi_index !1990
  %351 = fmul float %227, %347, !llfi_index !1991
  %352 = fmul float %226, %346, !llfi_index !1992
  %353 = fadd float %352, %351, !llfi_index !1993
  %354 = getelementptr inbounds %struct.quantum_reg_node_struct* %328, i64 %332, i32 0, i32 0, !llfi_index !1994
  %355 = getelementptr inbounds %struct.quantum_reg_node_struct* %328, i64 %332, i32 0, i32 1, !llfi_index !1995
  store float %350, float* %354, align 4, !llfi_index !1996
  store float %353, float* %355, align 4, !llfi_index !1997
  br label %356, !llfi_index !1998

; <label>:356                                     ; preds = %345, %334
  %357 = add nsw i32 %k.033, 1, !llfi_index !1999
  br label %358, !llfi_index !2000

; <label>:358                                     ; preds = %356, %273
  %k.1 = phi i32 [ %k.033, %273 ], [ %357, %356 ], !llfi_index !2001
  br i1 %225, label %._crit_edge85, label %361, !llfi_index !2002

._crit_edge85:                                    ; preds = %358
  %.pre86 = sext i32 %.0.i23 to i64, !llfi_index !2003
  br label %359, !llfi_index !2004

; <label>:359                                     ; preds = %._crit_edge85, %.thread
  %.pre-phi = phi i64 [ %.pre86, %._crit_edge85 ], [ %314, %.thread ], !llfi_index !2005
  %k.124 = phi i32 [ %k.1, %._crit_edge85 ], [ %k.033, %.thread ], !llfi_index !2006
  %360 = getelementptr inbounds i8* %141, i64 %.pre-phi, !llfi_index !2007
  store i8 1, i8* %360, align 1, !tbaa !1251, !llfi_index !2008
  br label %361, !llfi_index !2009

; <label>:361                                     ; preds = %359, %358, %172
  %k.2 = phi i32 [ %k.033, %172 ], [ %k.124, %359 ], [ %k.1, %358 ], !llfi_index !2010
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1, !llfi_index !2011
  %362 = load i32* %9, align 4, !tbaa !223, !llfi_index !2012
  %363 = trunc i64 %indvars.iv.next71 to i32, !llfi_index !2013
  %364 = icmp slt i32 %363, %362, !llfi_index !2014
  br i1 %364, label %172, label %._crit_edge37, !llfi_index !2015

split38:                                          ; preds = %324, %318
  %.pre82 = load i32* %9, align 4, !tbaa !223, !llfi_index !2016
  br label %._crit_edge37, !llfi_index !2017

._crit_edge37:                                    ; preds = %split38, %361, %147
  %365 = phi i32 [ %.pre82, %split38 ], [ %159, %147 ], [ %362, %361 ], !llfi_index !2018
  %366 = add nsw i32 %365, %addsize.0.lcssa, !llfi_index !2019
  store i32 %366, i32* %9, align 4, !tbaa !223, !llfi_index !2020
  tail call void @free(i8* %141) #3, !llfi_index !2021
  %367 = load i32* %9, align 4, !tbaa !223, !llfi_index !2022
  %368 = sub nsw i32 0, %367, !llfi_index !2023
  %369 = sext i32 %368 to i64, !llfi_index !2024
  %370 = tail call i64 @quantum_memman(i64 %369) #3, !llfi_index !2025
  %371 = load i32* %9, align 4, !tbaa !223, !llfi_index !2026
  %372 = icmp sgt i32 %371, 0, !llfi_index !2027
  br i1 %372, label %.lr.ph, label %._crit_edge.thread, !llfi_index !2028

.lr.ph:                                           ; preds = %399, %._crit_edge37
  %373 = phi i32 [ %400, %399 ], [ %371, %._crit_edge37 ], !llfi_index !2029
  %indvars.iv = phi i64 [ %indvars.iv.next, %399 ], [ 0, %._crit_edge37 ], !llfi_index !2030
  %j.026 = phi i32 [ %j.1, %399 ], [ 0, %._crit_edge37 ], !llfi_index !2031
  %decsize.025 = phi i32 [ %decsize.1, %399 ], [ 0, %._crit_edge37 ], !llfi_index !2032
  %374 = load %struct.quantum_reg_node_struct** %112, align 8, !tbaa !228, !llfi_index !2033
  %375 = getelementptr inbounds %struct.quantum_reg_node_struct* %374, i64 %indvars.iv, i32 0, i32 0, !llfi_index !2034
  %376 = bitcast float* %375 to <2 x float>*, !llfi_index !2035
  %377 = load <2 x float>* %376, align 4, !llfi_index !2036
  %378 = fmul <2 x float> %377, %377, !llfi_index !2037
  %379 = extractelement <2 x float> %378, i32 0, !llfi_index !2038
  %380 = extractelement <2 x float> %378, i32 1, !llfi_index !2039
  %381 = fadd float %379, %380, !llfi_index !2040
  %382 = fcmp olt float %381, %158, !llfi_index !2041
  br i1 %382, label %383, label %386, !llfi_index !2042

; <label>:383                                     ; preds = %.lr.ph
  %384 = add nsw i32 %j.026, 1, !llfi_index !2043
  %385 = add nsw i32 %decsize.025, 1, !llfi_index !2044
  br label %399, !llfi_index !2045

; <label>:386                                     ; preds = %.lr.ph
  %387 = icmp eq i32 %j.026, 0, !llfi_index !2046
  br i1 %387, label %399, label %388, !llfi_index !2047

; <label>:388                                     ; preds = %386
  %389 = getelementptr inbounds %struct.quantum_reg_node_struct* %374, i64 %indvars.iv, i32 1, !llfi_index !2048
  %390 = load i64* %389, align 8, !tbaa !249, !llfi_index !2049
  %391 = trunc i64 %indvars.iv to i32, !llfi_index !2050
  %392 = sub nsw i32 %391, %j.026, !llfi_index !2051
  %393 = sext i32 %392 to i64, !llfi_index !2052
  %394 = getelementptr inbounds %struct.quantum_reg_node_struct* %374, i64 %393, i32 1, !llfi_index !2053
  store i64 %390, i64* %394, align 8, !tbaa !249, !llfi_index !2054
  %395 = getelementptr inbounds %struct.quantum_reg_node_struct* %374, i64 %393, i32 0, i32 0, !llfi_index !2055
  %396 = getelementptr inbounds %struct.quantum_reg_node_struct* %374, i64 %393, i32 0, i32 1, !llfi_index !2056
  %397 = extractelement <2 x float> %377, i32 0, !llfi_index !2057
  store float %397, float* %395, align 4, !llfi_index !2058
  %398 = extractelement <2 x float> %377, i32 1, !llfi_index !2059
  store float %398, float* %396, align 4, !llfi_index !2060
  %.pre83 = load i32* %9, align 4, !tbaa !223, !llfi_index !2061
  br label %399, !llfi_index !2062

; <label>:399                                     ; preds = %388, %386, %383
  %400 = phi i32 [ %373, %383 ], [ %.pre83, %388 ], [ %373, %386 ], !llfi_index !2063
  %decsize.1 = phi i32 [ %385, %383 ], [ %decsize.025, %388 ], [ %decsize.025, %386 ], !llfi_index !2064
  %j.1 = phi i32 [ %384, %383 ], [ %j.026, %388 ], [ 0, %386 ], !llfi_index !2065
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2066
  %401 = trunc i64 %indvars.iv.next to i32, !llfi_index !2067
  %402 = icmp slt i32 %401, %400, !llfi_index !2068
  br i1 %402, label %.lr.ph, label %._crit_edge, !llfi_index !2069

._crit_edge:                                      ; preds = %399
  %403 = icmp eq i32 %decsize.1, 0, !llfi_index !2070
  br i1 %403, label %._crit_edge.thread, label %404, !llfi_index !2071

; <label>:404                                     ; preds = %._crit_edge
  %405 = sub nsw i32 %400, %decsize.1, !llfi_index !2072
  store i32 %405, i32* %9, align 4, !tbaa !223, !llfi_index !2073
  %406 = load %struct.quantum_reg_node_struct** %112, align 8, !tbaa !228, !llfi_index !2074
  %407 = bitcast %struct.quantum_reg_node_struct* %406 to i8*, !llfi_index !2075
  %408 = sext i32 %405 to i64, !llfi_index !2076
  %409 = shl nsw i64 %408, 4, !llfi_index !2077
  %410 = tail call i8* @realloc(i8* %407, i64 %409) #3, !llfi_index !2078
  %411 = bitcast i8* %410 to %struct.quantum_reg_node_struct*, !llfi_index !2079
  store %struct.quantum_reg_node_struct* %411, %struct.quantum_reg_node_struct** %112, align 8, !tbaa !228, !llfi_index !2080
  %412 = icmp eq i8* %410, null, !llfi_index !2081
  br i1 %412, label %413, label %417, !llfi_index !2082

; <label>:413                                     ; preds = %404
  %414 = load i32* %9, align 4, !tbaa !223, !llfi_index !2083
  %415 = add nsw i32 %414, %addsize.0.lcssa, !llfi_index !2084
  %416 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str21, i64 0, i64 0), i32 %415) #3, !llfi_index !2085
  tail call void @exit(i32 1) #8, !llfi_index !2086
  unreachable, !llfi_index !2087

; <label>:417                                     ; preds = %404
  %418 = sub nsw i32 0, %decsize.1, !llfi_index !2088
  %419 = sext i32 %418 to i64, !llfi_index !2089
  %420 = shl nsw i64 %419, 4, !llfi_index !2090
  %421 = tail call i64 @quantum_memman(i64 %420) #3, !llfi_index !2091
  br label %._crit_edge.thread, !llfi_index !2092

._crit_edge.thread:                               ; preds = %417, %._crit_edge, %._crit_edge37
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !2093
  ret void, !llfi_index !2094
}

; Function Attrs: nounwind uwtable
define void @quantum_hadamard(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %m = alloca %struct.quantum_matrix_struct, align 8, !llfi_index !2095
  %1 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 6, i32 %target) #3, !llfi_index !2096
  %2 = icmp eq i32 %1, 0, !llfi_index !2097
  br i1 %2, label %3, label %22, !llfi_index !2098

; <label>:3                                       ; preds = %0
  %4 = call { i64, { float, float }* } @quantum_new_matrix(i32 2, i32 2) #3, !llfi_index !2099
  %5 = extractvalue { i64, { float, float }* } %4, 0, !llfi_index !2100
  %6 = extractvalue { i64, { float, float }* } %4, 1, !llfi_index !2101
  %7 = bitcast %struct.quantum_matrix_struct* %m to i64*, !llfi_index !2102
  store i64 %5, i64* %7, align 8, !llfi_index !2103
  %8 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 2, !llfi_index !2104
  store { float, float }* %6, { float, float }** %8, align 8, !llfi_index !2105
  %9 = getelementptr inbounds { float, float }* %6, i64 0, i32 0, !llfi_index !2106
  %10 = getelementptr inbounds { float, float }* %6, i64 0, i32 1, !llfi_index !2107
  store float 0x3FE6A09E60000000, float* %9, align 4, !llfi_index !2108
  store float 0.000000e+00, float* %10, align 4, !llfi_index !2109
  %11 = load { float, float }** %8, align 8, !tbaa !2110, !llfi_index !2112
  %12 = getelementptr inbounds { float, float }* %11, i64 1, i32 0, !llfi_index !2113
  %13 = getelementptr inbounds { float, float }* %11, i64 1, i32 1, !llfi_index !2114
  store float 0x3FE6A09E60000000, float* %12, align 4, !llfi_index !2115
  store float 0.000000e+00, float* %13, align 4, !llfi_index !2116
  %14 = load { float, float }** %8, align 8, !tbaa !2110, !llfi_index !2117
  %15 = getelementptr inbounds { float, float }* %14, i64 2, i32 0, !llfi_index !2118
  %16 = getelementptr inbounds { float, float }* %14, i64 2, i32 1, !llfi_index !2119
  store float 0x3FE6A09E60000000, float* %15, align 4, !llfi_index !2120
  store float 0.000000e+00, float* %16, align 4, !llfi_index !2121
  %17 = load { float, float }** %8, align 8, !tbaa !2110, !llfi_index !2122
  %18 = getelementptr inbounds { float, float }* %17, i64 3, i32 0, !llfi_index !2123
  %19 = getelementptr inbounds { float, float }* %17, i64 3, i32 1, !llfi_index !2124
  store float 0xBFE6A09E60000000, float* %18, align 4, !llfi_index !2125
  store float 0.000000e+00, float* %19, align 4, !llfi_index !2126
  %20 = load i64* %7, align 8, !llfi_index !2127
  %21 = load { float, float }** %8, align 8, !llfi_index !2128
  call void @quantum_gate1(i32 %target, i64 %20, { float, float }* %21, %struct.quantum_reg_struct* %reg), !llfi_index !2129
  call void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m) #3, !llfi_index !2130
  br label %22, !llfi_index !2131

; <label>:22                                      ; preds = %3, %0
  ret void, !llfi_index !2132
}

; Function Attrs: nounwind uwtable
define void @quantum_walsh(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %m.i = alloca %struct.quantum_matrix_struct, align 8, !llfi_index !2133
  %1 = icmp sgt i32 %width, 0, !llfi_index !2134
  br i1 %1, label %.lr.ph, label %._crit_edge, !llfi_index !2135

.lr.ph:                                           ; preds = %0
  %2 = bitcast %struct.quantum_matrix_struct* %m.i to i8*, !llfi_index !2136
  %3 = bitcast %struct.quantum_matrix_struct* %m.i to i64*, !llfi_index !2137
  %4 = getelementptr inbounds %struct.quantum_matrix_struct* %m.i, i64 0, i32 2, !llfi_index !2138
  br label %5, !llfi_index !2139

; <label>:5                                       ; preds = %quantum_hadamard.exit, %.lr.ph
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %25, %quantum_hadamard.exit ], !llfi_index !2140
  call void @llvm.lifetime.start(i64 16, i8* %2) #3, !llfi_index !2141
  %6 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 6, i32 %i.01) #3, !llfi_index !2142
  %7 = icmp eq i32 %6, 0, !llfi_index !2143
  br i1 %7, label %8, label %quantum_hadamard.exit, !llfi_index !2144

; <label>:8                                       ; preds = %5
  %9 = call { i64, { float, float }* } @quantum_new_matrix(i32 2, i32 2) #3, !llfi_index !2145
  %10 = extractvalue { i64, { float, float }* } %9, 0, !llfi_index !2146
  %11 = extractvalue { i64, { float, float }* } %9, 1, !llfi_index !2147
  store i64 %10, i64* %3, align 8, !llfi_index !2148
  store { float, float }* %11, { float, float }** %4, align 8, !llfi_index !2149
  %12 = getelementptr inbounds { float, float }* %11, i64 0, i32 0, !llfi_index !2150
  %13 = getelementptr inbounds { float, float }* %11, i64 0, i32 1, !llfi_index !2151
  store float 0x3FE6A09E60000000, float* %12, align 4, !llfi_index !2152
  store float 0.000000e+00, float* %13, align 4, !llfi_index !2153
  %14 = load { float, float }** %4, align 8, !tbaa !2110, !llfi_index !2154
  %15 = getelementptr inbounds { float, float }* %14, i64 1, i32 0, !llfi_index !2155
  %16 = getelementptr inbounds { float, float }* %14, i64 1, i32 1, !llfi_index !2156
  store float 0x3FE6A09E60000000, float* %15, align 4, !llfi_index !2157
  store float 0.000000e+00, float* %16, align 4, !llfi_index !2158
  %17 = load { float, float }** %4, align 8, !tbaa !2110, !llfi_index !2159
  %18 = getelementptr inbounds { float, float }* %17, i64 2, i32 0, !llfi_index !2160
  %19 = getelementptr inbounds { float, float }* %17, i64 2, i32 1, !llfi_index !2161
  store float 0x3FE6A09E60000000, float* %18, align 4, !llfi_index !2162
  store float 0.000000e+00, float* %19, align 4, !llfi_index !2163
  %20 = load { float, float }** %4, align 8, !tbaa !2110, !llfi_index !2164
  %21 = getelementptr inbounds { float, float }* %20, i64 3, i32 0, !llfi_index !2165
  %22 = getelementptr inbounds { float, float }* %20, i64 3, i32 1, !llfi_index !2166
  store float 0xBFE6A09E60000000, float* %21, align 4, !llfi_index !2167
  store float 0.000000e+00, float* %22, align 4, !llfi_index !2168
  %23 = load i64* %3, align 8, !llfi_index !2169
  %24 = load { float, float }** %4, align 8, !llfi_index !2170
  call void @quantum_gate1(i32 %i.01, i64 %23, { float, float }* %24, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2171
  call void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m.i) #3, !llfi_index !2172
  br label %quantum_hadamard.exit, !llfi_index !2173

quantum_hadamard.exit:                            ; preds = %8, %5
  call void @llvm.lifetime.end(i64 16, i8* %2) #3, !llfi_index !2174
  %25 = add nsw i32 %i.01, 1, !llfi_index !2175
  %exitcond = icmp eq i32 %25, %width, !llfi_index !2176
  br i1 %exitcond, label %._crit_edge, label %5, !llfi_index !2177

._crit_edge:                                      ; preds = %quantum_hadamard.exit, %0
  ret void, !llfi_index !2178
}

; Function Attrs: nounwind uwtable
define void @quantum_r_x(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
  %m = alloca %struct.quantum_matrix_struct, align 8, !llfi_index !2179
  %1 = fpext float %gamma to double, !llfi_index !2180
  %2 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 7, i32 %target, double %1) #3, !llfi_index !2181
  %3 = icmp eq i32 %2, 0, !llfi_index !2182
  br i1 %3, label %4, label %41, !llfi_index !2183

; <label>:4                                       ; preds = %0
  %5 = call { i64, { float, float }* } @quantum_new_matrix(i32 2, i32 2) #3, !llfi_index !2184
  %6 = extractvalue { i64, { float, float }* } %5, 0, !llfi_index !2185
  %7 = extractvalue { i64, { float, float }* } %5, 1, !llfi_index !2186
  %8 = bitcast %struct.quantum_matrix_struct* %m to i64*, !llfi_index !2187
  store i64 %6, i64* %8, align 8, !llfi_index !2188
  %9 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 2, !llfi_index !2189
  store { float, float }* %7, { float, float }** %9, align 8, !llfi_index !2190
  %10 = fmul float %gamma, 5.000000e-01, !llfi_index !2191
  %11 = fpext float %10 to double, !llfi_index !2192
  %12 = call double @cos(double %11) #3, !llfi_index !2193
  %13 = fptrunc double %12 to float, !llfi_index !2194
  %14 = getelementptr inbounds { float, float }* %7, i64 0, i32 0, !llfi_index !2195
  %15 = getelementptr inbounds { float, float }* %7, i64 0, i32 1, !llfi_index !2196
  store float %13, float* %14, align 4, !llfi_index !2197
  store float 0.000000e+00, float* %15, align 4, !llfi_index !2198
  %16 = call double @sin(double %11) #3, !llfi_index !2199
  %17 = fmul double %16, -0.000000e+00, !llfi_index !2200
  %18 = fadd double %17, 0.000000e+00, !llfi_index !2201
  %19 = fmul double %16, -1.000000e+00, !llfi_index !2202
  %20 = fptrunc double %18 to float, !llfi_index !2203
  %21 = fptrunc double %19 to float, !llfi_index !2204
  %22 = load { float, float }** %9, align 8, !tbaa !2110, !llfi_index !2205
  %23 = getelementptr inbounds { float, float }* %22, i64 1, i32 0, !llfi_index !2206
  %24 = getelementptr inbounds { float, float }* %22, i64 1, i32 1, !llfi_index !2207
  store float %20, float* %23, align 4, !llfi_index !2208
  store float %21, float* %24, align 4, !llfi_index !2209
  %25 = call double @sin(double %11) #3, !llfi_index !2210
  %26 = fmul double %25, -0.000000e+00, !llfi_index !2211
  %27 = fadd double %26, 0.000000e+00, !llfi_index !2212
  %28 = fmul double %25, -1.000000e+00, !llfi_index !2213
  %29 = fptrunc double %27 to float, !llfi_index !2214
  %30 = fptrunc double %28 to float, !llfi_index !2215
  %31 = load { float, float }** %9, align 8, !tbaa !2110, !llfi_index !2216
  %32 = getelementptr inbounds { float, float }* %31, i64 2, i32 0, !llfi_index !2217
  %33 = getelementptr inbounds { float, float }* %31, i64 2, i32 1, !llfi_index !2218
  store float %29, float* %32, align 4, !llfi_index !2219
  store float %30, float* %33, align 4, !llfi_index !2220
  %34 = call double @cos(double %11) #3, !llfi_index !2221
  %35 = fptrunc double %34 to float, !llfi_index !2222
  %36 = load { float, float }** %9, align 8, !tbaa !2110, !llfi_index !2223
  %37 = getelementptr inbounds { float, float }* %36, i64 3, i32 0, !llfi_index !2224
  %38 = getelementptr inbounds { float, float }* %36, i64 3, i32 1, !llfi_index !2225
  store float %35, float* %37, align 4, !llfi_index !2226
  store float 0.000000e+00, float* %38, align 4, !llfi_index !2227
  %39 = load i64* %8, align 8, !llfi_index !2228
  %40 = load { float, float }** %9, align 8, !llfi_index !2229
  call void @quantum_gate1(i32 %target, i64 %39, { float, float }* %40, %struct.quantum_reg_struct* %reg), !llfi_index !2230
  call void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m) #3, !llfi_index !2231
  br label %41, !llfi_index !2232

; <label>:41                                      ; preds = %4, %0
  ret void, !llfi_index !2233
}

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind uwtable
define void @quantum_r_y(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
  %m = alloca %struct.quantum_matrix_struct, align 8, !llfi_index !2234
  %1 = fpext float %gamma to double, !llfi_index !2235
  %2 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 8, i32 %target, double %1) #3, !llfi_index !2236
  %3 = icmp eq i32 %2, 0, !llfi_index !2237
  br i1 %3, label %4, label %34, !llfi_index !2238

; <label>:4                                       ; preds = %0
  %5 = call { i64, { float, float }* } @quantum_new_matrix(i32 2, i32 2) #3, !llfi_index !2239
  %6 = extractvalue { i64, { float, float }* } %5, 0, !llfi_index !2240
  %7 = extractvalue { i64, { float, float }* } %5, 1, !llfi_index !2241
  %8 = bitcast %struct.quantum_matrix_struct* %m to i64*, !llfi_index !2242
  store i64 %6, i64* %8, align 8, !llfi_index !2243
  %9 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 2, !llfi_index !2244
  store { float, float }* %7, { float, float }** %9, align 8, !llfi_index !2245
  %10 = fmul float %gamma, 5.000000e-01, !llfi_index !2246
  %11 = fpext float %10 to double, !llfi_index !2247
  %12 = call double @cos(double %11) #3, !llfi_index !2248
  %13 = fptrunc double %12 to float, !llfi_index !2249
  %14 = getelementptr inbounds { float, float }* %7, i64 0, i32 0, !llfi_index !2250
  %15 = getelementptr inbounds { float, float }* %7, i64 0, i32 1, !llfi_index !2251
  store float %13, float* %14, align 4, !llfi_index !2252
  store float 0.000000e+00, float* %15, align 4, !llfi_index !2253
  %16 = call double @sin(double %11) #3, !llfi_index !2254
  %17 = fptrunc double %16 to float, !llfi_index !2255
  %18 = fsub float -0.000000e+00, %17, !llfi_index !2256
  %19 = load { float, float }** %9, align 8, !tbaa !2110, !llfi_index !2257
  %20 = getelementptr inbounds { float, float }* %19, i64 1, i32 0, !llfi_index !2258
  %21 = getelementptr inbounds { float, float }* %19, i64 1, i32 1, !llfi_index !2259
  store float %18, float* %20, align 4, !llfi_index !2260
  store float 0.000000e+00, float* %21, align 4, !llfi_index !2261
  %22 = call double @sin(double %11) #3, !llfi_index !2262
  %23 = fptrunc double %22 to float, !llfi_index !2263
  %24 = load { float, float }** %9, align 8, !tbaa !2110, !llfi_index !2264
  %25 = getelementptr inbounds { float, float }* %24, i64 2, i32 0, !llfi_index !2265
  %26 = getelementptr inbounds { float, float }* %24, i64 2, i32 1, !llfi_index !2266
  store float %23, float* %25, align 4, !llfi_index !2267
  store float 0.000000e+00, float* %26, align 4, !llfi_index !2268
  %27 = call double @cos(double %11) #3, !llfi_index !2269
  %28 = fptrunc double %27 to float, !llfi_index !2270
  %29 = load { float, float }** %9, align 8, !tbaa !2110, !llfi_index !2271
  %30 = getelementptr inbounds { float, float }* %29, i64 3, i32 0, !llfi_index !2272
  %31 = getelementptr inbounds { float, float }* %29, i64 3, i32 1, !llfi_index !2273
  store float %28, float* %30, align 4, !llfi_index !2274
  store float 0.000000e+00, float* %31, align 4, !llfi_index !2275
  %32 = load i64* %8, align 8, !llfi_index !2276
  %33 = load { float, float }** %9, align 8, !llfi_index !2277
  call void @quantum_gate1(i32 %target, i64 %32, { float, float }* %33, %struct.quantum_reg_struct* %reg), !llfi_index !2278
  call void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m) #3, !llfi_index !2279
  br label %34, !llfi_index !2280

; <label>:34                                      ; preds = %4, %0
  ret void, !llfi_index !2281
}

; Function Attrs: nounwind uwtable
define void @quantum_r_z(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
  %1 = fpext float %gamma to double, !llfi_index !2282
  %2 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 9, i32 %target, double %1) #3, !llfi_index !2283
  %3 = icmp eq i32 %2, 0, !llfi_index !2284
  br i1 %3, label %4, label %46, !llfi_index !2285

; <label>:4                                       ; preds = %0
  %5 = fmul float %gamma, 5.000000e-01, !llfi_index !2286
  %6 = tail call <2 x float> @quantum_cexp(float %5) #3, !llfi_index !2287
  %7 = extractelement <2 x float> %6, i32 0, !llfi_index !2288
  %8 = extractelement <2 x float> %6, i32 1, !llfi_index !2289
  %9 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !2290
  %10 = load i32* %9, align 4, !tbaa !223, !llfi_index !2291
  %11 = icmp sgt i32 %10, 0, !llfi_index !2292
  br i1 %11, label %.lr.ph, label %._crit_edge, !llfi_index !2293

.lr.ph:                                           ; preds = %4
  %12 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2294
  %13 = zext i32 %target to i64, !llfi_index !2295
  %14 = shl i64 1, %13, !llfi_index !2296
  %15 = fmul float %7, %7, !llfi_index !2297
  %16 = fmul float %8, %8, !llfi_index !2298
  %17 = fadd float %15, %16, !llfi_index !2299
  br label %18, !llfi_index !2300

; <label>:18                                      ; preds = %42, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %42 ], !llfi_index !2301
  %19 = load %struct.quantum_reg_node_struct** %12, align 8, !tbaa !228, !llfi_index !2302
  %20 = getelementptr inbounds %struct.quantum_reg_node_struct* %19, i64 %indvars.iv, i32 1, !llfi_index !2303
  %21 = load i64* %20, align 8, !tbaa !249, !llfi_index !2304
  %22 = and i64 %21, %14, !llfi_index !2305
  %23 = icmp eq i64 %22, 0, !llfi_index !2306
  %24 = getelementptr inbounds %struct.quantum_reg_node_struct* %19, i64 %indvars.iv, i32 0, i32 0, !llfi_index !2307
  %25 = load float* %24, align 4, !llfi_index !2308
  %26 = getelementptr inbounds %struct.quantum_reg_node_struct* %19, i64 %indvars.iv, i32 0, i32 1, !llfi_index !2309
  %27 = load float* %26, align 4, !llfi_index !2310
  %28 = fmul float %7, %25, !llfi_index !2311
  %29 = fmul float %8, %27, !llfi_index !2312
  br i1 %23, label %35, label %30, !llfi_index !2313

; <label>:30                                      ; preds = %18
  %31 = fsub float %28, %29, !llfi_index !2314
  %32 = fmul float %7, %27, !llfi_index !2315
  %33 = fmul float %8, %25, !llfi_index !2316
  %34 = fadd float %33, %32, !llfi_index !2317
  br label %42, !llfi_index !2318

; <label>:35                                      ; preds = %18
  %36 = fadd float %28, %29, !llfi_index !2319
  %37 = fmul float %7, %27, !llfi_index !2320
  %38 = fmul float %8, %25, !llfi_index !2321
  %39 = fsub float %37, %38, !llfi_index !2322
  %40 = fdiv float %36, %17, !llfi_index !2323
  %41 = fdiv float %39, %17, !llfi_index !2324
  br label %42, !llfi_index !2325

; <label>:42                                      ; preds = %35, %30
  %storemerge1 = phi float [ %31, %30 ], [ %40, %35 ], !llfi_index !2326
  %storemerge = phi float [ %34, %30 ], [ %41, %35 ], !llfi_index !2327
  store float %storemerge1, float* %24, align 4, !llfi_index !2328
  store float %storemerge, float* %26, align 4, !llfi_index !2329
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2330
  %43 = load i32* %9, align 4, !tbaa !223, !llfi_index !2331
  %44 = trunc i64 %indvars.iv.next to i32, !llfi_index !2332
  %45 = icmp slt i32 %44, %43, !llfi_index !2333
  br i1 %45, label %18, label %._crit_edge, !llfi_index !2334

._crit_edge:                                      ; preds = %42, %4
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !2335
  br label %46, !llfi_index !2336

; <label>:46                                      ; preds = %._crit_edge, %0
  ret void, !llfi_index !2337
}

; Function Attrs: nounwind uwtable
define void @quantum_phase_scale(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
  %1 = fpext float %gamma to double, !llfi_index !2338
  %2 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 11, i32 %target, double %1) #3, !llfi_index !2339
  %3 = icmp eq i32 %2, 0, !llfi_index !2340
  br i1 %3, label %4, label %27, !llfi_index !2341

; <label>:4                                       ; preds = %0
  %5 = tail call <2 x float> @quantum_cexp(float %gamma) #3, !llfi_index !2342
  %6 = extractelement <2 x float> %5, i32 0, !llfi_index !2343
  %7 = extractelement <2 x float> %5, i32 1, !llfi_index !2344
  %8 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !2345
  %9 = load i32* %8, align 4, !tbaa !223, !llfi_index !2346
  %10 = icmp sgt i32 %9, 0, !llfi_index !2347
  br i1 %10, label %.lr.ph, label %._crit_edge, !llfi_index !2348

.lr.ph:                                           ; preds = %4
  %11 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2349
  br label %12, !llfi_index !2350

; <label>:12                                      ; preds = %12, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %12 ], !llfi_index !2351
  %13 = load %struct.quantum_reg_node_struct** %11, align 8, !tbaa !228, !llfi_index !2352
  %14 = getelementptr inbounds %struct.quantum_reg_node_struct* %13, i64 %indvars.iv, i32 0, i32 0, !llfi_index !2353
  %15 = load float* %14, align 4, !llfi_index !2354
  %16 = getelementptr inbounds %struct.quantum_reg_node_struct* %13, i64 %indvars.iv, i32 0, i32 1, !llfi_index !2355
  %17 = load float* %16, align 4, !llfi_index !2356
  %18 = fmul float %6, %15, !llfi_index !2357
  %19 = fmul float %7, %17, !llfi_index !2358
  %20 = fsub float %18, %19, !llfi_index !2359
  %21 = fmul float %6, %17, !llfi_index !2360
  %22 = fmul float %7, %15, !llfi_index !2361
  %23 = fadd float %22, %21, !llfi_index !2362
  store float %20, float* %14, align 4, !llfi_index !2363
  store float %23, float* %16, align 4, !llfi_index !2364
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2365
  %24 = load i32* %8, align 4, !tbaa !223, !llfi_index !2366
  %25 = trunc i64 %indvars.iv.next to i32, !llfi_index !2367
  %26 = icmp slt i32 %25, %24, !llfi_index !2368
  br i1 %26, label %12, label %._crit_edge, !llfi_index !2369

._crit_edge:                                      ; preds = %12, %4
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !2370
  br label %27, !llfi_index !2371

; <label>:27                                      ; preds = %._crit_edge, %0
  ret void, !llfi_index !2372
}

; Function Attrs: nounwind uwtable
define void @quantum_phase_kick(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
  %1 = fpext float %gamma to double, !llfi_index !2373
  %2 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 10, i32 %target, double %1) #3, !llfi_index !2374
  %3 = icmp eq i32 %2, 0, !llfi_index !2375
  br i1 %3, label %4, label %36, !llfi_index !2376

; <label>:4                                       ; preds = %0
  %5 = tail call <2 x float> @quantum_cexp(float %gamma) #3, !llfi_index !2377
  %6 = extractelement <2 x float> %5, i32 0, !llfi_index !2378
  %7 = extractelement <2 x float> %5, i32 1, !llfi_index !2379
  %8 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !2380
  %9 = load i32* %8, align 4, !tbaa !223, !llfi_index !2381
  %10 = icmp sgt i32 %9, 0, !llfi_index !2382
  br i1 %10, label %.lr.ph, label %._crit_edge, !llfi_index !2383

.lr.ph:                                           ; preds = %4
  %11 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2384
  %12 = zext i32 %target to i64, !llfi_index !2385
  %13 = shl i64 1, %12, !llfi_index !2386
  br label %14, !llfi_index !2387

; <label>:14                                      ; preds = %32, %.lr.ph
  %15 = phi i32 [ %9, %.lr.ph ], [ %33, %32 ], !llfi_index !2388
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %32 ], !llfi_index !2389
  %16 = load %struct.quantum_reg_node_struct** %11, align 8, !tbaa !228, !llfi_index !2390
  %17 = getelementptr inbounds %struct.quantum_reg_node_struct* %16, i64 %indvars.iv, i32 1, !llfi_index !2391
  %18 = load i64* %17, align 8, !tbaa !249, !llfi_index !2392
  %19 = and i64 %18, %13, !llfi_index !2393
  %20 = icmp eq i64 %19, 0, !llfi_index !2394
  br i1 %20, label %32, label %21, !llfi_index !2395

; <label>:21                                      ; preds = %14
  %22 = getelementptr inbounds %struct.quantum_reg_node_struct* %16, i64 %indvars.iv, i32 0, i32 0, !llfi_index !2396
  %23 = load float* %22, align 4, !llfi_index !2397
  %24 = getelementptr inbounds %struct.quantum_reg_node_struct* %16, i64 %indvars.iv, i32 0, i32 1, !llfi_index !2398
  %25 = load float* %24, align 4, !llfi_index !2399
  %26 = fmul float %6, %23, !llfi_index !2400
  %27 = fmul float %7, %25, !llfi_index !2401
  %28 = fsub float %26, %27, !llfi_index !2402
  %29 = fmul float %6, %25, !llfi_index !2403
  %30 = fmul float %7, %23, !llfi_index !2404
  %31 = fadd float %30, %29, !llfi_index !2405
  store float %28, float* %22, align 4, !llfi_index !2406
  store float %31, float* %24, align 4, !llfi_index !2407
  %.pre = load i32* %8, align 4, !tbaa !223, !llfi_index !2408
  br label %32, !llfi_index !2409

; <label>:32                                      ; preds = %21, %14
  %33 = phi i32 [ %15, %14 ], [ %.pre, %21 ], !llfi_index !2410
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2411
  %34 = trunc i64 %indvars.iv.next to i32, !llfi_index !2412
  %35 = icmp slt i32 %34, %33, !llfi_index !2413
  br i1 %35, label %14, label %._crit_edge, !llfi_index !2414

._crit_edge:                                      ; preds = %32, %4
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !2415
  br label %36, !llfi_index !2416

; <label>:36                                      ; preds = %._crit_edge, %0
  ret void, !llfi_index !2417
}

; Function Attrs: nounwind uwtable
define void @quantum_cond_phase(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %1 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 12, i32 %control, i32 %target) #3, !llfi_index !2418
  %2 = icmp eq i32 %1, 0, !llfi_index !2419
  br i1 %2, label %3, label %44, !llfi_index !2420

; <label>:3                                       ; preds = %0
  %4 = sub nsw i32 %control, %target, !llfi_index !2421
  %5 = zext i32 %4 to i64, !llfi_index !2422
  %6 = shl i64 1, %5, !llfi_index !2423
  %7 = uitofp i64 %6 to double, !llfi_index !2424
  %8 = fdiv double 0x400921FB54524550, %7, !llfi_index !2425
  %9 = fptrunc double %8 to float, !llfi_index !2426
  %10 = tail call <2 x float> @quantum_cexp(float %9) #3, !llfi_index !2427
  %11 = extractelement <2 x float> %10, i32 0, !llfi_index !2428
  %12 = extractelement <2 x float> %10, i32 1, !llfi_index !2429
  %13 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !2430
  %14 = load i32* %13, align 4, !tbaa !223, !llfi_index !2431
  %15 = icmp sgt i32 %14, 0, !llfi_index !2432
  br i1 %15, label %.lr.ph, label %._crit_edge, !llfi_index !2433

.lr.ph:                                           ; preds = %3
  %16 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2434
  %17 = zext i32 %control to i64, !llfi_index !2435
  %18 = shl i64 1, %17, !llfi_index !2436
  %19 = zext i32 %target to i64, !llfi_index !2437
  %20 = shl i64 1, %19, !llfi_index !2438
  br label %21, !llfi_index !2439

; <label>:21                                      ; preds = %40, %.lr.ph
  %22 = phi i32 [ %14, %.lr.ph ], [ %41, %40 ], !llfi_index !2440
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %40 ], !llfi_index !2441
  %23 = load %struct.quantum_reg_node_struct** %16, align 8, !tbaa !228, !llfi_index !2442
  %24 = getelementptr inbounds %struct.quantum_reg_node_struct* %23, i64 %indvars.iv, i32 1, !llfi_index !2443
  %25 = load i64* %24, align 8, !tbaa !249, !llfi_index !2444
  %26 = or i64 %18, %20, !llfi_index !2445
  %27 = and i64 %25, %26, !llfi_index !2446
  %28 = icmp eq i64 %27, %26, !llfi_index !2447
  br i1 %28, label %29, label %40, !llfi_index !2448

; <label>:29                                      ; preds = %21
  %30 = getelementptr inbounds %struct.quantum_reg_node_struct* %23, i64 %indvars.iv, i32 0, i32 0, !llfi_index !2449
  %31 = load float* %30, align 4, !llfi_index !2450
  %32 = getelementptr inbounds %struct.quantum_reg_node_struct* %23, i64 %indvars.iv, i32 0, i32 1, !llfi_index !2451
  %33 = load float* %32, align 4, !llfi_index !2452
  %34 = fmul float %11, %31, !llfi_index !2453
  %35 = fmul float %12, %33, !llfi_index !2454
  %36 = fsub float %34, %35, !llfi_index !2455
  %37 = fmul float %11, %33, !llfi_index !2456
  %38 = fmul float %12, %31, !llfi_index !2457
  %39 = fadd float %38, %37, !llfi_index !2458
  store float %36, float* %30, align 4, !llfi_index !2459
  store float %39, float* %32, align 4, !llfi_index !2460
  %.pre = load i32* %13, align 4, !tbaa !223, !llfi_index !2461
  br label %40, !llfi_index !2462

; <label>:40                                      ; preds = %29, %21
  %41 = phi i32 [ %22, %21 ], [ %.pre, %29 ], !llfi_index !2463
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2464
  %42 = trunc i64 %indvars.iv.next to i32, !llfi_index !2465
  %43 = icmp slt i32 %42, %41, !llfi_index !2466
  br i1 %43, label %21, label %._crit_edge, !llfi_index !2467

._crit_edge:                                      ; preds = %40, %3
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !2468
  br label %44, !llfi_index !2469

; <label>:44                                      ; preds = %._crit_edge, %0
  ret void, !llfi_index !2470
}

; Function Attrs: nounwind uwtable
define void @quantum_cond_phase_inv(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %1 = sub nsw i32 %control, %target, !llfi_index !2471
  %2 = zext i32 %1 to i64, !llfi_index !2472
  %3 = shl i64 1, %2, !llfi_index !2473
  %4 = uitofp i64 %3 to double, !llfi_index !2474
  %5 = fdiv double 0xC00921FB54524550, %4, !llfi_index !2475
  %6 = fptrunc double %5 to float, !llfi_index !2476
  %7 = tail call <2 x float> @quantum_cexp(float %6) #3, !llfi_index !2477
  %8 = extractelement <2 x float> %7, i32 0, !llfi_index !2478
  %9 = extractelement <2 x float> %7, i32 1, !llfi_index !2479
  %10 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !2480
  %11 = load i32* %10, align 4, !tbaa !223, !llfi_index !2481
  %12 = icmp sgt i32 %11, 0, !llfi_index !2482
  br i1 %12, label %.lr.ph, label %._crit_edge, !llfi_index !2483

.lr.ph:                                           ; preds = %0
  %13 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2484
  %14 = zext i32 %control to i64, !llfi_index !2485
  %15 = shl i64 1, %14, !llfi_index !2486
  %16 = zext i32 %target to i64, !llfi_index !2487
  %17 = shl i64 1, %16, !llfi_index !2488
  br label %18, !llfi_index !2489

; <label>:18                                      ; preds = %37, %.lr.ph
  %19 = phi i32 [ %11, %.lr.ph ], [ %38, %37 ], !llfi_index !2490
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %37 ], !llfi_index !2491
  %20 = load %struct.quantum_reg_node_struct** %13, align 8, !tbaa !228, !llfi_index !2492
  %21 = getelementptr inbounds %struct.quantum_reg_node_struct* %20, i64 %indvars.iv, i32 1, !llfi_index !2493
  %22 = load i64* %21, align 8, !tbaa !249, !llfi_index !2494
  %23 = or i64 %15, %17, !llfi_index !2495
  %24 = and i64 %22, %23, !llfi_index !2496
  %25 = icmp eq i64 %24, %23, !llfi_index !2497
  br i1 %25, label %26, label %37, !llfi_index !2498

; <label>:26                                      ; preds = %18
  %27 = getelementptr inbounds %struct.quantum_reg_node_struct* %20, i64 %indvars.iv, i32 0, i32 0, !llfi_index !2499
  %28 = load float* %27, align 4, !llfi_index !2500
  %29 = getelementptr inbounds %struct.quantum_reg_node_struct* %20, i64 %indvars.iv, i32 0, i32 1, !llfi_index !2501
  %30 = load float* %29, align 4, !llfi_index !2502
  %31 = fmul float %8, %28, !llfi_index !2503
  %32 = fmul float %9, %30, !llfi_index !2504
  %33 = fsub float %31, %32, !llfi_index !2505
  %34 = fmul float %8, %30, !llfi_index !2506
  %35 = fmul float %9, %28, !llfi_index !2507
  %36 = fadd float %35, %34, !llfi_index !2508
  store float %33, float* %27, align 4, !llfi_index !2509
  store float %36, float* %29, align 4, !llfi_index !2510
  %.pre = load i32* %10, align 4, !tbaa !223, !llfi_index !2511
  br label %37, !llfi_index !2512

; <label>:37                                      ; preds = %26, %18
  %38 = phi i32 [ %19, %18 ], [ %.pre, %26 ], !llfi_index !2513
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2514
  %39 = trunc i64 %indvars.iv.next to i32, !llfi_index !2515
  %40 = icmp slt i32 %39, %38, !llfi_index !2516
  br i1 %40, label %18, label %._crit_edge, !llfi_index !2517

._crit_edge:                                      ; preds = %37, %0
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !2518
  ret void, !llfi_index !2519
}

; Function Attrs: nounwind uwtable
define void @quantum_cond_phase_kick(i32 %control, i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
  %1 = fpext float %gamma to double, !llfi_index !2520
  %2 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 12, i32 %control, i32 %target, double %1) #3, !llfi_index !2521
  %3 = icmp eq i32 %2, 0, !llfi_index !2522
  br i1 %3, label %4, label %39, !llfi_index !2523

; <label>:4                                       ; preds = %0
  %5 = tail call <2 x float> @quantum_cexp(float %gamma) #3, !llfi_index !2524
  %6 = extractelement <2 x float> %5, i32 0, !llfi_index !2525
  %7 = extractelement <2 x float> %5, i32 1, !llfi_index !2526
  %8 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !2527
  %9 = load i32* %8, align 4, !tbaa !223, !llfi_index !2528
  %10 = icmp sgt i32 %9, 0, !llfi_index !2529
  br i1 %10, label %.lr.ph, label %._crit_edge, !llfi_index !2530

.lr.ph:                                           ; preds = %4
  %11 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2531
  %12 = zext i32 %control to i64, !llfi_index !2532
  %13 = shl i64 1, %12, !llfi_index !2533
  %14 = zext i32 %target to i64, !llfi_index !2534
  %15 = shl i64 1, %14, !llfi_index !2535
  br label %16, !llfi_index !2536

; <label>:16                                      ; preds = %35, %.lr.ph
  %17 = phi i32 [ %9, %.lr.ph ], [ %36, %35 ], !llfi_index !2537
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %35 ], !llfi_index !2538
  %18 = load %struct.quantum_reg_node_struct** %11, align 8, !tbaa !228, !llfi_index !2539
  %19 = getelementptr inbounds %struct.quantum_reg_node_struct* %18, i64 %indvars.iv, i32 1, !llfi_index !2540
  %20 = load i64* %19, align 8, !tbaa !249, !llfi_index !2541
  %21 = or i64 %13, %15, !llfi_index !2542
  %22 = and i64 %20, %21, !llfi_index !2543
  %23 = icmp eq i64 %22, %21, !llfi_index !2544
  br i1 %23, label %24, label %35, !llfi_index !2545

; <label>:24                                      ; preds = %16
  %25 = getelementptr inbounds %struct.quantum_reg_node_struct* %18, i64 %indvars.iv, i32 0, i32 0, !llfi_index !2546
  %26 = load float* %25, align 4, !llfi_index !2547
  %27 = getelementptr inbounds %struct.quantum_reg_node_struct* %18, i64 %indvars.iv, i32 0, i32 1, !llfi_index !2548
  %28 = load float* %27, align 4, !llfi_index !2549
  %29 = fmul float %6, %26, !llfi_index !2550
  %30 = fmul float %7, %28, !llfi_index !2551
  %31 = fsub float %29, %30, !llfi_index !2552
  %32 = fmul float %6, %28, !llfi_index !2553
  %33 = fmul float %7, %26, !llfi_index !2554
  %34 = fadd float %33, %32, !llfi_index !2555
  store float %31, float* %25, align 4, !llfi_index !2556
  store float %34, float* %27, align 4, !llfi_index !2557
  %.pre = load i32* %8, align 4, !tbaa !223, !llfi_index !2558
  br label %35, !llfi_index !2559

; <label>:35                                      ; preds = %24, %16
  %36 = phi i32 [ %17, %16 ], [ %.pre, %24 ], !llfi_index !2560
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2561
  %37 = trunc i64 %indvars.iv.next to i32, !llfi_index !2562
  %38 = icmp slt i32 %37, %36, !llfi_index !2563
  br i1 %38, label %16, label %._crit_edge, !llfi_index !2564

._crit_edge:                                      ; preds = %35, %4
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !2565
  br label %39, !llfi_index !2566

; <label>:39                                      ; preds = %._crit_edge, %0
  ret void, !llfi_index !2567
}

; Function Attrs: nounwind uwtable
define i32 @quantum_gate_counter(i32 %inc) #0 {
  %1 = icmp sgt i32 %inc, 0, !llfi_index !2568
  br i1 %1, label %2, label %5, !llfi_index !2569

; <label>:2                                       ; preds = %0
  %3 = load i32* @quantum_gate_counter.counter, align 4, !tbaa !1, !llfi_index !2570
  %4 = add nsw i32 %3, %inc, !llfi_index !2571
  store i32 %4, i32* @quantum_gate_counter.counter, align 4, !tbaa !1, !llfi_index !2572
  br label %8, !llfi_index !2573

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %inc, 0, !llfi_index !2574
  br i1 %6, label %7, label %._crit_edge, !llfi_index !2575

._crit_edge:                                      ; preds = %5
  %.pre = load i32* @quantum_gate_counter.counter, align 4, !tbaa !1, !llfi_index !2576
  br label %8, !llfi_index !2577

; <label>:7                                       ; preds = %5
  store i32 0, i32* @quantum_gate_counter.counter, align 4, !tbaa !1, !llfi_index !2578
  br label %8, !llfi_index !2579

; <label>:8                                       ; preds = %7, %._crit_edge, %2
  %9 = phi i32 [ %.pre, %._crit_edge ], [ 0, %7 ], [ %4, %2 ], !llfi_index !2580
  ret i32 %9, !llfi_index !2581
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @test_sum(i32 %compare, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = sext i32 %compare to i64, !llfi_index !2582
  %2 = add i32 %width, -1, !llfi_index !2583
  %3 = zext i32 %2 to i64, !llfi_index !2584
  %4 = shl i64 1, %3, !llfi_index !2585
  %5 = and i64 %4, %1, !llfi_index !2586
  %6 = icmp eq i64 %5, 0, !llfi_index !2587
  %7 = shl nsw i32 %width, 1, !llfi_index !2588
  %8 = add nsw i32 %7, -1, !llfi_index !2589
  br i1 %6, label %10, label %9, !llfi_index !2590

; <label>:9                                       ; preds = %0
  tail call void @quantum_cnot(i32 %8, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2591
  tail call void @quantum_sigma_x(i32 %8, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2592
  tail call void @quantum_cnot(i32 %8, i32 0, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2593
  br label %11, !llfi_index !2594

; <label>:10                                      ; preds = %0
  tail call void @quantum_sigma_x(i32 %8, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2595
  tail call void @quantum_cnot(i32 %8, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2596
  br label %11, !llfi_index !2597

; <label>:11                                      ; preds = %10, %9
  %12 = add nsw i32 %width, -2, !llfi_index !2598
  %13 = icmp sgt i32 %12, 0, !llfi_index !2599
  br i1 %13, label %.lr.ph4, label %._crit_edge5, !llfi_index !2600

.lr.ph4:                                          ; preds = %23, %11
  %i.02 = phi i32 [ %24, %23 ], [ %12, %11 ], !llfi_index !2601
  %14 = shl i32 1, %i.02, !llfi_index !2602
  %15 = and i32 %14, %compare, !llfi_index !2603
  %16 = icmp eq i32 %15, 0, !llfi_index !2604
  br i1 %16, label %20, label %17, !llfi_index !2605

; <label>:17                                      ; preds = %.lr.ph4
  %18 = add nsw i32 %i.02, 1, !llfi_index !2606
  %19 = add nsw i32 %i.02, %width, !llfi_index !2607
  tail call void @quantum_toffoli(i32 %18, i32 %19, i32 %i.02, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2608
  tail call void @quantum_sigma_x(i32 %19, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2609
  tail call void @quantum_toffoli(i32 %18, i32 %19, i32 0, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2610
  br label %23, !llfi_index !2611

; <label>:20                                      ; preds = %.lr.ph4
  %21 = add nsw i32 %i.02, %width, !llfi_index !2612
  tail call void @quantum_sigma_x(i32 %21, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2613
  %22 = add nsw i32 %i.02, 1, !llfi_index !2614
  tail call void @quantum_toffoli(i32 %22, i32 %21, i32 %i.02, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2615
  br label %23, !llfi_index !2616

; <label>:23                                      ; preds = %20, %17
  %24 = add nsw i32 %i.02, -1, !llfi_index !2617
  %25 = icmp sgt i32 %24, 0, !llfi_index !2618
  br i1 %25, label %.lr.ph4, label %._crit_edge5, !llfi_index !2619

._crit_edge5:                                     ; preds = %23, %11
  %26 = and i32 %compare, 1, !llfi_index !2620
  %27 = icmp eq i32 %26, 0, !llfi_index !2621
  br i1 %27, label %.critedge, label %28, !llfi_index !2622

; <label>:28                                      ; preds = %._crit_edge5
  tail call void @quantum_sigma_x(i32 %width, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2623
  tail call void @quantum_toffoli(i32 %width, i32 1, i32 0, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2624
  %29 = or i32 %7, 1, !llfi_index !2625
  tail call void @quantum_toffoli(i32 %29, i32 0, i32 %7, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2626
  tail call void @quantum_toffoli(i32 %width, i32 1, i32 0, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2627
  tail call void @quantum_sigma_x(i32 %width, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2628
  br label %.preheader, !llfi_index !2629

.critedge:                                        ; preds = %._crit_edge5
  %30 = or i32 %7, 1, !llfi_index !2630
  tail call void @quantum_toffoli(i32 %30, i32 0, i32 %7, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2631
  br label %.preheader, !llfi_index !2632

.preheader:                                       ; preds = %.critedge, %28
  %31 = icmp slt i32 %12, 1, !llfi_index !2633
  br i1 %31, label %._crit_edge, label %.lr.ph, !llfi_index !2634

.lr.ph:                                           ; preds = %.backedge, %.preheader
  %i.11 = phi i32 [ %35, %.backedge ], [ 1, %.preheader ], !llfi_index !2635
  %32 = shl i32 1, %i.11, !llfi_index !2636
  %33 = and i32 %32, %compare, !llfi_index !2637
  %34 = icmp eq i32 %33, 0, !llfi_index !2638
  %35 = add nsw i32 %i.11, 1, !llfi_index !2639
  %36 = add nsw i32 %i.11, %width, !llfi_index !2640
  br i1 %34, label %38, label %37, !llfi_index !2641

; <label>:37                                      ; preds = %.lr.ph
  tail call void @quantum_toffoli(i32 %35, i32 %36, i32 0, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2642
  tail call void @quantum_sigma_x(i32 %36, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2643
  tail call void @quantum_toffoli(i32 %35, i32 %36, i32 %i.11, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2644
  br label %.backedge, !llfi_index !2645

.backedge:                                        ; preds = %38, %37
  %exitcond = icmp eq i32 %35, %2, !llfi_index !2646
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !2647

; <label>:38                                      ; preds = %.lr.ph
  tail call void @quantum_toffoli(i32 %35, i32 %36, i32 %i.11, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2648
  tail call void @quantum_sigma_x(i32 %36, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2649
  br label %.backedge, !llfi_index !2650

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %39 = shl i32 1, %2, !llfi_index !2651
  %40 = and i32 %39, %compare, !llfi_index !2652
  %41 = icmp eq i32 %40, 0, !llfi_index !2653
  br i1 %41, label %43, label %42, !llfi_index !2654

; <label>:42                                      ; preds = %._crit_edge
  tail call void @quantum_cnot(i32 %8, i32 0, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2655
  tail call void @quantum_sigma_x(i32 %8, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2656
  tail call void @quantum_cnot(i32 %8, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2657
  br label %44, !llfi_index !2658

; <label>:43                                      ; preds = %._crit_edge
  tail call void @quantum_cnot(i32 %8, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2659
  tail call void @quantum_sigma_x(i32 %8, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2660
  br label %44, !llfi_index !2661

; <label>:44                                      ; preds = %43, %42
  ret void, !llfi_index !2662
}

; Function Attrs: nounwind uwtable
define void @muxfa(i32 %a, i32 %b_in, i32 %c_in, i32 %c_out, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
  switch i32 %a, label %5 [
    i32 0, label %1
    i32 3, label %2
    i32 1, label %3
    i32 2, label %4
  ], !llfi_index !2663

; <label>:1                                       ; preds = %0
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2664
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2665
  br label %5, !llfi_index !2666

; <label>:2                                       ; preds = %0
  tail call void @quantum_toffoli(i32 %L, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2667
  tail call void @quantum_cnot(i32 %L, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2668
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2669
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2670
  br label %5, !llfi_index !2671

; <label>:3                                       ; preds = %0
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %b_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2672
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2673
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %b_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2674
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2675
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2676
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2677
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2678
  br label %5, !llfi_index !2679

; <label>:4                                       ; preds = %0
  tail call void @quantum_sigma_x(i32 %xlt_l, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2680
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %b_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2681
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2682
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %b_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2683
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2684
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2685
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2686
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2687
  tail call void @quantum_sigma_x(i32 %xlt_l, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2688
  br label %5, !llfi_index !2689

; <label>:5                                       ; preds = %4, %3, %2, %1, %0
  ret void, !llfi_index !2690
}

; Function Attrs: nounwind uwtable
define void @muxfa_inv(i32 %a, i32 %b_in, i32 %c_in, i32 %c_out, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
  switch i32 %a, label %5 [
    i32 0, label %1
    i32 3, label %2
    i32 1, label %3
    i32 2, label %4
  ], !llfi_index !2691

; <label>:1                                       ; preds = %0
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2692
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2693
  br label %5, !llfi_index !2694

; <label>:2                                       ; preds = %0
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2695
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2696
  tail call void @quantum_cnot(i32 %L, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2697
  tail call void @quantum_toffoli(i32 %L, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2698
  br label %5, !llfi_index !2699

; <label>:3                                       ; preds = %0
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2700
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2701
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2702
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2703
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %b_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2704
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2705
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %b_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2706
  br label %5, !llfi_index !2707

; <label>:4                                       ; preds = %0
  tail call void @quantum_sigma_x(i32 %xlt_l, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2708
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2709
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2710
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2711
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2712
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %b_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2713
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2714
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %b_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2715
  tail call void @quantum_sigma_x(i32 %xlt_l, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2716
  br label %5, !llfi_index !2717

; <label>:5                                       ; preds = %4, %3, %2, %1, %0
  ret void, !llfi_index !2718
}

; Function Attrs: nounwind uwtable
define void @muxha(i32 %a, i32 %b_in, i32 %c_in, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
  switch i32 %a, label %5 [
    i32 0, label %1
    i32 3, label %2
    i32 1, label %3
    i32 2, label %4
  ], !llfi_index !2719

; <label>:1                                       ; preds = %0
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2720
  br label %5, !llfi_index !2721

; <label>:2                                       ; preds = %0
  tail call void @quantum_cnot(i32 %L, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2722
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2723
  br label %5, !llfi_index !2724

; <label>:3                                       ; preds = %0
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2725
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2726
  br label %5, !llfi_index !2727

; <label>:4                                       ; preds = %0
  tail call void @quantum_sigma_x(i32 %xlt_l, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2728
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2729
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2730
  tail call void @quantum_sigma_x(i32 %xlt_l, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2731
  br label %5, !llfi_index !2732

; <label>:5                                       ; preds = %4, %3, %2, %1, %0
  ret void, !llfi_index !2733
}

; Function Attrs: nounwind uwtable
define void @muxha_inv(i32 %a, i32 %b_in, i32 %c_in, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
  switch i32 %a, label %5 [
    i32 0, label %1
    i32 3, label %2
    i32 1, label %3
    i32 2, label %4
  ], !llfi_index !2734

; <label>:1                                       ; preds = %0
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2735
  br label %5, !llfi_index !2736

; <label>:2                                       ; preds = %0
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2737
  tail call void @quantum_cnot(i32 %L, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2738
  br label %5, !llfi_index !2739

; <label>:3                                       ; preds = %0
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2740
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2741
  br label %5, !llfi_index !2742

; <label>:4                                       ; preds = %0
  tail call void @quantum_sigma_x(i32 %xlt_l, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2743
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2744
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2745
  tail call void @quantum_sigma_x(i32 %xlt_l, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2746
  br label %5, !llfi_index !2747

; <label>:5                                       ; preds = %4, %3, %2, %1, %0
  ret void, !llfi_index !2748
}

; Function Attrs: nounwind uwtable
define void @madd(i32 %a, i32 %a_inv, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = add i32 %width, -1, !llfi_index !2749
  %2 = icmp sgt i32 %1, 0, !llfi_index !2750
  %3 = shl nsw i32 %width, 1, !llfi_index !2751
  %4 = or i32 %3, 1, !llfi_index !2752
  br i1 %2, label %.lr.ph, label %._crit_edge, !llfi_index !2753

.lr.ph:                                           ; preds = %.lr.ph, %0
  %i.03 = phi i32 [ %11, %.lr.ph ], [ 0, %0 ], !llfi_index !2754
  %5 = shl i32 1, %i.03, !llfi_index !2755
  %6 = and i32 %5, %a, !llfi_index !2756
  %7 = icmp eq i32 %6, 0, !llfi_index !2757
  %.1 = select i1 %7, i32 0, i32 2, !llfi_index !2758
  %8 = and i32 %5, %a_inv, !llfi_index !2759
  %not.2 = icmp ne i32 %8, 0, !llfi_index !2760
  %9 = zext i1 %not.2 to i32, !llfi_index !2761
  %j.1 = or i32 %.1, %9, !llfi_index !2762
  %10 = add nsw i32 %i.03, %width, !llfi_index !2763
  %11 = add nsw i32 %i.03, 1, !llfi_index !2764
  tail call void @muxfa(i32 %j.1, i32 %10, i32 %i.03, i32 %11, i32 %3, i32 %4, i32 undef, %struct.quantum_reg_struct* %reg), !llfi_index !2765
  %exitcond = icmp eq i32 %11, %1, !llfi_index !2766
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !2767

._crit_edge:                                      ; preds = %.lr.ph, %0
  %12 = shl i32 1, %1, !llfi_index !2768
  %13 = and i32 %12, %a, !llfi_index !2769
  %14 = icmp ne i32 %13, 0, !llfi_index !2770
  %. = select i1 %14, i32 2, i32 0, !llfi_index !2771
  %15 = and i32 %12, %a_inv, !llfi_index !2772
  %not. = icmp ne i32 %15, 0, !llfi_index !2773
  %16 = zext i1 %not. to i32, !llfi_index !2774
  %.. = or i32 %., %16, !llfi_index !2775
  %17 = add nsw i32 %3, -1, !llfi_index !2776
  tail call void @muxha(i32 %.., i32 %17, i32 %1, i32 %3, i32 %4, i32 undef, %struct.quantum_reg_struct* %reg), !llfi_index !2777
  ret void, !llfi_index !2778
}

; Function Attrs: nounwind uwtable
define void @madd_inv(i32 %a, i32 %a_inv, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = add nsw i32 %width, -1, !llfi_index !2779
  %2 = shl i32 1, %1, !llfi_index !2780
  %3 = and i32 %2, %a, !llfi_index !2781
  %4 = icmp ne i32 %3, 0, !llfi_index !2782
  %. = select i1 %4, i32 2, i32 0, !llfi_index !2783
  %5 = and i32 %2, %a_inv, !llfi_index !2784
  %not. = icmp ne i32 %5, 0, !llfi_index !2785
  %6 = zext i1 %not. to i32, !llfi_index !2786
  %.. = or i32 %., %6, !llfi_index !2787
  %7 = shl nsw i32 %width, 1, !llfi_index !2788
  %8 = add nsw i32 %7, -1, !llfi_index !2789
  %9 = or i32 %7, 1, !llfi_index !2790
  tail call void @muxha_inv(i32 %.., i32 %1, i32 %8, i32 %7, i32 %9, i32 undef, %struct.quantum_reg_struct* %reg), !llfi_index !2791
  %10 = add nsw i32 %width, -2, !llfi_index !2792
  %11 = icmp sgt i32 %10, -1, !llfi_index !2793
  br i1 %11, label %.lr.ph, label %._crit_edge, !llfi_index !2794

.lr.ph:                                           ; preds = %0
  %12 = add nsw i32 %width, 1, !llfi_index !2795
  br label %13, !llfi_index !2796

; <label>:13                                      ; preds = %13, %.lr.ph
  %i.03 = phi i32 [ %10, %.lr.ph ], [ %21, %13 ], !llfi_index !2797
  %14 = shl i32 1, %i.03, !llfi_index !2798
  %15 = and i32 %14, %a, !llfi_index !2799
  %16 = icmp eq i32 %15, 0, !llfi_index !2800
  %.1 = select i1 %16, i32 0, i32 2, !llfi_index !2801
  %17 = and i32 %14, %a_inv, !llfi_index !2802
  %not.2 = icmp ne i32 %17, 0, !llfi_index !2803
  %18 = zext i1 %not.2 to i32, !llfi_index !2804
  %j.2 = or i32 %.1, %18, !llfi_index !2805
  %19 = add nsw i32 %i.03, %width, !llfi_index !2806
  %20 = add nsw i32 %12, %i.03, !llfi_index !2807
  tail call void @muxfa_inv(i32 %j.2, i32 %i.03, i32 %19, i32 %20, i32 %7, i32 %9, i32 undef, %struct.quantum_reg_struct* %reg), !llfi_index !2808
  %21 = add nsw i32 %i.03, -1, !llfi_index !2809
  %22 = icmp sgt i32 %i.03, 0, !llfi_index !2810
  br i1 %22, label %13, label %._crit_edge, !llfi_index !2811

._crit_edge:                                      ; preds = %13, %0
  ret void, !llfi_index !2812
}

; Function Attrs: nounwind uwtable
define void @addn(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = sub nsw i32 %N, %a, !llfi_index !2813
  tail call void @test_sum(i32 %1, i32 %width, %struct.quantum_reg_struct* %reg), !llfi_index !2814
  %2 = shl i32 1, %width, !llfi_index !2815
  %3 = sub i32 %a, %N, !llfi_index !2816
  %4 = add i32 %3, %2, !llfi_index !2817
  %5 = add i32 %width, -1, !llfi_index !2818
  %6 = icmp sgt i32 %5, 0, !llfi_index !2819
  %7 = shl nsw i32 %width, 1, !llfi_index !2820
  %8 = or i32 %7, 1, !llfi_index !2821
  br i1 %6, label %.lr.ph.i, label %madd.exit, !llfi_index !2822

.lr.ph.i:                                         ; preds = %.lr.ph.i, %0
  %i.03.i = phi i32 [ %15, %.lr.ph.i ], [ 0, %0 ], !llfi_index !2823
  %9 = shl i32 1, %i.03.i, !llfi_index !2824
  %10 = and i32 %9, %4, !llfi_index !2825
  %11 = icmp eq i32 %10, 0, !llfi_index !2826
  %.1.i = select i1 %11, i32 0, i32 2, !llfi_index !2827
  %12 = and i32 %9, %a, !llfi_index !2828
  %not.2.i = icmp ne i32 %12, 0, !llfi_index !2829
  %13 = zext i1 %not.2.i to i32, !llfi_index !2830
  %j.1.i = or i32 %.1.i, %13, !llfi_index !2831
  %14 = add nsw i32 %i.03.i, %width, !llfi_index !2832
  %15 = add nsw i32 %i.03.i, 1, !llfi_index !2833
  tail call void @muxfa(i32 %j.1.i, i32 %14, i32 %i.03.i, i32 %15, i32 %7, i32 %8, i32 undef, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2834
  %exitcond.i = icmp eq i32 %15, %5, !llfi_index !2835
  br i1 %exitcond.i, label %madd.exit, label %.lr.ph.i, !llfi_index !2836

madd.exit:                                        ; preds = %.lr.ph.i, %0
  %16 = shl i32 1, %5, !llfi_index !2837
  %17 = and i32 %16, %4, !llfi_index !2838
  %18 = icmp ne i32 %17, 0, !llfi_index !2839
  %..i = select i1 %18, i32 2, i32 0, !llfi_index !2840
  %19 = and i32 %16, %a, !llfi_index !2841
  %not..i = icmp ne i32 %19, 0, !llfi_index !2842
  %20 = zext i1 %not..i to i32, !llfi_index !2843
  %...i = or i32 %..i, %20, !llfi_index !2844
  %21 = add nsw i32 %7, -1, !llfi_index !2845
  tail call void @muxha(i32 %...i, i32 %21, i32 %5, i32 %7, i32 %8, i32 undef, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2846
  ret void, !llfi_index !2847
}

; Function Attrs: nounwind uwtable
define void @addn_inv(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = shl nsw i32 %width, 1, !llfi_index !2848
  %2 = or i32 %1, 1, !llfi_index !2849
  tail call void @quantum_cnot(i32 %2, i32 %1, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2850
  %3 = shl i32 1, %width, !llfi_index !2851
  %4 = sub nsw i32 %3, %a, !llfi_index !2852
  %5 = sub nsw i32 %N, %a, !llfi_index !2853
  %6 = add nsw i32 %width, -1, !llfi_index !2854
  %7 = shl i32 1, %6, !llfi_index !2855
  %8 = and i32 %7, %4, !llfi_index !2856
  %9 = icmp ne i32 %8, 0, !llfi_index !2857
  %..i = select i1 %9, i32 2, i32 0, !llfi_index !2858
  %10 = and i32 %7, %5, !llfi_index !2859
  %not..i = icmp ne i32 %10, 0, !llfi_index !2860
  %11 = zext i1 %not..i to i32, !llfi_index !2861
  %...i = or i32 %..i, %11, !llfi_index !2862
  %12 = add nsw i32 %1, -1, !llfi_index !2863
  tail call void @muxha_inv(i32 %...i, i32 %6, i32 %12, i32 %1, i32 %2, i32 undef, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2864
  %13 = add nsw i32 %width, -2, !llfi_index !2865
  %14 = icmp sgt i32 %13, -1, !llfi_index !2866
  br i1 %14, label %.lr.ph.i, label %madd_inv.exit, !llfi_index !2867

.lr.ph.i:                                         ; preds = %0
  %15 = add nsw i32 %width, 1, !llfi_index !2868
  br label %16, !llfi_index !2869

; <label>:16                                      ; preds = %16, %.lr.ph.i
  %i.03.i = phi i32 [ %13, %.lr.ph.i ], [ %24, %16 ], !llfi_index !2870
  %17 = shl i32 1, %i.03.i, !llfi_index !2871
  %18 = and i32 %17, %4, !llfi_index !2872
  %19 = icmp eq i32 %18, 0, !llfi_index !2873
  %.1.i = select i1 %19, i32 0, i32 2, !llfi_index !2874
  %20 = and i32 %17, %5, !llfi_index !2875
  %not.2.i = icmp ne i32 %20, 0, !llfi_index !2876
  %21 = zext i1 %not.2.i to i32, !llfi_index !2877
  %j.2.i = or i32 %.1.i, %21, !llfi_index !2878
  %22 = add nsw i32 %i.03.i, %width, !llfi_index !2879
  %23 = add nsw i32 %15, %i.03.i, !llfi_index !2880
  tail call void @muxfa_inv(i32 %j.2.i, i32 %i.03.i, i32 %22, i32 %23, i32 %1, i32 %2, i32 undef, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2881
  %24 = add nsw i32 %i.03.i, -1, !llfi_index !2882
  %25 = icmp sgt i32 %i.03.i, 0, !llfi_index !2883
  br i1 %25, label %16, label %madd_inv.exit, !llfi_index !2884

madd_inv.exit:                                    ; preds = %16, %0
  tail call void @quantum_swaptheleads(i32 %width, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2885
  tail call void @test_sum(i32 %a, i32 %width, %struct.quantum_reg_struct* %reg), !llfi_index !2886
  ret void, !llfi_index !2887
}

; Function Attrs: nounwind uwtable
define void @add_mod_n(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  tail call void @addn(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg), !llfi_index !2888
  tail call void @addn_inv(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg), !llfi_index !2889
  ret void, !llfi_index !2890
}

; Function Attrs: nounwind uwtable
define void @emul(i32 %a, i32 %L, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = icmp sgt i32 %width, 0, !llfi_index !2891
  br i1 %1, label %.lr.ph, label %._crit_edge, !llfi_index !2892

.lr.ph:                                           ; preds = %0
  %2 = shl i32 %width, 1, !llfi_index !2893
  %3 = add nsw i32 %2, 2, !llfi_index !2894
  br label %4, !llfi_index !2895

; <label>:4                                       ; preds = %.backedge, %.lr.ph
  %i.02.in = phi i32 [ %width, %.lr.ph ], [ %i.02, %.backedge ], !llfi_index !2896
  %i.02 = add nsw i32 %i.02.in, -1, !llfi_index !2897
  %5 = shl i32 1, %i.02, !llfi_index !2898
  %6 = and i32 %5, %a, !llfi_index !2899
  %7 = icmp eq i32 %6, 0, !llfi_index !2900
  br i1 %7, label %.backedge, label %9, !llfi_index !2901

.backedge:                                        ; preds = %9, %4
  %8 = icmp sgt i32 %i.02, 0, !llfi_index !2902
  br i1 %8, label %4, label %._crit_edge, !llfi_index !2903

; <label>:9                                       ; preds = %4
  %10 = add nsw i32 %i.02, %width, !llfi_index !2904
  tail call void @quantum_toffoli(i32 %3, i32 %L, i32 %10, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2905
  br label %.backedge, !llfi_index !2906

._crit_edge:                                      ; preds = %.backedge, %0
  ret void, !llfi_index !2907
}

; Function Attrs: nounwind uwtable
define void @muln(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = shl i32 %width, 1, !llfi_index !2908
  %2 = or i32 %1, 1, !llfi_index !2909
  %3 = add nsw i32 %1, 2, !llfi_index !2910
  tail call void @quantum_toffoli(i32 %ctl, i32 %3, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2911
  %4 = srem i32 %a, %N, !llfi_index !2912
  %5 = icmp sgt i32 %width, 0, !llfi_index !2913
  br i1 %5, label %.lr.ph.i, label %emul.exit.thread, !llfi_index !2914

emul.exit.thread:                                 ; preds = %0
  tail call void @quantum_toffoli(i32 %ctl, i32 %3, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2915
  br label %._crit_edge, !llfi_index !2916

.lr.ph.i:                                         ; preds = %.backedge.i, %0
  %i.02.in.i = phi i32 [ %i.02.i, %.backedge.i ], [ %width, %0 ], !llfi_index !2917
  %i.02.i = add nsw i32 %i.02.in.i, -1, !llfi_index !2918
  %6 = shl i32 1, %i.02.i, !llfi_index !2919
  %7 = and i32 %6, %4, !llfi_index !2920
  %8 = icmp eq i32 %7, 0, !llfi_index !2921
  br i1 %8, label %.backedge.i, label %10, !llfi_index !2922

.backedge.i:                                      ; preds = %10, %.lr.ph.i
  %9 = icmp sgt i32 %i.02.i, 0, !llfi_index !2923
  br i1 %9, label %.lr.ph.i, label %emul.exit, !llfi_index !2924

; <label>:10                                      ; preds = %.lr.ph.i
  %11 = add nsw i32 %i.02.i, %width, !llfi_index !2925
  tail call void @quantum_toffoli(i32 %3, i32 %2, i32 %11, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2926
  br label %.backedge.i, !llfi_index !2927

emul.exit:                                        ; preds = %.backedge.i
  tail call void @quantum_toffoli(i32 %ctl, i32 %3, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2928
  %12 = icmp sgt i32 %width, 1, !llfi_index !2929
  br i1 %12, label %.lr.ph, label %._crit_edge, !llfi_index !2930

.lr.ph:                                           ; preds = %.lr.ph, %emul.exit
  %i.01 = phi i32 [ %16, %.lr.ph ], [ 1, %emul.exit ], !llfi_index !2931
  %13 = add nsw i32 %i.01, %3, !llfi_index !2932
  tail call void @quantum_toffoli(i32 %ctl, i32 %13, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2933
  %14 = shl i32 %a, %i.01, !llfi_index !2934
  %15 = srem i32 %14, %N, !llfi_index !2935
  tail call void @add_mod_n(i32 %N, i32 %15, i32 %width, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2936
  tail call void @quantum_toffoli(i32 %ctl, i32 %13, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2937
  %16 = add nsw i32 %i.01, 1, !llfi_index !2938
  %exitcond = icmp eq i32 %16, %width, !llfi_index !2939
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !2940

._crit_edge:                                      ; preds = %.lr.ph, %emul.exit, %emul.exit.thread
  ret void, !llfi_index !2941
}

; Function Attrs: nounwind uwtable
define void @muln_inv(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = shl i32 %width, 1, !llfi_index !2942
  %2 = or i32 %1, 1, !llfi_index !2943
  %3 = tail call i32 @quantum_inverse_mod(i32 %N, i32 %a) #3, !llfi_index !2944
  %i.01 = add nsw i32 %width, -1, !llfi_index !2945
  %4 = icmp sgt i32 %i.01, 0, !llfi_index !2946
  %5 = add nsw i32 %1, 2, !llfi_index !2947
  br i1 %4, label %.lr.ph, label %._crit_edge, !llfi_index !2948

.lr.ph:                                           ; preds = %.lr.ph, %0
  %i.02 = phi i32 [ %i.0, %.lr.ph ], [ %i.01, %0 ], !llfi_index !2949
  %6 = add nsw i32 %i.02, %5, !llfi_index !2950
  tail call void @quantum_toffoli(i32 %ctl, i32 %6, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2951
  %7 = shl i32 %3, %i.02, !llfi_index !2952
  %8 = srem i32 %7, %N, !llfi_index !2953
  %9 = sub nsw i32 %N, %8, !llfi_index !2954
  tail call void @add_mod_n(i32 %N, i32 %9, i32 %width, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2955
  tail call void @quantum_toffoli(i32 %ctl, i32 %6, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2956
  %i.0 = add nsw i32 %i.02, -1, !llfi_index !2957
  %10 = icmp sgt i32 %i.0, 0, !llfi_index !2958
  br i1 %10, label %.lr.ph, label %._crit_edge, !llfi_index !2959

._crit_edge:                                      ; preds = %.lr.ph, %0
  tail call void @quantum_toffoli(i32 %ctl, i32 %5, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2960
  %11 = srem i32 %3, %N, !llfi_index !2961
  %12 = icmp sgt i32 %width, 0, !llfi_index !2962
  br i1 %12, label %.lr.ph.i, label %emul.exit, !llfi_index !2963

.lr.ph.i:                                         ; preds = %.backedge.i, %._crit_edge
  %i.02.in.i = phi i32 [ %i.02.i, %.backedge.i ], [ %width, %._crit_edge ], !llfi_index !2964
  %i.02.i = add nsw i32 %i.02.in.i, -1, !llfi_index !2965
  %13 = shl i32 1, %i.02.i, !llfi_index !2966
  %14 = and i32 %13, %11, !llfi_index !2967
  %15 = icmp eq i32 %14, 0, !llfi_index !2968
  br i1 %15, label %.backedge.i, label %17, !llfi_index !2969

.backedge.i:                                      ; preds = %17, %.lr.ph.i
  %16 = icmp sgt i32 %i.02.i, 0, !llfi_index !2970
  br i1 %16, label %.lr.ph.i, label %emul.exit, !llfi_index !2971

; <label>:17                                      ; preds = %.lr.ph.i
  %18 = add nsw i32 %i.02.i, %width, !llfi_index !2972
  tail call void @quantum_toffoli(i32 %5, i32 %2, i32 %18, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2973
  br label %.backedge.i, !llfi_index !2974

emul.exit:                                        ; preds = %.backedge.i, %._crit_edge
  tail call void @quantum_toffoli(i32 %ctl, i32 %5, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2975
  ret void, !llfi_index !2976
}

; Function Attrs: nounwind uwtable
define void @mul_mod_n(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  tail call void @muln(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg), !llfi_index !2977
  tail call void @quantum_swaptheleads_omuln_controlled(i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2978
  tail call void @muln_inv(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg), !llfi_index !2979
  ret void, !llfi_index !2980
}

; Function Attrs: nounwind uwtable
define void @quantum_matrix2qureg(%struct.quantum_reg_struct* noalias nocapture sret %agg.result, %struct.quantum_matrix_struct* nocapture readonly %m, i32 %width) #0 {
  %1 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 1, !llfi_index !2981
  %2 = load i32* %1, align 4, !tbaa !2982, !llfi_index !2983
  %3 = icmp eq i32 %2, 1, !llfi_index !2984
  br i1 %3, label %.preheader, label %31, !llfi_index !2985

.preheader:                                       ; preds = %0
  %4 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 0, !llfi_index !2986
  %5 = load i32* %4, align 4, !tbaa !2987, !llfi_index !2988
  %6 = icmp sgt i32 %5, 0, !llfi_index !2989
  br i1 %6, label %.lr.ph6, label %._crit_edge7, !llfi_index !2990

.lr.ph6:                                          ; preds = %.preheader
  %7 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 2, !llfi_index !2991
  %8 = load { float, float }** %7, align 8, !tbaa !2110, !llfi_index !2992
  %9 = add i32 %5, -1, !llfi_index !2993
  %10 = zext i32 %9 to i64, !llfi_index !2994
  %11 = add i64 %10, 1, !llfi_index !2995
  %end.idx = add i64 %10, 1, !llfi_index !2996
  %n.vec = and i64 %11, 8589934590, !llfi_index !2997
  %cmp.zero = icmp eq i64 %n.vec, 0, !llfi_index !2998
  br i1 %cmp.zero, label %middle.block, label %vector.body, !llfi_index !2999

vector.body:                                      ; preds = %vector.body, %.lr.ph6
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph6 ], !llfi_index !3000
  %vec.phi = phi i32 [ %28, %vector.body ], [ 0, %.lr.ph6 ], !llfi_index !3001
  %vec.phi12 = phi i32 [ %29, %vector.body ], [ 0, %.lr.ph6 ], !llfi_index !3002
  %induction1114 = or i64 %index, 1, !llfi_index !3003
  %12 = getelementptr inbounds { float, float }* %8, i64 %index, i32 0, !llfi_index !3004
  %13 = getelementptr inbounds { float, float }* %8, i64 %induction1114, i32 0, !llfi_index !3005
  %14 = load float* %12, align 4, !llfi_index !3006
  %15 = load float* %13, align 4, !llfi_index !3007
  %16 = getelementptr inbounds { float, float }* %8, i64 %index, i32 1, !llfi_index !3008
  %17 = getelementptr inbounds { float, float }* %8, i64 %induction1114, i32 1, !llfi_index !3009
  %18 = load float* %16, align 4, !llfi_index !3010
  %19 = load float* %17, align 4, !llfi_index !3011
  %20 = fcmp une float %14, 0.000000e+00, !llfi_index !3012
  %21 = fcmp une float %15, 0.000000e+00, !llfi_index !3013
  %22 = fcmp une float %18, 0.000000e+00, !llfi_index !3014
  %23 = fcmp une float %19, 0.000000e+00, !llfi_index !3015
  %24 = or i1 %20, %22, !llfi_index !3016
  %25 = or i1 %21, %23, !llfi_index !3017
  %26 = zext i1 %24 to i32, !llfi_index !3018
  %27 = zext i1 %25 to i32, !llfi_index !3019
  %28 = add nsw i32 %26, %vec.phi, !llfi_index !3020
  %29 = add nsw i32 %27, %vec.phi12, !llfi_index !3021
  %index.next = add i64 %index, 2, !llfi_index !3022
  %30 = icmp eq i64 %index.next, %n.vec, !llfi_index !3023
  br i1 %30, label %middle.block, label %vector.body, !llvm.loop !3024, !llfi_index !3027

middle.block:                                     ; preds = %vector.body, %.lr.ph6
  %resume.val = phi i64 [ 0, %.lr.ph6 ], [ %n.vec, %vector.body ], !llfi_index !3028
  %rdx.vec.exit.phi = phi i32 [ 0, %.lr.ph6 ], [ %28, %vector.body ], !llfi_index !3029
  %rdx.vec.exit.phi13 = phi i32 [ 0, %.lr.ph6 ], [ %29, %vector.body ], !llfi_index !3030
  %bin.rdx = add i32 %rdx.vec.exit.phi13, %rdx.vec.exit.phi, !llfi_index !3031
  %cmp.n = icmp eq i64 %end.idx, %resume.val, !llfi_index !3032
  br i1 %cmp.n, label %._crit_edge7, label %scalar.ph, !llfi_index !3033

; <label>:31                                      ; preds = %0
  %32 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str17, i64 0, i64 0), i32 %2) #3, !llfi_index !3034
  tail call void @exit(i32 1) #8, !llfi_index !3035
  unreachable, !llfi_index !3036

scalar.ph:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %scalar.ph ], [ %resume.val, %middle.block ], !llfi_index !3037
  %size.05 = phi i32 [ %.size.0, %scalar.ph ], [ %bin.rdx, %middle.block ], !llfi_index !3038
  %33 = getelementptr inbounds { float, float }* %8, i64 %indvars.iv9, i32 0, !llfi_index !3039
  %34 = load float* %33, align 4, !llfi_index !3040
  %35 = getelementptr inbounds { float, float }* %8, i64 %indvars.iv9, i32 1, !llfi_index !3041
  %36 = load float* %35, align 4, !llfi_index !3042
  %37 = fcmp une float %34, 0.000000e+00, !llfi_index !3043
  %38 = fcmp une float %36, 0.000000e+00, !llfi_index !3044
  %39 = or i1 %37, %38, !llfi_index !3045
  %40 = zext i1 %39 to i32, !llfi_index !3046
  %.size.0 = add nsw i32 %40, %size.05, !llfi_index !3047
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !llfi_index !3048
  %41 = trunc i64 %indvars.iv.next10 to i32, !llfi_index !3049
  %42 = icmp slt i32 %41, %5, !llfi_index !3050
  br i1 %42, label %scalar.ph, label %._crit_edge7, !llvm.loop !3051, !llfi_index !3052

._crit_edge7:                                     ; preds = %scalar.ph, %middle.block, %.preheader
  %size.0.lcssa = phi i32 [ 0, %.preheader ], [ %.size.0, %scalar.ph ], [ %bin.rdx, %middle.block ], !llfi_index !3053
  %43 = add nsw i32 %width, 2, !llfi_index !3054
  %44 = sext i32 %size.0.lcssa to i64, !llfi_index !3055
  %45 = tail call noalias i8* @calloc(i64 %44, i64 16) #3, !llfi_index !3056
  %46 = bitcast i8* %45 to %struct.quantum_reg_node_struct*, !llfi_index !3057
  %47 = icmp eq i8* %45, null, !llfi_index !3058
  br i1 %47, label %48, label %50, !llfi_index !3059

; <label>:48                                      ; preds = %._crit_edge7
  %49 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str1, i64 0, i64 0), i32 %size.0.lcssa) #3, !llfi_index !3060
  tail call void @exit(i32 1) #8, !llfi_index !3061
  unreachable, !llfi_index !3062

; <label>:50                                      ; preds = %._crit_edge7
  %51 = shl nsw i64 %44, 4, !llfi_index !3063
  %52 = tail call i64 @quantum_memman(i64 %51) #3, !llfi_index !3064
  %53 = shl i32 1, %43, !llfi_index !3065
  %54 = sext i32 %53 to i64, !llfi_index !3066
  %55 = tail call noalias i8* @calloc(i64 %54, i64 4) #3, !llfi_index !3067
  %56 = bitcast i8* %55 to i32*, !llfi_index !3068
  %57 = icmp eq i8* %55, null, !llfi_index !3069
  br i1 %57, label %58, label %60, !llfi_index !3070

; <label>:58                                      ; preds = %50
  %59 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str218, i64 0, i64 0), i32 %53) #3, !llfi_index !3071
  tail call void @exit(i32 1) #8, !llfi_index !3072
  unreachable, !llfi_index !3073

; <label>:60                                      ; preds = %50
  %61 = shl nsw i64 %54, 2, !llfi_index !3074
  %62 = tail call i64 @quantum_memman(i64 %61) #3, !llfi_index !3075
  %63 = load i32* %4, align 4, !tbaa !2987, !llfi_index !3076
  %64 = icmp sgt i32 %63, 0, !llfi_index !3077
  br i1 %64, label %.lr.ph, label %._crit_edge, !llfi_index !3078

.lr.ph:                                           ; preds = %60
  %65 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 2, !llfi_index !3079
  %.pre = load { float, float }** %65, align 8, !tbaa !2110, !llfi_index !3080
  br label %66, !llfi_index !3081

; <label>:66                                      ; preds = %82, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %82 ], !llfi_index !3082
  %j.03 = phi i32 [ 0, %.lr.ph ], [ %j.1, %82 ], !llfi_index !3083
  %67 = getelementptr inbounds { float, float }* %.pre, i64 %indvars.iv, i32 0, !llfi_index !3084
  %68 = load float* %67, align 4, !llfi_index !3085
  %69 = getelementptr inbounds { float, float }* %.pre, i64 %indvars.iv, i32 1, !llfi_index !3086
  %70 = load float* %69, align 4, !llfi_index !3087
  %71 = fcmp une float %68, 0.000000e+00, !llfi_index !3088
  %72 = fcmp une float %70, 0.000000e+00, !llfi_index !3089
  %73 = or i1 %71, %72, !llfi_index !3090
  br i1 %73, label %74, label %82, !llfi_index !3091

; <label>:74                                      ; preds = %66
  %75 = sext i32 %j.03 to i64, !llfi_index !3092
  %76 = getelementptr inbounds %struct.quantum_reg_node_struct* %46, i64 %75, i32 1, !llfi_index !3093
  store i64 %indvars.iv, i64* %76, align 8, !tbaa !249, !llfi_index !3094
  %77 = load float* %67, align 4, !llfi_index !3095
  %78 = load float* %69, align 4, !llfi_index !3096
  %79 = getelementptr inbounds %struct.quantum_reg_node_struct* %46, i64 %75, i32 0, i32 0, !llfi_index !3097
  %80 = getelementptr inbounds %struct.quantum_reg_node_struct* %46, i64 %75, i32 0, i32 1, !llfi_index !3098
  store float %77, float* %79, align 4, !llfi_index !3099
  store float %78, float* %80, align 4, !llfi_index !3100
  %81 = add nsw i32 %j.03, 1, !llfi_index !3101
  br label %82, !llfi_index !3102

; <label>:82                                      ; preds = %74, %66
  %j.1 = phi i32 [ %81, %74 ], [ %j.03, %66 ], !llfi_index !3103
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3104
  %83 = trunc i64 %indvars.iv.next to i32, !llfi_index !3105
  %84 = icmp slt i32 %83, %63, !llfi_index !3106
  br i1 %84, label %66, label %._crit_edge, !llfi_index !3107

._crit_edge:                                      ; preds = %82, %60
  %85 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 0, !llfi_index !3108
  store i32 %width, i32* %85, align 8, !llfi_index !3109
  %86 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 1, !llfi_index !3110
  store i32 %size.0.lcssa, i32* %86, align 4, !llfi_index !3111
  %87 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 2, !llfi_index !3112
  store i32 %43, i32* %87, align 8, !llfi_index !3113
  %88 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 3, !llfi_index !3114
  store %struct.quantum_reg_node_struct* %46, %struct.quantum_reg_node_struct** %88, align 8, !llfi_index !3115
  %89 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 4, !llfi_index !3116
  store i32* %56, i32** %89, align 8, !llfi_index !3117
  ret void, !llfi_index !3118
}

; Function Attrs: nounwind uwtable
define void @quantum_new_qureg(%struct.quantum_reg_struct* noalias nocapture sret %agg.result, i64 %initval, i32 %width) #0 {
  %1 = add nsw i32 %width, 2, !llfi_index !3119
  %2 = tail call noalias i8* @calloc(i64 1, i64 16) #3, !llfi_index !3120
  %3 = bitcast i8* %2 to %struct.quantum_reg_node_struct*, !llfi_index !3121
  %4 = icmp eq i8* %2, null, !llfi_index !3122
  br i1 %4, label %5, label %7, !llfi_index !3123

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str1, i64 0, i64 0), i32 1) #3, !llfi_index !3124
  tail call void @exit(i32 1) #8, !llfi_index !3125
  unreachable, !llfi_index !3126

; <label>:7                                       ; preds = %0
  %8 = tail call i64 @quantum_memman(i64 16) #3, !llfi_index !3127
  %9 = shl i32 1, %1, !llfi_index !3128
  %10 = sext i32 %9 to i64, !llfi_index !3129
  %11 = tail call noalias i8* @calloc(i64 %10, i64 4) #3, !llfi_index !3130
  %12 = bitcast i8* %11 to i32*, !llfi_index !3131
  %13 = icmp eq i8* %11, null, !llfi_index !3132
  br i1 %13, label %14, label %16, !llfi_index !3133

; <label>:14                                      ; preds = %7
  %15 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str218, i64 0, i64 0), i32 %9) #3, !llfi_index !3134
  tail call void @exit(i32 1) #8, !llfi_index !3135
  unreachable, !llfi_index !3136

; <label>:16                                      ; preds = %7
  %17 = shl nsw i64 %10, 2, !llfi_index !3137
  %18 = tail call i64 @quantum_memman(i64 %17) #3, !llfi_index !3138
  %19 = getelementptr inbounds i8* %2, i64 8, !llfi_index !3139
  %20 = bitcast i8* %19 to i64*, !llfi_index !3140
  store i64 %initval, i64* %20, align 8, !tbaa !249, !llfi_index !3141
  %21 = bitcast i8* %2 to float*, !llfi_index !3142
  %22 = getelementptr inbounds i8* %2, i64 4, !llfi_index !3143
  %23 = bitcast i8* %22 to float*, !llfi_index !3144
  store float 1.000000e+00, float* %21, align 4, !llfi_index !3145
  store float 0.000000e+00, float* %23, align 4, !llfi_index !3146
  %24 = tail call i8* @getenv(i8* getelementptr inbounds ([9 x i8]* @.str319, i64 0, i64 0)) #3, !llfi_index !3147
  %25 = icmp eq i8* %24, null, !llfi_index !3148
  br i1 %25, label %28, label %26, !llfi_index !3149

; <label>:26                                      ; preds = %16
  tail call void (...)* bitcast (void ()* @quantum_objcode_start to void (...)*)() #3, !llfi_index !3150
  tail call void @quantum_objcode_file(i8* %24) #3, !llfi_index !3151
  %27 = tail call i32 @atexit(void ()* bitcast (void (i8*)* @quantum_objcode_exit to void ()*)) #3, !llfi_index !3152
  br label %28, !llfi_index !3153

; <label>:28                                      ; preds = %26, %16
  %29 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 0, i64 %initval) #3, !llfi_index !3154
  %30 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 0, !llfi_index !3155
  store i32 %width, i32* %30, align 8, !llfi_index !3156
  %31 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 1, !llfi_index !3157
  store i32 1, i32* %31, align 4, !llfi_index !3158
  %32 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 2, !llfi_index !3159
  store i32 %1, i32* %32, align 8, !llfi_index !3160
  %33 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 3, !llfi_index !3161
  store %struct.quantum_reg_node_struct* %3, %struct.quantum_reg_node_struct** %33, align 8, !llfi_index !3162
  %34 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 4, !llfi_index !3163
  store i32* %12, i32** %34, align 8, !llfi_index !3164
  ret void, !llfi_index !3165
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #1

; Function Attrs: nounwind uwtable
define { i64, { float, float }* } @quantum_qureg2matrix(%struct.quantum_reg_struct* byval nocapture readonly align 8 %reg) #0 {
  %1 = bitcast %struct.quantum_reg_struct* %reg to i64*, !llfi_index !3166
  %2 = load i64* %1, align 8, !llfi_index !3167
  %3 = trunc i64 %2 to i32, !llfi_index !3168
  %4 = shl i32 1, %3, !llfi_index !3169
  %5 = tail call { i64, { float, float }* } @quantum_new_matrix(i32 1, i32 %4) #3, !llfi_index !3170
  %6 = extractvalue { i64, { float, float }* } %5, 1, !llfi_index !3171
  %7 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !3172
  %8 = lshr i64 %2, 32, !llfi_index !3173
  %9 = trunc i64 %8 to i32, !llfi_index !3174
  %10 = icmp sgt i32 %9, 0, !llfi_index !3175
  br i1 %10, label %.lr.ph, label %._crit_edge, !llfi_index !3176

.lr.ph:                                           ; preds = %0
  %11 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3177
  br label %12, !llfi_index !3178

; <label>:12                                      ; preds = %12, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %12 ], !llfi_index !3179
  %13 = load %struct.quantum_reg_node_struct** %11, align 8, !tbaa !228, !llfi_index !3180
  %14 = getelementptr inbounds %struct.quantum_reg_node_struct* %13, i64 %indvars.iv, i32 0, i32 0, !llfi_index !3181
  %15 = load float* %14, align 4, !llfi_index !3182
  %16 = getelementptr inbounds %struct.quantum_reg_node_struct* %13, i64 %indvars.iv, i32 0, i32 1, !llfi_index !3183
  %17 = load float* %16, align 4, !llfi_index !3184
  %18 = getelementptr inbounds %struct.quantum_reg_node_struct* %13, i64 %indvars.iv, i32 1, !llfi_index !3185
  %19 = load i64* %18, align 8, !tbaa !249, !llfi_index !3186
  %20 = getelementptr inbounds { float, float }* %6, i64 %19, i32 0, !llfi_index !3187
  %21 = getelementptr inbounds { float, float }* %6, i64 %19, i32 1, !llfi_index !3188
  store float %15, float* %20, align 4, !llfi_index !3189
  store float %17, float* %21, align 4, !llfi_index !3190
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3191
  %22 = load i32* %7, align 4, !tbaa !223, !llfi_index !3192
  %23 = trunc i64 %indvars.iv.next to i32, !llfi_index !3193
  %24 = icmp slt i32 %23, %22, !llfi_index !3194
  br i1 %24, label %12, label %._crit_edge, !llfi_index !3195

._crit_edge:                                      ; preds = %12, %0
  ret { i64, { float, float }* } %5, !llfi_index !3196
}

; Function Attrs: nounwind uwtable
define void @quantum_destroy_hash(%struct.quantum_reg_struct* nocapture %reg) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !3197
  %2 = load i32** %1, align 8, !tbaa !1028, !llfi_index !3198
  %3 = bitcast i32* %2 to i8*, !llfi_index !3199
  tail call void @free(i8* %3) #3, !llfi_index !3200
  %4 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !3201
  %5 = load i32* %4, align 4, !tbaa !1023, !llfi_index !3202
  %6 = shl i32 -1, %5, !llfi_index !3203
  %7 = sext i32 %6 to i64, !llfi_index !3204
  %8 = shl nsw i64 %7, 2, !llfi_index !3205
  %9 = tail call i64 @quantum_memman(i64 %8) #3, !llfi_index !3206
  store i32* null, i32** %1, align 8, !tbaa !1028, !llfi_index !3207
  ret void, !llfi_index !3208
}

; Function Attrs: nounwind uwtable
define void @quantum_delete_qureg(%struct.quantum_reg_struct* nocapture %reg) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !3209
  %2 = load i32** %1, align 8, !tbaa !1028, !llfi_index !3210
  %3 = bitcast i32* %2 to i8*, !llfi_index !3211
  tail call void @free(i8* %3) #3, !llfi_index !3212
  %4 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !3213
  %5 = load i32* %4, align 4, !tbaa !1023, !llfi_index !3214
  %6 = shl i32 -1, %5, !llfi_index !3215
  %7 = sext i32 %6 to i64, !llfi_index !3216
  %8 = shl nsw i64 %7, 2, !llfi_index !3217
  %9 = tail call i64 @quantum_memman(i64 %8) #3, !llfi_index !3218
  store i32* null, i32** %1, align 8, !tbaa !1028, !llfi_index !3219
  %10 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3220
  %11 = load %struct.quantum_reg_node_struct** %10, align 8, !tbaa !228, !llfi_index !3221
  %12 = bitcast %struct.quantum_reg_node_struct* %11 to i8*, !llfi_index !3222
  tail call void @free(i8* %12) #3, !llfi_index !3223
  %13 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !3224
  %14 = load i32* %13, align 4, !tbaa !223, !llfi_index !3225
  %15 = sub nsw i32 0, %14, !llfi_index !3226
  %16 = sext i32 %15 to i64, !llfi_index !3227
  %17 = shl nsw i64 %16, 4, !llfi_index !3228
  %18 = tail call i64 @quantum_memman(i64 %17) #3, !llfi_index !3229
  store %struct.quantum_reg_node_struct* null, %struct.quantum_reg_node_struct** %10, align 8, !tbaa !228, !llfi_index !3230
  ret void, !llfi_index !3231
}

; Function Attrs: nounwind uwtable
define void @quantum_delete_qureg_hashpreserve(%struct.quantum_reg_struct* nocapture %reg) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3232
  %2 = load %struct.quantum_reg_node_struct** %1, align 8, !tbaa !228, !llfi_index !3233
  %3 = bitcast %struct.quantum_reg_node_struct* %2 to i8*, !llfi_index !3234
  tail call void @free(i8* %3) #3, !llfi_index !3235
  %4 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !3236
  %5 = load i32* %4, align 4, !tbaa !223, !llfi_index !3237
  %6 = sub nsw i32 0, %5, !llfi_index !3238
  %7 = sext i32 %6 to i64, !llfi_index !3239
  %8 = shl nsw i64 %7, 4, !llfi_index !3240
  %9 = tail call i64 @quantum_memman(i64 %8) #3, !llfi_index !3241
  store %struct.quantum_reg_node_struct* null, %struct.quantum_reg_node_struct** %1, align 8, !tbaa !228, !llfi_index !3242
  ret void, !llfi_index !3243
}

; Function Attrs: nounwind uwtable
define void @quantum_print_qureg(%struct.quantum_reg_struct* byval nocapture readonly align 8 %reg) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !3244
  %2 = load i32* %1, align 4, !tbaa !223, !llfi_index !3245
  %3 = icmp sgt i32 %2, 0, !llfi_index !3246
  br i1 %3, label %.lr.ph8, label %._crit_edge9, !llfi_index !3247

.lr.ph8:                                          ; preds = %0
  %4 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3248
  %5 = load %struct.quantum_reg_node_struct** %4, align 8, !tbaa !228, !llfi_index !3249
  %6 = bitcast %struct.quantum_reg_struct* %reg to i64*, !llfi_index !3250
  %7 = load i64* %6, align 8, !llfi_index !3251
  %8 = trunc i64 %7 to i32, !llfi_index !3252
  %9 = icmp sgt i32 %8, 0, !llfi_index !3253
  %10 = lshr i64 %7, 32, !llfi_index !3254
  %11 = trunc i64 %10 to i32, !llfi_index !3255
  br i1 %9, label %.lr.ph.us, label %.preheader, !llfi_index !3256

; <label>:12                                      ; preds = %19
  %puts.us = tail call i32 @puts(i8* getelementptr inbounds ([3 x i8]* @str23, i64 0, i64 0)), !llfi_index !3257
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !llfi_index !3258
  %13 = trunc i64 %indvars.iv.next14 to i32, !llfi_index !3259
  %14 = icmp slt i32 %13, %11, !llfi_index !3260
  br i1 %14, label %.lr.ph.us, label %._crit_edge9, !llfi_index !3261

; <label>:15                                      ; preds = %.lr.ph.us, %19
  %j.05.us.in = phi i32 [ %8, %.lr.ph.us ], [ %j.05.us, %19 ], !llfi_index !3262
  %j.05.us = add nsw i32 %j.05.us.in, -1, !llfi_index !3263
  %16 = srem i32 %j.05.us, 4, !llfi_index !3264
  %17 = icmp eq i32 %16, 3, !llfi_index !3265
  br i1 %17, label %18, label %19, !llfi_index !3266

; <label>:18                                      ; preds = %15
  %putchar3.us = tail call i32 @putchar(i32 32) #3, !llfi_index !3267
  br label %19, !llfi_index !3268

; <label>:19                                      ; preds = %18, %15
  %20 = zext i32 %j.05.us to i64, !llfi_index !3269
  %21 = shl i64 1, %20, !llfi_index !3270
  %22 = load i64* %34, align 8, !tbaa !249, !llfi_index !3271
  %23 = and i64 %22, %21, !llfi_index !3272
  %24 = icmp ne i64 %23, 0, !llfi_index !3273
  %25 = zext i1 %24 to i32, !llfi_index !3274
  %26 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str620, i64 0, i64 0), i32 %25) #3, !llfi_index !3275
  %27 = icmp sgt i32 %j.05.us, 0, !llfi_index !3276
  br i1 %27, label %15, label %12, !llfi_index !3277

.lr.ph.us:                                        ; preds = %12, %.lr.ph8
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %12 ], [ 0, %.lr.ph8 ], !llfi_index !3278
  %28 = getelementptr inbounds %struct.quantum_reg_node_struct* %5, i64 %indvars.iv13, i32 0, i32 0, !llfi_index !3279
  %29 = load float* %28, align 4, !llfi_index !3280
  %30 = getelementptr inbounds %struct.quantum_reg_node_struct* %5, i64 %indvars.iv13, i32 0, i32 1, !llfi_index !3281
  %31 = load float* %30, align 4, !llfi_index !3282
  %32 = fpext float %29 to double, !llfi_index !3283
  %33 = fpext float %31 to double, !llfi_index !3284
  %34 = getelementptr inbounds %struct.quantum_reg_node_struct* %5, i64 %indvars.iv13, i32 1, !llfi_index !3285
  %35 = load i64* %34, align 8, !tbaa !249, !llfi_index !3286
  %36 = fmul float %29, %29, !llfi_index !3287
  %37 = fmul float %31, %31, !llfi_index !3288
  %38 = fadd float %36, %37, !llfi_index !3289
  %39 = fpext float %38 to double, !llfi_index !3290
  %40 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), double %32, double %33, i64 %35, double %39) #3, !llfi_index !3291
  br label %15, !llfi_index !3292

.preheader:                                       ; preds = %.preheader, %.lr.ph8
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %.lr.ph8 ], !llfi_index !3293
  %41 = getelementptr inbounds %struct.quantum_reg_node_struct* %5, i64 %indvars.iv, i32 0, i32 0, !llfi_index !3294
  %42 = load float* %41, align 4, !llfi_index !3295
  %43 = getelementptr inbounds %struct.quantum_reg_node_struct* %5, i64 %indvars.iv, i32 0, i32 1, !llfi_index !3296
  %44 = load float* %43, align 4, !llfi_index !3297
  %45 = fpext float %42 to double, !llfi_index !3298
  %46 = fpext float %44 to double, !llfi_index !3299
  %47 = getelementptr inbounds %struct.quantum_reg_node_struct* %5, i64 %indvars.iv, i32 1, !llfi_index !3300
  %48 = load i64* %47, align 8, !tbaa !249, !llfi_index !3301
  %49 = fmul float %42, %42, !llfi_index !3302
  %50 = fmul float %44, %44, !llfi_index !3303
  %51 = fadd float %49, %50, !llfi_index !3304
  %52 = fpext float %51 to double, !llfi_index !3305
  %53 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str4, i64 0, i64 0), double %45, double %46, i64 %48, double %52) #3, !llfi_index !3306
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([3 x i8]* @str23, i64 0, i64 0)), !llfi_index !3307
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3308
  %54 = trunc i64 %indvars.iv.next to i32, !llfi_index !3309
  %55 = icmp slt i32 %54, %11, !llfi_index !3310
  br i1 %55, label %.preheader, label %._crit_edge9, !llfi_index !3311

._crit_edge9:                                     ; preds = %.preheader, %12, %0
  %putchar = tail call i32 @putchar(i32 10) #3, !llfi_index !3312
  ret void, !llfi_index !3313
}

; Function Attrs: nounwind uwtable
define void @quantum_print_expn(%struct.quantum_reg_struct* byval nocapture readonly align 8 %reg) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !3314
  %2 = load i32* %1, align 4, !tbaa !223, !llfi_index !3315
  %3 = icmp sgt i32 %2, 0, !llfi_index !3316
  br i1 %3, label %.lr.ph, label %._crit_edge, !llfi_index !3317

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3318
  %5 = load %struct.quantum_reg_node_struct** %4, align 8, !tbaa !228, !llfi_index !3319
  %6 = bitcast %struct.quantum_reg_struct* %reg to i64*, !llfi_index !3320
  %7 = load i64* %6, align 8, !llfi_index !3321
  %8 = trunc i64 %7 to i32, !llfi_index !3322
  %9 = sdiv i32 %8, 2, !llfi_index !3323
  %10 = lshr i64 %7, 32, !llfi_index !3324
  %11 = trunc i64 %10 to i32, !llfi_index !3325
  br label %12, !llfi_index !3326

; <label>:12                                      ; preds = %12, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %12 ], !llfi_index !3327
  %13 = getelementptr inbounds %struct.quantum_reg_node_struct* %5, i64 %indvars.iv, i32 1, !llfi_index !3328
  %14 = load i64* %13, align 8, !tbaa !249, !llfi_index !3329
  %15 = trunc i64 %indvars.iv to i32, !llfi_index !3330
  %16 = shl i32 %15, %9, !llfi_index !3331
  %17 = sext i32 %16 to i64, !llfi_index !3332
  %18 = sub i64 %14, %17, !llfi_index !3333
  %19 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str921, i64 0, i64 0), i32 %15, i64 %18) #3, !llfi_index !3334
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3335
  %20 = trunc i64 %indvars.iv.next to i32, !llfi_index !3336
  %21 = icmp slt i32 %20, %11, !llfi_index !3337
  br i1 %21, label %12, label %._crit_edge, !llfi_index !3338

._crit_edge:                                      ; preds = %12, %0
  ret void, !llfi_index !3339
}

; Function Attrs: nounwind uwtable
define void @quantum_addscratch(i32 %bits, %struct.quantum_reg_struct* nocapture %reg) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !3340
  %2 = load i32* %1, align 4, !tbaa !22, !llfi_index !3341
  %3 = add nsw i32 %2, %bits, !llfi_index !3342
  store i32 %3, i32* %1, align 4, !tbaa !22, !llfi_index !3343
  %4 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !3344
  %5 = load i32* %4, align 4, !tbaa !223, !llfi_index !3345
  %6 = icmp sgt i32 %5, 0, !llfi_index !3346
  br i1 %6, label %.lr.ph, label %._crit_edge, !llfi_index !3347

.lr.ph:                                           ; preds = %0
  %7 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3348
  %8 = load %struct.quantum_reg_node_struct** %7, align 8, !tbaa !228, !llfi_index !3349
  %9 = zext i32 %bits to i64, !llfi_index !3350
  br label %10, !llfi_index !3351

; <label>:10                                      ; preds = %10, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %10 ], !llfi_index !3352
  %11 = getelementptr inbounds %struct.quantum_reg_node_struct* %8, i64 %indvars.iv, i32 1, !llfi_index !3353
  %12 = load i64* %11, align 8, !tbaa !249, !llfi_index !3354
  %13 = shl i64 %12, %9, !llfi_index !3355
  store i64 %13, i64* %11, align 8, !tbaa !249, !llfi_index !3356
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3357
  %14 = trunc i64 %indvars.iv.next to i32, !llfi_index !3358
  %15 = icmp slt i32 %14, %5, !llfi_index !3359
  br i1 %15, label %10, label %._crit_edge, !llfi_index !3360

._crit_edge:                                      ; preds = %10, %0
  ret void, !llfi_index !3361
}

; Function Attrs: nounwind uwtable
define void @quantum_print_hash(%struct.quantum_reg_struct* byval nocapture readonly align 8 %reg) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !3362
  %2 = load i32* %1, align 8, !tbaa !1023, !llfi_index !3363
  %3 = icmp eq i32 %2, 31, !llfi_index !3364
  br i1 %3, label %._crit_edge, label %.lr.ph, !llfi_index !3365

.lr.ph:                                           ; preds = %0
  %4 = shl i32 1, %2, !llfi_index !3366
  %5 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !3367
  %6 = load i32** %5, align 8, !tbaa !1028, !llfi_index !3368
  %7 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3369
  %8 = load %struct.quantum_reg_node_struct** %7, align 8, !tbaa !228, !llfi_index !3370
  br label %9, !llfi_index !3371

; <label>:9                                       ; preds = %20, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %20 ], !llfi_index !3372
  %10 = trunc i64 %indvars.iv to i32, !llfi_index !3373
  %11 = icmp eq i32 %10, 0, !llfi_index !3374
  br i1 %11, label %20, label %12, !llfi_index !3375

; <label>:12                                      ; preds = %9
  %13 = getelementptr inbounds i32* %6, i64 %indvars.iv, !llfi_index !3376
  %14 = load i32* %13, align 4, !tbaa !1, !llfi_index !3377
  %15 = add nsw i32 %14, -1, !llfi_index !3378
  %16 = sext i32 %15 to i64, !llfi_index !3379
  %17 = getelementptr inbounds %struct.quantum_reg_node_struct* %8, i64 %16, i32 1, !llfi_index !3380
  %18 = load i64* %17, align 8, !tbaa !249, !llfi_index !3381
  %19 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str1022, i64 0, i64 0), i32 %10, i32 %15, i64 %18) #3, !llfi_index !3382
  br label %20, !llfi_index !3383

; <label>:20                                      ; preds = %12, %9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3384
  %21 = trunc i64 %indvars.iv.next to i32, !llfi_index !3385
  %22 = icmp slt i32 %21, %4, !llfi_index !3386
  br i1 %22, label %9, label %._crit_edge, !llfi_index !3387

._crit_edge:                                      ; preds = %20, %0
  ret void, !llfi_index !3388
}

; Function Attrs: nounwind uwtable
define void @quantum_kronecker(%struct.quantum_reg_struct* noalias nocapture sret %agg.result, %struct.quantum_reg_struct* nocapture readonly %reg1, %struct.quantum_reg_struct* nocapture readonly %reg2) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg1, i64 0, i32 0, !llfi_index !3389
  %2 = load i32* %1, align 4, !tbaa !22, !llfi_index !3390
  %3 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 0, !llfi_index !3391
  %4 = load i32* %3, align 4, !tbaa !22, !llfi_index !3392
  %5 = add nsw i32 %4, %2, !llfi_index !3393
  %6 = getelementptr inbounds %struct.quantum_reg_struct* %reg1, i64 0, i32 1, !llfi_index !3394
  %7 = load i32* %6, align 4, !tbaa !223, !llfi_index !3395
  %8 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 1, !llfi_index !3396
  %9 = load i32* %8, align 4, !tbaa !223, !llfi_index !3397
  %10 = mul nsw i32 %9, %7, !llfi_index !3398
  %11 = add nsw i32 %10, 2, !llfi_index !3399
  %12 = sext i32 %10 to i64, !llfi_index !3400
  %13 = tail call noalias i8* @calloc(i64 %12, i64 16) #3, !llfi_index !3401
  %14 = bitcast i8* %13 to %struct.quantum_reg_node_struct*, !llfi_index !3402
  %15 = icmp eq i8* %13, null, !llfi_index !3403
  br i1 %15, label %16, label %18, !llfi_index !3404

; <label>:16                                      ; preds = %0
  %17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str1, i64 0, i64 0), i32 %10) #3, !llfi_index !3405
  tail call void @exit(i32 1) #8, !llfi_index !3406
  unreachable, !llfi_index !3407

; <label>:18                                      ; preds = %0
  %19 = shl nsw i64 %12, 4, !llfi_index !3408
  %20 = tail call i64 @quantum_memman(i64 %19) #3, !llfi_index !3409
  %21 = shl i32 1, %11, !llfi_index !3410
  %22 = sext i32 %21 to i64, !llfi_index !3411
  %23 = tail call noalias i8* @calloc(i64 %22, i64 4) #3, !llfi_index !3412
  %24 = bitcast i8* %23 to i32*, !llfi_index !3413
  %25 = icmp eq i8* %23, null, !llfi_index !3414
  br i1 %25, label %26, label %28, !llfi_index !3415

; <label>:26                                      ; preds = %18
  %27 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str218, i64 0, i64 0), i32 %21) #3, !llfi_index !3416
  tail call void @exit(i32 1) #8, !llfi_index !3417
  unreachable, !llfi_index !3418

; <label>:28                                      ; preds = %18
  %29 = shl nsw i64 %22, 2, !llfi_index !3419
  %30 = tail call i64 @quantum_memman(i64 %29) #3, !llfi_index !3420
  %31 = load i32* %6, align 4, !tbaa !223, !llfi_index !3421
  %32 = icmp sgt i32 %31, 0, !llfi_index !3422
  br i1 %32, label %.preheader.lr.ph, label %._crit_edge5, !llfi_index !3423

.preheader.lr.ph:                                 ; preds = %28
  %33 = getelementptr inbounds %struct.quantum_reg_struct* %reg1, i64 0, i32 3, !llfi_index !3424
  %34 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 3, !llfi_index !3425
  %.pre = load i32* %8, align 4, !tbaa !223, !llfi_index !3426
  br label %.preheader, !llfi_index !3427

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv6 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next7, %._crit_edge ], !llfi_index !3428
  %35 = icmp sgt i32 %.pre, 0, !llfi_index !3429
  br i1 %35, label %.lr.ph, label %._crit_edge, !llfi_index !3430

.lr.ph:                                           ; preds = %.preheader
  %.pre8 = load %struct.quantum_reg_node_struct** %33, align 8, !tbaa !228, !llfi_index !3431
  %.pre9 = load i32* %3, align 4, !tbaa !22, !llfi_index !3432
  %.pre10 = load %struct.quantum_reg_node_struct** %34, align 8, !tbaa !228, !llfi_index !3433
  br label %36, !llfi_index !3434

; <label>:36                                      ; preds = %36, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %36 ], !llfi_index !3435
  %37 = getelementptr inbounds %struct.quantum_reg_node_struct* %.pre8, i64 %indvars.iv6, i32 1, !llfi_index !3436
  %38 = load i64* %37, align 8, !tbaa !249, !llfi_index !3437
  %39 = zext i32 %.pre9 to i64, !llfi_index !3438
  %40 = shl i64 %38, %39, !llfi_index !3439
  %41 = getelementptr inbounds %struct.quantum_reg_node_struct* %.pre10, i64 %indvars.iv, i32 1, !llfi_index !3440
  %42 = load i64* %41, align 8, !tbaa !249, !llfi_index !3441
  %43 = or i64 %40, %42, !llfi_index !3442
  %44 = trunc i64 %indvars.iv6 to i32, !llfi_index !3443
  %45 = mul nsw i32 %.pre, %44, !llfi_index !3444
  %46 = trunc i64 %indvars.iv to i32, !llfi_index !3445
  %47 = add nsw i32 %45, %46, !llfi_index !3446
  %48 = sext i32 %47 to i64, !llfi_index !3447
  %49 = getelementptr inbounds %struct.quantum_reg_node_struct* %14, i64 %48, i32 1, !llfi_index !3448
  store i64 %43, i64* %49, align 8, !tbaa !249, !llfi_index !3449
  %50 = getelementptr inbounds %struct.quantum_reg_node_struct* %.pre8, i64 %indvars.iv6, i32 0, i32 0, !llfi_index !3450
  %51 = load float* %50, align 4, !llfi_index !3451
  %52 = getelementptr inbounds %struct.quantum_reg_node_struct* %.pre8, i64 %indvars.iv6, i32 0, i32 1, !llfi_index !3452
  %53 = load float* %52, align 4, !llfi_index !3453
  %54 = getelementptr inbounds %struct.quantum_reg_node_struct* %.pre10, i64 %indvars.iv, i32 0, i32 0, !llfi_index !3454
  %55 = load float* %54, align 4, !llfi_index !3455
  %56 = getelementptr inbounds %struct.quantum_reg_node_struct* %.pre10, i64 %indvars.iv, i32 0, i32 1, !llfi_index !3456
  %57 = load float* %56, align 4, !llfi_index !3457
  %58 = fmul float %51, %55, !llfi_index !3458
  %59 = fmul float %53, %57, !llfi_index !3459
  %60 = fsub float %58, %59, !llfi_index !3460
  %61 = fmul float %53, %55, !llfi_index !3461
  %62 = fmul float %51, %57, !llfi_index !3462
  %63 = fadd float %61, %62, !llfi_index !3463
  %64 = getelementptr inbounds %struct.quantum_reg_node_struct* %14, i64 %48, i32 0, i32 0, !llfi_index !3464
  %65 = getelementptr inbounds %struct.quantum_reg_node_struct* %14, i64 %48, i32 0, i32 1, !llfi_index !3465
  store float %60, float* %64, align 4, !llfi_index !3466
  store float %63, float* %65, align 4, !llfi_index !3467
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3468
  %66 = trunc i64 %indvars.iv.next to i32, !llfi_index !3469
  %67 = icmp slt i32 %66, %.pre, !llfi_index !3470
  br i1 %67, label %36, label %._crit_edge, !llfi_index !3471

._crit_edge:                                      ; preds = %36, %.preheader
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !llfi_index !3472
  %68 = trunc i64 %indvars.iv.next7 to i32, !llfi_index !3473
  %69 = icmp slt i32 %68, %31, !llfi_index !3474
  br i1 %69, label %.preheader, label %._crit_edge5, !llfi_index !3475

._crit_edge5:                                     ; preds = %._crit_edge, %28
  %70 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 0, !llfi_index !3476
  store i32 %5, i32* %70, align 8, !llfi_index !3477
  %71 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 1, !llfi_index !3478
  store i32 %10, i32* %71, align 4, !llfi_index !3479
  %72 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 2, !llfi_index !3480
  store i32 %11, i32* %72, align 8, !llfi_index !3481
  %73 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 3, !llfi_index !3482
  store %struct.quantum_reg_node_struct* %14, %struct.quantum_reg_node_struct** %73, align 8, !llfi_index !3483
  %74 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 4, !llfi_index !3484
  store i32* %24, i32** %74, align 8, !llfi_index !3485
  ret void, !llfi_index !3486
}

; Function Attrs: nounwind uwtable
define void @quantum_state_collapse(%struct.quantum_reg_struct* noalias nocapture sret %agg.result, i32 %pos, i32 %value, %struct.quantum_reg_struct* byval nocapture readonly align 8 %reg) #0 {
  %1 = zext i32 %pos to i64, !llfi_index !3487
  %2 = shl i64 1, %1, !llfi_index !3488
  %3 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !3489
  %4 = load i32* %3, align 4, !tbaa !223, !llfi_index !3490
  %5 = icmp sgt i32 %4, 0, !llfi_index !3491
  br i1 %5, label %.lr.ph28, label %._crit_edge29, !llfi_index !3492

.lr.ph28:                                         ; preds = %0
  %6 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3493
  %7 = load %struct.quantum_reg_node_struct** %6, align 8, !tbaa !228, !llfi_index !3494
  %8 = icmp ne i32 %value, 0, !llfi_index !3495
  br label %9, !llfi_index !3496

; <label>:9                                       ; preds = %25, %.lr.ph28
  %indvars.iv35 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next36, %25 ], !llfi_index !3497
  %size.025 = phi i32 [ 0, %.lr.ph28 ], [ %size.1, %25 ], !llfi_index !3498
  %d.024 = phi double [ 0.000000e+00, %.lr.ph28 ], [ %d.1, %25 ], !llfi_index !3499
  %10 = getelementptr inbounds %struct.quantum_reg_node_struct* %7, i64 %indvars.iv35, i32 1, !llfi_index !3500
  %11 = load i64* %10, align 8, !tbaa !249, !llfi_index !3501
  %12 = and i64 %11, %2, !llfi_index !3502
  %13 = icmp ne i64 %12, 0, !llfi_index !3503
  %or.cond9 = xor i1 %13, %8, !llfi_index !3504
  br i1 %or.cond9, label %25, label %14, !llfi_index !3505

; <label>:14                                      ; preds = %9
  %15 = getelementptr inbounds %struct.quantum_reg_node_struct* %7, i64 %indvars.iv35, i32 0, i32 0, !llfi_index !3506
  %16 = load float* %15, align 4, !llfi_index !3507
  %17 = getelementptr inbounds %struct.quantum_reg_node_struct* %7, i64 %indvars.iv35, i32 0, i32 1, !llfi_index !3508
  %18 = load float* %17, align 4, !llfi_index !3509
  %19 = fmul float %16, %16, !llfi_index !3510
  %20 = fmul float %18, %18, !llfi_index !3511
  %21 = fadd float %19, %20, !llfi_index !3512
  %22 = fpext float %21 to double, !llfi_index !3513
  %23 = fadd double %d.024, %22, !llfi_index !3514
  %24 = add nsw i32 %size.025, 1, !llfi_index !3515
  br label %25, !llfi_index !3516

; <label>:25                                      ; preds = %14, %9
  %d.1 = phi double [ %23, %14 ], [ %d.024, %9 ], !llfi_index !3517
  %size.1 = phi i32 [ %24, %14 ], [ %size.025, %9 ], !llfi_index !3518
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1, !llfi_index !3519
  %26 = trunc i64 %indvars.iv.next36 to i32, !llfi_index !3520
  %27 = icmp slt i32 %26, %4, !llfi_index !3521
  br i1 %27, label %9, label %._crit_edge29, !llfi_index !3522

._crit_edge29:                                    ; preds = %25, %0
  %size.0.lcssa = phi i32 [ 0, %0 ], [ %size.1, %25 ], !llfi_index !3523
  %d.0.lcssa = phi double [ 0.000000e+00, %0 ], [ %d.1, %25 ], !llfi_index !3524
  %28 = bitcast %struct.quantum_reg_struct* %reg to i64*, !llfi_index !3525
  %29 = load i64* %28, align 8, !llfi_index !3526
  %30 = trunc i64 %29 to i32, !llfi_index !3527
  %31 = add nsw i32 %30, -1, !llfi_index !3528
  %32 = sext i32 %size.0.lcssa to i64, !llfi_index !3529
  %33 = tail call noalias i8* @calloc(i64 %32, i64 16) #3, !llfi_index !3530
  %34 = bitcast i8* %33 to %struct.quantum_reg_node_struct*, !llfi_index !3531
  %35 = icmp eq i8* %33, null, !llfi_index !3532
  %36 = lshr i64 %29, 32, !llfi_index !3533
  %37 = trunc i64 %36 to i32, !llfi_index !3534
  br i1 %35, label %38, label %40, !llfi_index !3535

; <label>:38                                      ; preds = %._crit_edge29
  %39 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str11, i64 0, i64 0), i32 %size.0.lcssa) #3, !llfi_index !3536
  tail call void @exit(i32 1) #8, !llfi_index !3537
  unreachable, !llfi_index !3538

; <label>:40                                      ; preds = %._crit_edge29
  %41 = shl nsw i64 %32, 4, !llfi_index !3539
  %42 = tail call i64 @quantum_memman(i64 %41) #3, !llfi_index !3540
  %43 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !3541
  %44 = load i32* %43, align 8, !tbaa !1023, !llfi_index !3542
  %45 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !3543
  %46 = load i32** %45, align 8, !tbaa !1028, !llfi_index !3544
  %47 = icmp sgt i32 %37, 0, !llfi_index !3545
  br i1 %47, label %.lr.ph22, label %._crit_edge23, !llfi_index !3546

.lr.ph22:                                         ; preds = %40
  %48 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3547
  %49 = load %struct.quantum_reg_node_struct** %48, align 8, !tbaa !228, !llfi_index !3548
  %50 = icmp ne i32 %value, 0, !llfi_index !3549
  %51 = icmp sgt i32 %pos, 0, !llfi_index !3550
  %52 = icmp slt i32 %pos, 63, !llfi_index !3551
  %53 = add i32 %pos, -1, !llfi_index !3552
  %54 = zext i32 %53 to i64, !llfi_index !3553
  %55 = add i64 %54, 1, !llfi_index !3554
  br i1 %52, label %.lr.ph22.split.us.preheader, label %.lr.ph22..lr.ph22.split_crit_edge, !llfi_index !3555

.lr.ph22.split.us.preheader:                      ; preds = %.lr.ph22
  %56 = sub i32 63, %pos, !llfi_index !3556
  br label %.lr.ph22.split.us, !llfi_index !3557

.lr.ph22.split.us:                                ; preds = %97, %.lr.ph22.split.us.preheader
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %97 ], [ 0, %.lr.ph22.split.us.preheader ], !llfi_index !3558
  %j.019.us = phi i32 [ %j.1.us, %97 ], [ 0, %.lr.ph22.split.us.preheader ], !llfi_index !3559
  %57 = getelementptr inbounds %struct.quantum_reg_node_struct* %49, i64 %indvars.iv43, i32 1, !llfi_index !3560
  %58 = load i64* %57, align 8, !tbaa !249, !llfi_index !3561
  %59 = and i64 %58, %2, !llfi_index !3562
  %60 = icmp ne i64 %59, 0, !llfi_index !3563
  %or.cond10.us = xor i1 %60, %50, !llfi_index !3564
  br i1 %or.cond10.us, label %97, label %.preheader.us, !llfi_index !3565

; <label>:61                                      ; preds = %middle.block54, %scalar.ph55
  %.lcssa46 = phi i64 [ %92, %scalar.ph55 ], [ %bin.rdx71, %middle.block54 ], !llfi_index !3566
  %62 = and i64 %58, %.lcssa46, !llfi_index !3567
  %63 = lshr i64 %62, 1, !llfi_index !3568
  %64 = or i64 %63, %105, !llfi_index !3569
  %65 = sext i32 %j.019.us to i64, !llfi_index !3570
  %66 = getelementptr inbounds %struct.quantum_reg_node_struct* %34, i64 %65, i32 1, !llfi_index !3571
  store i64 %64, i64* %66, align 8, !tbaa !249, !llfi_index !3572
  %67 = getelementptr inbounds %struct.quantum_reg_node_struct* %49, i64 %indvars.iv43, i32 0, i32 0, !llfi_index !3573
  %68 = load float* %67, align 4, !llfi_index !3574
  %69 = getelementptr inbounds %struct.quantum_reg_node_struct* %49, i64 %indvars.iv43, i32 0, i32 1, !llfi_index !3575
  %70 = load float* %69, align 4, !llfi_index !3576
  %71 = fmul float %70, 0.000000e+00, !llfi_index !3577
  %72 = fsub float %68, %71, !llfi_index !3578
  %73 = fmul float %68, 0.000000e+00, !llfi_index !3579
  %74 = fadd float %70, %73, !llfi_index !3580
  %75 = tail call double @sqrt(double %d.0.lcssa) #3, !llfi_index !3581
  %76 = fptrunc double %75 to float, !llfi_index !3582
  %77 = fmul float %72, %76, !llfi_index !3583
  %78 = fmul float %74, 0.000000e+00, !llfi_index !3584
  %79 = fadd float %78, %77, !llfi_index !3585
  %80 = fmul float %76, %76, !llfi_index !3586
  %81 = fadd float %80, 0.000000e+00, !llfi_index !3587
  %82 = fmul float %74, %76, !llfi_index !3588
  %83 = fmul float %72, 0.000000e+00, !llfi_index !3589
  %84 = fsub float %82, %83, !llfi_index !3590
  %85 = fdiv float %79, %81, !llfi_index !3591
  %86 = fdiv float %84, %81, !llfi_index !3592
  %87 = getelementptr inbounds %struct.quantum_reg_node_struct* %34, i64 %65, i32 0, i32 0, !llfi_index !3593
  %88 = getelementptr inbounds %struct.quantum_reg_node_struct* %34, i64 %65, i32 0, i32 1, !llfi_index !3594
  store float %85, float* %87, align 4, !llfi_index !3595
  store float %86, float* %88, align 4, !llfi_index !3596
  %89 = add nsw i32 %j.019.us, 1, !llfi_index !3597
  br label %97, !llfi_index !3598

scalar.ph55:                                      ; preds = %middle.block54, %scalar.ph55
  %k.114.us = phi i32 [ %93, %scalar.ph55 ], [ %resume.val62, %middle.block54 ], !llfi_index !3599
  %lpat.013.us = phi i64 [ %92, %scalar.ph55 ], [ %bin.rdx71, %middle.block54 ], !llfi_index !3600
  %90 = zext i32 %k.114.us to i64, !llfi_index !3601
  %91 = shl i64 1, %90, !llfi_index !3602
  %92 = add i64 %91, %lpat.013.us, !llfi_index !3603
  %93 = add nsw i32 %k.114.us, -1, !llfi_index !3604
  %94 = icmp sgt i32 %93, %pos, !llfi_index !3605
  br i1 %94, label %scalar.ph55, label %61, !llvm.loop !3606, !llfi_index !3607

.lr.ph.us:                                        ; preds = %middle.block, %.lr.ph.us
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %.lr.ph.us ], [ %resume.val, %middle.block ], !llfi_index !3608
  %rpat.011.us = phi i64 [ %96, %.lr.ph.us ], [ %bin.rdx, %middle.block ], !llfi_index !3609
  %95 = shl i64 1, %indvars.iv38, !llfi_index !3610
  %96 = add i64 %95, %rpat.011.us, !llfi_index !3611
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1, !llfi_index !3612
  %lftr.wideiv40 = trunc i64 %indvars.iv.next39 to i32, !llfi_index !3613
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %pos, !llfi_index !3614
  br i1 %exitcond41, label %.lr.ph16.us, label %.lr.ph.us, !llvm.loop !3615, !llfi_index !3616

; <label>:97                                      ; preds = %61, %.lr.ph22.split.us
  %j.1.us = phi i32 [ %89, %61 ], [ %j.019.us, %.lr.ph22.split.us ], !llfi_index !3617
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1, !llfi_index !3618
  %98 = trunc i64 %indvars.iv.next44 to i32, !llfi_index !3619
  %99 = icmp slt i32 %98, %37, !llfi_index !3620
  br i1 %99, label %.lr.ph22.split.us, label %._crit_edge23, !llfi_index !3621

.preheader.us:                                    ; preds = %.lr.ph22.split.us
  br i1 %51, label %.lr.ph.us.preheader, label %.lr.ph16.us, !llfi_index !3622

.lr.ph.us.preheader:                              ; preds = %.preheader.us
  %end.idx = add i64 %54, 1, !llfi_index !3623
  %n.vec = and i64 %55, 8589934590, !llfi_index !3624
  %cmp.zero = icmp eq i64 %n.vec, 0, !llfi_index !3625
  br i1 %cmp.zero, label %middle.block, label %vector.body, !llfi_index !3626

vector.body:                                      ; preds = %vector.body, %.lr.ph.us.preheader
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.preheader ], !llfi_index !3627
  %vec.phi = phi i64 [ %102, %vector.body ], [ 0, %.lr.ph.us.preheader ], !llfi_index !3628
  %vec.phi50 = phi i64 [ %103, %vector.body ], [ 0, %.lr.ph.us.preheader ], !llfi_index !3629
  %induction4994 = or i64 %index, 1, !llfi_index !3630
  %100 = shl i64 1, %index, !llfi_index !3631
  %101 = shl i64 1, %induction4994, !llfi_index !3632
  %102 = add i64 %100, %vec.phi, !llfi_index !3633
  %103 = add i64 %101, %vec.phi50, !llfi_index !3634
  %index.next = add i64 %index, 2, !llfi_index !3635
  %104 = icmp eq i64 %index.next, %n.vec, !llfi_index !3636
  br i1 %104, label %middle.block, label %vector.body, !llvm.loop !3637, !llfi_index !3638

middle.block:                                     ; preds = %vector.body, %.lr.ph.us.preheader
  %resume.val = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec, %vector.body ], !llfi_index !3639
  %rdx.vec.exit.phi = phi i64 [ 0, %.lr.ph.us.preheader ], [ %102, %vector.body ], !llfi_index !3640
  %rdx.vec.exit.phi51 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %103, %vector.body ], !llfi_index !3641
  %bin.rdx = add i64 %rdx.vec.exit.phi51, %rdx.vec.exit.phi, !llfi_index !3642
  %cmp.n = icmp eq i64 %end.idx, %resume.val, !llfi_index !3643
  br i1 %cmp.n, label %.lr.ph16.us, label %.lr.ph.us, !llfi_index !3644

.lr.ph16.us:                                      ; preds = %middle.block, %.preheader.us, %.lr.ph.us
  %rpat.0.lcssa.us = phi i64 [ 0, %.preheader.us ], [ %96, %.lr.ph.us ], [ %bin.rdx, %middle.block ], !llfi_index !3645
  %105 = and i64 %58, %rpat.0.lcssa.us, !llfi_index !3646
  %n.vec59 = and i32 %56, -2, !llfi_index !3647
  %cmp.zero61 = icmp eq i32 %n.vec59, 0, !llfi_index !3648
  %rev.ind.end = sub i32 63, %n.vec59, !llfi_index !3649
  br i1 %cmp.zero61, label %middle.block54, label %vector.body53, !llfi_index !3650

vector.body53:                                    ; preds = %vector.body53, %.lr.ph16.us
  %index56 = phi i32 [ %index.next64, %vector.body53 ], [ 0, %.lr.ph16.us ], !llfi_index !3651
  %vec.phi67 = phi i64 [ %110, %vector.body53 ], [ 0, %.lr.ph16.us ], !llfi_index !3652
  %vec.phi68 = phi i64 [ %111, %vector.body53 ], [ 0, %.lr.ph16.us ], !llfi_index !3653
  %reverse.idx = sub i32 63, %index56, !llfi_index !3654
  %induction66 = add i32 %reverse.idx, -1, !llfi_index !3655
  %106 = zext i32 %reverse.idx to i64, !llfi_index !3656
  %107 = zext i32 %induction66 to i64, !llfi_index !3657
  %108 = shl i64 1, %106, !llfi_index !3658
  %109 = shl i64 1, %107, !llfi_index !3659
  %110 = add i64 %108, %vec.phi67, !llfi_index !3660
  %111 = add i64 %109, %vec.phi68, !llfi_index !3661
  %index.next64 = add i32 %index56, 2, !llfi_index !3662
  %112 = icmp eq i32 %index.next64, %n.vec59, !llfi_index !3663
  br i1 %112, label %middle.block54, label %vector.body53, !llvm.loop !3664, !llfi_index !3665

middle.block54:                                   ; preds = %vector.body53, %.lr.ph16.us
  %resume.val62 = phi i32 [ 63, %.lr.ph16.us ], [ %rev.ind.end, %vector.body53 ], !llfi_index !3666
  %new.indc.resume.val = phi i32 [ 0, %.lr.ph16.us ], [ %n.vec59, %vector.body53 ], !llfi_index !3667
  %rdx.vec.exit.phi69 = phi i64 [ 0, %.lr.ph16.us ], [ %110, %vector.body53 ], !llfi_index !3668
  %rdx.vec.exit.phi70 = phi i64 [ 0, %.lr.ph16.us ], [ %111, %vector.body53 ], !llfi_index !3669
  %bin.rdx71 = add i64 %rdx.vec.exit.phi70, %rdx.vec.exit.phi69, !llfi_index !3670
  %cmp.n63 = icmp eq i32 %56, %new.indc.resume.val, !llfi_index !3671
  br i1 %cmp.n63, label %61, label %scalar.ph55, !llfi_index !3672

.lr.ph22..lr.ph22.split_crit_edge:                ; preds = %150, %.lr.ph22
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %150 ], [ 0, %.lr.ph22 ], !llfi_index !3673
  %j.019 = phi i32 [ %j.1, %150 ], [ 0, %.lr.ph22 ], !llfi_index !3674
  %113 = getelementptr inbounds %struct.quantum_reg_node_struct* %49, i64 %indvars.iv33, i32 1, !llfi_index !3675
  %114 = load i64* %113, align 8, !tbaa !249, !llfi_index !3676
  %115 = and i64 %114, %2, !llfi_index !3677
  %116 = icmp ne i64 %115, 0, !llfi_index !3678
  %or.cond10 = xor i1 %116, %50, !llfi_index !3679
  br i1 %or.cond10, label %150, label %.preheader, !llfi_index !3680

.preheader:                                       ; preds = %.lr.ph22..lr.ph22.split_crit_edge
  br i1 %51, label %.lr.ph.preheader, label %.loopexit, !llfi_index !3681

.lr.ph.preheader:                                 ; preds = %.preheader
  %end.idx77 = add i64 %54, 1, !llfi_index !3682
  %n.vec79 = and i64 %55, 8589934590, !llfi_index !3683
  %cmp.zero81 = icmp eq i64 %n.vec79, 0, !llfi_index !3684
  br i1 %cmp.zero81, label %middle.block74, label %vector.body73, !llfi_index !3685

vector.body73:                                    ; preds = %vector.body73, %.lr.ph.preheader
  %index76 = phi i64 [ %index.next85, %vector.body73 ], [ 0, %.lr.ph.preheader ], !llfi_index !3686
  %vec.phi88 = phi i64 [ %119, %vector.body73 ], [ 0, %.lr.ph.preheader ], !llfi_index !3687
  %vec.phi89 = phi i64 [ %120, %vector.body73 ], [ 0, %.lr.ph.preheader ], !llfi_index !3688
  %induction8793 = or i64 %index76, 1, !llfi_index !3689
  %117 = shl i64 1, %index76, !llfi_index !3690
  %118 = shl i64 1, %induction8793, !llfi_index !3691
  %119 = add i64 %117, %vec.phi88, !llfi_index !3692
  %120 = add i64 %118, %vec.phi89, !llfi_index !3693
  %index.next85 = add i64 %index76, 2, !llfi_index !3694
  %121 = icmp eq i64 %index.next85, %n.vec79, !llfi_index !3695
  br i1 %121, label %middle.block74, label %vector.body73, !llvm.loop !3696, !llfi_index !3697

middle.block74:                                   ; preds = %vector.body73, %.lr.ph.preheader
  %resume.val82 = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec79, %vector.body73 ], !llfi_index !3698
  %rdx.vec.exit.phi90 = phi i64 [ 0, %.lr.ph.preheader ], [ %119, %vector.body73 ], !llfi_index !3699
  %rdx.vec.exit.phi91 = phi i64 [ 0, %.lr.ph.preheader ], [ %120, %vector.body73 ], !llfi_index !3700
  %bin.rdx92 = add i64 %rdx.vec.exit.phi91, %rdx.vec.exit.phi90, !llfi_index !3701
  %cmp.n84 = icmp eq i64 %end.idx77, %resume.val82, !llfi_index !3702
  br i1 %cmp.n84, label %.loopexit, label %.lr.ph, !llfi_index !3703

.lr.ph:                                           ; preds = %.lr.ph, %middle.block74
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %resume.val82, %middle.block74 ], !llfi_index !3704
  %rpat.011 = phi i64 [ %123, %.lr.ph ], [ %bin.rdx92, %middle.block74 ], !llfi_index !3705
  %122 = shl i64 1, %indvars.iv, !llfi_index !3706
  %123 = add i64 %122, %rpat.011, !llfi_index !3707
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3708
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !3709
  %exitcond = icmp eq i32 %lftr.wideiv, %pos, !llfi_index !3710
  br i1 %exitcond, label %.loopexit, label %.lr.ph, !llvm.loop !3711, !llfi_index !3712

.loopexit:                                        ; preds = %.lr.ph, %middle.block74, %.preheader
  %rpat.0.lcssa = phi i64 [ 0, %.preheader ], [ %123, %.lr.ph ], [ %bin.rdx92, %middle.block74 ], !llfi_index !3713
  %124 = and i64 %114, %rpat.0.lcssa, !llfi_index !3714
  %125 = sext i32 %j.019 to i64, !llfi_index !3715
  %126 = getelementptr inbounds %struct.quantum_reg_node_struct* %34, i64 %125, i32 1, !llfi_index !3716
  store i64 %124, i64* %126, align 8, !tbaa !249, !llfi_index !3717
  %127 = getelementptr inbounds %struct.quantum_reg_node_struct* %49, i64 %indvars.iv33, i32 0, i32 0, !llfi_index !3718
  %128 = load float* %127, align 4, !llfi_index !3719
  %129 = getelementptr inbounds %struct.quantum_reg_node_struct* %49, i64 %indvars.iv33, i32 0, i32 1, !llfi_index !3720
  %130 = load float* %129, align 4, !llfi_index !3721
  %131 = fmul float %130, 0.000000e+00, !llfi_index !3722
  %132 = fsub float %128, %131, !llfi_index !3723
  %133 = fmul float %128, 0.000000e+00, !llfi_index !3724
  %134 = fadd float %130, %133, !llfi_index !3725
  %135 = tail call double @sqrt(double %d.0.lcssa) #3, !llfi_index !3726
  %136 = fptrunc double %135 to float, !llfi_index !3727
  %137 = fmul float %132, %136, !llfi_index !3728
  %138 = fmul float %134, 0.000000e+00, !llfi_index !3729
  %139 = fadd float %138, %137, !llfi_index !3730
  %140 = fmul float %136, %136, !llfi_index !3731
  %141 = fadd float %140, 0.000000e+00, !llfi_index !3732
  %142 = fmul float %134, %136, !llfi_index !3733
  %143 = fmul float %132, 0.000000e+00, !llfi_index !3734
  %144 = fsub float %142, %143, !llfi_index !3735
  %145 = fdiv float %139, %141, !llfi_index !3736
  %146 = fdiv float %144, %141, !llfi_index !3737
  %147 = getelementptr inbounds %struct.quantum_reg_node_struct* %34, i64 %125, i32 0, i32 0, !llfi_index !3738
  %148 = getelementptr inbounds %struct.quantum_reg_node_struct* %34, i64 %125, i32 0, i32 1, !llfi_index !3739
  store float %145, float* %147, align 4, !llfi_index !3740
  store float %146, float* %148, align 4, !llfi_index !3741
  %149 = add nsw i32 %j.019, 1, !llfi_index !3742
  br label %150, !llfi_index !3743

; <label>:150                                     ; preds = %.loopexit, %.lr.ph22..lr.ph22.split_crit_edge
  %j.1 = phi i32 [ %149, %.loopexit ], [ %j.019, %.lr.ph22..lr.ph22.split_crit_edge ], !llfi_index !3744
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1, !llfi_index !3745
  %151 = trunc i64 %indvars.iv.next34 to i32, !llfi_index !3746
  %152 = icmp slt i32 %151, %37, !llfi_index !3747
  br i1 %152, label %.lr.ph22..lr.ph22.split_crit_edge, label %._crit_edge23, !llfi_index !3748

._crit_edge23:                                    ; preds = %150, %97, %40
  %153 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 0, !llfi_index !3749
  store i32 %31, i32* %153, align 8, !llfi_index !3750
  %154 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 1, !llfi_index !3751
  store i32 %size.0.lcssa, i32* %154, align 4, !llfi_index !3752
  %155 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 2, !llfi_index !3753
  store i32 %44, i32* %155, align 8, !llfi_index !3754
  %156 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 3, !llfi_index !3755
  store %struct.quantum_reg_node_struct* %34, %struct.quantum_reg_node_struct** %156, align 8, !llfi_index !3756
  %157 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 4, !llfi_index !3757
  store i32* %46, i32** %157, align 8, !llfi_index !3758
  ret void, !llfi_index !3759
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define <2 x float> @quantum_dot_product(%struct.quantum_reg_struct* nocapture readonly %reg1, %struct.quantum_reg_struct* nocapture readonly %reg2) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 2, !llfi_index !3760
  %2 = load i32* %1, align 4, !tbaa !1023, !llfi_index !3761
  %3 = icmp eq i32 %2, 31, !llfi_index !3762
  br i1 %3, label %.preheader18, label %.lr.ph24, !llfi_index !3763

.lr.ph24:                                         ; preds = %0
  %4 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 4, !llfi_index !3764
  %5 = load i32** %4, align 8, !tbaa !1028, !llfi_index !3765
  br label %14, !llfi_index !3766

.preheader18:                                     ; preds = %14, %0
  %6 = phi i32 [ 31, %0 ], [ %16, %14 ], !llfi_index !3767
  %7 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 1, !llfi_index !3768
  %8 = load i32* %7, align 4, !tbaa !223, !llfi_index !3769
  %9 = icmp sgt i32 %8, 0, !llfi_index !3770
  br i1 %9, label %.lr.ph20, label %.preheader, !llfi_index !3771

.lr.ph20:                                         ; preds = %.preheader18
  %10 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 3, !llfi_index !3772
  %11 = load %struct.quantum_reg_node_struct** %10, align 8, !tbaa !228, !llfi_index !3773
  %12 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 4, !llfi_index !3774
  %13 = load i32** %12, align 8, !tbaa !1028, !llfi_index !3775
  br label %26, !llfi_index !3776

; <label>:14                                      ; preds = %14, %.lr.ph24
  %indvars.iv32 = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next33, %14 ], !llfi_index !3777
  %15 = getelementptr inbounds i32* %5, i64 %indvars.iv32, !llfi_index !3778
  store i32 0, i32* %15, align 4, !tbaa !1, !llfi_index !3779
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1, !llfi_index !3780
  %16 = load i32* %1, align 4, !tbaa !1023, !llfi_index !3781
  %17 = shl i32 1, %16, !llfi_index !3782
  %18 = trunc i64 %indvars.iv.next33 to i32, !llfi_index !3783
  %19 = icmp slt i32 %18, %17, !llfi_index !3784
  br i1 %19, label %14, label %.preheader18, !llfi_index !3785

.preheader:                                       ; preds = %quantum_add_hash.exit, %.preheader18
  %20 = getelementptr inbounds %struct.quantum_reg_struct* %reg1, i64 0, i32 1, !llfi_index !3786
  %21 = load i32* %20, align 4, !tbaa !223, !llfi_index !3787
  %22 = icmp sgt i32 %21, 0, !llfi_index !3788
  br i1 %22, label %.lr.ph, label %._crit_edge, !llfi_index !3789

.lr.ph:                                           ; preds = %.preheader
  %23 = getelementptr inbounds %struct.quantum_reg_struct* %reg1, i64 0, i32 3, !llfi_index !3790
  %24 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 3, !llfi_index !3791
  %25 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 4, !llfi_index !3792
  %.pre = load %struct.quantum_reg_node_struct** %24, align 1, !llfi_index !3793
  br label %51, !llfi_index !3794

; <label>:26                                      ; preds = %quantum_add_hash.exit._crit_edge, %.lr.ph20
  %27 = phi i32 [ %6, %.lr.ph20 ], [ %.pre35, %quantum_add_hash.exit._crit_edge ], !llfi_index !3795
  %indvars.iv30 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next31, %quantum_add_hash.exit._crit_edge ], !llfi_index !3796
  %28 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %indvars.iv30, i32 1, !llfi_index !3797
  %29 = load i64* %28, align 8, !tbaa !249, !llfi_index !3798
  %30 = lshr i64 %29, 32, !llfi_index !3799
  %key.masked.i.i = and i64 %29, 4294967295, !llfi_index !3800
  %31 = xor i64 %30, %key.masked.i.i, !llfi_index !3801
  %32 = mul i64 %31, 2654404609, !llfi_index !3802
  %33 = trunc i64 %32 to i32, !llfi_index !3803
  %34 = sub nsw i32 32, %27, !llfi_index !3804
  %35 = lshr i32 %33, %34, !llfi_index !3805
  %36 = sext i32 %35 to i64, !llfi_index !3806
  %37 = getelementptr inbounds i32* %13, i64 %36, !llfi_index !3807
  %38 = load i32* %37, align 4, !tbaa !1, !llfi_index !3808
  %39 = icmp eq i32 %38, 0, !llfi_index !3809
  br i1 %39, label %quantum_add_hash.exit, label %.lr.ph.i, !llfi_index !3810

.lr.ph.i:                                         ; preds = %26
  %40 = shl i32 1, %27, !llfi_index !3811
  br label %41, !llfi_index !3812

; <label>:41                                      ; preds = %41, %.lr.ph.i
  %i.01.i = phi i32 [ %35, %.lr.ph.i ], [ %..i, %41 ], !llfi_index !3813
  %42 = add nsw i32 %i.01.i, 1, !llfi_index !3814
  %43 = icmp eq i32 %42, %40, !llfi_index !3815
  %..i = select i1 %43, i32 0, i32 %42, !llfi_index !3816
  %44 = sext i32 %..i to i64, !llfi_index !3817
  %45 = getelementptr inbounds i32* %13, i64 %44, !llfi_index !3818
  %46 = load i32* %45, align 4, !tbaa !1, !llfi_index !3819
  %47 = icmp eq i32 %46, 0, !llfi_index !3820
  br i1 %47, label %quantum_add_hash.exit, label %41, !llfi_index !3821

quantum_add_hash.exit:                            ; preds = %41, %26
  %.lcssa.i = phi i32* [ %37, %26 ], [ %45, %41 ], !llfi_index !3822
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1, !llfi_index !3823
  %48 = trunc i64 %indvars.iv.next31 to i32, !llfi_index !3824
  store i32 %48, i32* %.lcssa.i, align 4, !tbaa !1, !llfi_index !3825
  %49 = load i32* %7, align 4, !tbaa !223, !llfi_index !3826
  %50 = icmp slt i32 %48, %49, !llfi_index !3827
  br i1 %50, label %quantum_add_hash.exit._crit_edge, label %.preheader, !llfi_index !3828

quantum_add_hash.exit._crit_edge:                 ; preds = %quantum_add_hash.exit
  %.pre35 = load i32* %1, align 4, !tbaa !1023, !llfi_index !3829
  br label %26, !llfi_index !3830

; <label>:51                                      ; preds = %quantum_get_state.exit.thread, %.lr.ph
  %52 = phi i32 [ %21, %.lr.ph ], [ %108, %quantum_get_state.exit.thread ], !llfi_index !3831
  %53 = phi %struct.quantum_reg_node_struct* [ %.pre, %.lr.ph ], [ %109, %quantum_get_state.exit.thread ], !llfi_index !3832
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %quantum_get_state.exit.thread ], !llfi_index !3833
  %f.sroa.4.014 = phi float [ 0.000000e+00, %.lr.ph ], [ %f.sroa.4.1, %quantum_get_state.exit.thread ], !llfi_index !3834
  %f.sroa.0.013 = phi float [ 0.000000e+00, %.lr.ph ], [ %f.sroa.0.1, %quantum_get_state.exit.thread ], !llfi_index !3835
  %54 = load %struct.quantum_reg_node_struct** %23, align 8, !tbaa !228, !llfi_index !3836
  %55 = getelementptr inbounds %struct.quantum_reg_node_struct* %54, i64 %indvars.iv, i32 1, !llfi_index !3837
  %56 = load i64* %55, align 8, !tbaa !249, !llfi_index !3838
  %57 = load i32* %1, align 1, !llfi_index !3839
  %58 = load i32** %25, align 1, !llfi_index !3840
  %59 = lshr i64 %56, 32, !llfi_index !3841
  %key.masked.i.i5 = and i64 %56, 4294967295, !llfi_index !3842
  %60 = xor i64 %59, %key.masked.i.i5, !llfi_index !3843
  %61 = mul i64 %60, 2654404609, !llfi_index !3844
  %62 = trunc i64 %61 to i32, !llfi_index !3845
  %63 = sub nsw i32 32, %57, !llfi_index !3846
  %64 = lshr i32 %62, %63, !llfi_index !3847
  %65 = sext i32 %64 to i64, !llfi_index !3848
  %66 = getelementptr inbounds i32* %58, i64 %65, !llfi_index !3849
  %67 = load i32* %66, align 4, !tbaa !1, !llfi_index !3850
  %68 = icmp eq i32 %67, 0, !llfi_index !3851
  br i1 %68, label %quantum_get_state.exit.thread, label %.lr.ph.i6, !llfi_index !3852

.lr.ph.i6:                                        ; preds = %51
  %69 = shl i32 1, %57, !llfi_index !3853
  br label %70, !llfi_index !3854

; <label>:70                                      ; preds = %77, %.lr.ph.i6
  %71 = phi i32 [ %67, %.lr.ph.i6 ], [ %82, %77 ], !llfi_index !3855
  %i.01.i7 = phi i32 [ %64, %.lr.ph.i6 ], [ %..i8, %77 ], !llfi_index !3856
  %72 = add nsw i32 %71, -1, !llfi_index !3857
  %73 = sext i32 %72 to i64, !llfi_index !3858
  %74 = getelementptr inbounds %struct.quantum_reg_node_struct* %53, i64 %73, i32 1, !llfi_index !3859
  %75 = load i64* %74, align 8, !tbaa !249, !llfi_index !3860
  %76 = icmp eq i64 %75, %56, !llfi_index !3861
  br i1 %76, label %quantum_get_state.exit, label %77, !llfi_index !3862

; <label>:77                                      ; preds = %70
  %78 = add nsw i32 %i.01.i7, 1, !llfi_index !3863
  %79 = icmp eq i32 %78, %69, !llfi_index !3864
  %..i8 = select i1 %79, i32 0, i32 %78, !llfi_index !3865
  %80 = sext i32 %..i8 to i64, !llfi_index !3866
  %81 = getelementptr inbounds i32* %58, i64 %80, !llfi_index !3867
  %82 = load i32* %81, align 4, !tbaa !1, !llfi_index !3868
  %83 = icmp eq i32 %82, 0, !llfi_index !3869
  br i1 %83, label %quantum_get_state.exit.thread, label %70, !llfi_index !3870

quantum_get_state.exit:                           ; preds = %70
  %84 = icmp sgt i32 %71, 0, !llfi_index !3871
  br i1 %84, label %85, label %quantum_get_state.exit.thread, !llfi_index !3872

; <label>:85                                      ; preds = %quantum_get_state.exit
  %86 = getelementptr inbounds %struct.quantum_reg_node_struct* %54, i64 %indvars.iv, i32 0, i32 0, !llfi_index !3873
  %87 = load float* %86, align 4, !llfi_index !3874
  %88 = getelementptr inbounds %struct.quantum_reg_node_struct* %54, i64 %indvars.iv, i32 0, i32 1, !llfi_index !3875
  %89 = load float* %88, align 4, !llfi_index !3876
  %90 = insertelement <2 x float> undef, float %87, i32 0, !llfi_index !3877
  %91 = insertelement <2 x float> %90, float %89, i32 1, !llfi_index !3878
  %92 = tail call <2 x float> @quantum_conj(<2 x float> %91) #3, !llfi_index !3879
  %93 = extractelement <2 x float> %92, i32 0, !llfi_index !3880
  %94 = extractelement <2 x float> %92, i32 1, !llfi_index !3881
  %95 = load %struct.quantum_reg_node_struct** %24, align 8, !tbaa !228, !llfi_index !3882
  %96 = getelementptr inbounds %struct.quantum_reg_node_struct* %95, i64 %73, i32 0, i32 0, !llfi_index !3883
  %97 = load float* %96, align 4, !llfi_index !3884
  %98 = getelementptr inbounds %struct.quantum_reg_node_struct* %95, i64 %73, i32 0, i32 1, !llfi_index !3885
  %99 = load float* %98, align 4, !llfi_index !3886
  %100 = fmul float %93, %97, !llfi_index !3887
  %101 = fmul float %94, %99, !llfi_index !3888
  %102 = fsub float %100, %101, !llfi_index !3889
  %103 = fmul float %94, %97, !llfi_index !3890
  %104 = fmul float %93, %99, !llfi_index !3891
  %105 = fadd float %103, %104, !llfi_index !3892
  %106 = fadd float %f.sroa.0.013, %102, !llfi_index !3893
  %107 = fadd float %f.sroa.4.014, %105, !llfi_index !3894
  %.pre34 = load i32* %20, align 4, !tbaa !223, !llfi_index !3895
  br label %quantum_get_state.exit.thread, !llfi_index !3896

quantum_get_state.exit.thread:                    ; preds = %85, %quantum_get_state.exit, %77, %51
  %108 = phi i32 [ %.pre34, %85 ], [ %52, %quantum_get_state.exit ], [ %52, %51 ], [ %52, %77 ], !llfi_index !3897
  %109 = phi %struct.quantum_reg_node_struct* [ %95, %85 ], [ %53, %quantum_get_state.exit ], [ %53, %51 ], [ %53, %77 ], !llfi_index !3898
  %f.sroa.0.1 = phi float [ %106, %85 ], [ %f.sroa.0.013, %quantum_get_state.exit ], [ %f.sroa.0.013, %51 ], [ %f.sroa.0.013, %77 ], !llfi_index !3899
  %f.sroa.4.1 = phi float [ %107, %85 ], [ %f.sroa.4.014, %quantum_get_state.exit ], [ %f.sroa.4.014, %51 ], [ %f.sroa.4.014, %77 ], !llfi_index !3900
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3901
  %110 = trunc i64 %indvars.iv.next to i32, !llfi_index !3902
  %111 = icmp slt i32 %110, %108, !llfi_index !3903
  br i1 %111, label %51, label %._crit_edge, !llfi_index !3904

._crit_edge:                                      ; preds = %quantum_get_state.exit.thread, %.preheader
  %f.sroa.4.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %f.sroa.4.1, %quantum_get_state.exit.thread ], !llfi_index !3905
  %f.sroa.0.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %f.sroa.0.1, %quantum_get_state.exit.thread ], !llfi_index !3906
  %112 = insertelement <2 x float> undef, float %f.sroa.0.0.lcssa, i32 0, !llfi_index !3907
  %113 = insertelement <2 x float> %112, float %f.sroa.4.0.lcssa, i32 1, !llfi_index !3908
  ret <2 x float> %113, !llfi_index !3909
}

; Function Attrs: nounwind
declare i32 @putchar(i32) #3

; Function Attrs: nounwind uwtable
define i64 @quantum_memman(i64 %change) #0 {
  %1 = load i64* @quantum_memman.mem, align 8, !tbaa !3910, !llfi_index !3912
  %2 = add nsw i64 %1, %change, !llfi_index !3913
  store i64 %2, i64* @quantum_memman.mem, align 8, !tbaa !3910, !llfi_index !3914
  %3 = load i64* @quantum_memman.max, align 8, !tbaa !3910, !llfi_index !3915
  %4 = icmp sgt i64 %2, %3, !llfi_index !3916
  br i1 %4, label %5, label %6, !llfi_index !3917

; <label>:5                                       ; preds = %0
  store i64 %2, i64* @quantum_memman.max, align 8, !tbaa !3910, !llfi_index !3918
  br label %6, !llfi_index !3919

; <label>:6                                       ; preds = %5, %0
  ret i64 %2, !llfi_index !3920
}

; Function Attrs: nounwind uwtable
define { i64, { float, float }* } @quantum_new_matrix(i32 %cols, i32 %rows) #0 {
  %1 = mul nsw i32 %rows, %cols, !llfi_index !3921
  %2 = sext i32 %1 to i64, !llfi_index !3922
  %3 = tail call noalias i8* @calloc(i64 %2, i64 8) #3, !llfi_index !3923
  %4 = icmp eq i8* %3, null, !llfi_index !3924
  br i1 %4, label %5, label %7, !llfi_index !3925

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str30, i64 0, i64 0), i32 %rows, i32 %cols) #3, !llfi_index !3926
  tail call void @exit(i32 1) #8, !llfi_index !3927
  unreachable, !llfi_index !3928

; <label>:7                                       ; preds = %0
  %8 = bitcast i8* %3 to { float, float }*, !llfi_index !3929
  %9 = sext i32 %cols to i64, !llfi_index !3930
  %10 = shl nsw i64 %9, 3, !llfi_index !3931
  %11 = sext i32 %rows to i64, !llfi_index !3932
  %12 = mul i64 %10, %11, !llfi_index !3933
  %13 = load i64* @quantum_memman.mem, align 8, !tbaa !3910, !llfi_index !3934
  %14 = add nsw i64 %13, %12, !llfi_index !3935
  store i64 %14, i64* @quantum_memman.mem, align 8, !tbaa !3910, !llfi_index !3936
  %15 = load i64* @quantum_memman.max, align 8, !tbaa !3910, !llfi_index !3937
  %16 = icmp sgt i64 %14, %15, !llfi_index !3938
  br i1 %16, label %17, label %quantum_memman.exit, !llfi_index !3939

; <label>:17                                      ; preds = %7
  store i64 %14, i64* @quantum_memman.max, align 8, !tbaa !3910, !llfi_index !3940
  br label %quantum_memman.exit, !llfi_index !3941

quantum_memman.exit:                              ; preds = %17, %7
  %18 = zext i32 %rows to i64, !llfi_index !3942
  %19 = zext i32 %cols to i64, !llfi_index !3943
  %20 = shl nuw i64 %19, 32, !llfi_index !3944
  %21 = or i64 %18, %20, !llfi_index !3945
  %22 = insertvalue { i64, { float, float }* } undef, i64 %21, 0, !llfi_index !3946
  %23 = insertvalue { i64, { float, float }* } %22, { float, float }* %8, 1, !llfi_index !3947
  ret { i64, { float, float }* } %23, !llfi_index !3948
}

; Function Attrs: nounwind uwtable
define void @quantum_delete_matrix(%struct.quantum_matrix_struct* nocapture %m) #0 {
  %1 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 2, !llfi_index !3949
  %2 = load { float, float }** %1, align 8, !tbaa !2110, !llfi_index !3950
  %3 = bitcast { float, float }* %2 to i8*, !llfi_index !3951
  tail call void @free(i8* %3) #3, !llfi_index !3952
  %4 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 1, !llfi_index !3953
  %5 = load i32* %4, align 4, !tbaa !2982, !llfi_index !3954
  %6 = sext i32 %5 to i64, !llfi_index !3955
  %7 = mul i64 %6, -8, !llfi_index !3956
  %8 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 0, !llfi_index !3957
  %9 = load i32* %8, align 4, !tbaa !2987, !llfi_index !3958
  %10 = sext i32 %9 to i64, !llfi_index !3959
  %11 = mul i64 %7, %10, !llfi_index !3960
  %12 = load i64* @quantum_memman.mem, align 8, !tbaa !3910, !llfi_index !3961
  %13 = add nsw i64 %11, %12, !llfi_index !3962
  store i64 %13, i64* @quantum_memman.mem, align 8, !tbaa !3910, !llfi_index !3963
  %14 = load i64* @quantum_memman.max, align 8, !tbaa !3910, !llfi_index !3964
  %15 = icmp sgt i64 %13, %14, !llfi_index !3965
  br i1 %15, label %16, label %quantum_memman.exit, !llfi_index !3966

; <label>:16                                      ; preds = %0
  store i64 %13, i64* @quantum_memman.max, align 8, !tbaa !3910, !llfi_index !3967
  br label %quantum_memman.exit, !llfi_index !3968

quantum_memman.exit:                              ; preds = %16, %0
  store { float, float }* null, { float, float }** %1, align 8, !tbaa !2110, !llfi_index !3969
  ret void, !llfi_index !3970
}

; Function Attrs: nounwind uwtable
define void @quantum_print_matrix(i64 %m.coerce0, { float, float }* nocapture readonly %m.coerce1) #0 {
  %1 = trunc i64 %m.coerce0 to i32, !llfi_index !3971
  br label %2, !llfi_index !3972

; <label>:2                                       ; preds = %2, %0
  %z.0 = phi i32 [ 0, %0 ], [ %3, %2 ], !llfi_index !3973
  %3 = add nsw i32 %z.0, 1, !llfi_index !3974
  %4 = shl i32 1, %z.0, !llfi_index !3975
  %5 = icmp slt i32 %4, %1, !llfi_index !3976
  br i1 %5, label %2, label %.preheader4, !llfi_index !3977

.preheader4:                                      ; preds = %2
  %6 = icmp sgt i32 %1, 0, !llfi_index !3978
  br i1 %6, label %.preheader.lr.ph, label %._crit_edge6, !llfi_index !3979

.preheader.lr.ph:                                 ; preds = %.preheader4
  %7 = lshr i64 %m.coerce0, 32, !llfi_index !3980
  %8 = trunc i64 %7 to i32, !llfi_index !3981
  %9 = icmp sgt i32 %8, 0, !llfi_index !3982
  br i1 %9, label %.lr.ph.us, label %.preheader, !llfi_index !3983

; <label>:10                                      ; preds = %11
  %putchar2.us = tail call i32 @putchar(i32 10) #3, !llfi_index !3984
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !llfi_index !3985
  %lftr.wideiv10 = trunc i64 %indvars.iv.next9 to i32, !llfi_index !3986
  %exitcond11 = icmp eq i32 %lftr.wideiv10, %1, !llfi_index !3987
  br i1 %exitcond11, label %._crit_edge6, label %.lr.ph.us, !llfi_index !3988

; <label>:11                                      ; preds = %.lr.ph.us, %11
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %11 ], !llfi_index !3989
  %12 = add nsw i64 %indvars.iv, %21, !llfi_index !3990
  %13 = getelementptr inbounds { float, float }* %m.coerce1, i64 %12, i32 0, !llfi_index !3991
  %14 = load float* %13, align 4, !llfi_index !3992
  %15 = getelementptr inbounds { float, float }* %m.coerce1, i64 %12, i32 1, !llfi_index !3993
  %16 = load float* %15, align 4, !llfi_index !3994
  %17 = fpext float %14 to double, !llfi_index !3995
  %18 = fpext float %16 to double, !llfi_index !3996
  %19 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str131, i64 0, i64 0), double %17, double %18) #3, !llfi_index !3997
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3998
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !3999
  %exitcond7 = icmp eq i32 %lftr.wideiv, %8, !llfi_index !4000
  br i1 %exitcond7, label %10, label %11, !llfi_index !4001

.lr.ph.us:                                        ; preds = %10, %.preheader.lr.ph
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %10 ], [ 0, %.preheader.lr.ph ], !llfi_index !4002
  %20 = mul i64 %indvars.iv8, %7, !llfi_index !4003
  %sext = shl i64 %20, 32, !llfi_index !4004
  %21 = ashr exact i64 %sext, 32, !llfi_index !4005
  br label %11, !llfi_index !4006

.preheader:                                       ; preds = %.preheader, %.preheader.lr.ph
  %i.05 = phi i32 [ %22, %.preheader ], [ 0, %.preheader.lr.ph ], !llfi_index !4007
  %putchar2 = tail call i32 @putchar(i32 10) #3, !llfi_index !4008
  %22 = add nsw i32 %i.05, 1, !llfi_index !4009
  %exitcond = icmp eq i32 %22, %1, !llfi_index !4010
  br i1 %exitcond, label %._crit_edge6, label %.preheader, !llfi_index !4011

._crit_edge6:                                     ; preds = %.preheader, %10, %.preheader4
  %putchar = tail call i32 @putchar(i32 10) #3, !llfi_index !4012
  ret void, !llfi_index !4013
}

; Function Attrs: nounwind readnone uwtable
define i32 @quantum_ipow(i32 %a, i32 %b) #5 {
  %1 = icmp sgt i32 %b, 0, !llfi_index !4014
  br i1 %1, label %.lr.ph.preheader, label %._crit_edge, !llfi_index !4015

.lr.ph.preheader:                                 ; preds = %0
  %n.vec = and i32 %b, -8, !llfi_index !4016
  %cmp.zero = icmp eq i32 %n.vec, 0, !llfi_index !4017
  br i1 %cmp.zero, label %middle.block, label %vector.ph, !llfi_index !4018

vector.ph:                                        ; preds = %.lr.ph.preheader
  %broadcast.splatinsert5 = insertelement <4 x i32> undef, i32 %a, i32 0, !llfi_index !4019
  %broadcast.splat6 = shufflevector <4 x i32> %broadcast.splatinsert5, <4 x i32> undef, <4 x i32> zeroinitializer, !llfi_index !4020
  br label %vector.body, !llfi_index !4021

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ], !llfi_index !4022
  %vec.phi = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %vector.ph ], [ %2, %vector.body ], !llfi_index !4023
  %vec.phi3 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %vector.ph ], [ %3, %vector.body ], !llfi_index !4024
  %2 = mul nsw <4 x i32> %vec.phi, %broadcast.splat6, !llfi_index !4025
  %3 = mul nsw <4 x i32> %vec.phi3, %broadcast.splat6, !llfi_index !4026
  %index.next = add i32 %index, 8, !llfi_index !4027
  %4 = icmp eq i32 %index.next, %n.vec, !llfi_index !4028
  br i1 %4, label %middle.block, label %vector.body, !llvm.loop !4029, !llfi_index !4030

middle.block:                                     ; preds = %vector.body, %.lr.ph.preheader
  %resume.val = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ], !llfi_index !4031
  %rdx.vec.exit.phi = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %.lr.ph.preheader ], [ %2, %vector.body ], !llfi_index !4032
  %rdx.vec.exit.phi9 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %.lr.ph.preheader ], [ %3, %vector.body ], !llfi_index !4033
  %bin.rdx = mul <4 x i32> %rdx.vec.exit.phi9, %rdx.vec.exit.phi, !llfi_index !4034
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !llfi_index !4035
  %bin.rdx10 = mul <4 x i32> %bin.rdx, %rdx.shuf, !llfi_index !4036
  %rdx.shuf11 = shufflevector <4 x i32> %bin.rdx10, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !llfi_index !4037
  %bin.rdx12 = mul <4 x i32> %bin.rdx10, %rdx.shuf11, !llfi_index !4038
  %5 = extractelement <4 x i32> %bin.rdx12, i32 0, !llfi_index !4039
  %cmp.n = icmp eq i32 %resume.val, %b, !llfi_index !4040
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph, !llfi_index !4041

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %r.02 = phi i32 [ %6, %.lr.ph ], [ %5, %middle.block ], !llfi_index !4042
  %i.01 = phi i32 [ %7, %.lr.ph ], [ %resume.val, %middle.block ], !llfi_index !4043
  %6 = mul nsw i32 %r.02, %a, !llfi_index !4044
  %7 = add nsw i32 %i.01, 1, !llfi_index !4045
  %exitcond = icmp eq i32 %7, %b, !llfi_index !4046
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !4047, !llfi_index !4048

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  %r.0.lcssa = phi i32 [ 1, %0 ], [ %6, %.lr.ph ], [ %5, %middle.block ], !llfi_index !4049
  ret i32 %r.0.lcssa, !llfi_index !4050
}

; Function Attrs: nounwind readnone uwtable
define i32 @quantum_gcd(i32 %u, i32 %v) #5 {
  %1 = icmp eq i32 %v, 0, !llfi_index !4051
  br i1 %1, label %._crit_edge, label %.lr.ph, !llfi_index !4052

.lr.ph:                                           ; preds = %.lr.ph, %0
  %.03 = phi i32 [ %.012, %.lr.ph ], [ %u, %0 ], !llfi_index !4053
  %.012 = phi i32 [ %2, %.lr.ph ], [ %v, %0 ], !llfi_index !4054
  %2 = srem i32 %.03, %.012, !llfi_index !4055
  %3 = icmp eq i32 %2, 0, !llfi_index !4056
  br i1 %3, label %._crit_edge, label %.lr.ph, !llfi_index !4057

._crit_edge:                                      ; preds = %.lr.ph, %0
  %.0.lcssa = phi i32 [ %u, %0 ], [ %.012, %.lr.ph ], !llfi_index !4058
  ret i32 %.0.lcssa, !llfi_index !4059
}

; Function Attrs: nounwind uwtable
define void @quantum_frac_approx(i32* nocapture %a, i32* nocapture %b, i32 %width) #0 {
  %1 = load i32* %a, align 4, !tbaa !1, !llfi_index !4060
  %2 = sitofp i32 %1 to float, !llfi_index !4061
  %3 = load i32* %b, align 4, !tbaa !1, !llfi_index !4062
  %4 = sitofp i32 %3 to float, !llfi_index !4063
  %5 = fdiv float %2, %4, !llfi_index !4064
  %6 = shl i32 1, %width, !llfi_index !4065
  %7 = shl nsw i32 %6, 1, !llfi_index !4066
  %8 = sitofp i32 %7 to double, !llfi_index !4067
  %9 = fdiv double 1.000000e+00, %8, !llfi_index !4068
  br label %10, !llfi_index !4069

; <label>:10                                      ; preds = %17, %0
  %g.0 = phi float [ %5, %0 ], [ %22, %17 ], !llfi_index !4070
  %num2.0 = phi i32 [ 0, %0 ], [ %num1.0, %17 ], !llfi_index !4071
  %den2.0 = phi i32 [ 1, %0 ], [ %den1.0, %17 ], !llfi_index !4072
  %num1.0 = phi i32 [ 1, %0 ], [ %24, %17 ], !llfi_index !4073
  %den1.0 = phi i32 [ 0, %0 ], [ %15, %17 ], !llfi_index !4074
  %num.0 = phi i32 [ 0, %0 ], [ %24, %17 ], !llfi_index !4075
  %11 = fpext float %g.0 to double, !llfi_index !4076
  %12 = fadd double %11, 5.000000e-06, !llfi_index !4077
  %13 = fptosi double %12 to i32, !llfi_index !4078
  %14 = mul nsw i32 %den1.0, %13, !llfi_index !4079
  %15 = add nsw i32 %14, %den2.0, !llfi_index !4080
  %16 = icmp sgt i32 %15, %6, !llfi_index !4081
  br i1 %16, label %32, label %17, !llfi_index !4082

; <label>:17                                      ; preds = %10
  %18 = sitofp i32 %13 to double, !llfi_index !4083
  %19 = fadd double %18, -5.000000e-06, !llfi_index !4084
  %20 = fsub double %11, %19, !llfi_index !4085
  %21 = fptrunc double %20 to float, !llfi_index !4086
  %22 = fdiv float 1.000000e+00, %21, !llfi_index !4087
  %23 = mul nsw i32 %13, %num1.0, !llfi_index !4088
  %24 = add nsw i32 %23, %num2.0, !llfi_index !4089
  %25 = sitofp i32 %24 to float, !llfi_index !4090
  %26 = sitofp i32 %15 to float, !llfi_index !4091
  %27 = fdiv float %25, %26, !llfi_index !4092
  %28 = fsub float %27, %5, !llfi_index !4093
  %29 = tail call float @fabsf(float %28) #9, !llfi_index !4094
  %30 = fpext float %29 to double, !llfi_index !4095
  %31 = fcmp ogt double %30, %9, !llfi_index !4096
  br i1 %31, label %10, label %32, !llfi_index !4097

; <label>:32                                      ; preds = %17, %10
  %num.1 = phi i32 [ %num.0, %10 ], [ %24, %17 ], !llfi_index !4098
  %den.1 = phi i32 [ %den1.0, %10 ], [ %15, %17 ], !llfi_index !4099
  store i32 %num.1, i32* %a, align 4, !tbaa !1, !llfi_index !4100
  store i32 %den.1, i32* %b, align 4, !tbaa !1, !llfi_index !4101
  ret void, !llfi_index !4102
}

; Function Attrs: nounwind readnone
declare float @fabsf(float) #6

; Function Attrs: nounwind readnone uwtable
define i32 @quantum_getwidth(i32 %n) #5 {
  br label %1, !llfi_index !4103

; <label>:1                                       ; preds = %1, %0
  %i.0 = phi i32 [ 1, %0 ], [ %4, %1 ], !llfi_index !4104
  %2 = shl i32 1, %i.0, !llfi_index !4105
  %3 = icmp slt i32 %2, %n, !llfi_index !4106
  %4 = add nsw i32 %i.0, 1, !llfi_index !4107
  br i1 %3, label %1, label %5, !llfi_index !4108

; <label>:5                                       ; preds = %1
  ret i32 %i.0, !llfi_index !4109
}

; Function Attrs: nounwind readnone uwtable
define i32 @quantum_inverse_mod(i32 %n, i32 %c) #5 {
  br label %1, !llfi_index !4110

; <label>:1                                       ; preds = %1, %0
  %i.0 = phi i32 [ 1, %0 ], [ %5, %1 ], !llfi_index !4111
  %2 = mul nsw i32 %i.0, %c, !llfi_index !4112
  %3 = srem i32 %2, %n, !llfi_index !4113
  %4 = icmp eq i32 %3, 1, !llfi_index !4114
  %5 = add nsw i32 %i.0, 1, !llfi_index !4115
  br i1 %4, label %6, label %1, !llfi_index !4116

; <label>:6                                       ; preds = %1
  ret i32 %i.0, !llfi_index !4117
}

; Function Attrs: nounwind readnone uwtable
define <2 x float> @quantum_conj(<2 x float> %a.coerce) #5 {
  %1 = extractelement <2 x float> %a.coerce, i32 0, !llfi_index !4118
  %2 = extractelement <2 x float> %a.coerce, i32 1, !llfi_index !4119
  %3 = fmul float %2, 0.000000e+00, !llfi_index !4120
  %4 = fadd float %2, 0.000000e+00, !llfi_index !4121
  %5 = fsub float %1, %3, !llfi_index !4122
  %6 = fsub float 0.000000e+00, %4, !llfi_index !4123
  %7 = insertelement <2 x float> undef, float %5, i32 0, !llfi_index !4124
  %8 = insertelement <2 x float> %7, float %6, i32 1, !llfi_index !4125
  ret <2 x float> %8, !llfi_index !4126
}

; Function Attrs: nounwind readnone uwtable
define float @quantum_prob(<2 x float> %a.coerce) #5 {
  %1 = extractelement <2 x float> %a.coerce, i32 0, !llfi_index !4127
  %2 = extractelement <2 x float> %a.coerce, i32 1, !llfi_index !4128
  %3 = fmul float %1, %1, !llfi_index !4129
  %4 = fmul float %2, %2, !llfi_index !4130
  %5 = fadd float %3, %4, !llfi_index !4131
  ret float %5, !llfi_index !4132
}

; Function Attrs: nounwind uwtable
define <2 x float> @quantum_cexp(float %phi) #0 {
  %1 = fpext float %phi to double, !llfi_index !4133
  %2 = tail call double @cos(double %1) #3, !llfi_index !4134
  %3 = tail call double @sin(double %1) #3, !llfi_index !4135
  %4 = fmul double %3, 0.000000e+00, !llfi_index !4136
  %5 = fadd double %3, 0.000000e+00, !llfi_index !4137
  %6 = fadd double %2, %4, !llfi_index !4138
  %7 = fptrunc double %6 to float, !llfi_index !4139
  %8 = fptrunc double %5 to float, !llfi_index !4140
  %9 = insertelement <2 x float> undef, float %7, i32 0, !llfi_index !4141
  %10 = insertelement <2 x float> %9, float %8, i32 1, !llfi_index !4142
  ret <2 x float> %10, !llfi_index !4143
}

; Function Attrs: nounwind uwtable
define double @quantum_frand() #0 {
  %1 = tail call double @spec_rand() #3, !llfi_index !4144
  ret double %1, !llfi_index !4145
}

; Function Attrs: nounwind uwtable
define i64 @quantum_measure(%struct.quantum_reg_struct* byval nocapture readonly align 8 %reg) #0 {
  %1 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext -128) #3, !llfi_index !4146
  %2 = icmp eq i32 %1, 0, !llfi_index !4147
  br i1 %2, label %3, label %.loopexit, !llfi_index !4148

; <label>:3                                       ; preds = %0
  %4 = tail call double @spec_rand() #3, !llfi_index !4149
  %5 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !4150
  %6 = load i32* %5, align 4, !tbaa !223, !llfi_index !4151
  %7 = icmp sgt i32 %6, 0, !llfi_index !4152
  br i1 %7, label %.lr.ph, label %.loopexit, !llfi_index !4153

.lr.ph:                                           ; preds = %3
  %8 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !4154
  %9 = load %struct.quantum_reg_node_struct** %8, align 8, !tbaa !228, !llfi_index !4155
  br label %13, !llfi_index !4156

; <label>:10                                      ; preds = %13
  %11 = trunc i64 %indvars.iv.next to i32, !llfi_index !4157
  %12 = icmp slt i32 %11, %6, !llfi_index !4158
  br i1 %12, label %13, label %.loopexit, !llfi_index !4159

; <label>:13                                      ; preds = %10, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %10 ], !llfi_index !4160
  %r.02 = phi double [ %4, %.lr.ph ], [ %22, %10 ], !llfi_index !4161
  %14 = getelementptr inbounds %struct.quantum_reg_node_struct* %9, i64 %indvars.iv, i32 0, i32 0, !llfi_index !4162
  %15 = load float* %14, align 4, !llfi_index !4163
  %16 = getelementptr inbounds %struct.quantum_reg_node_struct* %9, i64 %indvars.iv, i32 0, i32 1, !llfi_index !4164
  %17 = load float* %16, align 4, !llfi_index !4165
  %18 = fmul float %15, %15, !llfi_index !4166
  %19 = fmul float %17, %17, !llfi_index !4167
  %20 = fadd float %18, %19, !llfi_index !4168
  %21 = fpext float %20 to double, !llfi_index !4169
  %22 = fsub double %r.02, %21, !llfi_index !4170
  %23 = fcmp ugt double %22, 0.000000e+00, !llfi_index !4171
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !4172
  br i1 %23, label %10, label %24, !llfi_index !4173

; <label>:24                                      ; preds = %13
  %25 = getelementptr inbounds %struct.quantum_reg_node_struct* %9, i64 %indvars.iv, i32 1, !llfi_index !4174
  %26 = load i64* %25, align 8, !tbaa !249, !llfi_index !4175
  br label %.loopexit, !llfi_index !4176

.loopexit:                                        ; preds = %24, %10, %3, %0
  %.0 = phi i64 [ %26, %24 ], [ 0, %0 ], [ -1, %3 ], [ -1, %10 ], !llfi_index !4177
  ret i64 %.0, !llfi_index !4178
}

; Function Attrs: nounwind uwtable
define i32 @quantum_bmeasure(i32 %pos, %struct.quantum_reg_struct* %reg) #0 {
  %out = alloca %struct.quantum_reg_struct, align 8, !llfi_index !4179
  %1 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext -127, i32 %pos) #3, !llfi_index !4180
  %2 = icmp eq i32 %1, 0, !llfi_index !4181
  br i1 %2, label %3, label %33, !llfi_index !4182

; <label>:3                                       ; preds = %0
  %4 = zext i32 %pos to i64, !llfi_index !4183
  %5 = shl i64 1, %4, !llfi_index !4184
  %6 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !4185
  %7 = load i32* %6, align 4, !tbaa !223, !llfi_index !4186
  %8 = icmp sgt i32 %7, 0, !llfi_index !4187
  br i1 %8, label %.lr.ph, label %._crit_edge, !llfi_index !4188

.lr.ph:                                           ; preds = %3
  %9 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !4189
  %10 = load %struct.quantum_reg_node_struct** %9, align 8, !tbaa !228, !llfi_index !4190
  br label %11, !llfi_index !4191

; <label>:11                                      ; preds = %26, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %26 ], !llfi_index !4192
  %pa.01 = phi double [ 0.000000e+00, %.lr.ph ], [ %pa.1, %26 ], !llfi_index !4193
  %12 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv, i32 1, !llfi_index !4194
  %13 = load i64* %12, align 8, !tbaa !249, !llfi_index !4195
  %14 = and i64 %13, %5, !llfi_index !4196
  %15 = icmp eq i64 %14, 0, !llfi_index !4197
  br i1 %15, label %16, label %26, !llfi_index !4198

; <label>:16                                      ; preds = %11
  %17 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv, i32 0, i32 0, !llfi_index !4199
  %18 = load float* %17, align 4, !llfi_index !4200
  %19 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv, i32 0, i32 1, !llfi_index !4201
  %20 = load float* %19, align 4, !llfi_index !4202
  %21 = fmul float %18, %18, !llfi_index !4203
  %22 = fmul float %20, %20, !llfi_index !4204
  %23 = fadd float %21, %22, !llfi_index !4205
  %24 = fpext float %23 to double, !llfi_index !4206
  %25 = fadd double %pa.01, %24, !llfi_index !4207
  br label %26, !llfi_index !4208

; <label>:26                                      ; preds = %16, %11
  %pa.1 = phi double [ %pa.01, %11 ], [ %25, %16 ], !llfi_index !4209
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !4210
  %27 = trunc i64 %indvars.iv.next to i32, !llfi_index !4211
  %28 = icmp slt i32 %27, %7, !llfi_index !4212
  br i1 %28, label %11, label %._crit_edge, !llfi_index !4213

._crit_edge:                                      ; preds = %26, %3
  %pa.0.lcssa = phi double [ 0.000000e+00, %3 ], [ %pa.1, %26 ], !llfi_index !4214
  %29 = call double @spec_rand() #3, !llfi_index !4215
  %30 = fcmp ogt double %29, %pa.0.lcssa, !llfi_index !4216
  %result.0 = zext i1 %30 to i32, !llfi_index !4217
  call void @quantum_state_collapse(%struct.quantum_reg_struct* sret %out, i32 %pos, i32 %result.0, %struct.quantum_reg_struct* byval align 8 %reg) #3, !llfi_index !4218
  %31 = bitcast %struct.quantum_reg_struct* %out to i8*, !llfi_index !4219
  call void @quantum_delete_qureg_hashpreserve(%struct.quantum_reg_struct* %reg) #3, !llfi_index !4220
  %32 = bitcast %struct.quantum_reg_struct* %reg to i8*, !llfi_index !4221
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %31, i64 32, i32 8, i1 false), !tbaa.struct !4222, !llfi_index !4223
  br label %33, !llfi_index !4224

; <label>:33                                      ; preds = %._crit_edge, %0
  %.0 = phi i32 [ %result.0, %._crit_edge ], [ 0, %0 ], !llfi_index !4225
  ret i32 %.0, !llfi_index !4226
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @quantum_bmeasure_bitpreserve(i32 %pos, %struct.quantum_reg_struct* %reg) #0 {
  %1 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext -126, i32 %pos) #3, !llfi_index !4227
  %2 = icmp eq i32 %1, 0, !llfi_index !4228
  br i1 %2, label %3, label %137, !llfi_index !4229

; <label>:3                                       ; preds = %0
  %4 = zext i32 %pos to i64, !llfi_index !4230
  %5 = shl i64 1, %4, !llfi_index !4231
  %6 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !4232
  %7 = load i32* %6, align 4, !tbaa !223, !llfi_index !4233
  %8 = icmp sgt i32 %7, 0, !llfi_index !4234
  br i1 %8, label %.lr.ph16, label %._crit_edge17, !llfi_index !4235

.lr.ph16:                                         ; preds = %3
  %9 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !4236
  %10 = load %struct.quantum_reg_node_struct** %9, align 8, !tbaa !228, !llfi_index !4237
  br label %11, !llfi_index !4238

; <label>:11                                      ; preds = %26, %.lr.ph16
  %indvars.iv22 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next23, %26 ], !llfi_index !4239
  %pa.013 = phi double [ 0.000000e+00, %.lr.ph16 ], [ %pa.1, %26 ], !llfi_index !4240
  %12 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv22, i32 1, !llfi_index !4241
  %13 = load i64* %12, align 8, !tbaa !249, !llfi_index !4242
  %14 = and i64 %13, %5, !llfi_index !4243
  %15 = icmp eq i64 %14, 0, !llfi_index !4244
  br i1 %15, label %16, label %26, !llfi_index !4245

; <label>:16                                      ; preds = %11
  %17 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv22, i32 0, i32 0, !llfi_index !4246
  %18 = load float* %17, align 4, !llfi_index !4247
  %19 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv22, i32 0, i32 1, !llfi_index !4248
  %20 = load float* %19, align 4, !llfi_index !4249
  %21 = fmul float %18, %18, !llfi_index !4250
  %22 = fmul float %20, %20, !llfi_index !4251
  %23 = fadd float %21, %22, !llfi_index !4252
  %24 = fpext float %23 to double, !llfi_index !4253
  %25 = fadd double %pa.013, %24, !llfi_index !4254
  br label %26, !llfi_index !4255

; <label>:26                                      ; preds = %16, %11
  %pa.1 = phi double [ %pa.013, %11 ], [ %25, %16 ], !llfi_index !4256
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !llfi_index !4257
  %27 = trunc i64 %indvars.iv.next23 to i32, !llfi_index !4258
  %28 = icmp slt i32 %27, %7, !llfi_index !4259
  br i1 %28, label %11, label %._crit_edge17, !llfi_index !4260

._crit_edge17:                                    ; preds = %26, %3
  %pa.0.lcssa = phi double [ 0.000000e+00, %3 ], [ %pa.1, %26 ], !llfi_index !4261
  %29 = tail call double @spec_rand() #3, !llfi_index !4262
  %30 = fcmp ogt double %29, %pa.0.lcssa, !llfi_index !4263
  %result.0 = zext i1 %30 to i32, !llfi_index !4264
  %31 = load i32* %6, align 4, !tbaa !223, !llfi_index !4265
  %32 = icmp sgt i32 %31, 0, !llfi_index !4266
  br i1 %32, label %.lr.ph10, label %._crit_edge11, !llfi_index !4267

.lr.ph10:                                         ; preds = %._crit_edge17
  %33 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !4268
  br i1 %30, label %.lr.ph10.split.us, label %.lr.ph10..lr.ph10.split_crit_edge, !llfi_index !4269

.lr.ph10.split.us:                                ; preds = %53, %.lr.ph10
  %34 = phi i32 [ %54, %53 ], [ %31, %.lr.ph10 ], !llfi_index !4270
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %53 ], [ 0, %.lr.ph10 ], !llfi_index !4271
  %size.07.us = phi i32 [ %size.1.us, %53 ], [ 0, %.lr.ph10 ], !llfi_index !4272
  %d.06.us = phi double [ %d.1.us, %53 ], [ 0.000000e+00, %.lr.ph10 ], !llfi_index !4273
  %35 = load %struct.quantum_reg_node_struct** %33, align 8, !tbaa !228, !llfi_index !4274
  %36 = getelementptr inbounds %struct.quantum_reg_node_struct* %35, i64 %indvars.iv24, i32 1, !llfi_index !4275
  %37 = load i64* %36, align 8, !tbaa !249, !llfi_index !4276
  %38 = and i64 %37, %5, !llfi_index !4277
  %39 = icmp eq i64 %38, 0, !llfi_index !4278
  %40 = getelementptr inbounds %struct.quantum_reg_node_struct* %35, i64 %indvars.iv24, i32 0, i32 0, !llfi_index !4279
  br i1 %39, label %51, label %41, !llfi_index !4280

; <label>:41                                      ; preds = %.lr.ph10.split.us
  %42 = load float* %40, align 4, !llfi_index !4281
  %43 = getelementptr inbounds %struct.quantum_reg_node_struct* %35, i64 %indvars.iv24, i32 0, i32 1, !llfi_index !4282
  %44 = load float* %43, align 4, !llfi_index !4283
  %45 = fmul float %42, %42, !llfi_index !4284
  %46 = fmul float %44, %44, !llfi_index !4285
  %47 = fadd float %45, %46, !llfi_index !4286
  %48 = fpext float %47 to double, !llfi_index !4287
  %49 = fadd double %d.06.us, %48, !llfi_index !4288
  %50 = add nsw i32 %size.07.us, 1, !llfi_index !4289
  br label %53, !llfi_index !4290

; <label>:51                                      ; preds = %.lr.ph10.split.us
  %52 = getelementptr inbounds %struct.quantum_reg_node_struct* %35, i64 %indvars.iv24, i32 0, i32 1, !llfi_index !4291
  store float 0.000000e+00, float* %40, align 4, !llfi_index !4292
  store float 0.000000e+00, float* %52, align 4, !llfi_index !4293
  %.pre = load i32* %6, align 4, !tbaa !223, !llfi_index !4294
  br label %53, !llfi_index !4295

; <label>:53                                      ; preds = %51, %41
  %54 = phi i32 [ %34, %41 ], [ %.pre, %51 ], !llfi_index !4296
  %d.1.us = phi double [ %49, %41 ], [ %d.06.us, %51 ], !llfi_index !4297
  %size.1.us = phi i32 [ %50, %41 ], [ %size.07.us, %51 ], !llfi_index !4298
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1, !llfi_index !4299
  %55 = trunc i64 %indvars.iv.next25 to i32, !llfi_index !4300
  %56 = icmp slt i32 %55, %54, !llfi_index !4301
  br i1 %56, label %.lr.ph10.split.us, label %._crit_edge11, !llfi_index !4302

.lr.ph10..lr.ph10.split_crit_edge:                ; preds = %76, %.lr.ph10
  %57 = phi i32 [ %77, %76 ], [ %31, %.lr.ph10 ], !llfi_index !4303
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %76 ], [ 0, %.lr.ph10 ], !llfi_index !4304
  %size.07 = phi i32 [ %size.1, %76 ], [ 0, %.lr.ph10 ], !llfi_index !4305
  %d.06 = phi double [ %d.1, %76 ], [ 0.000000e+00, %.lr.ph10 ], !llfi_index !4306
  %58 = load %struct.quantum_reg_node_struct** %33, align 8, !tbaa !228, !llfi_index !4307
  %59 = getelementptr inbounds %struct.quantum_reg_node_struct* %58, i64 %indvars.iv20, i32 1, !llfi_index !4308
  %60 = load i64* %59, align 8, !tbaa !249, !llfi_index !4309
  %61 = and i64 %60, %5, !llfi_index !4310
  %62 = icmp eq i64 %61, 0, !llfi_index !4311
  %63 = getelementptr inbounds %struct.quantum_reg_node_struct* %58, i64 %indvars.iv20, i32 0, i32 0, !llfi_index !4312
  br i1 %62, label %66, label %64, !llfi_index !4313

; <label>:64                                      ; preds = %.lr.ph10..lr.ph10.split_crit_edge
  %65 = getelementptr inbounds %struct.quantum_reg_node_struct* %58, i64 %indvars.iv20, i32 0, i32 1, !llfi_index !4314
  store float 0.000000e+00, float* %63, align 4, !llfi_index !4315
  store float 0.000000e+00, float* %65, align 4, !llfi_index !4316
  %.pre26 = load i32* %6, align 4, !tbaa !223, !llfi_index !4317
  br label %76, !llfi_index !4318

; <label>:66                                      ; preds = %.lr.ph10..lr.ph10.split_crit_edge
  %67 = load float* %63, align 4, !llfi_index !4319
  %68 = getelementptr inbounds %struct.quantum_reg_node_struct* %58, i64 %indvars.iv20, i32 0, i32 1, !llfi_index !4320
  %69 = load float* %68, align 4, !llfi_index !4321
  %70 = fmul float %67, %67, !llfi_index !4322
  %71 = fmul float %69, %69, !llfi_index !4323
  %72 = fadd float %70, %71, !llfi_index !4324
  %73 = fpext float %72 to double, !llfi_index !4325
  %74 = fadd double %d.06, %73, !llfi_index !4326
  %75 = add nsw i32 %size.07, 1, !llfi_index !4327
  br label %76, !llfi_index !4328

; <label>:76                                      ; preds = %66, %64
  %77 = phi i32 [ %.pre26, %64 ], [ %57, %66 ], !llfi_index !4329
  %d.1 = phi double [ %d.06, %64 ], [ %74, %66 ], !llfi_index !4330
  %size.1 = phi i32 [ %size.07, %64 ], [ %75, %66 ], !llfi_index !4331
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1, !llfi_index !4332
  %78 = trunc i64 %indvars.iv.next21 to i32, !llfi_index !4333
  %79 = icmp slt i32 %78, %77, !llfi_index !4334
  br i1 %79, label %.lr.ph10..lr.ph10.split_crit_edge, label %._crit_edge11, !llfi_index !4335

._crit_edge11:                                    ; preds = %76, %53, %._crit_edge17
  %size.0.lcssa = phi i32 [ 0, %._crit_edge17 ], [ %size.1.us, %53 ], [ %size.1, %76 ], !llfi_index !4336
  %d.0.lcssa = phi double [ 0.000000e+00, %._crit_edge17 ], [ %d.1.us, %53 ], [ %d.1, %76 ], !llfi_index !4337
  %80 = sext i32 %size.0.lcssa to i64, !llfi_index !4338
  %81 = tail call noalias i8* @calloc(i64 %80, i64 16) #3, !llfi_index !4339
  %82 = bitcast i8* %81 to %struct.quantum_reg_node_struct*, !llfi_index !4340
  %83 = icmp eq i8* %81, null, !llfi_index !4341
  br i1 %83, label %84, label %86, !llfi_index !4342

; <label>:84                                      ; preds = %._crit_edge11
  %85 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str52, i64 0, i64 0), i32 %size.0.lcssa) #3, !llfi_index !4343
  tail call void @exit(i32 1) #8, !llfi_index !4344
  unreachable, !llfi_index !4345

; <label>:86                                      ; preds = %._crit_edge11
  %87 = shl nsw i64 %80, 4, !llfi_index !4346
  %88 = tail call i64 @quantum_memman(i64 %87) #3, !llfi_index !4347
  %89 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !4348
  %90 = load i32* %89, align 4, !tbaa !1023, !llfi_index !4349
  %91 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !4350
  %92 = load i32** %91, align 8, !tbaa !1028, !llfi_index !4351
  %93 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !4352
  %94 = load i32* %93, align 4, !tbaa !22, !llfi_index !4353
  %95 = load i32* %6, align 4, !tbaa !223, !llfi_index !4354
  %96 = icmp sgt i32 %95, 0, !llfi_index !4355
  %97 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !4356
  br i1 %96, label %.lr.ph, label %._crit_edge, !llfi_index !4357

.lr.ph:                                           ; preds = %133, %86
  %98 = phi i32 [ %134, %133 ], [ %95, %86 ], !llfi_index !4358
  %indvars.iv = phi i64 [ %indvars.iv.next, %133 ], [ 0, %86 ], !llfi_index !4359
  %j.04 = phi i32 [ %j.1, %133 ], [ 0, %86 ], !llfi_index !4360
  %99 = load %struct.quantum_reg_node_struct** %97, align 8, !tbaa !228, !llfi_index !4361
  %100 = getelementptr inbounds %struct.quantum_reg_node_struct* %99, i64 %indvars.iv, i32 0, i32 0, !llfi_index !4362
  %101 = load float* %100, align 4, !llfi_index !4363
  %102 = getelementptr inbounds %struct.quantum_reg_node_struct* %99, i64 %indvars.iv, i32 0, i32 1, !llfi_index !4364
  %103 = load float* %102, align 4, !llfi_index !4365
  %104 = fcmp une float %101, 0.000000e+00, !llfi_index !4366
  %105 = fcmp une float %103, 0.000000e+00, !llfi_index !4367
  %106 = or i1 %104, %105, !llfi_index !4368
  br i1 %106, label %107, label %133, !llfi_index !4369

; <label>:107                                     ; preds = %.lr.ph
  %108 = getelementptr inbounds %struct.quantum_reg_node_struct* %99, i64 %indvars.iv, i32 1, !llfi_index !4370
  %109 = load i64* %108, align 8, !tbaa !249, !llfi_index !4371
  %110 = sext i32 %j.04 to i64, !llfi_index !4372
  %111 = getelementptr inbounds %struct.quantum_reg_node_struct* %82, i64 %110, i32 1, !llfi_index !4373
  store i64 %109, i64* %111, align 8, !tbaa !249, !llfi_index !4374
  %112 = load float* %100, align 4, !llfi_index !4375
  %113 = load float* %102, align 4, !llfi_index !4376
  %114 = fmul float %113, 0.000000e+00, !llfi_index !4377
  %115 = fsub float %112, %114, !llfi_index !4378
  %116 = fmul float %112, 0.000000e+00, !llfi_index !4379
  %117 = fadd float %113, %116, !llfi_index !4380
  %118 = tail call double @sqrt(double %d.0.lcssa) #3, !llfi_index !4381
  %119 = fptrunc double %118 to float, !llfi_index !4382
  %120 = fmul float %115, %119, !llfi_index !4383
  %121 = fmul float %117, 0.000000e+00, !llfi_index !4384
  %122 = fadd float %121, %120, !llfi_index !4385
  %123 = fmul float %119, %119, !llfi_index !4386
  %124 = fadd float %123, 0.000000e+00, !llfi_index !4387
  %125 = fmul float %117, %119, !llfi_index !4388
  %126 = fmul float %115, 0.000000e+00, !llfi_index !4389
  %127 = fsub float %125, %126, !llfi_index !4390
  %128 = fdiv float %122, %124, !llfi_index !4391
  %129 = fdiv float %127, %124, !llfi_index !4392
  %130 = getelementptr inbounds %struct.quantum_reg_node_struct* %82, i64 %110, i32 0, i32 0, !llfi_index !4393
  %131 = getelementptr inbounds %struct.quantum_reg_node_struct* %82, i64 %110, i32 0, i32 1, !llfi_index !4394
  store float %128, float* %130, align 4, !llfi_index !4395
  store float %129, float* %131, align 4, !llfi_index !4396
  %132 = add nsw i32 %j.04, 1, !llfi_index !4397
  %.pre27 = load i32* %6, align 4, !tbaa !223, !llfi_index !4398
  br label %133, !llfi_index !4399

; <label>:133                                     ; preds = %107, %.lr.ph
  %134 = phi i32 [ %.pre27, %107 ], [ %98, %.lr.ph ], !llfi_index !4400
  %j.1 = phi i32 [ %132, %107 ], [ %j.04, %.lr.ph ], !llfi_index !4401
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !4402
  %135 = trunc i64 %indvars.iv.next to i32, !llfi_index !4403
  %136 = icmp slt i32 %135, %134, !llfi_index !4404
  br i1 %136, label %.lr.ph, label %._crit_edge, !llfi_index !4405

._crit_edge:                                      ; preds = %133, %86
  tail call void @quantum_delete_qureg_hashpreserve(%struct.quantum_reg_struct* %reg) #3, !llfi_index !4406
  store i32 %94, i32* %93, align 8, !llfi_index !4407
  store i32 %size.0.lcssa, i32* %6, align 4, !llfi_index !4408
  store i32 %90, i32* %89, align 8, !llfi_index !4409
  store %struct.quantum_reg_node_struct* %82, %struct.quantum_reg_node_struct** %97, align 8, !llfi_index !4410
  store i32* %92, i32** %91, align 8, !llfi_index !4411
  br label %137, !llfi_index !4412

; <label>:137                                     ; preds = %._crit_edge, %0
  %.0 = phi i32 [ %result.0, %._crit_edge ], [ 0, %0 ], !llfi_index !4413
  ret i32 %.0, !llfi_index !4414
}

; Function Attrs: nounwind uwtable
define void @quantum_mu2char(i64 %mu, i8* nocapture %buf) #0 {
  %1 = lshr i64 %mu, 56, !llfi_index !4415
  %2 = trunc i64 %1 to i8, !llfi_index !4416
  store i8 %2, i8* %buf, align 1, !tbaa !1251, !llfi_index !4417
  %3 = lshr i64 %mu, 48, !llfi_index !4418
  %4 = trunc i64 %3 to i8, !llfi_index !4419
  %5 = getelementptr inbounds i8* %buf, i64 1, !llfi_index !4420
  store i8 %4, i8* %5, align 1, !tbaa !1251, !llfi_index !4421
  %6 = lshr i64 %mu, 40, !llfi_index !4422
  %7 = trunc i64 %6 to i8, !llfi_index !4423
  %8 = getelementptr inbounds i8* %buf, i64 2, !llfi_index !4424
  store i8 %7, i8* %8, align 1, !tbaa !1251, !llfi_index !4425
  %9 = lshr i64 %mu, 32, !llfi_index !4426
  %10 = trunc i64 %9 to i8, !llfi_index !4427
  %11 = getelementptr inbounds i8* %buf, i64 3, !llfi_index !4428
  store i8 %10, i8* %11, align 1, !tbaa !1251, !llfi_index !4429
  %12 = lshr i64 %mu, 24, !llfi_index !4430
  %13 = trunc i64 %12 to i8, !llfi_index !4431
  %14 = getelementptr inbounds i8* %buf, i64 4, !llfi_index !4432
  store i8 %13, i8* %14, align 1, !tbaa !1251, !llfi_index !4433
  %15 = lshr i64 %mu, 16, !llfi_index !4434
  %16 = trunc i64 %15 to i8, !llfi_index !4435
  %17 = getelementptr inbounds i8* %buf, i64 5, !llfi_index !4436
  store i8 %16, i8* %17, align 1, !tbaa !1251, !llfi_index !4437
  %18 = lshr i64 %mu, 8, !llfi_index !4438
  %19 = trunc i64 %18 to i8, !llfi_index !4439
  %20 = getelementptr inbounds i8* %buf, i64 6, !llfi_index !4440
  store i8 %19, i8* %20, align 1, !tbaa !1251, !llfi_index !4441
  %21 = trunc i64 %mu to i8, !llfi_index !4442
  %22 = getelementptr inbounds i8* %buf, i64 7, !llfi_index !4443
  store i8 %21, i8* %22, align 1, !tbaa !1251, !llfi_index !4444
  ret void, !llfi_index !4445
}

; Function Attrs: nounwind uwtable
define void @quantum_int2char(i32 %j, i8* nocapture %buf) #0 {
  %1 = sdiv i32 %j, 16777216, !llfi_index !4446
  %2 = trunc i32 %1 to i8, !llfi_index !4447
  store i8 %2, i8* %buf, align 1, !tbaa !1251, !llfi_index !4448
  %3 = srem i32 %j, 16777216, !llfi_index !4449
  %4 = sdiv i32 %3, 65536, !llfi_index !4450
  %5 = trunc i32 %4 to i8, !llfi_index !4451
  %6 = getelementptr inbounds i8* %buf, i64 1, !llfi_index !4452
  store i8 %5, i8* %6, align 1, !tbaa !1251, !llfi_index !4453
  %7 = srem i32 %3, 65536, !llfi_index !4454
  %8 = sdiv i32 %7, 256, !llfi_index !4455
  %9 = trunc i32 %8 to i8, !llfi_index !4456
  %10 = getelementptr inbounds i8* %buf, i64 2, !llfi_index !4457
  store i8 %9, i8* %10, align 1, !tbaa !1251, !llfi_index !4458
  %11 = trunc i32 %7 to i8, !llfi_index !4459
  %12 = getelementptr inbounds i8* %buf, i64 3, !llfi_index !4460
  store i8 %11, i8* %12, align 1, !tbaa !1251, !llfi_index !4461
  ret void, !llfi_index !4462
}

; Function Attrs: nounwind uwtable
define void @quantum_double2char(double %d, i8* nocapture %buf) #0 {
  %1 = alloca double, align 8, !llfi_index !4463
  store double %d, double* %1, align 8, !tbaa !4464, !llfi_index !4466
  %2 = bitcast double* %1 to i64*, !llfi_index !4467
  %3 = bitcast i8* %buf to i64*, !llfi_index !4468
  %4 = load i64* %2, align 8, !llfi_index !4469
  store i64 %4, i64* %3, align 1, !llfi_index !4470
  ret void, !llfi_index !4471
}

; Function Attrs: nounwind readonly uwtable
define i64 @quantum_char2mu(i8* nocapture readonly %buf) #7 {
  %1 = getelementptr inbounds i8* %buf, i64 7, !llfi_index !4472
  %2 = load i8* %1, align 1, !tbaa !1251, !llfi_index !4473
  %3 = zext i8 %2 to i64, !llfi_index !4474
  %4 = getelementptr inbounds i8* %buf, i64 6, !llfi_index !4475
  %5 = load i8* %4, align 1, !tbaa !1251, !llfi_index !4476
  %6 = zext i8 %5 to i64, !llfi_index !4477
  %7 = shl nuw nsw i64 %6, 8, !llfi_index !4478
  %8 = or i64 %7, %3, !llfi_index !4479
  %9 = getelementptr inbounds i8* %buf, i64 5, !llfi_index !4480
  %10 = load i8* %9, align 1, !tbaa !1251, !llfi_index !4481
  %11 = zext i8 %10 to i64, !llfi_index !4482
  %12 = shl nuw nsw i64 %11, 16, !llfi_index !4483
  %13 = or i64 %12, %8, !llfi_index !4484
  %14 = getelementptr inbounds i8* %buf, i64 4, !llfi_index !4485
  %15 = load i8* %14, align 1, !tbaa !1251, !llfi_index !4486
  %16 = zext i8 %15 to i64, !llfi_index !4487
  %17 = shl nuw nsw i64 %16, 24, !llfi_index !4488
  %18 = or i64 %17, %13, !llfi_index !4489
  %19 = getelementptr inbounds i8* %buf, i64 3, !llfi_index !4490
  %20 = load i8* %19, align 1, !tbaa !1251, !llfi_index !4491
  %21 = zext i8 %20 to i64, !llfi_index !4492
  %22 = shl nuw nsw i64 %21, 32, !llfi_index !4493
  %23 = or i64 %22, %18, !llfi_index !4494
  %24 = getelementptr inbounds i8* %buf, i64 2, !llfi_index !4495
  %25 = load i8* %24, align 1, !tbaa !1251, !llfi_index !4496
  %26 = zext i8 %25 to i64, !llfi_index !4497
  %27 = shl nuw nsw i64 %26, 40, !llfi_index !4498
  %28 = or i64 %27, %23, !llfi_index !4499
  %29 = getelementptr inbounds i8* %buf, i64 1, !llfi_index !4500
  %30 = load i8* %29, align 1, !tbaa !1251, !llfi_index !4501
  %31 = zext i8 %30 to i64, !llfi_index !4502
  %32 = shl nuw nsw i64 %31, 48, !llfi_index !4503
  %33 = add i64 %32, %28, !llfi_index !4504
  %34 = load i8* %buf, align 1, !tbaa !1251, !llfi_index !4505
  %35 = zext i8 %34 to i64, !llfi_index !4506
  %36 = shl nuw i64 %35, 56, !llfi_index !4507
  %37 = add i64 %36, %33, !llfi_index !4508
  ret i64 %37, !llfi_index !4509
}

; Function Attrs: nounwind readonly uwtable
define i32 @quantum_char2int(i8* nocapture readonly %buf) #7 {
  %1 = getelementptr inbounds i8* %buf, i64 3, !llfi_index !4510
  %2 = load i8* %1, align 1, !tbaa !1251, !llfi_index !4511
  %3 = zext i8 %2 to i32, !llfi_index !4512
  %4 = getelementptr inbounds i8* %buf, i64 2, !llfi_index !4513
  %5 = load i8* %4, align 1, !tbaa !1251, !llfi_index !4514
  %6 = zext i8 %5 to i32, !llfi_index !4515
  %7 = shl nuw nsw i32 %6, 8, !llfi_index !4516
  %8 = or i32 %7, %3, !llfi_index !4517
  %9 = getelementptr inbounds i8* %buf, i64 1, !llfi_index !4518
  %10 = load i8* %9, align 1, !tbaa !1251, !llfi_index !4519
  %11 = zext i8 %10 to i32, !llfi_index !4520
  %12 = shl nuw nsw i32 %11, 16, !llfi_index !4521
  %13 = or i32 %12, %8, !llfi_index !4522
  %14 = load i8* %buf, align 1, !tbaa !1251, !llfi_index !4523
  %15 = zext i8 %14 to i32, !llfi_index !4524
  %16 = shl nuw i32 %15, 24, !llfi_index !4525
  %17 = or i32 %16, %13, !llfi_index !4526
  ret i32 %17, !llfi_index !4527
}

; Function Attrs: nounwind readonly uwtable
define double @quantum_char2double(i8* nocapture readonly %buf) #7 {
  %1 = bitcast i8* %buf to double*, !llfi_index !4528
  %2 = load double* %1, align 8, !tbaa !4464, !llfi_index !4529
  ret double %2, !llfi_index !4530
}

; Function Attrs: nounwind uwtable
define void @quantum_objcode_start() #0 {
  store i32 1, i32* @opstatus, align 4, !tbaa !1, !llfi_index !4531
  store i64 1, i64* @allocated, align 8, !tbaa !3910, !llfi_index !4532
  %1 = tail call noalias i8* @malloc(i64 65536) #3, !llfi_index !4533
  store i8* %1, i8** @objcode, align 8, !tbaa !358, !llfi_index !4534
  %2 = icmp eq i8* %1, null, !llfi_index !4535
  br i1 %2, label %3, label %4, !llfi_index !4536

; <label>:3                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([42 x i8]* @str62, i64 0, i64 0)), !llfi_index !4537
  tail call void @exit(i32 1) #8, !llfi_index !4538
  unreachable, !llfi_index !4539

; <label>:4                                       ; preds = %0
  %5 = tail call i64 @quantum_memman(i64 65536) #3, !llfi_index !4540
  ret void, !llfi_index !4541
}

; Function Attrs: nounwind uwtable
define void @quantum_objcode_stop() #0 {
  store i32 0, i32* @opstatus, align 4, !tbaa !1, !llfi_index !4542
  %1 = load i8** @objcode, align 8, !tbaa !358, !llfi_index !4543
  tail call void @free(i8* %1) #3, !llfi_index !4544
  store i8* null, i8** @objcode, align 8, !tbaa !358, !llfi_index !4545
  %2 = load i64* @allocated, align 8, !tbaa !3910, !llfi_index !4546
  %3 = sub i64 0, %2, !llfi_index !4547
  %4 = shl i64 %3, 16, !llfi_index !4548
  %5 = tail call i64 @quantum_memman(i64 %4) #3, !llfi_index !4549
  store i64 0, i64* @allocated, align 8, !tbaa !3910, !llfi_index !4550
  ret void, !llfi_index !4551
}

; Function Attrs: nounwind uwtable
define i32 @quantum_objcode_put(i8 zeroext %operation, ...) #0 {
  %args = alloca [1 x %struct.__va_list_tag], align 16, !llfi_index !4552
  %buf = alloca [80 x i8], align 16, !llfi_index !4553
  %1 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 0, !llfi_index !4554
  call void @llvm.lifetime.start(i64 80, i8* %1) #3, !llfi_index !4555
  %2 = load i32* @opstatus, align 4, !tbaa !1, !llfi_index !4556
  %3 = icmp eq i32 %2, 0, !llfi_index !4557
  br i1 %3, label %.loopexit, label %4, !llfi_index !4558

; <label>:4                                       ; preds = %0
  %5 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !llfi_index !4559
  call void @llvm.va_start(i8* %5), !llfi_index !4560
  store i8 %operation, i8* %1, align 16, !tbaa !1251, !llfi_index !4561
  %6 = zext i8 %operation to i32, !llfi_index !4562
  switch i32 %6, label %353 [
    i32 0, label %7
    i32 1, label %47
    i32 12, label %47
    i32 2, label %105
    i32 3, label %191
    i32 4, label %191
    i32 5, label %191
    i32 6, label %191
    i32 129, label %191
    i32 130, label %191
    i32 14, label %191
    i32 7, label %221
    i32 8, label %221
    i32 9, label %221
    i32 10, label %221
    i32 11, label %221
    i32 13, label %273
    i32 128, label %355
    i32 255, label %355
  ], !llfi_index !4563

; <label>:7                                       ; preds = %4
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !llfi_index !4564
  %9 = load i32* %8, align 16, !llfi_index !4565
  %10 = icmp ult i32 %9, 41, !llfi_index !4566
  br i1 %10, label %11, label %17, !llfi_index !4567

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4568
  %13 = load i8** %12, align 16, !llfi_index !4569
  %14 = sext i32 %9 to i64, !llfi_index !4570
  %15 = getelementptr i8* %13, i64 %14, !llfi_index !4571
  %16 = add i32 %9, 8, !llfi_index !4572
  store i32 %16, i32* %8, align 16, !llfi_index !4573
  br label %21, !llfi_index !4574

; <label>:17                                      ; preds = %7
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4575
  %19 = load i8** %18, align 8, !llfi_index !4576
  %20 = getelementptr i8* %19, i64 8, !llfi_index !4577
  store i8* %20, i8** %18, align 8, !llfi_index !4578
  br label %21, !llfi_index !4579

; <label>:21                                      ; preds = %17, %11
  %.in11 = phi i8* [ %15, %11 ], [ %19, %17 ], !llfi_index !4580
  %22 = bitcast i8* %.in11 to i64*, !llfi_index !4581
  %23 = load i64* %22, align 8, !llfi_index !4582
  %24 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 1, !llfi_index !4583
  %25 = lshr i64 %23, 56, !llfi_index !4584
  %26 = trunc i64 %25 to i8, !llfi_index !4585
  store i8 %26, i8* %24, align 1, !tbaa !1251, !llfi_index !4586
  %27 = lshr i64 %23, 48, !llfi_index !4587
  %28 = trunc i64 %27 to i8, !llfi_index !4588
  %29 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 2, !llfi_index !4589
  store i8 %28, i8* %29, align 2, !tbaa !1251, !llfi_index !4590
  %30 = lshr i64 %23, 40, !llfi_index !4591
  %31 = trunc i64 %30 to i8, !llfi_index !4592
  %32 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 3, !llfi_index !4593
  store i8 %31, i8* %32, align 1, !tbaa !1251, !llfi_index !4594
  %33 = lshr i64 %23, 32, !llfi_index !4595
  %34 = trunc i64 %33 to i8, !llfi_index !4596
  %35 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 4, !llfi_index !4597
  store i8 %34, i8* %35, align 4, !tbaa !1251, !llfi_index !4598
  %36 = lshr i64 %23, 24, !llfi_index !4599
  %37 = trunc i64 %36 to i8, !llfi_index !4600
  %38 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 5, !llfi_index !4601
  store i8 %37, i8* %38, align 1, !tbaa !1251, !llfi_index !4602
  %39 = lshr i64 %23, 16, !llfi_index !4603
  %40 = trunc i64 %39 to i8, !llfi_index !4604
  %41 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 6, !llfi_index !4605
  store i8 %40, i8* %41, align 2, !tbaa !1251, !llfi_index !4606
  %42 = lshr i64 %23, 8, !llfi_index !4607
  %43 = trunc i64 %42 to i8, !llfi_index !4608
  %44 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 7, !llfi_index !4609
  store i8 %43, i8* %44, align 1, !tbaa !1251, !llfi_index !4610
  %45 = trunc i64 %23 to i8, !llfi_index !4611
  %46 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 8, !llfi_index !4612
  store i8 %45, i8* %46, align 8, !tbaa !1251, !llfi_index !4613
  br label %355, !llfi_index !4614

; <label>:47                                      ; preds = %4, %4
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !llfi_index !4615
  %49 = load i32* %48, align 16, !llfi_index !4616
  %50 = icmp ult i32 %49, 41, !llfi_index !4617
  br i1 %50, label %51, label %57, !llfi_index !4618

; <label>:51                                      ; preds = %47
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4619
  %53 = load i8** %52, align 16, !llfi_index !4620
  %54 = sext i32 %49 to i64, !llfi_index !4621
  %55 = getelementptr i8* %53, i64 %54, !llfi_index !4622
  %56 = add i32 %49, 8, !llfi_index !4623
  store i32 %56, i32* %48, align 16, !llfi_index !4624
  br label %61, !llfi_index !4625

; <label>:57                                      ; preds = %47
  %58 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4626
  %59 = load i8** %58, align 8, !llfi_index !4627
  %60 = getelementptr i8* %59, i64 8, !llfi_index !4628
  store i8* %60, i8** %58, align 8, !llfi_index !4629
  br label %61, !llfi_index !4630

; <label>:61                                      ; preds = %57, %51
  %62 = phi i32 [ %56, %51 ], [ %49, %57 ], !llfi_index !4631
  %.in9 = phi i8* [ %55, %51 ], [ %59, %57 ], !llfi_index !4632
  %63 = bitcast i8* %.in9 to i32*, !llfi_index !4633
  %64 = load i32* %63, align 4, !llfi_index !4634
  %65 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 1, !llfi_index !4635
  %66 = sdiv i32 %64, 16777216, !llfi_index !4636
  %67 = trunc i32 %66 to i8, !llfi_index !4637
  store i8 %67, i8* %65, align 1, !tbaa !1251, !llfi_index !4638
  %68 = srem i32 %64, 16777216, !llfi_index !4639
  %69 = sdiv i32 %68, 65536, !llfi_index !4640
  %70 = trunc i32 %69 to i8, !llfi_index !4641
  %71 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 2, !llfi_index !4642
  store i8 %70, i8* %71, align 2, !tbaa !1251, !llfi_index !4643
  %72 = srem i32 %68, 65536, !llfi_index !4644
  %73 = sdiv i32 %72, 256, !llfi_index !4645
  %74 = trunc i32 %73 to i8, !llfi_index !4646
  %75 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 3, !llfi_index !4647
  store i8 %74, i8* %75, align 1, !tbaa !1251, !llfi_index !4648
  %76 = trunc i32 %72 to i8, !llfi_index !4649
  %77 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 4, !llfi_index !4650
  store i8 %76, i8* %77, align 4, !tbaa !1251, !llfi_index !4651
  %78 = icmp ult i32 %62, 41, !llfi_index !4652
  br i1 %78, label %79, label %85, !llfi_index !4653

; <label>:79                                      ; preds = %61
  %80 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4654
  %81 = load i8** %80, align 16, !llfi_index !4655
  %82 = sext i32 %62 to i64, !llfi_index !4656
  %83 = getelementptr i8* %81, i64 %82, !llfi_index !4657
  %84 = add i32 %62, 8, !llfi_index !4658
  store i32 %84, i32* %48, align 16, !llfi_index !4659
  br label %89, !llfi_index !4660

; <label>:85                                      ; preds = %61
  %86 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4661
  %87 = load i8** %86, align 8, !llfi_index !4662
  %88 = getelementptr i8* %87, i64 8, !llfi_index !4663
  store i8* %88, i8** %86, align 8, !llfi_index !4664
  br label %89, !llfi_index !4665

; <label>:89                                      ; preds = %85, %79
  %.in10 = phi i8* [ %83, %79 ], [ %87, %85 ], !llfi_index !4666
  %90 = bitcast i8* %.in10 to i32*, !llfi_index !4667
  %91 = load i32* %90, align 4, !llfi_index !4668
  %92 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 5, !llfi_index !4669
  %93 = sdiv i32 %91, 16777216, !llfi_index !4670
  %94 = trunc i32 %93 to i8, !llfi_index !4671
  store i8 %94, i8* %92, align 1, !tbaa !1251, !llfi_index !4672
  %95 = srem i32 %91, 16777216, !llfi_index !4673
  %96 = sdiv i32 %95, 65536, !llfi_index !4674
  %97 = trunc i32 %96 to i8, !llfi_index !4675
  %98 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 6, !llfi_index !4676
  store i8 %97, i8* %98, align 2, !tbaa !1251, !llfi_index !4677
  %99 = srem i32 %95, 65536, !llfi_index !4678
  %100 = sdiv i32 %99, 256, !llfi_index !4679
  %101 = trunc i32 %100 to i8, !llfi_index !4680
  %102 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 7, !llfi_index !4681
  store i8 %101, i8* %102, align 1, !tbaa !1251, !llfi_index !4682
  %103 = trunc i32 %99 to i8, !llfi_index !4683
  %104 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 8, !llfi_index !4684
  store i8 %103, i8* %104, align 8, !tbaa !1251, !llfi_index !4685
  br label %355, !llfi_index !4686

; <label>:105                                     ; preds = %4
  %106 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !llfi_index !4687
  %107 = load i32* %106, align 16, !llfi_index !4688
  %108 = icmp ult i32 %107, 41, !llfi_index !4689
  br i1 %108, label %109, label %115, !llfi_index !4690

; <label>:109                                     ; preds = %105
  %110 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4691
  %111 = load i8** %110, align 16, !llfi_index !4692
  %112 = sext i32 %107 to i64, !llfi_index !4693
  %113 = getelementptr i8* %111, i64 %112, !llfi_index !4694
  %114 = add i32 %107, 8, !llfi_index !4695
  store i32 %114, i32* %106, align 16, !llfi_index !4696
  br label %119, !llfi_index !4697

; <label>:115                                     ; preds = %105
  %116 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4698
  %117 = load i8** %116, align 8, !llfi_index !4699
  %118 = getelementptr i8* %117, i64 8, !llfi_index !4700
  store i8* %118, i8** %116, align 8, !llfi_index !4701
  br label %119, !llfi_index !4702

; <label>:119                                     ; preds = %115, %109
  %120 = phi i32 [ %114, %109 ], [ %107, %115 ], !llfi_index !4703
  %.in6 = phi i8* [ %113, %109 ], [ %117, %115 ], !llfi_index !4704
  %121 = bitcast i8* %.in6 to i32*, !llfi_index !4705
  %122 = load i32* %121, align 4, !llfi_index !4706
  %123 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 1, !llfi_index !4707
  %124 = sdiv i32 %122, 16777216, !llfi_index !4708
  %125 = trunc i32 %124 to i8, !llfi_index !4709
  store i8 %125, i8* %123, align 1, !tbaa !1251, !llfi_index !4710
  %126 = srem i32 %122, 16777216, !llfi_index !4711
  %127 = sdiv i32 %126, 65536, !llfi_index !4712
  %128 = trunc i32 %127 to i8, !llfi_index !4713
  %129 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 2, !llfi_index !4714
  store i8 %128, i8* %129, align 2, !tbaa !1251, !llfi_index !4715
  %130 = srem i32 %126, 65536, !llfi_index !4716
  %131 = sdiv i32 %130, 256, !llfi_index !4717
  %132 = trunc i32 %131 to i8, !llfi_index !4718
  %133 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 3, !llfi_index !4719
  store i8 %132, i8* %133, align 1, !tbaa !1251, !llfi_index !4720
  %134 = trunc i32 %130 to i8, !llfi_index !4721
  %135 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 4, !llfi_index !4722
  store i8 %134, i8* %135, align 4, !tbaa !1251, !llfi_index !4723
  %136 = icmp ult i32 %120, 41, !llfi_index !4724
  br i1 %136, label %137, label %143, !llfi_index !4725

; <label>:137                                     ; preds = %119
  %138 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4726
  %139 = load i8** %138, align 16, !llfi_index !4727
  %140 = sext i32 %120 to i64, !llfi_index !4728
  %141 = getelementptr i8* %139, i64 %140, !llfi_index !4729
  %142 = add i32 %120, 8, !llfi_index !4730
  store i32 %142, i32* %106, align 16, !llfi_index !4731
  br label %147, !llfi_index !4732

; <label>:143                                     ; preds = %119
  %144 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4733
  %145 = load i8** %144, align 8, !llfi_index !4734
  %146 = getelementptr i8* %145, i64 8, !llfi_index !4735
  store i8* %146, i8** %144, align 8, !llfi_index !4736
  br label %147, !llfi_index !4737

; <label>:147                                     ; preds = %143, %137
  %148 = phi i32 [ %142, %137 ], [ %120, %143 ], !llfi_index !4738
  %.in7 = phi i8* [ %141, %137 ], [ %145, %143 ], !llfi_index !4739
  %149 = bitcast i8* %.in7 to i32*, !llfi_index !4740
  %150 = load i32* %149, align 4, !llfi_index !4741
  %151 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 5, !llfi_index !4742
  %152 = sdiv i32 %150, 16777216, !llfi_index !4743
  %153 = trunc i32 %152 to i8, !llfi_index !4744
  store i8 %153, i8* %151, align 1, !tbaa !1251, !llfi_index !4745
  %154 = srem i32 %150, 16777216, !llfi_index !4746
  %155 = sdiv i32 %154, 65536, !llfi_index !4747
  %156 = trunc i32 %155 to i8, !llfi_index !4748
  %157 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 6, !llfi_index !4749
  store i8 %156, i8* %157, align 2, !tbaa !1251, !llfi_index !4750
  %158 = srem i32 %154, 65536, !llfi_index !4751
  %159 = sdiv i32 %158, 256, !llfi_index !4752
  %160 = trunc i32 %159 to i8, !llfi_index !4753
  %161 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 7, !llfi_index !4754
  store i8 %160, i8* %161, align 1, !tbaa !1251, !llfi_index !4755
  %162 = trunc i32 %158 to i8, !llfi_index !4756
  %163 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 8, !llfi_index !4757
  store i8 %162, i8* %163, align 8, !tbaa !1251, !llfi_index !4758
  %164 = icmp ult i32 %148, 41, !llfi_index !4759
  br i1 %164, label %165, label %171, !llfi_index !4760

; <label>:165                                     ; preds = %147
  %166 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4761
  %167 = load i8** %166, align 16, !llfi_index !4762
  %168 = sext i32 %148 to i64, !llfi_index !4763
  %169 = getelementptr i8* %167, i64 %168, !llfi_index !4764
  %170 = add i32 %148, 8, !llfi_index !4765
  store i32 %170, i32* %106, align 16, !llfi_index !4766
  br label %175, !llfi_index !4767

; <label>:171                                     ; preds = %147
  %172 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4768
  %173 = load i8** %172, align 8, !llfi_index !4769
  %174 = getelementptr i8* %173, i64 8, !llfi_index !4770
  store i8* %174, i8** %172, align 8, !llfi_index !4771
  br label %175, !llfi_index !4772

; <label>:175                                     ; preds = %171, %165
  %.in8 = phi i8* [ %169, %165 ], [ %173, %171 ], !llfi_index !4773
  %176 = bitcast i8* %.in8 to i32*, !llfi_index !4774
  %177 = load i32* %176, align 4, !llfi_index !4775
  %178 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 9, !llfi_index !4776
  %179 = sdiv i32 %177, 16777216, !llfi_index !4777
  %180 = trunc i32 %179 to i8, !llfi_index !4778
  store i8 %180, i8* %178, align 1, !tbaa !1251, !llfi_index !4779
  %181 = srem i32 %177, 16777216, !llfi_index !4780
  %182 = sdiv i32 %181, 65536, !llfi_index !4781
  %183 = trunc i32 %182 to i8, !llfi_index !4782
  %184 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 10, !llfi_index !4783
  store i8 %183, i8* %184, align 2, !tbaa !1251, !llfi_index !4784
  %185 = srem i32 %181, 65536, !llfi_index !4785
  %186 = sdiv i32 %185, 256, !llfi_index !4786
  %187 = trunc i32 %186 to i8, !llfi_index !4787
  %188 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 11, !llfi_index !4788
  store i8 %187, i8* %188, align 1, !tbaa !1251, !llfi_index !4789
  %189 = trunc i32 %185 to i8, !llfi_index !4790
  %190 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 12, !llfi_index !4791
  store i8 %189, i8* %190, align 4, !tbaa !1251, !llfi_index !4792
  br label %355, !llfi_index !4793

; <label>:191                                     ; preds = %4, %4, %4, %4, %4, %4, %4
  %192 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !llfi_index !4794
  %193 = load i32* %192, align 16, !llfi_index !4795
  %194 = icmp ult i32 %193, 41, !llfi_index !4796
  br i1 %194, label %195, label %201, !llfi_index !4797

; <label>:195                                     ; preds = %191
  %196 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4798
  %197 = load i8** %196, align 16, !llfi_index !4799
  %198 = sext i32 %193 to i64, !llfi_index !4800
  %199 = getelementptr i8* %197, i64 %198, !llfi_index !4801
  %200 = add i32 %193, 8, !llfi_index !4802
  store i32 %200, i32* %192, align 16, !llfi_index !4803
  br label %205, !llfi_index !4804

; <label>:201                                     ; preds = %191
  %202 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4805
  %203 = load i8** %202, align 8, !llfi_index !4806
  %204 = getelementptr i8* %203, i64 8, !llfi_index !4807
  store i8* %204, i8** %202, align 8, !llfi_index !4808
  br label %205, !llfi_index !4809

; <label>:205                                     ; preds = %201, %195
  %.in5 = phi i8* [ %199, %195 ], [ %203, %201 ], !llfi_index !4810
  %206 = bitcast i8* %.in5 to i32*, !llfi_index !4811
  %207 = load i32* %206, align 4, !llfi_index !4812
  %208 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 1, !llfi_index !4813
  %209 = sdiv i32 %207, 16777216, !llfi_index !4814
  %210 = trunc i32 %209 to i8, !llfi_index !4815
  store i8 %210, i8* %208, align 1, !tbaa !1251, !llfi_index !4816
  %211 = srem i32 %207, 16777216, !llfi_index !4817
  %212 = sdiv i32 %211, 65536, !llfi_index !4818
  %213 = trunc i32 %212 to i8, !llfi_index !4819
  %214 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 2, !llfi_index !4820
  store i8 %213, i8* %214, align 2, !tbaa !1251, !llfi_index !4821
  %215 = srem i32 %211, 65536, !llfi_index !4822
  %216 = sdiv i32 %215, 256, !llfi_index !4823
  %217 = trunc i32 %216 to i8, !llfi_index !4824
  %218 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 3, !llfi_index !4825
  store i8 %217, i8* %218, align 1, !tbaa !1251, !llfi_index !4826
  %219 = trunc i32 %215 to i8, !llfi_index !4827
  %220 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 4, !llfi_index !4828
  store i8 %219, i8* %220, align 4, !tbaa !1251, !llfi_index !4829
  br label %355, !llfi_index !4830

; <label>:221                                     ; preds = %4, %4, %4, %4, %4
  %222 = bitcast [1 x %struct.__va_list_tag]* %args to i64*, !llfi_index !4831
  %223 = load i64* %222, align 16, !llfi_index !4832
  %224 = trunc i64 %223 to i32, !llfi_index !4833
  %225 = icmp ult i32 %224, 41, !llfi_index !4834
  %226 = lshr i64 %223, 32, !llfi_index !4835
  %227 = trunc i64 %226 to i32, !llfi_index !4836
  br i1 %225, label %228, label %235, !llfi_index !4837

; <label>:228                                     ; preds = %221
  %229 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !llfi_index !4838
  %230 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4839
  %231 = load i8** %230, align 16, !llfi_index !4840
  %sext16 = shl i64 %223, 32, !llfi_index !4841
  %232 = ashr exact i64 %sext16, 32, !llfi_index !4842
  %233 = getelementptr i8* %231, i64 %232, !llfi_index !4843
  %234 = add i32 %224, 8, !llfi_index !4844
  store i32 %234, i32* %229, align 16, !llfi_index !4845
  br label %239, !llfi_index !4846

; <label>:235                                     ; preds = %221
  %236 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4847
  %237 = load i8** %236, align 8, !llfi_index !4848
  %238 = getelementptr i8* %237, i64 8, !llfi_index !4849
  store i8* %238, i8** %236, align 8, !llfi_index !4850
  br label %239, !llfi_index !4851

; <label>:239                                     ; preds = %235, %228
  %.in3 = phi i8* [ %233, %228 ], [ %237, %235 ], !llfi_index !4852
  %240 = bitcast i8* %.in3 to i32*, !llfi_index !4853
  %241 = load i32* %240, align 4, !llfi_index !4854
  %242 = icmp ult i32 %227, 161, !llfi_index !4855
  br i1 %242, label %243, label %250, !llfi_index !4856

; <label>:243                                     ; preds = %239
  %244 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 1, !llfi_index !4857
  %245 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4858
  %246 = load i8** %245, align 16, !llfi_index !4859
  %247 = ashr i64 %223, 32, !llfi_index !4860
  %248 = getelementptr i8* %246, i64 %247, !llfi_index !4861
  %249 = add i32 %227, 16, !llfi_index !4862
  store i32 %249, i32* %244, align 4, !llfi_index !4863
  br label %254, !llfi_index !4864

; <label>:250                                     ; preds = %239
  %251 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4865
  %252 = load i8** %251, align 8, !llfi_index !4866
  %253 = getelementptr i8* %252, i64 8, !llfi_index !4867
  store i8* %253, i8** %251, align 8, !llfi_index !4868
  br label %254, !llfi_index !4869

; <label>:254                                     ; preds = %250, %243
  %.in4 = phi i8* [ %248, %243 ], [ %252, %250 ], !llfi_index !4870
  %255 = bitcast i8* %.in4 to double*, !llfi_index !4871
  %256 = load double* %255, align 8, !llfi_index !4872
  %257 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 1, !llfi_index !4873
  %258 = sdiv i32 %241, 16777216, !llfi_index !4874
  %259 = trunc i32 %258 to i8, !llfi_index !4875
  store i8 %259, i8* %257, align 1, !tbaa !1251, !llfi_index !4876
  %260 = srem i32 %241, 16777216, !llfi_index !4877
  %261 = sdiv i32 %260, 65536, !llfi_index !4878
  %262 = trunc i32 %261 to i8, !llfi_index !4879
  %263 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 2, !llfi_index !4880
  store i8 %262, i8* %263, align 2, !tbaa !1251, !llfi_index !4881
  %264 = srem i32 %260, 65536, !llfi_index !4882
  %265 = sdiv i32 %264, 256, !llfi_index !4883
  %266 = trunc i32 %265 to i8, !llfi_index !4884
  %267 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 3, !llfi_index !4885
  store i8 %266, i8* %267, align 1, !tbaa !1251, !llfi_index !4886
  %268 = trunc i32 %264 to i8, !llfi_index !4887
  %269 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 4, !llfi_index !4888
  store i8 %268, i8* %269, align 4, !tbaa !1251, !llfi_index !4889
  %270 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 5, !llfi_index !4890
  %271 = bitcast double %256 to i64, !llfi_index !4891
  %272 = bitcast i8* %270 to i64*, !llfi_index !4892
  store i64 %271, i64* %272, align 1, !llfi_index !4893
  br label %355, !llfi_index !4894

; <label>:273                                     ; preds = %4
  %274 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !llfi_index !4895
  %275 = bitcast [1 x %struct.__va_list_tag]* %args to i64*, !llfi_index !4896
  %276 = load i64* %275, align 16, !llfi_index !4897
  %277 = trunc i64 %276 to i32, !llfi_index !4898
  %278 = icmp ult i32 %277, 41, !llfi_index !4899
  %279 = lshr i64 %276, 32, !llfi_index !4900
  %280 = trunc i64 %279 to i32, !llfi_index !4901
  br i1 %278, label %281, label %287, !llfi_index !4902

; <label>:281                                     ; preds = %273
  %282 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4903
  %283 = load i8** %282, align 16, !llfi_index !4904
  %sext = shl i64 %276, 32, !llfi_index !4905
  %284 = ashr exact i64 %sext, 32, !llfi_index !4906
  %285 = getelementptr i8* %283, i64 %284, !llfi_index !4907
  %286 = add i32 %277, 8, !llfi_index !4908
  store i32 %286, i32* %274, align 16, !llfi_index !4909
  br label %291, !llfi_index !4910

; <label>:287                                     ; preds = %273
  %288 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4911
  %289 = load i8** %288, align 8, !llfi_index !4912
  %290 = getelementptr i8* %289, i64 8, !llfi_index !4913
  store i8* %290, i8** %288, align 8, !llfi_index !4914
  br label %291, !llfi_index !4915

; <label>:291                                     ; preds = %287, %281
  %292 = phi i32 [ %286, %281 ], [ %277, %287 ], !llfi_index !4916
  %.in = phi i8* [ %285, %281 ], [ %289, %287 ], !llfi_index !4917
  %293 = bitcast i8* %.in to i32*, !llfi_index !4918
  %294 = load i32* %293, align 4, !llfi_index !4919
  %295 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 1, !llfi_index !4920
  %296 = sdiv i32 %294, 16777216, !llfi_index !4921
  %297 = trunc i32 %296 to i8, !llfi_index !4922
  store i8 %297, i8* %295, align 1, !tbaa !1251, !llfi_index !4923
  %298 = srem i32 %294, 16777216, !llfi_index !4924
  %299 = sdiv i32 %298, 65536, !llfi_index !4925
  %300 = trunc i32 %299 to i8, !llfi_index !4926
  %301 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 2, !llfi_index !4927
  store i8 %300, i8* %301, align 2, !tbaa !1251, !llfi_index !4928
  %302 = srem i32 %298, 65536, !llfi_index !4929
  %303 = sdiv i32 %302, 256, !llfi_index !4930
  %304 = trunc i32 %303 to i8, !llfi_index !4931
  %305 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 3, !llfi_index !4932
  store i8 %304, i8* %305, align 1, !tbaa !1251, !llfi_index !4933
  %306 = trunc i32 %302 to i8, !llfi_index !4934
  %307 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 4, !llfi_index !4935
  store i8 %306, i8* %307, align 4, !tbaa !1251, !llfi_index !4936
  %308 = icmp ult i32 %292, 41, !llfi_index !4937
  br i1 %308, label %309, label %315, !llfi_index !4938

; <label>:309                                     ; preds = %291
  %310 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4939
  %311 = load i8** %310, align 16, !llfi_index !4940
  %312 = sext i32 %292 to i64, !llfi_index !4941
  %313 = getelementptr i8* %311, i64 %312, !llfi_index !4942
  %314 = add i32 %292, 8, !llfi_index !4943
  store i32 %314, i32* %274, align 16, !llfi_index !4944
  br label %319, !llfi_index !4945

; <label>:315                                     ; preds = %291
  %316 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4946
  %317 = load i8** %316, align 8, !llfi_index !4947
  %318 = getelementptr i8* %317, i64 8, !llfi_index !4948
  store i8* %318, i8** %316, align 8, !llfi_index !4949
  br label %319, !llfi_index !4950

; <label>:319                                     ; preds = %315, %309
  %.in1 = phi i8* [ %313, %309 ], [ %317, %315 ], !llfi_index !4951
  %320 = bitcast i8* %.in1 to i32*, !llfi_index !4952
  %321 = load i32* %320, align 4, !llfi_index !4953
  %322 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 5, !llfi_index !4954
  %323 = sdiv i32 %321, 16777216, !llfi_index !4955
  %324 = trunc i32 %323 to i8, !llfi_index !4956
  store i8 %324, i8* %322, align 1, !tbaa !1251, !llfi_index !4957
  %325 = srem i32 %321, 16777216, !llfi_index !4958
  %326 = sdiv i32 %325, 65536, !llfi_index !4959
  %327 = trunc i32 %326 to i8, !llfi_index !4960
  %328 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 6, !llfi_index !4961
  store i8 %327, i8* %328, align 2, !tbaa !1251, !llfi_index !4962
  %329 = srem i32 %325, 65536, !llfi_index !4963
  %330 = sdiv i32 %329, 256, !llfi_index !4964
  %331 = trunc i32 %330 to i8, !llfi_index !4965
  %332 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 7, !llfi_index !4966
  store i8 %331, i8* %332, align 1, !tbaa !1251, !llfi_index !4967
  %333 = trunc i32 %329 to i8, !llfi_index !4968
  %334 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 8, !llfi_index !4969
  store i8 %333, i8* %334, align 8, !tbaa !1251, !llfi_index !4970
  %335 = icmp ult i32 %280, 161, !llfi_index !4971
  br i1 %335, label %336, label %343, !llfi_index !4972

; <label>:336                                     ; preds = %319
  %337 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 1, !llfi_index !4973
  %338 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4974
  %339 = load i8** %338, align 16, !llfi_index !4975
  %340 = ashr i64 %276, 32, !llfi_index !4976
  %341 = getelementptr i8* %339, i64 %340, !llfi_index !4977
  %342 = add i32 %280, 16, !llfi_index !4978
  store i32 %342, i32* %337, align 4, !llfi_index !4979
  br label %347, !llfi_index !4980

; <label>:343                                     ; preds = %319
  %344 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4981
  %345 = load i8** %344, align 8, !llfi_index !4982
  %346 = getelementptr i8* %345, i64 8, !llfi_index !4983
  store i8* %346, i8** %344, align 8, !llfi_index !4984
  br label %347, !llfi_index !4985

; <label>:347                                     ; preds = %343, %336
  %.in2 = phi i8* [ %341, %336 ], [ %345, %343 ], !llfi_index !4986
  %348 = bitcast i8* %.in2 to double*, !llfi_index !4987
  %349 = load double* %348, align 8, !llfi_index !4988
  %350 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 9, !llfi_index !4989
  %351 = bitcast double %349 to i64, !llfi_index !4990
  %352 = bitcast i8* %350 to i64*, !llfi_index !4991
  store i64 %351, i64* %352, align 1, !llfi_index !4992
  br label %355, !llfi_index !4993

; <label>:353                                     ; preds = %4
  %354 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str157, i64 0, i64 0), i32 %6) #3, !llfi_index !4994
  call void @exit(i32 1) #8, !llfi_index !4995
  unreachable, !llfi_index !4996

; <label>:355                                     ; preds = %347, %254, %205, %175, %89, %21, %4, %4
  %size.0 = phi i32 [ 17, %347 ], [ 13, %254 ], [ 5, %205 ], [ 13, %175 ], [ 9, %89 ], [ 9, %21 ], [ 1, %4 ], [ 1, %4 ], !llfi_index !4997
  %356 = load i64* @position, align 8, !tbaa !3910, !llfi_index !4998
  %357 = zext i32 %size.0 to i64, !llfi_index !4999
  %358 = add i64 %356, %357, !llfi_index !5000
  %359 = lshr i64 %358, 16, !llfi_index !5001
  %360 = lshr i64 %356, 16, !llfi_index !5002
  %361 = icmp ugt i64 %359, %360, !llfi_index !5003
  br i1 %361, label %362, label %.preheader, !llfi_index !5004

; <label>:362                                     ; preds = %355
  %363 = load i64* @allocated, align 8, !tbaa !3910, !llfi_index !5005
  %364 = add i64 %363, 1, !llfi_index !5006
  store i64 %364, i64* @allocated, align 8, !tbaa !3910, !llfi_index !5007
  %365 = load i8** @objcode, align 8, !tbaa !358, !llfi_index !5008
  %366 = shl i64 %364, 16, !llfi_index !5009
  %367 = call i8* @realloc(i8* %365, i64 %366) #3, !llfi_index !5010
  store i8* %367, i8** @objcode, align 8, !tbaa !358, !llfi_index !5011
  %368 = icmp eq i8* %367, null, !llfi_index !5012
  br i1 %368, label %369, label %370, !llfi_index !5013

; <label>:369                                     ; preds = %362
  %puts = call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str8, i64 0, i64 0)), !llfi_index !5014
  call void @exit(i32 1) #8, !llfi_index !5015
  unreachable, !llfi_index !5016

; <label>:370                                     ; preds = %362
  %371 = call i64 @quantum_memman(i64 65536) #3, !llfi_index !5017
  %.pre.pre = load i64* @position, align 8, !tbaa !3910, !llfi_index !5018
  br label %.preheader, !llfi_index !5019

.preheader:                                       ; preds = %.preheader, %370, %355
  %372 = phi i64 [ %378, %.preheader ], [ %356, %355 ], [ %.pre.pre, %370 ], !llfi_index !5020
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %370 ], [ 0, %355 ], !llfi_index !5021
  %373 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 %indvars.iv, !llfi_index !5022
  %374 = load i8* %373, align 1, !tbaa !1251, !llfi_index !5023
  %375 = load i8** @objcode, align 8, !tbaa !358, !llfi_index !5024
  %376 = getelementptr inbounds i8* %375, i64 %372, !llfi_index !5025
  store i8 %374, i8* %376, align 1, !tbaa !1251, !llfi_index !5026
  %377 = load i64* @position, align 8, !tbaa !3910, !llfi_index !5027
  %378 = add i64 %377, 1, !llfi_index !5028
  store i64 %378, i64* @position, align 8, !tbaa !3910, !llfi_index !5029
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !5030
  %379 = trunc i64 %indvars.iv.next to i32, !llfi_index !5031
  %380 = icmp slt i32 %379, %size.0, !llfi_index !5032
  br i1 %380, label %.preheader, label %.loopexit, !llfi_index !5033

.loopexit:                                        ; preds = %.preheader, %0
  %.0 = phi i32 [ 0, %0 ], [ 1, %.preheader ], !llfi_index !5034
  call void @llvm.lifetime.end(i64 80, i8* %1) #3, !llfi_index !5035
  ret i32 %.0, !llfi_index !5036
}

; Function Attrs: nounwind uwtable
define i32 @quantum_objcode_write(i8* readonly %file) #0 {
  %1 = load i32* @opstatus, align 4, !tbaa !1, !llfi_index !5037
  %2 = icmp eq i32 %1, 0, !llfi_index !5038
  br i1 %2, label %3, label %6, !llfi_index !5039

; <label>:3                                       ; preds = %0
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !358, !llfi_index !5040
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([74 x i8]* @.str358, i64 0, i64 0), i64 73, i64 1, %struct._IO_FILE* %4) #10, !llfi_index !5041
  br label %16, !llfi_index !5042

; <label>:6                                       ; preds = %0
  %7 = icmp eq i8* %file, null, !llfi_index !5043
  %8 = load i8** @globalfile, align 8, !tbaa !358, !llfi_index !5044
  %.file = select i1 %7, i8* %8, i8* %file, !llfi_index !5045
  %9 = tail call %struct._IO_FILE* @fopen(i8* %.file, i8* getelementptr inbounds ([2 x i8]* @.str459, i64 0, i64 0)) #3, !llfi_index !5046
  %10 = icmp eq %struct._IO_FILE* %9, null, !llfi_index !5047
  br i1 %10, label %16, label %11, !llfi_index !5048

; <label>:11                                      ; preds = %6
  %12 = load i8** @objcode, align 8, !tbaa !358, !llfi_index !5049
  %13 = load i64* @position, align 8, !tbaa !3910, !llfi_index !5050
  %14 = tail call i64 @fwrite(i8* %12, i64 %13, i64 1, %struct._IO_FILE* %9) #3, !llfi_index !5051
  %15 = tail call i32 @fclose(%struct._IO_FILE* %9) #3, !llfi_index !5052
  br label %16, !llfi_index !5053

; <label>:16                                      ; preds = %11, %6, %3
  %.0 = phi i32 [ 0, %11 ], [ 1, %3 ], [ -1, %6 ], !llfi_index !5054
  ret i32 %.0, !llfi_index !5055
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind uwtable
define void @quantum_objcode_file(i8* %file) #0 {
  store i8* %file, i8** @globalfile, align 8, !tbaa !358, !llfi_index !5056
  ret void, !llfi_index !5057
}

; Function Attrs: nounwind uwtable
define void @quantum_objcode_exit(i8* nocapture readnone %file) #0 {
  %1 = load i32* @opstatus, align 4, !tbaa !1, !llfi_index !5058
  %2 = icmp eq i32 %1, 0, !llfi_index !5059
  br i1 %2, label %3, label %6, !llfi_index !5060

; <label>:3                                       ; preds = %0
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !358, !llfi_index !5061
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([74 x i8]* @.str358, i64 0, i64 0), i64 73, i64 1, %struct._IO_FILE* %4) #10, !llfi_index !5062
  br label %quantum_objcode_write.exit, !llfi_index !5063

; <label>:6                                       ; preds = %0
  %7 = load i8** @globalfile, align 8, !tbaa !358, !llfi_index !5064
  %8 = tail call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8]* @.str459, i64 0, i64 0)) #3, !llfi_index !5065
  %9 = icmp eq %struct._IO_FILE* %8, null, !llfi_index !5066
  br i1 %9, label %quantum_objcode_write.exit, label %10, !llfi_index !5067

; <label>:10                                      ; preds = %6
  %11 = load i8** @objcode, align 8, !tbaa !358, !llfi_index !5068
  %12 = load i64* @position, align 8, !tbaa !3910, !llfi_index !5069
  %13 = tail call i64 @fwrite(i8* %11, i64 %12, i64 1, %struct._IO_FILE* %8) #3, !llfi_index !5070
  %14 = tail call i32 @fclose(%struct._IO_FILE* %8) #3, !llfi_index !5071
  br label %quantum_objcode_write.exit, !llfi_index !5072

quantum_objcode_write.exit:                       ; preds = %10, %6, %3
  store i32 0, i32* @opstatus, align 4, !tbaa !1, !llfi_index !5073
  %15 = load i8** @objcode, align 8, !tbaa !358, !llfi_index !5074
  tail call void @free(i8* %15) #3, !llfi_index !5075
  store i8* null, i8** @objcode, align 8, !tbaa !358, !llfi_index !5076
  %16 = load i64* @allocated, align 8, !tbaa !3910, !llfi_index !5077
  %17 = sub i64 0, %16, !llfi_index !5078
  %18 = shl i64 %17, 16, !llfi_index !5079
  %19 = tail call i64 @quantum_memman(i64 %18) #3, !llfi_index !5080
  store i64 0, i64* @allocated, align 8, !tbaa !3910, !llfi_index !5081
  ret void, !llfi_index !5082
}

; Function Attrs: nounwind uwtable
define void @quantum_objcode_run(i8* %file, %struct.quantum_reg_struct* %reg) #0 {
  %buf = alloca [80 x i8], align 16, !llfi_index !5083
  %buf5 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 0, !llfi_index !5084
  %1 = alloca %struct.quantum_reg_struct, align 8, !llfi_index !5085
  %2 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 0, !llfi_index !5086
  call void @llvm.lifetime.start(i64 80, i8* %2) #3, !llfi_index !5087
  %3 = call %struct._IO_FILE* @fopen(i8* %file, i8* getelementptr inbounds ([2 x i8]* @.str560, i64 0, i64 0)) #3, !llfi_index !5088
  %4 = icmp eq %struct._IO_FILE* %3, null, !llfi_index !5089
  br i1 %4, label %17, label %.preheader2, !llfi_index !5090

.preheader2:                                      ; preds = %0
  %5 = call i32 @feof(%struct._IO_FILE* %3) #3, !llfi_index !5091
  %6 = icmp eq i32 %5, 0, !llfi_index !5092
  br i1 %6, label %.preheader.lr.ph, label %._crit_edge, !llfi_index !5093

.preheader.lr.ph:                                 ; preds = %.preheader2
  %7 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 7, !llfi_index !5094
  %8 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 6, !llfi_index !5095
  %9 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 5, !llfi_index !5096
  %10 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 4, !llfi_index !5097
  %11 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 3, !llfi_index !5098
  %12 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 2, !llfi_index !5099
  %13 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 1, !llfi_index !5100
  %14 = bitcast %struct.quantum_reg_struct* %reg to i8*, !llfi_index !5101
  %15 = bitcast %struct.quantum_reg_struct* %1 to i8*, !llfi_index !5102
  %16 = bitcast [80 x i8]* %buf to double*, !llfi_index !5103
  br label %.preheader, !llfi_index !5104

; <label>:17                                      ; preds = %0
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !358, !llfi_index !5105
  %19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([41 x i8]* @.str661, i64 0, i64 0), i8* %file) #10, !llfi_index !5106
  call void @perror(i8* null) #10, !llfi_index !5107
  br label %230, !llfi_index !5108

.preheader:                                       ; preds = %225, %.preheader.lr.ph
  %i.04 = phi i32 [ 0, %.preheader.lr.ph ], [ %226, %225 ], !llfi_index !5109
  call void @llvm.memset.p0i8.i64(i8* %buf5, i8 0, i64 80, i32 16, i1 false), !llfi_index !5110
  %20 = call i32 @fgetc(%struct._IO_FILE* %3) #3, !llfi_index !5111
  %21 = and i32 %20, 255, !llfi_index !5112
  switch i32 %21, label %222 [
    i32 0, label %22
    i32 1, label %54
    i32 12, label %54
    i32 2, label %87
    i32 3, label %133
    i32 4, label %133
    i32 5, label %133
    i32 6, label %133
    i32 129, label %133
    i32 130, label %133
    i32 14, label %133
    i32 7, label %158
    i32 8, label %158
    i32 9, label %158
    i32 10, label %158
    i32 11, label %158
    i32 13, label %186
    i32 128, label %220
    i32 255, label %225
  ], !llfi_index !5113

; <label>:22                                      ; preds = %.preheader
  %23 = call i64 @fread(i8* %2, i64 8, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !5114
  %24 = load i8* %7, align 1, !tbaa !1251, !llfi_index !5115
  %25 = zext i8 %24 to i64, !llfi_index !5116
  %26 = load i8* %8, align 2, !tbaa !1251, !llfi_index !5117
  %27 = zext i8 %26 to i64, !llfi_index !5118
  %28 = shl nuw nsw i64 %27, 8, !llfi_index !5119
  %29 = or i64 %28, %25, !llfi_index !5120
  %30 = load i8* %9, align 1, !tbaa !1251, !llfi_index !5121
  %31 = zext i8 %30 to i64, !llfi_index !5122
  %32 = shl nuw nsw i64 %31, 16, !llfi_index !5123
  %33 = or i64 %29, %32, !llfi_index !5124
  %34 = load i8* %10, align 4, !tbaa !1251, !llfi_index !5125
  %35 = zext i8 %34 to i64, !llfi_index !5126
  %36 = shl nuw nsw i64 %35, 24, !llfi_index !5127
  %37 = or i64 %33, %36, !llfi_index !5128
  %38 = load i8* %11, align 1, !tbaa !1251, !llfi_index !5129
  %39 = zext i8 %38 to i64, !llfi_index !5130
  %40 = shl nuw nsw i64 %39, 32, !llfi_index !5131
  %41 = or i64 %37, %40, !llfi_index !5132
  %42 = load i8* %12, align 2, !tbaa !1251, !llfi_index !5133
  %43 = zext i8 %42 to i64, !llfi_index !5134
  %44 = shl nuw nsw i64 %43, 40, !llfi_index !5135
  %45 = or i64 %41, %44, !llfi_index !5136
  %46 = load i8* %13, align 1, !tbaa !1251, !llfi_index !5137
  %47 = zext i8 %46 to i64, !llfi_index !5138
  %48 = shl nuw nsw i64 %47, 48, !llfi_index !5139
  %49 = add i64 %48, %45, !llfi_index !5140
  %50 = load i8* %2, align 16, !tbaa !1251, !llfi_index !5141
  %51 = zext i8 %50 to i64, !llfi_index !5142
  %52 = shl nuw i64 %51, 56, !llfi_index !5143
  %53 = add i64 %49, %52, !llfi_index !5144
  call void @quantum_new_qureg(%struct.quantum_reg_struct* sret %1, i64 %53, i32 12) #3, !llfi_index !5145
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false), !tbaa.struct !4222, !llfi_index !5146
  br label %225, !llfi_index !5147

; <label>:54                                      ; preds = %.preheader, %.preheader
  %55 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !5148
  %56 = load i8* %11, align 1, !tbaa !1251, !llfi_index !5149
  %57 = zext i8 %56 to i32, !llfi_index !5150
  %58 = load i8* %12, align 2, !tbaa !1251, !llfi_index !5151
  %59 = zext i8 %58 to i32, !llfi_index !5152
  %60 = shl nuw nsw i32 %59, 8, !llfi_index !5153
  %61 = or i32 %60, %57, !llfi_index !5154
  %62 = load i8* %13, align 1, !tbaa !1251, !llfi_index !5155
  %63 = zext i8 %62 to i32, !llfi_index !5156
  %64 = shl nuw nsw i32 %63, 16, !llfi_index !5157
  %65 = or i32 %61, %64, !llfi_index !5158
  %66 = load i8* %2, align 16, !tbaa !1251, !llfi_index !5159
  %67 = zext i8 %66 to i32, !llfi_index !5160
  %68 = shl nuw i32 %67, 24, !llfi_index !5161
  %69 = or i32 %65, %68, !llfi_index !5162
  %70 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !5163
  %71 = load i8* %11, align 1, !tbaa !1251, !llfi_index !5164
  %72 = zext i8 %71 to i32, !llfi_index !5165
  %73 = load i8* %12, align 2, !tbaa !1251, !llfi_index !5166
  %74 = zext i8 %73 to i32, !llfi_index !5167
  %75 = shl nuw nsw i32 %74, 8, !llfi_index !5168
  %76 = or i32 %75, %72, !llfi_index !5169
  %77 = load i8* %13, align 1, !tbaa !1251, !llfi_index !5170
  %78 = zext i8 %77 to i32, !llfi_index !5171
  %79 = shl nuw nsw i32 %78, 16, !llfi_index !5172
  %80 = or i32 %76, %79, !llfi_index !5173
  %81 = load i8* %2, align 16, !tbaa !1251, !llfi_index !5174
  %82 = zext i8 %81 to i32, !llfi_index !5175
  %83 = shl nuw i32 %82, 24, !llfi_index !5176
  %84 = or i32 %80, %83, !llfi_index !5177
  switch i32 %21, label %225 [
    i32 1, label %85
    i32 12, label %86
  ], !llfi_index !5178

; <label>:85                                      ; preds = %54
  call void @quantum_cnot(i32 %69, i32 %84, %struct.quantum_reg_struct* %reg) #3, !llfi_index !5179
  br label %225, !llfi_index !5180

; <label>:86                                      ; preds = %54
  call void @quantum_cond_phase(i32 %69, i32 %84, %struct.quantum_reg_struct* %reg) #3, !llfi_index !5181
  br label %225, !llfi_index !5182

; <label>:87                                      ; preds = %.preheader
  %88 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !5183
  %89 = load i8* %11, align 1, !tbaa !1251, !llfi_index !5184
  %90 = zext i8 %89 to i32, !llfi_index !5185
  %91 = load i8* %12, align 2, !tbaa !1251, !llfi_index !5186
  %92 = zext i8 %91 to i32, !llfi_index !5187
  %93 = shl nuw nsw i32 %92, 8, !llfi_index !5188
  %94 = or i32 %93, %90, !llfi_index !5189
  %95 = load i8* %13, align 1, !tbaa !1251, !llfi_index !5190
  %96 = zext i8 %95 to i32, !llfi_index !5191
  %97 = shl nuw nsw i32 %96, 16, !llfi_index !5192
  %98 = or i32 %94, %97, !llfi_index !5193
  %99 = load i8* %2, align 16, !tbaa !1251, !llfi_index !5194
  %100 = zext i8 %99 to i32, !llfi_index !5195
  %101 = shl nuw i32 %100, 24, !llfi_index !5196
  %102 = or i32 %98, %101, !llfi_index !5197
  %103 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !5198
  %104 = load i8* %11, align 1, !tbaa !1251, !llfi_index !5199
  %105 = zext i8 %104 to i32, !llfi_index !5200
  %106 = load i8* %12, align 2, !tbaa !1251, !llfi_index !5201
  %107 = zext i8 %106 to i32, !llfi_index !5202
  %108 = shl nuw nsw i32 %107, 8, !llfi_index !5203
  %109 = or i32 %108, %105, !llfi_index !5204
  %110 = load i8* %13, align 1, !tbaa !1251, !llfi_index !5205
  %111 = zext i8 %110 to i32, !llfi_index !5206
  %112 = shl nuw nsw i32 %111, 16, !llfi_index !5207
  %113 = or i32 %109, %112, !llfi_index !5208
  %114 = load i8* %2, align 16, !tbaa !1251, !llfi_index !5209
  %115 = zext i8 %114 to i32, !llfi_index !5210
  %116 = shl nuw i32 %115, 24, !llfi_index !5211
  %117 = or i32 %113, %116, !llfi_index !5212
  %118 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !5213
  %119 = load i8* %11, align 1, !tbaa !1251, !llfi_index !5214
  %120 = zext i8 %119 to i32, !llfi_index !5215
  %121 = load i8* %12, align 2, !tbaa !1251, !llfi_index !5216
  %122 = zext i8 %121 to i32, !llfi_index !5217
  %123 = shl nuw nsw i32 %122, 8, !llfi_index !5218
  %124 = or i32 %123, %120, !llfi_index !5219
  %125 = load i8* %13, align 1, !tbaa !1251, !llfi_index !5220
  %126 = zext i8 %125 to i32, !llfi_index !5221
  %127 = shl nuw nsw i32 %126, 16, !llfi_index !5222
  %128 = or i32 %124, %127, !llfi_index !5223
  %129 = load i8* %2, align 16, !tbaa !1251, !llfi_index !5224
  %130 = zext i8 %129 to i32, !llfi_index !5225
  %131 = shl nuw i32 %130, 24, !llfi_index !5226
  %132 = or i32 %128, %131, !llfi_index !5227
  call void @quantum_toffoli(i32 %102, i32 %117, i32 %132, %struct.quantum_reg_struct* %reg) #3, !llfi_index !5228
  br label %225, !llfi_index !5229

; <label>:133                                     ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %134 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !5230
  %135 = load i8* %11, align 1, !tbaa !1251, !llfi_index !5231
  %136 = zext i8 %135 to i32, !llfi_index !5232
  %137 = load i8* %12, align 2, !tbaa !1251, !llfi_index !5233
  %138 = zext i8 %137 to i32, !llfi_index !5234
  %139 = shl nuw nsw i32 %138, 8, !llfi_index !5235
  %140 = or i32 %139, %136, !llfi_index !5236
  %141 = load i8* %13, align 1, !tbaa !1251, !llfi_index !5237
  %142 = zext i8 %141 to i32, !llfi_index !5238
  %143 = shl nuw nsw i32 %142, 16, !llfi_index !5239
  %144 = or i32 %140, %143, !llfi_index !5240
  %145 = load i8* %2, align 16, !tbaa !1251, !llfi_index !5241
  %146 = zext i8 %145 to i32, !llfi_index !5242
  %147 = shl nuw i32 %146, 24, !llfi_index !5243
  %148 = or i32 %144, %147, !llfi_index !5244
  switch i32 %21, label %225 [
    i32 3, label %149
    i32 4, label %150
    i32 5, label %151
    i32 6, label %152
    i32 129, label %153
    i32 130, label %155
    i32 14, label %157
  ], !llfi_index !5245

; <label>:149                                     ; preds = %133
  call void @quantum_sigma_x(i32 %148, %struct.quantum_reg_struct* %reg) #3, !llfi_index !5246
  br label %225, !llfi_index !5247

; <label>:150                                     ; preds = %133
  call void @quantum_sigma_y(i32 %148, %struct.quantum_reg_struct* %reg) #3, !llfi_index !5248
  br label %225, !llfi_index !5249

; <label>:151                                     ; preds = %133
  call void @quantum_sigma_z(i32 %148, %struct.quantum_reg_struct* %reg) #3, !llfi_index !5250
  br label %225, !llfi_index !5251

; <label>:152                                     ; preds = %133
  call void @quantum_hadamard(i32 %148, %struct.quantum_reg_struct* %reg) #3, !llfi_index !5252
  br label %225, !llfi_index !5253

; <label>:153                                     ; preds = %133
  %154 = call i32 @quantum_bmeasure(i32 %148, %struct.quantum_reg_struct* %reg) #3, !llfi_index !5254
  br label %225, !llfi_index !5255

; <label>:155                                     ; preds = %133
  %156 = call i32 @quantum_bmeasure_bitpreserve(i32 %148, %struct.quantum_reg_struct* %reg) #3, !llfi_index !5256
  br label %225, !llfi_index !5257

; <label>:157                                     ; preds = %133
  call void @quantum_swaptheleads(i32 %148, %struct.quantum_reg_struct* %reg) #3, !llfi_index !5258
  br label %225, !llfi_index !5259

; <label>:158                                     ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %159 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !5260
  %160 = load i8* %11, align 1, !tbaa !1251, !llfi_index !5261
  %161 = zext i8 %160 to i32, !llfi_index !5262
  %162 = load i8* %12, align 2, !tbaa !1251, !llfi_index !5263
  %163 = zext i8 %162 to i32, !llfi_index !5264
  %164 = shl nuw nsw i32 %163, 8, !llfi_index !5265
  %165 = or i32 %164, %161, !llfi_index !5266
  %166 = load i8* %13, align 1, !tbaa !1251, !llfi_index !5267
  %167 = zext i8 %166 to i32, !llfi_index !5268
  %168 = shl nuw nsw i32 %167, 16, !llfi_index !5269
  %169 = or i32 %165, %168, !llfi_index !5270
  %170 = load i8* %2, align 16, !tbaa !1251, !llfi_index !5271
  %171 = zext i8 %170 to i32, !llfi_index !5272
  %172 = shl nuw i32 %171, 24, !llfi_index !5273
  %173 = or i32 %169, %172, !llfi_index !5274
  %174 = call i64 @fread(i8* %2, i64 8, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !5275
  %175 = load double* %16, align 16, !tbaa !4464, !llfi_index !5276
  switch i32 %21, label %225 [
    i32 7, label %176
    i32 8, label %178
    i32 9, label %180
    i32 10, label %182
    i32 11, label %184
  ], !llfi_index !5277

; <label>:176                                     ; preds = %158
  %177 = fptrunc double %175 to float, !llfi_index !5278
  call void @quantum_r_x(i32 %173, float %177, %struct.quantum_reg_struct* %reg) #3, !llfi_index !5279
  br label %225, !llfi_index !5280

; <label>:178                                     ; preds = %158
  %179 = fptrunc double %175 to float, !llfi_index !5281
  call void @quantum_r_y(i32 %173, float %179, %struct.quantum_reg_struct* %reg) #3, !llfi_index !5282
  br label %225, !llfi_index !5283

; <label>:180                                     ; preds = %158
  %181 = fptrunc double %175 to float, !llfi_index !5284
  call void @quantum_r_z(i32 %173, float %181, %struct.quantum_reg_struct* %reg) #3, !llfi_index !5285
  br label %225, !llfi_index !5286

; <label>:182                                     ; preds = %158
  %183 = fptrunc double %175 to float, !llfi_index !5287
  call void @quantum_phase_kick(i32 %173, float %183, %struct.quantum_reg_struct* %reg) #3, !llfi_index !5288
  br label %225, !llfi_index !5289

; <label>:184                                     ; preds = %158
  %185 = fptrunc double %175 to float, !llfi_index !5290
  call void @quantum_phase_scale(i32 %173, float %185, %struct.quantum_reg_struct* %reg) #3, !llfi_index !5291
  br label %225, !llfi_index !5292

; <label>:186                                     ; preds = %.preheader
  %187 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !5293
  %188 = load i8* %11, align 1, !tbaa !1251, !llfi_index !5294
  %189 = zext i8 %188 to i32, !llfi_index !5295
  %190 = load i8* %12, align 2, !tbaa !1251, !llfi_index !5296
  %191 = zext i8 %190 to i32, !llfi_index !5297
  %192 = shl nuw nsw i32 %191, 8, !llfi_index !5298
  %193 = or i32 %192, %189, !llfi_index !5299
  %194 = load i8* %13, align 1, !tbaa !1251, !llfi_index !5300
  %195 = zext i8 %194 to i32, !llfi_index !5301
  %196 = shl nuw nsw i32 %195, 16, !llfi_index !5302
  %197 = or i32 %193, %196, !llfi_index !5303
  %198 = load i8* %2, align 16, !tbaa !1251, !llfi_index !5304
  %199 = zext i8 %198 to i32, !llfi_index !5305
  %200 = shl nuw i32 %199, 24, !llfi_index !5306
  %201 = or i32 %197, %200, !llfi_index !5307
  %202 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !5308
  %203 = load i8* %11, align 1, !tbaa !1251, !llfi_index !5309
  %204 = zext i8 %203 to i32, !llfi_index !5310
  %205 = load i8* %12, align 2, !tbaa !1251, !llfi_index !5311
  %206 = zext i8 %205 to i32, !llfi_index !5312
  %207 = shl nuw nsw i32 %206, 8, !llfi_index !5313
  %208 = or i32 %207, %204, !llfi_index !5314
  %209 = load i8* %13, align 1, !tbaa !1251, !llfi_index !5315
  %210 = zext i8 %209 to i32, !llfi_index !5316
  %211 = shl nuw nsw i32 %210, 16, !llfi_index !5317
  %212 = or i32 %208, %211, !llfi_index !5318
  %213 = load i8* %2, align 16, !tbaa !1251, !llfi_index !5319
  %214 = zext i8 %213 to i32, !llfi_index !5320
  %215 = shl nuw i32 %214, 24, !llfi_index !5321
  %216 = or i32 %212, %215, !llfi_index !5322
  %217 = call i64 @fread(i8* %2, i64 8, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !5323
  %218 = load double* %16, align 16, !tbaa !4464, !llfi_index !5324
  %219 = fptrunc double %218 to float, !llfi_index !5325
  call void @quantum_cond_phase_kick(i32 %201, i32 %216, float %219, %struct.quantum_reg_struct* %reg) #3, !llfi_index !5326
  br label %225, !llfi_index !5327

; <label>:220                                     ; preds = %.preheader
  %221 = call i64 @quantum_measure(%struct.quantum_reg_struct* byval align 8 %reg) #3, !llfi_index !5328
  br label %225, !llfi_index !5329

; <label>:222                                     ; preds = %.preheader
  %223 = load %struct._IO_FILE** @stderr, align 8, !tbaa !358, !llfi_index !5330
  %224 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %223, i8* getelementptr inbounds ([28 x i8]* @.str7, i64 0, i64 0), i32 %i.04, i32 %21) #10, !llfi_index !5331
  br label %230, !llfi_index !5332

; <label>:225                                     ; preds = %220, %186, %184, %182, %180, %178, %176, %158, %157, %155, %153, %152, %151, %150, %149, %133, %87, %86, %85, %54, %22, %.preheader
  %226 = add nsw i32 %i.04, 1, !llfi_index !5333
  %227 = call i32 @feof(%struct._IO_FILE* %3) #3, !llfi_index !5334
  %228 = icmp eq i32 %227, 0, !llfi_index !5335
  br i1 %228, label %.preheader, label %._crit_edge, !llfi_index !5336

._crit_edge:                                      ; preds = %225, %.preheader2
  %229 = call i32 @fclose(%struct._IO_FILE* %3) #3, !llfi_index !5337
  br label %230, !llfi_index !5338

; <label>:230                                     ; preds = %._crit_edge, %222, %17
  call void @llvm.lifetime.end(i64 80, i8* %2) #3, !llfi_index !5339
  ret void, !llfi_index !5340
}

; Function Attrs: nounwind
declare void @perror(i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fgetc(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind readnone uwtable
define i8* @quantum_get_version() #5 {
  ret i8* getelementptr inbounds ([6 x i8]* @.str71, i64 0, i64 0), !llfi_index !5341
}

; Function Attrs: nounwind uwtable
define void @spec_srand(i32 %seed) #0 {
  store i32 %seed, i32* @seedi, align 4, !tbaa !1, !llfi_index !5342
  ret void, !llfi_index !5343
}

; Function Attrs: nounwind uwtable
define double @spec_rand() #0 {
  %1 = load i32* @seedi, align 4, !tbaa !1, !llfi_index !5344
  %2 = sext i32 %1 to i64, !llfi_index !5345
  %3 = sdiv i64 %2, 127773, !llfi_index !5346
  %4 = srem i64 %2, 127773, !llfi_index !5347
  %sext = shl i64 %4, 32, !llfi_index !5348
  %5 = ashr exact i64 %sext, 32, !llfi_index !5349
  %6 = mul nsw i64 %5, 16807, !llfi_index !5350
  %sext1 = shl i64 %3, 32, !llfi_index !5351
  %7 = ashr exact i64 %sext1, 32, !llfi_index !5352
  %8 = mul i64 %7, -2836, !llfi_index !5353
  %9 = add i64 %6, %8, !llfi_index !5354
  %10 = trunc i64 %9 to i32, !llfi_index !5355
  %11 = icmp sgt i32 %10, 0, !llfi_index !5356
  br i1 %11, label %15, label %12, !llfi_index !5357

; <label>:12                                      ; preds = %0
  %13 = add nsw i64 %9, 2147483647, !llfi_index !5358
  %14 = trunc i64 %13 to i32, !llfi_index !5359
  br label %15, !llfi_index !5360

; <label>:15                                      ; preds = %12, %0
  %storemerge = phi i32 [ %14, %12 ], [ %10, %0 ], !llfi_index !5361
  store i32 %storemerge, i32* @seedi, align 4, !tbaa !1, !llfi_index !5362
  %16 = sitofp i32 %storemerge to double, !llfi_index !5363
  %17 = fdiv double %16, 0x41DFFFFFFFC00000, !llfi_index !5364
  ret double %17, !llfi_index !5365
}

; Function Attrs: nounwind readonly uwtable
define float @quantum_get_decoherence() #7 {
  %1 = load float* @lambda, align 4, !tbaa !5366, !llfi_index !5368
  ret float %1, !llfi_index !5369
}

; Function Attrs: nounwind uwtable
define void @quantum_set_decoherence(float %l) #0 {
  %1 = fcmp une float %l, 0.000000e+00, !llfi_index !5370
  br i1 %1, label %2, label %3, !llfi_index !5371

; <label>:2                                       ; preds = %0
  store i32 1, i32* @status, align 4, !tbaa !1, !llfi_index !5372
  store float %l, float* @lambda, align 4, !tbaa !5366, !llfi_index !5373
  br label %4, !llfi_index !5374

; <label>:3                                       ; preds = %0
  store i32 0, i32* @status, align 4, !tbaa !1, !llfi_index !5375
  br label %4, !llfi_index !5376

; <label>:4                                       ; preds = %3, %2
  ret void, !llfi_index !5377
}

; Function Attrs: nounwind uwtable
define void @quantum_decohere(%struct.quantum_reg_struct* nocapture readonly %reg) #0 {
  %1 = tail call i32 @quantum_gate_counter(i32 1) #3, !llfi_index !5378
  %2 = load i32* @status, align 4, !tbaa !1, !llfi_index !5379
  %3 = icmp eq i32 %2, 0, !llfi_index !5380
  br i1 %3, label %99, label %4, !llfi_index !5381

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !5382
  %6 = load i32* %5, align 4, !tbaa !22, !llfi_index !5383
  %7 = sext i32 %6 to i64, !llfi_index !5384
  %8 = tail call noalias i8* @calloc(i64 %7, i64 4) #3, !llfi_index !5385
  %9 = bitcast i8* %8 to float*, !llfi_index !5386
  %10 = icmp eq i8* %8, null, !llfi_index !5387
  br i1 %10, label %11, label %13, !llfi_index !5388

; <label>:11                                      ; preds = %4
  %12 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str76, i64 0, i64 0), i32 %6) #3, !llfi_index !5389
  tail call void @exit(i32 1) #8, !llfi_index !5390
  unreachable, !llfi_index !5391

; <label>:13                                      ; preds = %4
  %14 = shl nsw i64 %7, 2, !llfi_index !5392
  %15 = tail call i64 @quantum_memman(i64 %14) #3, !llfi_index !5393
  %16 = load i32* %5, align 4, !tbaa !22, !llfi_index !5394
  %17 = icmp sgt i32 %16, 0, !llfi_index !5395
  br i1 %17, label %.preheader6, label %.preheader3, !llfi_index !5396

.preheader6:                                      ; preds = %36, %13
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %36 ], [ 0, %13 ], !llfi_index !5397
  br label %23, !llfi_index !5398

.preheader3:                                      ; preds = %36, %13
  %18 = phi i32 [ %16, %13 ], [ %55, %36 ], !llfi_index !5399
  %19 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !5400
  %20 = load i32* %19, align 4, !tbaa !223, !llfi_index !5401
  %21 = icmp sgt i32 %20, 0, !llfi_index !5402
  br i1 %21, label %.preheader.lr.ph, label %._crit_edge5, !llfi_index !5403

.preheader.lr.ph:                                 ; preds = %.preheader3
  %22 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !5404
  br label %.preheader, !llfi_index !5405

; <label>:23                                      ; preds = %23, %.preheader6
  %24 = tail call double (...)* bitcast (double ()* @quantum_frand to double (...)*)() #3, !llfi_index !5406
  %25 = tail call double (...)* bitcast (double ()* @quantum_frand to double (...)*)() #3, !llfi_index !5407
  %26 = insertelement <2 x double> undef, double %24, i32 0, !llfi_index !5408
  %27 = insertelement <2 x double> %26, double %25, i32 1, !llfi_index !5409
  %28 = fmul <2 x double> %27, <double 2.000000e+00, double 2.000000e+00>, !llfi_index !5410
  %29 = fadd <2 x double> %28, <double -1.000000e+00, double -1.000000e+00>, !llfi_index !5411
  %30 = fptrunc <2 x double> %29 to <2 x float>, !llfi_index !5412
  %31 = fmul <2 x float> %30, %30, !llfi_index !5413
  %32 = extractelement <2 x float> %31, i32 0, !llfi_index !5414
  %33 = extractelement <2 x float> %31, i32 1, !llfi_index !5415
  %34 = fadd float %32, %33, !llfi_index !5416
  %35 = fcmp ult float %34, 1.000000e+00, !llfi_index !5417
  br i1 %35, label %36, label %23, !llfi_index !5418

; <label>:36                                      ; preds = %23
  %37 = extractelement <2 x float> %30, i32 0, !llfi_index !5419
  %38 = fpext float %37 to double, !llfi_index !5420
  %39 = fpext float %34 to double, !llfi_index !5421
  %40 = tail call double @log(double %39) #3, !llfi_index !5422
  %41 = fmul double %40, -2.000000e+00, !llfi_index !5423
  %42 = fdiv double %41, %39, !llfi_index !5424
  %43 = tail call double @sqrt(double %42) #3, !llfi_index !5425
  %44 = fmul double %38, %43, !llfi_index !5426
  %45 = fptrunc double %44 to float, !llfi_index !5427
  %46 = load float* @lambda, align 4, !tbaa !5366, !llfi_index !5428
  %47 = fmul float %46, 2.000000e+00, !llfi_index !5429
  %48 = fpext float %47 to double, !llfi_index !5430
  %49 = tail call double @sqrt(double %48) #3, !llfi_index !5431
  %50 = fpext float %45 to double, !llfi_index !5432
  %51 = fmul double %49, %50, !llfi_index !5433
  %52 = fptrunc double %51 to float, !llfi_index !5434
  %53 = fmul float %52, 5.000000e-01, !llfi_index !5435
  %54 = getelementptr inbounds float* %9, i64 %indvars.iv12, !llfi_index !5436
  store float %53, float* %54, align 4, !tbaa !5366, !llfi_index !5437
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !llfi_index !5438
  %55 = load i32* %5, align 4, !tbaa !22, !llfi_index !5439
  %56 = trunc i64 %indvars.iv.next13 to i32, !llfi_index !5440
  %57 = icmp slt i32 %56, %55, !llfi_index !5441
  br i1 %57, label %.preheader6, label %.preheader3, !llfi_index !5442

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader.lr.ph
  %58 = phi i32 [ %18, %.preheader.lr.ph ], [ %.pre, %..preheader_crit_edge ], !llfi_index !5443
  %indvars.iv9 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next10, %..preheader_crit_edge ], !llfi_index !5444
  %59 = icmp sgt i32 %58, 0, !llfi_index !5445
  br i1 %59, label %.lr.ph, label %._crit_edge, !llfi_index !5446

.lr.ph:                                           ; preds = %.preheader
  %60 = load %struct.quantum_reg_node_struct** %22, align 8, !tbaa !228, !llfi_index !5447
  %61 = getelementptr inbounds %struct.quantum_reg_node_struct* %60, i64 %indvars.iv9, i32 1, !llfi_index !5448
  %62 = load i64* %61, align 8, !tbaa !249, !llfi_index !5449
  br label %63, !llfi_index !5450

; <label>:63                                      ; preds = %74, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %74 ], !llfi_index !5451
  %angle.02 = phi float [ 0.000000e+00, %.lr.ph ], [ %angle.1, %74 ], !llfi_index !5452
  %64 = and i64 %indvars.iv, 4294967295, !llfi_index !5453
  %65 = shl i64 1, %64, !llfi_index !5454
  %66 = and i64 %62, %65, !llfi_index !5455
  %67 = icmp eq i64 %66, 0, !llfi_index !5456
  %68 = getelementptr inbounds float* %9, i64 %indvars.iv, !llfi_index !5457
  %69 = load float* %68, align 4, !tbaa !5366, !llfi_index !5458
  br i1 %67, label %72, label %70, !llfi_index !5459

; <label>:70                                      ; preds = %63
  %71 = fadd float %angle.02, %69, !llfi_index !5460
  br label %74, !llfi_index !5461

; <label>:72                                      ; preds = %63
  %73 = fsub float %angle.02, %69, !llfi_index !5462
  br label %74, !llfi_index !5463

; <label>:74                                      ; preds = %72, %70
  %angle.1 = phi float [ %71, %70 ], [ %73, %72 ], !llfi_index !5464
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !5465
  %75 = trunc i64 %indvars.iv.next to i32, !llfi_index !5466
  %76 = icmp slt i32 %75, %58, !llfi_index !5467
  br i1 %76, label %63, label %._crit_edge, !llfi_index !5468

._crit_edge:                                      ; preds = %74, %.preheader
  %angle.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %angle.1, %74 ], !llfi_index !5469
  %77 = tail call <2 x float> @quantum_cexp(float %angle.0.lcssa) #3, !llfi_index !5470
  %78 = extractelement <2 x float> %77, i32 0, !llfi_index !5471
  %79 = extractelement <2 x float> %77, i32 1, !llfi_index !5472
  %80 = load %struct.quantum_reg_node_struct** %22, align 8, !tbaa !228, !llfi_index !5473
  %81 = getelementptr inbounds %struct.quantum_reg_node_struct* %80, i64 %indvars.iv9, i32 0, i32 0, !llfi_index !5474
  %82 = load float* %81, align 4, !llfi_index !5475
  %83 = getelementptr inbounds %struct.quantum_reg_node_struct* %80, i64 %indvars.iv9, i32 0, i32 1, !llfi_index !5476
  %84 = load float* %83, align 4, !llfi_index !5477
  %85 = fmul float %78, %82, !llfi_index !5478
  %86 = fmul float %79, %84, !llfi_index !5479
  %87 = fsub float %85, %86, !llfi_index !5480
  %88 = fmul float %78, %84, !llfi_index !5481
  %89 = fmul float %79, %82, !llfi_index !5482
  %90 = fadd float %89, %88, !llfi_index !5483
  store float %87, float* %81, align 4, !llfi_index !5484
  store float %90, float* %83, align 4, !llfi_index !5485
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !llfi_index !5486
  %91 = load i32* %19, align 4, !tbaa !223, !llfi_index !5487
  %92 = trunc i64 %indvars.iv.next10 to i32, !llfi_index !5488
  %93 = icmp slt i32 %92, %91, !llfi_index !5489
  br i1 %93, label %..preheader_crit_edge, label %._crit_edge5, !llfi_index !5490

..preheader_crit_edge:                            ; preds = %._crit_edge
  %.pre = load i32* %5, align 4, !tbaa !22, !llfi_index !5491
  br label %.preheader, !llfi_index !5492

._crit_edge5:                                     ; preds = %._crit_edge, %.preheader3
  tail call void @free(i8* %8) #3, !llfi_index !5493
  %94 = load i32* %5, align 4, !tbaa !22, !llfi_index !5494
  %95 = sub nsw i32 0, %94, !llfi_index !5495
  %96 = sext i32 %95 to i64, !llfi_index !5496
  %97 = shl nsw i64 %96, 2, !llfi_index !5497
  %98 = tail call i64 @quantum_memman(i64 %97) #3, !llfi_index !5498
  br label %99, !llfi_index !5499

; <label>:99                                      ; preds = %._crit_edge5, %0
  ret void, !llfi_index !5500
}

; Function Attrs: nounwind
declare double @log(double) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { cold nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = metadata !{metadata !"clang version 3.4 (tags/RELEASE_34/final)"}
!1 = metadata !{metadata !2, metadata !2, i64 0}
!2 = metadata !{metadata !"int", metadata !3, i64 0}
!3 = metadata !{metadata !"omnipotent char", metadata !4, i64 0}
!4 = metadata !{metadata !"Simple C/C++ TBAA"}
!5 = metadata !{i64 1}
!6 = metadata !{i64 2}
!7 = metadata !{i64 3}
!8 = metadata !{i64 4}
!9 = metadata !{i64 5}
!10 = metadata !{i64 6}
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
!22 = metadata !{metadata !23, metadata !2, i64 0}
!23 = metadata !{metadata !"quantum_reg_struct", metadata !2, i64 0, metadata !2, i64 4, metadata !2, i64 8, metadata !24, i64 16, metadata !24, i64 24}
!24 = metadata !{metadata !"any pointer", metadata !3, i64 0}
!25 = metadata !{i64 18}
!26 = metadata !{i64 19}
!27 = metadata !{i64 20}
!28 = metadata !{i64 21}
!29 = metadata !{i64 22}
!30 = metadata !{i64 23}
!31 = metadata !{i64 24}
!32 = metadata !{i64 25}
!33 = metadata !{i64 26}
!34 = metadata !{i64 27}
!35 = metadata !{i64 28}
!36 = metadata !{i64 29}
!37 = metadata !{i64 30}
!38 = metadata !{i64 31}
!39 = metadata !{i64 32}
!40 = metadata !{i64 33}
!41 = metadata !{i64 34}
!42 = metadata !{i64 35}
!43 = metadata !{i64 36}
!44 = metadata !{i64 37}
!45 = metadata !{i64 38}
!46 = metadata !{i64 39}
!47 = metadata !{i64 40}
!48 = metadata !{i64 41}
!49 = metadata !{i64 42}
!50 = metadata !{i64 43}
!51 = metadata !{i64 44}
!52 = metadata !{i64 45}
!53 = metadata !{i64 46}
!54 = metadata !{i64 47}
!55 = metadata !{i64 48}
!56 = metadata !{i64 49}
!57 = metadata !{i64 50}
!58 = metadata !{i64 51}
!59 = metadata !{i64 52}
!60 = metadata !{i64 53}
!61 = metadata !{i64 54}
!62 = metadata !{i64 55}
!63 = metadata !{i64 56}
!64 = metadata !{i64 57}
!65 = metadata !{i64 58}
!66 = metadata !{i64 59}
!67 = metadata !{i64 60}
!68 = metadata !{i64 61}
!69 = metadata !{i64 62}
!70 = metadata !{i64 63}
!71 = metadata !{i64 64}
!72 = metadata !{i64 65}
!73 = metadata !{i64 66}
!74 = metadata !{i64 67}
!75 = metadata !{i64 68}
!76 = metadata !{i64 69}
!77 = metadata !{i64 70}
!78 = metadata !{i64 71}
!79 = metadata !{i64 72}
!80 = metadata !{i64 73}
!81 = metadata !{i64 74}
!82 = metadata !{i64 75}
!83 = metadata !{i64 76}
!84 = metadata !{i64 77}
!85 = metadata !{i64 78}
!86 = metadata !{i64 79}
!87 = metadata !{i64 80}
!88 = metadata !{i64 81}
!89 = metadata !{i64 82}
!90 = metadata !{i64 83}
!91 = metadata !{i64 84}
!92 = metadata !{i64 85}
!93 = metadata !{i64 86}
!94 = metadata !{i64 87}
!95 = metadata !{i64 88}
!96 = metadata !{i64 89}
!97 = metadata !{i64 90}
!98 = metadata !{i64 91}
!99 = metadata !{i64 92}
!100 = metadata !{i64 93}
!101 = metadata !{i64 94}
!102 = metadata !{i64 95}
!103 = metadata !{i64 96}
!104 = metadata !{i64 97}
!105 = metadata !{i64 98}
!106 = metadata !{i64 99}
!107 = metadata !{i64 100}
!108 = metadata !{i64 101}
!109 = metadata !{i64 102}
!110 = metadata !{i64 103}
!111 = metadata !{i64 104}
!112 = metadata !{i64 105}
!113 = metadata !{i64 106}
!114 = metadata !{i64 107}
!115 = metadata !{i64 108}
!116 = metadata !{i64 109}
!117 = metadata !{i64 110}
!118 = metadata !{i64 111}
!119 = metadata !{i64 112}
!120 = metadata !{i64 113}
!121 = metadata !{i64 114}
!122 = metadata !{i64 115}
!123 = metadata !{i64 116}
!124 = metadata !{i64 117}
!125 = metadata !{i64 118}
!126 = metadata !{i64 119}
!127 = metadata !{i64 120}
!128 = metadata !{i64 121}
!129 = metadata !{i64 122}
!130 = metadata !{i64 123}
!131 = metadata !{i64 124}
!132 = metadata !{i64 125}
!133 = metadata !{i64 126}
!134 = metadata !{i64 127}
!135 = metadata !{i64 128}
!136 = metadata !{i64 129}
!137 = metadata !{i64 130}
!138 = metadata !{i64 131}
!139 = metadata !{i64 132}
!140 = metadata !{i64 133}
!141 = metadata !{i64 134}
!142 = metadata !{i64 135}
!143 = metadata !{i64 136}
!144 = metadata !{i64 137}
!145 = metadata !{i64 138}
!146 = metadata !{i64 139}
!147 = metadata !{i64 140}
!148 = metadata !{i64 141}
!149 = metadata !{i64 142}
!150 = metadata !{i64 143}
!151 = metadata !{i64 144}
!152 = metadata !{i64 145}
!153 = metadata !{i64 146}
!154 = metadata !{i64 147}
!155 = metadata !{i64 148}
!156 = metadata !{i64 149}
!157 = metadata !{i64 150}
!158 = metadata !{i64 151}
!159 = metadata !{i64 152}
!160 = metadata !{i64 153}
!161 = metadata !{i64 154}
!162 = metadata !{i64 155}
!163 = metadata !{i64 156}
!164 = metadata !{i64 157}
!165 = metadata !{i64 158}
!166 = metadata !{i64 159}
!167 = metadata !{i64 160}
!168 = metadata !{i64 161}
!169 = metadata !{i64 162}
!170 = metadata !{i64 163}
!171 = metadata !{i64 164}
!172 = metadata !{i64 165}
!173 = metadata !{i64 166}
!174 = metadata !{i64 167}
!175 = metadata !{i64 168}
!176 = metadata !{i64 169}
!177 = metadata !{i64 170}
!178 = metadata !{i64 171}
!179 = metadata !{i64 172}
!180 = metadata !{i64 173}
!181 = metadata !{i64 174}
!182 = metadata !{i64 175}
!183 = metadata !{i64 176}
!184 = metadata !{i64 177}
!185 = metadata !{i64 178}
!186 = metadata !{i64 179}
!187 = metadata !{i64 180}
!188 = metadata !{i64 181}
!189 = metadata !{i64 182}
!190 = metadata !{i64 183}
!191 = metadata !{i64 184}
!192 = metadata !{i64 185}
!193 = metadata !{i64 186}
!194 = metadata !{i64 187}
!195 = metadata !{i64 188}
!196 = metadata !{i64 189}
!197 = metadata !{i64 190}
!198 = metadata !{i64 191}
!199 = metadata !{i64 192}
!200 = metadata !{i64 193}
!201 = metadata !{i64 194}
!202 = metadata !{i64 195}
!203 = metadata !{i64 196}
!204 = metadata !{i64 197}
!205 = metadata !{i64 198}
!206 = metadata !{i64 199}
!207 = metadata !{i64 200}
!208 = metadata !{i64 201}
!209 = metadata !{i64 202}
!210 = metadata !{i64 203}
!211 = metadata !{i64 204}
!212 = metadata !{i64 205}
!213 = metadata !{i64 206}
!214 = metadata !{i64 207}
!215 = metadata !{i64 208}
!216 = metadata !{i64 209}
!217 = metadata !{i64 210}
!218 = metadata !{i64 211}
!219 = metadata !{i64 212}
!220 = metadata !{i64 213}
!221 = metadata !{i64 214}
!222 = metadata !{i64 215}
!223 = metadata !{metadata !23, metadata !2, i64 4}
!224 = metadata !{i64 216}
!225 = metadata !{i64 217}
!226 = metadata !{i64 218}
!227 = metadata !{i64 219}
!228 = metadata !{metadata !23, metadata !24, i64 16}
!229 = metadata !{i64 220}
!230 = metadata !{i64 221}
!231 = metadata !{i64 222}
!232 = metadata !{i64 223}
!233 = metadata !{i64 224}
!234 = metadata !{i64 225}
!235 = metadata !{i64 226}
!236 = metadata !{i64 227}
!237 = metadata !{i64 228}
!238 = metadata !{i64 229}
!239 = metadata !{i64 230}
!240 = metadata !{i64 231}
!241 = metadata !{i64 232}
!242 = metadata !{i64 233}
!243 = metadata !{i64 234}
!244 = metadata !{i64 235}
!245 = metadata !{i64 236}
!246 = metadata !{i64 237}
!247 = metadata !{i64 238}
!248 = metadata !{i64 239}
!249 = metadata !{metadata !250, metadata !251, i64 8}
!250 = metadata !{metadata !"quantum_reg_node_struct", metadata !3, i64 0, metadata !251, i64 8}
!251 = metadata !{metadata !"long long", metadata !3, i64 0}
!252 = metadata !{i64 240}
!253 = metadata !{i64 241}
!254 = metadata !{i64 242}
!255 = metadata !{i64 243}
!256 = metadata !{i64 244}
!257 = metadata !{i64 245}
!258 = metadata !{i64 246}
!259 = metadata !{i64 247}
!260 = metadata !{i64 248}
!261 = metadata !{i64 249}
!262 = metadata !{i64 250}
!263 = metadata !{i64 251}
!264 = metadata !{i64 252}
!265 = metadata !{i64 253}
!266 = metadata !{i64 254}
!267 = metadata !{i64 255}
!268 = metadata !{i64 256}
!269 = metadata !{i64 257}
!270 = metadata !{i64 258}
!271 = metadata !{i64 259}
!272 = metadata !{i64 260}
!273 = metadata !{i64 261}
!274 = metadata !{i64 262}
!275 = metadata !{i64 263}
!276 = metadata !{i64 264}
!277 = metadata !{i64 265}
!278 = metadata !{i64 266}
!279 = metadata !{i64 267}
!280 = metadata !{i64 268}
!281 = metadata !{i64 269}
!282 = metadata !{i64 270}
!283 = metadata !{i64 271}
!284 = metadata !{i64 272}
!285 = metadata !{i64 273}
!286 = metadata !{i64 274}
!287 = metadata !{i64 275}
!288 = metadata !{i64 276}
!289 = metadata !{i64 277}
!290 = metadata !{i64 278}
!291 = metadata !{i64 279}
!292 = metadata !{i64 280}
!293 = metadata !{i64 281}
!294 = metadata !{i64 282}
!295 = metadata !{i64 283}
!296 = metadata !{i64 284}
!297 = metadata !{i64 285}
!298 = metadata !{i64 286}
!299 = metadata !{i64 287}
!300 = metadata !{i64 288}
!301 = metadata !{i64 289}
!302 = metadata !{i64 290}
!303 = metadata !{i64 291}
!304 = metadata !{i64 292}
!305 = metadata !{i64 293}
!306 = metadata !{i64 294}
!307 = metadata !{i64 295}
!308 = metadata !{i64 296}
!309 = metadata !{i64 297}
!310 = metadata !{i64 298}
!311 = metadata !{i64 299}
!312 = metadata !{i64 300}
!313 = metadata !{i64 301}
!314 = metadata !{i64 302}
!315 = metadata !{i64 303}
!316 = metadata !{i64 304}
!317 = metadata !{i64 305}
!318 = metadata !{i64 306}
!319 = metadata !{i64 307}
!320 = metadata !{i64 308}
!321 = metadata !{i64 309}
!322 = metadata !{i64 310}
!323 = metadata !{i64 311}
!324 = metadata !{i64 312}
!325 = metadata !{i64 313}
!326 = metadata !{i64 314}
!327 = metadata !{i64 315}
!328 = metadata !{i64 316}
!329 = metadata !{i64 317}
!330 = metadata !{i64 318}
!331 = metadata !{i64 319}
!332 = metadata !{i64 320}
!333 = metadata !{i64 321}
!334 = metadata !{i64 322}
!335 = metadata !{i64 323}
!336 = metadata !{i64 324}
!337 = metadata !{i64 325}
!338 = metadata !{i64 326}
!339 = metadata !{i64 327}
!340 = metadata !{i64 328}
!341 = metadata !{i64 329}
!342 = metadata !{i64 330}
!343 = metadata !{i64 331}
!344 = metadata !{i64 332}
!345 = metadata !{i64 333}
!346 = metadata !{i64 334}
!347 = metadata !{i64 335}
!348 = metadata !{i64 336}
!349 = metadata !{i64 337}
!350 = metadata !{i64 338}
!351 = metadata !{i64 339}
!352 = metadata !{i64 340}
!353 = metadata !{i64 341}
!354 = metadata !{i64 342}
!355 = metadata !{i64 343}
!356 = metadata !{i64 344}
!357 = metadata !{i64 345}
!358 = metadata !{metadata !24, metadata !24, i64 0}
!359 = metadata !{i64 346}
!360 = metadata !{i64 347}
!361 = metadata !{i64 348}
!362 = metadata !{i64 349}
!363 = metadata !{i64 350}
!364 = metadata !{i64 351}
!365 = metadata !{i64 352}
!366 = metadata !{i64 353}
!367 = metadata !{i64 354}
!368 = metadata !{i64 355}
!369 = metadata !{i64 356}
!370 = metadata !{i64 357}
!371 = metadata !{i64 358}
!372 = metadata !{i64 359}
!373 = metadata !{i64 360}
!374 = metadata !{i64 361}
!375 = metadata !{i64 362}
!376 = metadata !{i64 363}
!377 = metadata !{i64 364}
!378 = metadata !{i64 365}
!379 = metadata !{i64 366}
!380 = metadata !{i64 367}
!381 = metadata !{i64 368}
!382 = metadata !{i64 369}
!383 = metadata !{i64 370}
!384 = metadata !{i64 371}
!385 = metadata !{i64 372}
!386 = metadata !{i64 373}
!387 = metadata !{i64 374}
!388 = metadata !{i64 375}
!389 = metadata !{i64 376}
!390 = metadata !{i64 377}
!391 = metadata !{i64 378}
!392 = metadata !{i64 379}
!393 = metadata !{i64 380}
!394 = metadata !{i64 381}
!395 = metadata !{i64 382}
!396 = metadata !{i64 383}
!397 = metadata !{i64 384}
!398 = metadata !{i64 385}
!399 = metadata !{i64 386}
!400 = metadata !{i64 387}
!401 = metadata !{i64 388}
!402 = metadata !{i64 389}
!403 = metadata !{i64 390}
!404 = metadata !{i64 391}
!405 = metadata !{i64 392}
!406 = metadata !{i64 393}
!407 = metadata !{i64 394}
!408 = metadata !{i64 395}
!409 = metadata !{i64 396}
!410 = metadata !{i64 397}
!411 = metadata !{i64 398}
!412 = metadata !{i64 399}
!413 = metadata !{i64 400}
!414 = metadata !{i64 401}
!415 = metadata !{i64 402}
!416 = metadata !{i64 403}
!417 = metadata !{i64 404}
!418 = metadata !{i64 405}
!419 = metadata !{i64 406}
!420 = metadata !{i64 407}
!421 = metadata !{i64 408}
!422 = metadata !{i64 409}
!423 = metadata !{i64 410}
!424 = metadata !{i64 411}
!425 = metadata !{i64 412}
!426 = metadata !{i64 413}
!427 = metadata !{i64 414}
!428 = metadata !{i64 415}
!429 = metadata !{i64 416}
!430 = metadata !{i64 417}
!431 = metadata !{i64 418}
!432 = metadata !{i64 419}
!433 = metadata !{i64 420}
!434 = metadata !{i64 421}
!435 = metadata !{i64 422}
!436 = metadata !{i64 423}
!437 = metadata !{i64 424}
!438 = metadata !{i64 425}
!439 = metadata !{i64 426}
!440 = metadata !{i64 427}
!441 = metadata !{i64 428}
!442 = metadata !{i64 429}
!443 = metadata !{i64 430}
!444 = metadata !{i64 431}
!445 = metadata !{i64 432}
!446 = metadata !{i64 433}
!447 = metadata !{i64 434}
!448 = metadata !{i64 435}
!449 = metadata !{i64 436}
!450 = metadata !{i64 437}
!451 = metadata !{i64 438}
!452 = metadata !{i64 439}
!453 = metadata !{i64 440}
!454 = metadata !{i64 441}
!455 = metadata !{i64 442}
!456 = metadata !{i64 443}
!457 = metadata !{i64 444}
!458 = metadata !{i64 445}
!459 = metadata !{i64 446}
!460 = metadata !{i64 447}
!461 = metadata !{i64 448}
!462 = metadata !{i64 449}
!463 = metadata !{i64 450}
!464 = metadata !{i64 451}
!465 = metadata !{i64 452}
!466 = metadata !{i64 453}
!467 = metadata !{i64 454}
!468 = metadata !{i64 455}
!469 = metadata !{i64 456}
!470 = metadata !{i64 457}
!471 = metadata !{i64 458}
!472 = metadata !{i64 459}
!473 = metadata !{i64 460}
!474 = metadata !{i64 461}
!475 = metadata !{i64 462}
!476 = metadata !{i64 463}
!477 = metadata !{i64 464}
!478 = metadata !{i64 465}
!479 = metadata !{i64 466}
!480 = metadata !{i64 467}
!481 = metadata !{i64 468}
!482 = metadata !{i64 469}
!483 = metadata !{i64 470}
!484 = metadata !{i64 471}
!485 = metadata !{i64 472}
!486 = metadata !{i64 473}
!487 = metadata !{i64 474}
!488 = metadata !{i64 475}
!489 = metadata !{i64 476}
!490 = metadata !{i64 477}
!491 = metadata !{i64 478}
!492 = metadata !{i64 479}
!493 = metadata !{i64 480}
!494 = metadata !{i64 481}
!495 = metadata !{i64 482}
!496 = metadata !{i64 483}
!497 = metadata !{i64 484}
!498 = metadata !{i64 485}
!499 = metadata !{i64 486}
!500 = metadata !{i64 487}
!501 = metadata !{i64 488}
!502 = metadata !{i64 489}
!503 = metadata !{i64 490}
!504 = metadata !{i64 491}
!505 = metadata !{i64 492}
!506 = metadata !{i64 493}
!507 = metadata !{i64 494}
!508 = metadata !{i64 495}
!509 = metadata !{i64 496}
!510 = metadata !{i64 497}
!511 = metadata !{i64 498}
!512 = metadata !{i64 499}
!513 = metadata !{i64 500}
!514 = metadata !{i64 501}
!515 = metadata !{i64 502}
!516 = metadata !{i64 503}
!517 = metadata !{i64 504}
!518 = metadata !{i64 505}
!519 = metadata !{i64 506}
!520 = metadata !{i64 507}
!521 = metadata !{i64 508}
!522 = metadata !{i64 509}
!523 = metadata !{i64 510}
!524 = metadata !{i64 511}
!525 = metadata !{i64 512}
!526 = metadata !{i64 513}
!527 = metadata !{i64 514}
!528 = metadata !{i64 515}
!529 = metadata !{i64 516}
!530 = metadata !{i64 517}
!531 = metadata !{i64 518}
!532 = metadata !{i64 519}
!533 = metadata !{i64 520}
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
!548 = metadata !{i64 535}
!549 = metadata !{i64 536}
!550 = metadata !{i64 537}
!551 = metadata !{i64 538}
!552 = metadata !{i64 539}
!553 = metadata !{i64 540}
!554 = metadata !{i64 541}
!555 = metadata !{i64 542}
!556 = metadata !{i64 543}
!557 = metadata !{i64 544}
!558 = metadata !{i64 545}
!559 = metadata !{i64 546}
!560 = metadata !{i64 547}
!561 = metadata !{i64 548}
!562 = metadata !{i64 549}
!563 = metadata !{i64 550}
!564 = metadata !{i64 551}
!565 = metadata !{i64 552}
!566 = metadata !{i64 553}
!567 = metadata !{i64 554}
!568 = metadata !{i64 555}
!569 = metadata !{i64 556}
!570 = metadata !{i64 557}
!571 = metadata !{i64 558}
!572 = metadata !{i64 559}
!573 = metadata !{i64 560}
!574 = metadata !{i64 561}
!575 = metadata !{i64 562}
!576 = metadata !{i64 563}
!577 = metadata !{i64 564}
!578 = metadata !{i64 565}
!579 = metadata !{i64 566}
!580 = metadata !{i64 567}
!581 = metadata !{i64 568}
!582 = metadata !{i64 569}
!583 = metadata !{i64 570}
!584 = metadata !{i64 571}
!585 = metadata !{i64 572}
!586 = metadata !{i64 573}
!587 = metadata !{i64 574}
!588 = metadata !{i64 575}
!589 = metadata !{i64 576}
!590 = metadata !{i64 577}
!591 = metadata !{i64 578}
!592 = metadata !{i64 579}
!593 = metadata !{i64 580}
!594 = metadata !{i64 581}
!595 = metadata !{i64 582}
!596 = metadata !{i64 583}
!597 = metadata !{i64 584}
!598 = metadata !{i64 585}
!599 = metadata !{i64 586}
!600 = metadata !{i64 587}
!601 = metadata !{i64 588}
!602 = metadata !{i64 589}
!603 = metadata !{i64 590}
!604 = metadata !{i64 591}
!605 = metadata !{i64 592}
!606 = metadata !{i64 593}
!607 = metadata !{i64 594}
!608 = metadata !{i64 595}
!609 = metadata !{i64 596}
!610 = metadata !{i64 597}
!611 = metadata !{i64 598}
!612 = metadata !{i64 599}
!613 = metadata !{i64 600}
!614 = metadata !{i64 601}
!615 = metadata !{i64 602}
!616 = metadata !{i64 603}
!617 = metadata !{i64 604}
!618 = metadata !{i64 605}
!619 = metadata !{i64 606}
!620 = metadata !{i64 607}
!621 = metadata !{i64 608}
!622 = metadata !{i64 609}
!623 = metadata !{i64 610}
!624 = metadata !{i64 611}
!625 = metadata !{i64 612}
!626 = metadata !{i64 613}
!627 = metadata !{i64 614}
!628 = metadata !{i64 615}
!629 = metadata !{i64 616}
!630 = metadata !{i64 617}
!631 = metadata !{i64 618}
!632 = metadata !{i64 619}
!633 = metadata !{i64 620}
!634 = metadata !{i64 621}
!635 = metadata !{i64 622}
!636 = metadata !{i64 623}
!637 = metadata !{i64 624}
!638 = metadata !{i64 625}
!639 = metadata !{i64 626}
!640 = metadata !{i64 627}
!641 = metadata !{i64 628}
!642 = metadata !{i64 629}
!643 = metadata !{i64 630}
!644 = metadata !{i64 631}
!645 = metadata !{i64 632}
!646 = metadata !{i64 633}
!647 = metadata !{i64 634}
!648 = metadata !{i64 635}
!649 = metadata !{i64 636}
!650 = metadata !{i64 637}
!651 = metadata !{i64 638}
!652 = metadata !{i64 639}
!653 = metadata !{i64 640}
!654 = metadata !{i64 641}
!655 = metadata !{i64 642}
!656 = metadata !{i64 643}
!657 = metadata !{i64 644}
!658 = metadata !{i64 645}
!659 = metadata !{i64 646}
!660 = metadata !{i64 647}
!661 = metadata !{i64 648}
!662 = metadata !{i64 649}
!663 = metadata !{i64 650}
!664 = metadata !{i64 651}
!665 = metadata !{i64 652}
!666 = metadata !{i64 653}
!667 = metadata !{i64 654}
!668 = metadata !{i64 655}
!669 = metadata !{i64 656}
!670 = metadata !{i64 657}
!671 = metadata !{i64 658}
!672 = metadata !{i64 659}
!673 = metadata !{i64 660}
!674 = metadata !{i64 661}
!675 = metadata !{i64 662}
!676 = metadata !{i64 663}
!677 = metadata !{i64 664}
!678 = metadata !{i64 665}
!679 = metadata !{i64 666}
!680 = metadata !{i64 667}
!681 = metadata !{i64 668}
!682 = metadata !{i64 669}
!683 = metadata !{i64 670}
!684 = metadata !{i64 671}
!685 = metadata !{i64 672}
!686 = metadata !{i64 673}
!687 = metadata !{i64 674}
!688 = metadata !{i64 675}
!689 = metadata !{i64 676}
!690 = metadata !{i64 677}
!691 = metadata !{i64 678}
!692 = metadata !{i64 679}
!693 = metadata !{i64 680}
!694 = metadata !{i64 681}
!695 = metadata !{i64 682}
!696 = metadata !{i64 683}
!697 = metadata !{i64 684}
!698 = metadata !{i64 685}
!699 = metadata !{i64 686}
!700 = metadata !{i64 687}
!701 = metadata !{i64 688}
!702 = metadata !{i64 689}
!703 = metadata !{i64 690}
!704 = metadata !{i64 691}
!705 = metadata !{i64 692}
!706 = metadata !{i64 693}
!707 = metadata !{i64 694}
!708 = metadata !{i64 695}
!709 = metadata !{i64 696}
!710 = metadata !{i64 697}
!711 = metadata !{i64 698}
!712 = metadata !{i64 699}
!713 = metadata !{i64 700}
!714 = metadata !{i64 701}
!715 = metadata !{i64 702}
!716 = metadata !{i64 703}
!717 = metadata !{i64 704}
!718 = metadata !{i64 705}
!719 = metadata !{i64 706}
!720 = metadata !{i64 707}
!721 = metadata !{i64 708}
!722 = metadata !{i64 709}
!723 = metadata !{i64 710}
!724 = metadata !{i64 711}
!725 = metadata !{i64 712}
!726 = metadata !{i64 713}
!727 = metadata !{i64 714}
!728 = metadata !{i64 715}
!729 = metadata !{i64 716}
!730 = metadata !{i64 717}
!731 = metadata !{i64 718}
!732 = metadata !{i64 719}
!733 = metadata !{i64 720}
!734 = metadata !{i64 721}
!735 = metadata !{i64 722}
!736 = metadata !{i64 723}
!737 = metadata !{i64 724}
!738 = metadata !{i64 725}
!739 = metadata !{i64 726}
!740 = metadata !{i64 727}
!741 = metadata !{i64 728}
!742 = metadata !{i64 729}
!743 = metadata !{i64 730}
!744 = metadata !{i64 731}
!745 = metadata !{i64 732}
!746 = metadata !{i64 733}
!747 = metadata !{i64 734}
!748 = metadata !{i64 735}
!749 = metadata !{i64 736}
!750 = metadata !{i64 737}
!751 = metadata !{i64 738}
!752 = metadata !{i64 739}
!753 = metadata !{i64 740}
!754 = metadata !{i64 741}
!755 = metadata !{i64 742}
!756 = metadata !{i64 743}
!757 = metadata !{i64 744}
!758 = metadata !{i64 745}
!759 = metadata !{i64 746}
!760 = metadata !{i64 747}
!761 = metadata !{i64 748}
!762 = metadata !{i64 749}
!763 = metadata !{i64 750}
!764 = metadata !{i64 751}
!765 = metadata !{i64 752}
!766 = metadata !{i64 753}
!767 = metadata !{i64 754}
!768 = metadata !{i64 755}
!769 = metadata !{i64 756}
!770 = metadata !{i64 757}
!771 = metadata !{i64 758}
!772 = metadata !{i64 759}
!773 = metadata !{i64 760}
!774 = metadata !{i64 761}
!775 = metadata !{i64 762}
!776 = metadata !{i64 763}
!777 = metadata !{i64 764}
!778 = metadata !{i64 765}
!779 = metadata !{i64 766}
!780 = metadata !{i64 767}
!781 = metadata !{i64 768}
!782 = metadata !{i64 769}
!783 = metadata !{i64 770}
!784 = metadata !{i64 771}
!785 = metadata !{i64 772}
!786 = metadata !{i64 773}
!787 = metadata !{i64 774}
!788 = metadata !{i64 775}
!789 = metadata !{i64 776}
!790 = metadata !{i64 777}
!791 = metadata !{i64 778}
!792 = metadata !{i64 779}
!793 = metadata !{i64 780}
!794 = metadata !{i64 781}
!795 = metadata !{i64 782}
!796 = metadata !{i64 783}
!797 = metadata !{i64 784}
!798 = metadata !{i64 785}
!799 = metadata !{i64 786}
!800 = metadata !{i64 787}
!801 = metadata !{i64 788}
!802 = metadata !{i64 789}
!803 = metadata !{i64 790}
!804 = metadata !{i64 791}
!805 = metadata !{i64 792}
!806 = metadata !{i64 793}
!807 = metadata !{i64 794}
!808 = metadata !{i64 795}
!809 = metadata !{i64 796}
!810 = metadata !{i64 797}
!811 = metadata !{i64 798}
!812 = metadata !{i64 799}
!813 = metadata !{i64 800}
!814 = metadata !{i64 801}
!815 = metadata !{i64 802}
!816 = metadata !{i64 803}
!817 = metadata !{i64 804}
!818 = metadata !{i64 805}
!819 = metadata !{i64 806}
!820 = metadata !{i64 807}
!821 = metadata !{i64 808}
!822 = metadata !{i64 809}
!823 = metadata !{i64 810}
!824 = metadata !{i64 811}
!825 = metadata !{i64 812}
!826 = metadata !{i64 813}
!827 = metadata !{i64 814}
!828 = metadata !{i64 815}
!829 = metadata !{i64 816}
!830 = metadata !{i64 817}
!831 = metadata !{i64 818}
!832 = metadata !{i64 819}
!833 = metadata !{i64 820}
!834 = metadata !{i64 821}
!835 = metadata !{i64 822}
!836 = metadata !{i64 823}
!837 = metadata !{i64 824}
!838 = metadata !{i64 825}
!839 = metadata !{i64 826}
!840 = metadata !{i64 827}
!841 = metadata !{i64 828}
!842 = metadata !{i64 829}
!843 = metadata !{i64 830}
!844 = metadata !{i64 831}
!845 = metadata !{i64 832}
!846 = metadata !{i64 833}
!847 = metadata !{i64 834}
!848 = metadata !{i64 835}
!849 = metadata !{i64 836}
!850 = metadata !{i64 837}
!851 = metadata !{i64 838}
!852 = metadata !{i64 839}
!853 = metadata !{i64 840}
!854 = metadata !{i64 841}
!855 = metadata !{i64 842}
!856 = metadata !{i64 843}
!857 = metadata !{i64 844}
!858 = metadata !{i64 845}
!859 = metadata !{i64 846}
!860 = metadata !{i64 847}
!861 = metadata !{i64 848}
!862 = metadata !{i64 849}
!863 = metadata !{i64 850}
!864 = metadata !{i64 851}
!865 = metadata !{i64 852}
!866 = metadata !{i64 853}
!867 = metadata !{i64 854}
!868 = metadata !{i64 855}
!869 = metadata !{i64 856}
!870 = metadata !{i64 857}
!871 = metadata !{i64 858}
!872 = metadata !{i64 859}
!873 = metadata !{i64 860}
!874 = metadata !{i64 861}
!875 = metadata !{i64 862}
!876 = metadata !{i64 863}
!877 = metadata !{i64 864}
!878 = metadata !{i64 865}
!879 = metadata !{i64 866}
!880 = metadata !{i64 867}
!881 = metadata !{i64 868}
!882 = metadata !{i64 869}
!883 = metadata !{i64 870}
!884 = metadata !{i64 871}
!885 = metadata !{i64 872}
!886 = metadata !{i64 873}
!887 = metadata !{i64 874}
!888 = metadata !{i64 875}
!889 = metadata !{i64 876}
!890 = metadata !{i64 877}
!891 = metadata !{i64 878}
!892 = metadata !{i64 879}
!893 = metadata !{i64 880}
!894 = metadata !{i64 881}
!895 = metadata !{i64 882}
!896 = metadata !{i64 883}
!897 = metadata !{i64 884}
!898 = metadata !{i64 885}
!899 = metadata !{i64 886}
!900 = metadata !{i64 887}
!901 = metadata !{i64 888}
!902 = metadata !{i64 889}
!903 = metadata !{i64 890}
!904 = metadata !{i64 891}
!905 = metadata !{i64 892}
!906 = metadata !{i64 893}
!907 = metadata !{i64 894}
!908 = metadata !{i64 895}
!909 = metadata !{i64 896}
!910 = metadata !{i64 897}
!911 = metadata !{i64 898}
!912 = metadata !{i64 899}
!913 = metadata !{i64 900}
!914 = metadata !{i64 901}
!915 = metadata !{i64 902}
!916 = metadata !{i64 903}
!917 = metadata !{i64 904}
!918 = metadata !{i64 905}
!919 = metadata !{i64 906}
!920 = metadata !{i64 907}
!921 = metadata !{i64 908}
!922 = metadata !{i64 909}
!923 = metadata !{i64 910}
!924 = metadata !{i64 911}
!925 = metadata !{i64 912}
!926 = metadata !{i64 913}
!927 = metadata !{i64 914}
!928 = metadata !{i64 915}
!929 = metadata !{i64 916}
!930 = metadata !{i64 917}
!931 = metadata !{i64 918}
!932 = metadata !{i64 919}
!933 = metadata !{i64 920}
!934 = metadata !{i64 921}
!935 = metadata !{i64 922}
!936 = metadata !{i64 923}
!937 = metadata !{i64 924}
!938 = metadata !{i64 925}
!939 = metadata !{i64 926}
!940 = metadata !{i64 927}
!941 = metadata !{i64 928}
!942 = metadata !{i64 929}
!943 = metadata !{i64 930}
!944 = metadata !{i64 931}
!945 = metadata !{i64 932}
!946 = metadata !{i64 933}
!947 = metadata !{i64 934}
!948 = metadata !{i64 935}
!949 = metadata !{i64 936}
!950 = metadata !{i64 937}
!951 = metadata !{i64 938}
!952 = metadata !{i64 939}
!953 = metadata !{i64 940}
!954 = metadata !{i64 941}
!955 = metadata !{i64 942}
!956 = metadata !{i64 943}
!957 = metadata !{i64 944}
!958 = metadata !{i64 945}
!959 = metadata !{i64 946}
!960 = metadata !{i64 947}
!961 = metadata !{i64 948}
!962 = metadata !{i64 949}
!963 = metadata !{i64 950}
!964 = metadata !{i64 951}
!965 = metadata !{i64 952}
!966 = metadata !{i64 953}
!967 = metadata !{i64 954}
!968 = metadata !{i64 955}
!969 = metadata !{i64 956}
!970 = metadata !{i64 957}
!971 = metadata !{i64 958}
!972 = metadata !{i64 959}
!973 = metadata !{i64 960}
!974 = metadata !{i64 961}
!975 = metadata !{i64 962}
!976 = metadata !{i64 963}
!977 = metadata !{i64 964}
!978 = metadata !{i64 965}
!979 = metadata !{i64 966}
!980 = metadata !{i64 967}
!981 = metadata !{i64 968}
!982 = metadata !{i64 969}
!983 = metadata !{i64 970}
!984 = metadata !{i64 971}
!985 = metadata !{i64 972}
!986 = metadata !{i64 973}
!987 = metadata !{i64 974}
!988 = metadata !{i64 975}
!989 = metadata !{i64 976}
!990 = metadata !{i64 977}
!991 = metadata !{i64 978}
!992 = metadata !{i64 979}
!993 = metadata !{i64 980}
!994 = metadata !{i64 981}
!995 = metadata !{i64 982}
!996 = metadata !{i64 983}
!997 = metadata !{i64 984}
!998 = metadata !{i64 985}
!999 = metadata !{i64 986}
!1000 = metadata !{i64 987}
!1001 = metadata !{i64 988}
!1002 = metadata !{i64 989}
!1003 = metadata !{i64 990}
!1004 = metadata !{i64 991}
!1005 = metadata !{i64 992}
!1006 = metadata !{i64 993}
!1007 = metadata !{i64 994}
!1008 = metadata !{i64 995}
!1009 = metadata !{i64 996}
!1010 = metadata !{i64 997}
!1011 = metadata !{i64 998}
!1012 = metadata !{i64 999}
!1013 = metadata !{i64 1000}
!1014 = metadata !{i64 1001}
!1015 = metadata !{i64 1002}
!1016 = metadata !{i64 1003}
!1017 = metadata !{i64 1004}
!1018 = metadata !{i64 1005}
!1019 = metadata !{i64 1006}
!1020 = metadata !{i64 1007}
!1021 = metadata !{i64 1008}
!1022 = metadata !{i64 1009}
!1023 = metadata !{metadata !23, metadata !2, i64 8}
!1024 = metadata !{i64 1010}
!1025 = metadata !{i64 1011}
!1026 = metadata !{i64 1012}
!1027 = metadata !{i64 1013}
!1028 = metadata !{metadata !23, metadata !24, i64 24}
!1029 = metadata !{i64 1014}
!1030 = metadata !{i64 1015}
!1031 = metadata !{i64 1016}
!1032 = metadata !{i64 1017}
!1033 = metadata !{i64 1018}
!1034 = metadata !{i64 1019}
!1035 = metadata !{i64 1020}
!1036 = metadata !{i64 1021}
!1037 = metadata !{i64 1022}
!1038 = metadata !{i64 1023}
!1039 = metadata !{i64 1024}
!1040 = metadata !{i64 1025}
!1041 = metadata !{i64 1026}
!1042 = metadata !{i64 1027}
!1043 = metadata !{i64 1028}
!1044 = metadata !{i64 1029}
!1045 = metadata !{i64 1030}
!1046 = metadata !{i64 1031}
!1047 = metadata !{i64 1032}
!1048 = metadata !{i64 1033}
!1049 = metadata !{i64 1034}
!1050 = metadata !{i64 1035}
!1051 = metadata !{i64 1036}
!1052 = metadata !{i64 1037}
!1053 = metadata !{i64 1038}
!1054 = metadata !{i64 1039}
!1055 = metadata !{i64 1040}
!1056 = metadata !{i64 1041}
!1057 = metadata !{i64 1042}
!1058 = metadata !{i64 1043}
!1059 = metadata !{i64 1044}
!1060 = metadata !{i64 1045}
!1061 = metadata !{i64 1046}
!1062 = metadata !{i64 1047}
!1063 = metadata !{i64 1048}
!1064 = metadata !{i64 1049}
!1065 = metadata !{i64 1050}
!1066 = metadata !{i64 1051}
!1067 = metadata !{i64 1052}
!1068 = metadata !{i64 1053}
!1069 = metadata !{i64 1054}
!1070 = metadata !{i64 1055}
!1071 = metadata !{i64 1056}
!1072 = metadata !{i64 1057}
!1073 = metadata !{i64 1058}
!1074 = metadata !{i64 1059}
!1075 = metadata !{i64 1060}
!1076 = metadata !{i64 1061}
!1077 = metadata !{i64 1062}
!1078 = metadata !{i64 1063}
!1079 = metadata !{i64 1064}
!1080 = metadata !{i64 1065}
!1081 = metadata !{i64 1066}
!1082 = metadata !{i64 1067}
!1083 = metadata !{i64 1068}
!1084 = metadata !{i64 1069}
!1085 = metadata !{i64 1070}
!1086 = metadata !{i64 1071}
!1087 = metadata !{i64 1072}
!1088 = metadata !{i64 1073}
!1089 = metadata !{i64 1074}
!1090 = metadata !{i64 1075}
!1091 = metadata !{i64 1076}
!1092 = metadata !{i64 1077}
!1093 = metadata !{i64 1078}
!1094 = metadata !{i64 1079}
!1095 = metadata !{i64 1080}
!1096 = metadata !{i64 1081}
!1097 = metadata !{i64 1082}
!1098 = metadata !{i64 1083}
!1099 = metadata !{i64 1084}
!1100 = metadata !{i64 1085}
!1101 = metadata !{i64 1086}
!1102 = metadata !{i64 1087}
!1103 = metadata !{i64 1088}
!1104 = metadata !{i64 1089}
!1105 = metadata !{i64 1090}
!1106 = metadata !{i64 1091}
!1107 = metadata !{i64 1092}
!1108 = metadata !{i64 1093}
!1109 = metadata !{i64 1094}
!1110 = metadata !{i64 1095}
!1111 = metadata !{i64 1096}
!1112 = metadata !{i64 1097}
!1113 = metadata !{i64 1098}
!1114 = metadata !{i64 1099}
!1115 = metadata !{i64 1100}
!1116 = metadata !{i64 1101}
!1117 = metadata !{i64 1102}
!1118 = metadata !{i64 1103}
!1119 = metadata !{i64 1104}
!1120 = metadata !{i64 1105}
!1121 = metadata !{i64 1106}
!1122 = metadata !{i64 1107}
!1123 = metadata !{i64 1108}
!1124 = metadata !{i64 1109}
!1125 = metadata !{i64 1110}
!1126 = metadata !{i64 1111}
!1127 = metadata !{i64 1112}
!1128 = metadata !{i64 1113}
!1129 = metadata !{i64 1114}
!1130 = metadata !{i64 1115}
!1131 = metadata !{i64 1116}
!1132 = metadata !{i64 1117}
!1133 = metadata !{i64 1118}
!1134 = metadata !{i64 1119}
!1135 = metadata !{i64 1120}
!1136 = metadata !{i64 1121}
!1137 = metadata !{i64 1122}
!1138 = metadata !{i64 1123}
!1139 = metadata !{i64 1124}
!1140 = metadata !{i64 1125}
!1141 = metadata !{i64 1126}
!1142 = metadata !{i64 1127}
!1143 = metadata !{i64 1128}
!1144 = metadata !{i64 1129}
!1145 = metadata !{i64 1130}
!1146 = metadata !{i64 1131}
!1147 = metadata !{i64 1132}
!1148 = metadata !{i64 1133}
!1149 = metadata !{i64 1134}
!1150 = metadata !{i64 1135}
!1151 = metadata !{i64 1136}
!1152 = metadata !{i64 1137}
!1153 = metadata !{i64 1138}
!1154 = metadata !{i64 1139}
!1155 = metadata !{i64 1140}
!1156 = metadata !{i64 1141}
!1157 = metadata !{i64 1142}
!1158 = metadata !{i64 1143}
!1159 = metadata !{i64 1144}
!1160 = metadata !{i64 1145}
!1161 = metadata !{i64 1146}
!1162 = metadata !{i64 1147}
!1163 = metadata !{i64 1148}
!1164 = metadata !{i64 1149}
!1165 = metadata !{i64 1150}
!1166 = metadata !{i64 1151}
!1167 = metadata !{i64 1152}
!1168 = metadata !{i64 1153}
!1169 = metadata !{i64 1154}
!1170 = metadata !{i64 1155}
!1171 = metadata !{i64 1156}
!1172 = metadata !{i64 1157}
!1173 = metadata !{i64 1158}
!1174 = metadata !{i64 1159}
!1175 = metadata !{i64 1160}
!1176 = metadata !{i64 1161}
!1177 = metadata !{i64 1162}
!1178 = metadata !{i64 1163}
!1179 = metadata !{i64 1164}
!1180 = metadata !{i64 1165}
!1181 = metadata !{i64 1166}
!1182 = metadata !{i64 1167}
!1183 = metadata !{i64 1168}
!1184 = metadata !{i64 1169}
!1185 = metadata !{i64 1170}
!1186 = metadata !{i64 1171}
!1187 = metadata !{i64 1172}
!1188 = metadata !{i64 1173}
!1189 = metadata !{i64 1174}
!1190 = metadata !{i64 1175}
!1191 = metadata !{i64 1176}
!1192 = metadata !{i64 1177}
!1193 = metadata !{i64 1178}
!1194 = metadata !{i64 1179}
!1195 = metadata !{i64 1180}
!1196 = metadata !{i64 1181}
!1197 = metadata !{i64 1182}
!1198 = metadata !{i64 1183}
!1199 = metadata !{i64 1184}
!1200 = metadata !{i64 1185}
!1201 = metadata !{i64 1186}
!1202 = metadata !{i64 1187}
!1203 = metadata !{i64 1188}
!1204 = metadata !{i64 1189}
!1205 = metadata !{i64 1190}
!1206 = metadata !{i64 1191}
!1207 = metadata !{i64 1192}
!1208 = metadata !{i64 1193}
!1209 = metadata !{i64 1194}
!1210 = metadata !{i64 1195}
!1211 = metadata !{i64 1196}
!1212 = metadata !{i64 1197}
!1213 = metadata !{i64 1198}
!1214 = metadata !{i64 1199}
!1215 = metadata !{i64 1200}
!1216 = metadata !{i64 1201}
!1217 = metadata !{i64 1202}
!1218 = metadata !{i64 1203}
!1219 = metadata !{i64 1204}
!1220 = metadata !{i64 1205}
!1221 = metadata !{i64 1206}
!1222 = metadata !{i64 1207}
!1223 = metadata !{i64 1208}
!1224 = metadata !{i64 1209}
!1225 = metadata !{i64 1210}
!1226 = metadata !{i64 1211}
!1227 = metadata !{i64 1212}
!1228 = metadata !{i64 1213}
!1229 = metadata !{i64 1214}
!1230 = metadata !{i64 1215}
!1231 = metadata !{i64 1216}
!1232 = metadata !{i64 1217}
!1233 = metadata !{i64 1218}
!1234 = metadata !{i64 1219}
!1235 = metadata !{i64 1220}
!1236 = metadata !{i64 1221}
!1237 = metadata !{i64 1222}
!1238 = metadata !{i64 1223}
!1239 = metadata !{i64 1224}
!1240 = metadata !{i64 1225}
!1241 = metadata !{i64 1226}
!1242 = metadata !{i64 1227}
!1243 = metadata !{i64 1228}
!1244 = metadata !{i64 1229}
!1245 = metadata !{i64 1230}
!1246 = metadata !{i64 1231}
!1247 = metadata !{i64 1232}
!1248 = metadata !{i64 1233}
!1249 = metadata !{i64 1234}
!1250 = metadata !{i64 1235}
!1251 = metadata !{metadata !3, metadata !3, i64 0}
!1252 = metadata !{i64 1236}
!1253 = metadata !{i64 1237}
!1254 = metadata !{i64 1238}
!1255 = metadata !{i64 1239}
!1256 = metadata !{i64 1240}
!1257 = metadata !{i64 1241}
!1258 = metadata !{i64 1242}
!1259 = metadata !{i64 1243}
!1260 = metadata !{i64 1244}
!1261 = metadata !{i64 1245}
!1262 = metadata !{i64 1246}
!1263 = metadata !{i64 1247}
!1264 = metadata !{i64 1248}
!1265 = metadata !{i64 1249}
!1266 = metadata !{i64 1250}
!1267 = metadata !{i64 1251}
!1268 = metadata !{i64 1252}
!1269 = metadata !{i64 1253}
!1270 = metadata !{i64 1254}
!1271 = metadata !{i64 1255}
!1272 = metadata !{i64 1256}
!1273 = metadata !{i64 1257}
!1274 = metadata !{i64 1258}
!1275 = metadata !{i64 1259}
!1276 = metadata !{i64 1260}
!1277 = metadata !{i64 1261}
!1278 = metadata !{i64 1262}
!1279 = metadata !{i64 1263}
!1280 = metadata !{i64 1264}
!1281 = metadata !{i64 1265}
!1282 = metadata !{i64 1266}
!1283 = metadata !{i64 1267}
!1284 = metadata !{i64 1268}
!1285 = metadata !{i64 1269}
!1286 = metadata !{i64 1270}
!1287 = metadata !{i64 1271}
!1288 = metadata !{i64 1272}
!1289 = metadata !{i64 1273}
!1290 = metadata !{i64 1274}
!1291 = metadata !{i64 1275}
!1292 = metadata !{i64 1276}
!1293 = metadata !{i64 1277}
!1294 = metadata !{i64 1278}
!1295 = metadata !{i64 1279}
!1296 = metadata !{i64 1280}
!1297 = metadata !{i64 1281}
!1298 = metadata !{i64 1282}
!1299 = metadata !{i64 1283}
!1300 = metadata !{i64 1284}
!1301 = metadata !{i64 1285}
!1302 = metadata !{i64 1286}
!1303 = metadata !{i64 1287}
!1304 = metadata !{i64 1288}
!1305 = metadata !{i64 1289}
!1306 = metadata !{i64 1290}
!1307 = metadata !{i64 1291}
!1308 = metadata !{i64 1292}
!1309 = metadata !{i64 1293}
!1310 = metadata !{i64 1294}
!1311 = metadata !{i64 1295}
!1312 = metadata !{i64 1296}
!1313 = metadata !{i64 1297}
!1314 = metadata !{i64 1298}
!1315 = metadata !{i64 1299}
!1316 = metadata !{i64 1300}
!1317 = metadata !{i64 1301}
!1318 = metadata !{i64 1302}
!1319 = metadata !{i64 1303}
!1320 = metadata !{i64 1304}
!1321 = metadata !{i64 1305}
!1322 = metadata !{i64 1306}
!1323 = metadata !{i64 1307}
!1324 = metadata !{i64 1308}
!1325 = metadata !{i64 1309}
!1326 = metadata !{i64 1310}
!1327 = metadata !{i64 1311}
!1328 = metadata !{i64 1312}
!1329 = metadata !{i64 1313}
!1330 = metadata !{i64 1314}
!1331 = metadata !{i64 1315}
!1332 = metadata !{i64 1316}
!1333 = metadata !{i64 1317}
!1334 = metadata !{i64 1318}
!1335 = metadata !{i64 1319}
!1336 = metadata !{i64 1320}
!1337 = metadata !{i64 1321}
!1338 = metadata !{i64 1322}
!1339 = metadata !{i64 1323}
!1340 = metadata !{i64 1324}
!1341 = metadata !{i64 1325}
!1342 = metadata !{i64 1326}
!1343 = metadata !{i64 1327}
!1344 = metadata !{i64 1328}
!1345 = metadata !{i64 1329}
!1346 = metadata !{i64 1330}
!1347 = metadata !{i64 1331}
!1348 = metadata !{i64 1332}
!1349 = metadata !{i64 1333}
!1350 = metadata !{i64 1334}
!1351 = metadata !{i64 1335}
!1352 = metadata !{i64 1336}
!1353 = metadata !{i64 1337}
!1354 = metadata !{i64 1338}
!1355 = metadata !{i64 1339}
!1356 = metadata !{i64 1340}
!1357 = metadata !{i64 1341}
!1358 = metadata !{i64 1342}
!1359 = metadata !{i64 1343}
!1360 = metadata !{i64 1344}
!1361 = metadata !{i64 1345}
!1362 = metadata !{i64 1346}
!1363 = metadata !{i64 1347}
!1364 = metadata !{i64 1348}
!1365 = metadata !{i64 1349}
!1366 = metadata !{i64 1350}
!1367 = metadata !{i64 1351}
!1368 = metadata !{i64 1352}
!1369 = metadata !{i64 1353}
!1370 = metadata !{i64 1354}
!1371 = metadata !{i64 1355}
!1372 = metadata !{i64 1356}
!1373 = metadata !{i64 1357}
!1374 = metadata !{i64 1358}
!1375 = metadata !{i64 1359}
!1376 = metadata !{i64 1360}
!1377 = metadata !{i64 1361}
!1378 = metadata !{i64 1362}
!1379 = metadata !{i64 1363}
!1380 = metadata !{i64 1364}
!1381 = metadata !{i64 1365}
!1382 = metadata !{i64 1366}
!1383 = metadata !{i64 1367}
!1384 = metadata !{i64 1368}
!1385 = metadata !{i64 1369}
!1386 = metadata !{i64 1370}
!1387 = metadata !{i64 1371}
!1388 = metadata !{i64 1372}
!1389 = metadata !{i64 1373}
!1390 = metadata !{i64 1374}
!1391 = metadata !{i64 1375}
!1392 = metadata !{i64 1376}
!1393 = metadata !{i64 1377}
!1394 = metadata !{i64 1378}
!1395 = metadata !{i64 1379}
!1396 = metadata !{i64 1380}
!1397 = metadata !{i64 1381}
!1398 = metadata !{i64 1382}
!1399 = metadata !{i64 1383}
!1400 = metadata !{i64 1384}
!1401 = metadata !{i64 1385}
!1402 = metadata !{i64 1386}
!1403 = metadata !{i64 1387}
!1404 = metadata !{i64 1388}
!1405 = metadata !{i64 1389}
!1406 = metadata !{i64 1390}
!1407 = metadata !{i64 1391}
!1408 = metadata !{i64 1392}
!1409 = metadata !{i64 1393}
!1410 = metadata !{i64 1394}
!1411 = metadata !{i64 1395}
!1412 = metadata !{i64 1396}
!1413 = metadata !{i64 1397}
!1414 = metadata !{i64 1398}
!1415 = metadata !{i64 1399}
!1416 = metadata !{i64 1400}
!1417 = metadata !{i64 1401}
!1418 = metadata !{i64 1402}
!1419 = metadata !{i64 1403}
!1420 = metadata !{i64 1404}
!1421 = metadata !{i64 1405}
!1422 = metadata !{i64 1406}
!1423 = metadata !{i64 1407}
!1424 = metadata !{i64 1408}
!1425 = metadata !{i64 1409}
!1426 = metadata !{i64 1410}
!1427 = metadata !{i64 1411}
!1428 = metadata !{i64 1412}
!1429 = metadata !{i64 1413}
!1430 = metadata !{i64 1414}
!1431 = metadata !{i64 1415}
!1432 = metadata !{i64 1416}
!1433 = metadata !{i64 1417}
!1434 = metadata !{i64 1418}
!1435 = metadata !{i64 1419}
!1436 = metadata !{i64 1420}
!1437 = metadata !{i64 1421}
!1438 = metadata !{i64 1422}
!1439 = metadata !{i64 1423}
!1440 = metadata !{i64 1424}
!1441 = metadata !{i64 1425}
!1442 = metadata !{i64 1426}
!1443 = metadata !{i64 1427}
!1444 = metadata !{i64 1428}
!1445 = metadata !{i64 1429}
!1446 = metadata !{i64 1430}
!1447 = metadata !{i64 1431}
!1448 = metadata !{i64 1432}
!1449 = metadata !{i64 1433}
!1450 = metadata !{i64 1434}
!1451 = metadata !{i64 1435}
!1452 = metadata !{i64 1436}
!1453 = metadata !{i64 1437}
!1454 = metadata !{i64 1438}
!1455 = metadata !{i64 1439}
!1456 = metadata !{i64 1440}
!1457 = metadata !{i64 1441}
!1458 = metadata !{i64 1442}
!1459 = metadata !{i64 1443}
!1460 = metadata !{i64 1444}
!1461 = metadata !{i64 1445}
!1462 = metadata !{i64 1446}
!1463 = metadata !{i64 1447}
!1464 = metadata !{i64 1448}
!1465 = metadata !{i64 1449}
!1466 = metadata !{i64 1450}
!1467 = metadata !{i64 1451}
!1468 = metadata !{i64 1452}
!1469 = metadata !{i64 1453}
!1470 = metadata !{i64 1454}
!1471 = metadata !{i64 1455}
!1472 = metadata !{i64 1456}
!1473 = metadata !{i64 1457}
!1474 = metadata !{i64 1458}
!1475 = metadata !{i64 1459}
!1476 = metadata !{i64 1460}
!1477 = metadata !{i64 1461}
!1478 = metadata !{i64 1462}
!1479 = metadata !{i64 1463}
!1480 = metadata !{i64 1464}
!1481 = metadata !{i64 1465}
!1482 = metadata !{i64 1466}
!1483 = metadata !{i64 1467}
!1484 = metadata !{i64 1468}
!1485 = metadata !{i64 1469}
!1486 = metadata !{i64 1470}
!1487 = metadata !{i64 1471}
!1488 = metadata !{i64 1472}
!1489 = metadata !{i64 1473}
!1490 = metadata !{i64 1474}
!1491 = metadata !{i64 1475}
!1492 = metadata !{i64 1476}
!1493 = metadata !{i64 1477}
!1494 = metadata !{i64 1478}
!1495 = metadata !{i64 1479}
!1496 = metadata !{i64 1480}
!1497 = metadata !{i64 1481}
!1498 = metadata !{i64 1482}
!1499 = metadata !{i64 1483}
!1500 = metadata !{i64 1484}
!1501 = metadata !{i64 1485}
!1502 = metadata !{i64 1486}
!1503 = metadata !{i64 1487}
!1504 = metadata !{i64 1488}
!1505 = metadata !{i64 1489}
!1506 = metadata !{i64 1490}
!1507 = metadata !{i64 1491}
!1508 = metadata !{i64 1492}
!1509 = metadata !{i64 1493}
!1510 = metadata !{i64 1494}
!1511 = metadata !{i64 1495}
!1512 = metadata !{i64 1496}
!1513 = metadata !{i64 1497}
!1514 = metadata !{i64 1498}
!1515 = metadata !{i64 1499}
!1516 = metadata !{i64 1500}
!1517 = metadata !{i64 1501}
!1518 = metadata !{i64 1502}
!1519 = metadata !{i64 1503}
!1520 = metadata !{i64 1504}
!1521 = metadata !{i64 1505}
!1522 = metadata !{i64 1506}
!1523 = metadata !{i64 1507}
!1524 = metadata !{i64 1508}
!1525 = metadata !{i64 1509}
!1526 = metadata !{i64 1510}
!1527 = metadata !{i64 1511}
!1528 = metadata !{i64 1512}
!1529 = metadata !{i64 1513}
!1530 = metadata !{i64 1514}
!1531 = metadata !{i64 1515}
!1532 = metadata !{i64 1516}
!1533 = metadata !{i64 1517}
!1534 = metadata !{i64 1518}
!1535 = metadata !{i64 1519}
!1536 = metadata !{i64 1520}
!1537 = metadata !{i64 1521}
!1538 = metadata !{i64 1522}
!1539 = metadata !{i64 1523}
!1540 = metadata !{i64 1524}
!1541 = metadata !{i64 1525}
!1542 = metadata !{i64 1526}
!1543 = metadata !{i64 1527}
!1544 = metadata !{i64 1528}
!1545 = metadata !{i64 1529}
!1546 = metadata !{i64 1530}
!1547 = metadata !{i64 1531}
!1548 = metadata !{i64 1532}
!1549 = metadata !{i64 1533}
!1550 = metadata !{i64 1534}
!1551 = metadata !{i64 1535}
!1552 = metadata !{i64 1536}
!1553 = metadata !{i64 1537}
!1554 = metadata !{i64 1538}
!1555 = metadata !{i64 1539}
!1556 = metadata !{i64 1540}
!1557 = metadata !{i64 1541}
!1558 = metadata !{i64 1542}
!1559 = metadata !{i64 1543}
!1560 = metadata !{i64 1544}
!1561 = metadata !{i64 1545}
!1562 = metadata !{i64 1546}
!1563 = metadata !{i64 1547}
!1564 = metadata !{i64 1548}
!1565 = metadata !{i64 1549}
!1566 = metadata !{i64 1550}
!1567 = metadata !{i64 1551}
!1568 = metadata !{i64 1552}
!1569 = metadata !{i64 1553}
!1570 = metadata !{i64 1554}
!1571 = metadata !{i64 1555}
!1572 = metadata !{i64 1556}
!1573 = metadata !{i64 1557}
!1574 = metadata !{i64 1558}
!1575 = metadata !{i64 1559}
!1576 = metadata !{i64 1560}
!1577 = metadata !{i64 1561}
!1578 = metadata !{i64 1562}
!1579 = metadata !{i64 1563}
!1580 = metadata !{i64 1564}
!1581 = metadata !{i64 1565}
!1582 = metadata !{i64 1566}
!1583 = metadata !{i64 1567}
!1584 = metadata !{i64 1568}
!1585 = metadata !{i64 1569}
!1586 = metadata !{i64 1570}
!1587 = metadata !{i64 1571}
!1588 = metadata !{i64 1572}
!1589 = metadata !{i64 1573}
!1590 = metadata !{i64 1574}
!1591 = metadata !{i64 1575}
!1592 = metadata !{i64 1576}
!1593 = metadata !{i64 1577}
!1594 = metadata !{i64 1578}
!1595 = metadata !{i64 1579}
!1596 = metadata !{i64 1580}
!1597 = metadata !{i64 1581}
!1598 = metadata !{i64 1582}
!1599 = metadata !{i64 1583}
!1600 = metadata !{i64 1584}
!1601 = metadata !{i64 1585}
!1602 = metadata !{i64 1586}
!1603 = metadata !{i64 1587}
!1604 = metadata !{i64 1588}
!1605 = metadata !{i64 1589}
!1606 = metadata !{i64 1590}
!1607 = metadata !{i64 1591}
!1608 = metadata !{i64 1592}
!1609 = metadata !{i64 1593}
!1610 = metadata !{i64 1594}
!1611 = metadata !{i64 1595}
!1612 = metadata !{i64 1596}
!1613 = metadata !{i64 1597}
!1614 = metadata !{i64 1598}
!1615 = metadata !{i64 1599}
!1616 = metadata !{i64 1600}
!1617 = metadata !{i64 1601}
!1618 = metadata !{i64 1602}
!1619 = metadata !{i64 1603}
!1620 = metadata !{i64 1604}
!1621 = metadata !{i64 1605}
!1622 = metadata !{i64 1606}
!1623 = metadata !{i64 1607}
!1624 = metadata !{i64 1608}
!1625 = metadata !{i64 1609}
!1626 = metadata !{i64 1610}
!1627 = metadata !{i64 1611}
!1628 = metadata !{i64 1612}
!1629 = metadata !{i64 1613}
!1630 = metadata !{i64 1614}
!1631 = metadata !{i64 1615}
!1632 = metadata !{i64 1616}
!1633 = metadata !{i64 1617}
!1634 = metadata !{i64 1618}
!1635 = metadata !{i64 1619}
!1636 = metadata !{i64 1620}
!1637 = metadata !{i64 1621}
!1638 = metadata !{i64 1622}
!1639 = metadata !{i64 1623}
!1640 = metadata !{i64 1624}
!1641 = metadata !{i64 1625}
!1642 = metadata !{i64 1626}
!1643 = metadata !{i64 1627}
!1644 = metadata !{i64 1628}
!1645 = metadata !{i64 1629}
!1646 = metadata !{i64 1630}
!1647 = metadata !{i64 1631}
!1648 = metadata !{i64 1632}
!1649 = metadata !{i64 1633}
!1650 = metadata !{i64 1634}
!1651 = metadata !{i64 1635}
!1652 = metadata !{i64 1636}
!1653 = metadata !{i64 1637}
!1654 = metadata !{i64 1638}
!1655 = metadata !{i64 1639}
!1656 = metadata !{i64 1640}
!1657 = metadata !{i64 1641}
!1658 = metadata !{i64 1642}
!1659 = metadata !{i64 1643}
!1660 = metadata !{i64 1644}
!1661 = metadata !{i64 1645}
!1662 = metadata !{i64 1646}
!1663 = metadata !{i64 1647}
!1664 = metadata !{i64 1648}
!1665 = metadata !{i64 1649}
!1666 = metadata !{i64 1650}
!1667 = metadata !{i64 1651}
!1668 = metadata !{i64 1652}
!1669 = metadata !{i64 1653}
!1670 = metadata !{i64 1654}
!1671 = metadata !{i64 1655}
!1672 = metadata !{i64 1656}
!1673 = metadata !{i64 1657}
!1674 = metadata !{i64 1658}
!1675 = metadata !{i64 1659}
!1676 = metadata !{i64 1660}
!1677 = metadata !{i64 1661}
!1678 = metadata !{i64 1662}
!1679 = metadata !{i64 1663}
!1680 = metadata !{i64 1664}
!1681 = metadata !{i64 1665}
!1682 = metadata !{i64 1666}
!1683 = metadata !{i64 1667}
!1684 = metadata !{i64 1668}
!1685 = metadata !{i64 1669}
!1686 = metadata !{i64 1670}
!1687 = metadata !{i64 1671}
!1688 = metadata !{i64 1672}
!1689 = metadata !{i64 1673}
!1690 = metadata !{i64 1674}
!1691 = metadata !{i64 1675}
!1692 = metadata !{i64 1676}
!1693 = metadata !{i64 1677}
!1694 = metadata !{i64 1678}
!1695 = metadata !{i64 1679}
!1696 = metadata !{i64 1680}
!1697 = metadata !{i64 1681}
!1698 = metadata !{i64 1682}
!1699 = metadata !{i64 1683}
!1700 = metadata !{i64 1684}
!1701 = metadata !{i64 1685}
!1702 = metadata !{i64 1686}
!1703 = metadata !{i64 1687}
!1704 = metadata !{i64 1688}
!1705 = metadata !{i64 1689}
!1706 = metadata !{i64 1690}
!1707 = metadata !{i64 1691}
!1708 = metadata !{i64 1692}
!1709 = metadata !{i64 1693}
!1710 = metadata !{i64 1694}
!1711 = metadata !{i64 1695}
!1712 = metadata !{i64 1696}
!1713 = metadata !{i64 1697}
!1714 = metadata !{i64 1698}
!1715 = metadata !{i64 1699}
!1716 = metadata !{i64 1700}
!1717 = metadata !{i64 1701}
!1718 = metadata !{i64 1702}
!1719 = metadata !{i64 1703}
!1720 = metadata !{i64 1704}
!1721 = metadata !{i64 1705}
!1722 = metadata !{i64 1706}
!1723 = metadata !{i64 1707}
!1724 = metadata !{i64 1708}
!1725 = metadata !{i64 1709}
!1726 = metadata !{i64 1710}
!1727 = metadata !{i64 1711}
!1728 = metadata !{i64 1712}
!1729 = metadata !{i64 1713}
!1730 = metadata !{i64 1714}
!1731 = metadata !{i64 1715}
!1732 = metadata !{i64 1716}
!1733 = metadata !{i64 1717}
!1734 = metadata !{i64 1718}
!1735 = metadata !{i64 1719}
!1736 = metadata !{i64 1720}
!1737 = metadata !{i64 1721}
!1738 = metadata !{i64 1722}
!1739 = metadata !{i64 1723}
!1740 = metadata !{i64 1724}
!1741 = metadata !{i64 1725}
!1742 = metadata !{i64 1726}
!1743 = metadata !{i64 1727}
!1744 = metadata !{i64 1728}
!1745 = metadata !{i64 1729}
!1746 = metadata !{i64 1730}
!1747 = metadata !{i64 1731}
!1748 = metadata !{i64 1732}
!1749 = metadata !{i64 1733}
!1750 = metadata !{i64 1734}
!1751 = metadata !{i64 1735}
!1752 = metadata !{i64 1736}
!1753 = metadata !{i64 1737}
!1754 = metadata !{i64 1738}
!1755 = metadata !{i64 1739}
!1756 = metadata !{i64 1740}
!1757 = metadata !{i64 1741}
!1758 = metadata !{i64 1742}
!1759 = metadata !{i64 1743}
!1760 = metadata !{i64 1744}
!1761 = metadata !{i64 1745}
!1762 = metadata !{i64 1746}
!1763 = metadata !{i64 1747}
!1764 = metadata !{i64 1748}
!1765 = metadata !{i64 1749}
!1766 = metadata !{i64 1750}
!1767 = metadata !{i64 1751}
!1768 = metadata !{i64 1752}
!1769 = metadata !{i64 1753}
!1770 = metadata !{i64 1754}
!1771 = metadata !{i64 1755}
!1772 = metadata !{i64 1756}
!1773 = metadata !{i64 1757}
!1774 = metadata !{i64 1758}
!1775 = metadata !{i64 1759}
!1776 = metadata !{i64 1760}
!1777 = metadata !{i64 1761}
!1778 = metadata !{i64 1762}
!1779 = metadata !{i64 1763}
!1780 = metadata !{i64 1764}
!1781 = metadata !{i64 1765}
!1782 = metadata !{i64 1766}
!1783 = metadata !{i64 1767}
!1784 = metadata !{i64 1768}
!1785 = metadata !{i64 1769}
!1786 = metadata !{i64 1770}
!1787 = metadata !{i64 1771}
!1788 = metadata !{i64 1772}
!1789 = metadata !{i64 1773}
!1790 = metadata !{i64 1774}
!1791 = metadata !{i64 1775}
!1792 = metadata !{i64 1776}
!1793 = metadata !{i64 1777}
!1794 = metadata !{i64 1778}
!1795 = metadata !{i64 1779}
!1796 = metadata !{i64 1780}
!1797 = metadata !{i64 1781}
!1798 = metadata !{i64 1782}
!1799 = metadata !{i64 1783}
!1800 = metadata !{i64 1784}
!1801 = metadata !{i64 1785}
!1802 = metadata !{i64 1786}
!1803 = metadata !{i64 1787}
!1804 = metadata !{i64 1788}
!1805 = metadata !{i64 1789}
!1806 = metadata !{i64 1790}
!1807 = metadata !{i64 1791}
!1808 = metadata !{i64 1792}
!1809 = metadata !{i64 1793}
!1810 = metadata !{i64 1794}
!1811 = metadata !{i64 1795}
!1812 = metadata !{i64 1796}
!1813 = metadata !{i64 1797}
!1814 = metadata !{i64 1798}
!1815 = metadata !{i64 1799}
!1816 = metadata !{i64 1800}
!1817 = metadata !{i64 1801}
!1818 = metadata !{i64 1802}
!1819 = metadata !{i64 1803}
!1820 = metadata !{i64 1804}
!1821 = metadata !{i64 1805}
!1822 = metadata !{i64 1806}
!1823 = metadata !{i64 1807}
!1824 = metadata !{i64 1808}
!1825 = metadata !{i64 1809}
!1826 = metadata !{i64 1810}
!1827 = metadata !{i64 1811}
!1828 = metadata !{i64 1812}
!1829 = metadata !{i64 1813}
!1830 = metadata !{i64 1814}
!1831 = metadata !{i64 1815}
!1832 = metadata !{i64 1816}
!1833 = metadata !{i64 1817}
!1834 = metadata !{i64 1818}
!1835 = metadata !{i64 1819}
!1836 = metadata !{i64 1820}
!1837 = metadata !{i64 1821}
!1838 = metadata !{i64 1822}
!1839 = metadata !{i64 1823}
!1840 = metadata !{i64 1824}
!1841 = metadata !{i64 1825}
!1842 = metadata !{i64 1826}
!1843 = metadata !{i64 1827}
!1844 = metadata !{i64 1828}
!1845 = metadata !{i64 1829}
!1846 = metadata !{i64 1830}
!1847 = metadata !{i64 1831}
!1848 = metadata !{i64 1832}
!1849 = metadata !{i64 1833}
!1850 = metadata !{i64 1834}
!1851 = metadata !{i64 1835}
!1852 = metadata !{i64 1836}
!1853 = metadata !{i64 1837}
!1854 = metadata !{i64 1838}
!1855 = metadata !{i64 1839}
!1856 = metadata !{i64 1840}
!1857 = metadata !{i64 1841}
!1858 = metadata !{i64 1842}
!1859 = metadata !{i64 1843}
!1860 = metadata !{i64 1844}
!1861 = metadata !{i64 1845}
!1862 = metadata !{i64 1846}
!1863 = metadata !{i64 1847}
!1864 = metadata !{i64 1848}
!1865 = metadata !{i64 1849}
!1866 = metadata !{i64 1850}
!1867 = metadata !{i64 1851}
!1868 = metadata !{i64 1852}
!1869 = metadata !{i64 1853}
!1870 = metadata !{i64 1854}
!1871 = metadata !{i64 1855}
!1872 = metadata !{i64 1856}
!1873 = metadata !{i64 1857}
!1874 = metadata !{i64 1858}
!1875 = metadata !{i64 1859}
!1876 = metadata !{i64 1860}
!1877 = metadata !{i64 1861}
!1878 = metadata !{i64 1862}
!1879 = metadata !{i64 1863}
!1880 = metadata !{i64 1864}
!1881 = metadata !{i64 1865}
!1882 = metadata !{i64 1866}
!1883 = metadata !{i64 1867}
!1884 = metadata !{i64 1868}
!1885 = metadata !{i64 1869}
!1886 = metadata !{i64 1870}
!1887 = metadata !{i64 1871}
!1888 = metadata !{i64 1872}
!1889 = metadata !{i64 1873}
!1890 = metadata !{i64 1874}
!1891 = metadata !{i64 1875}
!1892 = metadata !{i64 1876}
!1893 = metadata !{i64 1877}
!1894 = metadata !{i64 1878}
!1895 = metadata !{i64 1879}
!1896 = metadata !{i64 1880}
!1897 = metadata !{i64 1881}
!1898 = metadata !{i64 1882}
!1899 = metadata !{i64 1883}
!1900 = metadata !{i64 1884}
!1901 = metadata !{i64 1885}
!1902 = metadata !{i64 1886}
!1903 = metadata !{i64 1887}
!1904 = metadata !{i64 1888}
!1905 = metadata !{i64 1889}
!1906 = metadata !{i64 1890}
!1907 = metadata !{i64 1891}
!1908 = metadata !{i64 1892}
!1909 = metadata !{i64 1893}
!1910 = metadata !{i64 1894}
!1911 = metadata !{i64 1895}
!1912 = metadata !{i64 1896}
!1913 = metadata !{i64 1897}
!1914 = metadata !{i64 1898}
!1915 = metadata !{i64 1899}
!1916 = metadata !{i64 1900}
!1917 = metadata !{i64 1901}
!1918 = metadata !{i64 1902}
!1919 = metadata !{i64 1903}
!1920 = metadata !{i64 1904}
!1921 = metadata !{i64 1905}
!1922 = metadata !{i64 1906}
!1923 = metadata !{i64 1907}
!1924 = metadata !{i64 1908}
!1925 = metadata !{i64 1909}
!1926 = metadata !{i64 1910}
!1927 = metadata !{i64 1911}
!1928 = metadata !{i64 1912}
!1929 = metadata !{i64 1913}
!1930 = metadata !{i64 1914}
!1931 = metadata !{i64 1915}
!1932 = metadata !{i64 1916}
!1933 = metadata !{i64 1917}
!1934 = metadata !{i64 1918}
!1935 = metadata !{i64 1919}
!1936 = metadata !{i64 1920}
!1937 = metadata !{i64 1921}
!1938 = metadata !{i64 1922}
!1939 = metadata !{i64 1923}
!1940 = metadata !{i64 1924}
!1941 = metadata !{i64 1925}
!1942 = metadata !{i64 1926}
!1943 = metadata !{i64 1927}
!1944 = metadata !{i64 1928}
!1945 = metadata !{i64 1929}
!1946 = metadata !{i64 1930}
!1947 = metadata !{i64 1931}
!1948 = metadata !{i64 1932}
!1949 = metadata !{i64 1933}
!1950 = metadata !{i64 1934}
!1951 = metadata !{i64 1935}
!1952 = metadata !{i64 1936}
!1953 = metadata !{i64 1937}
!1954 = metadata !{i64 1938}
!1955 = metadata !{i64 1939}
!1956 = metadata !{i64 1940}
!1957 = metadata !{i64 1941}
!1958 = metadata !{i64 1942}
!1959 = metadata !{i64 1943}
!1960 = metadata !{i64 1944}
!1961 = metadata !{i64 1945}
!1962 = metadata !{i64 1946}
!1963 = metadata !{i64 1947}
!1964 = metadata !{i64 1948}
!1965 = metadata !{i64 1949}
!1966 = metadata !{i64 1950}
!1967 = metadata !{i64 1951}
!1968 = metadata !{i64 1952}
!1969 = metadata !{i64 1953}
!1970 = metadata !{i64 1954}
!1971 = metadata !{i64 1955}
!1972 = metadata !{i64 1956}
!1973 = metadata !{i64 1957}
!1974 = metadata !{i64 1958}
!1975 = metadata !{i64 1959}
!1976 = metadata !{i64 1960}
!1977 = metadata !{i64 1961}
!1978 = metadata !{i64 1962}
!1979 = metadata !{i64 1963}
!1980 = metadata !{i64 1964}
!1981 = metadata !{i64 1965}
!1982 = metadata !{i64 1966}
!1983 = metadata !{i64 1967}
!1984 = metadata !{i64 1968}
!1985 = metadata !{i64 1969}
!1986 = metadata !{i64 1970}
!1987 = metadata !{i64 1971}
!1988 = metadata !{i64 1972}
!1989 = metadata !{i64 1973}
!1990 = metadata !{i64 1974}
!1991 = metadata !{i64 1975}
!1992 = metadata !{i64 1976}
!1993 = metadata !{i64 1977}
!1994 = metadata !{i64 1978}
!1995 = metadata !{i64 1979}
!1996 = metadata !{i64 1980}
!1997 = metadata !{i64 1981}
!1998 = metadata !{i64 1982}
!1999 = metadata !{i64 1983}
!2000 = metadata !{i64 1984}
!2001 = metadata !{i64 1985}
!2002 = metadata !{i64 1986}
!2003 = metadata !{i64 1987}
!2004 = metadata !{i64 1988}
!2005 = metadata !{i64 1989}
!2006 = metadata !{i64 1990}
!2007 = metadata !{i64 1991}
!2008 = metadata !{i64 1992}
!2009 = metadata !{i64 1993}
!2010 = metadata !{i64 1994}
!2011 = metadata !{i64 1995}
!2012 = metadata !{i64 1996}
!2013 = metadata !{i64 1997}
!2014 = metadata !{i64 1998}
!2015 = metadata !{i64 1999}
!2016 = metadata !{i64 2000}
!2017 = metadata !{i64 2001}
!2018 = metadata !{i64 2002}
!2019 = metadata !{i64 2003}
!2020 = metadata !{i64 2004}
!2021 = metadata !{i64 2005}
!2022 = metadata !{i64 2006}
!2023 = metadata !{i64 2007}
!2024 = metadata !{i64 2008}
!2025 = metadata !{i64 2009}
!2026 = metadata !{i64 2010}
!2027 = metadata !{i64 2011}
!2028 = metadata !{i64 2012}
!2029 = metadata !{i64 2013}
!2030 = metadata !{i64 2014}
!2031 = metadata !{i64 2015}
!2032 = metadata !{i64 2016}
!2033 = metadata !{i64 2017}
!2034 = metadata !{i64 2018}
!2035 = metadata !{i64 2019}
!2036 = metadata !{i64 2020}
!2037 = metadata !{i64 2021}
!2038 = metadata !{i64 2022}
!2039 = metadata !{i64 2023}
!2040 = metadata !{i64 2024}
!2041 = metadata !{i64 2025}
!2042 = metadata !{i64 2026}
!2043 = metadata !{i64 2027}
!2044 = metadata !{i64 2028}
!2045 = metadata !{i64 2029}
!2046 = metadata !{i64 2030}
!2047 = metadata !{i64 2031}
!2048 = metadata !{i64 2032}
!2049 = metadata !{i64 2033}
!2050 = metadata !{i64 2034}
!2051 = metadata !{i64 2035}
!2052 = metadata !{i64 2036}
!2053 = metadata !{i64 2037}
!2054 = metadata !{i64 2038}
!2055 = metadata !{i64 2039}
!2056 = metadata !{i64 2040}
!2057 = metadata !{i64 2041}
!2058 = metadata !{i64 2042}
!2059 = metadata !{i64 2043}
!2060 = metadata !{i64 2044}
!2061 = metadata !{i64 2045}
!2062 = metadata !{i64 2046}
!2063 = metadata !{i64 2047}
!2064 = metadata !{i64 2048}
!2065 = metadata !{i64 2049}
!2066 = metadata !{i64 2050}
!2067 = metadata !{i64 2051}
!2068 = metadata !{i64 2052}
!2069 = metadata !{i64 2053}
!2070 = metadata !{i64 2054}
!2071 = metadata !{i64 2055}
!2072 = metadata !{i64 2056}
!2073 = metadata !{i64 2057}
!2074 = metadata !{i64 2058}
!2075 = metadata !{i64 2059}
!2076 = metadata !{i64 2060}
!2077 = metadata !{i64 2061}
!2078 = metadata !{i64 2062}
!2079 = metadata !{i64 2063}
!2080 = metadata !{i64 2064}
!2081 = metadata !{i64 2065}
!2082 = metadata !{i64 2066}
!2083 = metadata !{i64 2067}
!2084 = metadata !{i64 2068}
!2085 = metadata !{i64 2069}
!2086 = metadata !{i64 2070}
!2087 = metadata !{i64 2071}
!2088 = metadata !{i64 2072}
!2089 = metadata !{i64 2073}
!2090 = metadata !{i64 2074}
!2091 = metadata !{i64 2075}
!2092 = metadata !{i64 2076}
!2093 = metadata !{i64 2077}
!2094 = metadata !{i64 2078}
!2095 = metadata !{i64 2079}
!2096 = metadata !{i64 2080}
!2097 = metadata !{i64 2081}
!2098 = metadata !{i64 2082}
!2099 = metadata !{i64 2083}
!2100 = metadata !{i64 2084}
!2101 = metadata !{i64 2085}
!2102 = metadata !{i64 2086}
!2103 = metadata !{i64 2087}
!2104 = metadata !{i64 2088}
!2105 = metadata !{i64 2089}
!2106 = metadata !{i64 2090}
!2107 = metadata !{i64 2091}
!2108 = metadata !{i64 2092}
!2109 = metadata !{i64 2093}
!2110 = metadata !{metadata !2111, metadata !24, i64 8}
!2111 = metadata !{metadata !"quantum_matrix_struct", metadata !2, i64 0, metadata !2, i64 4, metadata !24, i64 8}
!2112 = metadata !{i64 2094}
!2113 = metadata !{i64 2095}
!2114 = metadata !{i64 2096}
!2115 = metadata !{i64 2097}
!2116 = metadata !{i64 2098}
!2117 = metadata !{i64 2099}
!2118 = metadata !{i64 2100}
!2119 = metadata !{i64 2101}
!2120 = metadata !{i64 2102}
!2121 = metadata !{i64 2103}
!2122 = metadata !{i64 2104}
!2123 = metadata !{i64 2105}
!2124 = metadata !{i64 2106}
!2125 = metadata !{i64 2107}
!2126 = metadata !{i64 2108}
!2127 = metadata !{i64 2109}
!2128 = metadata !{i64 2110}
!2129 = metadata !{i64 2111}
!2130 = metadata !{i64 2112}
!2131 = metadata !{i64 2113}
!2132 = metadata !{i64 2114}
!2133 = metadata !{i64 2115}
!2134 = metadata !{i64 2116}
!2135 = metadata !{i64 2117}
!2136 = metadata !{i64 2118}
!2137 = metadata !{i64 2119}
!2138 = metadata !{i64 2120}
!2139 = metadata !{i64 2121}
!2140 = metadata !{i64 2122}
!2141 = metadata !{i64 2123}
!2142 = metadata !{i64 2124}
!2143 = metadata !{i64 2125}
!2144 = metadata !{i64 2126}
!2145 = metadata !{i64 2127}
!2146 = metadata !{i64 2128}
!2147 = metadata !{i64 2129}
!2148 = metadata !{i64 2130}
!2149 = metadata !{i64 2131}
!2150 = metadata !{i64 2132}
!2151 = metadata !{i64 2133}
!2152 = metadata !{i64 2134}
!2153 = metadata !{i64 2135}
!2154 = metadata !{i64 2136}
!2155 = metadata !{i64 2137}
!2156 = metadata !{i64 2138}
!2157 = metadata !{i64 2139}
!2158 = metadata !{i64 2140}
!2159 = metadata !{i64 2141}
!2160 = metadata !{i64 2142}
!2161 = metadata !{i64 2143}
!2162 = metadata !{i64 2144}
!2163 = metadata !{i64 2145}
!2164 = metadata !{i64 2146}
!2165 = metadata !{i64 2147}
!2166 = metadata !{i64 2148}
!2167 = metadata !{i64 2149}
!2168 = metadata !{i64 2150}
!2169 = metadata !{i64 2151}
!2170 = metadata !{i64 2152}
!2171 = metadata !{i64 2153}
!2172 = metadata !{i64 2154}
!2173 = metadata !{i64 2155}
!2174 = metadata !{i64 2156}
!2175 = metadata !{i64 2157}
!2176 = metadata !{i64 2158}
!2177 = metadata !{i64 2159}
!2178 = metadata !{i64 2160}
!2179 = metadata !{i64 2161}
!2180 = metadata !{i64 2162}
!2181 = metadata !{i64 2163}
!2182 = metadata !{i64 2164}
!2183 = metadata !{i64 2165}
!2184 = metadata !{i64 2166}
!2185 = metadata !{i64 2167}
!2186 = metadata !{i64 2168}
!2187 = metadata !{i64 2169}
!2188 = metadata !{i64 2170}
!2189 = metadata !{i64 2171}
!2190 = metadata !{i64 2172}
!2191 = metadata !{i64 2173}
!2192 = metadata !{i64 2174}
!2193 = metadata !{i64 2175}
!2194 = metadata !{i64 2176}
!2195 = metadata !{i64 2177}
!2196 = metadata !{i64 2178}
!2197 = metadata !{i64 2179}
!2198 = metadata !{i64 2180}
!2199 = metadata !{i64 2181}
!2200 = metadata !{i64 2182}
!2201 = metadata !{i64 2183}
!2202 = metadata !{i64 2184}
!2203 = metadata !{i64 2185}
!2204 = metadata !{i64 2186}
!2205 = metadata !{i64 2187}
!2206 = metadata !{i64 2188}
!2207 = metadata !{i64 2189}
!2208 = metadata !{i64 2190}
!2209 = metadata !{i64 2191}
!2210 = metadata !{i64 2192}
!2211 = metadata !{i64 2193}
!2212 = metadata !{i64 2194}
!2213 = metadata !{i64 2195}
!2214 = metadata !{i64 2196}
!2215 = metadata !{i64 2197}
!2216 = metadata !{i64 2198}
!2217 = metadata !{i64 2199}
!2218 = metadata !{i64 2200}
!2219 = metadata !{i64 2201}
!2220 = metadata !{i64 2202}
!2221 = metadata !{i64 2203}
!2222 = metadata !{i64 2204}
!2223 = metadata !{i64 2205}
!2224 = metadata !{i64 2206}
!2225 = metadata !{i64 2207}
!2226 = metadata !{i64 2208}
!2227 = metadata !{i64 2209}
!2228 = metadata !{i64 2210}
!2229 = metadata !{i64 2211}
!2230 = metadata !{i64 2212}
!2231 = metadata !{i64 2213}
!2232 = metadata !{i64 2214}
!2233 = metadata !{i64 2215}
!2234 = metadata !{i64 2216}
!2235 = metadata !{i64 2217}
!2236 = metadata !{i64 2218}
!2237 = metadata !{i64 2219}
!2238 = metadata !{i64 2220}
!2239 = metadata !{i64 2221}
!2240 = metadata !{i64 2222}
!2241 = metadata !{i64 2223}
!2242 = metadata !{i64 2224}
!2243 = metadata !{i64 2225}
!2244 = metadata !{i64 2226}
!2245 = metadata !{i64 2227}
!2246 = metadata !{i64 2228}
!2247 = metadata !{i64 2229}
!2248 = metadata !{i64 2230}
!2249 = metadata !{i64 2231}
!2250 = metadata !{i64 2232}
!2251 = metadata !{i64 2233}
!2252 = metadata !{i64 2234}
!2253 = metadata !{i64 2235}
!2254 = metadata !{i64 2236}
!2255 = metadata !{i64 2237}
!2256 = metadata !{i64 2238}
!2257 = metadata !{i64 2239}
!2258 = metadata !{i64 2240}
!2259 = metadata !{i64 2241}
!2260 = metadata !{i64 2242}
!2261 = metadata !{i64 2243}
!2262 = metadata !{i64 2244}
!2263 = metadata !{i64 2245}
!2264 = metadata !{i64 2246}
!2265 = metadata !{i64 2247}
!2266 = metadata !{i64 2248}
!2267 = metadata !{i64 2249}
!2268 = metadata !{i64 2250}
!2269 = metadata !{i64 2251}
!2270 = metadata !{i64 2252}
!2271 = metadata !{i64 2253}
!2272 = metadata !{i64 2254}
!2273 = metadata !{i64 2255}
!2274 = metadata !{i64 2256}
!2275 = metadata !{i64 2257}
!2276 = metadata !{i64 2258}
!2277 = metadata !{i64 2259}
!2278 = metadata !{i64 2260}
!2279 = metadata !{i64 2261}
!2280 = metadata !{i64 2262}
!2281 = metadata !{i64 2263}
!2282 = metadata !{i64 2264}
!2283 = metadata !{i64 2265}
!2284 = metadata !{i64 2266}
!2285 = metadata !{i64 2267}
!2286 = metadata !{i64 2268}
!2287 = metadata !{i64 2269}
!2288 = metadata !{i64 2270}
!2289 = metadata !{i64 2271}
!2290 = metadata !{i64 2272}
!2291 = metadata !{i64 2273}
!2292 = metadata !{i64 2274}
!2293 = metadata !{i64 2275}
!2294 = metadata !{i64 2276}
!2295 = metadata !{i64 2277}
!2296 = metadata !{i64 2278}
!2297 = metadata !{i64 2279}
!2298 = metadata !{i64 2280}
!2299 = metadata !{i64 2281}
!2300 = metadata !{i64 2282}
!2301 = metadata !{i64 2283}
!2302 = metadata !{i64 2284}
!2303 = metadata !{i64 2285}
!2304 = metadata !{i64 2286}
!2305 = metadata !{i64 2287}
!2306 = metadata !{i64 2288}
!2307 = metadata !{i64 2289}
!2308 = metadata !{i64 2290}
!2309 = metadata !{i64 2291}
!2310 = metadata !{i64 2292}
!2311 = metadata !{i64 2293}
!2312 = metadata !{i64 2294}
!2313 = metadata !{i64 2295}
!2314 = metadata !{i64 2296}
!2315 = metadata !{i64 2297}
!2316 = metadata !{i64 2298}
!2317 = metadata !{i64 2299}
!2318 = metadata !{i64 2300}
!2319 = metadata !{i64 2301}
!2320 = metadata !{i64 2302}
!2321 = metadata !{i64 2303}
!2322 = metadata !{i64 2304}
!2323 = metadata !{i64 2305}
!2324 = metadata !{i64 2306}
!2325 = metadata !{i64 2307}
!2326 = metadata !{i64 2308}
!2327 = metadata !{i64 2309}
!2328 = metadata !{i64 2310}
!2329 = metadata !{i64 2311}
!2330 = metadata !{i64 2312}
!2331 = metadata !{i64 2313}
!2332 = metadata !{i64 2314}
!2333 = metadata !{i64 2315}
!2334 = metadata !{i64 2316}
!2335 = metadata !{i64 2317}
!2336 = metadata !{i64 2318}
!2337 = metadata !{i64 2319}
!2338 = metadata !{i64 2320}
!2339 = metadata !{i64 2321}
!2340 = metadata !{i64 2322}
!2341 = metadata !{i64 2323}
!2342 = metadata !{i64 2324}
!2343 = metadata !{i64 2325}
!2344 = metadata !{i64 2326}
!2345 = metadata !{i64 2327}
!2346 = metadata !{i64 2328}
!2347 = metadata !{i64 2329}
!2348 = metadata !{i64 2330}
!2349 = metadata !{i64 2331}
!2350 = metadata !{i64 2332}
!2351 = metadata !{i64 2333}
!2352 = metadata !{i64 2334}
!2353 = metadata !{i64 2335}
!2354 = metadata !{i64 2336}
!2355 = metadata !{i64 2337}
!2356 = metadata !{i64 2338}
!2357 = metadata !{i64 2339}
!2358 = metadata !{i64 2340}
!2359 = metadata !{i64 2341}
!2360 = metadata !{i64 2342}
!2361 = metadata !{i64 2343}
!2362 = metadata !{i64 2344}
!2363 = metadata !{i64 2345}
!2364 = metadata !{i64 2346}
!2365 = metadata !{i64 2347}
!2366 = metadata !{i64 2348}
!2367 = metadata !{i64 2349}
!2368 = metadata !{i64 2350}
!2369 = metadata !{i64 2351}
!2370 = metadata !{i64 2352}
!2371 = metadata !{i64 2353}
!2372 = metadata !{i64 2354}
!2373 = metadata !{i64 2355}
!2374 = metadata !{i64 2356}
!2375 = metadata !{i64 2357}
!2376 = metadata !{i64 2358}
!2377 = metadata !{i64 2359}
!2378 = metadata !{i64 2360}
!2379 = metadata !{i64 2361}
!2380 = metadata !{i64 2362}
!2381 = metadata !{i64 2363}
!2382 = metadata !{i64 2364}
!2383 = metadata !{i64 2365}
!2384 = metadata !{i64 2366}
!2385 = metadata !{i64 2367}
!2386 = metadata !{i64 2368}
!2387 = metadata !{i64 2369}
!2388 = metadata !{i64 2370}
!2389 = metadata !{i64 2371}
!2390 = metadata !{i64 2372}
!2391 = metadata !{i64 2373}
!2392 = metadata !{i64 2374}
!2393 = metadata !{i64 2375}
!2394 = metadata !{i64 2376}
!2395 = metadata !{i64 2377}
!2396 = metadata !{i64 2378}
!2397 = metadata !{i64 2379}
!2398 = metadata !{i64 2380}
!2399 = metadata !{i64 2381}
!2400 = metadata !{i64 2382}
!2401 = metadata !{i64 2383}
!2402 = metadata !{i64 2384}
!2403 = metadata !{i64 2385}
!2404 = metadata !{i64 2386}
!2405 = metadata !{i64 2387}
!2406 = metadata !{i64 2388}
!2407 = metadata !{i64 2389}
!2408 = metadata !{i64 2390}
!2409 = metadata !{i64 2391}
!2410 = metadata !{i64 2392}
!2411 = metadata !{i64 2393}
!2412 = metadata !{i64 2394}
!2413 = metadata !{i64 2395}
!2414 = metadata !{i64 2396}
!2415 = metadata !{i64 2397}
!2416 = metadata !{i64 2398}
!2417 = metadata !{i64 2399}
!2418 = metadata !{i64 2400}
!2419 = metadata !{i64 2401}
!2420 = metadata !{i64 2402}
!2421 = metadata !{i64 2403}
!2422 = metadata !{i64 2404}
!2423 = metadata !{i64 2405}
!2424 = metadata !{i64 2406}
!2425 = metadata !{i64 2407}
!2426 = metadata !{i64 2408}
!2427 = metadata !{i64 2409}
!2428 = metadata !{i64 2410}
!2429 = metadata !{i64 2411}
!2430 = metadata !{i64 2412}
!2431 = metadata !{i64 2413}
!2432 = metadata !{i64 2414}
!2433 = metadata !{i64 2415}
!2434 = metadata !{i64 2416}
!2435 = metadata !{i64 2417}
!2436 = metadata !{i64 2418}
!2437 = metadata !{i64 2419}
!2438 = metadata !{i64 2420}
!2439 = metadata !{i64 2421}
!2440 = metadata !{i64 2422}
!2441 = metadata !{i64 2423}
!2442 = metadata !{i64 2424}
!2443 = metadata !{i64 2425}
!2444 = metadata !{i64 2426}
!2445 = metadata !{i64 2427}
!2446 = metadata !{i64 2428}
!2447 = metadata !{i64 2429}
!2448 = metadata !{i64 2430}
!2449 = metadata !{i64 2431}
!2450 = metadata !{i64 2432}
!2451 = metadata !{i64 2433}
!2452 = metadata !{i64 2434}
!2453 = metadata !{i64 2435}
!2454 = metadata !{i64 2436}
!2455 = metadata !{i64 2437}
!2456 = metadata !{i64 2438}
!2457 = metadata !{i64 2439}
!2458 = metadata !{i64 2440}
!2459 = metadata !{i64 2441}
!2460 = metadata !{i64 2442}
!2461 = metadata !{i64 2443}
!2462 = metadata !{i64 2444}
!2463 = metadata !{i64 2445}
!2464 = metadata !{i64 2446}
!2465 = metadata !{i64 2447}
!2466 = metadata !{i64 2448}
!2467 = metadata !{i64 2449}
!2468 = metadata !{i64 2450}
!2469 = metadata !{i64 2451}
!2470 = metadata !{i64 2452}
!2471 = metadata !{i64 2453}
!2472 = metadata !{i64 2454}
!2473 = metadata !{i64 2455}
!2474 = metadata !{i64 2456}
!2475 = metadata !{i64 2457}
!2476 = metadata !{i64 2458}
!2477 = metadata !{i64 2459}
!2478 = metadata !{i64 2460}
!2479 = metadata !{i64 2461}
!2480 = metadata !{i64 2462}
!2481 = metadata !{i64 2463}
!2482 = metadata !{i64 2464}
!2483 = metadata !{i64 2465}
!2484 = metadata !{i64 2466}
!2485 = metadata !{i64 2467}
!2486 = metadata !{i64 2468}
!2487 = metadata !{i64 2469}
!2488 = metadata !{i64 2470}
!2489 = metadata !{i64 2471}
!2490 = metadata !{i64 2472}
!2491 = metadata !{i64 2473}
!2492 = metadata !{i64 2474}
!2493 = metadata !{i64 2475}
!2494 = metadata !{i64 2476}
!2495 = metadata !{i64 2477}
!2496 = metadata !{i64 2478}
!2497 = metadata !{i64 2479}
!2498 = metadata !{i64 2480}
!2499 = metadata !{i64 2481}
!2500 = metadata !{i64 2482}
!2501 = metadata !{i64 2483}
!2502 = metadata !{i64 2484}
!2503 = metadata !{i64 2485}
!2504 = metadata !{i64 2486}
!2505 = metadata !{i64 2487}
!2506 = metadata !{i64 2488}
!2507 = metadata !{i64 2489}
!2508 = metadata !{i64 2490}
!2509 = metadata !{i64 2491}
!2510 = metadata !{i64 2492}
!2511 = metadata !{i64 2493}
!2512 = metadata !{i64 2494}
!2513 = metadata !{i64 2495}
!2514 = metadata !{i64 2496}
!2515 = metadata !{i64 2497}
!2516 = metadata !{i64 2498}
!2517 = metadata !{i64 2499}
!2518 = metadata !{i64 2500}
!2519 = metadata !{i64 2501}
!2520 = metadata !{i64 2502}
!2521 = metadata !{i64 2503}
!2522 = metadata !{i64 2504}
!2523 = metadata !{i64 2505}
!2524 = metadata !{i64 2506}
!2525 = metadata !{i64 2507}
!2526 = metadata !{i64 2508}
!2527 = metadata !{i64 2509}
!2528 = metadata !{i64 2510}
!2529 = metadata !{i64 2511}
!2530 = metadata !{i64 2512}
!2531 = metadata !{i64 2513}
!2532 = metadata !{i64 2514}
!2533 = metadata !{i64 2515}
!2534 = metadata !{i64 2516}
!2535 = metadata !{i64 2517}
!2536 = metadata !{i64 2518}
!2537 = metadata !{i64 2519}
!2538 = metadata !{i64 2520}
!2539 = metadata !{i64 2521}
!2540 = metadata !{i64 2522}
!2541 = metadata !{i64 2523}
!2542 = metadata !{i64 2524}
!2543 = metadata !{i64 2525}
!2544 = metadata !{i64 2526}
!2545 = metadata !{i64 2527}
!2546 = metadata !{i64 2528}
!2547 = metadata !{i64 2529}
!2548 = metadata !{i64 2530}
!2549 = metadata !{i64 2531}
!2550 = metadata !{i64 2532}
!2551 = metadata !{i64 2533}
!2552 = metadata !{i64 2534}
!2553 = metadata !{i64 2535}
!2554 = metadata !{i64 2536}
!2555 = metadata !{i64 2537}
!2556 = metadata !{i64 2538}
!2557 = metadata !{i64 2539}
!2558 = metadata !{i64 2540}
!2559 = metadata !{i64 2541}
!2560 = metadata !{i64 2542}
!2561 = metadata !{i64 2543}
!2562 = metadata !{i64 2544}
!2563 = metadata !{i64 2545}
!2564 = metadata !{i64 2546}
!2565 = metadata !{i64 2547}
!2566 = metadata !{i64 2548}
!2567 = metadata !{i64 2549}
!2568 = metadata !{i64 2550}
!2569 = metadata !{i64 2551}
!2570 = metadata !{i64 2552}
!2571 = metadata !{i64 2553}
!2572 = metadata !{i64 2554}
!2573 = metadata !{i64 2555}
!2574 = metadata !{i64 2556}
!2575 = metadata !{i64 2557}
!2576 = metadata !{i64 2558}
!2577 = metadata !{i64 2559}
!2578 = metadata !{i64 2560}
!2579 = metadata !{i64 2561}
!2580 = metadata !{i64 2562}
!2581 = metadata !{i64 2563}
!2582 = metadata !{i64 2564}
!2583 = metadata !{i64 2565}
!2584 = metadata !{i64 2566}
!2585 = metadata !{i64 2567}
!2586 = metadata !{i64 2568}
!2587 = metadata !{i64 2569}
!2588 = metadata !{i64 2570}
!2589 = metadata !{i64 2571}
!2590 = metadata !{i64 2572}
!2591 = metadata !{i64 2573}
!2592 = metadata !{i64 2574}
!2593 = metadata !{i64 2575}
!2594 = metadata !{i64 2576}
!2595 = metadata !{i64 2577}
!2596 = metadata !{i64 2578}
!2597 = metadata !{i64 2579}
!2598 = metadata !{i64 2580}
!2599 = metadata !{i64 2581}
!2600 = metadata !{i64 2582}
!2601 = metadata !{i64 2583}
!2602 = metadata !{i64 2584}
!2603 = metadata !{i64 2585}
!2604 = metadata !{i64 2586}
!2605 = metadata !{i64 2587}
!2606 = metadata !{i64 2588}
!2607 = metadata !{i64 2589}
!2608 = metadata !{i64 2590}
!2609 = metadata !{i64 2591}
!2610 = metadata !{i64 2592}
!2611 = metadata !{i64 2593}
!2612 = metadata !{i64 2594}
!2613 = metadata !{i64 2595}
!2614 = metadata !{i64 2596}
!2615 = metadata !{i64 2597}
!2616 = metadata !{i64 2598}
!2617 = metadata !{i64 2599}
!2618 = metadata !{i64 2600}
!2619 = metadata !{i64 2601}
!2620 = metadata !{i64 2602}
!2621 = metadata !{i64 2603}
!2622 = metadata !{i64 2604}
!2623 = metadata !{i64 2605}
!2624 = metadata !{i64 2606}
!2625 = metadata !{i64 2607}
!2626 = metadata !{i64 2608}
!2627 = metadata !{i64 2609}
!2628 = metadata !{i64 2610}
!2629 = metadata !{i64 2611}
!2630 = metadata !{i64 2612}
!2631 = metadata !{i64 2613}
!2632 = metadata !{i64 2614}
!2633 = metadata !{i64 2615}
!2634 = metadata !{i64 2616}
!2635 = metadata !{i64 2617}
!2636 = metadata !{i64 2618}
!2637 = metadata !{i64 2619}
!2638 = metadata !{i64 2620}
!2639 = metadata !{i64 2621}
!2640 = metadata !{i64 2622}
!2641 = metadata !{i64 2623}
!2642 = metadata !{i64 2624}
!2643 = metadata !{i64 2625}
!2644 = metadata !{i64 2626}
!2645 = metadata !{i64 2627}
!2646 = metadata !{i64 2628}
!2647 = metadata !{i64 2629}
!2648 = metadata !{i64 2630}
!2649 = metadata !{i64 2631}
!2650 = metadata !{i64 2632}
!2651 = metadata !{i64 2633}
!2652 = metadata !{i64 2634}
!2653 = metadata !{i64 2635}
!2654 = metadata !{i64 2636}
!2655 = metadata !{i64 2637}
!2656 = metadata !{i64 2638}
!2657 = metadata !{i64 2639}
!2658 = metadata !{i64 2640}
!2659 = metadata !{i64 2641}
!2660 = metadata !{i64 2642}
!2661 = metadata !{i64 2643}
!2662 = metadata !{i64 2644}
!2663 = metadata !{i64 2645}
!2664 = metadata !{i64 2646}
!2665 = metadata !{i64 2647}
!2666 = metadata !{i64 2648}
!2667 = metadata !{i64 2649}
!2668 = metadata !{i64 2650}
!2669 = metadata !{i64 2651}
!2670 = metadata !{i64 2652}
!2671 = metadata !{i64 2653}
!2672 = metadata !{i64 2654}
!2673 = metadata !{i64 2655}
!2674 = metadata !{i64 2656}
!2675 = metadata !{i64 2657}
!2676 = metadata !{i64 2658}
!2677 = metadata !{i64 2659}
!2678 = metadata !{i64 2660}
!2679 = metadata !{i64 2661}
!2680 = metadata !{i64 2662}
!2681 = metadata !{i64 2663}
!2682 = metadata !{i64 2664}
!2683 = metadata !{i64 2665}
!2684 = metadata !{i64 2666}
!2685 = metadata !{i64 2667}
!2686 = metadata !{i64 2668}
!2687 = metadata !{i64 2669}
!2688 = metadata !{i64 2670}
!2689 = metadata !{i64 2671}
!2690 = metadata !{i64 2672}
!2691 = metadata !{i64 2673}
!2692 = metadata !{i64 2674}
!2693 = metadata !{i64 2675}
!2694 = metadata !{i64 2676}
!2695 = metadata !{i64 2677}
!2696 = metadata !{i64 2678}
!2697 = metadata !{i64 2679}
!2698 = metadata !{i64 2680}
!2699 = metadata !{i64 2681}
!2700 = metadata !{i64 2682}
!2701 = metadata !{i64 2683}
!2702 = metadata !{i64 2684}
!2703 = metadata !{i64 2685}
!2704 = metadata !{i64 2686}
!2705 = metadata !{i64 2687}
!2706 = metadata !{i64 2688}
!2707 = metadata !{i64 2689}
!2708 = metadata !{i64 2690}
!2709 = metadata !{i64 2691}
!2710 = metadata !{i64 2692}
!2711 = metadata !{i64 2693}
!2712 = metadata !{i64 2694}
!2713 = metadata !{i64 2695}
!2714 = metadata !{i64 2696}
!2715 = metadata !{i64 2697}
!2716 = metadata !{i64 2698}
!2717 = metadata !{i64 2699}
!2718 = metadata !{i64 2700}
!2719 = metadata !{i64 2701}
!2720 = metadata !{i64 2702}
!2721 = metadata !{i64 2703}
!2722 = metadata !{i64 2704}
!2723 = metadata !{i64 2705}
!2724 = metadata !{i64 2706}
!2725 = metadata !{i64 2707}
!2726 = metadata !{i64 2708}
!2727 = metadata !{i64 2709}
!2728 = metadata !{i64 2710}
!2729 = metadata !{i64 2711}
!2730 = metadata !{i64 2712}
!2731 = metadata !{i64 2713}
!2732 = metadata !{i64 2714}
!2733 = metadata !{i64 2715}
!2734 = metadata !{i64 2716}
!2735 = metadata !{i64 2717}
!2736 = metadata !{i64 2718}
!2737 = metadata !{i64 2719}
!2738 = metadata !{i64 2720}
!2739 = metadata !{i64 2721}
!2740 = metadata !{i64 2722}
!2741 = metadata !{i64 2723}
!2742 = metadata !{i64 2724}
!2743 = metadata !{i64 2725}
!2744 = metadata !{i64 2726}
!2745 = metadata !{i64 2727}
!2746 = metadata !{i64 2728}
!2747 = metadata !{i64 2729}
!2748 = metadata !{i64 2730}
!2749 = metadata !{i64 2731}
!2750 = metadata !{i64 2732}
!2751 = metadata !{i64 2733}
!2752 = metadata !{i64 2734}
!2753 = metadata !{i64 2735}
!2754 = metadata !{i64 2736}
!2755 = metadata !{i64 2737}
!2756 = metadata !{i64 2738}
!2757 = metadata !{i64 2739}
!2758 = metadata !{i64 2740}
!2759 = metadata !{i64 2741}
!2760 = metadata !{i64 2742}
!2761 = metadata !{i64 2743}
!2762 = metadata !{i64 2744}
!2763 = metadata !{i64 2745}
!2764 = metadata !{i64 2746}
!2765 = metadata !{i64 2747}
!2766 = metadata !{i64 2748}
!2767 = metadata !{i64 2749}
!2768 = metadata !{i64 2750}
!2769 = metadata !{i64 2751}
!2770 = metadata !{i64 2752}
!2771 = metadata !{i64 2753}
!2772 = metadata !{i64 2754}
!2773 = metadata !{i64 2755}
!2774 = metadata !{i64 2756}
!2775 = metadata !{i64 2757}
!2776 = metadata !{i64 2758}
!2777 = metadata !{i64 2759}
!2778 = metadata !{i64 2760}
!2779 = metadata !{i64 2761}
!2780 = metadata !{i64 2762}
!2781 = metadata !{i64 2763}
!2782 = metadata !{i64 2764}
!2783 = metadata !{i64 2765}
!2784 = metadata !{i64 2766}
!2785 = metadata !{i64 2767}
!2786 = metadata !{i64 2768}
!2787 = metadata !{i64 2769}
!2788 = metadata !{i64 2770}
!2789 = metadata !{i64 2771}
!2790 = metadata !{i64 2772}
!2791 = metadata !{i64 2773}
!2792 = metadata !{i64 2774}
!2793 = metadata !{i64 2775}
!2794 = metadata !{i64 2776}
!2795 = metadata !{i64 2777}
!2796 = metadata !{i64 2778}
!2797 = metadata !{i64 2779}
!2798 = metadata !{i64 2780}
!2799 = metadata !{i64 2781}
!2800 = metadata !{i64 2782}
!2801 = metadata !{i64 2783}
!2802 = metadata !{i64 2784}
!2803 = metadata !{i64 2785}
!2804 = metadata !{i64 2786}
!2805 = metadata !{i64 2787}
!2806 = metadata !{i64 2788}
!2807 = metadata !{i64 2789}
!2808 = metadata !{i64 2790}
!2809 = metadata !{i64 2791}
!2810 = metadata !{i64 2792}
!2811 = metadata !{i64 2793}
!2812 = metadata !{i64 2794}
!2813 = metadata !{i64 2795}
!2814 = metadata !{i64 2796}
!2815 = metadata !{i64 2797}
!2816 = metadata !{i64 2798}
!2817 = metadata !{i64 2799}
!2818 = metadata !{i64 2800}
!2819 = metadata !{i64 2801}
!2820 = metadata !{i64 2802}
!2821 = metadata !{i64 2803}
!2822 = metadata !{i64 2804}
!2823 = metadata !{i64 2805}
!2824 = metadata !{i64 2806}
!2825 = metadata !{i64 2807}
!2826 = metadata !{i64 2808}
!2827 = metadata !{i64 2809}
!2828 = metadata !{i64 2810}
!2829 = metadata !{i64 2811}
!2830 = metadata !{i64 2812}
!2831 = metadata !{i64 2813}
!2832 = metadata !{i64 2814}
!2833 = metadata !{i64 2815}
!2834 = metadata !{i64 2816}
!2835 = metadata !{i64 2817}
!2836 = metadata !{i64 2818}
!2837 = metadata !{i64 2819}
!2838 = metadata !{i64 2820}
!2839 = metadata !{i64 2821}
!2840 = metadata !{i64 2822}
!2841 = metadata !{i64 2823}
!2842 = metadata !{i64 2824}
!2843 = metadata !{i64 2825}
!2844 = metadata !{i64 2826}
!2845 = metadata !{i64 2827}
!2846 = metadata !{i64 2828}
!2847 = metadata !{i64 2829}
!2848 = metadata !{i64 2830}
!2849 = metadata !{i64 2831}
!2850 = metadata !{i64 2832}
!2851 = metadata !{i64 2833}
!2852 = metadata !{i64 2834}
!2853 = metadata !{i64 2835}
!2854 = metadata !{i64 2836}
!2855 = metadata !{i64 2837}
!2856 = metadata !{i64 2838}
!2857 = metadata !{i64 2839}
!2858 = metadata !{i64 2840}
!2859 = metadata !{i64 2841}
!2860 = metadata !{i64 2842}
!2861 = metadata !{i64 2843}
!2862 = metadata !{i64 2844}
!2863 = metadata !{i64 2845}
!2864 = metadata !{i64 2846}
!2865 = metadata !{i64 2847}
!2866 = metadata !{i64 2848}
!2867 = metadata !{i64 2849}
!2868 = metadata !{i64 2850}
!2869 = metadata !{i64 2851}
!2870 = metadata !{i64 2852}
!2871 = metadata !{i64 2853}
!2872 = metadata !{i64 2854}
!2873 = metadata !{i64 2855}
!2874 = metadata !{i64 2856}
!2875 = metadata !{i64 2857}
!2876 = metadata !{i64 2858}
!2877 = metadata !{i64 2859}
!2878 = metadata !{i64 2860}
!2879 = metadata !{i64 2861}
!2880 = metadata !{i64 2862}
!2881 = metadata !{i64 2863}
!2882 = metadata !{i64 2864}
!2883 = metadata !{i64 2865}
!2884 = metadata !{i64 2866}
!2885 = metadata !{i64 2867}
!2886 = metadata !{i64 2868}
!2887 = metadata !{i64 2869}
!2888 = metadata !{i64 2870}
!2889 = metadata !{i64 2871}
!2890 = metadata !{i64 2872}
!2891 = metadata !{i64 2873}
!2892 = metadata !{i64 2874}
!2893 = metadata !{i64 2875}
!2894 = metadata !{i64 2876}
!2895 = metadata !{i64 2877}
!2896 = metadata !{i64 2878}
!2897 = metadata !{i64 2879}
!2898 = metadata !{i64 2880}
!2899 = metadata !{i64 2881}
!2900 = metadata !{i64 2882}
!2901 = metadata !{i64 2883}
!2902 = metadata !{i64 2884}
!2903 = metadata !{i64 2885}
!2904 = metadata !{i64 2886}
!2905 = metadata !{i64 2887}
!2906 = metadata !{i64 2888}
!2907 = metadata !{i64 2889}
!2908 = metadata !{i64 2890}
!2909 = metadata !{i64 2891}
!2910 = metadata !{i64 2892}
!2911 = metadata !{i64 2893}
!2912 = metadata !{i64 2894}
!2913 = metadata !{i64 2895}
!2914 = metadata !{i64 2896}
!2915 = metadata !{i64 2897}
!2916 = metadata !{i64 2898}
!2917 = metadata !{i64 2899}
!2918 = metadata !{i64 2900}
!2919 = metadata !{i64 2901}
!2920 = metadata !{i64 2902}
!2921 = metadata !{i64 2903}
!2922 = metadata !{i64 2904}
!2923 = metadata !{i64 2905}
!2924 = metadata !{i64 2906}
!2925 = metadata !{i64 2907}
!2926 = metadata !{i64 2908}
!2927 = metadata !{i64 2909}
!2928 = metadata !{i64 2910}
!2929 = metadata !{i64 2911}
!2930 = metadata !{i64 2912}
!2931 = metadata !{i64 2913}
!2932 = metadata !{i64 2914}
!2933 = metadata !{i64 2915}
!2934 = metadata !{i64 2916}
!2935 = metadata !{i64 2917}
!2936 = metadata !{i64 2918}
!2937 = metadata !{i64 2919}
!2938 = metadata !{i64 2920}
!2939 = metadata !{i64 2921}
!2940 = metadata !{i64 2922}
!2941 = metadata !{i64 2923}
!2942 = metadata !{i64 2924}
!2943 = metadata !{i64 2925}
!2944 = metadata !{i64 2926}
!2945 = metadata !{i64 2927}
!2946 = metadata !{i64 2928}
!2947 = metadata !{i64 2929}
!2948 = metadata !{i64 2930}
!2949 = metadata !{i64 2931}
!2950 = metadata !{i64 2932}
!2951 = metadata !{i64 2933}
!2952 = metadata !{i64 2934}
!2953 = metadata !{i64 2935}
!2954 = metadata !{i64 2936}
!2955 = metadata !{i64 2937}
!2956 = metadata !{i64 2938}
!2957 = metadata !{i64 2939}
!2958 = metadata !{i64 2940}
!2959 = metadata !{i64 2941}
!2960 = metadata !{i64 2942}
!2961 = metadata !{i64 2943}
!2962 = metadata !{i64 2944}
!2963 = metadata !{i64 2945}
!2964 = metadata !{i64 2946}
!2965 = metadata !{i64 2947}
!2966 = metadata !{i64 2948}
!2967 = metadata !{i64 2949}
!2968 = metadata !{i64 2950}
!2969 = metadata !{i64 2951}
!2970 = metadata !{i64 2952}
!2971 = metadata !{i64 2953}
!2972 = metadata !{i64 2954}
!2973 = metadata !{i64 2955}
!2974 = metadata !{i64 2956}
!2975 = metadata !{i64 2957}
!2976 = metadata !{i64 2958}
!2977 = metadata !{i64 2959}
!2978 = metadata !{i64 2960}
!2979 = metadata !{i64 2961}
!2980 = metadata !{i64 2962}
!2981 = metadata !{i64 2963}
!2982 = metadata !{metadata !2111, metadata !2, i64 4}
!2983 = metadata !{i64 2964}
!2984 = metadata !{i64 2965}
!2985 = metadata !{i64 2966}
!2986 = metadata !{i64 2967}
!2987 = metadata !{metadata !2111, metadata !2, i64 0}
!2988 = metadata !{i64 2968}
!2989 = metadata !{i64 2969}
!2990 = metadata !{i64 2970}
!2991 = metadata !{i64 2971}
!2992 = metadata !{i64 2972}
!2993 = metadata !{i64 2973}
!2994 = metadata !{i64 2974}
!2995 = metadata !{i64 2975}
!2996 = metadata !{i64 2976}
!2997 = metadata !{i64 2977}
!2998 = metadata !{i64 2978}
!2999 = metadata !{i64 2979}
!3000 = metadata !{i64 2980}
!3001 = metadata !{i64 2981}
!3002 = metadata !{i64 2982}
!3003 = metadata !{i64 2983}
!3004 = metadata !{i64 2984}
!3005 = metadata !{i64 2985}
!3006 = metadata !{i64 2986}
!3007 = metadata !{i64 2987}
!3008 = metadata !{i64 2988}
!3009 = metadata !{i64 2989}
!3010 = metadata !{i64 2990}
!3011 = metadata !{i64 2991}
!3012 = metadata !{i64 2992}
!3013 = metadata !{i64 2993}
!3014 = metadata !{i64 2994}
!3015 = metadata !{i64 2995}
!3016 = metadata !{i64 2996}
!3017 = metadata !{i64 2997}
!3018 = metadata !{i64 2998}
!3019 = metadata !{i64 2999}
!3020 = metadata !{i64 3000}
!3021 = metadata !{i64 3001}
!3022 = metadata !{i64 3002}
!3023 = metadata !{i64 3003}
!3024 = metadata !{metadata !3024, metadata !3025, metadata !3026}
!3025 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!3026 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!3027 = metadata !{i64 3004}
!3028 = metadata !{i64 3005}
!3029 = metadata !{i64 3006}
!3030 = metadata !{i64 3007}
!3031 = metadata !{i64 3008}
!3032 = metadata !{i64 3009}
!3033 = metadata !{i64 3010}
!3034 = metadata !{i64 3011}
!3035 = metadata !{i64 3012}
!3036 = metadata !{i64 3013}
!3037 = metadata !{i64 3014}
!3038 = metadata !{i64 3015}
!3039 = metadata !{i64 3016}
!3040 = metadata !{i64 3017}
!3041 = metadata !{i64 3018}
!3042 = metadata !{i64 3019}
!3043 = metadata !{i64 3020}
!3044 = metadata !{i64 3021}
!3045 = metadata !{i64 3022}
!3046 = metadata !{i64 3023}
!3047 = metadata !{i64 3024}
!3048 = metadata !{i64 3025}
!3049 = metadata !{i64 3026}
!3050 = metadata !{i64 3027}
!3051 = metadata !{metadata !3051, metadata !3025, metadata !3026}
!3052 = metadata !{i64 3028}
!3053 = metadata !{i64 3029}
!3054 = metadata !{i64 3030}
!3055 = metadata !{i64 3031}
!3056 = metadata !{i64 3032}
!3057 = metadata !{i64 3033}
!3058 = metadata !{i64 3034}
!3059 = metadata !{i64 3035}
!3060 = metadata !{i64 3036}
!3061 = metadata !{i64 3037}
!3062 = metadata !{i64 3038}
!3063 = metadata !{i64 3039}
!3064 = metadata !{i64 3040}
!3065 = metadata !{i64 3041}
!3066 = metadata !{i64 3042}
!3067 = metadata !{i64 3043}
!3068 = metadata !{i64 3044}
!3069 = metadata !{i64 3045}
!3070 = metadata !{i64 3046}
!3071 = metadata !{i64 3047}
!3072 = metadata !{i64 3048}
!3073 = metadata !{i64 3049}
!3074 = metadata !{i64 3050}
!3075 = metadata !{i64 3051}
!3076 = metadata !{i64 3052}
!3077 = metadata !{i64 3053}
!3078 = metadata !{i64 3054}
!3079 = metadata !{i64 3055}
!3080 = metadata !{i64 3056}
!3081 = metadata !{i64 3057}
!3082 = metadata !{i64 3058}
!3083 = metadata !{i64 3059}
!3084 = metadata !{i64 3060}
!3085 = metadata !{i64 3061}
!3086 = metadata !{i64 3062}
!3087 = metadata !{i64 3063}
!3088 = metadata !{i64 3064}
!3089 = metadata !{i64 3065}
!3090 = metadata !{i64 3066}
!3091 = metadata !{i64 3067}
!3092 = metadata !{i64 3068}
!3093 = metadata !{i64 3069}
!3094 = metadata !{i64 3070}
!3095 = metadata !{i64 3071}
!3096 = metadata !{i64 3072}
!3097 = metadata !{i64 3073}
!3098 = metadata !{i64 3074}
!3099 = metadata !{i64 3075}
!3100 = metadata !{i64 3076}
!3101 = metadata !{i64 3077}
!3102 = metadata !{i64 3078}
!3103 = metadata !{i64 3079}
!3104 = metadata !{i64 3080}
!3105 = metadata !{i64 3081}
!3106 = metadata !{i64 3082}
!3107 = metadata !{i64 3083}
!3108 = metadata !{i64 3084}
!3109 = metadata !{i64 3085}
!3110 = metadata !{i64 3086}
!3111 = metadata !{i64 3087}
!3112 = metadata !{i64 3088}
!3113 = metadata !{i64 3089}
!3114 = metadata !{i64 3090}
!3115 = metadata !{i64 3091}
!3116 = metadata !{i64 3092}
!3117 = metadata !{i64 3093}
!3118 = metadata !{i64 3094}
!3119 = metadata !{i64 3095}
!3120 = metadata !{i64 3096}
!3121 = metadata !{i64 3097}
!3122 = metadata !{i64 3098}
!3123 = metadata !{i64 3099}
!3124 = metadata !{i64 3100}
!3125 = metadata !{i64 3101}
!3126 = metadata !{i64 3102}
!3127 = metadata !{i64 3103}
!3128 = metadata !{i64 3104}
!3129 = metadata !{i64 3105}
!3130 = metadata !{i64 3106}
!3131 = metadata !{i64 3107}
!3132 = metadata !{i64 3108}
!3133 = metadata !{i64 3109}
!3134 = metadata !{i64 3110}
!3135 = metadata !{i64 3111}
!3136 = metadata !{i64 3112}
!3137 = metadata !{i64 3113}
!3138 = metadata !{i64 3114}
!3139 = metadata !{i64 3115}
!3140 = metadata !{i64 3116}
!3141 = metadata !{i64 3117}
!3142 = metadata !{i64 3118}
!3143 = metadata !{i64 3119}
!3144 = metadata !{i64 3120}
!3145 = metadata !{i64 3121}
!3146 = metadata !{i64 3122}
!3147 = metadata !{i64 3123}
!3148 = metadata !{i64 3124}
!3149 = metadata !{i64 3125}
!3150 = metadata !{i64 3126}
!3151 = metadata !{i64 3127}
!3152 = metadata !{i64 3128}
!3153 = metadata !{i64 3129}
!3154 = metadata !{i64 3130}
!3155 = metadata !{i64 3131}
!3156 = metadata !{i64 3132}
!3157 = metadata !{i64 3133}
!3158 = metadata !{i64 3134}
!3159 = metadata !{i64 3135}
!3160 = metadata !{i64 3136}
!3161 = metadata !{i64 3137}
!3162 = metadata !{i64 3138}
!3163 = metadata !{i64 3139}
!3164 = metadata !{i64 3140}
!3165 = metadata !{i64 3141}
!3166 = metadata !{i64 3142}
!3167 = metadata !{i64 3143}
!3168 = metadata !{i64 3144}
!3169 = metadata !{i64 3145}
!3170 = metadata !{i64 3146}
!3171 = metadata !{i64 3147}
!3172 = metadata !{i64 3148}
!3173 = metadata !{i64 3149}
!3174 = metadata !{i64 3150}
!3175 = metadata !{i64 3151}
!3176 = metadata !{i64 3152}
!3177 = metadata !{i64 3153}
!3178 = metadata !{i64 3154}
!3179 = metadata !{i64 3155}
!3180 = metadata !{i64 3156}
!3181 = metadata !{i64 3157}
!3182 = metadata !{i64 3158}
!3183 = metadata !{i64 3159}
!3184 = metadata !{i64 3160}
!3185 = metadata !{i64 3161}
!3186 = metadata !{i64 3162}
!3187 = metadata !{i64 3163}
!3188 = metadata !{i64 3164}
!3189 = metadata !{i64 3165}
!3190 = metadata !{i64 3166}
!3191 = metadata !{i64 3167}
!3192 = metadata !{i64 3168}
!3193 = metadata !{i64 3169}
!3194 = metadata !{i64 3170}
!3195 = metadata !{i64 3171}
!3196 = metadata !{i64 3172}
!3197 = metadata !{i64 3173}
!3198 = metadata !{i64 3174}
!3199 = metadata !{i64 3175}
!3200 = metadata !{i64 3176}
!3201 = metadata !{i64 3177}
!3202 = metadata !{i64 3178}
!3203 = metadata !{i64 3179}
!3204 = metadata !{i64 3180}
!3205 = metadata !{i64 3181}
!3206 = metadata !{i64 3182}
!3207 = metadata !{i64 3183}
!3208 = metadata !{i64 3184}
!3209 = metadata !{i64 3185}
!3210 = metadata !{i64 3186}
!3211 = metadata !{i64 3187}
!3212 = metadata !{i64 3188}
!3213 = metadata !{i64 3189}
!3214 = metadata !{i64 3190}
!3215 = metadata !{i64 3191}
!3216 = metadata !{i64 3192}
!3217 = metadata !{i64 3193}
!3218 = metadata !{i64 3194}
!3219 = metadata !{i64 3195}
!3220 = metadata !{i64 3196}
!3221 = metadata !{i64 3197}
!3222 = metadata !{i64 3198}
!3223 = metadata !{i64 3199}
!3224 = metadata !{i64 3200}
!3225 = metadata !{i64 3201}
!3226 = metadata !{i64 3202}
!3227 = metadata !{i64 3203}
!3228 = metadata !{i64 3204}
!3229 = metadata !{i64 3205}
!3230 = metadata !{i64 3206}
!3231 = metadata !{i64 3207}
!3232 = metadata !{i64 3208}
!3233 = metadata !{i64 3209}
!3234 = metadata !{i64 3210}
!3235 = metadata !{i64 3211}
!3236 = metadata !{i64 3212}
!3237 = metadata !{i64 3213}
!3238 = metadata !{i64 3214}
!3239 = metadata !{i64 3215}
!3240 = metadata !{i64 3216}
!3241 = metadata !{i64 3217}
!3242 = metadata !{i64 3218}
!3243 = metadata !{i64 3219}
!3244 = metadata !{i64 3220}
!3245 = metadata !{i64 3221}
!3246 = metadata !{i64 3222}
!3247 = metadata !{i64 3223}
!3248 = metadata !{i64 3224}
!3249 = metadata !{i64 3225}
!3250 = metadata !{i64 3226}
!3251 = metadata !{i64 3227}
!3252 = metadata !{i64 3228}
!3253 = metadata !{i64 3229}
!3254 = metadata !{i64 3230}
!3255 = metadata !{i64 3231}
!3256 = metadata !{i64 3232}
!3257 = metadata !{i64 3233}
!3258 = metadata !{i64 3234}
!3259 = metadata !{i64 3235}
!3260 = metadata !{i64 3236}
!3261 = metadata !{i64 3237}
!3262 = metadata !{i64 3238}
!3263 = metadata !{i64 3239}
!3264 = metadata !{i64 3240}
!3265 = metadata !{i64 3241}
!3266 = metadata !{i64 3242}
!3267 = metadata !{i64 3243}
!3268 = metadata !{i64 3244}
!3269 = metadata !{i64 3245}
!3270 = metadata !{i64 3246}
!3271 = metadata !{i64 3247}
!3272 = metadata !{i64 3248}
!3273 = metadata !{i64 3249}
!3274 = metadata !{i64 3250}
!3275 = metadata !{i64 3251}
!3276 = metadata !{i64 3252}
!3277 = metadata !{i64 3253}
!3278 = metadata !{i64 3254}
!3279 = metadata !{i64 3255}
!3280 = metadata !{i64 3256}
!3281 = metadata !{i64 3257}
!3282 = metadata !{i64 3258}
!3283 = metadata !{i64 3259}
!3284 = metadata !{i64 3260}
!3285 = metadata !{i64 3261}
!3286 = metadata !{i64 3262}
!3287 = metadata !{i64 3263}
!3288 = metadata !{i64 3264}
!3289 = metadata !{i64 3265}
!3290 = metadata !{i64 3266}
!3291 = metadata !{i64 3267}
!3292 = metadata !{i64 3268}
!3293 = metadata !{i64 3269}
!3294 = metadata !{i64 3270}
!3295 = metadata !{i64 3271}
!3296 = metadata !{i64 3272}
!3297 = metadata !{i64 3273}
!3298 = metadata !{i64 3274}
!3299 = metadata !{i64 3275}
!3300 = metadata !{i64 3276}
!3301 = metadata !{i64 3277}
!3302 = metadata !{i64 3278}
!3303 = metadata !{i64 3279}
!3304 = metadata !{i64 3280}
!3305 = metadata !{i64 3281}
!3306 = metadata !{i64 3282}
!3307 = metadata !{i64 3283}
!3308 = metadata !{i64 3284}
!3309 = metadata !{i64 3285}
!3310 = metadata !{i64 3286}
!3311 = metadata !{i64 3287}
!3312 = metadata !{i64 3288}
!3313 = metadata !{i64 3289}
!3314 = metadata !{i64 3290}
!3315 = metadata !{i64 3291}
!3316 = metadata !{i64 3292}
!3317 = metadata !{i64 3293}
!3318 = metadata !{i64 3294}
!3319 = metadata !{i64 3295}
!3320 = metadata !{i64 3296}
!3321 = metadata !{i64 3297}
!3322 = metadata !{i64 3298}
!3323 = metadata !{i64 3299}
!3324 = metadata !{i64 3300}
!3325 = metadata !{i64 3301}
!3326 = metadata !{i64 3302}
!3327 = metadata !{i64 3303}
!3328 = metadata !{i64 3304}
!3329 = metadata !{i64 3305}
!3330 = metadata !{i64 3306}
!3331 = metadata !{i64 3307}
!3332 = metadata !{i64 3308}
!3333 = metadata !{i64 3309}
!3334 = metadata !{i64 3310}
!3335 = metadata !{i64 3311}
!3336 = metadata !{i64 3312}
!3337 = metadata !{i64 3313}
!3338 = metadata !{i64 3314}
!3339 = metadata !{i64 3315}
!3340 = metadata !{i64 3316}
!3341 = metadata !{i64 3317}
!3342 = metadata !{i64 3318}
!3343 = metadata !{i64 3319}
!3344 = metadata !{i64 3320}
!3345 = metadata !{i64 3321}
!3346 = metadata !{i64 3322}
!3347 = metadata !{i64 3323}
!3348 = metadata !{i64 3324}
!3349 = metadata !{i64 3325}
!3350 = metadata !{i64 3326}
!3351 = metadata !{i64 3327}
!3352 = metadata !{i64 3328}
!3353 = metadata !{i64 3329}
!3354 = metadata !{i64 3330}
!3355 = metadata !{i64 3331}
!3356 = metadata !{i64 3332}
!3357 = metadata !{i64 3333}
!3358 = metadata !{i64 3334}
!3359 = metadata !{i64 3335}
!3360 = metadata !{i64 3336}
!3361 = metadata !{i64 3337}
!3362 = metadata !{i64 3338}
!3363 = metadata !{i64 3339}
!3364 = metadata !{i64 3340}
!3365 = metadata !{i64 3341}
!3366 = metadata !{i64 3342}
!3367 = metadata !{i64 3343}
!3368 = metadata !{i64 3344}
!3369 = metadata !{i64 3345}
!3370 = metadata !{i64 3346}
!3371 = metadata !{i64 3347}
!3372 = metadata !{i64 3348}
!3373 = metadata !{i64 3349}
!3374 = metadata !{i64 3350}
!3375 = metadata !{i64 3351}
!3376 = metadata !{i64 3352}
!3377 = metadata !{i64 3353}
!3378 = metadata !{i64 3354}
!3379 = metadata !{i64 3355}
!3380 = metadata !{i64 3356}
!3381 = metadata !{i64 3357}
!3382 = metadata !{i64 3358}
!3383 = metadata !{i64 3359}
!3384 = metadata !{i64 3360}
!3385 = metadata !{i64 3361}
!3386 = metadata !{i64 3362}
!3387 = metadata !{i64 3363}
!3388 = metadata !{i64 3364}
!3389 = metadata !{i64 3365}
!3390 = metadata !{i64 3366}
!3391 = metadata !{i64 3367}
!3392 = metadata !{i64 3368}
!3393 = metadata !{i64 3369}
!3394 = metadata !{i64 3370}
!3395 = metadata !{i64 3371}
!3396 = metadata !{i64 3372}
!3397 = metadata !{i64 3373}
!3398 = metadata !{i64 3374}
!3399 = metadata !{i64 3375}
!3400 = metadata !{i64 3376}
!3401 = metadata !{i64 3377}
!3402 = metadata !{i64 3378}
!3403 = metadata !{i64 3379}
!3404 = metadata !{i64 3380}
!3405 = metadata !{i64 3381}
!3406 = metadata !{i64 3382}
!3407 = metadata !{i64 3383}
!3408 = metadata !{i64 3384}
!3409 = metadata !{i64 3385}
!3410 = metadata !{i64 3386}
!3411 = metadata !{i64 3387}
!3412 = metadata !{i64 3388}
!3413 = metadata !{i64 3389}
!3414 = metadata !{i64 3390}
!3415 = metadata !{i64 3391}
!3416 = metadata !{i64 3392}
!3417 = metadata !{i64 3393}
!3418 = metadata !{i64 3394}
!3419 = metadata !{i64 3395}
!3420 = metadata !{i64 3396}
!3421 = metadata !{i64 3397}
!3422 = metadata !{i64 3398}
!3423 = metadata !{i64 3399}
!3424 = metadata !{i64 3400}
!3425 = metadata !{i64 3401}
!3426 = metadata !{i64 3402}
!3427 = metadata !{i64 3403}
!3428 = metadata !{i64 3404}
!3429 = metadata !{i64 3405}
!3430 = metadata !{i64 3406}
!3431 = metadata !{i64 3407}
!3432 = metadata !{i64 3408}
!3433 = metadata !{i64 3409}
!3434 = metadata !{i64 3410}
!3435 = metadata !{i64 3411}
!3436 = metadata !{i64 3412}
!3437 = metadata !{i64 3413}
!3438 = metadata !{i64 3414}
!3439 = metadata !{i64 3415}
!3440 = metadata !{i64 3416}
!3441 = metadata !{i64 3417}
!3442 = metadata !{i64 3418}
!3443 = metadata !{i64 3419}
!3444 = metadata !{i64 3420}
!3445 = metadata !{i64 3421}
!3446 = metadata !{i64 3422}
!3447 = metadata !{i64 3423}
!3448 = metadata !{i64 3424}
!3449 = metadata !{i64 3425}
!3450 = metadata !{i64 3426}
!3451 = metadata !{i64 3427}
!3452 = metadata !{i64 3428}
!3453 = metadata !{i64 3429}
!3454 = metadata !{i64 3430}
!3455 = metadata !{i64 3431}
!3456 = metadata !{i64 3432}
!3457 = metadata !{i64 3433}
!3458 = metadata !{i64 3434}
!3459 = metadata !{i64 3435}
!3460 = metadata !{i64 3436}
!3461 = metadata !{i64 3437}
!3462 = metadata !{i64 3438}
!3463 = metadata !{i64 3439}
!3464 = metadata !{i64 3440}
!3465 = metadata !{i64 3441}
!3466 = metadata !{i64 3442}
!3467 = metadata !{i64 3443}
!3468 = metadata !{i64 3444}
!3469 = metadata !{i64 3445}
!3470 = metadata !{i64 3446}
!3471 = metadata !{i64 3447}
!3472 = metadata !{i64 3448}
!3473 = metadata !{i64 3449}
!3474 = metadata !{i64 3450}
!3475 = metadata !{i64 3451}
!3476 = metadata !{i64 3452}
!3477 = metadata !{i64 3453}
!3478 = metadata !{i64 3454}
!3479 = metadata !{i64 3455}
!3480 = metadata !{i64 3456}
!3481 = metadata !{i64 3457}
!3482 = metadata !{i64 3458}
!3483 = metadata !{i64 3459}
!3484 = metadata !{i64 3460}
!3485 = metadata !{i64 3461}
!3486 = metadata !{i64 3462}
!3487 = metadata !{i64 3463}
!3488 = metadata !{i64 3464}
!3489 = metadata !{i64 3465}
!3490 = metadata !{i64 3466}
!3491 = metadata !{i64 3467}
!3492 = metadata !{i64 3468}
!3493 = metadata !{i64 3469}
!3494 = metadata !{i64 3470}
!3495 = metadata !{i64 3471}
!3496 = metadata !{i64 3472}
!3497 = metadata !{i64 3473}
!3498 = metadata !{i64 3474}
!3499 = metadata !{i64 3475}
!3500 = metadata !{i64 3476}
!3501 = metadata !{i64 3477}
!3502 = metadata !{i64 3478}
!3503 = metadata !{i64 3479}
!3504 = metadata !{i64 3480}
!3505 = metadata !{i64 3481}
!3506 = metadata !{i64 3482}
!3507 = metadata !{i64 3483}
!3508 = metadata !{i64 3484}
!3509 = metadata !{i64 3485}
!3510 = metadata !{i64 3486}
!3511 = metadata !{i64 3487}
!3512 = metadata !{i64 3488}
!3513 = metadata !{i64 3489}
!3514 = metadata !{i64 3490}
!3515 = metadata !{i64 3491}
!3516 = metadata !{i64 3492}
!3517 = metadata !{i64 3493}
!3518 = metadata !{i64 3494}
!3519 = metadata !{i64 3495}
!3520 = metadata !{i64 3496}
!3521 = metadata !{i64 3497}
!3522 = metadata !{i64 3498}
!3523 = metadata !{i64 3499}
!3524 = metadata !{i64 3500}
!3525 = metadata !{i64 3501}
!3526 = metadata !{i64 3502}
!3527 = metadata !{i64 3503}
!3528 = metadata !{i64 3504}
!3529 = metadata !{i64 3505}
!3530 = metadata !{i64 3506}
!3531 = metadata !{i64 3507}
!3532 = metadata !{i64 3508}
!3533 = metadata !{i64 3509}
!3534 = metadata !{i64 3510}
!3535 = metadata !{i64 3511}
!3536 = metadata !{i64 3512}
!3537 = metadata !{i64 3513}
!3538 = metadata !{i64 3514}
!3539 = metadata !{i64 3515}
!3540 = metadata !{i64 3516}
!3541 = metadata !{i64 3517}
!3542 = metadata !{i64 3518}
!3543 = metadata !{i64 3519}
!3544 = metadata !{i64 3520}
!3545 = metadata !{i64 3521}
!3546 = metadata !{i64 3522}
!3547 = metadata !{i64 3523}
!3548 = metadata !{i64 3524}
!3549 = metadata !{i64 3525}
!3550 = metadata !{i64 3526}
!3551 = metadata !{i64 3527}
!3552 = metadata !{i64 3528}
!3553 = metadata !{i64 3529}
!3554 = metadata !{i64 3530}
!3555 = metadata !{i64 3531}
!3556 = metadata !{i64 3532}
!3557 = metadata !{i64 3533}
!3558 = metadata !{i64 3534}
!3559 = metadata !{i64 3535}
!3560 = metadata !{i64 3536}
!3561 = metadata !{i64 3537}
!3562 = metadata !{i64 3538}
!3563 = metadata !{i64 3539}
!3564 = metadata !{i64 3540}
!3565 = metadata !{i64 3541}
!3566 = metadata !{i64 3542}
!3567 = metadata !{i64 3543}
!3568 = metadata !{i64 3544}
!3569 = metadata !{i64 3545}
!3570 = metadata !{i64 3546}
!3571 = metadata !{i64 3547}
!3572 = metadata !{i64 3548}
!3573 = metadata !{i64 3549}
!3574 = metadata !{i64 3550}
!3575 = metadata !{i64 3551}
!3576 = metadata !{i64 3552}
!3577 = metadata !{i64 3553}
!3578 = metadata !{i64 3554}
!3579 = metadata !{i64 3555}
!3580 = metadata !{i64 3556}
!3581 = metadata !{i64 3557}
!3582 = metadata !{i64 3558}
!3583 = metadata !{i64 3559}
!3584 = metadata !{i64 3560}
!3585 = metadata !{i64 3561}
!3586 = metadata !{i64 3562}
!3587 = metadata !{i64 3563}
!3588 = metadata !{i64 3564}
!3589 = metadata !{i64 3565}
!3590 = metadata !{i64 3566}
!3591 = metadata !{i64 3567}
!3592 = metadata !{i64 3568}
!3593 = metadata !{i64 3569}
!3594 = metadata !{i64 3570}
!3595 = metadata !{i64 3571}
!3596 = metadata !{i64 3572}
!3597 = metadata !{i64 3573}
!3598 = metadata !{i64 3574}
!3599 = metadata !{i64 3575}
!3600 = metadata !{i64 3576}
!3601 = metadata !{i64 3577}
!3602 = metadata !{i64 3578}
!3603 = metadata !{i64 3579}
!3604 = metadata !{i64 3580}
!3605 = metadata !{i64 3581}
!3606 = metadata !{metadata !3606, metadata !3025, metadata !3026}
!3607 = metadata !{i64 3582}
!3608 = metadata !{i64 3583}
!3609 = metadata !{i64 3584}
!3610 = metadata !{i64 3585}
!3611 = metadata !{i64 3586}
!3612 = metadata !{i64 3587}
!3613 = metadata !{i64 3588}
!3614 = metadata !{i64 3589}
!3615 = metadata !{metadata !3615, metadata !3025, metadata !3026}
!3616 = metadata !{i64 3590}
!3617 = metadata !{i64 3591}
!3618 = metadata !{i64 3592}
!3619 = metadata !{i64 3593}
!3620 = metadata !{i64 3594}
!3621 = metadata !{i64 3595}
!3622 = metadata !{i64 3596}
!3623 = metadata !{i64 3597}
!3624 = metadata !{i64 3598}
!3625 = metadata !{i64 3599}
!3626 = metadata !{i64 3600}
!3627 = metadata !{i64 3601}
!3628 = metadata !{i64 3602}
!3629 = metadata !{i64 3603}
!3630 = metadata !{i64 3604}
!3631 = metadata !{i64 3605}
!3632 = metadata !{i64 3606}
!3633 = metadata !{i64 3607}
!3634 = metadata !{i64 3608}
!3635 = metadata !{i64 3609}
!3636 = metadata !{i64 3610}
!3637 = metadata !{metadata !3637, metadata !3025, metadata !3026}
!3638 = metadata !{i64 3611}
!3639 = metadata !{i64 3612}
!3640 = metadata !{i64 3613}
!3641 = metadata !{i64 3614}
!3642 = metadata !{i64 3615}
!3643 = metadata !{i64 3616}
!3644 = metadata !{i64 3617}
!3645 = metadata !{i64 3618}
!3646 = metadata !{i64 3619}
!3647 = metadata !{i64 3620}
!3648 = metadata !{i64 3621}
!3649 = metadata !{i64 3622}
!3650 = metadata !{i64 3623}
!3651 = metadata !{i64 3624}
!3652 = metadata !{i64 3625}
!3653 = metadata !{i64 3626}
!3654 = metadata !{i64 3627}
!3655 = metadata !{i64 3628}
!3656 = metadata !{i64 3629}
!3657 = metadata !{i64 3630}
!3658 = metadata !{i64 3631}
!3659 = metadata !{i64 3632}
!3660 = metadata !{i64 3633}
!3661 = metadata !{i64 3634}
!3662 = metadata !{i64 3635}
!3663 = metadata !{i64 3636}
!3664 = metadata !{metadata !3664, metadata !3025, metadata !3026}
!3665 = metadata !{i64 3637}
!3666 = metadata !{i64 3638}
!3667 = metadata !{i64 3639}
!3668 = metadata !{i64 3640}
!3669 = metadata !{i64 3641}
!3670 = metadata !{i64 3642}
!3671 = metadata !{i64 3643}
!3672 = metadata !{i64 3644}
!3673 = metadata !{i64 3645}
!3674 = metadata !{i64 3646}
!3675 = metadata !{i64 3647}
!3676 = metadata !{i64 3648}
!3677 = metadata !{i64 3649}
!3678 = metadata !{i64 3650}
!3679 = metadata !{i64 3651}
!3680 = metadata !{i64 3652}
!3681 = metadata !{i64 3653}
!3682 = metadata !{i64 3654}
!3683 = metadata !{i64 3655}
!3684 = metadata !{i64 3656}
!3685 = metadata !{i64 3657}
!3686 = metadata !{i64 3658}
!3687 = metadata !{i64 3659}
!3688 = metadata !{i64 3660}
!3689 = metadata !{i64 3661}
!3690 = metadata !{i64 3662}
!3691 = metadata !{i64 3663}
!3692 = metadata !{i64 3664}
!3693 = metadata !{i64 3665}
!3694 = metadata !{i64 3666}
!3695 = metadata !{i64 3667}
!3696 = metadata !{metadata !3696, metadata !3025, metadata !3026}
!3697 = metadata !{i64 3668}
!3698 = metadata !{i64 3669}
!3699 = metadata !{i64 3670}
!3700 = metadata !{i64 3671}
!3701 = metadata !{i64 3672}
!3702 = metadata !{i64 3673}
!3703 = metadata !{i64 3674}
!3704 = metadata !{i64 3675}
!3705 = metadata !{i64 3676}
!3706 = metadata !{i64 3677}
!3707 = metadata !{i64 3678}
!3708 = metadata !{i64 3679}
!3709 = metadata !{i64 3680}
!3710 = metadata !{i64 3681}
!3711 = metadata !{metadata !3711, metadata !3025, metadata !3026}
!3712 = metadata !{i64 3682}
!3713 = metadata !{i64 3683}
!3714 = metadata !{i64 3684}
!3715 = metadata !{i64 3685}
!3716 = metadata !{i64 3686}
!3717 = metadata !{i64 3687}
!3718 = metadata !{i64 3688}
!3719 = metadata !{i64 3689}
!3720 = metadata !{i64 3690}
!3721 = metadata !{i64 3691}
!3722 = metadata !{i64 3692}
!3723 = metadata !{i64 3693}
!3724 = metadata !{i64 3694}
!3725 = metadata !{i64 3695}
!3726 = metadata !{i64 3696}
!3727 = metadata !{i64 3697}
!3728 = metadata !{i64 3698}
!3729 = metadata !{i64 3699}
!3730 = metadata !{i64 3700}
!3731 = metadata !{i64 3701}
!3732 = metadata !{i64 3702}
!3733 = metadata !{i64 3703}
!3734 = metadata !{i64 3704}
!3735 = metadata !{i64 3705}
!3736 = metadata !{i64 3706}
!3737 = metadata !{i64 3707}
!3738 = metadata !{i64 3708}
!3739 = metadata !{i64 3709}
!3740 = metadata !{i64 3710}
!3741 = metadata !{i64 3711}
!3742 = metadata !{i64 3712}
!3743 = metadata !{i64 3713}
!3744 = metadata !{i64 3714}
!3745 = metadata !{i64 3715}
!3746 = metadata !{i64 3716}
!3747 = metadata !{i64 3717}
!3748 = metadata !{i64 3718}
!3749 = metadata !{i64 3719}
!3750 = metadata !{i64 3720}
!3751 = metadata !{i64 3721}
!3752 = metadata !{i64 3722}
!3753 = metadata !{i64 3723}
!3754 = metadata !{i64 3724}
!3755 = metadata !{i64 3725}
!3756 = metadata !{i64 3726}
!3757 = metadata !{i64 3727}
!3758 = metadata !{i64 3728}
!3759 = metadata !{i64 3729}
!3760 = metadata !{i64 3730}
!3761 = metadata !{i64 3731}
!3762 = metadata !{i64 3732}
!3763 = metadata !{i64 3733}
!3764 = metadata !{i64 3734}
!3765 = metadata !{i64 3735}
!3766 = metadata !{i64 3736}
!3767 = metadata !{i64 3737}
!3768 = metadata !{i64 3738}
!3769 = metadata !{i64 3739}
!3770 = metadata !{i64 3740}
!3771 = metadata !{i64 3741}
!3772 = metadata !{i64 3742}
!3773 = metadata !{i64 3743}
!3774 = metadata !{i64 3744}
!3775 = metadata !{i64 3745}
!3776 = metadata !{i64 3746}
!3777 = metadata !{i64 3747}
!3778 = metadata !{i64 3748}
!3779 = metadata !{i64 3749}
!3780 = metadata !{i64 3750}
!3781 = metadata !{i64 3751}
!3782 = metadata !{i64 3752}
!3783 = metadata !{i64 3753}
!3784 = metadata !{i64 3754}
!3785 = metadata !{i64 3755}
!3786 = metadata !{i64 3756}
!3787 = metadata !{i64 3757}
!3788 = metadata !{i64 3758}
!3789 = metadata !{i64 3759}
!3790 = metadata !{i64 3760}
!3791 = metadata !{i64 3761}
!3792 = metadata !{i64 3762}
!3793 = metadata !{i64 3763}
!3794 = metadata !{i64 3764}
!3795 = metadata !{i64 3765}
!3796 = metadata !{i64 3766}
!3797 = metadata !{i64 3767}
!3798 = metadata !{i64 3768}
!3799 = metadata !{i64 3769}
!3800 = metadata !{i64 3770}
!3801 = metadata !{i64 3771}
!3802 = metadata !{i64 3772}
!3803 = metadata !{i64 3773}
!3804 = metadata !{i64 3774}
!3805 = metadata !{i64 3775}
!3806 = metadata !{i64 3776}
!3807 = metadata !{i64 3777}
!3808 = metadata !{i64 3778}
!3809 = metadata !{i64 3779}
!3810 = metadata !{i64 3780}
!3811 = metadata !{i64 3781}
!3812 = metadata !{i64 3782}
!3813 = metadata !{i64 3783}
!3814 = metadata !{i64 3784}
!3815 = metadata !{i64 3785}
!3816 = metadata !{i64 3786}
!3817 = metadata !{i64 3787}
!3818 = metadata !{i64 3788}
!3819 = metadata !{i64 3789}
!3820 = metadata !{i64 3790}
!3821 = metadata !{i64 3791}
!3822 = metadata !{i64 3792}
!3823 = metadata !{i64 3793}
!3824 = metadata !{i64 3794}
!3825 = metadata !{i64 3795}
!3826 = metadata !{i64 3796}
!3827 = metadata !{i64 3797}
!3828 = metadata !{i64 3798}
!3829 = metadata !{i64 3799}
!3830 = metadata !{i64 3800}
!3831 = metadata !{i64 3801}
!3832 = metadata !{i64 3802}
!3833 = metadata !{i64 3803}
!3834 = metadata !{i64 3804}
!3835 = metadata !{i64 3805}
!3836 = metadata !{i64 3806}
!3837 = metadata !{i64 3807}
!3838 = metadata !{i64 3808}
!3839 = metadata !{i64 3809}
!3840 = metadata !{i64 3810}
!3841 = metadata !{i64 3811}
!3842 = metadata !{i64 3812}
!3843 = metadata !{i64 3813}
!3844 = metadata !{i64 3814}
!3845 = metadata !{i64 3815}
!3846 = metadata !{i64 3816}
!3847 = metadata !{i64 3817}
!3848 = metadata !{i64 3818}
!3849 = metadata !{i64 3819}
!3850 = metadata !{i64 3820}
!3851 = metadata !{i64 3821}
!3852 = metadata !{i64 3822}
!3853 = metadata !{i64 3823}
!3854 = metadata !{i64 3824}
!3855 = metadata !{i64 3825}
!3856 = metadata !{i64 3826}
!3857 = metadata !{i64 3827}
!3858 = metadata !{i64 3828}
!3859 = metadata !{i64 3829}
!3860 = metadata !{i64 3830}
!3861 = metadata !{i64 3831}
!3862 = metadata !{i64 3832}
!3863 = metadata !{i64 3833}
!3864 = metadata !{i64 3834}
!3865 = metadata !{i64 3835}
!3866 = metadata !{i64 3836}
!3867 = metadata !{i64 3837}
!3868 = metadata !{i64 3838}
!3869 = metadata !{i64 3839}
!3870 = metadata !{i64 3840}
!3871 = metadata !{i64 3841}
!3872 = metadata !{i64 3842}
!3873 = metadata !{i64 3843}
!3874 = metadata !{i64 3844}
!3875 = metadata !{i64 3845}
!3876 = metadata !{i64 3846}
!3877 = metadata !{i64 3847}
!3878 = metadata !{i64 3848}
!3879 = metadata !{i64 3849}
!3880 = metadata !{i64 3850}
!3881 = metadata !{i64 3851}
!3882 = metadata !{i64 3852}
!3883 = metadata !{i64 3853}
!3884 = metadata !{i64 3854}
!3885 = metadata !{i64 3855}
!3886 = metadata !{i64 3856}
!3887 = metadata !{i64 3857}
!3888 = metadata !{i64 3858}
!3889 = metadata !{i64 3859}
!3890 = metadata !{i64 3860}
!3891 = metadata !{i64 3861}
!3892 = metadata !{i64 3862}
!3893 = metadata !{i64 3863}
!3894 = metadata !{i64 3864}
!3895 = metadata !{i64 3865}
!3896 = metadata !{i64 3866}
!3897 = metadata !{i64 3867}
!3898 = metadata !{i64 3868}
!3899 = metadata !{i64 3869}
!3900 = metadata !{i64 3870}
!3901 = metadata !{i64 3871}
!3902 = metadata !{i64 3872}
!3903 = metadata !{i64 3873}
!3904 = metadata !{i64 3874}
!3905 = metadata !{i64 3875}
!3906 = metadata !{i64 3876}
!3907 = metadata !{i64 3877}
!3908 = metadata !{i64 3878}
!3909 = metadata !{i64 3879}
!3910 = metadata !{metadata !3911, metadata !3911, i64 0}
!3911 = metadata !{metadata !"long", metadata !3, i64 0}
!3912 = metadata !{i64 3880}
!3913 = metadata !{i64 3881}
!3914 = metadata !{i64 3882}
!3915 = metadata !{i64 3883}
!3916 = metadata !{i64 3884}
!3917 = metadata !{i64 3885}
!3918 = metadata !{i64 3886}
!3919 = metadata !{i64 3887}
!3920 = metadata !{i64 3888}
!3921 = metadata !{i64 3889}
!3922 = metadata !{i64 3890}
!3923 = metadata !{i64 3891}
!3924 = metadata !{i64 3892}
!3925 = metadata !{i64 3893}
!3926 = metadata !{i64 3894}
!3927 = metadata !{i64 3895}
!3928 = metadata !{i64 3896}
!3929 = metadata !{i64 3897}
!3930 = metadata !{i64 3898}
!3931 = metadata !{i64 3899}
!3932 = metadata !{i64 3900}
!3933 = metadata !{i64 3901}
!3934 = metadata !{i64 3902}
!3935 = metadata !{i64 3903}
!3936 = metadata !{i64 3904}
!3937 = metadata !{i64 3905}
!3938 = metadata !{i64 3906}
!3939 = metadata !{i64 3907}
!3940 = metadata !{i64 3908}
!3941 = metadata !{i64 3909}
!3942 = metadata !{i64 3910}
!3943 = metadata !{i64 3911}
!3944 = metadata !{i64 3912}
!3945 = metadata !{i64 3913}
!3946 = metadata !{i64 3914}
!3947 = metadata !{i64 3915}
!3948 = metadata !{i64 3916}
!3949 = metadata !{i64 3917}
!3950 = metadata !{i64 3918}
!3951 = metadata !{i64 3919}
!3952 = metadata !{i64 3920}
!3953 = metadata !{i64 3921}
!3954 = metadata !{i64 3922}
!3955 = metadata !{i64 3923}
!3956 = metadata !{i64 3924}
!3957 = metadata !{i64 3925}
!3958 = metadata !{i64 3926}
!3959 = metadata !{i64 3927}
!3960 = metadata !{i64 3928}
!3961 = metadata !{i64 3929}
!3962 = metadata !{i64 3930}
!3963 = metadata !{i64 3931}
!3964 = metadata !{i64 3932}
!3965 = metadata !{i64 3933}
!3966 = metadata !{i64 3934}
!3967 = metadata !{i64 3935}
!3968 = metadata !{i64 3936}
!3969 = metadata !{i64 3937}
!3970 = metadata !{i64 3938}
!3971 = metadata !{i64 3939}
!3972 = metadata !{i64 3940}
!3973 = metadata !{i64 3941}
!3974 = metadata !{i64 3942}
!3975 = metadata !{i64 3943}
!3976 = metadata !{i64 3944}
!3977 = metadata !{i64 3945}
!3978 = metadata !{i64 3946}
!3979 = metadata !{i64 3947}
!3980 = metadata !{i64 3948}
!3981 = metadata !{i64 3949}
!3982 = metadata !{i64 3950}
!3983 = metadata !{i64 3951}
!3984 = metadata !{i64 3952}
!3985 = metadata !{i64 3953}
!3986 = metadata !{i64 3954}
!3987 = metadata !{i64 3955}
!3988 = metadata !{i64 3956}
!3989 = metadata !{i64 3957}
!3990 = metadata !{i64 3958}
!3991 = metadata !{i64 3959}
!3992 = metadata !{i64 3960}
!3993 = metadata !{i64 3961}
!3994 = metadata !{i64 3962}
!3995 = metadata !{i64 3963}
!3996 = metadata !{i64 3964}
!3997 = metadata !{i64 3965}
!3998 = metadata !{i64 3966}
!3999 = metadata !{i64 3967}
!4000 = metadata !{i64 3968}
!4001 = metadata !{i64 3969}
!4002 = metadata !{i64 3970}
!4003 = metadata !{i64 3971}
!4004 = metadata !{i64 3972}
!4005 = metadata !{i64 3973}
!4006 = metadata !{i64 3974}
!4007 = metadata !{i64 3975}
!4008 = metadata !{i64 3976}
!4009 = metadata !{i64 3977}
!4010 = metadata !{i64 3978}
!4011 = metadata !{i64 3979}
!4012 = metadata !{i64 3980}
!4013 = metadata !{i64 3981}
!4014 = metadata !{i64 3982}
!4015 = metadata !{i64 3983}
!4016 = metadata !{i64 3984}
!4017 = metadata !{i64 3985}
!4018 = metadata !{i64 3986}
!4019 = metadata !{i64 3987}
!4020 = metadata !{i64 3988}
!4021 = metadata !{i64 3989}
!4022 = metadata !{i64 3990}
!4023 = metadata !{i64 3991}
!4024 = metadata !{i64 3992}
!4025 = metadata !{i64 3993}
!4026 = metadata !{i64 3994}
!4027 = metadata !{i64 3995}
!4028 = metadata !{i64 3996}
!4029 = metadata !{metadata !4029, metadata !3025, metadata !3026}
!4030 = metadata !{i64 3997}
!4031 = metadata !{i64 3998}
!4032 = metadata !{i64 3999}
!4033 = metadata !{i64 4000}
!4034 = metadata !{i64 4001}
!4035 = metadata !{i64 4002}
!4036 = metadata !{i64 4003}
!4037 = metadata !{i64 4004}
!4038 = metadata !{i64 4005}
!4039 = metadata !{i64 4006}
!4040 = metadata !{i64 4007}
!4041 = metadata !{i64 4008}
!4042 = metadata !{i64 4009}
!4043 = metadata !{i64 4010}
!4044 = metadata !{i64 4011}
!4045 = metadata !{i64 4012}
!4046 = metadata !{i64 4013}
!4047 = metadata !{metadata !4047, metadata !3025, metadata !3026}
!4048 = metadata !{i64 4014}
!4049 = metadata !{i64 4015}
!4050 = metadata !{i64 4016}
!4051 = metadata !{i64 4017}
!4052 = metadata !{i64 4018}
!4053 = metadata !{i64 4019}
!4054 = metadata !{i64 4020}
!4055 = metadata !{i64 4021}
!4056 = metadata !{i64 4022}
!4057 = metadata !{i64 4023}
!4058 = metadata !{i64 4024}
!4059 = metadata !{i64 4025}
!4060 = metadata !{i64 4026}
!4061 = metadata !{i64 4027}
!4062 = metadata !{i64 4028}
!4063 = metadata !{i64 4029}
!4064 = metadata !{i64 4030}
!4065 = metadata !{i64 4031}
!4066 = metadata !{i64 4032}
!4067 = metadata !{i64 4033}
!4068 = metadata !{i64 4034}
!4069 = metadata !{i64 4035}
!4070 = metadata !{i64 4036}
!4071 = metadata !{i64 4037}
!4072 = metadata !{i64 4038}
!4073 = metadata !{i64 4039}
!4074 = metadata !{i64 4040}
!4075 = metadata !{i64 4041}
!4076 = metadata !{i64 4042}
!4077 = metadata !{i64 4043}
!4078 = metadata !{i64 4044}
!4079 = metadata !{i64 4045}
!4080 = metadata !{i64 4046}
!4081 = metadata !{i64 4047}
!4082 = metadata !{i64 4048}
!4083 = metadata !{i64 4049}
!4084 = metadata !{i64 4050}
!4085 = metadata !{i64 4051}
!4086 = metadata !{i64 4052}
!4087 = metadata !{i64 4053}
!4088 = metadata !{i64 4054}
!4089 = metadata !{i64 4055}
!4090 = metadata !{i64 4056}
!4091 = metadata !{i64 4057}
!4092 = metadata !{i64 4058}
!4093 = metadata !{i64 4059}
!4094 = metadata !{i64 4060}
!4095 = metadata !{i64 4061}
!4096 = metadata !{i64 4062}
!4097 = metadata !{i64 4063}
!4098 = metadata !{i64 4064}
!4099 = metadata !{i64 4065}
!4100 = metadata !{i64 4066}
!4101 = metadata !{i64 4067}
!4102 = metadata !{i64 4068}
!4103 = metadata !{i64 4069}
!4104 = metadata !{i64 4070}
!4105 = metadata !{i64 4071}
!4106 = metadata !{i64 4072}
!4107 = metadata !{i64 4073}
!4108 = metadata !{i64 4074}
!4109 = metadata !{i64 4075}
!4110 = metadata !{i64 4076}
!4111 = metadata !{i64 4077}
!4112 = metadata !{i64 4078}
!4113 = metadata !{i64 4079}
!4114 = metadata !{i64 4080}
!4115 = metadata !{i64 4081}
!4116 = metadata !{i64 4082}
!4117 = metadata !{i64 4083}
!4118 = metadata !{i64 4084}
!4119 = metadata !{i64 4085}
!4120 = metadata !{i64 4086}
!4121 = metadata !{i64 4087}
!4122 = metadata !{i64 4088}
!4123 = metadata !{i64 4089}
!4124 = metadata !{i64 4090}
!4125 = metadata !{i64 4091}
!4126 = metadata !{i64 4092}
!4127 = metadata !{i64 4093}
!4128 = metadata !{i64 4094}
!4129 = metadata !{i64 4095}
!4130 = metadata !{i64 4096}
!4131 = metadata !{i64 4097}
!4132 = metadata !{i64 4098}
!4133 = metadata !{i64 4099}
!4134 = metadata !{i64 4100}
!4135 = metadata !{i64 4101}
!4136 = metadata !{i64 4102}
!4137 = metadata !{i64 4103}
!4138 = metadata !{i64 4104}
!4139 = metadata !{i64 4105}
!4140 = metadata !{i64 4106}
!4141 = metadata !{i64 4107}
!4142 = metadata !{i64 4108}
!4143 = metadata !{i64 4109}
!4144 = metadata !{i64 4110}
!4145 = metadata !{i64 4111}
!4146 = metadata !{i64 4112}
!4147 = metadata !{i64 4113}
!4148 = metadata !{i64 4114}
!4149 = metadata !{i64 4115}
!4150 = metadata !{i64 4116}
!4151 = metadata !{i64 4117}
!4152 = metadata !{i64 4118}
!4153 = metadata !{i64 4119}
!4154 = metadata !{i64 4120}
!4155 = metadata !{i64 4121}
!4156 = metadata !{i64 4122}
!4157 = metadata !{i64 4123}
!4158 = metadata !{i64 4124}
!4159 = metadata !{i64 4125}
!4160 = metadata !{i64 4126}
!4161 = metadata !{i64 4127}
!4162 = metadata !{i64 4128}
!4163 = metadata !{i64 4129}
!4164 = metadata !{i64 4130}
!4165 = metadata !{i64 4131}
!4166 = metadata !{i64 4132}
!4167 = metadata !{i64 4133}
!4168 = metadata !{i64 4134}
!4169 = metadata !{i64 4135}
!4170 = metadata !{i64 4136}
!4171 = metadata !{i64 4137}
!4172 = metadata !{i64 4138}
!4173 = metadata !{i64 4139}
!4174 = metadata !{i64 4140}
!4175 = metadata !{i64 4141}
!4176 = metadata !{i64 4142}
!4177 = metadata !{i64 4143}
!4178 = metadata !{i64 4144}
!4179 = metadata !{i64 4145}
!4180 = metadata !{i64 4146}
!4181 = metadata !{i64 4147}
!4182 = metadata !{i64 4148}
!4183 = metadata !{i64 4149}
!4184 = metadata !{i64 4150}
!4185 = metadata !{i64 4151}
!4186 = metadata !{i64 4152}
!4187 = metadata !{i64 4153}
!4188 = metadata !{i64 4154}
!4189 = metadata !{i64 4155}
!4190 = metadata !{i64 4156}
!4191 = metadata !{i64 4157}
!4192 = metadata !{i64 4158}
!4193 = metadata !{i64 4159}
!4194 = metadata !{i64 4160}
!4195 = metadata !{i64 4161}
!4196 = metadata !{i64 4162}
!4197 = metadata !{i64 4163}
!4198 = metadata !{i64 4164}
!4199 = metadata !{i64 4165}
!4200 = metadata !{i64 4166}
!4201 = metadata !{i64 4167}
!4202 = metadata !{i64 4168}
!4203 = metadata !{i64 4169}
!4204 = metadata !{i64 4170}
!4205 = metadata !{i64 4171}
!4206 = metadata !{i64 4172}
!4207 = metadata !{i64 4173}
!4208 = metadata !{i64 4174}
!4209 = metadata !{i64 4175}
!4210 = metadata !{i64 4176}
!4211 = metadata !{i64 4177}
!4212 = metadata !{i64 4178}
!4213 = metadata !{i64 4179}
!4214 = metadata !{i64 4180}
!4215 = metadata !{i64 4181}
!4216 = metadata !{i64 4182}
!4217 = metadata !{i64 4183}
!4218 = metadata !{i64 4184}
!4219 = metadata !{i64 4185}
!4220 = metadata !{i64 4186}
!4221 = metadata !{i64 4187}
!4222 = metadata !{i64 0, i64 4, metadata !1, i64 4, i64 4, metadata !1, i64 8, i64 4, metadata !1, i64 16, i64 8, metadata !358, i64 24, i64 8, metadata !358}
!4223 = metadata !{i64 4188}
!4224 = metadata !{i64 4189}
!4225 = metadata !{i64 4190}
!4226 = metadata !{i64 4191}
!4227 = metadata !{i64 4192}
!4228 = metadata !{i64 4193}
!4229 = metadata !{i64 4194}
!4230 = metadata !{i64 4195}
!4231 = metadata !{i64 4196}
!4232 = metadata !{i64 4197}
!4233 = metadata !{i64 4198}
!4234 = metadata !{i64 4199}
!4235 = metadata !{i64 4200}
!4236 = metadata !{i64 4201}
!4237 = metadata !{i64 4202}
!4238 = metadata !{i64 4203}
!4239 = metadata !{i64 4204}
!4240 = metadata !{i64 4205}
!4241 = metadata !{i64 4206}
!4242 = metadata !{i64 4207}
!4243 = metadata !{i64 4208}
!4244 = metadata !{i64 4209}
!4245 = metadata !{i64 4210}
!4246 = metadata !{i64 4211}
!4247 = metadata !{i64 4212}
!4248 = metadata !{i64 4213}
!4249 = metadata !{i64 4214}
!4250 = metadata !{i64 4215}
!4251 = metadata !{i64 4216}
!4252 = metadata !{i64 4217}
!4253 = metadata !{i64 4218}
!4254 = metadata !{i64 4219}
!4255 = metadata !{i64 4220}
!4256 = metadata !{i64 4221}
!4257 = metadata !{i64 4222}
!4258 = metadata !{i64 4223}
!4259 = metadata !{i64 4224}
!4260 = metadata !{i64 4225}
!4261 = metadata !{i64 4226}
!4262 = metadata !{i64 4227}
!4263 = metadata !{i64 4228}
!4264 = metadata !{i64 4229}
!4265 = metadata !{i64 4230}
!4266 = metadata !{i64 4231}
!4267 = metadata !{i64 4232}
!4268 = metadata !{i64 4233}
!4269 = metadata !{i64 4234}
!4270 = metadata !{i64 4235}
!4271 = metadata !{i64 4236}
!4272 = metadata !{i64 4237}
!4273 = metadata !{i64 4238}
!4274 = metadata !{i64 4239}
!4275 = metadata !{i64 4240}
!4276 = metadata !{i64 4241}
!4277 = metadata !{i64 4242}
!4278 = metadata !{i64 4243}
!4279 = metadata !{i64 4244}
!4280 = metadata !{i64 4245}
!4281 = metadata !{i64 4246}
!4282 = metadata !{i64 4247}
!4283 = metadata !{i64 4248}
!4284 = metadata !{i64 4249}
!4285 = metadata !{i64 4250}
!4286 = metadata !{i64 4251}
!4287 = metadata !{i64 4252}
!4288 = metadata !{i64 4253}
!4289 = metadata !{i64 4254}
!4290 = metadata !{i64 4255}
!4291 = metadata !{i64 4256}
!4292 = metadata !{i64 4257}
!4293 = metadata !{i64 4258}
!4294 = metadata !{i64 4259}
!4295 = metadata !{i64 4260}
!4296 = metadata !{i64 4261}
!4297 = metadata !{i64 4262}
!4298 = metadata !{i64 4263}
!4299 = metadata !{i64 4264}
!4300 = metadata !{i64 4265}
!4301 = metadata !{i64 4266}
!4302 = metadata !{i64 4267}
!4303 = metadata !{i64 4268}
!4304 = metadata !{i64 4269}
!4305 = metadata !{i64 4270}
!4306 = metadata !{i64 4271}
!4307 = metadata !{i64 4272}
!4308 = metadata !{i64 4273}
!4309 = metadata !{i64 4274}
!4310 = metadata !{i64 4275}
!4311 = metadata !{i64 4276}
!4312 = metadata !{i64 4277}
!4313 = metadata !{i64 4278}
!4314 = metadata !{i64 4279}
!4315 = metadata !{i64 4280}
!4316 = metadata !{i64 4281}
!4317 = metadata !{i64 4282}
!4318 = metadata !{i64 4283}
!4319 = metadata !{i64 4284}
!4320 = metadata !{i64 4285}
!4321 = metadata !{i64 4286}
!4322 = metadata !{i64 4287}
!4323 = metadata !{i64 4288}
!4324 = metadata !{i64 4289}
!4325 = metadata !{i64 4290}
!4326 = metadata !{i64 4291}
!4327 = metadata !{i64 4292}
!4328 = metadata !{i64 4293}
!4329 = metadata !{i64 4294}
!4330 = metadata !{i64 4295}
!4331 = metadata !{i64 4296}
!4332 = metadata !{i64 4297}
!4333 = metadata !{i64 4298}
!4334 = metadata !{i64 4299}
!4335 = metadata !{i64 4300}
!4336 = metadata !{i64 4301}
!4337 = metadata !{i64 4302}
!4338 = metadata !{i64 4303}
!4339 = metadata !{i64 4304}
!4340 = metadata !{i64 4305}
!4341 = metadata !{i64 4306}
!4342 = metadata !{i64 4307}
!4343 = metadata !{i64 4308}
!4344 = metadata !{i64 4309}
!4345 = metadata !{i64 4310}
!4346 = metadata !{i64 4311}
!4347 = metadata !{i64 4312}
!4348 = metadata !{i64 4313}
!4349 = metadata !{i64 4314}
!4350 = metadata !{i64 4315}
!4351 = metadata !{i64 4316}
!4352 = metadata !{i64 4317}
!4353 = metadata !{i64 4318}
!4354 = metadata !{i64 4319}
!4355 = metadata !{i64 4320}
!4356 = metadata !{i64 4321}
!4357 = metadata !{i64 4322}
!4358 = metadata !{i64 4323}
!4359 = metadata !{i64 4324}
!4360 = metadata !{i64 4325}
!4361 = metadata !{i64 4326}
!4362 = metadata !{i64 4327}
!4363 = metadata !{i64 4328}
!4364 = metadata !{i64 4329}
!4365 = metadata !{i64 4330}
!4366 = metadata !{i64 4331}
!4367 = metadata !{i64 4332}
!4368 = metadata !{i64 4333}
!4369 = metadata !{i64 4334}
!4370 = metadata !{i64 4335}
!4371 = metadata !{i64 4336}
!4372 = metadata !{i64 4337}
!4373 = metadata !{i64 4338}
!4374 = metadata !{i64 4339}
!4375 = metadata !{i64 4340}
!4376 = metadata !{i64 4341}
!4377 = metadata !{i64 4342}
!4378 = metadata !{i64 4343}
!4379 = metadata !{i64 4344}
!4380 = metadata !{i64 4345}
!4381 = metadata !{i64 4346}
!4382 = metadata !{i64 4347}
!4383 = metadata !{i64 4348}
!4384 = metadata !{i64 4349}
!4385 = metadata !{i64 4350}
!4386 = metadata !{i64 4351}
!4387 = metadata !{i64 4352}
!4388 = metadata !{i64 4353}
!4389 = metadata !{i64 4354}
!4390 = metadata !{i64 4355}
!4391 = metadata !{i64 4356}
!4392 = metadata !{i64 4357}
!4393 = metadata !{i64 4358}
!4394 = metadata !{i64 4359}
!4395 = metadata !{i64 4360}
!4396 = metadata !{i64 4361}
!4397 = metadata !{i64 4362}
!4398 = metadata !{i64 4363}
!4399 = metadata !{i64 4364}
!4400 = metadata !{i64 4365}
!4401 = metadata !{i64 4366}
!4402 = metadata !{i64 4367}
!4403 = metadata !{i64 4368}
!4404 = metadata !{i64 4369}
!4405 = metadata !{i64 4370}
!4406 = metadata !{i64 4371}
!4407 = metadata !{i64 4372}
!4408 = metadata !{i64 4373}
!4409 = metadata !{i64 4374}
!4410 = metadata !{i64 4375}
!4411 = metadata !{i64 4376}
!4412 = metadata !{i64 4377}
!4413 = metadata !{i64 4378}
!4414 = metadata !{i64 4379}
!4415 = metadata !{i64 4380}
!4416 = metadata !{i64 4381}
!4417 = metadata !{i64 4382}
!4418 = metadata !{i64 4383}
!4419 = metadata !{i64 4384}
!4420 = metadata !{i64 4385}
!4421 = metadata !{i64 4386}
!4422 = metadata !{i64 4387}
!4423 = metadata !{i64 4388}
!4424 = metadata !{i64 4389}
!4425 = metadata !{i64 4390}
!4426 = metadata !{i64 4391}
!4427 = metadata !{i64 4392}
!4428 = metadata !{i64 4393}
!4429 = metadata !{i64 4394}
!4430 = metadata !{i64 4395}
!4431 = metadata !{i64 4396}
!4432 = metadata !{i64 4397}
!4433 = metadata !{i64 4398}
!4434 = metadata !{i64 4399}
!4435 = metadata !{i64 4400}
!4436 = metadata !{i64 4401}
!4437 = metadata !{i64 4402}
!4438 = metadata !{i64 4403}
!4439 = metadata !{i64 4404}
!4440 = metadata !{i64 4405}
!4441 = metadata !{i64 4406}
!4442 = metadata !{i64 4407}
!4443 = metadata !{i64 4408}
!4444 = metadata !{i64 4409}
!4445 = metadata !{i64 4410}
!4446 = metadata !{i64 4411}
!4447 = metadata !{i64 4412}
!4448 = metadata !{i64 4413}
!4449 = metadata !{i64 4414}
!4450 = metadata !{i64 4415}
!4451 = metadata !{i64 4416}
!4452 = metadata !{i64 4417}
!4453 = metadata !{i64 4418}
!4454 = metadata !{i64 4419}
!4455 = metadata !{i64 4420}
!4456 = metadata !{i64 4421}
!4457 = metadata !{i64 4422}
!4458 = metadata !{i64 4423}
!4459 = metadata !{i64 4424}
!4460 = metadata !{i64 4425}
!4461 = metadata !{i64 4426}
!4462 = metadata !{i64 4427}
!4463 = metadata !{i64 4428}
!4464 = metadata !{metadata !4465, metadata !4465, i64 0}
!4465 = metadata !{metadata !"double", metadata !3, i64 0}
!4466 = metadata !{i64 4429}
!4467 = metadata !{i64 4430}
!4468 = metadata !{i64 4431}
!4469 = metadata !{i64 4432}
!4470 = metadata !{i64 4433}
!4471 = metadata !{i64 4434}
!4472 = metadata !{i64 4435}
!4473 = metadata !{i64 4436}
!4474 = metadata !{i64 4437}
!4475 = metadata !{i64 4438}
!4476 = metadata !{i64 4439}
!4477 = metadata !{i64 4440}
!4478 = metadata !{i64 4441}
!4479 = metadata !{i64 4442}
!4480 = metadata !{i64 4443}
!4481 = metadata !{i64 4444}
!4482 = metadata !{i64 4445}
!4483 = metadata !{i64 4446}
!4484 = metadata !{i64 4447}
!4485 = metadata !{i64 4448}
!4486 = metadata !{i64 4449}
!4487 = metadata !{i64 4450}
!4488 = metadata !{i64 4451}
!4489 = metadata !{i64 4452}
!4490 = metadata !{i64 4453}
!4491 = metadata !{i64 4454}
!4492 = metadata !{i64 4455}
!4493 = metadata !{i64 4456}
!4494 = metadata !{i64 4457}
!4495 = metadata !{i64 4458}
!4496 = metadata !{i64 4459}
!4497 = metadata !{i64 4460}
!4498 = metadata !{i64 4461}
!4499 = metadata !{i64 4462}
!4500 = metadata !{i64 4463}
!4501 = metadata !{i64 4464}
!4502 = metadata !{i64 4465}
!4503 = metadata !{i64 4466}
!4504 = metadata !{i64 4467}
!4505 = metadata !{i64 4468}
!4506 = metadata !{i64 4469}
!4507 = metadata !{i64 4470}
!4508 = metadata !{i64 4471}
!4509 = metadata !{i64 4472}
!4510 = metadata !{i64 4473}
!4511 = metadata !{i64 4474}
!4512 = metadata !{i64 4475}
!4513 = metadata !{i64 4476}
!4514 = metadata !{i64 4477}
!4515 = metadata !{i64 4478}
!4516 = metadata !{i64 4479}
!4517 = metadata !{i64 4480}
!4518 = metadata !{i64 4481}
!4519 = metadata !{i64 4482}
!4520 = metadata !{i64 4483}
!4521 = metadata !{i64 4484}
!4522 = metadata !{i64 4485}
!4523 = metadata !{i64 4486}
!4524 = metadata !{i64 4487}
!4525 = metadata !{i64 4488}
!4526 = metadata !{i64 4489}
!4527 = metadata !{i64 4490}
!4528 = metadata !{i64 4491}
!4529 = metadata !{i64 4492}
!4530 = metadata !{i64 4493}
!4531 = metadata !{i64 4494}
!4532 = metadata !{i64 4495}
!4533 = metadata !{i64 4496}
!4534 = metadata !{i64 4497}
!4535 = metadata !{i64 4498}
!4536 = metadata !{i64 4499}
!4537 = metadata !{i64 4500}
!4538 = metadata !{i64 4501}
!4539 = metadata !{i64 4502}
!4540 = metadata !{i64 4503}
!4541 = metadata !{i64 4504}
!4542 = metadata !{i64 4505}
!4543 = metadata !{i64 4506}
!4544 = metadata !{i64 4507}
!4545 = metadata !{i64 4508}
!4546 = metadata !{i64 4509}
!4547 = metadata !{i64 4510}
!4548 = metadata !{i64 4511}
!4549 = metadata !{i64 4512}
!4550 = metadata !{i64 4513}
!4551 = metadata !{i64 4514}
!4552 = metadata !{i64 4515}
!4553 = metadata !{i64 4516}
!4554 = metadata !{i64 4517}
!4555 = metadata !{i64 4518}
!4556 = metadata !{i64 4519}
!4557 = metadata !{i64 4520}
!4558 = metadata !{i64 4521}
!4559 = metadata !{i64 4522}
!4560 = metadata !{i64 4523}
!4561 = metadata !{i64 4524}
!4562 = metadata !{i64 4525}
!4563 = metadata !{i64 4526}
!4564 = metadata !{i64 4527}
!4565 = metadata !{i64 4528}
!4566 = metadata !{i64 4529}
!4567 = metadata !{i64 4530}
!4568 = metadata !{i64 4531}
!4569 = metadata !{i64 4532}
!4570 = metadata !{i64 4533}
!4571 = metadata !{i64 4534}
!4572 = metadata !{i64 4535}
!4573 = metadata !{i64 4536}
!4574 = metadata !{i64 4537}
!4575 = metadata !{i64 4538}
!4576 = metadata !{i64 4539}
!4577 = metadata !{i64 4540}
!4578 = metadata !{i64 4541}
!4579 = metadata !{i64 4542}
!4580 = metadata !{i64 4543}
!4581 = metadata !{i64 4544}
!4582 = metadata !{i64 4545}
!4583 = metadata !{i64 4546}
!4584 = metadata !{i64 4547}
!4585 = metadata !{i64 4548}
!4586 = metadata !{i64 4549}
!4587 = metadata !{i64 4550}
!4588 = metadata !{i64 4551}
!4589 = metadata !{i64 4552}
!4590 = metadata !{i64 4553}
!4591 = metadata !{i64 4554}
!4592 = metadata !{i64 4555}
!4593 = metadata !{i64 4556}
!4594 = metadata !{i64 4557}
!4595 = metadata !{i64 4558}
!4596 = metadata !{i64 4559}
!4597 = metadata !{i64 4560}
!4598 = metadata !{i64 4561}
!4599 = metadata !{i64 4562}
!4600 = metadata !{i64 4563}
!4601 = metadata !{i64 4564}
!4602 = metadata !{i64 4565}
!4603 = metadata !{i64 4566}
!4604 = metadata !{i64 4567}
!4605 = metadata !{i64 4568}
!4606 = metadata !{i64 4569}
!4607 = metadata !{i64 4570}
!4608 = metadata !{i64 4571}
!4609 = metadata !{i64 4572}
!4610 = metadata !{i64 4573}
!4611 = metadata !{i64 4574}
!4612 = metadata !{i64 4575}
!4613 = metadata !{i64 4576}
!4614 = metadata !{i64 4577}
!4615 = metadata !{i64 4578}
!4616 = metadata !{i64 4579}
!4617 = metadata !{i64 4580}
!4618 = metadata !{i64 4581}
!4619 = metadata !{i64 4582}
!4620 = metadata !{i64 4583}
!4621 = metadata !{i64 4584}
!4622 = metadata !{i64 4585}
!4623 = metadata !{i64 4586}
!4624 = metadata !{i64 4587}
!4625 = metadata !{i64 4588}
!4626 = metadata !{i64 4589}
!4627 = metadata !{i64 4590}
!4628 = metadata !{i64 4591}
!4629 = metadata !{i64 4592}
!4630 = metadata !{i64 4593}
!4631 = metadata !{i64 4594}
!4632 = metadata !{i64 4595}
!4633 = metadata !{i64 4596}
!4634 = metadata !{i64 4597}
!4635 = metadata !{i64 4598}
!4636 = metadata !{i64 4599}
!4637 = metadata !{i64 4600}
!4638 = metadata !{i64 4601}
!4639 = metadata !{i64 4602}
!4640 = metadata !{i64 4603}
!4641 = metadata !{i64 4604}
!4642 = metadata !{i64 4605}
!4643 = metadata !{i64 4606}
!4644 = metadata !{i64 4607}
!4645 = metadata !{i64 4608}
!4646 = metadata !{i64 4609}
!4647 = metadata !{i64 4610}
!4648 = metadata !{i64 4611}
!4649 = metadata !{i64 4612}
!4650 = metadata !{i64 4613}
!4651 = metadata !{i64 4614}
!4652 = metadata !{i64 4615}
!4653 = metadata !{i64 4616}
!4654 = metadata !{i64 4617}
!4655 = metadata !{i64 4618}
!4656 = metadata !{i64 4619}
!4657 = metadata !{i64 4620}
!4658 = metadata !{i64 4621}
!4659 = metadata !{i64 4622}
!4660 = metadata !{i64 4623}
!4661 = metadata !{i64 4624}
!4662 = metadata !{i64 4625}
!4663 = metadata !{i64 4626}
!4664 = metadata !{i64 4627}
!4665 = metadata !{i64 4628}
!4666 = metadata !{i64 4629}
!4667 = metadata !{i64 4630}
!4668 = metadata !{i64 4631}
!4669 = metadata !{i64 4632}
!4670 = metadata !{i64 4633}
!4671 = metadata !{i64 4634}
!4672 = metadata !{i64 4635}
!4673 = metadata !{i64 4636}
!4674 = metadata !{i64 4637}
!4675 = metadata !{i64 4638}
!4676 = metadata !{i64 4639}
!4677 = metadata !{i64 4640}
!4678 = metadata !{i64 4641}
!4679 = metadata !{i64 4642}
!4680 = metadata !{i64 4643}
!4681 = metadata !{i64 4644}
!4682 = metadata !{i64 4645}
!4683 = metadata !{i64 4646}
!4684 = metadata !{i64 4647}
!4685 = metadata !{i64 4648}
!4686 = metadata !{i64 4649}
!4687 = metadata !{i64 4650}
!4688 = metadata !{i64 4651}
!4689 = metadata !{i64 4652}
!4690 = metadata !{i64 4653}
!4691 = metadata !{i64 4654}
!4692 = metadata !{i64 4655}
!4693 = metadata !{i64 4656}
!4694 = metadata !{i64 4657}
!4695 = metadata !{i64 4658}
!4696 = metadata !{i64 4659}
!4697 = metadata !{i64 4660}
!4698 = metadata !{i64 4661}
!4699 = metadata !{i64 4662}
!4700 = metadata !{i64 4663}
!4701 = metadata !{i64 4664}
!4702 = metadata !{i64 4665}
!4703 = metadata !{i64 4666}
!4704 = metadata !{i64 4667}
!4705 = metadata !{i64 4668}
!4706 = metadata !{i64 4669}
!4707 = metadata !{i64 4670}
!4708 = metadata !{i64 4671}
!4709 = metadata !{i64 4672}
!4710 = metadata !{i64 4673}
!4711 = metadata !{i64 4674}
!4712 = metadata !{i64 4675}
!4713 = metadata !{i64 4676}
!4714 = metadata !{i64 4677}
!4715 = metadata !{i64 4678}
!4716 = metadata !{i64 4679}
!4717 = metadata !{i64 4680}
!4718 = metadata !{i64 4681}
!4719 = metadata !{i64 4682}
!4720 = metadata !{i64 4683}
!4721 = metadata !{i64 4684}
!4722 = metadata !{i64 4685}
!4723 = metadata !{i64 4686}
!4724 = metadata !{i64 4687}
!4725 = metadata !{i64 4688}
!4726 = metadata !{i64 4689}
!4727 = metadata !{i64 4690}
!4728 = metadata !{i64 4691}
!4729 = metadata !{i64 4692}
!4730 = metadata !{i64 4693}
!4731 = metadata !{i64 4694}
!4732 = metadata !{i64 4695}
!4733 = metadata !{i64 4696}
!4734 = metadata !{i64 4697}
!4735 = metadata !{i64 4698}
!4736 = metadata !{i64 4699}
!4737 = metadata !{i64 4700}
!4738 = metadata !{i64 4701}
!4739 = metadata !{i64 4702}
!4740 = metadata !{i64 4703}
!4741 = metadata !{i64 4704}
!4742 = metadata !{i64 4705}
!4743 = metadata !{i64 4706}
!4744 = metadata !{i64 4707}
!4745 = metadata !{i64 4708}
!4746 = metadata !{i64 4709}
!4747 = metadata !{i64 4710}
!4748 = metadata !{i64 4711}
!4749 = metadata !{i64 4712}
!4750 = metadata !{i64 4713}
!4751 = metadata !{i64 4714}
!4752 = metadata !{i64 4715}
!4753 = metadata !{i64 4716}
!4754 = metadata !{i64 4717}
!4755 = metadata !{i64 4718}
!4756 = metadata !{i64 4719}
!4757 = metadata !{i64 4720}
!4758 = metadata !{i64 4721}
!4759 = metadata !{i64 4722}
!4760 = metadata !{i64 4723}
!4761 = metadata !{i64 4724}
!4762 = metadata !{i64 4725}
!4763 = metadata !{i64 4726}
!4764 = metadata !{i64 4727}
!4765 = metadata !{i64 4728}
!4766 = metadata !{i64 4729}
!4767 = metadata !{i64 4730}
!4768 = metadata !{i64 4731}
!4769 = metadata !{i64 4732}
!4770 = metadata !{i64 4733}
!4771 = metadata !{i64 4734}
!4772 = metadata !{i64 4735}
!4773 = metadata !{i64 4736}
!4774 = metadata !{i64 4737}
!4775 = metadata !{i64 4738}
!4776 = metadata !{i64 4739}
!4777 = metadata !{i64 4740}
!4778 = metadata !{i64 4741}
!4779 = metadata !{i64 4742}
!4780 = metadata !{i64 4743}
!4781 = metadata !{i64 4744}
!4782 = metadata !{i64 4745}
!4783 = metadata !{i64 4746}
!4784 = metadata !{i64 4747}
!4785 = metadata !{i64 4748}
!4786 = metadata !{i64 4749}
!4787 = metadata !{i64 4750}
!4788 = metadata !{i64 4751}
!4789 = metadata !{i64 4752}
!4790 = metadata !{i64 4753}
!4791 = metadata !{i64 4754}
!4792 = metadata !{i64 4755}
!4793 = metadata !{i64 4756}
!4794 = metadata !{i64 4757}
!4795 = metadata !{i64 4758}
!4796 = metadata !{i64 4759}
!4797 = metadata !{i64 4760}
!4798 = metadata !{i64 4761}
!4799 = metadata !{i64 4762}
!4800 = metadata !{i64 4763}
!4801 = metadata !{i64 4764}
!4802 = metadata !{i64 4765}
!4803 = metadata !{i64 4766}
!4804 = metadata !{i64 4767}
!4805 = metadata !{i64 4768}
!4806 = metadata !{i64 4769}
!4807 = metadata !{i64 4770}
!4808 = metadata !{i64 4771}
!4809 = metadata !{i64 4772}
!4810 = metadata !{i64 4773}
!4811 = metadata !{i64 4774}
!4812 = metadata !{i64 4775}
!4813 = metadata !{i64 4776}
!4814 = metadata !{i64 4777}
!4815 = metadata !{i64 4778}
!4816 = metadata !{i64 4779}
!4817 = metadata !{i64 4780}
!4818 = metadata !{i64 4781}
!4819 = metadata !{i64 4782}
!4820 = metadata !{i64 4783}
!4821 = metadata !{i64 4784}
!4822 = metadata !{i64 4785}
!4823 = metadata !{i64 4786}
!4824 = metadata !{i64 4787}
!4825 = metadata !{i64 4788}
!4826 = metadata !{i64 4789}
!4827 = metadata !{i64 4790}
!4828 = metadata !{i64 4791}
!4829 = metadata !{i64 4792}
!4830 = metadata !{i64 4793}
!4831 = metadata !{i64 4794}
!4832 = metadata !{i64 4795}
!4833 = metadata !{i64 4796}
!4834 = metadata !{i64 4797}
!4835 = metadata !{i64 4798}
!4836 = metadata !{i64 4799}
!4837 = metadata !{i64 4800}
!4838 = metadata !{i64 4801}
!4839 = metadata !{i64 4802}
!4840 = metadata !{i64 4803}
!4841 = metadata !{i64 4804}
!4842 = metadata !{i64 4805}
!4843 = metadata !{i64 4806}
!4844 = metadata !{i64 4807}
!4845 = metadata !{i64 4808}
!4846 = metadata !{i64 4809}
!4847 = metadata !{i64 4810}
!4848 = metadata !{i64 4811}
!4849 = metadata !{i64 4812}
!4850 = metadata !{i64 4813}
!4851 = metadata !{i64 4814}
!4852 = metadata !{i64 4815}
!4853 = metadata !{i64 4816}
!4854 = metadata !{i64 4817}
!4855 = metadata !{i64 4818}
!4856 = metadata !{i64 4819}
!4857 = metadata !{i64 4820}
!4858 = metadata !{i64 4821}
!4859 = metadata !{i64 4822}
!4860 = metadata !{i64 4823}
!4861 = metadata !{i64 4824}
!4862 = metadata !{i64 4825}
!4863 = metadata !{i64 4826}
!4864 = metadata !{i64 4827}
!4865 = metadata !{i64 4828}
!4866 = metadata !{i64 4829}
!4867 = metadata !{i64 4830}
!4868 = metadata !{i64 4831}
!4869 = metadata !{i64 4832}
!4870 = metadata !{i64 4833}
!4871 = metadata !{i64 4834}
!4872 = metadata !{i64 4835}
!4873 = metadata !{i64 4836}
!4874 = metadata !{i64 4837}
!4875 = metadata !{i64 4838}
!4876 = metadata !{i64 4839}
!4877 = metadata !{i64 4840}
!4878 = metadata !{i64 4841}
!4879 = metadata !{i64 4842}
!4880 = metadata !{i64 4843}
!4881 = metadata !{i64 4844}
!4882 = metadata !{i64 4845}
!4883 = metadata !{i64 4846}
!4884 = metadata !{i64 4847}
!4885 = metadata !{i64 4848}
!4886 = metadata !{i64 4849}
!4887 = metadata !{i64 4850}
!4888 = metadata !{i64 4851}
!4889 = metadata !{i64 4852}
!4890 = metadata !{i64 4853}
!4891 = metadata !{i64 4854}
!4892 = metadata !{i64 4855}
!4893 = metadata !{i64 4856}
!4894 = metadata !{i64 4857}
!4895 = metadata !{i64 4858}
!4896 = metadata !{i64 4859}
!4897 = metadata !{i64 4860}
!4898 = metadata !{i64 4861}
!4899 = metadata !{i64 4862}
!4900 = metadata !{i64 4863}
!4901 = metadata !{i64 4864}
!4902 = metadata !{i64 4865}
!4903 = metadata !{i64 4866}
!4904 = metadata !{i64 4867}
!4905 = metadata !{i64 4868}
!4906 = metadata !{i64 4869}
!4907 = metadata !{i64 4870}
!4908 = metadata !{i64 4871}
!4909 = metadata !{i64 4872}
!4910 = metadata !{i64 4873}
!4911 = metadata !{i64 4874}
!4912 = metadata !{i64 4875}
!4913 = metadata !{i64 4876}
!4914 = metadata !{i64 4877}
!4915 = metadata !{i64 4878}
!4916 = metadata !{i64 4879}
!4917 = metadata !{i64 4880}
!4918 = metadata !{i64 4881}
!4919 = metadata !{i64 4882}
!4920 = metadata !{i64 4883}
!4921 = metadata !{i64 4884}
!4922 = metadata !{i64 4885}
!4923 = metadata !{i64 4886}
!4924 = metadata !{i64 4887}
!4925 = metadata !{i64 4888}
!4926 = metadata !{i64 4889}
!4927 = metadata !{i64 4890}
!4928 = metadata !{i64 4891}
!4929 = metadata !{i64 4892}
!4930 = metadata !{i64 4893}
!4931 = metadata !{i64 4894}
!4932 = metadata !{i64 4895}
!4933 = metadata !{i64 4896}
!4934 = metadata !{i64 4897}
!4935 = metadata !{i64 4898}
!4936 = metadata !{i64 4899}
!4937 = metadata !{i64 4900}
!4938 = metadata !{i64 4901}
!4939 = metadata !{i64 4902}
!4940 = metadata !{i64 4903}
!4941 = metadata !{i64 4904}
!4942 = metadata !{i64 4905}
!4943 = metadata !{i64 4906}
!4944 = metadata !{i64 4907}
!4945 = metadata !{i64 4908}
!4946 = metadata !{i64 4909}
!4947 = metadata !{i64 4910}
!4948 = metadata !{i64 4911}
!4949 = metadata !{i64 4912}
!4950 = metadata !{i64 4913}
!4951 = metadata !{i64 4914}
!4952 = metadata !{i64 4915}
!4953 = metadata !{i64 4916}
!4954 = metadata !{i64 4917}
!4955 = metadata !{i64 4918}
!4956 = metadata !{i64 4919}
!4957 = metadata !{i64 4920}
!4958 = metadata !{i64 4921}
!4959 = metadata !{i64 4922}
!4960 = metadata !{i64 4923}
!4961 = metadata !{i64 4924}
!4962 = metadata !{i64 4925}
!4963 = metadata !{i64 4926}
!4964 = metadata !{i64 4927}
!4965 = metadata !{i64 4928}
!4966 = metadata !{i64 4929}
!4967 = metadata !{i64 4930}
!4968 = metadata !{i64 4931}
!4969 = metadata !{i64 4932}
!4970 = metadata !{i64 4933}
!4971 = metadata !{i64 4934}
!4972 = metadata !{i64 4935}
!4973 = metadata !{i64 4936}
!4974 = metadata !{i64 4937}
!4975 = metadata !{i64 4938}
!4976 = metadata !{i64 4939}
!4977 = metadata !{i64 4940}
!4978 = metadata !{i64 4941}
!4979 = metadata !{i64 4942}
!4980 = metadata !{i64 4943}
!4981 = metadata !{i64 4944}
!4982 = metadata !{i64 4945}
!4983 = metadata !{i64 4946}
!4984 = metadata !{i64 4947}
!4985 = metadata !{i64 4948}
!4986 = metadata !{i64 4949}
!4987 = metadata !{i64 4950}
!4988 = metadata !{i64 4951}
!4989 = metadata !{i64 4952}
!4990 = metadata !{i64 4953}
!4991 = metadata !{i64 4954}
!4992 = metadata !{i64 4955}
!4993 = metadata !{i64 4956}
!4994 = metadata !{i64 4957}
!4995 = metadata !{i64 4958}
!4996 = metadata !{i64 4959}
!4997 = metadata !{i64 4960}
!4998 = metadata !{i64 4961}
!4999 = metadata !{i64 4962}
!5000 = metadata !{i64 4963}
!5001 = metadata !{i64 4964}
!5002 = metadata !{i64 4965}
!5003 = metadata !{i64 4966}
!5004 = metadata !{i64 4967}
!5005 = metadata !{i64 4968}
!5006 = metadata !{i64 4969}
!5007 = metadata !{i64 4970}
!5008 = metadata !{i64 4971}
!5009 = metadata !{i64 4972}
!5010 = metadata !{i64 4973}
!5011 = metadata !{i64 4974}
!5012 = metadata !{i64 4975}
!5013 = metadata !{i64 4976}
!5014 = metadata !{i64 4977}
!5015 = metadata !{i64 4978}
!5016 = metadata !{i64 4979}
!5017 = metadata !{i64 4980}
!5018 = metadata !{i64 4981}
!5019 = metadata !{i64 4982}
!5020 = metadata !{i64 4983}
!5021 = metadata !{i64 4984}
!5022 = metadata !{i64 4985}
!5023 = metadata !{i64 4986}
!5024 = metadata !{i64 4987}
!5025 = metadata !{i64 4988}
!5026 = metadata !{i64 4989}
!5027 = metadata !{i64 4990}
!5028 = metadata !{i64 4991}
!5029 = metadata !{i64 4992}
!5030 = metadata !{i64 4993}
!5031 = metadata !{i64 4994}
!5032 = metadata !{i64 4995}
!5033 = metadata !{i64 4996}
!5034 = metadata !{i64 4997}
!5035 = metadata !{i64 4998}
!5036 = metadata !{i64 4999}
!5037 = metadata !{i64 5000}
!5038 = metadata !{i64 5001}
!5039 = metadata !{i64 5002}
!5040 = metadata !{i64 5003}
!5041 = metadata !{i64 5004}
!5042 = metadata !{i64 5005}
!5043 = metadata !{i64 5006}
!5044 = metadata !{i64 5007}
!5045 = metadata !{i64 5008}
!5046 = metadata !{i64 5009}
!5047 = metadata !{i64 5010}
!5048 = metadata !{i64 5011}
!5049 = metadata !{i64 5012}
!5050 = metadata !{i64 5013}
!5051 = metadata !{i64 5014}
!5052 = metadata !{i64 5015}
!5053 = metadata !{i64 5016}
!5054 = metadata !{i64 5017}
!5055 = metadata !{i64 5018}
!5056 = metadata !{i64 5019}
!5057 = metadata !{i64 5020}
!5058 = metadata !{i64 5021}
!5059 = metadata !{i64 5022}
!5060 = metadata !{i64 5023}
!5061 = metadata !{i64 5024}
!5062 = metadata !{i64 5025}
!5063 = metadata !{i64 5026}
!5064 = metadata !{i64 5027}
!5065 = metadata !{i64 5028}
!5066 = metadata !{i64 5029}
!5067 = metadata !{i64 5030}
!5068 = metadata !{i64 5031}
!5069 = metadata !{i64 5032}
!5070 = metadata !{i64 5033}
!5071 = metadata !{i64 5034}
!5072 = metadata !{i64 5035}
!5073 = metadata !{i64 5036}
!5074 = metadata !{i64 5037}
!5075 = metadata !{i64 5038}
!5076 = metadata !{i64 5039}
!5077 = metadata !{i64 5040}
!5078 = metadata !{i64 5041}
!5079 = metadata !{i64 5042}
!5080 = metadata !{i64 5043}
!5081 = metadata !{i64 5044}
!5082 = metadata !{i64 5045}
!5083 = metadata !{i64 5046}
!5084 = metadata !{i64 5047}
!5085 = metadata !{i64 5048}
!5086 = metadata !{i64 5049}
!5087 = metadata !{i64 5050}
!5088 = metadata !{i64 5051}
!5089 = metadata !{i64 5052}
!5090 = metadata !{i64 5053}
!5091 = metadata !{i64 5054}
!5092 = metadata !{i64 5055}
!5093 = metadata !{i64 5056}
!5094 = metadata !{i64 5057}
!5095 = metadata !{i64 5058}
!5096 = metadata !{i64 5059}
!5097 = metadata !{i64 5060}
!5098 = metadata !{i64 5061}
!5099 = metadata !{i64 5062}
!5100 = metadata !{i64 5063}
!5101 = metadata !{i64 5064}
!5102 = metadata !{i64 5065}
!5103 = metadata !{i64 5066}
!5104 = metadata !{i64 5067}
!5105 = metadata !{i64 5068}
!5106 = metadata !{i64 5069}
!5107 = metadata !{i64 5070}
!5108 = metadata !{i64 5071}
!5109 = metadata !{i64 5072}
!5110 = metadata !{i64 5073}
!5111 = metadata !{i64 5074}
!5112 = metadata !{i64 5075}
!5113 = metadata !{i64 5076}
!5114 = metadata !{i64 5077}
!5115 = metadata !{i64 5078}
!5116 = metadata !{i64 5079}
!5117 = metadata !{i64 5080}
!5118 = metadata !{i64 5081}
!5119 = metadata !{i64 5082}
!5120 = metadata !{i64 5083}
!5121 = metadata !{i64 5084}
!5122 = metadata !{i64 5085}
!5123 = metadata !{i64 5086}
!5124 = metadata !{i64 5087}
!5125 = metadata !{i64 5088}
!5126 = metadata !{i64 5089}
!5127 = metadata !{i64 5090}
!5128 = metadata !{i64 5091}
!5129 = metadata !{i64 5092}
!5130 = metadata !{i64 5093}
!5131 = metadata !{i64 5094}
!5132 = metadata !{i64 5095}
!5133 = metadata !{i64 5096}
!5134 = metadata !{i64 5097}
!5135 = metadata !{i64 5098}
!5136 = metadata !{i64 5099}
!5137 = metadata !{i64 5100}
!5138 = metadata !{i64 5101}
!5139 = metadata !{i64 5102}
!5140 = metadata !{i64 5103}
!5141 = metadata !{i64 5104}
!5142 = metadata !{i64 5105}
!5143 = metadata !{i64 5106}
!5144 = metadata !{i64 5107}
!5145 = metadata !{i64 5108}
!5146 = metadata !{i64 5109}
!5147 = metadata !{i64 5110}
!5148 = metadata !{i64 5111}
!5149 = metadata !{i64 5112}
!5150 = metadata !{i64 5113}
!5151 = metadata !{i64 5114}
!5152 = metadata !{i64 5115}
!5153 = metadata !{i64 5116}
!5154 = metadata !{i64 5117}
!5155 = metadata !{i64 5118}
!5156 = metadata !{i64 5119}
!5157 = metadata !{i64 5120}
!5158 = metadata !{i64 5121}
!5159 = metadata !{i64 5122}
!5160 = metadata !{i64 5123}
!5161 = metadata !{i64 5124}
!5162 = metadata !{i64 5125}
!5163 = metadata !{i64 5126}
!5164 = metadata !{i64 5127}
!5165 = metadata !{i64 5128}
!5166 = metadata !{i64 5129}
!5167 = metadata !{i64 5130}
!5168 = metadata !{i64 5131}
!5169 = metadata !{i64 5132}
!5170 = metadata !{i64 5133}
!5171 = metadata !{i64 5134}
!5172 = metadata !{i64 5135}
!5173 = metadata !{i64 5136}
!5174 = metadata !{i64 5137}
!5175 = metadata !{i64 5138}
!5176 = metadata !{i64 5139}
!5177 = metadata !{i64 5140}
!5178 = metadata !{i64 5141}
!5179 = metadata !{i64 5142}
!5180 = metadata !{i64 5143}
!5181 = metadata !{i64 5144}
!5182 = metadata !{i64 5145}
!5183 = metadata !{i64 5146}
!5184 = metadata !{i64 5147}
!5185 = metadata !{i64 5148}
!5186 = metadata !{i64 5149}
!5187 = metadata !{i64 5150}
!5188 = metadata !{i64 5151}
!5189 = metadata !{i64 5152}
!5190 = metadata !{i64 5153}
!5191 = metadata !{i64 5154}
!5192 = metadata !{i64 5155}
!5193 = metadata !{i64 5156}
!5194 = metadata !{i64 5157}
!5195 = metadata !{i64 5158}
!5196 = metadata !{i64 5159}
!5197 = metadata !{i64 5160}
!5198 = metadata !{i64 5161}
!5199 = metadata !{i64 5162}
!5200 = metadata !{i64 5163}
!5201 = metadata !{i64 5164}
!5202 = metadata !{i64 5165}
!5203 = metadata !{i64 5166}
!5204 = metadata !{i64 5167}
!5205 = metadata !{i64 5168}
!5206 = metadata !{i64 5169}
!5207 = metadata !{i64 5170}
!5208 = metadata !{i64 5171}
!5209 = metadata !{i64 5172}
!5210 = metadata !{i64 5173}
!5211 = metadata !{i64 5174}
!5212 = metadata !{i64 5175}
!5213 = metadata !{i64 5176}
!5214 = metadata !{i64 5177}
!5215 = metadata !{i64 5178}
!5216 = metadata !{i64 5179}
!5217 = metadata !{i64 5180}
!5218 = metadata !{i64 5181}
!5219 = metadata !{i64 5182}
!5220 = metadata !{i64 5183}
!5221 = metadata !{i64 5184}
!5222 = metadata !{i64 5185}
!5223 = metadata !{i64 5186}
!5224 = metadata !{i64 5187}
!5225 = metadata !{i64 5188}
!5226 = metadata !{i64 5189}
!5227 = metadata !{i64 5190}
!5228 = metadata !{i64 5191}
!5229 = metadata !{i64 5192}
!5230 = metadata !{i64 5193}
!5231 = metadata !{i64 5194}
!5232 = metadata !{i64 5195}
!5233 = metadata !{i64 5196}
!5234 = metadata !{i64 5197}
!5235 = metadata !{i64 5198}
!5236 = metadata !{i64 5199}
!5237 = metadata !{i64 5200}
!5238 = metadata !{i64 5201}
!5239 = metadata !{i64 5202}
!5240 = metadata !{i64 5203}
!5241 = metadata !{i64 5204}
!5242 = metadata !{i64 5205}
!5243 = metadata !{i64 5206}
!5244 = metadata !{i64 5207}
!5245 = metadata !{i64 5208}
!5246 = metadata !{i64 5209}
!5247 = metadata !{i64 5210}
!5248 = metadata !{i64 5211}
!5249 = metadata !{i64 5212}
!5250 = metadata !{i64 5213}
!5251 = metadata !{i64 5214}
!5252 = metadata !{i64 5215}
!5253 = metadata !{i64 5216}
!5254 = metadata !{i64 5217}
!5255 = metadata !{i64 5218}
!5256 = metadata !{i64 5219}
!5257 = metadata !{i64 5220}
!5258 = metadata !{i64 5221}
!5259 = metadata !{i64 5222}
!5260 = metadata !{i64 5223}
!5261 = metadata !{i64 5224}
!5262 = metadata !{i64 5225}
!5263 = metadata !{i64 5226}
!5264 = metadata !{i64 5227}
!5265 = metadata !{i64 5228}
!5266 = metadata !{i64 5229}
!5267 = metadata !{i64 5230}
!5268 = metadata !{i64 5231}
!5269 = metadata !{i64 5232}
!5270 = metadata !{i64 5233}
!5271 = metadata !{i64 5234}
!5272 = metadata !{i64 5235}
!5273 = metadata !{i64 5236}
!5274 = metadata !{i64 5237}
!5275 = metadata !{i64 5238}
!5276 = metadata !{i64 5239}
!5277 = metadata !{i64 5240}
!5278 = metadata !{i64 5241}
!5279 = metadata !{i64 5242}
!5280 = metadata !{i64 5243}
!5281 = metadata !{i64 5244}
!5282 = metadata !{i64 5245}
!5283 = metadata !{i64 5246}
!5284 = metadata !{i64 5247}
!5285 = metadata !{i64 5248}
!5286 = metadata !{i64 5249}
!5287 = metadata !{i64 5250}
!5288 = metadata !{i64 5251}
!5289 = metadata !{i64 5252}
!5290 = metadata !{i64 5253}
!5291 = metadata !{i64 5254}
!5292 = metadata !{i64 5255}
!5293 = metadata !{i64 5256}
!5294 = metadata !{i64 5257}
!5295 = metadata !{i64 5258}
!5296 = metadata !{i64 5259}
!5297 = metadata !{i64 5260}
!5298 = metadata !{i64 5261}
!5299 = metadata !{i64 5262}
!5300 = metadata !{i64 5263}
!5301 = metadata !{i64 5264}
!5302 = metadata !{i64 5265}
!5303 = metadata !{i64 5266}
!5304 = metadata !{i64 5267}
!5305 = metadata !{i64 5268}
!5306 = metadata !{i64 5269}
!5307 = metadata !{i64 5270}
!5308 = metadata !{i64 5271}
!5309 = metadata !{i64 5272}
!5310 = metadata !{i64 5273}
!5311 = metadata !{i64 5274}
!5312 = metadata !{i64 5275}
!5313 = metadata !{i64 5276}
!5314 = metadata !{i64 5277}
!5315 = metadata !{i64 5278}
!5316 = metadata !{i64 5279}
!5317 = metadata !{i64 5280}
!5318 = metadata !{i64 5281}
!5319 = metadata !{i64 5282}
!5320 = metadata !{i64 5283}
!5321 = metadata !{i64 5284}
!5322 = metadata !{i64 5285}
!5323 = metadata !{i64 5286}
!5324 = metadata !{i64 5287}
!5325 = metadata !{i64 5288}
!5326 = metadata !{i64 5289}
!5327 = metadata !{i64 5290}
!5328 = metadata !{i64 5291}
!5329 = metadata !{i64 5292}
!5330 = metadata !{i64 5293}
!5331 = metadata !{i64 5294}
!5332 = metadata !{i64 5295}
!5333 = metadata !{i64 5296}
!5334 = metadata !{i64 5297}
!5335 = metadata !{i64 5298}
!5336 = metadata !{i64 5299}
!5337 = metadata !{i64 5300}
!5338 = metadata !{i64 5301}
!5339 = metadata !{i64 5302}
!5340 = metadata !{i64 5303}
!5341 = metadata !{i64 5304}
!5342 = metadata !{i64 5305}
!5343 = metadata !{i64 5306}
!5344 = metadata !{i64 5307}
!5345 = metadata !{i64 5308}
!5346 = metadata !{i64 5309}
!5347 = metadata !{i64 5310}
!5348 = metadata !{i64 5311}
!5349 = metadata !{i64 5312}
!5350 = metadata !{i64 5313}
!5351 = metadata !{i64 5314}
!5352 = metadata !{i64 5315}
!5353 = metadata !{i64 5316}
!5354 = metadata !{i64 5317}
!5355 = metadata !{i64 5318}
!5356 = metadata !{i64 5319}
!5357 = metadata !{i64 5320}
!5358 = metadata !{i64 5321}
!5359 = metadata !{i64 5322}
!5360 = metadata !{i64 5323}
!5361 = metadata !{i64 5324}
!5362 = metadata !{i64 5325}
!5363 = metadata !{i64 5326}
!5364 = metadata !{i64 5327}
!5365 = metadata !{i64 5328}
!5366 = metadata !{metadata !5367, metadata !5367, i64 0}
!5367 = metadata !{metadata !"float", metadata !3, i64 0}
!5368 = metadata !{i64 5329}
!5369 = metadata !{i64 5330}
!5370 = metadata !{i64 5331}
!5371 = metadata !{i64 5332}
!5372 = metadata !{i64 5333}
!5373 = metadata !{i64 5334}
!5374 = metadata !{i64 5335}
!5375 = metadata !{i64 5336}
!5376 = metadata !{i64 5337}
!5377 = metadata !{i64 5338}
!5378 = metadata !{i64 5339}
!5379 = metadata !{i64 5340}
!5380 = metadata !{i64 5341}
!5381 = metadata !{i64 5342}
!5382 = metadata !{i64 5343}
!5383 = metadata !{i64 5344}
!5384 = metadata !{i64 5345}
!5385 = metadata !{i64 5346}
!5386 = metadata !{i64 5347}
!5387 = metadata !{i64 5348}
!5388 = metadata !{i64 5349}
!5389 = metadata !{i64 5350}
!5390 = metadata !{i64 5351}
!5391 = metadata !{i64 5352}
!5392 = metadata !{i64 5353}
!5393 = metadata !{i64 5354}
!5394 = metadata !{i64 5355}
!5395 = metadata !{i64 5356}
!5396 = metadata !{i64 5357}
!5397 = metadata !{i64 5358}
!5398 = metadata !{i64 5359}
!5399 = metadata !{i64 5360}
!5400 = metadata !{i64 5361}
!5401 = metadata !{i64 5362}
!5402 = metadata !{i64 5363}
!5403 = metadata !{i64 5364}
!5404 = metadata !{i64 5365}
!5405 = metadata !{i64 5366}
!5406 = metadata !{i64 5367}
!5407 = metadata !{i64 5368}
!5408 = metadata !{i64 5369}
!5409 = metadata !{i64 5370}
!5410 = metadata !{i64 5371}
!5411 = metadata !{i64 5372}
!5412 = metadata !{i64 5373}
!5413 = metadata !{i64 5374}
!5414 = metadata !{i64 5375}
!5415 = metadata !{i64 5376}
!5416 = metadata !{i64 5377}
!5417 = metadata !{i64 5378}
!5418 = metadata !{i64 5379}
!5419 = metadata !{i64 5380}
!5420 = metadata !{i64 5381}
!5421 = metadata !{i64 5382}
!5422 = metadata !{i64 5383}
!5423 = metadata !{i64 5384}
!5424 = metadata !{i64 5385}
!5425 = metadata !{i64 5386}
!5426 = metadata !{i64 5387}
!5427 = metadata !{i64 5388}
!5428 = metadata !{i64 5389}
!5429 = metadata !{i64 5390}
!5430 = metadata !{i64 5391}
!5431 = metadata !{i64 5392}
!5432 = metadata !{i64 5393}
!5433 = metadata !{i64 5394}
!5434 = metadata !{i64 5395}
!5435 = metadata !{i64 5396}
!5436 = metadata !{i64 5397}
!5437 = metadata !{i64 5398}
!5438 = metadata !{i64 5399}
!5439 = metadata !{i64 5400}
!5440 = metadata !{i64 5401}
!5441 = metadata !{i64 5402}
!5442 = metadata !{i64 5403}
!5443 = metadata !{i64 5404}
!5444 = metadata !{i64 5405}
!5445 = metadata !{i64 5406}
!5446 = metadata !{i64 5407}
!5447 = metadata !{i64 5408}
!5448 = metadata !{i64 5409}
!5449 = metadata !{i64 5410}
!5450 = metadata !{i64 5411}
!5451 = metadata !{i64 5412}
!5452 = metadata !{i64 5413}
!5453 = metadata !{i64 5414}
!5454 = metadata !{i64 5415}
!5455 = metadata !{i64 5416}
!5456 = metadata !{i64 5417}
!5457 = metadata !{i64 5418}
!5458 = metadata !{i64 5419}
!5459 = metadata !{i64 5420}
!5460 = metadata !{i64 5421}
!5461 = metadata !{i64 5422}
!5462 = metadata !{i64 5423}
!5463 = metadata !{i64 5424}
!5464 = metadata !{i64 5425}
!5465 = metadata !{i64 5426}
!5466 = metadata !{i64 5427}
!5467 = metadata !{i64 5428}
!5468 = metadata !{i64 5429}
!5469 = metadata !{i64 5430}
!5470 = metadata !{i64 5431}
!5471 = metadata !{i64 5432}
!5472 = metadata !{i64 5433}
!5473 = metadata !{i64 5434}
!5474 = metadata !{i64 5435}
!5475 = metadata !{i64 5436}
!5476 = metadata !{i64 5437}
!5477 = metadata !{i64 5438}
!5478 = metadata !{i64 5439}
!5479 = metadata !{i64 5440}
!5480 = metadata !{i64 5441}
!5481 = metadata !{i64 5442}
!5482 = metadata !{i64 5443}
!5483 = metadata !{i64 5444}
!5484 = metadata !{i64 5445}
!5485 = metadata !{i64 5446}
!5486 = metadata !{i64 5447}
!5487 = metadata !{i64 5448}
!5488 = metadata !{i64 5449}
!5489 = metadata !{i64 5450}
!5490 = metadata !{i64 5451}
!5491 = metadata !{i64 5452}
!5492 = metadata !{i64 5453}
!5493 = metadata !{i64 5454}
!5494 = metadata !{i64 5455}
!5495 = metadata !{i64 5456}
!5496 = metadata !{i64 5457}
!5497 = metadata !{i64 5458}
!5498 = metadata !{i64 5459}
!5499 = metadata !{i64 5460}
!5500 = metadata !{i64 5461}
