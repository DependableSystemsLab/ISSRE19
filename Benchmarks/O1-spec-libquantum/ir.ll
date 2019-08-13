; ModuleID = '/ubc/ece/home/kp/grads/lpalazzi/Documents/DependableSystemsLab/benchmarks/spec-libquantum/fault injection/llfi-O1/libquantum.ll'
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
@.str = private unnamed_addr constant [23 x i8] c"Usage: shor [number]\0A\0A\00", align 1
@.str1 = private unnamed_addr constant [17 x i8] c"Invalid number\0A\0A\00", align 1
@.str2 = private unnamed_addr constant [28 x i8] c"N = %i, %i qubits required\0A\00", align 1
@.str3 = private unnamed_addr constant [25 x i8] c"Impossible Measurement!\0A\00", align 1
@.str4 = private unnamed_addr constant [27 x i8] c"Measured zero, try again.\0A\00", align 1
@.str5 = private unnamed_addr constant [19 x i8] c"Measured %i (%f), \00", align 1
@.str6 = private unnamed_addr constant [36 x i8] c"fractional approximation is %i/%i.\0A\00", align 1
@.str7 = private unnamed_addr constant [41 x i8] c"Odd denominator, trying to expand by 2.\0A\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"Odd period, try again.\0A\00", align 1
@.str9 = private unnamed_addr constant [24 x i8] c"Possible period is %i.\0A\00", align 1
@.str10 = private unnamed_addr constant [14 x i8] c"%i = %i * %i\0A\00", align 1
@.str11 = private unnamed_addr constant [41 x i8] c"Unable to determine factors, try again.\0A\00", align 1
@str = private unnamed_addr constant [40 x i8] c"Unable to determine factors, try again.\00"
@str12 = private unnamed_addr constant [23 x i8] c"Odd period, try again.\00"
@str13 = private unnamed_addr constant [40 x i8] c"Odd denominator, trying to expand by 2.\00"
@str14 = private unnamed_addr constant [26 x i8] c"Measured zero, try again.\00"
@str15 = private unnamed_addr constant [24 x i8] c"Impossible Measurement!\00"
@str16 = private unnamed_addr constant [16 x i8] c"Invalid number\0A\00"
@str17 = private unnamed_addr constant [22 x i8] c"Usage: shor [number]\0A\00"
@.str12 = private unnamed_addr constant [40 x i8] c"Error allocating %i-element int array!\0A\00", align 1
@.str113 = private unnamed_addr constant [29 x i8] c"Matrix is not a 2x2 matrix!\0A\00", align 1
@.str214 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i-sized qubit!\0A\00", align 1
@.str315 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i bytes array!\0A\00", align 1
@.str416 = private unnamed_addr constant [29 x i8] c"Matrix is not a 4x4 matrix!\0A\00", align 1
@quantum_gate_counter.counter = internal unnamed_addr global i32 0, align 4
@str18 = private unnamed_addr constant [28 x i8] c"Matrix is not a 2x2 matrix!\00"
@str5 = private unnamed_addr constant [28 x i8] c"Matrix is not a 4x4 matrix!\00"
@.str33 = private unnamed_addr constant [51 x i8] c"Error! Cannot convert a multi-column-matrix (%i)!\0A\00", align 1
@.str134 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i-sized qubit!\0A\00", align 1
@.str235 = private unnamed_addr constant [38 x i8] c"Not enough memory for %i-sized hash!\0A\00", align 1
@.str336 = private unnamed_addr constant [9 x i8] c"QUOBFILE\00", align 1
@.str437 = private unnamed_addr constant [23 x i8] c"% f %+fi|%lli> (%e) (|\00", align 1
@.str538 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str639 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str740 = private unnamed_addr constant [4 x i8] c">)\0A\00", align 1
@.str841 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str942 = private unnamed_addr constant [10 x i8] c"%i: %lli\0A\00", align 1
@.str1043 = private unnamed_addr constant [13 x i8] c"%i: %i %llu\0A\00", align 1
@.str1144 = private unnamed_addr constant [50 x i8] c"Not enough memory for %i-sized quantum register!\0A\00", align 1
@str45 = private unnamed_addr constant [3 x i8] c">)\00"
@quantum_memman.mem = internal unnamed_addr global i64 0, align 8
@quantum_memman.max = internal unnamed_addr global i64 0, align 8
@.str58 = private unnamed_addr constant [35 x i8] c"Not enogh memory for %ix%i-Matrix!\00", align 1
@.str159 = private unnamed_addr constant [10 x i8] c"% f %+fi\09\00", align 1
@.str260 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str86 = private unnamed_addr constant [39 x i8] c"Not enough memory for %i-sized qubit!\0A\00", align 1
@opstatus = global i32 0, align 4
@objcode = global i8* null, align 8
@position = global i64 0, align 8
@allocated = global i64 0, align 8
@.str94 = private unnamed_addr constant [43 x i8] c"Error allocating memory for objcode data!\0A\00", align 1
@.str195 = private unnamed_addr constant [24 x i8] c"Unknown opcode 0x(%X)!\0A\00", align 1
@.str296 = private unnamed_addr constant [45 x i8] c"Error reallocating memory for objcode data!\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str397 = private unnamed_addr constant [74 x i8] c"Object code generation not active! Forgot to call quantum_objcode_start?\0A\00", align 1
@globalfile = common global i8* null, align 8
@.str498 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str599 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str6100 = private unnamed_addr constant [41 x i8] c"quantum_objcode_run: Could not open %s: \00", align 1
@.str7101 = private unnamed_addr constant [28 x i8] c"%i: Unknown opcode 0x(%X)!\0A\00", align 1
@str102 = private unnamed_addr constant [42 x i8] c"Error allocating memory for objcode data!\00"
@str8 = private unnamed_addr constant [44 x i8] c"Error reallocating memory for objcode data!\00"
@.str111 = private unnamed_addr constant [6 x i8] c"0.2.4\00", align 1
@seedi = internal unnamed_addr global i32 0, align 4
@status = global i32 0, align 4
@lambda = global float 0.000000e+00, align 4
@.str116 = private unnamed_addr constant [48 x i8] c"Not enough memory for %i-sized array of float!\0A\00", align 1

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
  br label %9, !llfi_index !34

; <label>:9                                       ; preds = %8, %.lr.ph
  %10 = icmp slt i32 %i.02, %width, !llfi_index !35
  %11 = load i32* %2, align 4, !tbaa !22, !llfi_index !36
  %12 = add nsw i32 %11, %i.02, !llfi_index !37
  br i1 %10, label %13, label %22, !llfi_index !38

; <label>:13                                      ; preds = %9
  tail call void @quantum_hadamard(i32 %12, %struct.quantum_reg_struct* %reg) #3, !llfi_index !39
  %14 = load i32* %2, align 4, !tbaa !22, !llfi_index !40
  %15 = shl i32 %14, 1, !llfi_index !41
  %16 = add nsw i32 %15, %i.02, !llfi_index !42
  tail call void @quantum_hadamard(i32 %16, %struct.quantum_reg_struct* %reg) #3, !llfi_index !43
  %17 = load i32* %2, align 4, !tbaa !22, !llfi_index !44
  %18 = add nsw i32 %17, %i.02, !llfi_index !45
  tail call void @quantum_cnot(i32 %18, i32 %i.02, %struct.quantum_reg_struct* %reg) #3, !llfi_index !46
  %19 = load i32* %2, align 4, !tbaa !22, !llfi_index !47
  %20 = shl i32 %19, 1, !llfi_index !48
  %21 = add nsw i32 %20, %i.02, !llfi_index !49
  tail call void @quantum_cnot(i32 %21, i32 %i.02, %struct.quantum_reg_struct* %reg) #3, !llfi_index !50
  br label %26, !llfi_index !51

; <label>:22                                      ; preds = %9
  tail call void @quantum_cnot(i32 %i.02, i32 %12, %struct.quantum_reg_struct* %reg) #3, !llfi_index !52
  %23 = load i32* %2, align 4, !tbaa !22, !llfi_index !53
  %24 = shl i32 %23, 1, !llfi_index !54
  %25 = add nsw i32 %24, %i.02, !llfi_index !55
  tail call void @quantum_cnot(i32 %i.02, i32 %25, %struct.quantum_reg_struct* %reg) #3, !llfi_index !56
  br label %26, !llfi_index !57

; <label>:26                                      ; preds = %22, %13
  %27 = add nsw i32 %i.02, 1, !llfi_index !58
  %28 = load i32* %2, align 4, !tbaa !22, !llfi_index !59
  %29 = icmp slt i32 %27, %28, !llfi_index !60
  br i1 %29, label %.lr.ph, label %._crit_edge, !llfi_index !61

._crit_edge:                                      ; preds = %26, %0
  %.lcssa1 = phi i32 [ %3, %0 ], [ %28, %26 ], !llfi_index !62
  tail call void @quantum_qec_set_status(i32 1, i32 %.lcssa1), !llfi_index !63
  %30 = load i32* %2, align 4, !tbaa !22, !llfi_index !64
  %31 = mul nsw i32 %30, 3, !llfi_index !65
  store i32 %31, i32* %2, align 4, !tbaa !22, !llfi_index !66
  ret void, !llfi_index !67
}

; Function Attrs: nounwind uwtable
define void @quantum_qec_decode(i32 %type, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = tail call float (...)* bitcast (float ()* @quantum_get_decoherence to float (...)*)() #3, !llfi_index !68
  tail call void @quantum_set_decoherence(float 0.000000e+00) #3, !llfi_index !69
  %2 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !70
  %3 = load i32* %2, align 4, !tbaa !22, !llfi_index !71
  %4 = sdiv i32 %3, 3, !llfi_index !72
  tail call void @quantum_qec_set_status(i32 0, i32 0), !llfi_index !73
  %5 = load i32* %2, align 4, !tbaa !22, !llfi_index !74
  %6 = icmp sgt i32 %5, 2, !llfi_index !75
  br i1 %6, label %.lr.ph8, label %.preheader, !llfi_index !76

.lr.ph8:                                          ; preds = %0
  %7 = sdiv i32 %5, 3, !llfi_index !77
  %8 = shl nsw i32 %4, 1, !llfi_index !78
  br label %11, !llfi_index !79

.preheader:                                       ; preds = %.backedge, %0
  %9 = icmp slt i32 %3, 3, !llfi_index !80
  br i1 %9, label %._crit_edge, label %.lr.ph, !llfi_index !81

.lr.ph:                                           ; preds = %.preheader
  %10 = shl nsw i32 %4, 1, !llfi_index !82
  br label %22, !llfi_index !83

; <label>:11                                      ; preds = %.backedge, %.lr.ph8
  %i.06.in = phi i32 [ %7, %.lr.ph8 ], [ %i.06, %.backedge ], !llfi_index !84
  %i.06 = add nsw i32 %i.06.in, -1, !llfi_index !85
  %12 = icmp eq i32 %i.06, 0, !llfi_index !86
  br i1 %12, label %13, label %14, !llfi_index !87

; <label>:13                                      ; preds = %11
  tail call void @quantum_set_decoherence(float %1) #3, !llfi_index !88
  br label %14, !llfi_index !89

; <label>:14                                      ; preds = %13, %11
  %15 = icmp sgt i32 %i.06.in, %width, !llfi_index !90
  %16 = add nsw i32 %i.06, %8, !llfi_index !91
  br i1 %15, label %20, label %17, !llfi_index !92

; <label>:17                                      ; preds = %14
  tail call void @quantum_cnot(i32 %16, i32 %i.06, %struct.quantum_reg_struct* %reg) #3, !llfi_index !93
  %18 = add nsw i32 %i.06, %4, !llfi_index !94
  tail call void @quantum_cnot(i32 %18, i32 %i.06, %struct.quantum_reg_struct* %reg) #3, !llfi_index !95
  tail call void @quantum_hadamard(i32 %16, %struct.quantum_reg_struct* %reg) #3, !llfi_index !96
  tail call void @quantum_hadamard(i32 %18, %struct.quantum_reg_struct* %reg) #3, !llfi_index !97
  br label %.backedge, !llfi_index !98

.backedge:                                        ; preds = %20, %17
  %19 = icmp sgt i32 %i.06, 0, !llfi_index !99
  br i1 %19, label %11, label %.preheader, !llfi_index !100

; <label>:20                                      ; preds = %14
  tail call void @quantum_cnot(i32 %i.06, i32 %16, %struct.quantum_reg_struct* %reg) #3, !llfi_index !101
  %21 = add nsw i32 %i.06, %4, !llfi_index !102
  tail call void @quantum_cnot(i32 %i.06, i32 %21, %struct.quantum_reg_struct* %reg) #3, !llfi_index !103
  br label %.backedge, !llfi_index !104

; <label>:22                                      ; preds = %29, %.lr.ph
  %i.13 = phi i32 [ 1, %.lr.ph ], [ %30, %29 ], !llfi_index !105
  %23 = tail call i32 @quantum_bmeasure(i32 %4, %struct.quantum_reg_struct* %reg) #3, !llfi_index !106
  %24 = sub nsw i32 %10, %i.13, !llfi_index !107
  %25 = tail call i32 @quantum_bmeasure(i32 %24, %struct.quantum_reg_struct* %reg) #3, !llfi_index !108
  %notlhs = icmp ne i32 %23, 1, !llfi_index !109
  %notrhs = icmp ne i32 %25, 1, !llfi_index !110
  %or.cond.not = or i1 %notrhs, %notlhs, !llfi_index !111
  %26 = icmp sgt i32 %i.13, %width, !llfi_index !112
  %or.cond2 = or i1 %or.cond.not, %26, !llfi_index !113
  br i1 %or.cond2, label %29, label %27, !llfi_index !114

; <label>:27                                      ; preds = %22
  %28 = add nsw i32 %i.13, -1, !llfi_index !115
  tail call void @quantum_sigma_z(i32 %28, %struct.quantum_reg_struct* %reg) #3, !llfi_index !116
  br label %29, !llfi_index !117

; <label>:29                                      ; preds = %27, %22
  %30 = add nsw i32 %i.13, 1, !llfi_index !118
  %31 = icmp slt i32 %i.13, %4, !llfi_index !119
  br i1 %31, label %22, label %._crit_edge, !llfi_index !120

._crit_edge:                                      ; preds = %29, %.preheader
  ret void, !llfi_index !121
}

; Function Attrs: nounwind uwtable
define i32 @quantum_qec_counter(i32 %inc, i32 %frequency, %struct.quantum_reg_struct* %reg) #0 {
  %1 = icmp sgt i32 %inc, 0, !llfi_index !122
  br i1 %1, label %2, label %5, !llfi_index !123

; <label>:2                                       ; preds = %0
  %3 = load i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !124
  %4 = add nsw i32 %3, %inc, !llfi_index !125
  store i32 %4, i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !126
  br label %8, !llfi_index !127

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %inc, 0, !llfi_index !128
  br i1 %6, label %7, label %8, !llfi_index !129

; <label>:7                                       ; preds = %5
  store i32 0, i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !130
  br label %8, !llfi_index !131

; <label>:8                                       ; preds = %7, %5, %2
  %9 = icmp sgt i32 %frequency, 0, !llfi_index !132
  br i1 %9, label %10, label %11, !llfi_index !133

; <label>:10                                      ; preds = %8
  store i32 %frequency, i32* @quantum_qec_counter.freq, align 4, !tbaa !1, !llfi_index !134
  br label %11, !llfi_index !135

; <label>:11                                      ; preds = %10, %8
  %12 = load i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !136
  %13 = load i32* @quantum_qec_counter.freq, align 4, !tbaa !1, !llfi_index !137
  %14 = icmp slt i32 %12, %13, !llfi_index !138
  br i1 %14, label %18, label %15, !llfi_index !139

; <label>:15                                      ; preds = %11
  store i32 0, i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !140
  %16 = load i32* @width, align 4, !tbaa !1, !llfi_index !141
  tail call void @quantum_qec_decode(i32 undef, i32 %16, %struct.quantum_reg_struct* %reg), !llfi_index !142
  %17 = load i32* @width, align 4, !tbaa !1, !llfi_index !143
  tail call void @quantum_qec_encode(i32 undef, i32 %17, %struct.quantum_reg_struct* %reg), !llfi_index !144
  br label %18, !llfi_index !145

; <label>:18                                      ; preds = %15, %11
  %19 = load i32* @quantum_qec_counter.counter, align 4, !tbaa !1, !llfi_index !146
  ret i32 %19, !llfi_index !147
}

; Function Attrs: nounwind uwtable
define void @quantum_sigma_x_ft(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %1 = load i32* @type, align 4, !tbaa !1, !llfi_index !148
  store i32 0, i32* @type, align 4, !tbaa !1, !llfi_index !149
  %2 = tail call float (...)* bitcast (float ()* @quantum_get_decoherence to float (...)*)() #3, !llfi_index !150
  tail call void @quantum_set_decoherence(float 0.000000e+00) #3, !llfi_index !151
  tail call void @quantum_sigma_x(i32 %target, %struct.quantum_reg_struct* %reg) #3, !llfi_index !152
  %3 = load i32* @width, align 4, !tbaa !1, !llfi_index !153
  %4 = add nsw i32 %3, %target, !llfi_index !154
  tail call void @quantum_sigma_x(i32 %4, %struct.quantum_reg_struct* %reg) #3, !llfi_index !155
  tail call void @quantum_set_decoherence(float %2) #3, !llfi_index !156
  %5 = load i32* @width, align 4, !tbaa !1, !llfi_index !157
  %6 = shl i32 %5, 1, !llfi_index !158
  %7 = add nsw i32 %6, %target, !llfi_index !159
  tail call void @quantum_sigma_x(i32 %7, %struct.quantum_reg_struct* %reg) #3, !llfi_index !160
  %8 = tail call i32 @quantum_qec_counter(i32 1, i32 0, %struct.quantum_reg_struct* %reg), !llfi_index !161
  store i32 %1, i32* @type, align 4, !tbaa !1, !llfi_index !162
  ret void, !llfi_index !163
}

; Function Attrs: nounwind uwtable
define void @quantum_cnot_ft(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %1 = load i32* @type, align 4, !tbaa !1, !llfi_index !164
  store i32 0, i32* @type, align 4, !tbaa !1, !llfi_index !165
  %2 = tail call float (...)* bitcast (float ()* @quantum_get_decoherence to float (...)*)() #3, !llfi_index !166
  tail call void @quantum_set_decoherence(float 0.000000e+00) #3, !llfi_index !167
  tail call void @quantum_cnot(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #3, !llfi_index !168
  %3 = load i32* @width, align 4, !tbaa !1, !llfi_index !169
  %4 = add nsw i32 %3, %control, !llfi_index !170
  %5 = add nsw i32 %3, %target, !llfi_index !171
  tail call void @quantum_cnot(i32 %4, i32 %5, %struct.quantum_reg_struct* %reg) #3, !llfi_index !172
  tail call void @quantum_set_decoherence(float %2) #3, !llfi_index !173
  %6 = load i32* @width, align 4, !tbaa !1, !llfi_index !174
  %7 = shl nsw i32 %6, 1, !llfi_index !175
  %8 = add nsw i32 %7, %control, !llfi_index !176
  %9 = add nsw i32 %7, %target, !llfi_index !177
  tail call void @quantum_cnot(i32 %8, i32 %9, %struct.quantum_reg_struct* %reg) #3, !llfi_index !178
  %10 = tail call i32 @quantum_qec_counter(i32 1, i32 0, %struct.quantum_reg_struct* %reg), !llfi_index !179
  store i32 %1, i32* @type, align 4, !tbaa !1, !llfi_index !180
  ret void, !llfi_index !181
}

; Function Attrs: nounwind uwtable
define void @quantum_toffoli_ft(i32 %control1, i32 %control2, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %1 = zext i32 %target to i64, !llfi_index !182
  %2 = shl i64 1, %1, !llfi_index !183
  %3 = load i32* @width, align 4, !tbaa !1, !llfi_index !184
  %4 = add nsw i32 %3, %target, !llfi_index !185
  %5 = zext i32 %4 to i64, !llfi_index !186
  %6 = shl i64 1, %5, !llfi_index !187
  %7 = add i64 %6, %2, !llfi_index !188
  %8 = shl i32 %3, 1, !llfi_index !189
  %9 = add nsw i32 %8, %target, !llfi_index !190
  %10 = zext i32 %9 to i64, !llfi_index !191
  %11 = shl i64 1, %10, !llfi_index !192
  %12 = add i64 %7, %11, !llfi_index !193
  %13 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !194
  %14 = load i32* %13, align 4, !tbaa !195, !llfi_index !196
  %15 = icmp sgt i32 %14, 0, !llfi_index !197
  br i1 %15, label %.lr.ph, label %._crit_edge, !llfi_index !198

.lr.ph:                                           ; preds = %0
  %16 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !199
  %17 = load %struct.quantum_reg_node_struct** %16, align 8, !tbaa !200, !llfi_index !201
  %18 = zext i32 %control1 to i64, !llfi_index !202
  %19 = shl i64 1, %18, !llfi_index !203
  %20 = load i32* @width, align 4, !tbaa !1, !llfi_index !204
  %21 = add nsw i32 %20, %control1, !llfi_index !205
  %22 = zext i32 %21 to i64, !llfi_index !206
  %23 = shl i64 1, %22, !llfi_index !207
  %24 = shl nsw i32 %20, 1, !llfi_index !208
  %25 = add nsw i32 %24, %control1, !llfi_index !209
  %26 = zext i32 %25 to i64, !llfi_index !210
  %27 = shl i64 1, %26, !llfi_index !211
  %28 = zext i32 %control2 to i64, !llfi_index !212
  %29 = shl i64 1, %28, !llfi_index !213
  %30 = add nsw i32 %20, %control2, !llfi_index !214
  %31 = zext i32 %30 to i64, !llfi_index !215
  %32 = shl i64 1, %31, !llfi_index !216
  %33 = add nsw i32 %24, %control2, !llfi_index !217
  %34 = zext i32 %33 to i64, !llfi_index !218
  %35 = shl i64 1, %34, !llfi_index !219
  %36 = load i32* %13, align 4, !tbaa !195, !llfi_index !220
  br label %37, !llfi_index !221

; <label>:37                                      ; preds = %48, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %48 ], !llfi_index !222
  %38 = getelementptr inbounds %struct.quantum_reg_node_struct* %17, i64 %indvars.iv, i32 1, !llfi_index !223
  %39 = load i64* %38, align 8, !tbaa !224, !llfi_index !227
  %40 = and i64 %39, %19, !llfi_index !228
  %not. = icmp ne i64 %40, 0, !llfi_index !229
  %41 = and i64 %23, %39, !llfi_index !230
  %not.2 = icmp ne i64 %41, 0, !llfi_index !231
  %c1.13 = xor i1 %not., %not.2, !llfi_index !232
  %42 = and i64 %27, %39, !llfi_index !233
  %not.4 = icmp ne i64 %42, 0, !llfi_index !234
  %c1.1.5 = xor i1 %c1.13, %not.4, !llfi_index !235
  %43 = and i64 %39, %29, !llfi_index !236
  %not.6 = icmp ne i64 %43, 0, !llfi_index !237
  %44 = and i64 %32, %39, !llfi_index !238
  %not.7 = icmp ne i64 %44, 0, !llfi_index !239
  %c2.0.8 = xor i1 %not.6, %not.7, !llfi_index !240
  %45 = and i64 %35, %39, !llfi_index !241
  %not.9 = icmp ne i64 %45, 0, !llfi_index !242
  %c2.210 = xor i1 %c2.0.8, %not.9, !llfi_index !243
  %or.cond = and i1 %c1.1.5, %c2.210, !llfi_index !244
  br i1 %or.cond, label %46, label %48, !llfi_index !245

; <label>:46                                      ; preds = %37
  %47 = xor i64 %39, %12, !llfi_index !246
  store i64 %47, i64* %38, align 8, !tbaa !224, !llfi_index !247
  br label %48, !llfi_index !248

; <label>:48                                      ; preds = %46, %37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !249
  %49 = trunc i64 %indvars.iv.next to i32, !llfi_index !250
  %50 = icmp slt i32 %49, %36, !llfi_index !251
  br i1 %50, label %37, label %._crit_edge, !llfi_index !252

._crit_edge:                                      ; preds = %48, %0
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !253
  %51 = tail call i32 @quantum_qec_counter(i32 1, i32 0, %struct.quantum_reg_struct* %reg), !llfi_index !254
  ret void, !llfi_index !255
}

; Function Attrs: nounwind uwtable
define void @quantum_qft(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = add nsw i32 %width, -1, !llfi_index !256
  %2 = icmp sgt i32 %width, 0, !llfi_index !257
  br i1 %2, label %.preheader, label %._crit_edge3, !llfi_index !258

.preheader:                                       ; preds = %._crit_edge, %0
  %i.02 = phi i32 [ %6, %._crit_edge ], [ %1, %0 ], !llfi_index !259
  %3 = icmp sgt i32 %1, %i.02, !llfi_index !260
  br i1 %3, label %.lr.ph, label %._crit_edge, !llfi_index !261

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %j.01 = phi i32 [ %4, %.lr.ph ], [ %1, %.preheader ], !llfi_index !262
  tail call void @quantum_cond_phase(i32 %j.01, i32 %i.02, %struct.quantum_reg_struct* %reg) #3, !llfi_index !263
  %4 = add nsw i32 %j.01, -1, !llfi_index !264
  %5 = icmp sgt i32 %4, %i.02, !llfi_index !265
  br i1 %5, label %.lr.ph, label %._crit_edge, !llfi_index !266

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void @quantum_hadamard(i32 %i.02, %struct.quantum_reg_struct* %reg) #3, !llfi_index !267
  %6 = add nsw i32 %i.02, -1, !llfi_index !268
  %7 = icmp sgt i32 %i.02, 0, !llfi_index !269
  br i1 %7, label %.preheader, label %._crit_edge3, !llfi_index !270

._crit_edge3:                                     ; preds = %._crit_edge, %0
  ret void, !llfi_index !271
}

; Function Attrs: nounwind uwtable
define void @quantum_qft_inv(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = icmp sgt i32 %width, 0, !llfi_index !272
  br i1 %1, label %.lr.ph3, label %._crit_edge, !llfi_index !273

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph3
  %exitcond4 = icmp eq i32 %2, %width, !llfi_index !274
  br i1 %exitcond4, label %._crit_edge, label %.lr.ph3, !llfi_index !275

.lr.ph3:                                          ; preds = %.loopexit, %0
  %i.02 = phi i32 [ %2, %.loopexit ], [ 0, %0 ], !llfi_index !276
  tail call void @quantum_hadamard(i32 %i.02, %struct.quantum_reg_struct* %reg) #3, !llfi_index !277
  %2 = add nsw i32 %i.02, 1, !llfi_index !278
  %3 = icmp slt i32 %2, %width, !llfi_index !279
  br i1 %3, label %.lr.ph, label %.loopexit, !llfi_index !280

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph3
  %j.01 = phi i32 [ %4, %.lr.ph ], [ %2, %.lr.ph3 ], !llfi_index !281
  tail call void @quantum_cond_phase_inv(i32 %j.01, i32 %i.02, %struct.quantum_reg_struct* %reg) #3, !llfi_index !282
  %4 = add nsw i32 %j.01, 1, !llfi_index !283
  %exitcond = icmp eq i32 %4, %width, !llfi_index !284
  br i1 %exitcond, label %.loopexit, label %.lr.ph, !llfi_index !285

._crit_edge:                                      ; preds = %.loopexit, %0
  ret void, !llfi_index !286
}

; Function Attrs: nounwind uwtable
define void @quantum_exp_mod_n(i32 %N, i32 %x, i32 %width_input, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = shl i32 %width, 1, !llfi_index !287
  %2 = add nsw i32 %1, 2, !llfi_index !288
  tail call void @quantum_sigma_x(i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !289
  %3 = icmp slt i32 %width_input, 1, !llfi_index !290
  br i1 %3, label %._crit_edge5, label %.preheader.lr.ph, !llfi_index !291

.preheader.lr.ph:                                 ; preds = %0
  %f.01 = srem i32 %x, %N, !llfi_index !292
  %4 = mul nsw i32 %width, 3, !llfi_index !293
  %5 = add nsw i32 %4, 1, !llfi_index !294
  br label %.preheader, !llfi_index !295

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge ], [ 1, %.preheader.lr.ph ], !llfi_index !296
  %6 = icmp sgt i32 %indvars.iv, 1, !llfi_index !297
  br i1 %6, label %.lr.ph, label %._crit_edge, !llfi_index !298

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %f.03 = phi i32 [ %f.0, %.lr.ph ], [ %f.01, %.preheader ], !llfi_index !299
  %j.02 = phi i32 [ %8, %.lr.ph ], [ 1, %.preheader ], !llfi_index !300
  %7 = mul nsw i32 %f.03, %f.03, !llfi_index !301
  %8 = add nsw i32 %j.02, 1, !llfi_index !302
  %f.0 = srem i32 %7, %N, !llfi_index !303
  %exitcond = icmp eq i32 %8, %indvars.iv, !llfi_index !304
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !305

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %f.0.lcssa = phi i32 [ %f.01, %.preheader ], [ %f.0, %.lr.ph ], !llfi_index !306
  %9 = add nsw i32 %5, %indvars.iv, !llfi_index !307
  tail call void @mul_mod_n(i32 %N, i32 %f.0.lcssa, i32 %9, i32 %width, %struct.quantum_reg_struct* %reg) #3, !llfi_index !308
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1, !llfi_index !309
  %exitcond7 = icmp eq i32 %indvars.iv, %width_input, !llfi_index !310
  br i1 %exitcond7, label %._crit_edge5, label %.preheader, !llfi_index !311

._crit_edge5:                                     ; preds = %._crit_edge, %0
  ret void, !llfi_index !312
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
  %qr = alloca %struct.quantum_reg_struct, align 8, !llfi_index !313
  %c = alloca i32, align 4, !llfi_index !314
  %q = alloca i32, align 4, !llfi_index !315
  call void @spec_srand(i32 26) #3, !llfi_index !316
  %1 = icmp eq i32 %argc, 1, !llfi_index !317
  br i1 %1, label %2, label %3, !llfi_index !318

; <label>:2                                       ; preds = %0
  %puts9 = call i32 @puts(i8* getelementptr inbounds ([22 x i8]* @str17, i64 0, i64 0)), !llfi_index !319
  br label %89, !llfi_index !320

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds i8** %argv, i64 1, !llfi_index !321
  %5 = load i8** %4, align 8, !tbaa !322, !llfi_index !323
  %6 = call i32 @atoi(i8* %5) #11, !llfi_index !324
  %7 = icmp slt i32 %6, 15, !llfi_index !325
  br i1 %7, label %8, label %9, !llfi_index !326

; <label>:8                                       ; preds = %3
  %puts8 = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str16, i64 0, i64 0)), !llfi_index !327
  br label %89, !llfi_index !328

; <label>:9                                       ; preds = %3
  %10 = mul nsw i32 %6, %6, !llfi_index !329
  %11 = call i32 @quantum_getwidth(i32 %10) #3, !llfi_index !330
  %12 = call i32 @quantum_getwidth(i32 %6) #3, !llfi_index !331
  %13 = mul nsw i32 %12, 3, !llfi_index !332
  %14 = add i32 %11, 2, !llfi_index !333
  %15 = add i32 %14, %13, !llfi_index !334
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str2, i64 0, i64 0), i32 %6, i32 %15) #3, !llfi_index !335
  %17 = icmp sgt i32 %argc, 2, !llfi_index !336
  br i1 %17, label %18, label %.critedge.preheader, !llfi_index !337

; <label>:18                                      ; preds = %9
  %19 = getelementptr inbounds i8** %argv, i64 2, !llfi_index !338
  %20 = load i8** %19, align 8, !tbaa !322, !llfi_index !339
  %21 = call i32 @atoi(i8* %20) #11, !llfi_index !340
  br label %.critedge.preheader, !llfi_index !341

.critedge.preheader:                              ; preds = %18, %9
  %x.0.ph = phi i32 [ 0, %9 ], [ %21, %18 ], !llfi_index !342
  %22 = icmp slt i32 %x.0.ph, 2, !llfi_index !343
  br label %.critedge, !llfi_index !344

.critedge:                                        ; preds = %.critedge, %.critedge.preheader
  %23 = call i32 @quantum_gcd(i32 %6, i32 %x.0.ph) #3, !llfi_index !345
  %24 = icmp sgt i32 %23, 1, !llfi_index !346
  %or.cond3 = or i1 %24, %22, !llfi_index !347
  br i1 %or.cond3, label %.critedge, label %25, !llfi_index !348

; <label>:25                                      ; preds = %.critedge
  call void @quantum_new_qureg(%struct.quantum_reg_struct* sret %qr, i64 0, i32 %11) #3, !llfi_index !349
  %26 = icmp sgt i32 %11, 0, !llfi_index !350
  br i1 %26, label %.lr.ph19, label %._crit_edge20, !llfi_index !351

.lr.ph19:                                         ; preds = %.lr.ph19, %25
  %i.017 = phi i32 [ %27, %.lr.ph19 ], [ 0, %25 ], !llfi_index !352
  call void @quantum_hadamard(i32 %i.017, %struct.quantum_reg_struct* %qr) #3, !llfi_index !353
  %27 = add nsw i32 %i.017, 1, !llfi_index !354
  %exitcond21 = icmp eq i32 %27, %11, !llfi_index !355
  br i1 %exitcond21, label %._crit_edge20, label %.lr.ph19, !llfi_index !356

._crit_edge20:                                    ; preds = %.lr.ph19, %25
  %28 = add nsw i32 %13, 2, !llfi_index !357
  call void @quantum_addscratch(i32 %28, %struct.quantum_reg_struct* %qr) #3, !llfi_index !358
  call void @quantum_exp_mod_n(i32 %6, i32 %x.0.ph, i32 %11, i32 %12, %struct.quantum_reg_struct* %qr) #3, !llfi_index !359
  %29 = icmp sgt i32 %28, 0, !llfi_index !360
  br i1 %29, label %.lr.ph15, label %._crit_edge16, !llfi_index !361

.lr.ph15:                                         ; preds = %._crit_edge20
  %30 = mul i32 %12, 3, !llfi_index !362
  br label %31, !llfi_index !363

; <label>:31                                      ; preds = %31, %.lr.ph15
  %i.113 = phi i32 [ 0, %.lr.ph15 ], [ %33, %31 ], !llfi_index !364
  %32 = call i32 @quantum_bmeasure(i32 0, %struct.quantum_reg_struct* %qr) #3, !llfi_index !365
  %33 = add nsw i32 %i.113, 1, !llfi_index !366
  %34 = add nsw i32 %30, 1, !llfi_index !367
  %exitcond = icmp eq i32 %i.113, %34, !llfi_index !368
  br i1 %exitcond, label %._crit_edge16, label %31, !llfi_index !369

._crit_edge16:                                    ; preds = %31, %._crit_edge20
  call void @quantum_qft(i32 %11, %struct.quantum_reg_struct* %qr) #3, !llfi_index !370
  %35 = sdiv i32 %11, 2, !llfi_index !371
  %36 = icmp sgt i32 %11, 1, !llfi_index !372
  br i1 %36, label %.lr.ph, label %._crit_edge, !llfi_index !373

.lr.ph:                                           ; preds = %.lr.ph, %._crit_edge16
  %i.212 = phi i32 [ %39, %.lr.ph ], [ 0, %._crit_edge16 ], !llfi_index !374
  %37 = sub nsw i32 %11, %i.212, !llfi_index !375
  %38 = add nsw i32 %37, -1, !llfi_index !376
  call void @quantum_cnot(i32 %i.212, i32 %38, %struct.quantum_reg_struct* %qr) #3, !llfi_index !377
  call void @quantum_cnot(i32 %38, i32 %i.212, %struct.quantum_reg_struct* %qr) #3, !llfi_index !378
  call void @quantum_cnot(i32 %i.212, i32 %38, %struct.quantum_reg_struct* %qr) #3, !llfi_index !379
  %39 = add nsw i32 %i.212, 1, !llfi_index !380
  %40 = icmp slt i32 %39, %35, !llfi_index !381
  br i1 %40, label %.lr.ph, label %._crit_edge, !llfi_index !382

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge16
  %41 = call i64 @quantum_measure(%struct.quantum_reg_struct* byval align 8 %qr) #3, !llfi_index !383
  %42 = trunc i64 %41 to i32, !llfi_index !384
  store i32 %42, i32* %c, align 4, !tbaa !1, !llfi_index !385
  switch i32 %42, label %45 [
    i32 -1, label %43
    i32 0, label %44
  ], !llfi_index !386

; <label>:43                                      ; preds = %._crit_edge
  %puts7 = call i32 @puts(i8* getelementptr inbounds ([24 x i8]* @str15, i64 0, i64 0)), !llfi_index !387
  call void @exit(i32 1) #12, !llfi_index !388
  unreachable, !llfi_index !389

; <label>:44                                      ; preds = %._crit_edge
  %puts6 = call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @str14, i64 0, i64 0)), !llfi_index !390
  call void @exit(i32 2) #12, !llfi_index !391
  unreachable, !llfi_index !392

; <label>:45                                      ; preds = %._crit_edge
  %46 = shl i32 1, %11, !llfi_index !393
  store i32 %46, i32* %q, align 4, !tbaa !1, !llfi_index !394
  %47 = load i32* %c, align 4, !tbaa !1, !llfi_index !395
  %48 = sitofp i32 %47 to float, !llfi_index !396
  %49 = sitofp i32 %46 to float, !llfi_index !397
  %50 = fdiv float %48, %49, !llfi_index !398
  %51 = fpext float %50 to double, !llfi_index !399
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0), i32 %47, double %51) #3, !llfi_index !400
  call void @quantum_frac_approx(i32* %c, i32* %q, i32 %11) #3, !llfi_index !401
  %53 = load i32* %c, align 4, !tbaa !1, !llfi_index !402
  %54 = load i32* %q, align 4, !tbaa !1, !llfi_index !403
  %55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str6, i64 0, i64 0), i32 %53, i32 %54) #3, !llfi_index !404
  %56 = load i32* %q, align 4, !tbaa !1, !llfi_index !405
  %57 = srem i32 %56, 2, !llfi_index !406
  %58 = icmp eq i32 %57, 1, !llfi_index !407
  %59 = shl nsw i32 %56, 1, !llfi_index !408
  %60 = icmp slt i32 %59, %46, !llfi_index !409
  %or.cond11 = and i1 %58, %60, !llfi_index !410
  br i1 %or.cond11, label %61, label %64, !llfi_index !411

; <label>:61                                      ; preds = %45
  %puts5 = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str13, i64 0, i64 0)), !llfi_index !412
  %62 = load i32* %q, align 4, !tbaa !1, !llfi_index !413
  %63 = shl nsw i32 %62, 1, !llfi_index !414
  store i32 %63, i32* %q, align 4, !tbaa !1, !llfi_index !415
  br label %64, !llfi_index !416

; <label>:64                                      ; preds = %61, %45
  %65 = load i32* %q, align 4, !tbaa !1, !llfi_index !417
  %66 = srem i32 %65, 2, !llfi_index !418
  %67 = icmp eq i32 %66, 1, !llfi_index !419
  br i1 %67, label %68, label %69, !llfi_index !420

; <label>:68                                      ; preds = %64
  %puts4 = call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str12, i64 0, i64 0)), !llfi_index !421
  call void @exit(i32 2) #12, !llfi_index !422
  unreachable, !llfi_index !423

; <label>:69                                      ; preds = %64
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str9, i64 0, i64 0), i32 %65) #3, !llfi_index !424
  %71 = load i32* %q, align 4, !tbaa !1, !llfi_index !425
  %72 = sdiv i32 %71, 2, !llfi_index !426
  %73 = call i32 @quantum_ipow(i32 %x.0.ph, i32 %72) #3, !llfi_index !427
  %74 = srem i32 1, %6, !llfi_index !428
  %75 = add nsw i32 %74, %73, !llfi_index !429
  %76 = load i32* %q, align 4, !tbaa !1, !llfi_index !430
  %77 = sdiv i32 %76, 2, !llfi_index !431
  %78 = call i32 @quantum_ipow(i32 %x.0.ph, i32 %77) #3, !llfi_index !432
  %79 = sub nsw i32 %78, %74, !llfi_index !433
  %80 = call i32 @quantum_gcd(i32 %6, i32 %75) #3, !llfi_index !434
  %81 = call i32 @quantum_gcd(i32 %6, i32 %79) #3, !llfi_index !435
  %82 = icmp sgt i32 %80, %81, !llfi_index !436
  %. = select i1 %82, i32 %80, i32 %81, !llfi_index !437
  %83 = icmp slt i32 %., %6, !llfi_index !438
  %84 = icmp sgt i32 %., 1, !llfi_index !439
  %or.cond = and i1 %83, %84, !llfi_index !440
  br i1 %or.cond, label %85, label %88, !llfi_index !441

; <label>:85                                      ; preds = %69
  %86 = sdiv i32 %6, %., !llfi_index !442
  %87 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0), i32 %6, i32 %., i32 %86) #3, !llfi_index !443
  call void @quantum_delete_qureg(%struct.quantum_reg_struct* %qr) #3, !llfi_index !444
  br label %89, !llfi_index !445

; <label>:88                                      ; preds = %69
  %puts = call i32 @puts(i8* getelementptr inbounds ([40 x i8]* @str, i64 0, i64 0)), !llfi_index !446
  call void @exit(i32 0) #12, !llfi_index !447
  unreachable, !llfi_index !448

; <label>:89                                      ; preds = %85, %8, %2
  %.0 = phi i32 [ 3, %2 ], [ 3, %8 ], [ 0, %85 ], !llfi_index !449
  ret i32 %.0, !llfi_index !450
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #3

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nocapture readonly %__nptr) #4 {
  %1 = tail call i64 @strtol(i8* nocapture %__nptr, i8** null, i32 10) #3, !llfi_index !451
  %2 = trunc i64 %1 to i32, !llfi_index !452
  ret i32 %2, !llfi_index !453
}

; Function Attrs: nounwind uwtable
define void @quantum_cnot(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %qec = alloca i32, align 4, !llfi_index !454
  call void @quantum_qec_get_status(i32* %qec, i32* null) #3, !llfi_index !455
  %1 = load i32* %qec, align 4, !tbaa !1, !llfi_index !456
  %2 = icmp eq i32 %1, 0, !llfi_index !457
  br i1 %2, label %4, label %3, !llfi_index !458

; <label>:3                                       ; preds = %0
  call void @quantum_cnot_ft(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #3, !llfi_index !459
  br label %27, !llfi_index !460

; <label>:4                                       ; preds = %0
  %5 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 1, i32 %control, i32 %target) #3, !llfi_index !461
  %6 = icmp eq i32 %5, 0, !llfi_index !462
  br i1 %6, label %.preheader, label %27, !llfi_index !463

.preheader:                                       ; preds = %4
  %7 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !464
  %8 = load i32* %7, align 4, !tbaa !195, !llfi_index !465
  %9 = icmp sgt i32 %8, 0, !llfi_index !466
  br i1 %9, label %.lr.ph, label %._crit_edge, !llfi_index !467

.lr.ph:                                           ; preds = %.preheader
  %10 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !468
  %11 = load %struct.quantum_reg_node_struct** %10, align 8, !tbaa !200, !llfi_index !469
  %12 = zext i32 %control to i64, !llfi_index !470
  %13 = shl i64 1, %12, !llfi_index !471
  %14 = load i32* %7, align 4, !tbaa !195, !llfi_index !472
  %15 = zext i32 %target to i64, !llfi_index !473
  %16 = shl i64 1, %15, !llfi_index !474
  br label %17, !llfi_index !475

; <label>:17                                      ; preds = %24, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %24 ], !llfi_index !476
  %18 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %indvars.iv, i32 1, !llfi_index !477
  %19 = load i64* %18, align 8, !tbaa !224, !llfi_index !478
  %20 = and i64 %19, %13, !llfi_index !479
  %21 = icmp eq i64 %20, 0, !llfi_index !480
  br i1 %21, label %24, label %22, !llfi_index !481

; <label>:22                                      ; preds = %17
  %23 = xor i64 %19, %16, !llfi_index !482
  store i64 %23, i64* %18, align 8, !tbaa !224, !llfi_index !483
  br label %24, !llfi_index !484

; <label>:24                                      ; preds = %22, %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !485
  %25 = trunc i64 %indvars.iv.next to i32, !llfi_index !486
  %26 = icmp slt i32 %25, %14, !llfi_index !487
  br i1 %26, label %17, label %._crit_edge, !llfi_index !488

._crit_edge:                                      ; preds = %24, %.preheader
  call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !489
  br label %27, !llfi_index !490

; <label>:27                                      ; preds = %._crit_edge, %4, %3
  ret void, !llfi_index !491
}

; Function Attrs: nounwind uwtable
define void @quantum_toffoli(i32 %control1, i32 %control2, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %qec = alloca i32, align 4, !llfi_index !492
  call void @quantum_qec_get_status(i32* %qec, i32* null) #3, !llfi_index !493
  %1 = load i32* %qec, align 4, !tbaa !1, !llfi_index !494
  %2 = icmp eq i32 %1, 0, !llfi_index !495
  br i1 %2, label %4, label %3, !llfi_index !496

; <label>:3                                       ; preds = %0
  call void @quantum_toffoli_ft(i32 %control1, i32 %control2, i32 %target, %struct.quantum_reg_struct* %reg) #3, !llfi_index !497
  br label %30, !llfi_index !498

; <label>:4                                       ; preds = %0
  %5 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 2, i32 %control1, i32 %control2, i32 %target) #3, !llfi_index !499
  %6 = icmp eq i32 %5, 0, !llfi_index !500
  br i1 %6, label %.preheader, label %30, !llfi_index !501

.preheader:                                       ; preds = %4
  %7 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !502
  %8 = load i32* %7, align 4, !tbaa !195, !llfi_index !503
  %9 = icmp sgt i32 %8, 0, !llfi_index !504
  br i1 %9, label %.lr.ph, label %._crit_edge, !llfi_index !505

.lr.ph:                                           ; preds = %.preheader
  %10 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !506
  %11 = load %struct.quantum_reg_node_struct** %10, align 8, !tbaa !200, !llfi_index !507
  %12 = zext i32 %control1 to i64, !llfi_index !508
  %13 = shl i64 1, %12, !llfi_index !509
  %14 = load i32* %7, align 4, !tbaa !195, !llfi_index !510
  %15 = zext i32 %control2 to i64, !llfi_index !511
  %16 = shl i64 1, %15, !llfi_index !512
  %17 = zext i32 %target to i64, !llfi_index !513
  %18 = shl i64 1, %17, !llfi_index !514
  br label %19, !llfi_index !515

; <label>:19                                      ; preds = %27, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %27 ], !llfi_index !516
  %20 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %indvars.iv, i32 1, !llfi_index !517
  %21 = load i64* %20, align 8, !tbaa !224, !llfi_index !518
  %22 = or i64 %13, %16, !llfi_index !519
  %23 = and i64 %21, %22, !llfi_index !520
  %24 = icmp eq i64 %23, %22, !llfi_index !521
  br i1 %24, label %25, label %27, !llfi_index !522

; <label>:25                                      ; preds = %19
  %26 = xor i64 %21, %18, !llfi_index !523
  store i64 %26, i64* %20, align 8, !tbaa !224, !llfi_index !524
  br label %27, !llfi_index !525

; <label>:27                                      ; preds = %25, %19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !526
  %28 = trunc i64 %indvars.iv.next to i32, !llfi_index !527
  %29 = icmp slt i32 %28, %14, !llfi_index !528
  br i1 %29, label %19, label %._crit_edge, !llfi_index !529

._crit_edge:                                      ; preds = %27, %.preheader
  call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !530
  br label %30, !llfi_index !531

; <label>:30                                      ; preds = %._crit_edge, %4, %3
  ret void, !llfi_index !532
}

; Function Attrs: nounwind uwtable
define void @quantum_unbounded_toffoli(i32 %controlling, %struct.quantum_reg_struct* %reg, ...) #0 {
  %bits = alloca [1 x %struct.__va_list_tag], align 16, !llfi_index !533
  %1 = sext i32 %controlling to i64, !llfi_index !534
  %2 = shl nsw i64 %1, 2, !llfi_index !535
  %3 = call noalias i8* @malloc(i64 %2) #3, !llfi_index !536
  %4 = bitcast i8* %3 to i32*, !llfi_index !537
  %5 = icmp eq i8* %3, null, !llfi_index !538
  br i1 %5, label %6, label %8, !llfi_index !539

; <label>:6                                       ; preds = %0
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str12, i64 0, i64 0), i32 %controlling) #3, !llfi_index !540
  call void @exit(i32 1) #12, !llfi_index !541
  unreachable, !llfi_index !542

; <label>:8                                       ; preds = %0
  %9 = call i64 @quantum_memman(i64 %2) #3, !llfi_index !543
  %10 = bitcast [1 x %struct.__va_list_tag]* %bits to i8*, !llfi_index !544
  call void @llvm.va_start(i8* %10), !llfi_index !545
  %11 = icmp sgt i32 %controlling, 0, !llfi_index !546
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag]* %bits, i64 0, i64 0, i32 0, !llfi_index !547
  %13 = load i32* %12, align 16, !llfi_index !548
  %14 = icmp ult i32 %13, 41, !llfi_index !549
  br i1 %11, label %.lr.ph10, label %._crit_edge11, !llfi_index !550

.lr.ph10:                                         ; preds = %8
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag]* %bits, i64 0, i64 0, i32 3, !llfi_index !551
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag]* %bits, i64 0, i64 0, i32 2, !llfi_index !552
  br label %17, !llfi_index !553

; <label>:17                                      ; preds = %28, %.lr.ph10
  %indvars.iv20 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next21, %28 ], !llfi_index !554
  %18 = phi i1 [ %14, %.lr.ph10 ], [ %33, %28 ], !llfi_index !555
  %19 = phi i32 [ %13, %.lr.ph10 ], [ %32, %28 ], !llfi_index !556
  br i1 %18, label %20, label %25, !llfi_index !557

; <label>:20                                      ; preds = %17
  %21 = load i8** %15, align 16, !llfi_index !558
  %22 = sext i32 %19 to i64, !llfi_index !559
  %23 = getelementptr i8* %21, i64 %22, !llfi_index !560
  %24 = add i32 %19, 8, !llfi_index !561
  store i32 %24, i32* %12, align 16, !llfi_index !562
  br label %28, !llfi_index !563

; <label>:25                                      ; preds = %17
  %26 = load i8** %16, align 8, !llfi_index !564
  %27 = getelementptr i8* %26, i64 8, !llfi_index !565
  store i8* %27, i8** %16, align 8, !llfi_index !566
  br label %28, !llfi_index !567

; <label>:28                                      ; preds = %25, %20
  %.in1 = phi i8* [ %23, %20 ], [ %26, %25 ], !llfi_index !568
  %29 = bitcast i8* %.in1 to i32*, !llfi_index !569
  %30 = load i32* %29, align 4, !llfi_index !570
  %31 = getelementptr inbounds i32* %4, i64 %indvars.iv20, !llfi_index !571
  store i32 %30, i32* %31, align 4, !tbaa !1, !llfi_index !572
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1, !llfi_index !573
  %32 = load i32* %12, align 16, !llfi_index !574
  %33 = icmp ult i32 %32, 41, !llfi_index !575
  %lftr.wideiv = trunc i64 %indvars.iv.next21 to i32, !llfi_index !576
  %exitcond = icmp eq i32 %lftr.wideiv, %controlling, !llfi_index !577
  br i1 %exitcond, label %._crit_edge11, label %17, !llfi_index !578

._crit_edge11:                                    ; preds = %28, %8
  %.lcssa7 = phi i1 [ %14, %8 ], [ %33, %28 ], !llfi_index !579
  %.lcssa6 = phi i32 [ %13, %8 ], [ %32, %28 ], !llfi_index !580
  br i1 %.lcssa7, label %34, label %40, !llfi_index !581

; <label>:34                                      ; preds = %._crit_edge11
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag]* %bits, i64 0, i64 0, i32 3, !llfi_index !582
  %36 = load i8** %35, align 16, !llfi_index !583
  %37 = sext i32 %.lcssa6 to i64, !llfi_index !584
  %38 = getelementptr i8* %36, i64 %37, !llfi_index !585
  %39 = add i32 %.lcssa6, 8, !llfi_index !586
  store i32 %39, i32* %12, align 16, !llfi_index !587
  br label %44, !llfi_index !588

; <label>:40                                      ; preds = %._crit_edge11
  %41 = getelementptr inbounds [1 x %struct.__va_list_tag]* %bits, i64 0, i64 0, i32 2, !llfi_index !589
  %42 = load i8** %41, align 8, !llfi_index !590
  %43 = getelementptr i8* %42, i64 8, !llfi_index !591
  store i8* %43, i8** %41, align 8, !llfi_index !592
  br label %44, !llfi_index !593

; <label>:44                                      ; preds = %40, %34
  %.in = phi i8* [ %38, %34 ], [ %42, %40 ], !llfi_index !594
  %45 = bitcast i8* %.in to i32*, !llfi_index !595
  %46 = load i32* %45, align 4, !llfi_index !596
  call void @llvm.va_end(i8* %10), !llfi_index !597
  %47 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !598
  %48 = load i32* %47, align 4, !tbaa !195, !llfi_index !599
  %49 = icmp sgt i32 %48, 0, !llfi_index !600
  br i1 %49, label %.preheader.lr.ph, label %._crit_edge5, !llfi_index !601

.preheader.lr.ph:                                 ; preds = %44
  %50 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !602
  %51 = icmp sgt i32 %controlling, 0, !llfi_index !603
  %52 = zext i32 %46 to i64, !llfi_index !604
  %53 = shl i64 1, %52, !llfi_index !605
  %54 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !606
  %55 = load i32* %47, align 4, !tbaa !195, !llfi_index !607
  br label %.preheader, !llfi_index !608

.preheader:                                       ; preds = %76, %.preheader.lr.ph
  %indvars.iv17 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next18, %76 ], !llfi_index !609
  br i1 %51, label %.lr.ph, label %split3, !llfi_index !610

.lr.ph:                                           ; preds = %.preheader
  %56 = load %struct.quantum_reg_node_struct** %50, align 8, !tbaa !200, !llfi_index !611
  %57 = getelementptr inbounds %struct.quantum_reg_node_struct* %56, i64 %indvars.iv17, i32 1, !llfi_index !612
  %58 = load i64* %57, align 8, !tbaa !224, !llfi_index !613
  br label %62, !llfi_index !614

; <label>:59                                      ; preds = %62
  %60 = trunc i64 %indvars.iv.next to i32, !llfi_index !615
  %61 = icmp slt i32 %60, %controlling, !llfi_index !616
  br i1 %61, label %62, label %split3, !llfi_index !617

; <label>:62                                      ; preds = %59, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %59 ], !llfi_index !618
  %j.02 = phi i32 [ 0, %.lr.ph ], [ %69, %59 ], !llfi_index !619
  %63 = getelementptr inbounds i32* %4, i64 %indvars.iv, !llfi_index !620
  %64 = load i32* %63, align 4, !tbaa !1, !llfi_index !621
  %65 = zext i32 %64 to i64, !llfi_index !622
  %66 = shl i64 1, %65, !llfi_index !623
  %67 = and i64 %66, %58, !llfi_index !624
  %68 = icmp eq i64 %67, 0, !llfi_index !625
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !626
  %69 = add nsw i32 %j.02, 1, !llfi_index !627
  br i1 %68, label %split3, label %59, !llfi_index !628

split3:                                           ; preds = %62, %59, %.preheader
  %j.0.lcssa = phi i32 [ 0, %.preheader ], [ %j.02, %62 ], [ %69, %59 ], !llfi_index !629
  %70 = icmp eq i32 %j.0.lcssa, %controlling, !llfi_index !630
  br i1 %70, label %71, label %76, !llfi_index !631

; <label>:71                                      ; preds = %split3
  %72 = load %struct.quantum_reg_node_struct** %54, align 8, !tbaa !200, !llfi_index !632
  %73 = getelementptr inbounds %struct.quantum_reg_node_struct* %72, i64 %indvars.iv17, i32 1, !llfi_index !633
  %74 = load i64* %73, align 8, !tbaa !224, !llfi_index !634
  %75 = xor i64 %74, %53, !llfi_index !635
  store i64 %75, i64* %73, align 8, !tbaa !224, !llfi_index !636
  br label %76, !llfi_index !637

; <label>:76                                      ; preds = %71, %split3
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !llfi_index !638
  %77 = trunc i64 %indvars.iv.next18 to i32, !llfi_index !639
  %78 = icmp slt i32 %77, %55, !llfi_index !640
  br i1 %78, label %.preheader, label %._crit_edge5, !llfi_index !641

._crit_edge5:                                     ; preds = %76, %44
  call void @free(i8* %3) #3, !llfi_index !642
  %79 = sub nsw i32 0, %controlling, !llfi_index !643
  %80 = sext i32 %79 to i64, !llfi_index !644
  %81 = shl nsw i64 %80, 2, !llfi_index !645
  %82 = call i64 @quantum_memman(i64 %81) #3, !llfi_index !646
  call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !647
  ret void, !llfi_index !648
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
  %qec = alloca i32, align 4, !llfi_index !649
  call void @quantum_qec_get_status(i32* %qec, i32* null) #3, !llfi_index !650
  %1 = load i32* %qec, align 4, !tbaa !1, !llfi_index !651
  %2 = icmp eq i32 %1, 0, !llfi_index !652
  br i1 %2, label %4, label %3, !llfi_index !653

; <label>:3                                       ; preds = %0
  call void @quantum_sigma_x_ft(i32 %target, %struct.quantum_reg_struct* %reg) #3, !llfi_index !654
  br label %21, !llfi_index !655

; <label>:4                                       ; preds = %0
  %5 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 3, i32 %target) #3, !llfi_index !656
  %6 = icmp eq i32 %5, 0, !llfi_index !657
  br i1 %6, label %.preheader, label %21, !llfi_index !658

.preheader:                                       ; preds = %4
  %7 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !659
  %8 = load i32* %7, align 4, !tbaa !195, !llfi_index !660
  %9 = icmp sgt i32 %8, 0, !llfi_index !661
  br i1 %9, label %.lr.ph, label %._crit_edge, !llfi_index !662

.lr.ph:                                           ; preds = %.preheader
  %10 = zext i32 %target to i64, !llfi_index !663
  %11 = shl i64 1, %10, !llfi_index !664
  %12 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !665
  %13 = load %struct.quantum_reg_node_struct** %12, align 8, !tbaa !200, !llfi_index !666
  %14 = load i32* %7, align 4, !tbaa !195, !llfi_index !667
  br label %15, !llfi_index !668

; <label>:15                                      ; preds = %15, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %15 ], !llfi_index !669
  %16 = getelementptr inbounds %struct.quantum_reg_node_struct* %13, i64 %indvars.iv, i32 1, !llfi_index !670
  %17 = load i64* %16, align 8, !tbaa !224, !llfi_index !671
  %18 = xor i64 %17, %11, !llfi_index !672
  store i64 %18, i64* %16, align 8, !tbaa !224, !llfi_index !673
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !674
  %19 = trunc i64 %indvars.iv.next to i32, !llfi_index !675
  %20 = icmp slt i32 %19, %14, !llfi_index !676
  br i1 %20, label %15, label %._crit_edge, !llfi_index !677

._crit_edge:                                      ; preds = %15, %.preheader
  call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !678
  br label %21, !llfi_index !679

; <label>:21                                      ; preds = %._crit_edge, %4, %3
  ret void, !llfi_index !680
}

; Function Attrs: nounwind uwtable
define void @quantum_sigma_y(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %1 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 4, i32 %target) #3, !llfi_index !681
  %2 = icmp eq i32 %1, 0, !llfi_index !682
  br i1 %2, label %.preheader, label %39, !llfi_index !683

.preheader:                                       ; preds = %0
  %3 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !684
  %4 = load i32* %3, align 4, !tbaa !195, !llfi_index !685
  %5 = icmp sgt i32 %4, 0, !llfi_index !686
  br i1 %5, label %.lr.ph, label %._crit_edge, !llfi_index !687

.lr.ph:                                           ; preds = %.preheader
  %6 = zext i32 %target to i64, !llfi_index !688
  %7 = shl i64 1, %6, !llfi_index !689
  %8 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !690
  br label %9, !llfi_index !691

; <label>:9                                       ; preds = %35, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %35 ], !llfi_index !692
  %10 = load %struct.quantum_reg_node_struct** %8, align 8, !tbaa !200, !llfi_index !693
  %11 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv, i32 1, !llfi_index !694
  %12 = load i64* %11, align 8, !tbaa !224, !llfi_index !695
  %13 = xor i64 %12, %7, !llfi_index !696
  store i64 %13, i64* %11, align 8, !tbaa !224, !llfi_index !697
  %14 = load %struct.quantum_reg_node_struct** %8, align 8, !tbaa !200, !llfi_index !698
  %15 = getelementptr inbounds %struct.quantum_reg_node_struct* %14, i64 %indvars.iv, i32 1, !llfi_index !699
  %16 = load i64* %15, align 8, !tbaa !224, !llfi_index !700
  %17 = and i64 %16, %7, !llfi_index !701
  %18 = icmp eq i64 %17, 0, !llfi_index !702
  %19 = getelementptr inbounds %struct.quantum_reg_node_struct* %14, i64 %indvars.iv, i32 0, i32 0, !llfi_index !703
  %20 = load float* %19, align 4, !llfi_index !704
  %21 = getelementptr inbounds %struct.quantum_reg_node_struct* %14, i64 %indvars.iv, i32 0, i32 1, !llfi_index !705
  %22 = load float* %21, align 4, !llfi_index !706
  br i1 %18, label %28, label %23, !llfi_index !707

; <label>:23                                      ; preds = %9
  %24 = fmul float %20, 0.000000e+00, !llfi_index !708
  %25 = fsub float %24, %22, !llfi_index !709
  %26 = fmul float %22, 0.000000e+00, !llfi_index !710
  %27 = fadd float %20, %26, !llfi_index !711
  br label %35, !llfi_index !712

; <label>:28                                      ; preds = %9
  %29 = fmul float %20, -0.000000e+00, !llfi_index !713
  %30 = fmul float %22, -1.000000e+00, !llfi_index !714
  %31 = fsub float %29, %30, !llfi_index !715
  %32 = fmul float %22, -0.000000e+00, !llfi_index !716
  %33 = fmul float %20, -1.000000e+00, !llfi_index !717
  %34 = fadd float %33, %32, !llfi_index !718
  br label %35, !llfi_index !719

; <label>:35                                      ; preds = %28, %23
  %storemerge1 = phi float [ %25, %23 ], [ %31, %28 ], !llfi_index !720
  %storemerge = phi float [ %27, %23 ], [ %34, %28 ], !llfi_index !721
  store float %storemerge1, float* %19, align 4, !llfi_index !722
  store float %storemerge, float* %21, align 4, !llfi_index !723
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !724
  %36 = load i32* %3, align 4, !tbaa !195, !llfi_index !725
  %37 = trunc i64 %indvars.iv.next to i32, !llfi_index !726
  %38 = icmp slt i32 %37, %36, !llfi_index !727
  br i1 %38, label %9, label %._crit_edge, !llfi_index !728

._crit_edge:                                      ; preds = %35, %.preheader
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !729
  br label %39, !llfi_index !730

; <label>:39                                      ; preds = %._crit_edge, %0
  ret void, !llfi_index !731
}

; Function Attrs: nounwind uwtable
define void @quantum_sigma_z(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %1 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 5, i32 %target) #3, !llfi_index !732
  %2 = icmp eq i32 %1, 0, !llfi_index !733
  br i1 %2, label %.preheader, label %30, !llfi_index !734

.preheader:                                       ; preds = %0
  %3 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !735
  %4 = load i32* %3, align 4, !tbaa !195, !llfi_index !736
  %5 = icmp sgt i32 %4, 0, !llfi_index !737
  br i1 %5, label %.lr.ph, label %._crit_edge, !llfi_index !738

.lr.ph:                                           ; preds = %.preheader
  %6 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !739
  %7 = zext i32 %target to i64, !llfi_index !740
  %8 = shl i64 1, %7, !llfi_index !741
  br label %9, !llfi_index !742

; <label>:9                                       ; preds = %26, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %26 ], !llfi_index !743
  %10 = load %struct.quantum_reg_node_struct** %6, align 8, !tbaa !200, !llfi_index !744
  %11 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv, i32 1, !llfi_index !745
  %12 = load i64* %11, align 8, !tbaa !224, !llfi_index !746
  %13 = and i64 %12, %8, !llfi_index !747
  %14 = icmp eq i64 %13, 0, !llfi_index !748
  br i1 %14, label %26, label %15, !llfi_index !749

; <label>:15                                      ; preds = %9
  %16 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv, i32 0, i32 0, !llfi_index !750
  %17 = load float* %16, align 4, !llfi_index !751
  %18 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv, i32 0, i32 1, !llfi_index !752
  %19 = load float* %18, align 4, !llfi_index !753
  %20 = fmul float %17, -1.000000e+00, !llfi_index !754
  %21 = fmul float %19, 0.000000e+00, !llfi_index !755
  %22 = fsub float %20, %21, !llfi_index !756
  %23 = fmul float %19, -1.000000e+00, !llfi_index !757
  %24 = fmul float %17, 0.000000e+00, !llfi_index !758
  %25 = fadd float %24, %23, !llfi_index !759
  store float %22, float* %16, align 4, !llfi_index !760
  store float %25, float* %18, align 4, !llfi_index !761
  br label %26, !llfi_index !762

; <label>:26                                      ; preds = %15, %9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !763
  %27 = load i32* %3, align 4, !tbaa !195, !llfi_index !764
  %28 = trunc i64 %indvars.iv.next to i32, !llfi_index !765
  %29 = icmp slt i32 %28, %27, !llfi_index !766
  br i1 %29, label %9, label %._crit_edge, !llfi_index !767

._crit_edge:                                      ; preds = %26, %.preheader
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !768
  br label %30, !llfi_index !769

; <label>:30                                      ; preds = %._crit_edge, %0
  ret void, !llfi_index !770
}

; Function Attrs: nounwind uwtable
define void @quantum_swaptheleads(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %qec = alloca i32, align 4, !llfi_index !771
  call void @quantum_qec_get_status(i32* %qec, i32* null) #3, !llfi_index !772
  %1 = load i32* %qec, align 4, !tbaa !1, !llfi_index !773
  %2 = icmp eq i32 %1, 0, !llfi_index !774
  br i1 %2, label %.preheader, label %.preheader8, !llfi_index !775

.preheader8:                                      ; preds = %0
  %3 = icmp sgt i32 %width, 0, !llfi_index !776
  br i1 %3, label %.lr.ph11, label %.loopexit, !llfi_index !777

.preheader:                                       ; preds = %0
  %4 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !778
  %5 = load i32* %4, align 4, !tbaa !195, !llfi_index !779
  %6 = icmp sgt i32 %5, 0, !llfi_index !780
  br i1 %6, label %.lr.ph7, label %.loopexit, !llfi_index !781

.lr.ph7:                                          ; preds = %.preheader
  %7 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !782
  %8 = zext i32 %width to i64, !llfi_index !783
  %9 = shl nuw i64 1, %8, !llfi_index !784
  %10 = add i64 %9, 4294967295, !llfi_index !785
  %11 = icmp sgt i32 %width, 0, !llfi_index !786
  br label %14, !llfi_index !787

.lr.ph11:                                         ; preds = %.lr.ph11, %.preheader8
  %i.010 = phi i32 [ %13, %.lr.ph11 ], [ 0, %.preheader8 ], !llfi_index !788
  %12 = add nsw i32 %i.010, %width, !llfi_index !789
  call void @quantum_cnot(i32 %i.010, i32 %12, %struct.quantum_reg_struct* %reg), !llfi_index !790
  call void @quantum_cnot(i32 %12, i32 %i.010, %struct.quantum_reg_struct* %reg), !llfi_index !791
  call void @quantum_cnot(i32 %i.010, i32 %12, %struct.quantum_reg_struct* %reg), !llfi_index !792
  %13 = add nsw i32 %i.010, 1, !llfi_index !793
  %exitcond15 = icmp eq i32 %13, %width, !llfi_index !794
  br i1 %exitcond15, label %.loopexit, label %.lr.ph11, !llfi_index !795

; <label>:14                                      ; preds = %37, %.lr.ph7
  %indvars.iv13 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next14, %37 ], !llfi_index !796
  %15 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 14, i32 %width) #3, !llfi_index !797
  %16 = icmp eq i32 %15, 0, !llfi_index !798
  br i1 %16, label %17, label %.loopexit, !llfi_index !799

; <label>:17                                      ; preds = %14
  %18 = load %struct.quantum_reg_node_struct** %7, align 8, !tbaa !200, !llfi_index !800
  %19 = getelementptr inbounds %struct.quantum_reg_node_struct* %18, i64 %indvars.iv13, i32 1, !llfi_index !801
  %20 = load i64* %19, align 8, !tbaa !224, !llfi_index !802
  %21 = and i64 %20, %10, !llfi_index !803
  %22 = trunc i64 %21 to i32, !llfi_index !804
  %23 = getelementptr inbounds %struct.quantum_reg_node_struct* %18, i64 %indvars.iv13, i32 1, !llfi_index !805
  br i1 %11, label %.lr.ph, label %37, !llfi_index !806

.lr.ph:                                           ; preds = %17
  %24 = load %struct.quantum_reg_node_struct** %7, align 8, !tbaa !200, !llfi_index !807
  %25 = getelementptr inbounds %struct.quantum_reg_node_struct* %24, i64 %indvars.iv13, i32 1, !llfi_index !808
  %26 = load i64* %25, align 8, !tbaa !224, !llfi_index !809
  br label %27, !llfi_index !810

; <label>:27                                      ; preds = %27, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %27 ], !llfi_index !811
  %28 = phi i64 [ %20, %.lr.ph ], [ %26, %27 ], !llfi_index !812
  %pat2.03 = phi i64 [ 0, %.lr.ph ], [ %35, %27 ], !llfi_index !813
  %29 = trunc i64 %indvars.iv to i32, !llfi_index !814
  %30 = add nsw i32 %29, %width, !llfi_index !815
  %31 = zext i32 %30 to i64, !llfi_index !816
  %32 = shl i64 1, %31, !llfi_index !817
  %33 = and i64 %28, %32, !llfi_index !818
  %34 = and i64 %pat2.03, 4294967295, !llfi_index !819
  %35 = add i64 %33, %34, !llfi_index !820
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !821
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !822
  %exitcond = icmp eq i32 %lftr.wideiv, %width, !llfi_index !823
  br i1 %exitcond, label %._crit_edge, label %27, !llfi_index !824

._crit_edge:                                      ; preds = %27
  %36 = trunc i64 %35 to i32, !llfi_index !825
  br label %37, !llfi_index !826

; <label>:37                                      ; preds = %._crit_edge, %17
  %.lcssa1 = phi i64 [ %26, %._crit_edge ], [ %20, %17 ], !llfi_index !827
  %.lcssa = phi i64* [ %25, %._crit_edge ], [ %23, %17 ], !llfi_index !828
  %pat2.0.lcssa = phi i32 [ %36, %._crit_edge ], [ 0, %17 ], !llfi_index !829
  %38 = add nsw i32 %pat2.0.lcssa, %22, !llfi_index !830
  %39 = sext i32 %38 to i64, !llfi_index !831
  %40 = shl i32 %22, %width, !llfi_index !832
  %41 = sext i32 %40 to i64, !llfi_index !833
  %42 = ashr i32 %pat2.0.lcssa, %width, !llfi_index !834
  %43 = sext i32 %42 to i64, !llfi_index !835
  %44 = sub i64 %41, %39, !llfi_index !836
  %45 = add i64 %44, %.lcssa1, !llfi_index !837
  %46 = add i64 %45, %43, !llfi_index !838
  store i64 %46, i64* %.lcssa, align 8, !tbaa !224, !llfi_index !839
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !llfi_index !840
  %47 = load i32* %4, align 4, !tbaa !195, !llfi_index !841
  %48 = trunc i64 %indvars.iv.next14 to i32, !llfi_index !842
  %49 = icmp slt i32 %48, %47, !llfi_index !843
  br i1 %49, label %14, label %.loopexit, !llfi_index !844

.loopexit:                                        ; preds = %37, %14, %.lr.ph11, %.preheader, %.preheader8
  ret void, !llfi_index !845
}

; Function Attrs: nounwind uwtable
define void @quantum_swaptheleads_omuln_controlled(i32 %control, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = icmp sgt i32 %width, 0, !llfi_index !846
  br i1 %1, label %.lr.ph, label %._crit_edge, !llfi_index !847

.lr.ph:                                           ; preds = %0
  %2 = shl i32 %width, 1, !llfi_index !848
  %3 = add i32 %2, 2, !llfi_index !849
  br label %4, !llfi_index !850

; <label>:4                                       ; preds = %4, %.lr.ph
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %7, %4 ], !llfi_index !851
  %5 = add nsw i32 %i.01, %width, !llfi_index !852
  %6 = add i32 %3, %i.01, !llfi_index !853
  tail call void @quantum_toffoli(i32 %control, i32 %5, i32 %6, %struct.quantum_reg_struct* %reg), !llfi_index !854
  tail call void @quantum_toffoli(i32 %control, i32 %6, i32 %5, %struct.quantum_reg_struct* %reg), !llfi_index !855
  tail call void @quantum_toffoli(i32 %control, i32 %5, i32 %6, %struct.quantum_reg_struct* %reg), !llfi_index !856
  %7 = add nsw i32 %i.01, 1, !llfi_index !857
  %exitcond = icmp eq i32 %7, %width, !llfi_index !858
  br i1 %exitcond, label %._crit_edge, label %4, !llfi_index !859

._crit_edge:                                      ; preds = %4, %0
  ret void, !llfi_index !860
}

; Function Attrs: nounwind uwtable
define void @quantum_gate1(i32 %target, i64 %m.coerce0, { float, float }* %m.coerce1, %struct.quantum_reg_struct* %reg) #0 {
  %1 = icmp eq i64 %m.coerce0, 8589934594, !llfi_index !861
  br i1 %1, label %.preheader39, label %7, !llfi_index !862

.preheader39:                                     ; preds = %0
  %2 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !863
  %3 = load i32* %2, align 4, !tbaa !864, !llfi_index !865
  %4 = icmp eq i32 %3, 31, !llfi_index !866
  br i1 %4, label %.preheader34, label %.lr.ph41, !llfi_index !867

.lr.ph41:                                         ; preds = %.preheader39
  %5 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !868
  %6 = load i32** %5, align 8, !tbaa !869, !llfi_index !870
  br label %12, !llfi_index !871

; <label>:7                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str18, i64 0, i64 0)), !llfi_index !872
  tail call void @exit(i32 1) #12, !llfi_index !873
  unreachable, !llfi_index !874

.preheader34:                                     ; preds = %12, %.preheader39
  %8 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !875
  %9 = load i32* %8, align 4, !tbaa !195, !llfi_index !876
  %10 = icmp sgt i32 %9, 0, !llfi_index !877
  br i1 %10, label %.lr.ph37, label %._crit_edge31, !llfi_index !878

.lr.ph37:                                         ; preds = %.preheader34
  %11 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !879
  br label %28, !llfi_index !880

; <label>:12                                      ; preds = %12, %.lr.ph41
  %indvars.iv50 = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next51, %12 ], !llfi_index !881
  %13 = getelementptr inbounds i32* %6, i64 %indvars.iv50, !llfi_index !882
  store i32 0, i32* %13, align 4, !tbaa !1, !llfi_index !883
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1, !llfi_index !884
  %14 = load i32* %2, align 4, !tbaa !864, !llfi_index !885
  %15 = shl i32 1, %14, !llfi_index !886
  %16 = trunc i64 %indvars.iv.next51 to i32, !llfi_index !887
  %17 = icmp slt i32 %16, %15, !llfi_index !888
  br i1 %17, label %12, label %.preheader34, !llfi_index !889

.preheader:                                       ; preds = %28
  %18 = icmp sgt i32 %33, 0, !llfi_index !890
  br i1 %18, label %.lr.ph30, label %._crit_edge31, !llfi_index !891

.lr.ph30:                                         ; preds = %.preheader
  %19 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !892
  %20 = load %struct.quantum_reg_node_struct** %19, align 8, !tbaa !200, !llfi_index !893
  %21 = zext i32 %target to i64, !llfi_index !894
  %22 = shl i64 1, %21, !llfi_index !895
  %23 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 0, !llfi_index !896
  %24 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 1, !llfi_index !897
  %25 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 0, !llfi_index !898
  %26 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 1, !llfi_index !899
  %27 = load i32* %8, align 4, !tbaa !195, !llfi_index !900
  br label %36, !llfi_index !901

; <label>:28                                      ; preds = %28, %.lr.ph37
  %indvars.iv48 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next49, %28 ], !llfi_index !902
  %29 = load %struct.quantum_reg_node_struct** %11, align 8, !tbaa !200, !llfi_index !903
  %30 = getelementptr inbounds %struct.quantum_reg_node_struct* %29, i64 %indvars.iv48, i32 1, !llfi_index !904
  %31 = load i64* %30, align 8, !tbaa !224, !llfi_index !905
  %32 = trunc i64 %indvars.iv48 to i32, !llfi_index !906
  tail call fastcc void @quantum_add_hash(i64 %31, i32 %32, %struct.quantum_reg_struct* %reg), !llfi_index !907
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1, !llfi_index !908
  %33 = load i32* %8, align 4, !tbaa !195, !llfi_index !909
  %34 = trunc i64 %indvars.iv.next49 to i32, !llfi_index !910
  %35 = icmp slt i32 %34, %33, !llfi_index !911
  br i1 %35, label %28, label %.preheader, !llfi_index !912

; <label>:36                                      ; preds = %68, %.lr.ph30
  %indvars.iv46 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next47, %68 ], !llfi_index !913
  %addsize.028 = phi i32 [ 0, %.lr.ph30 ], [ %addsize.2, %68 ], !llfi_index !914
  %37 = getelementptr inbounds %struct.quantum_reg_node_struct* %20, i64 %indvars.iv46, i32 1, !llfi_index !915
  %38 = load i64* %37, align 8, !tbaa !224, !llfi_index !916
  %39 = xor i64 %38, %22, !llfi_index !917
  %40 = tail call fastcc i32 @quantum_get_state(i64 %39, %struct.quantum_reg_struct* byval align 8 %reg), !llfi_index !918
  %41 = icmp eq i32 %40, -1, !llfi_index !919
  br i1 %41, label %42, label %68, !llfi_index !920

; <label>:42                                      ; preds = %36
  %43 = load float* %23, align 4, !llfi_index !921
  %44 = load float* %24, align 4, !llfi_index !922
  %45 = insertelement <2 x float> undef, float %43, i32 0, !llfi_index !923
  %46 = insertelement <2 x float> %45, float %44, i32 1, !llfi_index !924
  %47 = tail call fastcc float @quantum_prob_inline(<2 x float> %46), !llfi_index !925
  %48 = fpext float %47 to double, !llfi_index !926
  %49 = fcmp ogt double %48, 1.000000e-09, !llfi_index !927
  br i1 %49, label %50, label %53, !llfi_index !928

; <label>:50                                      ; preds = %42
  %51 = and i64 %38, %22, !llfi_index !929
  %not. = icmp ne i64 %51, 0, !llfi_index !930
  %52 = zext i1 %not. to i32, !llfi_index !931
  %addsize.0. = add nsw i32 %52, %addsize.028, !llfi_index !932
  br label %53, !llfi_index !933

; <label>:53                                      ; preds = %50, %42
  %addsize.1 = phi i32 [ %addsize.028, %42 ], [ %addsize.0., %50 ], !llfi_index !934
  %54 = load float* %25, align 4, !llfi_index !935
  %55 = load float* %26, align 4, !llfi_index !936
  %56 = insertelement <2 x float> undef, float %54, i32 0, !llfi_index !937
  %57 = insertelement <2 x float> %56, float %55, i32 1, !llfi_index !938
  %58 = tail call fastcc float @quantum_prob_inline(<2 x float> %57), !llfi_index !939
  %59 = fpext float %58 to double, !llfi_index !940
  %60 = fcmp ogt double %59, 1.000000e-09, !llfi_index !941
  br i1 %60, label %61, label %68, !llfi_index !942

; <label>:61                                      ; preds = %53
  %62 = load %struct.quantum_reg_node_struct** %19, align 8, !tbaa !200, !llfi_index !943
  %63 = getelementptr inbounds %struct.quantum_reg_node_struct* %62, i64 %indvars.iv46, i32 1, !llfi_index !944
  %64 = load i64* %63, align 8, !tbaa !224, !llfi_index !945
  %65 = and i64 %64, %22, !llfi_index !946
  %66 = icmp eq i64 %65, 0, !llfi_index !947
  %67 = zext i1 %66 to i32, !llfi_index !948
  %.addsize.1 = add nsw i32 %67, %addsize.1, !llfi_index !949
  br label %68, !llfi_index !950

; <label>:68                                      ; preds = %61, %53, %36
  %addsize.2 = phi i32 [ %addsize.1, %53 ], [ %addsize.028, %36 ], [ %.addsize.1, %61 ], !llfi_index !951
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !llfi_index !952
  %69 = trunc i64 %indvars.iv.next47 to i32, !llfi_index !953
  %70 = icmp slt i32 %69, %27, !llfi_index !954
  br i1 %70, label %36, label %._crit_edge31, !llfi_index !955

._crit_edge31:                                    ; preds = %68, %.preheader, %.preheader34
  %.lcssa27 = phi i32 [ %33, %.preheader ], [ %27, %68 ], [ %9, %.preheader34 ], !llfi_index !956
  %addsize.0.lcssa = phi i32 [ 0, %.preheader ], [ %addsize.2, %68 ], [ 0, %.preheader34 ], !llfi_index !957
  %71 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !958
  %72 = load %struct.quantum_reg_node_struct** %71, align 8, !tbaa !200, !llfi_index !959
  %73 = bitcast %struct.quantum_reg_node_struct* %72 to i8*, !llfi_index !960
  %74 = add nsw i32 %.lcssa27, %addsize.0.lcssa, !llfi_index !961
  %75 = sext i32 %74 to i64, !llfi_index !962
  %76 = shl nsw i64 %75, 4, !llfi_index !963
  %77 = tail call i8* @realloc(i8* %73, i64 %76) #3, !llfi_index !964
  %78 = bitcast i8* %77 to %struct.quantum_reg_node_struct*, !llfi_index !965
  store %struct.quantum_reg_node_struct* %78, %struct.quantum_reg_node_struct** %71, align 8, !tbaa !200, !llfi_index !966
  %79 = icmp eq i8* %77, null, !llfi_index !967
  br i1 %79, label %80, label %84, !llfi_index !968

; <label>:80                                      ; preds = %._crit_edge31
  %81 = load i32* %8, align 4, !tbaa !195, !llfi_index !969
  %82 = add nsw i32 %81, %addsize.0.lcssa, !llfi_index !970
  %83 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str214, i64 0, i64 0), i32 %82) #3, !llfi_index !971
  tail call void @exit(i32 1) #12, !llfi_index !972
  unreachable, !llfi_index !973

; <label>:84                                      ; preds = %._crit_edge31
  %85 = sext i32 %addsize.0.lcssa to i64, !llfi_index !974
  %86 = shl nsw i64 %85, 4, !llfi_index !975
  %87 = tail call i64 @quantum_memman(i64 %86) #3, !llfi_index !976
  %88 = icmp sgt i32 %addsize.0.lcssa, 0, !llfi_index !977
  %89 = load i32* %8, align 4, !tbaa !195, !llfi_index !978
  br i1 %88, label %.lr.ph24, label %._crit_edge25, !llfi_index !979

.lr.ph24:                                         ; preds = %.lr.ph24, %84
  %90 = phi i32 [ %102, %.lr.ph24 ], [ %89, %84 ], !llfi_index !980
  %i.322 = phi i32 [ %101, %.lr.ph24 ], [ 0, %84 ], !llfi_index !981
  %91 = add nsw i32 %90, %i.322, !llfi_index !982
  %92 = sext i32 %91 to i64, !llfi_index !983
  %93 = load %struct.quantum_reg_node_struct** %71, align 8, !tbaa !200, !llfi_index !984
  %94 = getelementptr inbounds %struct.quantum_reg_node_struct* %93, i64 %92, i32 1, !llfi_index !985
  store i64 0, i64* %94, align 8, !tbaa !224, !llfi_index !986
  %95 = load i32* %8, align 4, !tbaa !195, !llfi_index !987
  %96 = add nsw i32 %95, %i.322, !llfi_index !988
  %97 = sext i32 %96 to i64, !llfi_index !989
  %98 = load %struct.quantum_reg_node_struct** %71, align 8, !tbaa !200, !llfi_index !990
  %99 = getelementptr inbounds %struct.quantum_reg_node_struct* %98, i64 %97, i32 0, i32 0, !llfi_index !991
  %100 = getelementptr inbounds %struct.quantum_reg_node_struct* %98, i64 %97, i32 0, i32 1, !llfi_index !992
  store float 0.000000e+00, float* %99, align 4, !llfi_index !993
  store float 0.000000e+00, float* %100, align 4, !llfi_index !994
  %101 = add nsw i32 %i.322, 1, !llfi_index !995
  %102 = load i32* %8, align 4, !tbaa !195, !llfi_index !996
  %exitcond = icmp eq i32 %101, %addsize.0.lcssa, !llfi_index !997
  br i1 %exitcond, label %._crit_edge25, label %.lr.ph24, !llfi_index !998

._crit_edge25:                                    ; preds = %.lr.ph24, %84
  %.lcssa21 = phi i32 [ %89, %84 ], [ %102, %.lr.ph24 ], !llfi_index !999
  %103 = add nsw i32 %.lcssa21, %addsize.0.lcssa, !llfi_index !1000
  %104 = sext i32 %103 to i64, !llfi_index !1001
  %105 = tail call noalias i8* @calloc(i64 %104, i64 1) #3, !llfi_index !1002
  %106 = icmp eq i8* %105, null, !llfi_index !1003
  %107 = load i32* %8, align 4, !tbaa !195, !llfi_index !1004
  br i1 %106, label %108, label %112, !llfi_index !1005

; <label>:108                                     ; preds = %._crit_edge25
  %109 = add nsw i32 %107, %addsize.0.lcssa, !llfi_index !1006
  %110 = sext i32 %109 to i64, !llfi_index !1007
  %111 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str315, i64 0, i64 0), i64 %110) #3, !llfi_index !1008
  tail call void @exit(i32 1) #12, !llfi_index !1009
  unreachable, !llfi_index !1010

; <label>:112                                     ; preds = %._crit_edge25
  %113 = sext i32 %107 to i64, !llfi_index !1011
  %114 = add i64 %113, %85, !llfi_index !1012
  %115 = tail call i64 @quantum_memman(i64 %114) #3, !llfi_index !1013
  %116 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !1014
  %117 = load i32* %116, align 4, !tbaa !22, !llfi_index !1015
  %118 = zext i32 %117 to i64, !llfi_index !1016
  %119 = shl i64 1, %118, !llfi_index !1017
  %120 = uitofp i64 %119 to double, !llfi_index !1018
  %121 = fdiv double 1.000000e+00, %120, !llfi_index !1019
  %122 = fdiv double %121, 1.000000e+06, !llfi_index !1020
  %123 = fptrunc double %122 to float, !llfi_index !1021
  %124 = load i32* %8, align 4, !tbaa !195, !llfi_index !1022
  %125 = icmp sgt i32 %124, 0, !llfi_index !1023
  br i1 %125, label %.lr.ph18, label %split20, !llfi_index !1024

.lr.ph18:                                         ; preds = %112
  %126 = load i32* %8, align 4, !tbaa !195, !llfi_index !1025
  %127 = zext i32 %target to i64, !llfi_index !1026
  %128 = shl i64 1, %127, !llfi_index !1027
  %129 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 0, !llfi_index !1028
  %130 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 1, !llfi_index !1029
  %131 = getelementptr inbounds { float, float }* %m.coerce1, i64 3, i32 0, !llfi_index !1030
  %132 = getelementptr inbounds { float, float }* %m.coerce1, i64 3, i32 1, !llfi_index !1031
  %133 = getelementptr inbounds { float, float }* %m.coerce1, i64 0, i32 0, !llfi_index !1032
  %134 = getelementptr inbounds { float, float }* %m.coerce1, i64 0, i32 1, !llfi_index !1033
  %135 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 0, !llfi_index !1034
  %136 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 1, !llfi_index !1035
  %137 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 0, !llfi_index !1036
  %138 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 1, !llfi_index !1037
  %139 = getelementptr inbounds { float, float }* %m.coerce1, i64 3, i32 0, !llfi_index !1038
  %140 = getelementptr inbounds { float, float }* %m.coerce1, i64 3, i32 1, !llfi_index !1039
  %141 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 0, !llfi_index !1040
  %142 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 1, !llfi_index !1041
  %143 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 0, !llfi_index !1042
  %144 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 1, !llfi_index !1043
  %145 = getelementptr inbounds { float, float }* %m.coerce1, i64 0, i32 0, !llfi_index !1044
  %146 = getelementptr inbounds { float, float }* %m.coerce1, i64 0, i32 1, !llfi_index !1045
  %147 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 0, !llfi_index !1046
  %148 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 1, !llfi_index !1047
  br label %149, !llfi_index !1048

; <label>:149                                     ; preds = %318, %.lr.ph18
  %indvars.iv43 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next44, %318 ], !llfi_index !1049
  %k.015 = phi i32 [ %126, %.lr.ph18 ], [ %k.2, %318 ], !llfi_index !1050
  %150 = getelementptr inbounds i8* %105, i64 %indvars.iv43, !llfi_index !1051
  %151 = load i8* %150, align 1, !tbaa !1052, !llfi_index !1053
  %152 = icmp eq i8 %151, 0, !llfi_index !1054
  br i1 %152, label %153, label %318, !llfi_index !1055

; <label>:153                                     ; preds = %149
  %154 = load %struct.quantum_reg_node_struct** %71, align 8, !tbaa !200, !llfi_index !1056
  %155 = getelementptr inbounds %struct.quantum_reg_node_struct* %154, i64 %indvars.iv43, i32 1, !llfi_index !1057
  %156 = load i64* %155, align 8, !tbaa !224, !llfi_index !1058
  %157 = and i64 %156, %128, !llfi_index !1059
  %158 = trunc i64 %157 to i32, !llfi_index !1060
  %159 = xor i64 %156, %128, !llfi_index !1061
  %160 = tail call fastcc i32 @quantum_get_state(i64 %159, %struct.quantum_reg_struct* byval align 8 %reg), !llfi_index !1062
  %161 = getelementptr inbounds %struct.quantum_reg_node_struct* %154, i64 %indvars.iv43, i32 0, i32 0, !llfi_index !1063
  %162 = load float* %161, align 4, !llfi_index !1064
  %163 = getelementptr inbounds %struct.quantum_reg_node_struct* %154, i64 %indvars.iv43, i32 0, i32 1, !llfi_index !1065
  %164 = load float* %163, align 4, !llfi_index !1066
  %165 = icmp sgt i32 %160, -1, !llfi_index !1067
  br i1 %165, label %166, label %172, !llfi_index !1068

; <label>:166                                     ; preds = %153
  %167 = sext i32 %160 to i64, !llfi_index !1069
  %168 = getelementptr inbounds %struct.quantum_reg_node_struct* %154, i64 %167, i32 0, i32 0, !llfi_index !1070
  %169 = load float* %168, align 4, !llfi_index !1071
  %170 = getelementptr inbounds %struct.quantum_reg_node_struct* %154, i64 %167, i32 0, i32 1, !llfi_index !1072
  %171 = load float* %170, align 4, !llfi_index !1073
  br label %172, !llfi_index !1074

; <label>:172                                     ; preds = %166, %153
  %tnot.sroa.0.0 = phi float [ %169, %166 ], [ 0.000000e+00, %153 ], !llfi_index !1075
  %tnot.sroa.7.0 = phi float [ %171, %166 ], [ 0.000000e+00, %153 ], !llfi_index !1076
  %173 = icmp ne i32 %158, 0, !llfi_index !1077
  br i1 %173, label %174, label %196, !llfi_index !1078

; <label>:174                                     ; preds = %172
  %175 = load float* %129, align 4, !llfi_index !1079
  %176 = load float* %130, align 4, !llfi_index !1080
  %177 = fmul float %tnot.sroa.0.0, %175, !llfi_index !1081
  %178 = fmul float %tnot.sroa.7.0, %176, !llfi_index !1082
  %179 = fsub float %177, %178, !llfi_index !1083
  %180 = fmul float %tnot.sroa.0.0, %176, !llfi_index !1084
  %181 = fmul float %tnot.sroa.7.0, %175, !llfi_index !1085
  %182 = fadd float %181, %180, !llfi_index !1086
  %183 = load float* %131, align 4, !llfi_index !1087
  %184 = load float* %132, align 4, !llfi_index !1088
  %185 = fmul float %162, %183, !llfi_index !1089
  %186 = fmul float %164, %184, !llfi_index !1090
  %187 = fsub float %185, %186, !llfi_index !1091
  %188 = fmul float %162, %184, !llfi_index !1092
  %189 = fmul float %164, %183, !llfi_index !1093
  %190 = fadd float %189, %188, !llfi_index !1094
  %191 = fadd float %179, %187, !llfi_index !1095
  %192 = fadd float %182, %190, !llfi_index !1096
  %193 = load %struct.quantum_reg_node_struct** %71, align 8, !tbaa !200, !llfi_index !1097
  %194 = getelementptr inbounds %struct.quantum_reg_node_struct* %193, i64 %indvars.iv43, i32 0, i32 0, !llfi_index !1098
  %195 = getelementptr inbounds %struct.quantum_reg_node_struct* %193, i64 %indvars.iv43, i32 0, i32 1, !llfi_index !1099
  store float %191, float* %194, align 4, !llfi_index !1100
  store float %192, float* %195, align 4, !llfi_index !1101
  br label %218, !llfi_index !1102

; <label>:196                                     ; preds = %172
  %197 = load float* %145, align 4, !llfi_index !1103
  %198 = load float* %146, align 4, !llfi_index !1104
  %199 = fmul float %162, %197, !llfi_index !1105
  %200 = fmul float %164, %198, !llfi_index !1106
  %201 = fsub float %199, %200, !llfi_index !1107
  %202 = fmul float %162, %198, !llfi_index !1108
  %203 = fmul float %164, %197, !llfi_index !1109
  %204 = fadd float %203, %202, !llfi_index !1110
  %205 = load float* %147, align 4, !llfi_index !1111
  %206 = load float* %148, align 4, !llfi_index !1112
  %207 = fmul float %tnot.sroa.0.0, %205, !llfi_index !1113
  %208 = fmul float %tnot.sroa.7.0, %206, !llfi_index !1114
  %209 = fsub float %207, %208, !llfi_index !1115
  %210 = fmul float %tnot.sroa.0.0, %206, !llfi_index !1116
  %211 = fmul float %tnot.sroa.7.0, %205, !llfi_index !1117
  %212 = fadd float %211, %210, !llfi_index !1118
  %213 = fadd float %201, %209, !llfi_index !1119
  %214 = fadd float %204, %212, !llfi_index !1120
  %215 = load %struct.quantum_reg_node_struct** %71, align 8, !tbaa !200, !llfi_index !1121
  %216 = getelementptr inbounds %struct.quantum_reg_node_struct* %215, i64 %indvars.iv43, i32 0, i32 0, !llfi_index !1122
  %217 = getelementptr inbounds %struct.quantum_reg_node_struct* %215, i64 %indvars.iv43, i32 0, i32 1, !llfi_index !1123
  store float %213, float* %216, align 4, !llfi_index !1124
  store float %214, float* %217, align 4, !llfi_index !1125
  br label %218, !llfi_index !1126

; <label>:218                                     ; preds = %196, %174
  br i1 %165, label %219, label %265, !llfi_index !1127

; <label>:219                                     ; preds = %218
  br i1 %173, label %220, label %.thread, !llfi_index !1128

; <label>:220                                     ; preds = %219
  %221 = load float* %133, align 4, !llfi_index !1129
  %222 = load float* %134, align 4, !llfi_index !1130
  %223 = fmul float %tnot.sroa.0.0, %221, !llfi_index !1131
  %224 = fmul float %tnot.sroa.7.0, %222, !llfi_index !1132
  %225 = fsub float %223, %224, !llfi_index !1133
  %226 = fmul float %tnot.sroa.0.0, %222, !llfi_index !1134
  %227 = fmul float %tnot.sroa.7.0, %221, !llfi_index !1135
  %228 = fadd float %227, %226, !llfi_index !1136
  %229 = load float* %135, align 4, !llfi_index !1137
  %230 = load float* %136, align 4, !llfi_index !1138
  %231 = fmul float %162, %229, !llfi_index !1139
  %232 = fmul float %164, %230, !llfi_index !1140
  %233 = fsub float %231, %232, !llfi_index !1141
  %234 = fmul float %162, %230, !llfi_index !1142
  %235 = fmul float %164, %229, !llfi_index !1143
  %236 = fadd float %235, %234, !llfi_index !1144
  %237 = fadd float %225, %233, !llfi_index !1145
  %238 = fadd float %228, %236, !llfi_index !1146
  %239 = sext i32 %160 to i64, !llfi_index !1147
  %240 = load %struct.quantum_reg_node_struct** %71, align 8, !tbaa !200, !llfi_index !1148
  %241 = getelementptr inbounds %struct.quantum_reg_node_struct* %240, i64 %239, i32 0, i32 0, !llfi_index !1149
  %242 = getelementptr inbounds %struct.quantum_reg_node_struct* %240, i64 %239, i32 0, i32 1, !llfi_index !1150
  store float %237, float* %241, align 4, !llfi_index !1151
  store float %238, float* %242, align 4, !llfi_index !1152
  br label %314, !llfi_index !1153

.thread:                                          ; preds = %219
  %243 = load float* %137, align 4, !llfi_index !1154
  %244 = load float* %138, align 4, !llfi_index !1155
  %245 = fmul float %162, %243, !llfi_index !1156
  %246 = fmul float %164, %244, !llfi_index !1157
  %247 = fsub float %245, %246, !llfi_index !1158
  %248 = fmul float %162, %244, !llfi_index !1159
  %249 = fmul float %164, %243, !llfi_index !1160
  %250 = fadd float %249, %248, !llfi_index !1161
  %251 = load float* %139, align 4, !llfi_index !1162
  %252 = load float* %140, align 4, !llfi_index !1163
  %253 = fmul float %tnot.sroa.0.0, %251, !llfi_index !1164
  %254 = fmul float %tnot.sroa.7.0, %252, !llfi_index !1165
  %255 = fsub float %253, %254, !llfi_index !1166
  %256 = fmul float %tnot.sroa.0.0, %252, !llfi_index !1167
  %257 = fmul float %tnot.sroa.7.0, %251, !llfi_index !1168
  %258 = fadd float %257, %256, !llfi_index !1169
  %259 = fadd float %247, %255, !llfi_index !1170
  %260 = fadd float %250, %258, !llfi_index !1171
  %261 = sext i32 %160 to i64, !llfi_index !1172
  %262 = load %struct.quantum_reg_node_struct** %71, align 8, !tbaa !200, !llfi_index !1173
  %263 = getelementptr inbounds %struct.quantum_reg_node_struct* %262, i64 %261, i32 0, i32 0, !llfi_index !1174
  %264 = getelementptr inbounds %struct.quantum_reg_node_struct* %262, i64 %261, i32 0, i32 1, !llfi_index !1175
  store float %259, float* %263, align 4, !llfi_index !1176
  store float %260, float* %264, align 4, !llfi_index !1177
  br label %315, !llfi_index !1178

; <label>:265                                     ; preds = %218
  %266 = load float* %141, align 4, !llfi_index !1179
  %267 = load float* %142, align 4, !llfi_index !1180
  %268 = insertelement <2 x float> undef, float %266, i32 0, !llfi_index !1181
  %269 = insertelement <2 x float> %268, float %267, i32 1, !llfi_index !1182
  %270 = tail call fastcc float @quantum_prob_inline(<2 x float> %269), !llfi_index !1183
  %271 = fpext float %270 to double, !llfi_index !1184
  %272 = fcmp olt double %271, 1.000000e-09, !llfi_index !1185
  %or.cond = and i1 %272, %173, !llfi_index !1186
  br i1 %or.cond, label %split20, label %273, !llfi_index !1187

; <label>:273                                     ; preds = %265
  %274 = load float* %143, align 4, !llfi_index !1188
  %275 = load float* %144, align 4, !llfi_index !1189
  %276 = insertelement <2 x float> undef, float %274, i32 0, !llfi_index !1190
  %277 = insertelement <2 x float> %276, float %275, i32 1, !llfi_index !1191
  %278 = tail call fastcc float @quantum_prob_inline(<2 x float> %277), !llfi_index !1192
  %279 = fpext float %278 to double, !llfi_index !1193
  %280 = fcmp uge double %279, 1.000000e-09, !llfi_index !1194
  %or.cond3 = or i1 %280, %173, !llfi_index !1195
  br i1 %or.cond3, label %281, label %split20, !llfi_index !1196

; <label>:281                                     ; preds = %273
  %282 = load %struct.quantum_reg_node_struct** %71, align 8, !tbaa !200, !llfi_index !1197
  %283 = getelementptr inbounds %struct.quantum_reg_node_struct* %282, i64 %indvars.iv43, i32 1, !llfi_index !1198
  %284 = load i64* %283, align 8, !tbaa !224, !llfi_index !1199
  %285 = xor i64 %284, %128, !llfi_index !1200
  %286 = sext i32 %k.015 to i64, !llfi_index !1201
  %287 = getelementptr inbounds %struct.quantum_reg_node_struct* %282, i64 %286, i32 1, !llfi_index !1202
  store i64 %285, i64* %287, align 8, !tbaa !224, !llfi_index !1203
  br i1 %173, label %288, label %300, !llfi_index !1204

; <label>:288                                     ; preds = %281
  %289 = load float* %141, align 4, !llfi_index !1205
  %290 = load float* %142, align 4, !llfi_index !1206
  %291 = fmul float %162, %289, !llfi_index !1207
  %292 = fmul float %164, %290, !llfi_index !1208
  %293 = fsub float %291, %292, !llfi_index !1209
  %294 = fmul float %162, %290, !llfi_index !1210
  %295 = fmul float %164, %289, !llfi_index !1211
  %296 = fadd float %295, %294, !llfi_index !1212
  %297 = load %struct.quantum_reg_node_struct** %71, align 8, !tbaa !200, !llfi_index !1213
  %298 = getelementptr inbounds %struct.quantum_reg_node_struct* %297, i64 %286, i32 0, i32 0, !llfi_index !1214
  %299 = getelementptr inbounds %struct.quantum_reg_node_struct* %297, i64 %286, i32 0, i32 1, !llfi_index !1215
  store float %293, float* %298, align 4, !llfi_index !1216
  store float %296, float* %299, align 4, !llfi_index !1217
  br label %312, !llfi_index !1218

; <label>:300                                     ; preds = %281
  %301 = load float* %143, align 4, !llfi_index !1219
  %302 = load float* %144, align 4, !llfi_index !1220
  %303 = fmul float %162, %301, !llfi_index !1221
  %304 = fmul float %164, %302, !llfi_index !1222
  %305 = fsub float %303, %304, !llfi_index !1223
  %306 = fmul float %162, %302, !llfi_index !1224
  %307 = fmul float %164, %301, !llfi_index !1225
  %308 = fadd float %307, %306, !llfi_index !1226
  %309 = load %struct.quantum_reg_node_struct** %71, align 8, !tbaa !200, !llfi_index !1227
  %310 = getelementptr inbounds %struct.quantum_reg_node_struct* %309, i64 %286, i32 0, i32 0, !llfi_index !1228
  %311 = getelementptr inbounds %struct.quantum_reg_node_struct* %309, i64 %286, i32 0, i32 1, !llfi_index !1229
  store float %305, float* %310, align 4, !llfi_index !1230
  store float %308, float* %311, align 4, !llfi_index !1231
  br label %312, !llfi_index !1232

; <label>:312                                     ; preds = %300, %288
  %313 = add nsw i32 %k.015, 1, !llfi_index !1233
  br label %314, !llfi_index !1234

; <label>:314                                     ; preds = %312, %220
  %k.1 = phi i32 [ %k.015, %220 ], [ %313, %312 ], !llfi_index !1235
  br i1 %165, label %315, label %318, !llfi_index !1236

; <label>:315                                     ; preds = %314, %.thread
  %k.110 = phi i32 [ %k.015, %.thread ], [ %k.1, %314 ], !llfi_index !1237
  %316 = sext i32 %160 to i64, !llfi_index !1238
  %317 = getelementptr inbounds i8* %105, i64 %316, !llfi_index !1239
  store i8 1, i8* %317, align 1, !tbaa !1052, !llfi_index !1240
  br label %318, !llfi_index !1241

; <label>:318                                     ; preds = %315, %314, %149
  %k.2 = phi i32 [ %k.015, %149 ], [ %k.110, %315 ], [ %k.1, %314 ], !llfi_index !1242
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1, !llfi_index !1243
  %319 = load i32* %8, align 4, !tbaa !195, !llfi_index !1244
  %320 = trunc i64 %indvars.iv.next44 to i32, !llfi_index !1245
  %321 = icmp slt i32 %320, %319, !llfi_index !1246
  br i1 %321, label %149, label %split20, !llfi_index !1247

split20:                                          ; preds = %318, %273, %265, %112
  %322 = load i32* %8, align 4, !tbaa !195, !llfi_index !1248
  %323 = add nsw i32 %322, %addsize.0.lcssa, !llfi_index !1249
  store i32 %323, i32* %8, align 4, !tbaa !195, !llfi_index !1250
  tail call void @free(i8* %105) #3, !llfi_index !1251
  %324 = load i32* %8, align 4, !tbaa !195, !llfi_index !1252
  %325 = sub nsw i32 0, %324, !llfi_index !1253
  %326 = sext i32 %325 to i64, !llfi_index !1254
  %327 = tail call i64 @quantum_memman(i64 %326) #3, !llfi_index !1255
  %328 = load i32* %8, align 4, !tbaa !195, !llfi_index !1256
  %329 = icmp sgt i32 %328, 0, !llfi_index !1257
  br i1 %329, label %.lr.ph, label %._crit_edge.thread, !llfi_index !1258

.lr.ph:                                           ; preds = %358, %split20
  %indvars.iv = phi i64 [ %indvars.iv.next, %358 ], [ 0, %split20 ], !llfi_index !1259
  %j.012 = phi i32 [ %j.1, %358 ], [ 0, %split20 ], !llfi_index !1260
  %decsize.011 = phi i32 [ %decsize.1, %358 ], [ 0, %split20 ], !llfi_index !1261
  %330 = load %struct.quantum_reg_node_struct** %71, align 8, !tbaa !200, !llfi_index !1262
  %331 = getelementptr inbounds %struct.quantum_reg_node_struct* %330, i64 %indvars.iv, i32 0, i32 0, !llfi_index !1263
  %332 = load float* %331, align 4, !llfi_index !1264
  %333 = getelementptr inbounds %struct.quantum_reg_node_struct* %330, i64 %indvars.iv, i32 0, i32 1, !llfi_index !1265
  %334 = load float* %333, align 4, !llfi_index !1266
  %335 = insertelement <2 x float> undef, float %332, i32 0, !llfi_index !1267
  %336 = insertelement <2 x float> %335, float %334, i32 1, !llfi_index !1268
  %337 = tail call fastcc float @quantum_prob_inline(<2 x float> %336), !llfi_index !1269
  %338 = fcmp olt float %337, %123, !llfi_index !1270
  br i1 %338, label %339, label %342, !llfi_index !1271

; <label>:339                                     ; preds = %.lr.ph
  %340 = add nsw i32 %j.012, 1, !llfi_index !1272
  %341 = add nsw i32 %decsize.011, 1, !llfi_index !1273
  br label %358, !llfi_index !1274

; <label>:342                                     ; preds = %.lr.ph
  %343 = icmp eq i32 %j.012, 0, !llfi_index !1275
  br i1 %343, label %358, label %344, !llfi_index !1276

; <label>:344                                     ; preds = %342
  %345 = getelementptr inbounds %struct.quantum_reg_node_struct* %330, i64 %indvars.iv, i32 1, !llfi_index !1277
  %346 = load i64* %345, align 8, !tbaa !224, !llfi_index !1278
  %347 = trunc i64 %indvars.iv to i32, !llfi_index !1279
  %348 = sub nsw i32 %347, %j.012, !llfi_index !1280
  %349 = sext i32 %348 to i64, !llfi_index !1281
  %350 = getelementptr inbounds %struct.quantum_reg_node_struct* %330, i64 %349, i32 1, !llfi_index !1282
  store i64 %346, i64* %350, align 8, !tbaa !224, !llfi_index !1283
  %351 = load %struct.quantum_reg_node_struct** %71, align 8, !tbaa !200, !llfi_index !1284
  %352 = getelementptr inbounds %struct.quantum_reg_node_struct* %351, i64 %indvars.iv, i32 0, i32 0, !llfi_index !1285
  %353 = load float* %352, align 4, !llfi_index !1286
  %354 = getelementptr inbounds %struct.quantum_reg_node_struct* %351, i64 %indvars.iv, i32 0, i32 1, !llfi_index !1287
  %355 = load float* %354, align 4, !llfi_index !1288
  %356 = getelementptr inbounds %struct.quantum_reg_node_struct* %351, i64 %349, i32 0, i32 0, !llfi_index !1289
  %357 = getelementptr inbounds %struct.quantum_reg_node_struct* %351, i64 %349, i32 0, i32 1, !llfi_index !1290
  store float %353, float* %356, align 4, !llfi_index !1291
  store float %355, float* %357, align 4, !llfi_index !1292
  br label %358, !llfi_index !1293

; <label>:358                                     ; preds = %344, %342, %339
  %decsize.1 = phi i32 [ %341, %339 ], [ %decsize.011, %344 ], [ %decsize.011, %342 ], !llfi_index !1294
  %j.1 = phi i32 [ %340, %339 ], [ %j.012, %344 ], [ 0, %342 ], !llfi_index !1295
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1296
  %359 = load i32* %8, align 4, !tbaa !195, !llfi_index !1297
  %360 = trunc i64 %indvars.iv.next to i32, !llfi_index !1298
  %361 = icmp slt i32 %360, %359, !llfi_index !1299
  br i1 %361, label %.lr.ph, label %._crit_edge, !llfi_index !1300

._crit_edge:                                      ; preds = %358
  %362 = icmp eq i32 %decsize.1, 0, !llfi_index !1301
  br i1 %362, label %._crit_edge.thread, label %363, !llfi_index !1302

; <label>:363                                     ; preds = %._crit_edge
  %364 = sub nsw i32 %359, %decsize.1, !llfi_index !1303
  store i32 %364, i32* %8, align 4, !tbaa !195, !llfi_index !1304
  %365 = load %struct.quantum_reg_node_struct** %71, align 8, !tbaa !200, !llfi_index !1305
  %366 = bitcast %struct.quantum_reg_node_struct* %365 to i8*, !llfi_index !1306
  %367 = sext i32 %364 to i64, !llfi_index !1307
  %368 = shl nsw i64 %367, 4, !llfi_index !1308
  %369 = tail call i8* @realloc(i8* %366, i64 %368) #3, !llfi_index !1309
  %370 = bitcast i8* %369 to %struct.quantum_reg_node_struct*, !llfi_index !1310
  store %struct.quantum_reg_node_struct* %370, %struct.quantum_reg_node_struct** %71, align 8, !tbaa !200, !llfi_index !1311
  %371 = icmp eq i8* %369, null, !llfi_index !1312
  br i1 %371, label %372, label %376, !llfi_index !1313

; <label>:372                                     ; preds = %363
  %373 = load i32* %8, align 4, !tbaa !195, !llfi_index !1314
  %374 = add nsw i32 %373, %addsize.0.lcssa, !llfi_index !1315
  %375 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str214, i64 0, i64 0), i32 %374) #3, !llfi_index !1316
  tail call void @exit(i32 1) #12, !llfi_index !1317
  unreachable, !llfi_index !1318

; <label>:376                                     ; preds = %363
  %377 = sub nsw i32 0, %decsize.1, !llfi_index !1319
  %378 = sext i32 %377 to i64, !llfi_index !1320
  %379 = shl nsw i64 %378, 4, !llfi_index !1321
  %380 = tail call i64 @quantum_memman(i64 %379) #3, !llfi_index !1322
  br label %._crit_edge.thread, !llfi_index !1323

._crit_edge.thread:                               ; preds = %376, %._crit_edge, %split20
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !1324
  ret void, !llfi_index !1325
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @quantum_gate2(i32 %control, i32 %target, i64 %m.coerce0, { float, float }* %m.coerce1, %struct.quantum_reg_struct* %reg) #0 {
  %1 = icmp eq i64 %m.coerce0, 17179869188, !llfi_index !1326
  br i1 %1, label %.preheader35, label %7, !llfi_index !1327

.preheader35:                                     ; preds = %0
  %2 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !1328
  %3 = load i32* %2, align 4, !tbaa !864, !llfi_index !1329
  %4 = icmp eq i32 %3, 31, !llfi_index !1330
  br i1 %4, label %.preheader30, label %.lr.ph37, !llfi_index !1331

.lr.ph37:                                         ; preds = %.preheader35
  %5 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !1332
  %6 = load i32** %5, align 8, !tbaa !869, !llfi_index !1333
  br label %12, !llfi_index !1334

; <label>:7                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str5, i64 0, i64 0)), !llfi_index !1335
  tail call void @exit(i32 1) #12, !llfi_index !1336
  unreachable, !llfi_index !1337

.preheader30:                                     ; preds = %12, %.preheader35
  %8 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !1338
  %9 = load i32* %8, align 4, !tbaa !195, !llfi_index !1339
  %10 = icmp sgt i32 %9, 0, !llfi_index !1340
  br i1 %10, label %.lr.ph33, label %._crit_edge27, !llfi_index !1341

.lr.ph33:                                         ; preds = %.preheader30
  %11 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !1342
  br label %28, !llfi_index !1343

; <label>:12                                      ; preds = %12, %.lr.ph37
  %indvars.iv46 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next47, %12 ], !llfi_index !1344
  %13 = getelementptr inbounds i32* %6, i64 %indvars.iv46, !llfi_index !1345
  store i32 0, i32* %13, align 4, !tbaa !1, !llfi_index !1346
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !llfi_index !1347
  %14 = load i32* %2, align 4, !tbaa !864, !llfi_index !1348
  %15 = shl i32 1, %14, !llfi_index !1349
  %16 = trunc i64 %indvars.iv.next47 to i32, !llfi_index !1350
  %17 = icmp slt i32 %16, %15, !llfi_index !1351
  br i1 %17, label %12, label %.preheader30, !llfi_index !1352

.preheader:                                       ; preds = %28
  %18 = icmp sgt i32 %33, 0, !llfi_index !1353
  br i1 %18, label %.lr.ph26, label %._crit_edge27, !llfi_index !1354

.lr.ph26:                                         ; preds = %.preheader
  %19 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !1355
  %20 = load %struct.quantum_reg_node_struct** %19, align 8, !tbaa !200, !llfi_index !1356
  %21 = zext i32 %target to i64, !llfi_index !1357
  %22 = shl i64 1, %21, !llfi_index !1358
  %23 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 0, !llfi_index !1359
  %24 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 1, !llfi_index !1360
  %25 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 0, !llfi_index !1361
  %26 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 1, !llfi_index !1362
  %27 = load i32* %8, align 4, !tbaa !195, !llfi_index !1363
  br label %36, !llfi_index !1364

; <label>:28                                      ; preds = %28, %.lr.ph33
  %indvars.iv44 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next45, %28 ], !llfi_index !1365
  %29 = load %struct.quantum_reg_node_struct** %11, align 8, !tbaa !200, !llfi_index !1366
  %30 = getelementptr inbounds %struct.quantum_reg_node_struct* %29, i64 %indvars.iv44, i32 1, !llfi_index !1367
  %31 = load i64* %30, align 8, !tbaa !224, !llfi_index !1368
  %32 = trunc i64 %indvars.iv44 to i32, !llfi_index !1369
  tail call fastcc void @quantum_add_hash(i64 %31, i32 %32, %struct.quantum_reg_struct* %reg), !llfi_index !1370
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1, !llfi_index !1371
  %33 = load i32* %8, align 4, !tbaa !195, !llfi_index !1372
  %34 = trunc i64 %indvars.iv.next45 to i32, !llfi_index !1373
  %35 = icmp slt i32 %34, %33, !llfi_index !1374
  br i1 %35, label %28, label %.preheader, !llfi_index !1375

; <label>:36                                      ; preds = %64, %.lr.ph26
  %indvars.iv42 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next43, %64 ], !llfi_index !1376
  %addsize.024 = phi i32 [ 0, %.lr.ph26 ], [ %addsize.2, %64 ], !llfi_index !1377
  %37 = getelementptr inbounds %struct.quantum_reg_node_struct* %20, i64 %indvars.iv42, i32 1, !llfi_index !1378
  %38 = load i64* %37, align 8, !tbaa !224, !llfi_index !1379
  %39 = xor i64 %38, %22, !llfi_index !1380
  %40 = tail call fastcc i32 @quantum_get_state(i64 %39, %struct.quantum_reg_struct* byval align 8 %reg), !llfi_index !1381
  %41 = icmp eq i32 %40, -1, !llfi_index !1382
  br i1 %41, label %42, label %64, !llfi_index !1383

; <label>:42                                      ; preds = %36
  %43 = load float* %23, align 4, !llfi_index !1384
  %44 = load float* %24, align 4, !llfi_index !1385
  %45 = fcmp une float %43, 0.000000e+00, !llfi_index !1386
  %46 = fcmp une float %44, 0.000000e+00, !llfi_index !1387
  %47 = or i1 %45, %46, !llfi_index !1388
  br i1 %47, label %48, label %51, !llfi_index !1389

; <label>:48                                      ; preds = %42
  %49 = and i64 %38, %22, !llfi_index !1390
  %not. = icmp ne i64 %49, 0, !llfi_index !1391
  %50 = zext i1 %not. to i32, !llfi_index !1392
  %addsize.0. = add nsw i32 %50, %addsize.024, !llfi_index !1393
  br label %51, !llfi_index !1394

; <label>:51                                      ; preds = %48, %42
  %addsize.1 = phi i32 [ %addsize.024, %42 ], [ %addsize.0., %48 ], !llfi_index !1395
  %52 = load float* %25, align 4, !llfi_index !1396
  %53 = load float* %26, align 4, !llfi_index !1397
  %54 = fcmp une float %52, 0.000000e+00, !llfi_index !1398
  %55 = fcmp une float %53, 0.000000e+00, !llfi_index !1399
  %56 = or i1 %54, %55, !llfi_index !1400
  br i1 %56, label %57, label %64, !llfi_index !1401

; <label>:57                                      ; preds = %51
  %58 = load %struct.quantum_reg_node_struct** %19, align 8, !tbaa !200, !llfi_index !1402
  %59 = getelementptr inbounds %struct.quantum_reg_node_struct* %58, i64 %indvars.iv42, i32 1, !llfi_index !1403
  %60 = load i64* %59, align 8, !tbaa !224, !llfi_index !1404
  %61 = and i64 %60, %22, !llfi_index !1405
  %62 = icmp eq i64 %61, 0, !llfi_index !1406
  %63 = zext i1 %62 to i32, !llfi_index !1407
  %.addsize.1 = add nsw i32 %63, %addsize.1, !llfi_index !1408
  br label %64, !llfi_index !1409

; <label>:64                                      ; preds = %57, %51, %36
  %addsize.2 = phi i32 [ %addsize.1, %51 ], [ %addsize.024, %36 ], [ %.addsize.1, %57 ], !llfi_index !1410
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1, !llfi_index !1411
  %65 = trunc i64 %indvars.iv.next43 to i32, !llfi_index !1412
  %66 = icmp slt i32 %65, %27, !llfi_index !1413
  br i1 %66, label %36, label %._crit_edge27, !llfi_index !1414

._crit_edge27:                                    ; preds = %64, %.preheader, %.preheader30
  %.lcssa23 = phi i32 [ %33, %.preheader ], [ %27, %64 ], [ %9, %.preheader30 ], !llfi_index !1415
  %addsize.0.lcssa = phi i32 [ 0, %.preheader ], [ %addsize.2, %64 ], [ 0, %.preheader30 ], !llfi_index !1416
  %67 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !1417
  %68 = load %struct.quantum_reg_node_struct** %67, align 8, !tbaa !200, !llfi_index !1418
  %69 = bitcast %struct.quantum_reg_node_struct* %68 to i8*, !llfi_index !1419
  %70 = add nsw i32 %.lcssa23, %addsize.0.lcssa, !llfi_index !1420
  %71 = sext i32 %70 to i64, !llfi_index !1421
  %72 = shl nsw i64 %71, 4, !llfi_index !1422
  %73 = tail call i8* @realloc(i8* %69, i64 %72) #3, !llfi_index !1423
  %74 = bitcast i8* %73 to %struct.quantum_reg_node_struct*, !llfi_index !1424
  store %struct.quantum_reg_node_struct* %74, %struct.quantum_reg_node_struct** %67, align 8, !tbaa !200, !llfi_index !1425
  %75 = icmp eq i8* %73, null, !llfi_index !1426
  br i1 %75, label %76, label %80, !llfi_index !1427

; <label>:76                                      ; preds = %._crit_edge27
  %77 = load i32* %8, align 4, !tbaa !195, !llfi_index !1428
  %78 = add nsw i32 %77, %addsize.0.lcssa, !llfi_index !1429
  %79 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str214, i64 0, i64 0), i32 %78) #3, !llfi_index !1430
  tail call void @exit(i32 1) #12, !llfi_index !1431
  unreachable, !llfi_index !1432

; <label>:80                                      ; preds = %._crit_edge27
  %81 = sext i32 %addsize.0.lcssa to i64, !llfi_index !1433
  %82 = shl nsw i64 %81, 4, !llfi_index !1434
  %83 = tail call i64 @quantum_memman(i64 %82) #3, !llfi_index !1435
  %84 = icmp sgt i32 %addsize.0.lcssa, 0, !llfi_index !1436
  %85 = load i32* %8, align 4, !tbaa !195, !llfi_index !1437
  br i1 %84, label %.lr.ph20, label %._crit_edge21, !llfi_index !1438

.lr.ph20:                                         ; preds = %.lr.ph20, %80
  %86 = phi i32 [ %98, %.lr.ph20 ], [ %85, %80 ], !llfi_index !1439
  %i.318 = phi i32 [ %97, %.lr.ph20 ], [ 0, %80 ], !llfi_index !1440
  %87 = add nsw i32 %86, %i.318, !llfi_index !1441
  %88 = sext i32 %87 to i64, !llfi_index !1442
  %89 = load %struct.quantum_reg_node_struct** %67, align 8, !tbaa !200, !llfi_index !1443
  %90 = getelementptr inbounds %struct.quantum_reg_node_struct* %89, i64 %88, i32 1, !llfi_index !1444
  store i64 0, i64* %90, align 8, !tbaa !224, !llfi_index !1445
  %91 = load i32* %8, align 4, !tbaa !195, !llfi_index !1446
  %92 = add nsw i32 %91, %i.318, !llfi_index !1447
  %93 = sext i32 %92 to i64, !llfi_index !1448
  %94 = load %struct.quantum_reg_node_struct** %67, align 8, !tbaa !200, !llfi_index !1449
  %95 = getelementptr inbounds %struct.quantum_reg_node_struct* %94, i64 %93, i32 0, i32 0, !llfi_index !1450
  %96 = getelementptr inbounds %struct.quantum_reg_node_struct* %94, i64 %93, i32 0, i32 1, !llfi_index !1451
  store float 0.000000e+00, float* %95, align 4, !llfi_index !1452
  store float 0.000000e+00, float* %96, align 4, !llfi_index !1453
  %97 = add nsw i32 %i.318, 1, !llfi_index !1454
  %98 = load i32* %8, align 4, !tbaa !195, !llfi_index !1455
  %exitcond = icmp eq i32 %97, %addsize.0.lcssa, !llfi_index !1456
  br i1 %exitcond, label %._crit_edge21, label %.lr.ph20, !llfi_index !1457

._crit_edge21:                                    ; preds = %.lr.ph20, %80
  %.lcssa17 = phi i32 [ %85, %80 ], [ %98, %.lr.ph20 ], !llfi_index !1458
  %99 = add nsw i32 %.lcssa17, %addsize.0.lcssa, !llfi_index !1459
  %100 = sext i32 %99 to i64, !llfi_index !1460
  %101 = tail call noalias i8* @calloc(i64 %100, i64 1) #3, !llfi_index !1461
  %102 = icmp eq i8* %101, null, !llfi_index !1462
  %103 = load i32* %8, align 4, !tbaa !195, !llfi_index !1463
  br i1 %102, label %104, label %108, !llfi_index !1464

; <label>:104                                     ; preds = %._crit_edge21
  %105 = add nsw i32 %103, %addsize.0.lcssa, !llfi_index !1465
  %106 = sext i32 %105 to i64, !llfi_index !1466
  %107 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str315, i64 0, i64 0), i64 %106) #3, !llfi_index !1467
  tail call void @exit(i32 1) #12, !llfi_index !1468
  unreachable, !llfi_index !1469

; <label>:108                                     ; preds = %._crit_edge21
  %109 = sext i32 %103 to i64, !llfi_index !1470
  %110 = add i64 %109, %81, !llfi_index !1471
  %111 = tail call i64 @quantum_memman(i64 %110) #3, !llfi_index !1472
  %112 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !1473
  %113 = load i32* %112, align 4, !tbaa !22, !llfi_index !1474
  %114 = zext i32 %113 to i64, !llfi_index !1475
  %115 = shl i64 1, %114, !llfi_index !1476
  %116 = uitofp i64 %115 to double, !llfi_index !1477
  %117 = fdiv double 1.000000e+00, %116, !llfi_index !1478
  %118 = fdiv double %117, 1.000000e+06, !llfi_index !1479
  %119 = fptrunc double %118 to float, !llfi_index !1480
  %120 = load i32* %8, align 4, !tbaa !195, !llfi_index !1481
  %121 = icmp sgt i32 %120, 0, !llfi_index !1482
  br i1 %121, label %.lr.ph14, label %split16, !llfi_index !1483

.lr.ph14:                                         ; preds = %108
  %122 = load i32* %8, align 4, !tbaa !195, !llfi_index !1484
  %123 = zext i32 %target to i64, !llfi_index !1485
  %124 = shl i64 1, %123, !llfi_index !1486
  %125 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 0, !llfi_index !1487
  %126 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 1, !llfi_index !1488
  %127 = getelementptr inbounds { float, float }* %m.coerce1, i64 3, i32 0, !llfi_index !1489
  %128 = getelementptr inbounds { float, float }* %m.coerce1, i64 3, i32 1, !llfi_index !1490
  %129 = getelementptr inbounds { float, float }* %m.coerce1, i64 0, i32 0, !llfi_index !1491
  %130 = getelementptr inbounds { float, float }* %m.coerce1, i64 0, i32 1, !llfi_index !1492
  %131 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 0, !llfi_index !1493
  %132 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 1, !llfi_index !1494
  %133 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 0, !llfi_index !1495
  %134 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 1, !llfi_index !1496
  %135 = getelementptr inbounds { float, float }* %m.coerce1, i64 3, i32 0, !llfi_index !1497
  %136 = getelementptr inbounds { float, float }* %m.coerce1, i64 3, i32 1, !llfi_index !1498
  %137 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 0, !llfi_index !1499
  %138 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 1, !llfi_index !1500
  %139 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 0, !llfi_index !1501
  %140 = getelementptr inbounds { float, float }* %m.coerce1, i64 2, i32 1, !llfi_index !1502
  %141 = getelementptr inbounds { float, float }* %m.coerce1, i64 0, i32 0, !llfi_index !1503
  %142 = getelementptr inbounds { float, float }* %m.coerce1, i64 0, i32 1, !llfi_index !1504
  %143 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 0, !llfi_index !1505
  %144 = getelementptr inbounds { float, float }* %m.coerce1, i64 1, i32 1, !llfi_index !1506
  br label %145, !llfi_index !1507

; <label>:145                                     ; preds = %307, %.lr.ph14
  %indvars.iv39 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next40, %307 ], !llfi_index !1508
  %k.011 = phi i32 [ %122, %.lr.ph14 ], [ %k.2, %307 ], !llfi_index !1509
  %146 = getelementptr inbounds i8* %101, i64 %indvars.iv39, !llfi_index !1510
  %147 = load i8* %146, align 1, !tbaa !1052, !llfi_index !1511
  %148 = icmp eq i8 %147, 0, !llfi_index !1512
  br i1 %148, label %149, label %307, !llfi_index !1513

; <label>:149                                     ; preds = %145
  %150 = load %struct.quantum_reg_node_struct** %67, align 8, !tbaa !200, !llfi_index !1514
  %151 = getelementptr inbounds %struct.quantum_reg_node_struct* %150, i64 %indvars.iv39, i32 1, !llfi_index !1515
  %152 = load i64* %151, align 8, !tbaa !224, !llfi_index !1516
  %153 = and i64 %152, %124, !llfi_index !1517
  %154 = trunc i64 %153 to i32, !llfi_index !1518
  %155 = xor i64 %152, %124, !llfi_index !1519
  %156 = tail call fastcc i32 @quantum_get_state(i64 %155, %struct.quantum_reg_struct* byval align 8 %reg), !llfi_index !1520
  %157 = getelementptr inbounds %struct.quantum_reg_node_struct* %150, i64 %indvars.iv39, i32 0, i32 0, !llfi_index !1521
  %158 = load float* %157, align 4, !llfi_index !1522
  %159 = getelementptr inbounds %struct.quantum_reg_node_struct* %150, i64 %indvars.iv39, i32 0, i32 1, !llfi_index !1523
  %160 = load float* %159, align 4, !llfi_index !1524
  %161 = icmp sgt i32 %156, -1, !llfi_index !1525
  br i1 %161, label %162, label %168, !llfi_index !1526

; <label>:162                                     ; preds = %149
  %163 = sext i32 %156 to i64, !llfi_index !1527
  %164 = getelementptr inbounds %struct.quantum_reg_node_struct* %150, i64 %163, i32 0, i32 0, !llfi_index !1528
  %165 = load float* %164, align 4, !llfi_index !1529
  %166 = getelementptr inbounds %struct.quantum_reg_node_struct* %150, i64 %163, i32 0, i32 1, !llfi_index !1530
  %167 = load float* %166, align 4, !llfi_index !1531
  br label %168, !llfi_index !1532

; <label>:168                                     ; preds = %162, %149
  %tnot.sroa.7.0 = phi float [ %167, %162 ], [ 0.000000e+00, %149 ], !llfi_index !1533
  %tnot.sroa.0.0 = phi float [ %165, %162 ], [ 0.000000e+00, %149 ], !llfi_index !1534
  %169 = icmp ne i32 %154, 0, !llfi_index !1535
  br i1 %169, label %170, label %192, !llfi_index !1536

; <label>:170                                     ; preds = %168
  %171 = load float* %125, align 4, !llfi_index !1537
  %172 = load float* %126, align 4, !llfi_index !1538
  %173 = fmul float %tnot.sroa.0.0, %171, !llfi_index !1539
  %174 = fmul float %tnot.sroa.7.0, %172, !llfi_index !1540
  %175 = fsub float %173, %174, !llfi_index !1541
  %176 = fmul float %tnot.sroa.0.0, %172, !llfi_index !1542
  %177 = fmul float %tnot.sroa.7.0, %171, !llfi_index !1543
  %178 = fadd float %177, %176, !llfi_index !1544
  %179 = load float* %127, align 4, !llfi_index !1545
  %180 = load float* %128, align 4, !llfi_index !1546
  %181 = fmul float %158, %179, !llfi_index !1547
  %182 = fmul float %160, %180, !llfi_index !1548
  %183 = fsub float %181, %182, !llfi_index !1549
  %184 = fmul float %158, %180, !llfi_index !1550
  %185 = fmul float %160, %179, !llfi_index !1551
  %186 = fadd float %185, %184, !llfi_index !1552
  %187 = fadd float %175, %183, !llfi_index !1553
  %188 = fadd float %178, %186, !llfi_index !1554
  %189 = load %struct.quantum_reg_node_struct** %67, align 8, !tbaa !200, !llfi_index !1555
  %190 = getelementptr inbounds %struct.quantum_reg_node_struct* %189, i64 %indvars.iv39, i32 0, i32 0, !llfi_index !1556
  %191 = getelementptr inbounds %struct.quantum_reg_node_struct* %189, i64 %indvars.iv39, i32 0, i32 1, !llfi_index !1557
  store float %187, float* %190, align 4, !llfi_index !1558
  store float %188, float* %191, align 4, !llfi_index !1559
  br label %214, !llfi_index !1560

; <label>:192                                     ; preds = %168
  %193 = load float* %141, align 4, !llfi_index !1561
  %194 = load float* %142, align 4, !llfi_index !1562
  %195 = fmul float %158, %193, !llfi_index !1563
  %196 = fmul float %160, %194, !llfi_index !1564
  %197 = fsub float %195, %196, !llfi_index !1565
  %198 = fmul float %158, %194, !llfi_index !1566
  %199 = fmul float %160, %193, !llfi_index !1567
  %200 = fadd float %199, %198, !llfi_index !1568
  %201 = load float* %143, align 4, !llfi_index !1569
  %202 = load float* %144, align 4, !llfi_index !1570
  %203 = fmul float %tnot.sroa.0.0, %201, !llfi_index !1571
  %204 = fmul float %tnot.sroa.7.0, %202, !llfi_index !1572
  %205 = fsub float %203, %204, !llfi_index !1573
  %206 = fmul float %tnot.sroa.0.0, %202, !llfi_index !1574
  %207 = fmul float %tnot.sroa.7.0, %201, !llfi_index !1575
  %208 = fadd float %207, %206, !llfi_index !1576
  %209 = fadd float %197, %205, !llfi_index !1577
  %210 = fadd float %200, %208, !llfi_index !1578
  %211 = load %struct.quantum_reg_node_struct** %67, align 8, !tbaa !200, !llfi_index !1579
  %212 = getelementptr inbounds %struct.quantum_reg_node_struct* %211, i64 %indvars.iv39, i32 0, i32 0, !llfi_index !1580
  %213 = getelementptr inbounds %struct.quantum_reg_node_struct* %211, i64 %indvars.iv39, i32 0, i32 1, !llfi_index !1581
  store float %209, float* %212, align 4, !llfi_index !1582
  store float %210, float* %213, align 4, !llfi_index !1583
  br label %214, !llfi_index !1584

; <label>:214                                     ; preds = %192, %170
  br i1 %161, label %215, label %261, !llfi_index !1585

; <label>:215                                     ; preds = %214
  br i1 %169, label %216, label %.thread, !llfi_index !1586

; <label>:216                                     ; preds = %215
  %217 = load float* %129, align 4, !llfi_index !1587
  %218 = load float* %130, align 4, !llfi_index !1588
  %219 = fmul float %tnot.sroa.0.0, %217, !llfi_index !1589
  %220 = fmul float %tnot.sroa.7.0, %218, !llfi_index !1590
  %221 = fsub float %219, %220, !llfi_index !1591
  %222 = fmul float %tnot.sroa.0.0, %218, !llfi_index !1592
  %223 = fmul float %tnot.sroa.7.0, %217, !llfi_index !1593
  %224 = fadd float %223, %222, !llfi_index !1594
  %225 = load float* %131, align 4, !llfi_index !1595
  %226 = load float* %132, align 4, !llfi_index !1596
  %227 = fmul float %158, %225, !llfi_index !1597
  %228 = fmul float %160, %226, !llfi_index !1598
  %229 = fsub float %227, %228, !llfi_index !1599
  %230 = fmul float %158, %226, !llfi_index !1600
  %231 = fmul float %160, %225, !llfi_index !1601
  %232 = fadd float %231, %230, !llfi_index !1602
  %233 = fadd float %221, %229, !llfi_index !1603
  %234 = fadd float %224, %232, !llfi_index !1604
  %235 = sext i32 %156 to i64, !llfi_index !1605
  %236 = load %struct.quantum_reg_node_struct** %67, align 8, !tbaa !200, !llfi_index !1606
  %237 = getelementptr inbounds %struct.quantum_reg_node_struct* %236, i64 %235, i32 0, i32 0, !llfi_index !1607
  %238 = getelementptr inbounds %struct.quantum_reg_node_struct* %236, i64 %235, i32 0, i32 1, !llfi_index !1608
  store float %233, float* %237, align 4, !llfi_index !1609
  store float %234, float* %238, align 4, !llfi_index !1610
  br label %303, !llfi_index !1611

.thread:                                          ; preds = %215
  %239 = load float* %133, align 4, !llfi_index !1612
  %240 = load float* %134, align 4, !llfi_index !1613
  %241 = fmul float %158, %239, !llfi_index !1614
  %242 = fmul float %160, %240, !llfi_index !1615
  %243 = fsub float %241, %242, !llfi_index !1616
  %244 = fmul float %158, %240, !llfi_index !1617
  %245 = fmul float %160, %239, !llfi_index !1618
  %246 = fadd float %245, %244, !llfi_index !1619
  %247 = load float* %135, align 4, !llfi_index !1620
  %248 = load float* %136, align 4, !llfi_index !1621
  %249 = fmul float %tnot.sroa.0.0, %247, !llfi_index !1622
  %250 = fmul float %tnot.sroa.7.0, %248, !llfi_index !1623
  %251 = fsub float %249, %250, !llfi_index !1624
  %252 = fmul float %tnot.sroa.0.0, %248, !llfi_index !1625
  %253 = fmul float %tnot.sroa.7.0, %247, !llfi_index !1626
  %254 = fadd float %253, %252, !llfi_index !1627
  %255 = fadd float %243, %251, !llfi_index !1628
  %256 = fadd float %246, %254, !llfi_index !1629
  %257 = sext i32 %156 to i64, !llfi_index !1630
  %258 = load %struct.quantum_reg_node_struct** %67, align 8, !tbaa !200, !llfi_index !1631
  %259 = getelementptr inbounds %struct.quantum_reg_node_struct* %258, i64 %257, i32 0, i32 0, !llfi_index !1632
  %260 = getelementptr inbounds %struct.quantum_reg_node_struct* %258, i64 %257, i32 0, i32 1, !llfi_index !1633
  store float %255, float* %259, align 4, !llfi_index !1634
  store float %256, float* %260, align 4, !llfi_index !1635
  br label %304, !llfi_index !1636

; <label>:261                                     ; preds = %214
  %262 = load float* %137, align 4, !llfi_index !1637
  %263 = load float* %138, align 4, !llfi_index !1638
  %264 = fcmp oeq float %262, 0.000000e+00, !llfi_index !1639
  %265 = fcmp oeq float %263, 0.000000e+00, !llfi_index !1640
  %266 = and i1 %264, %265, !llfi_index !1641
  %or.cond = and i1 %266, %169, !llfi_index !1642
  br i1 %or.cond, label %split16, label %267, !llfi_index !1643

; <label>:267                                     ; preds = %261
  %268 = load float* %139, align 4, !llfi_index !1644
  %269 = load float* %140, align 4, !llfi_index !1645
  %notlhs = fcmp une float %268, 0.000000e+00, !llfi_index !1646
  %notrhs = fcmp une float %269, 0.000000e+00, !llfi_index !1647
  %.not = or i1 %notrhs, %notlhs, !llfi_index !1648
  %or.cond3 = or i1 %.not, %169, !llfi_index !1649
  br i1 %or.cond3, label %270, label %split16, !llfi_index !1650

; <label>:270                                     ; preds = %267
  %271 = load %struct.quantum_reg_node_struct** %67, align 8, !tbaa !200, !llfi_index !1651
  %272 = getelementptr inbounds %struct.quantum_reg_node_struct* %271, i64 %indvars.iv39, i32 1, !llfi_index !1652
  %273 = load i64* %272, align 8, !tbaa !224, !llfi_index !1653
  %274 = xor i64 %273, %124, !llfi_index !1654
  %275 = sext i32 %k.011 to i64, !llfi_index !1655
  %276 = getelementptr inbounds %struct.quantum_reg_node_struct* %271, i64 %275, i32 1, !llfi_index !1656
  store i64 %274, i64* %276, align 8, !tbaa !224, !llfi_index !1657
  br i1 %169, label %277, label %289, !llfi_index !1658

; <label>:277                                     ; preds = %270
  %278 = load float* %137, align 4, !llfi_index !1659
  %279 = load float* %138, align 4, !llfi_index !1660
  %280 = fmul float %158, %278, !llfi_index !1661
  %281 = fmul float %160, %279, !llfi_index !1662
  %282 = fsub float %280, %281, !llfi_index !1663
  %283 = fmul float %158, %279, !llfi_index !1664
  %284 = fmul float %160, %278, !llfi_index !1665
  %285 = fadd float %284, %283, !llfi_index !1666
  %286 = load %struct.quantum_reg_node_struct** %67, align 8, !tbaa !200, !llfi_index !1667
  %287 = getelementptr inbounds %struct.quantum_reg_node_struct* %286, i64 %275, i32 0, i32 0, !llfi_index !1668
  %288 = getelementptr inbounds %struct.quantum_reg_node_struct* %286, i64 %275, i32 0, i32 1, !llfi_index !1669
  store float %282, float* %287, align 4, !llfi_index !1670
  store float %285, float* %288, align 4, !llfi_index !1671
  br label %301, !llfi_index !1672

; <label>:289                                     ; preds = %270
  %290 = load float* %139, align 4, !llfi_index !1673
  %291 = load float* %140, align 4, !llfi_index !1674
  %292 = fmul float %158, %290, !llfi_index !1675
  %293 = fmul float %160, %291, !llfi_index !1676
  %294 = fsub float %292, %293, !llfi_index !1677
  %295 = fmul float %158, %291, !llfi_index !1678
  %296 = fmul float %160, %290, !llfi_index !1679
  %297 = fadd float %296, %295, !llfi_index !1680
  %298 = load %struct.quantum_reg_node_struct** %67, align 8, !tbaa !200, !llfi_index !1681
  %299 = getelementptr inbounds %struct.quantum_reg_node_struct* %298, i64 %275, i32 0, i32 0, !llfi_index !1682
  %300 = getelementptr inbounds %struct.quantum_reg_node_struct* %298, i64 %275, i32 0, i32 1, !llfi_index !1683
  store float %294, float* %299, align 4, !llfi_index !1684
  store float %297, float* %300, align 4, !llfi_index !1685
  br label %301, !llfi_index !1686

; <label>:301                                     ; preds = %289, %277
  %302 = add nsw i32 %k.011, 1, !llfi_index !1687
  br label %303, !llfi_index !1688

; <label>:303                                     ; preds = %301, %216
  %k.1 = phi i32 [ %k.011, %216 ], [ %302, %301 ], !llfi_index !1689
  br i1 %161, label %304, label %307, !llfi_index !1690

; <label>:304                                     ; preds = %303, %.thread
  %k.16 = phi i32 [ %k.011, %.thread ], [ %k.1, %303 ], !llfi_index !1691
  %305 = sext i32 %156 to i64, !llfi_index !1692
  %306 = getelementptr inbounds i8* %101, i64 %305, !llfi_index !1693
  store i8 1, i8* %306, align 1, !tbaa !1052, !llfi_index !1694
  br label %307, !llfi_index !1695

; <label>:307                                     ; preds = %304, %303, %145
  %k.2 = phi i32 [ %k.011, %145 ], [ %k.16, %304 ], [ %k.1, %303 ], !llfi_index !1696
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1, !llfi_index !1697
  %308 = load i32* %8, align 4, !tbaa !195, !llfi_index !1698
  %309 = trunc i64 %indvars.iv.next40 to i32, !llfi_index !1699
  %310 = icmp slt i32 %309, %308, !llfi_index !1700
  br i1 %310, label %145, label %split16, !llfi_index !1701

split16:                                          ; preds = %307, %267, %261, %108
  %311 = load i32* %8, align 4, !tbaa !195, !llfi_index !1702
  %312 = add nsw i32 %311, %addsize.0.lcssa, !llfi_index !1703
  store i32 %312, i32* %8, align 4, !tbaa !195, !llfi_index !1704
  tail call void @free(i8* %101) #3, !llfi_index !1705
  %313 = load i32* %8, align 4, !tbaa !195, !llfi_index !1706
  %314 = sub nsw i32 0, %313, !llfi_index !1707
  %315 = sext i32 %314 to i64, !llfi_index !1708
  %316 = tail call i64 @quantum_memman(i64 %315) #3, !llfi_index !1709
  %317 = load i32* %8, align 4, !tbaa !195, !llfi_index !1710
  %318 = icmp sgt i32 %317, 0, !llfi_index !1711
  br i1 %318, label %.lr.ph, label %._crit_edge.thread, !llfi_index !1712

.lr.ph:                                           ; preds = %347, %split16
  %indvars.iv = phi i64 [ %indvars.iv.next, %347 ], [ 0, %split16 ], !llfi_index !1713
  %j.08 = phi i32 [ %j.1, %347 ], [ 0, %split16 ], !llfi_index !1714
  %decsize.07 = phi i32 [ %decsize.1, %347 ], [ 0, %split16 ], !llfi_index !1715
  %319 = load %struct.quantum_reg_node_struct** %67, align 8, !tbaa !200, !llfi_index !1716
  %320 = getelementptr inbounds %struct.quantum_reg_node_struct* %319, i64 %indvars.iv, i32 0, i32 0, !llfi_index !1717
  %321 = load float* %320, align 4, !llfi_index !1718
  %322 = getelementptr inbounds %struct.quantum_reg_node_struct* %319, i64 %indvars.iv, i32 0, i32 1, !llfi_index !1719
  %323 = load float* %322, align 4, !llfi_index !1720
  %324 = insertelement <2 x float> undef, float %321, i32 0, !llfi_index !1721
  %325 = insertelement <2 x float> %324, float %323, i32 1, !llfi_index !1722
  %326 = tail call fastcc float @quantum_prob_inline(<2 x float> %325), !llfi_index !1723
  %327 = fcmp olt float %326, %119, !llfi_index !1724
  br i1 %327, label %328, label %331, !llfi_index !1725

; <label>:328                                     ; preds = %.lr.ph
  %329 = add nsw i32 %j.08, 1, !llfi_index !1726
  %330 = add nsw i32 %decsize.07, 1, !llfi_index !1727
  br label %347, !llfi_index !1728

; <label>:331                                     ; preds = %.lr.ph
  %332 = icmp eq i32 %j.08, 0, !llfi_index !1729
  br i1 %332, label %347, label %333, !llfi_index !1730

; <label>:333                                     ; preds = %331
  %334 = getelementptr inbounds %struct.quantum_reg_node_struct* %319, i64 %indvars.iv, i32 1, !llfi_index !1731
  %335 = load i64* %334, align 8, !tbaa !224, !llfi_index !1732
  %336 = trunc i64 %indvars.iv to i32, !llfi_index !1733
  %337 = sub nsw i32 %336, %j.08, !llfi_index !1734
  %338 = sext i32 %337 to i64, !llfi_index !1735
  %339 = getelementptr inbounds %struct.quantum_reg_node_struct* %319, i64 %338, i32 1, !llfi_index !1736
  store i64 %335, i64* %339, align 8, !tbaa !224, !llfi_index !1737
  %340 = load %struct.quantum_reg_node_struct** %67, align 8, !tbaa !200, !llfi_index !1738
  %341 = getelementptr inbounds %struct.quantum_reg_node_struct* %340, i64 %indvars.iv, i32 0, i32 0, !llfi_index !1739
  %342 = load float* %341, align 4, !llfi_index !1740
  %343 = getelementptr inbounds %struct.quantum_reg_node_struct* %340, i64 %indvars.iv, i32 0, i32 1, !llfi_index !1741
  %344 = load float* %343, align 4, !llfi_index !1742
  %345 = getelementptr inbounds %struct.quantum_reg_node_struct* %340, i64 %338, i32 0, i32 0, !llfi_index !1743
  %346 = getelementptr inbounds %struct.quantum_reg_node_struct* %340, i64 %338, i32 0, i32 1, !llfi_index !1744
  store float %342, float* %345, align 4, !llfi_index !1745
  store float %344, float* %346, align 4, !llfi_index !1746
  br label %347, !llfi_index !1747

; <label>:347                                     ; preds = %333, %331, %328
  %decsize.1 = phi i32 [ %330, %328 ], [ %decsize.07, %333 ], [ %decsize.07, %331 ], !llfi_index !1748
  %j.1 = phi i32 [ %329, %328 ], [ %j.08, %333 ], [ 0, %331 ], !llfi_index !1749
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1750
  %348 = load i32* %8, align 4, !tbaa !195, !llfi_index !1751
  %349 = trunc i64 %indvars.iv.next to i32, !llfi_index !1752
  %350 = icmp slt i32 %349, %348, !llfi_index !1753
  br i1 %350, label %.lr.ph, label %._crit_edge, !llfi_index !1754

._crit_edge:                                      ; preds = %347
  %351 = icmp eq i32 %decsize.1, 0, !llfi_index !1755
  br i1 %351, label %._crit_edge.thread, label %352, !llfi_index !1756

; <label>:352                                     ; preds = %._crit_edge
  %353 = sub nsw i32 %348, %decsize.1, !llfi_index !1757
  store i32 %353, i32* %8, align 4, !tbaa !195, !llfi_index !1758
  %354 = load %struct.quantum_reg_node_struct** %67, align 8, !tbaa !200, !llfi_index !1759
  %355 = bitcast %struct.quantum_reg_node_struct* %354 to i8*, !llfi_index !1760
  %356 = sext i32 %353 to i64, !llfi_index !1761
  %357 = shl nsw i64 %356, 4, !llfi_index !1762
  %358 = tail call i8* @realloc(i8* %355, i64 %357) #3, !llfi_index !1763
  %359 = bitcast i8* %358 to %struct.quantum_reg_node_struct*, !llfi_index !1764
  store %struct.quantum_reg_node_struct* %359, %struct.quantum_reg_node_struct** %67, align 8, !tbaa !200, !llfi_index !1765
  %360 = icmp eq i8* %358, null, !llfi_index !1766
  br i1 %360, label %361, label %365, !llfi_index !1767

; <label>:361                                     ; preds = %352
  %362 = load i32* %8, align 4, !tbaa !195, !llfi_index !1768
  %363 = add nsw i32 %362, %addsize.0.lcssa, !llfi_index !1769
  %364 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str214, i64 0, i64 0), i32 %363) #3, !llfi_index !1770
  tail call void @exit(i32 1) #12, !llfi_index !1771
  unreachable, !llfi_index !1772

; <label>:365                                     ; preds = %352
  %366 = sub nsw i32 0, %decsize.1, !llfi_index !1773
  %367 = sext i32 %366 to i64, !llfi_index !1774
  %368 = shl nsw i64 %367, 4, !llfi_index !1775
  %369 = tail call i64 @quantum_memman(i64 %368) #3, !llfi_index !1776
  br label %._crit_edge.thread, !llfi_index !1777

._crit_edge.thread:                               ; preds = %365, %._crit_edge, %split16
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !1778
  ret void, !llfi_index !1779
}

; Function Attrs: nounwind uwtable
define void @quantum_hadamard(i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %m = alloca %struct.quantum_matrix_struct, align 8, !llfi_index !1780
  %1 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 6, i32 %target) #3, !llfi_index !1781
  %2 = icmp eq i32 %1, 0, !llfi_index !1782
  br i1 %2, label %3, label %23, !llfi_index !1783

; <label>:3                                       ; preds = %0
  %4 = call { i64, { float, float }* } @quantum_new_matrix(i32 2, i32 2) #3, !llfi_index !1784
  %5 = extractvalue { i64, { float, float }* } %4, 0, !llfi_index !1785
  %6 = extractvalue { i64, { float, float }* } %4, 1, !llfi_index !1786
  %7 = bitcast %struct.quantum_matrix_struct* %m to i64*, !llfi_index !1787
  store i64 %5, i64* %7, align 8, !llfi_index !1788
  %8 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 2, !llfi_index !1789
  store { float, float }* %6, { float, float }** %8, align 8, !llfi_index !1790
  %9 = getelementptr inbounds { float, float }* %6, i64 0, i32 0, !llfi_index !1791
  %10 = getelementptr inbounds { float, float }* %6, i64 0, i32 1, !llfi_index !1792
  store float 0x3FE6A09E60000000, float* %9, align 4, !llfi_index !1793
  store float 0.000000e+00, float* %10, align 4, !llfi_index !1794
  %11 = load { float, float }** %8, align 8, !tbaa !1795, !llfi_index !1797
  %12 = getelementptr inbounds { float, float }* %11, i64 1, i32 0, !llfi_index !1798
  %13 = getelementptr inbounds { float, float }* %11, i64 1, i32 1, !llfi_index !1799
  store float 0x3FE6A09E60000000, float* %12, align 4, !llfi_index !1800
  store float 0.000000e+00, float* %13, align 4, !llfi_index !1801
  %14 = load { float, float }** %8, align 8, !tbaa !1795, !llfi_index !1802
  %15 = getelementptr inbounds { float, float }* %14, i64 2, i32 0, !llfi_index !1803
  %16 = getelementptr inbounds { float, float }* %14, i64 2, i32 1, !llfi_index !1804
  store float 0x3FE6A09E60000000, float* %15, align 4, !llfi_index !1805
  store float 0.000000e+00, float* %16, align 4, !llfi_index !1806
  %17 = load { float, float }** %8, align 8, !tbaa !1795, !llfi_index !1807
  %18 = getelementptr inbounds { float, float }* %17, i64 3, i32 0, !llfi_index !1808
  %19 = getelementptr inbounds { float, float }* %17, i64 3, i32 1, !llfi_index !1809
  store float 0xBFE6A09E60000000, float* %18, align 4, !llfi_index !1810
  store float 0.000000e+00, float* %19, align 4, !llfi_index !1811
  %20 = load i64* %7, align 8, !llfi_index !1812
  %21 = getelementptr %struct.quantum_matrix_struct* %m, i64 0, i32 2, !llfi_index !1813
  %22 = load { float, float }** %21, align 8, !llfi_index !1814
  call void @quantum_gate1(i32 %target, i64 %20, { float, float }* %22, %struct.quantum_reg_struct* %reg), !llfi_index !1815
  call void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m) #3, !llfi_index !1816
  br label %23, !llfi_index !1817

; <label>:23                                      ; preds = %3, %0
  ret void, !llfi_index !1818
}

; Function Attrs: nounwind uwtable
define void @quantum_walsh(i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = icmp sgt i32 %width, 0, !llfi_index !1819
  br i1 %1, label %.lr.ph, label %._crit_edge, !llfi_index !1820

.lr.ph:                                           ; preds = %.lr.ph, %0
  %i.01 = phi i32 [ %2, %.lr.ph ], [ 0, %0 ], !llfi_index !1821
  tail call void @quantum_hadamard(i32 %i.01, %struct.quantum_reg_struct* %reg), !llfi_index !1822
  %2 = add nsw i32 %i.01, 1, !llfi_index !1823
  %exitcond = icmp eq i32 %2, %width, !llfi_index !1824
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !1825

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void, !llfi_index !1826
}

; Function Attrs: nounwind uwtable
define void @quantum_r_x(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
  %m = alloca %struct.quantum_matrix_struct, align 8, !llfi_index !1827
  %1 = fpext float %gamma to double, !llfi_index !1828
  %2 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 7, i32 %target, double %1) #3, !llfi_index !1829
  %3 = icmp eq i32 %2, 0, !llfi_index !1830
  br i1 %3, label %4, label %43, !llfi_index !1831

; <label>:4                                       ; preds = %0
  %5 = call { i64, { float, float }* } @quantum_new_matrix(i32 2, i32 2) #3, !llfi_index !1832
  %6 = extractvalue { i64, { float, float }* } %5, 0, !llfi_index !1833
  %7 = extractvalue { i64, { float, float }* } %5, 1, !llfi_index !1834
  %8 = bitcast %struct.quantum_matrix_struct* %m to i64*, !llfi_index !1835
  store i64 %6, i64* %8, align 8, !llfi_index !1836
  %9 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 2, !llfi_index !1837
  store { float, float }* %7, { float, float }** %9, align 8, !llfi_index !1838
  %10 = fmul float %gamma, 5.000000e-01, !llfi_index !1839
  %11 = fpext float %10 to double, !llfi_index !1840
  %12 = call double @cos(double %11) #3, !llfi_index !1841
  %13 = fptrunc double %12 to float, !llfi_index !1842
  %14 = load { float, float }** %9, align 8, !tbaa !1795, !llfi_index !1843
  %15 = getelementptr inbounds { float, float }* %14, i64 0, i32 0, !llfi_index !1844
  %16 = getelementptr inbounds { float, float }* %14, i64 0, i32 1, !llfi_index !1845
  store float %13, float* %15, align 4, !llfi_index !1846
  store float 0.000000e+00, float* %16, align 4, !llfi_index !1847
  %17 = call double @sin(double %11) #3, !llfi_index !1848
  %18 = fmul double %17, -0.000000e+00, !llfi_index !1849
  %19 = fadd double %18, 0.000000e+00, !llfi_index !1850
  %20 = fmul double %17, -1.000000e+00, !llfi_index !1851
  %21 = fptrunc double %19 to float, !llfi_index !1852
  %22 = fptrunc double %20 to float, !llfi_index !1853
  %23 = load { float, float }** %9, align 8, !tbaa !1795, !llfi_index !1854
  %24 = getelementptr inbounds { float, float }* %23, i64 1, i32 0, !llfi_index !1855
  %25 = getelementptr inbounds { float, float }* %23, i64 1, i32 1, !llfi_index !1856
  store float %21, float* %24, align 4, !llfi_index !1857
  store float %22, float* %25, align 4, !llfi_index !1858
  %26 = call double @sin(double %11) #3, !llfi_index !1859
  %27 = fmul double %26, -0.000000e+00, !llfi_index !1860
  %28 = fadd double %27, 0.000000e+00, !llfi_index !1861
  %29 = fmul double %26, -1.000000e+00, !llfi_index !1862
  %30 = fptrunc double %28 to float, !llfi_index !1863
  %31 = fptrunc double %29 to float, !llfi_index !1864
  %32 = load { float, float }** %9, align 8, !tbaa !1795, !llfi_index !1865
  %33 = getelementptr inbounds { float, float }* %32, i64 2, i32 0, !llfi_index !1866
  %34 = getelementptr inbounds { float, float }* %32, i64 2, i32 1, !llfi_index !1867
  store float %30, float* %33, align 4, !llfi_index !1868
  store float %31, float* %34, align 4, !llfi_index !1869
  %35 = call double @cos(double %11) #3, !llfi_index !1870
  %36 = fptrunc double %35 to float, !llfi_index !1871
  %37 = load { float, float }** %9, align 8, !tbaa !1795, !llfi_index !1872
  %38 = getelementptr inbounds { float, float }* %37, i64 3, i32 0, !llfi_index !1873
  %39 = getelementptr inbounds { float, float }* %37, i64 3, i32 1, !llfi_index !1874
  store float %36, float* %38, align 4, !llfi_index !1875
  store float 0.000000e+00, float* %39, align 4, !llfi_index !1876
  %40 = load i64* %8, align 8, !llfi_index !1877
  %41 = getelementptr %struct.quantum_matrix_struct* %m, i64 0, i32 2, !llfi_index !1878
  %42 = load { float, float }** %41, align 8, !llfi_index !1879
  call void @quantum_gate1(i32 %target, i64 %40, { float, float }* %42, %struct.quantum_reg_struct* %reg), !llfi_index !1880
  call void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m) #3, !llfi_index !1881
  br label %43, !llfi_index !1882

; <label>:43                                      ; preds = %4, %0
  ret void, !llfi_index !1883
}

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind uwtable
define void @quantum_r_y(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
  %m = alloca %struct.quantum_matrix_struct, align 8, !llfi_index !1884
  %1 = fpext float %gamma to double, !llfi_index !1885
  %2 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 8, i32 %target, double %1) #3, !llfi_index !1886
  %3 = icmp eq i32 %2, 0, !llfi_index !1887
  br i1 %3, label %4, label %36, !llfi_index !1888

; <label>:4                                       ; preds = %0
  %5 = call { i64, { float, float }* } @quantum_new_matrix(i32 2, i32 2) #3, !llfi_index !1889
  %6 = extractvalue { i64, { float, float }* } %5, 0, !llfi_index !1890
  %7 = extractvalue { i64, { float, float }* } %5, 1, !llfi_index !1891
  %8 = bitcast %struct.quantum_matrix_struct* %m to i64*, !llfi_index !1892
  store i64 %6, i64* %8, align 8, !llfi_index !1893
  %9 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 2, !llfi_index !1894
  store { float, float }* %7, { float, float }** %9, align 8, !llfi_index !1895
  %10 = fmul float %gamma, 5.000000e-01, !llfi_index !1896
  %11 = fpext float %10 to double, !llfi_index !1897
  %12 = call double @cos(double %11) #3, !llfi_index !1898
  %13 = fptrunc double %12 to float, !llfi_index !1899
  %14 = load { float, float }** %9, align 8, !tbaa !1795, !llfi_index !1900
  %15 = getelementptr inbounds { float, float }* %14, i64 0, i32 0, !llfi_index !1901
  %16 = getelementptr inbounds { float, float }* %14, i64 0, i32 1, !llfi_index !1902
  store float %13, float* %15, align 4, !llfi_index !1903
  store float 0.000000e+00, float* %16, align 4, !llfi_index !1904
  %17 = call double @sin(double %11) #3, !llfi_index !1905
  %18 = fptrunc double %17 to float, !llfi_index !1906
  %19 = fsub float -0.000000e+00, %18, !llfi_index !1907
  %20 = load { float, float }** %9, align 8, !tbaa !1795, !llfi_index !1908
  %21 = getelementptr inbounds { float, float }* %20, i64 1, i32 0, !llfi_index !1909
  %22 = getelementptr inbounds { float, float }* %20, i64 1, i32 1, !llfi_index !1910
  store float %19, float* %21, align 4, !llfi_index !1911
  store float 0.000000e+00, float* %22, align 4, !llfi_index !1912
  %23 = call double @sin(double %11) #3, !llfi_index !1913
  %24 = fptrunc double %23 to float, !llfi_index !1914
  %25 = load { float, float }** %9, align 8, !tbaa !1795, !llfi_index !1915
  %26 = getelementptr inbounds { float, float }* %25, i64 2, i32 0, !llfi_index !1916
  %27 = getelementptr inbounds { float, float }* %25, i64 2, i32 1, !llfi_index !1917
  store float %24, float* %26, align 4, !llfi_index !1918
  store float 0.000000e+00, float* %27, align 4, !llfi_index !1919
  %28 = call double @cos(double %11) #3, !llfi_index !1920
  %29 = fptrunc double %28 to float, !llfi_index !1921
  %30 = load { float, float }** %9, align 8, !tbaa !1795, !llfi_index !1922
  %31 = getelementptr inbounds { float, float }* %30, i64 3, i32 0, !llfi_index !1923
  %32 = getelementptr inbounds { float, float }* %30, i64 3, i32 1, !llfi_index !1924
  store float %29, float* %31, align 4, !llfi_index !1925
  store float 0.000000e+00, float* %32, align 4, !llfi_index !1926
  %33 = load i64* %8, align 8, !llfi_index !1927
  %34 = getelementptr %struct.quantum_matrix_struct* %m, i64 0, i32 2, !llfi_index !1928
  %35 = load { float, float }** %34, align 8, !llfi_index !1929
  call void @quantum_gate1(i32 %target, i64 %33, { float, float }* %35, %struct.quantum_reg_struct* %reg), !llfi_index !1930
  call void @quantum_delete_matrix(%struct.quantum_matrix_struct* %m) #3, !llfi_index !1931
  br label %36, !llfi_index !1932

; <label>:36                                      ; preds = %4, %0
  ret void, !llfi_index !1933
}

; Function Attrs: nounwind uwtable
define void @quantum_r_z(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
  %1 = fpext float %gamma to double, !llfi_index !1934
  %2 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 9, i32 %target, double %1) #3, !llfi_index !1935
  %3 = icmp eq i32 %2, 0, !llfi_index !1936
  br i1 %3, label %4, label %46, !llfi_index !1937

; <label>:4                                       ; preds = %0
  %5 = fmul float %gamma, 5.000000e-01, !llfi_index !1938
  %6 = tail call <2 x float> @quantum_cexp(float %5) #3, !llfi_index !1939
  %7 = extractelement <2 x float> %6, i32 0, !llfi_index !1940
  %8 = extractelement <2 x float> %6, i32 1, !llfi_index !1941
  %9 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !1942
  %10 = load i32* %9, align 4, !tbaa !195, !llfi_index !1943
  %11 = icmp sgt i32 %10, 0, !llfi_index !1944
  br i1 %11, label %.lr.ph, label %._crit_edge, !llfi_index !1945

.lr.ph:                                           ; preds = %4
  %12 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !1946
  %13 = zext i32 %target to i64, !llfi_index !1947
  %14 = shl i64 1, %13, !llfi_index !1948
  %15 = fmul float %7, %7, !llfi_index !1949
  %16 = fmul float %8, %8, !llfi_index !1950
  %17 = fadd float %15, %16, !llfi_index !1951
  br label %18, !llfi_index !1952

; <label>:18                                      ; preds = %42, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %42 ], !llfi_index !1953
  %19 = load %struct.quantum_reg_node_struct** %12, align 8, !tbaa !200, !llfi_index !1954
  %20 = getelementptr inbounds %struct.quantum_reg_node_struct* %19, i64 %indvars.iv, i32 1, !llfi_index !1955
  %21 = load i64* %20, align 8, !tbaa !224, !llfi_index !1956
  %22 = and i64 %21, %14, !llfi_index !1957
  %23 = icmp eq i64 %22, 0, !llfi_index !1958
  %24 = getelementptr inbounds %struct.quantum_reg_node_struct* %19, i64 %indvars.iv, i32 0, i32 0, !llfi_index !1959
  %25 = load float* %24, align 4, !llfi_index !1960
  %26 = getelementptr inbounds %struct.quantum_reg_node_struct* %19, i64 %indvars.iv, i32 0, i32 1, !llfi_index !1961
  %27 = load float* %26, align 4, !llfi_index !1962
  %28 = fmul float %7, %25, !llfi_index !1963
  %29 = fmul float %8, %27, !llfi_index !1964
  br i1 %23, label %35, label %30, !llfi_index !1965

; <label>:30                                      ; preds = %18
  %31 = fsub float %28, %29, !llfi_index !1966
  %32 = fmul float %7, %27, !llfi_index !1967
  %33 = fmul float %8, %25, !llfi_index !1968
  %34 = fadd float %33, %32, !llfi_index !1969
  br label %42, !llfi_index !1970

; <label>:35                                      ; preds = %18
  %36 = fadd float %28, %29, !llfi_index !1971
  %37 = fmul float %7, %27, !llfi_index !1972
  %38 = fmul float %8, %25, !llfi_index !1973
  %39 = fsub float %37, %38, !llfi_index !1974
  %40 = fdiv float %36, %17, !llfi_index !1975
  %41 = fdiv float %39, %17, !llfi_index !1976
  br label %42, !llfi_index !1977

; <label>:42                                      ; preds = %35, %30
  %storemerge1 = phi float [ %31, %30 ], [ %40, %35 ], !llfi_index !1978
  %storemerge = phi float [ %34, %30 ], [ %41, %35 ], !llfi_index !1979
  store float %storemerge1, float* %24, align 4, !llfi_index !1980
  store float %storemerge, float* %26, align 4, !llfi_index !1981
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !1982
  %43 = load i32* %9, align 4, !tbaa !195, !llfi_index !1983
  %44 = trunc i64 %indvars.iv.next to i32, !llfi_index !1984
  %45 = icmp slt i32 %44, %43, !llfi_index !1985
  br i1 %45, label %18, label %._crit_edge, !llfi_index !1986

._crit_edge:                                      ; preds = %42, %4
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !1987
  br label %46, !llfi_index !1988

; <label>:46                                      ; preds = %._crit_edge, %0
  ret void, !llfi_index !1989
}

; Function Attrs: nounwind uwtable
define void @quantum_phase_scale(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
  %1 = fpext float %gamma to double, !llfi_index !1990
  %2 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 11, i32 %target, double %1) #3, !llfi_index !1991
  %3 = icmp eq i32 %2, 0, !llfi_index !1992
  br i1 %3, label %4, label %27, !llfi_index !1993

; <label>:4                                       ; preds = %0
  %5 = tail call <2 x float> @quantum_cexp(float %gamma) #3, !llfi_index !1994
  %6 = extractelement <2 x float> %5, i32 0, !llfi_index !1995
  %7 = extractelement <2 x float> %5, i32 1, !llfi_index !1996
  %8 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !1997
  %9 = load i32* %8, align 4, !tbaa !195, !llfi_index !1998
  %10 = icmp sgt i32 %9, 0, !llfi_index !1999
  br i1 %10, label %.lr.ph, label %._crit_edge, !llfi_index !2000

.lr.ph:                                           ; preds = %4
  %11 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2001
  br label %12, !llfi_index !2002

; <label>:12                                      ; preds = %12, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %12 ], !llfi_index !2003
  %13 = load %struct.quantum_reg_node_struct** %11, align 8, !tbaa !200, !llfi_index !2004
  %14 = getelementptr inbounds %struct.quantum_reg_node_struct* %13, i64 %indvars.iv, i32 0, i32 0, !llfi_index !2005
  %15 = load float* %14, align 4, !llfi_index !2006
  %16 = getelementptr inbounds %struct.quantum_reg_node_struct* %13, i64 %indvars.iv, i32 0, i32 1, !llfi_index !2007
  %17 = load float* %16, align 4, !llfi_index !2008
  %18 = fmul float %6, %15, !llfi_index !2009
  %19 = fmul float %7, %17, !llfi_index !2010
  %20 = fsub float %18, %19, !llfi_index !2011
  %21 = fmul float %6, %17, !llfi_index !2012
  %22 = fmul float %7, %15, !llfi_index !2013
  %23 = fadd float %22, %21, !llfi_index !2014
  store float %20, float* %14, align 4, !llfi_index !2015
  store float %23, float* %16, align 4, !llfi_index !2016
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2017
  %24 = load i32* %8, align 4, !tbaa !195, !llfi_index !2018
  %25 = trunc i64 %indvars.iv.next to i32, !llfi_index !2019
  %26 = icmp slt i32 %25, %24, !llfi_index !2020
  br i1 %26, label %12, label %._crit_edge, !llfi_index !2021

._crit_edge:                                      ; preds = %12, %4
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !2022
  br label %27, !llfi_index !2023

; <label>:27                                      ; preds = %._crit_edge, %0
  ret void, !llfi_index !2024
}

; Function Attrs: nounwind uwtable
define void @quantum_phase_kick(i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
  %1 = fpext float %gamma to double, !llfi_index !2025
  %2 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 10, i32 %target, double %1) #3, !llfi_index !2026
  %3 = icmp eq i32 %2, 0, !llfi_index !2027
  br i1 %3, label %4, label %35, !llfi_index !2028

; <label>:4                                       ; preds = %0
  %5 = tail call <2 x float> @quantum_cexp(float %gamma) #3, !llfi_index !2029
  %6 = extractelement <2 x float> %5, i32 0, !llfi_index !2030
  %7 = extractelement <2 x float> %5, i32 1, !llfi_index !2031
  %8 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !2032
  %9 = load i32* %8, align 4, !tbaa !195, !llfi_index !2033
  %10 = icmp sgt i32 %9, 0, !llfi_index !2034
  br i1 %10, label %.lr.ph, label %._crit_edge, !llfi_index !2035

.lr.ph:                                           ; preds = %4
  %11 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2036
  %12 = zext i32 %target to i64, !llfi_index !2037
  %13 = shl i64 1, %12, !llfi_index !2038
  br label %14, !llfi_index !2039

; <label>:14                                      ; preds = %31, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %31 ], !llfi_index !2040
  %15 = load %struct.quantum_reg_node_struct** %11, align 8, !tbaa !200, !llfi_index !2041
  %16 = getelementptr inbounds %struct.quantum_reg_node_struct* %15, i64 %indvars.iv, i32 1, !llfi_index !2042
  %17 = load i64* %16, align 8, !tbaa !224, !llfi_index !2043
  %18 = and i64 %17, %13, !llfi_index !2044
  %19 = icmp eq i64 %18, 0, !llfi_index !2045
  br i1 %19, label %31, label %20, !llfi_index !2046

; <label>:20                                      ; preds = %14
  %21 = getelementptr inbounds %struct.quantum_reg_node_struct* %15, i64 %indvars.iv, i32 0, i32 0, !llfi_index !2047
  %22 = load float* %21, align 4, !llfi_index !2048
  %23 = getelementptr inbounds %struct.quantum_reg_node_struct* %15, i64 %indvars.iv, i32 0, i32 1, !llfi_index !2049
  %24 = load float* %23, align 4, !llfi_index !2050
  %25 = fmul float %6, %22, !llfi_index !2051
  %26 = fmul float %7, %24, !llfi_index !2052
  %27 = fsub float %25, %26, !llfi_index !2053
  %28 = fmul float %6, %24, !llfi_index !2054
  %29 = fmul float %7, %22, !llfi_index !2055
  %30 = fadd float %29, %28, !llfi_index !2056
  store float %27, float* %21, align 4, !llfi_index !2057
  store float %30, float* %23, align 4, !llfi_index !2058
  br label %31, !llfi_index !2059

; <label>:31                                      ; preds = %20, %14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2060
  %32 = load i32* %8, align 4, !tbaa !195, !llfi_index !2061
  %33 = trunc i64 %indvars.iv.next to i32, !llfi_index !2062
  %34 = icmp slt i32 %33, %32, !llfi_index !2063
  br i1 %34, label %14, label %._crit_edge, !llfi_index !2064

._crit_edge:                                      ; preds = %31, %4
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !2065
  br label %35, !llfi_index !2066

; <label>:35                                      ; preds = %._crit_edge, %0
  ret void, !llfi_index !2067
}

; Function Attrs: nounwind uwtable
define void @quantum_cond_phase(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %1 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 12, i32 %control, i32 %target) #3, !llfi_index !2068
  %2 = icmp eq i32 %1, 0, !llfi_index !2069
  br i1 %2, label %3, label %43, !llfi_index !2070

; <label>:3                                       ; preds = %0
  %4 = sub nsw i32 %control, %target, !llfi_index !2071
  %5 = zext i32 %4 to i64, !llfi_index !2072
  %6 = shl i64 1, %5, !llfi_index !2073
  %7 = uitofp i64 %6 to double, !llfi_index !2074
  %8 = fdiv double 0x400921FB54524550, %7, !llfi_index !2075
  %9 = fptrunc double %8 to float, !llfi_index !2076
  %10 = tail call <2 x float> @quantum_cexp(float %9) #3, !llfi_index !2077
  %11 = extractelement <2 x float> %10, i32 0, !llfi_index !2078
  %12 = extractelement <2 x float> %10, i32 1, !llfi_index !2079
  %13 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !2080
  %14 = load i32* %13, align 4, !tbaa !195, !llfi_index !2081
  %15 = icmp sgt i32 %14, 0, !llfi_index !2082
  br i1 %15, label %.lr.ph, label %._crit_edge, !llfi_index !2083

.lr.ph:                                           ; preds = %3
  %16 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2084
  %17 = zext i32 %control to i64, !llfi_index !2085
  %18 = shl i64 1, %17, !llfi_index !2086
  %19 = zext i32 %target to i64, !llfi_index !2087
  %20 = shl i64 1, %19, !llfi_index !2088
  br label %21, !llfi_index !2089

; <label>:21                                      ; preds = %39, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %39 ], !llfi_index !2090
  %22 = load %struct.quantum_reg_node_struct** %16, align 8, !tbaa !200, !llfi_index !2091
  %23 = getelementptr inbounds %struct.quantum_reg_node_struct* %22, i64 %indvars.iv, i32 1, !llfi_index !2092
  %24 = load i64* %23, align 8, !tbaa !224, !llfi_index !2093
  %25 = or i64 %18, %20, !llfi_index !2094
  %26 = and i64 %24, %25, !llfi_index !2095
  %27 = icmp eq i64 %26, %25, !llfi_index !2096
  br i1 %27, label %28, label %39, !llfi_index !2097

; <label>:28                                      ; preds = %21
  %29 = getelementptr inbounds %struct.quantum_reg_node_struct* %22, i64 %indvars.iv, i32 0, i32 0, !llfi_index !2098
  %30 = load float* %29, align 4, !llfi_index !2099
  %31 = getelementptr inbounds %struct.quantum_reg_node_struct* %22, i64 %indvars.iv, i32 0, i32 1, !llfi_index !2100
  %32 = load float* %31, align 4, !llfi_index !2101
  %33 = fmul float %11, %30, !llfi_index !2102
  %34 = fmul float %12, %32, !llfi_index !2103
  %35 = fsub float %33, %34, !llfi_index !2104
  %36 = fmul float %11, %32, !llfi_index !2105
  %37 = fmul float %12, %30, !llfi_index !2106
  %38 = fadd float %37, %36, !llfi_index !2107
  store float %35, float* %29, align 4, !llfi_index !2108
  store float %38, float* %31, align 4, !llfi_index !2109
  br label %39, !llfi_index !2110

; <label>:39                                      ; preds = %28, %21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2111
  %40 = load i32* %13, align 4, !tbaa !195, !llfi_index !2112
  %41 = trunc i64 %indvars.iv.next to i32, !llfi_index !2113
  %42 = icmp slt i32 %41, %40, !llfi_index !2114
  br i1 %42, label %21, label %._crit_edge, !llfi_index !2115

._crit_edge:                                      ; preds = %39, %3
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !2116
  br label %43, !llfi_index !2117

; <label>:43                                      ; preds = %._crit_edge, %0
  ret void, !llfi_index !2118
}

; Function Attrs: nounwind uwtable
define void @quantum_cond_phase_inv(i32 %control, i32 %target, %struct.quantum_reg_struct* %reg) #0 {
  %1 = sub nsw i32 %control, %target, !llfi_index !2119
  %2 = zext i32 %1 to i64, !llfi_index !2120
  %3 = shl i64 1, %2, !llfi_index !2121
  %4 = uitofp i64 %3 to double, !llfi_index !2122
  %5 = fdiv double 0xC00921FB54524550, %4, !llfi_index !2123
  %6 = fptrunc double %5 to float, !llfi_index !2124
  %7 = tail call <2 x float> @quantum_cexp(float %6) #3, !llfi_index !2125
  %8 = extractelement <2 x float> %7, i32 0, !llfi_index !2126
  %9 = extractelement <2 x float> %7, i32 1, !llfi_index !2127
  %10 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !2128
  %11 = load i32* %10, align 4, !tbaa !195, !llfi_index !2129
  %12 = icmp sgt i32 %11, 0, !llfi_index !2130
  br i1 %12, label %.lr.ph, label %._crit_edge, !llfi_index !2131

.lr.ph:                                           ; preds = %0
  %13 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2132
  %14 = zext i32 %control to i64, !llfi_index !2133
  %15 = shl i64 1, %14, !llfi_index !2134
  %16 = zext i32 %target to i64, !llfi_index !2135
  %17 = shl i64 1, %16, !llfi_index !2136
  br label %18, !llfi_index !2137

; <label>:18                                      ; preds = %36, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %36 ], !llfi_index !2138
  %19 = load %struct.quantum_reg_node_struct** %13, align 8, !tbaa !200, !llfi_index !2139
  %20 = getelementptr inbounds %struct.quantum_reg_node_struct* %19, i64 %indvars.iv, i32 1, !llfi_index !2140
  %21 = load i64* %20, align 8, !tbaa !224, !llfi_index !2141
  %22 = or i64 %15, %17, !llfi_index !2142
  %23 = and i64 %21, %22, !llfi_index !2143
  %24 = icmp eq i64 %23, %22, !llfi_index !2144
  br i1 %24, label %25, label %36, !llfi_index !2145

; <label>:25                                      ; preds = %18
  %26 = getelementptr inbounds %struct.quantum_reg_node_struct* %19, i64 %indvars.iv, i32 0, i32 0, !llfi_index !2146
  %27 = load float* %26, align 4, !llfi_index !2147
  %28 = getelementptr inbounds %struct.quantum_reg_node_struct* %19, i64 %indvars.iv, i32 0, i32 1, !llfi_index !2148
  %29 = load float* %28, align 4, !llfi_index !2149
  %30 = fmul float %8, %27, !llfi_index !2150
  %31 = fmul float %9, %29, !llfi_index !2151
  %32 = fsub float %30, %31, !llfi_index !2152
  %33 = fmul float %8, %29, !llfi_index !2153
  %34 = fmul float %9, %27, !llfi_index !2154
  %35 = fadd float %34, %33, !llfi_index !2155
  store float %32, float* %26, align 4, !llfi_index !2156
  store float %35, float* %28, align 4, !llfi_index !2157
  br label %36, !llfi_index !2158

; <label>:36                                      ; preds = %25, %18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2159
  %37 = load i32* %10, align 4, !tbaa !195, !llfi_index !2160
  %38 = trunc i64 %indvars.iv.next to i32, !llfi_index !2161
  %39 = icmp slt i32 %38, %37, !llfi_index !2162
  br i1 %39, label %18, label %._crit_edge, !llfi_index !2163

._crit_edge:                                      ; preds = %36, %0
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !2164
  ret void, !llfi_index !2165
}

; Function Attrs: nounwind uwtable
define void @quantum_cond_phase_kick(i32 %control, i32 %target, float %gamma, %struct.quantum_reg_struct* %reg) #0 {
  %1 = fpext float %gamma to double, !llfi_index !2166
  %2 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 12, i32 %control, i32 %target, double %1) #3, !llfi_index !2167
  %3 = icmp eq i32 %2, 0, !llfi_index !2168
  br i1 %3, label %4, label %38, !llfi_index !2169

; <label>:4                                       ; preds = %0
  %5 = tail call <2 x float> @quantum_cexp(float %gamma) #3, !llfi_index !2170
  %6 = extractelement <2 x float> %5, i32 0, !llfi_index !2171
  %7 = extractelement <2 x float> %5, i32 1, !llfi_index !2172
  %8 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !2173
  %9 = load i32* %8, align 4, !tbaa !195, !llfi_index !2174
  %10 = icmp sgt i32 %9, 0, !llfi_index !2175
  br i1 %10, label %.lr.ph, label %._crit_edge, !llfi_index !2176

.lr.ph:                                           ; preds = %4
  %11 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2177
  %12 = zext i32 %control to i64, !llfi_index !2178
  %13 = shl i64 1, %12, !llfi_index !2179
  %14 = zext i32 %target to i64, !llfi_index !2180
  %15 = shl i64 1, %14, !llfi_index !2181
  br label %16, !llfi_index !2182

; <label>:16                                      ; preds = %34, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %34 ], !llfi_index !2183
  %17 = load %struct.quantum_reg_node_struct** %11, align 8, !tbaa !200, !llfi_index !2184
  %18 = getelementptr inbounds %struct.quantum_reg_node_struct* %17, i64 %indvars.iv, i32 1, !llfi_index !2185
  %19 = load i64* %18, align 8, !tbaa !224, !llfi_index !2186
  %20 = or i64 %13, %15, !llfi_index !2187
  %21 = and i64 %19, %20, !llfi_index !2188
  %22 = icmp eq i64 %21, %20, !llfi_index !2189
  br i1 %22, label %23, label %34, !llfi_index !2190

; <label>:23                                      ; preds = %16
  %24 = getelementptr inbounds %struct.quantum_reg_node_struct* %17, i64 %indvars.iv, i32 0, i32 0, !llfi_index !2191
  %25 = load float* %24, align 4, !llfi_index !2192
  %26 = getelementptr inbounds %struct.quantum_reg_node_struct* %17, i64 %indvars.iv, i32 0, i32 1, !llfi_index !2193
  %27 = load float* %26, align 4, !llfi_index !2194
  %28 = fmul float %6, %25, !llfi_index !2195
  %29 = fmul float %7, %27, !llfi_index !2196
  %30 = fsub float %28, %29, !llfi_index !2197
  %31 = fmul float %6, %27, !llfi_index !2198
  %32 = fmul float %7, %25, !llfi_index !2199
  %33 = fadd float %32, %31, !llfi_index !2200
  store float %30, float* %24, align 4, !llfi_index !2201
  store float %33, float* %26, align 4, !llfi_index !2202
  br label %34, !llfi_index !2203

; <label>:34                                      ; preds = %23, %16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2204
  %35 = load i32* %8, align 4, !tbaa !195, !llfi_index !2205
  %36 = trunc i64 %indvars.iv.next to i32, !llfi_index !2206
  %37 = icmp slt i32 %36, %35, !llfi_index !2207
  br i1 %37, label %16, label %._crit_edge, !llfi_index !2208

._crit_edge:                                      ; preds = %34, %4
  tail call void @quantum_decohere(%struct.quantum_reg_struct* %reg) #3, !llfi_index !2209
  br label %38, !llfi_index !2210

; <label>:38                                      ; preds = %._crit_edge, %0
  ret void, !llfi_index !2211
}

; Function Attrs: nounwind uwtable
define i32 @quantum_gate_counter(i32 %inc) #0 {
  %1 = icmp sgt i32 %inc, 0, !llfi_index !2212
  br i1 %1, label %2, label %5, !llfi_index !2213

; <label>:2                                       ; preds = %0
  %3 = load i32* @quantum_gate_counter.counter, align 4, !tbaa !1, !llfi_index !2214
  %4 = add nsw i32 %3, %inc, !llfi_index !2215
  store i32 %4, i32* @quantum_gate_counter.counter, align 4, !tbaa !1, !llfi_index !2216
  br label %8, !llfi_index !2217

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %inc, 0, !llfi_index !2218
  br i1 %6, label %7, label %8, !llfi_index !2219

; <label>:7                                       ; preds = %5
  store i32 0, i32* @quantum_gate_counter.counter, align 4, !tbaa !1, !llfi_index !2220
  br label %8, !llfi_index !2221

; <label>:8                                       ; preds = %7, %5, %2
  %9 = load i32* @quantum_gate_counter.counter, align 4, !tbaa !1, !llfi_index !2222
  ret i32 %9, !llfi_index !2223
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @quantum_add_hash(i64 %a, i32 %pos, %struct.quantum_reg_struct* nocapture readonly %reg) #5 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !2224
  %2 = load i32* %1, align 4, !tbaa !864, !llfi_index !2225
  %3 = tail call fastcc i32 @quantum_hash64(i64 %a, i32 %2), !llfi_index !2226
  %4 = sext i32 %3 to i64, !llfi_index !2227
  %5 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !2228
  %6 = load i32** %5, align 8, !tbaa !869, !llfi_index !2229
  %7 = getelementptr inbounds i32* %6, i64 %4, !llfi_index !2230
  %8 = load i32* %7, align 4, !tbaa !1, !llfi_index !2231
  %9 = icmp eq i32 %8, 0, !llfi_index !2232
  br i1 %9, label %._crit_edge, label %.lr.ph, !llfi_index !2233

.lr.ph:                                           ; preds = %0
  %10 = load i32* %1, align 4, !tbaa !864, !llfi_index !2234
  %11 = shl i32 1, %10, !llfi_index !2235
  %12 = load i32** %5, align 8, !tbaa !869, !llfi_index !2236
  br label %13, !llfi_index !2237

; <label>:13                                      ; preds = %13, %.lr.ph
  %i.01 = phi i32 [ %3, %.lr.ph ], [ %., %13 ], !llfi_index !2238
  %14 = add nsw i32 %i.01, 1, !llfi_index !2239
  %15 = icmp eq i32 %14, %11, !llfi_index !2240
  %. = select i1 %15, i32 0, i32 %14, !llfi_index !2241
  %16 = sext i32 %. to i64, !llfi_index !2242
  %17 = getelementptr inbounds i32* %12, i64 %16, !llfi_index !2243
  %18 = load i32* %17, align 4, !tbaa !1, !llfi_index !2244
  %19 = icmp eq i32 %18, 0, !llfi_index !2245
  br i1 %19, label %._crit_edge, label %13, !llfi_index !2246

._crit_edge:                                      ; preds = %13, %0
  %.lcssa = phi i32* [ %7, %0 ], [ %17, %13 ], !llfi_index !2247
  %20 = add nsw i32 %pos, 1, !llfi_index !2248
  store i32 %20, i32* %.lcssa, align 4, !tbaa !1, !llfi_index !2249
  ret void, !llfi_index !2250
}

; Function Attrs: inlinehint nounwind readonly uwtable
define internal fastcc i32 @quantum_get_state(i64 %a, %struct.quantum_reg_struct* byval nocapture readonly align 8 %reg) #4 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !2251
  %2 = load i32* %1, align 8, !tbaa !864, !llfi_index !2252
  %3 = tail call fastcc i32 @quantum_hash64(i64 %a, i32 %2), !llfi_index !2253
  %4 = sext i32 %3 to i64, !llfi_index !2254
  %5 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !2255
  %6 = load i32** %5, align 8, !tbaa !869, !llfi_index !2256
  %7 = getelementptr inbounds i32* %6, i64 %4, !llfi_index !2257
  %8 = load i32* %7, align 4, !tbaa !1, !llfi_index !2258
  %9 = icmp eq i32 %8, 0, !llfi_index !2259
  br i1 %9, label %split2, label %.lr.ph, !llfi_index !2260

.lr.ph:                                           ; preds = %0
  %10 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2261
  %11 = load %struct.quantum_reg_node_struct** %10, align 8, !tbaa !200, !llfi_index !2262
  %12 = load i32* %1, align 8, !tbaa !864, !llfi_index !2263
  %13 = shl i32 1, %12, !llfi_index !2264
  %14 = load i32** %5, align 8, !tbaa !869, !llfi_index !2265
  br label %15, !llfi_index !2266

; <label>:15                                      ; preds = %22, %.lr.ph
  %16 = phi i32 [ %8, %.lr.ph ], [ %27, %22 ], !llfi_index !2267
  %i.01 = phi i32 [ %3, %.lr.ph ], [ %., %22 ], !llfi_index !2268
  %17 = add nsw i32 %16, -1, !llfi_index !2269
  %18 = sext i32 %17 to i64, !llfi_index !2270
  %19 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %18, i32 1, !llfi_index !2271
  %20 = load i64* %19, align 8, !tbaa !224, !llfi_index !2272
  %21 = icmp eq i64 %20, %a, !llfi_index !2273
  br i1 %21, label %split2, label %22, !llfi_index !2274

; <label>:22                                      ; preds = %15
  %23 = add nsw i32 %i.01, 1, !llfi_index !2275
  %24 = icmp eq i32 %23, %13, !llfi_index !2276
  %. = select i1 %24, i32 0, i32 %23, !llfi_index !2277
  %25 = sext i32 %. to i64, !llfi_index !2278
  %26 = getelementptr inbounds i32* %14, i64 %25, !llfi_index !2279
  %27 = load i32* %26, align 4, !tbaa !1, !llfi_index !2280
  %28 = icmp eq i32 %27, 0, !llfi_index !2281
  br i1 %28, label %split2, label %15, !llfi_index !2282

split2:                                           ; preds = %22, %15, %0
  %.0 = phi i32 [ -1, %0 ], [ %17, %15 ], [ -1, %22 ], !llfi_index !2283
  ret i32 %.0, !llfi_index !2284
}

; Function Attrs: inlinehint nounwind readnone uwtable
define internal fastcc float @quantum_prob_inline(<2 x float> %a.coerce) #6 {
  %1 = tail call fastcc float @quantum_real(<2 x float> %a.coerce), !llfi_index !2285
  %2 = tail call fastcc float @quantum_imag(<2 x float> %a.coerce), !llfi_index !2286
  %3 = fmul float %1, %1, !llfi_index !2287
  %4 = fmul float %2, %2, !llfi_index !2288
  %5 = fadd float %3, %4, !llfi_index !2289
  ret float %5, !llfi_index !2290
}

; Function Attrs: inlinehint nounwind readnone uwtable
define internal fastcc i32 @quantum_hash64(i64 %key, i32 %width) #6 {
  %1 = lshr i64 %key, 32, !llfi_index !2291
  %key.masked = and i64 %key, 4294967295, !llfi_index !2292
  %2 = xor i64 %1, %key.masked, !llfi_index !2293
  %3 = mul i64 %2, 2654404609, !llfi_index !2294
  %4 = trunc i64 %3 to i32, !llfi_index !2295
  %5 = sub nsw i32 32, %width, !llfi_index !2296
  %6 = lshr i32 %4, %5, !llfi_index !2297
  ret i32 %6, !llfi_index !2298
}

; Function Attrs: inlinehint nounwind readnone uwtable
define internal fastcc float @quantum_real(<2 x float> %a.coerce) #6 {
  %1 = extractelement <2 x float> %a.coerce, i32 0, !llfi_index !2299
  ret float %1, !llfi_index !2300
}

; Function Attrs: inlinehint nounwind readnone uwtable
define internal fastcc float @quantum_imag(<2 x float> %a.coerce) #6 {
  %1 = extractelement <2 x float> %a.coerce, i32 1, !llfi_index !2301
  ret float %1, !llfi_index !2302
}

; Function Attrs: nounwind uwtable
define void @test_sum(i32 %compare, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = sext i32 %compare to i64, !llfi_index !2303
  %2 = add nsw i32 %width, -1, !llfi_index !2304
  %3 = zext i32 %2 to i64, !llfi_index !2305
  %4 = shl i64 1, %3, !llfi_index !2306
  %5 = and i64 %4, %1, !llfi_index !2307
  %6 = icmp eq i64 %5, 0, !llfi_index !2308
  %7 = shl nsw i32 %width, 1, !llfi_index !2309
  %8 = add nsw i32 %7, -1, !llfi_index !2310
  br i1 %6, label %10, label %9, !llfi_index !2311

; <label>:9                                       ; preds = %0
  tail call void @quantum_cnot(i32 %8, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2312
  tail call void @quantum_sigma_x(i32 %8, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2313
  tail call void @quantum_cnot(i32 %8, i32 0, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2314
  br label %11, !llfi_index !2315

; <label>:10                                      ; preds = %0
  tail call void @quantum_sigma_x(i32 %8, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2316
  tail call void @quantum_cnot(i32 %8, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2317
  br label %11, !llfi_index !2318

; <label>:11                                      ; preds = %10, %9
  %12 = add nsw i32 %width, -2, !llfi_index !2319
  %13 = icmp sgt i32 %12, 0, !llfi_index !2320
  br i1 %13, label %.lr.ph4, label %._crit_edge5, !llfi_index !2321

.lr.ph4:                                          ; preds = %23, %11
  %i.02 = phi i32 [ %24, %23 ], [ %12, %11 ], !llfi_index !2322
  %14 = shl i32 1, %i.02, !llfi_index !2323
  %15 = and i32 %14, %compare, !llfi_index !2324
  %16 = icmp eq i32 %15, 0, !llfi_index !2325
  br i1 %16, label %20, label %17, !llfi_index !2326

; <label>:17                                      ; preds = %.lr.ph4
  %18 = add nsw i32 %i.02, 1, !llfi_index !2327
  %19 = add nsw i32 %i.02, %width, !llfi_index !2328
  tail call void @quantum_toffoli(i32 %18, i32 %19, i32 %i.02, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2329
  tail call void @quantum_sigma_x(i32 %19, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2330
  tail call void @quantum_toffoli(i32 %18, i32 %19, i32 0, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2331
  br label %23, !llfi_index !2332

; <label>:20                                      ; preds = %.lr.ph4
  %21 = add nsw i32 %i.02, %width, !llfi_index !2333
  tail call void @quantum_sigma_x(i32 %21, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2334
  %22 = add nsw i32 %i.02, 1, !llfi_index !2335
  tail call void @quantum_toffoli(i32 %22, i32 %21, i32 %i.02, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2336
  br label %23, !llfi_index !2337

; <label>:23                                      ; preds = %20, %17
  %24 = add nsw i32 %i.02, -1, !llfi_index !2338
  %25 = icmp sgt i32 %24, 0, !llfi_index !2339
  br i1 %25, label %.lr.ph4, label %._crit_edge5, !llfi_index !2340

._crit_edge5:                                     ; preds = %23, %11
  %26 = and i32 %compare, 1, !llfi_index !2341
  %27 = icmp eq i32 %26, 0, !llfi_index !2342
  br i1 %27, label %.critedge, label %28, !llfi_index !2343

; <label>:28                                      ; preds = %._crit_edge5
  tail call void @quantum_sigma_x(i32 %width, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2344
  tail call void @quantum_toffoli(i32 %width, i32 1, i32 0, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2345
  %29 = or i32 %7, 1, !llfi_index !2346
  tail call void @quantum_toffoli(i32 %29, i32 0, i32 %7, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2347
  tail call void @quantum_toffoli(i32 %width, i32 1, i32 0, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2348
  tail call void @quantum_sigma_x(i32 %width, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2349
  br label %.preheader, !llfi_index !2350

.critedge:                                        ; preds = %._crit_edge5
  %30 = or i32 %7, 1, !llfi_index !2351
  tail call void @quantum_toffoli(i32 %30, i32 0, i32 %7, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2352
  br label %.preheader, !llfi_index !2353

.preheader:                                       ; preds = %.critedge, %28
  %31 = icmp slt i32 %12, 1, !llfi_index !2354
  br i1 %31, label %._crit_edge, label %.lr.ph, !llfi_index !2355

.lr.ph:                                           ; preds = %.preheader
  %32 = add i32 %width, -1, !llfi_index !2356
  br label %33, !llfi_index !2357

; <label>:33                                      ; preds = %.backedge, %.lr.ph
  %i.11 = phi i32 [ 1, %.lr.ph ], [ %37, %.backedge ], !llfi_index !2358
  %34 = shl i32 1, %i.11, !llfi_index !2359
  %35 = and i32 %34, %compare, !llfi_index !2360
  %36 = icmp eq i32 %35, 0, !llfi_index !2361
  %37 = add nsw i32 %i.11, 1, !llfi_index !2362
  %38 = add nsw i32 %i.11, %width, !llfi_index !2363
  br i1 %36, label %40, label %39, !llfi_index !2364

; <label>:39                                      ; preds = %33
  tail call void @quantum_toffoli(i32 %37, i32 %38, i32 0, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2365
  tail call void @quantum_sigma_x(i32 %38, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2366
  tail call void @quantum_toffoli(i32 %37, i32 %38, i32 %i.11, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2367
  br label %.backedge, !llfi_index !2368

.backedge:                                        ; preds = %40, %39
  %exitcond = icmp eq i32 %37, %32, !llfi_index !2369
  br i1 %exitcond, label %._crit_edge, label %33, !llfi_index !2370

; <label>:40                                      ; preds = %33
  tail call void @quantum_toffoli(i32 %37, i32 %38, i32 %i.11, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2371
  tail call void @quantum_sigma_x(i32 %38, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2372
  br label %.backedge, !llfi_index !2373

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %41 = shl i32 1, %2, !llfi_index !2374
  %42 = and i32 %41, %compare, !llfi_index !2375
  %43 = icmp eq i32 %42, 0, !llfi_index !2376
  br i1 %43, label %45, label %44, !llfi_index !2377

; <label>:44                                      ; preds = %._crit_edge
  tail call void @quantum_cnot(i32 %8, i32 0, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2378
  tail call void @quantum_sigma_x(i32 %8, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2379
  tail call void @quantum_cnot(i32 %8, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2380
  br label %46, !llfi_index !2381

; <label>:45                                      ; preds = %._crit_edge
  tail call void @quantum_cnot(i32 %8, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2382
  tail call void @quantum_sigma_x(i32 %8, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2383
  br label %46, !llfi_index !2384

; <label>:46                                      ; preds = %45, %44
  ret void, !llfi_index !2385
}

; Function Attrs: nounwind uwtable
define void @muxfa(i32 %a, i32 %b_in, i32 %c_in, i32 %c_out, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
  switch i32 %a, label %5 [
    i32 0, label %1
    i32 3, label %2
    i32 1, label %3
    i32 2, label %4
  ], !llfi_index !2386

; <label>:1                                       ; preds = %0
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2387
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2388
  br label %5, !llfi_index !2389

; <label>:2                                       ; preds = %0
  tail call void @quantum_toffoli(i32 %L, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2390
  tail call void @quantum_cnot(i32 %L, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2391
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2392
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2393
  br label %5, !llfi_index !2394

; <label>:3                                       ; preds = %0
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %b_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2395
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2396
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %b_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2397
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2398
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2399
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2400
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2401
  br label %5, !llfi_index !2402

; <label>:4                                       ; preds = %0
  tail call void @quantum_sigma_x(i32 %xlt_l, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2403
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %b_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2404
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2405
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %b_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2406
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2407
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2408
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2409
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2410
  tail call void @quantum_sigma_x(i32 %xlt_l, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2411
  br label %5, !llfi_index !2412

; <label>:5                                       ; preds = %4, %3, %2, %1, %0
  ret void, !llfi_index !2413
}

; Function Attrs: nounwind uwtable
define void @muxfa_inv(i32 %a, i32 %b_in, i32 %c_in, i32 %c_out, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
  switch i32 %a, label %5 [
    i32 0, label %1
    i32 3, label %2
    i32 1, label %3
    i32 2, label %4
  ], !llfi_index !2414

; <label>:1                                       ; preds = %0
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2415
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2416
  br label %5, !llfi_index !2417

; <label>:2                                       ; preds = %0
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2418
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2419
  tail call void @quantum_cnot(i32 %L, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2420
  tail call void @quantum_toffoli(i32 %L, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2421
  br label %5, !llfi_index !2422

; <label>:3                                       ; preds = %0
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2423
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2424
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2425
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2426
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %b_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2427
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2428
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %b_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2429
  br label %5, !llfi_index !2430

; <label>:4                                       ; preds = %0
  tail call void @quantum_sigma_x(i32 %xlt_l, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2431
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2432
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2433
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2434
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2435
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %b_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2436
  tail call void @quantum_toffoli(i32 %b_in, i32 %c_in, i32 %c_out, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2437
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %b_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2438
  tail call void @quantum_sigma_x(i32 %xlt_l, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2439
  br label %5, !llfi_index !2440

; <label>:5                                       ; preds = %4, %3, %2, %1, %0
  ret void, !llfi_index !2441
}

; Function Attrs: nounwind uwtable
define void @muxha(i32 %a, i32 %b_in, i32 %c_in, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
  switch i32 %a, label %5 [
    i32 0, label %1
    i32 3, label %2
    i32 1, label %3
    i32 2, label %4
  ], !llfi_index !2442

; <label>:1                                       ; preds = %0
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2443
  br label %5, !llfi_index !2444

; <label>:2                                       ; preds = %0
  tail call void @quantum_cnot(i32 %L, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2445
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2446
  br label %5, !llfi_index !2447

; <label>:3                                       ; preds = %0
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2448
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2449
  br label %5, !llfi_index !2450

; <label>:4                                       ; preds = %0
  tail call void @quantum_sigma_x(i32 %xlt_l, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2451
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2452
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2453
  tail call void @quantum_sigma_x(i32 %xlt_l, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2454
  br label %5, !llfi_index !2455

; <label>:5                                       ; preds = %4, %3, %2, %1, %0
  ret void, !llfi_index !2456
}

; Function Attrs: nounwind uwtable
define void @muxha_inv(i32 %a, i32 %b_in, i32 %c_in, i32 %xlt_l, i32 %L, i32 %total, %struct.quantum_reg_struct* %reg) #0 {
  switch i32 %a, label %5 [
    i32 0, label %1
    i32 3, label %2
    i32 1, label %3
    i32 2, label %4
  ], !llfi_index !2457

; <label>:1                                       ; preds = %0
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2458
  br label %5, !llfi_index !2459

; <label>:2                                       ; preds = %0
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2460
  tail call void @quantum_cnot(i32 %L, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2461
  br label %5, !llfi_index !2462

; <label>:3                                       ; preds = %0
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2463
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2464
  br label %5, !llfi_index !2465

; <label>:4                                       ; preds = %0
  tail call void @quantum_sigma_x(i32 %xlt_l, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2466
  tail call void @quantum_cnot(i32 %b_in, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2467
  tail call void @quantum_toffoli(i32 %L, i32 %xlt_l, i32 %c_in, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2468
  tail call void @quantum_sigma_x(i32 %xlt_l, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2469
  br label %5, !llfi_index !2470

; <label>:5                                       ; preds = %4, %3, %2, %1, %0
  ret void, !llfi_index !2471
}

; Function Attrs: nounwind uwtable
define void @madd(i32 %a, i32 %a_inv, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = add nsw i32 %width, -1, !llfi_index !2472
  %2 = icmp sgt i32 %1, 0, !llfi_index !2473
  br i1 %2, label %.lr.ph, label %._crit_edge, !llfi_index !2474

.lr.ph:                                           ; preds = %0
  %3 = shl nsw i32 %width, 1, !llfi_index !2475
  %4 = or i32 %3, 1, !llfi_index !2476
  %5 = add i32 %width, -1, !llfi_index !2477
  br label %6, !llfi_index !2478

; <label>:6                                       ; preds = %6, %.lr.ph
  %i.03 = phi i32 [ 0, %.lr.ph ], [ %13, %6 ], !llfi_index !2479
  %7 = shl i32 1, %i.03, !llfi_index !2480
  %8 = and i32 %7, %a, !llfi_index !2481
  %9 = icmp eq i32 %8, 0, !llfi_index !2482
  %.1 = select i1 %9, i32 0, i32 2, !llfi_index !2483
  %10 = and i32 %7, %a_inv, !llfi_index !2484
  %not.2 = icmp ne i32 %10, 0, !llfi_index !2485
  %11 = zext i1 %not.2 to i32, !llfi_index !2486
  %j.1 = or i32 %.1, %11, !llfi_index !2487
  %12 = add nsw i32 %i.03, %width, !llfi_index !2488
  %13 = add nsw i32 %i.03, 1, !llfi_index !2489
  tail call void @muxfa(i32 %j.1, i32 %12, i32 %i.03, i32 %13, i32 %3, i32 %4, i32 undef, %struct.quantum_reg_struct* %reg), !llfi_index !2490
  %exitcond = icmp eq i32 %13, %5, !llfi_index !2491
  br i1 %exitcond, label %._crit_edge, label %6, !llfi_index !2492

._crit_edge:                                      ; preds = %6, %0
  %14 = shl i32 1, %1, !llfi_index !2493
  %15 = and i32 %14, %a, !llfi_index !2494
  %16 = icmp ne i32 %15, 0, !llfi_index !2495
  %. = select i1 %16, i32 2, i32 0, !llfi_index !2496
  %17 = and i32 %14, %a_inv, !llfi_index !2497
  %not. = icmp ne i32 %17, 0, !llfi_index !2498
  %18 = zext i1 %not. to i32, !llfi_index !2499
  %.. = or i32 %., %18, !llfi_index !2500
  %19 = shl nsw i32 %width, 1, !llfi_index !2501
  %20 = add nsw i32 %19, -1, !llfi_index !2502
  %21 = or i32 %19, 1, !llfi_index !2503
  tail call void @muxha(i32 %.., i32 %20, i32 %1, i32 %19, i32 %21, i32 undef, %struct.quantum_reg_struct* %reg), !llfi_index !2504
  ret void, !llfi_index !2505
}

; Function Attrs: nounwind uwtable
define void @madd_inv(i32 %a, i32 %a_inv, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = add nsw i32 %width, -1, !llfi_index !2506
  %2 = shl i32 1, %1, !llfi_index !2507
  %3 = and i32 %2, %a, !llfi_index !2508
  %4 = icmp ne i32 %3, 0, !llfi_index !2509
  %. = select i1 %4, i32 2, i32 0, !llfi_index !2510
  %5 = and i32 %2, %a_inv, !llfi_index !2511
  %not. = icmp ne i32 %5, 0, !llfi_index !2512
  %6 = zext i1 %not. to i32, !llfi_index !2513
  %.. = or i32 %., %6, !llfi_index !2514
  %7 = shl nsw i32 %width, 1, !llfi_index !2515
  %8 = add nsw i32 %7, -1, !llfi_index !2516
  %9 = or i32 %7, 1, !llfi_index !2517
  tail call void @muxha_inv(i32 %.., i32 %1, i32 %8, i32 %7, i32 %9, i32 undef, %struct.quantum_reg_struct* %reg), !llfi_index !2518
  %10 = add nsw i32 %width, -2, !llfi_index !2519
  %11 = icmp sgt i32 %10, -1, !llfi_index !2520
  br i1 %11, label %.lr.ph, label %._crit_edge, !llfi_index !2521

.lr.ph:                                           ; preds = %0
  %12 = add nsw i32 %width, 1, !llfi_index !2522
  br label %13, !llfi_index !2523

; <label>:13                                      ; preds = %13, %.lr.ph
  %i.03 = phi i32 [ %10, %.lr.ph ], [ %21, %13 ], !llfi_index !2524
  %14 = shl i32 1, %i.03, !llfi_index !2525
  %15 = and i32 %14, %a, !llfi_index !2526
  %16 = icmp eq i32 %15, 0, !llfi_index !2527
  %.1 = select i1 %16, i32 0, i32 2, !llfi_index !2528
  %17 = and i32 %14, %a_inv, !llfi_index !2529
  %not.2 = icmp ne i32 %17, 0, !llfi_index !2530
  %18 = zext i1 %not.2 to i32, !llfi_index !2531
  %j.2 = or i32 %.1, %18, !llfi_index !2532
  %19 = add nsw i32 %i.03, %width, !llfi_index !2533
  %20 = add nsw i32 %12, %i.03, !llfi_index !2534
  tail call void @muxfa_inv(i32 %j.2, i32 %i.03, i32 %19, i32 %20, i32 %7, i32 %9, i32 undef, %struct.quantum_reg_struct* %reg), !llfi_index !2535
  %21 = add nsw i32 %i.03, -1, !llfi_index !2536
  %22 = icmp sgt i32 %i.03, 0, !llfi_index !2537
  br i1 %22, label %13, label %._crit_edge, !llfi_index !2538

._crit_edge:                                      ; preds = %13, %0
  ret void, !llfi_index !2539
}

; Function Attrs: nounwind uwtable
define void @addn(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = sub nsw i32 %N, %a, !llfi_index !2540
  tail call void @test_sum(i32 %1, i32 %width, %struct.quantum_reg_struct* %reg), !llfi_index !2541
  %2 = shl i32 1, %width, !llfi_index !2542
  %3 = sub i32 %a, %N, !llfi_index !2543
  %4 = add i32 %3, %2, !llfi_index !2544
  tail call void @madd(i32 %4, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg), !llfi_index !2545
  ret void, !llfi_index !2546
}

; Function Attrs: nounwind uwtable
define void @addn_inv(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = shl nsw i32 %width, 1, !llfi_index !2547
  %2 = or i32 %1, 1, !llfi_index !2548
  tail call void @quantum_cnot(i32 %2, i32 %1, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2549
  %3 = shl i32 1, %width, !llfi_index !2550
  %4 = sub nsw i32 %3, %a, !llfi_index !2551
  %5 = sub nsw i32 %N, %a, !llfi_index !2552
  tail call void @madd_inv(i32 %4, i32 %5, i32 %width, %struct.quantum_reg_struct* %reg), !llfi_index !2553
  tail call void @quantum_swaptheleads(i32 %width, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2554
  tail call void @test_sum(i32 %a, i32 %width, %struct.quantum_reg_struct* %reg), !llfi_index !2555
  ret void, !llfi_index !2556
}

; Function Attrs: nounwind uwtable
define void @add_mod_n(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  tail call void @addn(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg), !llfi_index !2557
  tail call void @addn_inv(i32 %N, i32 %a, i32 %width, %struct.quantum_reg_struct* %reg), !llfi_index !2558
  ret void, !llfi_index !2559
}

; Function Attrs: nounwind uwtable
define void @emul(i32 %a, i32 %L, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = icmp sgt i32 %width, 0, !llfi_index !2560
  br i1 %1, label %.lr.ph, label %._crit_edge, !llfi_index !2561

.lr.ph:                                           ; preds = %0
  %2 = shl i32 %width, 1, !llfi_index !2562
  %3 = add nsw i32 %2, 2, !llfi_index !2563
  br label %4, !llfi_index !2564

; <label>:4                                       ; preds = %.backedge, %.lr.ph
  %i.02.in = phi i32 [ %width, %.lr.ph ], [ %i.02, %.backedge ], !llfi_index !2565
  %i.02 = add nsw i32 %i.02.in, -1, !llfi_index !2566
  %5 = shl i32 1, %i.02, !llfi_index !2567
  %6 = and i32 %5, %a, !llfi_index !2568
  %7 = icmp eq i32 %6, 0, !llfi_index !2569
  br i1 %7, label %.backedge, label %9, !llfi_index !2570

.backedge:                                        ; preds = %9, %4
  %8 = icmp sgt i32 %i.02, 0, !llfi_index !2571
  br i1 %8, label %4, label %._crit_edge, !llfi_index !2572

; <label>:9                                       ; preds = %4
  %10 = add nsw i32 %i.02, %width, !llfi_index !2573
  tail call void @quantum_toffoli(i32 %3, i32 %L, i32 %10, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2574
  br label %.backedge, !llfi_index !2575

._crit_edge:                                      ; preds = %.backedge, %0
  ret void, !llfi_index !2576
}

; Function Attrs: nounwind uwtable
define void @muln(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = shl nsw i32 %width, 1, !llfi_index !2577
  %2 = or i32 %1, 1, !llfi_index !2578
  %3 = add nsw i32 %1, 2, !llfi_index !2579
  tail call void @quantum_toffoli(i32 %ctl, i32 %3, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2580
  %4 = srem i32 %a, %N, !llfi_index !2581
  tail call void @emul(i32 %4, i32 %2, i32 %width, %struct.quantum_reg_struct* %reg), !llfi_index !2582
  tail call void @quantum_toffoli(i32 %ctl, i32 %3, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2583
  %5 = icmp sgt i32 %width, 1, !llfi_index !2584
  br i1 %5, label %.lr.ph, label %._crit_edge, !llfi_index !2585

.lr.ph:                                           ; preds = %.lr.ph, %0
  %i.01 = phi i32 [ %9, %.lr.ph ], [ 1, %0 ], !llfi_index !2586
  %6 = add nsw i32 %i.01, %3, !llfi_index !2587
  tail call void @quantum_toffoli(i32 %ctl, i32 %6, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2588
  %7 = shl i32 %a, %i.01, !llfi_index !2589
  %8 = srem i32 %7, %N, !llfi_index !2590
  tail call void @add_mod_n(i32 %N, i32 %8, i32 %width, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2591
  tail call void @quantum_toffoli(i32 %ctl, i32 %6, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2592
  %9 = add nsw i32 %i.01, 1, !llfi_index !2593
  %exitcond = icmp eq i32 %9, %width, !llfi_index !2594
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !2595

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void, !llfi_index !2596
}

; Function Attrs: nounwind uwtable
define void @muln_inv(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  %1 = shl nsw i32 %width, 1, !llfi_index !2597
  %2 = or i32 %1, 1, !llfi_index !2598
  %3 = tail call i32 @quantum_inverse_mod(i32 %N, i32 %a) #3, !llfi_index !2599
  %i.01 = add nsw i32 %width, -1, !llfi_index !2600
  %4 = icmp sgt i32 %i.01, 0, !llfi_index !2601
  %5 = add nsw i32 %1, 2, !llfi_index !2602
  br i1 %4, label %.lr.ph, label %._crit_edge, !llfi_index !2603

.lr.ph:                                           ; preds = %.lr.ph, %0
  %i.02 = phi i32 [ %i.0, %.lr.ph ], [ %i.01, %0 ], !llfi_index !2604
  %6 = add nsw i32 %i.02, %5, !llfi_index !2605
  tail call void @quantum_toffoli(i32 %ctl, i32 %6, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2606
  %7 = shl i32 %3, %i.02, !llfi_index !2607
  %8 = srem i32 %7, %N, !llfi_index !2608
  %9 = sub nsw i32 %N, %8, !llfi_index !2609
  tail call void @add_mod_n(i32 %N, i32 %9, i32 %width, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2610
  tail call void @quantum_toffoli(i32 %ctl, i32 %6, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2611
  %i.0 = add nsw i32 %i.02, -1, !llfi_index !2612
  %10 = icmp sgt i32 %i.0, 0, !llfi_index !2613
  br i1 %10, label %.lr.ph, label %._crit_edge, !llfi_index !2614

._crit_edge:                                      ; preds = %.lr.ph, %0
  tail call void @quantum_toffoli(i32 %ctl, i32 %5, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2615
  %11 = srem i32 %3, %N, !llfi_index !2616
  tail call void @emul(i32 %11, i32 %2, i32 %width, %struct.quantum_reg_struct* %reg), !llfi_index !2617
  tail call void @quantum_toffoli(i32 %ctl, i32 %5, i32 %2, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2618
  ret void, !llfi_index !2619
}

; Function Attrs: nounwind uwtable
define void @mul_mod_n(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #0 {
  tail call void @muln(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg), !llfi_index !2620
  tail call void @quantum_swaptheleads_omuln_controlled(i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg) #3, !llfi_index !2621
  tail call void @muln_inv(i32 %N, i32 %a, i32 %ctl, i32 %width, %struct.quantum_reg_struct* %reg), !llfi_index !2622
  ret void, !llfi_index !2623
}

; Function Attrs: nounwind uwtable
define void @quantum_matrix2qureg(%struct.quantum_reg_struct* noalias nocapture sret %agg.result, %struct.quantum_matrix_struct* nocapture readonly %m, i32 %width) #0 {
  %1 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 1, !llfi_index !2624
  %2 = load i32* %1, align 4, !tbaa !2625, !llfi_index !2626
  %3 = icmp eq i32 %2, 1, !llfi_index !2627
  br i1 %3, label %.preheader, label %10, !llfi_index !2628

.preheader:                                       ; preds = %0
  %4 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 0, !llfi_index !2629
  %5 = load i32* %4, align 4, !tbaa !2630, !llfi_index !2631
  %6 = icmp sgt i32 %5, 0, !llfi_index !2632
  br i1 %6, label %.lr.ph6, label %._crit_edge7, !llfi_index !2633

.lr.ph6:                                          ; preds = %.preheader
  %7 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 2, !llfi_index !2634
  %8 = load { float, float }** %7, align 8, !tbaa !1795, !llfi_index !2635
  %9 = load i32* %4, align 4, !tbaa !2630, !llfi_index !2636
  br label %12, !llfi_index !2637

; <label>:10                                      ; preds = %0
  %11 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @.str33, i64 0, i64 0), i32 %2) #3, !llfi_index !2638
  tail call void @exit(i32 1) #12, !llfi_index !2639
  unreachable, !llfi_index !2640

; <label>:12                                      ; preds = %12, %.lr.ph6
  %indvars.iv9 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next10, %12 ], !llfi_index !2641
  %size.05 = phi i32 [ 0, %.lr.ph6 ], [ %.size.0, %12 ], !llfi_index !2642
  %13 = getelementptr inbounds { float, float }* %8, i64 %indvars.iv9, i32 0, !llfi_index !2643
  %14 = load float* %13, align 4, !llfi_index !2644
  %15 = getelementptr inbounds { float, float }* %8, i64 %indvars.iv9, i32 1, !llfi_index !2645
  %16 = load float* %15, align 4, !llfi_index !2646
  %17 = fcmp une float %14, 0.000000e+00, !llfi_index !2647
  %18 = fcmp une float %16, 0.000000e+00, !llfi_index !2648
  %19 = or i1 %17, %18, !llfi_index !2649
  %20 = zext i1 %19 to i32, !llfi_index !2650
  %.size.0 = add nsw i32 %20, %size.05, !llfi_index !2651
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !llfi_index !2652
  %21 = trunc i64 %indvars.iv.next10 to i32, !llfi_index !2653
  %22 = icmp slt i32 %21, %9, !llfi_index !2654
  br i1 %22, label %12, label %._crit_edge7, !llfi_index !2655

._crit_edge7:                                     ; preds = %12, %.preheader
  %size.0.lcssa = phi i32 [ 0, %.preheader ], [ %.size.0, %12 ], !llfi_index !2656
  %23 = add nsw i32 %width, 2, !llfi_index !2657
  %24 = sext i32 %size.0.lcssa to i64, !llfi_index !2658
  %25 = tail call noalias i8* @calloc(i64 %24, i64 16) #3, !llfi_index !2659
  %26 = bitcast i8* %25 to %struct.quantum_reg_node_struct*, !llfi_index !2660
  %27 = icmp eq i8* %25, null, !llfi_index !2661
  br i1 %27, label %28, label %30, !llfi_index !2662

; <label>:28                                      ; preds = %._crit_edge7
  %29 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str134, i64 0, i64 0), i32 %size.0.lcssa) #3, !llfi_index !2663
  tail call void @exit(i32 1) #12, !llfi_index !2664
  unreachable, !llfi_index !2665

; <label>:30                                      ; preds = %._crit_edge7
  %31 = shl nsw i64 %24, 4, !llfi_index !2666
  %32 = tail call i64 @quantum_memman(i64 %31) #3, !llfi_index !2667
  %33 = shl i32 1, %23, !llfi_index !2668
  %34 = sext i32 %33 to i64, !llfi_index !2669
  %35 = tail call noalias i8* @calloc(i64 %34, i64 4) #3, !llfi_index !2670
  %36 = bitcast i8* %35 to i32*, !llfi_index !2671
  %37 = icmp eq i8* %35, null, !llfi_index !2672
  br i1 %37, label %38, label %40, !llfi_index !2673

; <label>:38                                      ; preds = %30
  %39 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str235, i64 0, i64 0), i32 %33) #3, !llfi_index !2674
  tail call void @exit(i32 1) #12, !llfi_index !2675
  unreachable, !llfi_index !2676

; <label>:40                                      ; preds = %30
  %41 = shl nsw i64 %34, 2, !llfi_index !2677
  %42 = tail call i64 @quantum_memman(i64 %41) #3, !llfi_index !2678
  %43 = load i32* %4, align 4, !tbaa !2630, !llfi_index !2679
  %44 = icmp sgt i32 %43, 0, !llfi_index !2680
  br i1 %44, label %.lr.ph, label %._crit_edge, !llfi_index !2681

.lr.ph:                                           ; preds = %40
  %45 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 2, !llfi_index !2682
  br label %46, !llfi_index !2683

; <label>:46                                      ; preds = %66, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %66 ], !llfi_index !2684
  %j.03 = phi i32 [ 0, %.lr.ph ], [ %j.1, %66 ], !llfi_index !2685
  %47 = load { float, float }** %45, align 8, !tbaa !1795, !llfi_index !2686
  %48 = getelementptr inbounds { float, float }* %47, i64 %indvars.iv, i32 0, !llfi_index !2687
  %49 = load float* %48, align 4, !llfi_index !2688
  %50 = getelementptr inbounds { float, float }* %47, i64 %indvars.iv, i32 1, !llfi_index !2689
  %51 = load float* %50, align 4, !llfi_index !2690
  %52 = fcmp une float %49, 0.000000e+00, !llfi_index !2691
  %53 = fcmp une float %51, 0.000000e+00, !llfi_index !2692
  %54 = or i1 %52, %53, !llfi_index !2693
  br i1 %54, label %55, label %66, !llfi_index !2694

; <label>:55                                      ; preds = %46
  %56 = sext i32 %j.03 to i64, !llfi_index !2695
  %57 = getelementptr inbounds %struct.quantum_reg_node_struct* %26, i64 %56, i32 1, !llfi_index !2696
  store i64 %indvars.iv, i64* %57, align 8, !tbaa !224, !llfi_index !2697
  %58 = load { float, float }** %45, align 8, !tbaa !1795, !llfi_index !2698
  %59 = getelementptr inbounds { float, float }* %58, i64 %indvars.iv, i32 0, !llfi_index !2699
  %60 = load float* %59, align 4, !llfi_index !2700
  %61 = getelementptr inbounds { float, float }* %58, i64 %indvars.iv, i32 1, !llfi_index !2701
  %62 = load float* %61, align 4, !llfi_index !2702
  %63 = getelementptr inbounds %struct.quantum_reg_node_struct* %26, i64 %56, i32 0, i32 0, !llfi_index !2703
  %64 = getelementptr inbounds %struct.quantum_reg_node_struct* %26, i64 %56, i32 0, i32 1, !llfi_index !2704
  store float %60, float* %63, align 4, !llfi_index !2705
  store float %62, float* %64, align 4, !llfi_index !2706
  %65 = add nsw i32 %j.03, 1, !llfi_index !2707
  br label %66, !llfi_index !2708

; <label>:66                                      ; preds = %55, %46
  %j.1 = phi i32 [ %65, %55 ], [ %j.03, %46 ], !llfi_index !2709
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2710
  %67 = load i32* %4, align 4, !tbaa !2630, !llfi_index !2711
  %68 = trunc i64 %indvars.iv.next to i32, !llfi_index !2712
  %69 = icmp slt i32 %68, %67, !llfi_index !2713
  br i1 %69, label %46, label %._crit_edge, !llfi_index !2714

._crit_edge:                                      ; preds = %66, %40
  %70 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 0, !llfi_index !2715
  store i32 %width, i32* %70, align 8, !llfi_index !2716
  %71 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 1, !llfi_index !2717
  store i32 %size.0.lcssa, i32* %71, align 4, !llfi_index !2718
  %72 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 2, !llfi_index !2719
  store i32 %23, i32* %72, align 8, !llfi_index !2720
  %73 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 3, !llfi_index !2721
  store %struct.quantum_reg_node_struct* %26, %struct.quantum_reg_node_struct** %73, align 8, !llfi_index !2722
  %74 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 4, !llfi_index !2723
  store i32* %36, i32** %74, align 8, !llfi_index !2724
  ret void, !llfi_index !2725
}

; Function Attrs: nounwind uwtable
define void @quantum_new_qureg(%struct.quantum_reg_struct* noalias nocapture sret %agg.result, i64 %initval, i32 %width) #0 {
  %1 = add nsw i32 %width, 2, !llfi_index !2726
  %2 = tail call noalias i8* @calloc(i64 1, i64 16) #3, !llfi_index !2727
  %3 = bitcast i8* %2 to %struct.quantum_reg_node_struct*, !llfi_index !2728
  %4 = icmp eq i8* %2, null, !llfi_index !2729
  br i1 %4, label %5, label %7, !llfi_index !2730

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str134, i64 0, i64 0), i32 1) #3, !llfi_index !2731
  tail call void @exit(i32 1) #12, !llfi_index !2732
  unreachable, !llfi_index !2733

; <label>:7                                       ; preds = %0
  %8 = tail call i64 @quantum_memman(i64 16) #3, !llfi_index !2734
  %9 = shl i32 1, %1, !llfi_index !2735
  %10 = sext i32 %9 to i64, !llfi_index !2736
  %11 = tail call noalias i8* @calloc(i64 %10, i64 4) #3, !llfi_index !2737
  %12 = bitcast i8* %11 to i32*, !llfi_index !2738
  %13 = icmp eq i8* %11, null, !llfi_index !2739
  br i1 %13, label %14, label %16, !llfi_index !2740

; <label>:14                                      ; preds = %7
  %15 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str235, i64 0, i64 0), i32 %9) #3, !llfi_index !2741
  tail call void @exit(i32 1) #12, !llfi_index !2742
  unreachable, !llfi_index !2743

; <label>:16                                      ; preds = %7
  %17 = shl nsw i64 %10, 2, !llfi_index !2744
  %18 = tail call i64 @quantum_memman(i64 %17) #3, !llfi_index !2745
  %19 = getelementptr inbounds i8* %2, i64 8, !llfi_index !2746
  %20 = bitcast i8* %19 to i64*, !llfi_index !2747
  store i64 %initval, i64* %20, align 8, !tbaa !224, !llfi_index !2748
  %21 = bitcast i8* %2 to float*, !llfi_index !2749
  %22 = getelementptr inbounds i8* %2, i64 4, !llfi_index !2750
  %23 = bitcast i8* %22 to float*, !llfi_index !2751
  store float 1.000000e+00, float* %21, align 4, !llfi_index !2752
  store float 0.000000e+00, float* %23, align 4, !llfi_index !2753
  %24 = tail call i8* @getenv(i8* getelementptr inbounds ([9 x i8]* @.str336, i64 0, i64 0)) #3, !llfi_index !2754
  %25 = icmp eq i8* %24, null, !llfi_index !2755
  br i1 %25, label %28, label %26, !llfi_index !2756

; <label>:26                                      ; preds = %16
  tail call void (...)* bitcast (void ()* @quantum_objcode_start to void (...)*)() #3, !llfi_index !2757
  tail call void @quantum_objcode_file(i8* %24) #3, !llfi_index !2758
  %27 = tail call i32 @atexit(void ()* bitcast (void (i8*)* @quantum_objcode_exit to void ()*)) #3, !llfi_index !2759
  br label %28, !llfi_index !2760

; <label>:28                                      ; preds = %26, %16
  %29 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext 0, i64 %initval) #3, !llfi_index !2761
  %30 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 0, !llfi_index !2762
  store i32 %width, i32* %30, align 8, !llfi_index !2763
  %31 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 1, !llfi_index !2764
  store i32 1, i32* %31, align 4, !llfi_index !2765
  %32 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 2, !llfi_index !2766
  store i32 %1, i32* %32, align 8, !llfi_index !2767
  %33 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 3, !llfi_index !2768
  store %struct.quantum_reg_node_struct* %3, %struct.quantum_reg_node_struct** %33, align 8, !llfi_index !2769
  %34 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 4, !llfi_index !2770
  store i32* %12, i32** %34, align 8, !llfi_index !2771
  ret void, !llfi_index !2772
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #1

; Function Attrs: nounwind uwtable
define { i64, { float, float }* } @quantum_qureg2matrix(%struct.quantum_reg_struct* byval nocapture readonly align 8 %reg) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !2773
  %2 = load i32* %1, align 8, !tbaa !22, !llfi_index !2774
  %3 = shl i32 1, %2, !llfi_index !2775
  %4 = tail call { i64, { float, float }* } @quantum_new_matrix(i32 1, i32 %3) #3, !llfi_index !2776
  %5 = extractvalue { i64, { float, float }* } %4, 1, !llfi_index !2777
  %6 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !2778
  %7 = load i32* %6, align 4, !tbaa !195, !llfi_index !2779
  %8 = icmp sgt i32 %7, 0, !llfi_index !2780
  br i1 %8, label %.lr.ph, label %._crit_edge, !llfi_index !2781

.lr.ph:                                           ; preds = %0
  %9 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2782
  br label %10, !llfi_index !2783

; <label>:10                                      ; preds = %10, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %10 ], !llfi_index !2784
  %11 = load %struct.quantum_reg_node_struct** %9, align 8, !tbaa !200, !llfi_index !2785
  %12 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %indvars.iv, i32 0, i32 0, !llfi_index !2786
  %13 = load float* %12, align 4, !llfi_index !2787
  %14 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %indvars.iv, i32 0, i32 1, !llfi_index !2788
  %15 = load float* %14, align 4, !llfi_index !2789
  %16 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %indvars.iv, i32 1, !llfi_index !2790
  %17 = load i64* %16, align 8, !tbaa !224, !llfi_index !2791
  %18 = getelementptr inbounds { float, float }* %5, i64 %17, i32 0, !llfi_index !2792
  %19 = getelementptr inbounds { float, float }* %5, i64 %17, i32 1, !llfi_index !2793
  store float %13, float* %18, align 4, !llfi_index !2794
  store float %15, float* %19, align 4, !llfi_index !2795
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2796
  %20 = load i32* %6, align 4, !tbaa !195, !llfi_index !2797
  %21 = trunc i64 %indvars.iv.next to i32, !llfi_index !2798
  %22 = icmp slt i32 %21, %20, !llfi_index !2799
  br i1 %22, label %10, label %._crit_edge, !llfi_index !2800

._crit_edge:                                      ; preds = %10, %0
  ret { i64, { float, float }* } %4, !llfi_index !2801
}

; Function Attrs: nounwind uwtable
define void @quantum_destroy_hash(%struct.quantum_reg_struct* nocapture %reg) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !2802
  %2 = load i32** %1, align 8, !tbaa !869, !llfi_index !2803
  %3 = bitcast i32* %2 to i8*, !llfi_index !2804
  tail call void @free(i8* %3) #3, !llfi_index !2805
  %4 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !2806
  %5 = load i32* %4, align 4, !tbaa !864, !llfi_index !2807
  %6 = shl i32 -1, %5, !llfi_index !2808
  %7 = sext i32 %6 to i64, !llfi_index !2809
  %8 = shl nsw i64 %7, 2, !llfi_index !2810
  %9 = tail call i64 @quantum_memman(i64 %8) #3, !llfi_index !2811
  store i32* null, i32** %1, align 8, !tbaa !869, !llfi_index !2812
  ret void, !llfi_index !2813
}

; Function Attrs: nounwind uwtable
define void @quantum_delete_qureg(%struct.quantum_reg_struct* nocapture %reg) #0 {
  tail call void @quantum_destroy_hash(%struct.quantum_reg_struct* %reg), !llfi_index !2814
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2815
  %2 = load %struct.quantum_reg_node_struct** %1, align 8, !tbaa !200, !llfi_index !2816
  %3 = bitcast %struct.quantum_reg_node_struct* %2 to i8*, !llfi_index !2817
  tail call void @free(i8* %3) #3, !llfi_index !2818
  %4 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !2819
  %5 = load i32* %4, align 4, !tbaa !195, !llfi_index !2820
  %6 = sub nsw i32 0, %5, !llfi_index !2821
  %7 = sext i32 %6 to i64, !llfi_index !2822
  %8 = shl nsw i64 %7, 4, !llfi_index !2823
  %9 = tail call i64 @quantum_memman(i64 %8) #3, !llfi_index !2824
  store %struct.quantum_reg_node_struct* null, %struct.quantum_reg_node_struct** %1, align 8, !tbaa !200, !llfi_index !2825
  ret void, !llfi_index !2826
}

; Function Attrs: nounwind uwtable
define void @quantum_delete_qureg_hashpreserve(%struct.quantum_reg_struct* nocapture %reg) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2827
  %2 = load %struct.quantum_reg_node_struct** %1, align 8, !tbaa !200, !llfi_index !2828
  %3 = bitcast %struct.quantum_reg_node_struct* %2 to i8*, !llfi_index !2829
  tail call void @free(i8* %3) #3, !llfi_index !2830
  %4 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !2831
  %5 = load i32* %4, align 4, !tbaa !195, !llfi_index !2832
  %6 = sub nsw i32 0, %5, !llfi_index !2833
  %7 = sext i32 %6 to i64, !llfi_index !2834
  %8 = shl nsw i64 %7, 4, !llfi_index !2835
  %9 = tail call i64 @quantum_memman(i64 %8) #3, !llfi_index !2836
  store %struct.quantum_reg_node_struct* null, %struct.quantum_reg_node_struct** %1, align 8, !tbaa !200, !llfi_index !2837
  ret void, !llfi_index !2838
}

; Function Attrs: nounwind uwtable
define void @quantum_print_qureg(%struct.quantum_reg_struct* byval nocapture readonly align 8 %reg) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !2839
  %2 = load i32* %1, align 4, !tbaa !195, !llfi_index !2840
  %3 = icmp sgt i32 %2, 0, !llfi_index !2841
  br i1 %3, label %.lr.ph8, label %._crit_edge9, !llfi_index !2842

.lr.ph8:                                          ; preds = %0
  %4 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2843
  %5 = load %struct.quantum_reg_node_struct** %4, align 8, !tbaa !200, !llfi_index !2844
  %6 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !2845
  %7 = load i32* %6, align 8, !tbaa !22, !llfi_index !2846
  %8 = icmp sgt i32 %7, 0, !llfi_index !2847
  %9 = load i32* %1, align 4, !tbaa !195, !llfi_index !2848
  br label %10, !llfi_index !2849

; <label>:10                                      ; preds = %._crit_edge, %.lr.ph8
  %indvars.iv = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next, %._crit_edge ], !llfi_index !2850
  %11 = getelementptr inbounds %struct.quantum_reg_node_struct* %5, i64 %indvars.iv, i32 0, i32 0, !llfi_index !2851
  %12 = load float* %11, align 4, !llfi_index !2852
  %13 = getelementptr inbounds %struct.quantum_reg_node_struct* %5, i64 %indvars.iv, i32 0, i32 1, !llfi_index !2853
  %14 = load float* %13, align 4, !llfi_index !2854
  %15 = insertelement <2 x float> undef, float %12, i32 0, !llfi_index !2855
  %16 = insertelement <2 x float> %15, float %14, i32 1, !llfi_index !2856
  %17 = tail call fastcc float @quantum_real52(<2 x float> %16), !llfi_index !2857
  %18 = fpext float %17 to double, !llfi_index !2858
  %19 = tail call fastcc float @quantum_imag53(<2 x float> %16), !llfi_index !2859
  %20 = fpext float %19 to double, !llfi_index !2860
  %21 = getelementptr inbounds %struct.quantum_reg_node_struct* %5, i64 %indvars.iv, i32 1, !llfi_index !2861
  %22 = load i64* %21, align 8, !tbaa !224, !llfi_index !2862
  %23 = tail call fastcc float @quantum_prob_inline54(<2 x float> %16), !llfi_index !2863
  %24 = fpext float %23 to double, !llfi_index !2864
  %25 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str437, i64 0, i64 0), double %18, double %20, i64 %22, double %24) #3, !llfi_index !2865
  br i1 %8, label %.lr.ph, label %._crit_edge, !llfi_index !2866

.lr.ph:                                           ; preds = %10
  %26 = getelementptr inbounds %struct.quantum_reg_node_struct* %5, i64 %indvars.iv, i32 1, !llfi_index !2867
  br label %27, !llfi_index !2868

; <label>:27                                      ; preds = %31, %.lr.ph
  %j.05.in = phi i32 [ %7, %.lr.ph ], [ %j.05, %31 ], !llfi_index !2869
  %j.05 = add nsw i32 %j.05.in, -1, !llfi_index !2870
  %28 = srem i32 %j.05, 4, !llfi_index !2871
  %29 = icmp eq i32 %28, 3, !llfi_index !2872
  br i1 %29, label %30, label %31, !llfi_index !2873

; <label>:30                                      ; preds = %27
  %putchar3 = tail call i32 @putchar(i32 32) #3, !llfi_index !2874
  br label %31, !llfi_index !2875

; <label>:31                                      ; preds = %30, %27
  %32 = zext i32 %j.05 to i64, !llfi_index !2876
  %33 = shl i64 1, %32, !llfi_index !2877
  %34 = load i64* %26, align 8, !tbaa !224, !llfi_index !2878
  %35 = and i64 %34, %33, !llfi_index !2879
  %36 = icmp ne i64 %35, 0, !llfi_index !2880
  %37 = zext i1 %36 to i32, !llfi_index !2881
  %38 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str639, i64 0, i64 0), i32 %37) #3, !llfi_index !2882
  %39 = icmp sgt i32 %j.05, 0, !llfi_index !2883
  br i1 %39, label %27, label %._crit_edge, !llfi_index !2884

._crit_edge:                                      ; preds = %31, %10
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([3 x i8]* @str45, i64 0, i64 0)), !llfi_index !2885
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2886
  %40 = trunc i64 %indvars.iv.next to i32, !llfi_index !2887
  %41 = icmp slt i32 %40, %9, !llfi_index !2888
  br i1 %41, label %10, label %._crit_edge9, !llfi_index !2889

._crit_edge9:                                     ; preds = %._crit_edge, %0
  %putchar = tail call i32 @putchar(i32 10) #3, !llfi_index !2890
  ret void, !llfi_index !2891
}

; Function Attrs: nounwind uwtable
define void @quantum_print_expn(%struct.quantum_reg_struct* byval nocapture readonly align 8 %reg) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !2892
  %2 = load i32* %1, align 4, !tbaa !195, !llfi_index !2893
  %3 = icmp sgt i32 %2, 0, !llfi_index !2894
  br i1 %3, label %.lr.ph, label %._crit_edge, !llfi_index !2895

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2896
  %5 = load %struct.quantum_reg_node_struct** %4, align 8, !tbaa !200, !llfi_index !2897
  %6 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !2898
  %7 = load i32* %6, align 8, !tbaa !22, !llfi_index !2899
  %8 = sdiv i32 %7, 2, !llfi_index !2900
  %9 = load i32* %1, align 4, !tbaa !195, !llfi_index !2901
  br label %10, !llfi_index !2902

; <label>:10                                      ; preds = %10, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %10 ], !llfi_index !2903
  %11 = getelementptr inbounds %struct.quantum_reg_node_struct* %5, i64 %indvars.iv, i32 1, !llfi_index !2904
  %12 = load i64* %11, align 8, !tbaa !224, !llfi_index !2905
  %13 = trunc i64 %indvars.iv to i32, !llfi_index !2906
  %14 = shl i32 %13, %8, !llfi_index !2907
  %15 = sext i32 %14 to i64, !llfi_index !2908
  %16 = sub i64 %12, %15, !llfi_index !2909
  %17 = trunc i64 %indvars.iv to i32, !llfi_index !2910
  %18 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str942, i64 0, i64 0), i32 %17, i64 %16) #3, !llfi_index !2911
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2912
  %19 = trunc i64 %indvars.iv.next to i32, !llfi_index !2913
  %20 = icmp slt i32 %19, %9, !llfi_index !2914
  br i1 %20, label %10, label %._crit_edge, !llfi_index !2915

._crit_edge:                                      ; preds = %10, %0
  ret void, !llfi_index !2916
}

; Function Attrs: nounwind uwtable
define void @quantum_addscratch(i32 %bits, %struct.quantum_reg_struct* nocapture %reg) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !2917
  %2 = load i32* %1, align 4, !tbaa !22, !llfi_index !2918
  %3 = add nsw i32 %2, %bits, !llfi_index !2919
  store i32 %3, i32* %1, align 4, !tbaa !22, !llfi_index !2920
  %4 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !2921
  %5 = load i32* %4, align 4, !tbaa !195, !llfi_index !2922
  %6 = icmp sgt i32 %5, 0, !llfi_index !2923
  br i1 %6, label %.lr.ph, label %._crit_edge, !llfi_index !2924

.lr.ph:                                           ; preds = %0
  %7 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2925
  %8 = load %struct.quantum_reg_node_struct** %7, align 8, !tbaa !200, !llfi_index !2926
  %9 = zext i32 %bits to i64, !llfi_index !2927
  %10 = load i32* %4, align 4, !tbaa !195, !llfi_index !2928
  br label %11, !llfi_index !2929

; <label>:11                                      ; preds = %11, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %11 ], !llfi_index !2930
  %12 = getelementptr inbounds %struct.quantum_reg_node_struct* %8, i64 %indvars.iv, i32 1, !llfi_index !2931
  %13 = load i64* %12, align 8, !tbaa !224, !llfi_index !2932
  %14 = shl i64 %13, %9, !llfi_index !2933
  store i64 %14, i64* %12, align 8, !tbaa !224, !llfi_index !2934
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2935
  %15 = trunc i64 %indvars.iv.next to i32, !llfi_index !2936
  %16 = icmp slt i32 %15, %10, !llfi_index !2937
  br i1 %16, label %11, label %._crit_edge, !llfi_index !2938

._crit_edge:                                      ; preds = %11, %0
  ret void, !llfi_index !2939
}

; Function Attrs: nounwind uwtable
define void @quantum_print_hash(%struct.quantum_reg_struct* byval nocapture readonly align 8 %reg) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !2940
  %2 = load i32* %1, align 8, !tbaa !864, !llfi_index !2941
  %3 = icmp eq i32 %2, 31, !llfi_index !2942
  br i1 %3, label %._crit_edge, label %.lr.ph, !llfi_index !2943

.lr.ph:                                           ; preds = %0
  %4 = load i32* %1, align 8, !tbaa !864, !llfi_index !2944
  %5 = shl i32 1, %4, !llfi_index !2945
  %6 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !2946
  %7 = load i32** %6, align 8, !tbaa !869, !llfi_index !2947
  %8 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !2948
  %9 = load %struct.quantum_reg_node_struct** %8, align 8, !tbaa !200, !llfi_index !2949
  br label %10, !llfi_index !2950

; <label>:10                                      ; preds = %22, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %22 ], !llfi_index !2951
  %11 = trunc i64 %indvars.iv to i32, !llfi_index !2952
  %12 = icmp eq i32 %11, 0, !llfi_index !2953
  br i1 %12, label %22, label %13, !llfi_index !2954

; <label>:13                                      ; preds = %10
  %14 = getelementptr inbounds i32* %7, i64 %indvars.iv, !llfi_index !2955
  %15 = load i32* %14, align 4, !tbaa !1, !llfi_index !2956
  %16 = add nsw i32 %15, -1, !llfi_index !2957
  %17 = sext i32 %16 to i64, !llfi_index !2958
  %18 = getelementptr inbounds %struct.quantum_reg_node_struct* %9, i64 %17, i32 1, !llfi_index !2959
  %19 = load i64* %18, align 8, !tbaa !224, !llfi_index !2960
  %20 = trunc i64 %indvars.iv to i32, !llfi_index !2961
  %21 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str1043, i64 0, i64 0), i32 %20, i32 %16, i64 %19) #3, !llfi_index !2962
  br label %22, !llfi_index !2963

; <label>:22                                      ; preds = %13, %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !2964
  %23 = trunc i64 %indvars.iv.next to i32, !llfi_index !2965
  %24 = icmp slt i32 %23, %5, !llfi_index !2966
  br i1 %24, label %10, label %._crit_edge, !llfi_index !2967

._crit_edge:                                      ; preds = %22, %0
  ret void, !llfi_index !2968
}

; Function Attrs: nounwind uwtable
define void @quantum_kronecker(%struct.quantum_reg_struct* noalias nocapture sret %agg.result, %struct.quantum_reg_struct* nocapture readonly %reg1, %struct.quantum_reg_struct* nocapture readonly %reg2) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg1, i64 0, i32 0, !llfi_index !2969
  %2 = load i32* %1, align 4, !tbaa !22, !llfi_index !2970
  %3 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 0, !llfi_index !2971
  %4 = load i32* %3, align 4, !tbaa !22, !llfi_index !2972
  %5 = add nsw i32 %4, %2, !llfi_index !2973
  %6 = getelementptr inbounds %struct.quantum_reg_struct* %reg1, i64 0, i32 1, !llfi_index !2974
  %7 = load i32* %6, align 4, !tbaa !195, !llfi_index !2975
  %8 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 1, !llfi_index !2976
  %9 = load i32* %8, align 4, !tbaa !195, !llfi_index !2977
  %10 = mul nsw i32 %9, %7, !llfi_index !2978
  %11 = add nsw i32 %10, 2, !llfi_index !2979
  %12 = sext i32 %10 to i64, !llfi_index !2980
  %13 = tail call noalias i8* @calloc(i64 %12, i64 16) #3, !llfi_index !2981
  %14 = bitcast i8* %13 to %struct.quantum_reg_node_struct*, !llfi_index !2982
  %15 = icmp eq i8* %13, null, !llfi_index !2983
  br i1 %15, label %16, label %18, !llfi_index !2984

; <label>:16                                      ; preds = %0
  %17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str134, i64 0, i64 0), i32 %10) #3, !llfi_index !2985
  tail call void @exit(i32 1) #12, !llfi_index !2986
  unreachable, !llfi_index !2987

; <label>:18                                      ; preds = %0
  %19 = shl nsw i64 %12, 4, !llfi_index !2988
  %20 = tail call i64 @quantum_memman(i64 %19) #3, !llfi_index !2989
  %21 = shl i32 1, %11, !llfi_index !2990
  %22 = sext i32 %21 to i64, !llfi_index !2991
  %23 = tail call noalias i8* @calloc(i64 %22, i64 4) #3, !llfi_index !2992
  %24 = bitcast i8* %23 to i32*, !llfi_index !2993
  %25 = icmp eq i8* %23, null, !llfi_index !2994
  br i1 %25, label %26, label %28, !llfi_index !2995

; <label>:26                                      ; preds = %18
  %27 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str235, i64 0, i64 0), i32 %21) #3, !llfi_index !2996
  tail call void @exit(i32 1) #12, !llfi_index !2997
  unreachable, !llfi_index !2998

; <label>:28                                      ; preds = %18
  %29 = shl nsw i64 %22, 2, !llfi_index !2999
  %30 = tail call i64 @quantum_memman(i64 %29) #3, !llfi_index !3000
  %31 = load i32* %6, align 4, !tbaa !195, !llfi_index !3001
  %32 = icmp sgt i32 %31, 0, !llfi_index !3002
  br i1 %32, label %.preheader.lr.ph, label %._crit_edge5, !llfi_index !3003

.preheader.lr.ph:                                 ; preds = %28
  %33 = getelementptr inbounds %struct.quantum_reg_struct* %reg1, i64 0, i32 3, !llfi_index !3004
  %34 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 3, !llfi_index !3005
  br label %.preheader, !llfi_index !3006

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv6 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next7, %._crit_edge ], !llfi_index !3007
  %35 = load i32* %8, align 4, !tbaa !195, !llfi_index !3008
  %36 = icmp sgt i32 %35, 0, !llfi_index !3009
  br i1 %36, label %.lr.ph, label %._crit_edge, !llfi_index !3010

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ], !llfi_index !3011
  %37 = phi i32 [ %78, %.lr.ph ], [ %35, %.preheader ], !llfi_index !3012
  %38 = load %struct.quantum_reg_node_struct** %33, align 8, !tbaa !200, !llfi_index !3013
  %39 = getelementptr inbounds %struct.quantum_reg_node_struct* %38, i64 %indvars.iv6, i32 1, !llfi_index !3014
  %40 = load i64* %39, align 8, !tbaa !224, !llfi_index !3015
  %41 = load i32* %3, align 4, !tbaa !22, !llfi_index !3016
  %42 = zext i32 %41 to i64, !llfi_index !3017
  %43 = shl i64 %40, %42, !llfi_index !3018
  %44 = load %struct.quantum_reg_node_struct** %34, align 8, !tbaa !200, !llfi_index !3019
  %45 = getelementptr inbounds %struct.quantum_reg_node_struct* %44, i64 %indvars.iv, i32 1, !llfi_index !3020
  %46 = load i64* %45, align 8, !tbaa !224, !llfi_index !3021
  %47 = or i64 %43, %46, !llfi_index !3022
  %48 = trunc i64 %indvars.iv6 to i32, !llfi_index !3023
  %49 = mul nsw i32 %37, %48, !llfi_index !3024
  %50 = trunc i64 %indvars.iv to i32, !llfi_index !3025
  %51 = add nsw i32 %49, %50, !llfi_index !3026
  %52 = sext i32 %51 to i64, !llfi_index !3027
  %53 = getelementptr inbounds %struct.quantum_reg_node_struct* %14, i64 %52, i32 1, !llfi_index !3028
  store i64 %47, i64* %53, align 8, !tbaa !224, !llfi_index !3029
  %54 = load %struct.quantum_reg_node_struct** %33, align 8, !tbaa !200, !llfi_index !3030
  %55 = getelementptr inbounds %struct.quantum_reg_node_struct* %54, i64 %indvars.iv6, i32 0, i32 0, !llfi_index !3031
  %56 = load float* %55, align 4, !llfi_index !3032
  %57 = getelementptr inbounds %struct.quantum_reg_node_struct* %54, i64 %indvars.iv6, i32 0, i32 1, !llfi_index !3033
  %58 = load float* %57, align 4, !llfi_index !3034
  %59 = load %struct.quantum_reg_node_struct** %34, align 8, !tbaa !200, !llfi_index !3035
  %60 = getelementptr inbounds %struct.quantum_reg_node_struct* %59, i64 %indvars.iv, i32 0, i32 0, !llfi_index !3036
  %61 = load float* %60, align 4, !llfi_index !3037
  %62 = getelementptr inbounds %struct.quantum_reg_node_struct* %59, i64 %indvars.iv, i32 0, i32 1, !llfi_index !3038
  %63 = load float* %62, align 4, !llfi_index !3039
  %64 = fmul float %56, %61, !llfi_index !3040
  %65 = fmul float %58, %63, !llfi_index !3041
  %66 = fsub float %64, %65, !llfi_index !3042
  %67 = fmul float %58, %61, !llfi_index !3043
  %68 = fmul float %56, %63, !llfi_index !3044
  %69 = fadd float %67, %68, !llfi_index !3045
  %70 = load i32* %8, align 4, !tbaa !195, !llfi_index !3046
  %71 = trunc i64 %indvars.iv6 to i32, !llfi_index !3047
  %72 = mul nsw i32 %70, %71, !llfi_index !3048
  %73 = trunc i64 %indvars.iv to i32, !llfi_index !3049
  %74 = add nsw i32 %72, %73, !llfi_index !3050
  %75 = sext i32 %74 to i64, !llfi_index !3051
  %76 = getelementptr inbounds %struct.quantum_reg_node_struct* %14, i64 %75, i32 0, i32 0, !llfi_index !3052
  %77 = getelementptr inbounds %struct.quantum_reg_node_struct* %14, i64 %75, i32 0, i32 1, !llfi_index !3053
  store float %66, float* %76, align 4, !llfi_index !3054
  store float %69, float* %77, align 4, !llfi_index !3055
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3056
  %78 = load i32* %8, align 4, !tbaa !195, !llfi_index !3057
  %79 = trunc i64 %indvars.iv.next to i32, !llfi_index !3058
  %80 = icmp slt i32 %79, %78, !llfi_index !3059
  br i1 %80, label %.lr.ph, label %._crit_edge, !llfi_index !3060

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !llfi_index !3061
  %81 = load i32* %6, align 4, !tbaa !195, !llfi_index !3062
  %82 = trunc i64 %indvars.iv.next7 to i32, !llfi_index !3063
  %83 = icmp slt i32 %82, %81, !llfi_index !3064
  br i1 %83, label %.preheader, label %._crit_edge5, !llfi_index !3065

._crit_edge5:                                     ; preds = %._crit_edge, %28
  %84 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 0, !llfi_index !3066
  store i32 %5, i32* %84, align 8, !llfi_index !3067
  %85 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 1, !llfi_index !3068
  store i32 %10, i32* %85, align 4, !llfi_index !3069
  %86 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 2, !llfi_index !3070
  store i32 %11, i32* %86, align 8, !llfi_index !3071
  %87 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 3, !llfi_index !3072
  store %struct.quantum_reg_node_struct* %14, %struct.quantum_reg_node_struct** %87, align 8, !llfi_index !3073
  %88 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 4, !llfi_index !3074
  store i32* %24, i32** %88, align 8, !llfi_index !3075
  ret void, !llfi_index !3076
}

; Function Attrs: nounwind uwtable
define void @quantum_state_collapse(%struct.quantum_reg_struct* noalias nocapture sret %agg.result, i32 %pos, i32 %value, %struct.quantum_reg_struct* byval nocapture readonly align 8 %reg) #0 {
  %1 = zext i32 %pos to i64, !llfi_index !3077
  %2 = shl i64 1, %1, !llfi_index !3078
  %3 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !3079
  %4 = load i32* %3, align 4, !tbaa !195, !llfi_index !3080
  %5 = icmp sgt i32 %4, 0, !llfi_index !3081
  br i1 %5, label %.lr.ph28, label %._crit_edge29, !llfi_index !3082

.lr.ph28:                                         ; preds = %0
  %6 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3083
  %7 = load %struct.quantum_reg_node_struct** %6, align 8, !tbaa !200, !llfi_index !3084
  %8 = icmp ne i32 %value, 0, !llfi_index !3085
  %9 = load i32* %3, align 4, !tbaa !195, !llfi_index !3086
  br label %10, !llfi_index !3087

; <label>:10                                      ; preds = %26, %.lr.ph28
  %indvars.iv36 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next37, %26 ], !llfi_index !3088
  %size.025 = phi i32 [ 0, %.lr.ph28 ], [ %size.1, %26 ], !llfi_index !3089
  %d.024 = phi double [ 0.000000e+00, %.lr.ph28 ], [ %d.1, %26 ], !llfi_index !3090
  %11 = getelementptr inbounds %struct.quantum_reg_node_struct* %7, i64 %indvars.iv36, i32 1, !llfi_index !3091
  %12 = load i64* %11, align 8, !tbaa !224, !llfi_index !3092
  %13 = and i64 %12, %2, !llfi_index !3093
  %14 = icmp ne i64 %13, 0, !llfi_index !3094
  %or.cond9 = xor i1 %14, %8, !llfi_index !3095
  br i1 %or.cond9, label %26, label %15, !llfi_index !3096

; <label>:15                                      ; preds = %10
  %16 = getelementptr inbounds %struct.quantum_reg_node_struct* %7, i64 %indvars.iv36, i32 0, i32 0, !llfi_index !3097
  %17 = load float* %16, align 4, !llfi_index !3098
  %18 = getelementptr inbounds %struct.quantum_reg_node_struct* %7, i64 %indvars.iv36, i32 0, i32 1, !llfi_index !3099
  %19 = load float* %18, align 4, !llfi_index !3100
  %20 = insertelement <2 x float> undef, float %17, i32 0, !llfi_index !3101
  %21 = insertelement <2 x float> %20, float %19, i32 1, !llfi_index !3102
  %22 = tail call fastcc float @quantum_prob_inline54(<2 x float> %21), !llfi_index !3103
  %23 = fpext float %22 to double, !llfi_index !3104
  %24 = fadd double %d.024, %23, !llfi_index !3105
  %25 = add nsw i32 %size.025, 1, !llfi_index !3106
  br label %26, !llfi_index !3107

; <label>:26                                      ; preds = %15, %10
  %d.1 = phi double [ %24, %15 ], [ %d.024, %10 ], !llfi_index !3108
  %size.1 = phi i32 [ %25, %15 ], [ %size.025, %10 ], !llfi_index !3109
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1, !llfi_index !3110
  %27 = trunc i64 %indvars.iv.next37 to i32, !llfi_index !3111
  %28 = icmp slt i32 %27, %9, !llfi_index !3112
  br i1 %28, label %10, label %._crit_edge29, !llfi_index !3113

._crit_edge29:                                    ; preds = %26, %0
  %size.0.lcssa = phi i32 [ 0, %0 ], [ %size.1, %26 ], !llfi_index !3114
  %d.0.lcssa = phi double [ 0.000000e+00, %0 ], [ %d.1, %26 ], !llfi_index !3115
  %29 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !3116
  %30 = load i32* %29, align 8, !tbaa !22, !llfi_index !3117
  %31 = add nsw i32 %30, -1, !llfi_index !3118
  %32 = sext i32 %size.0.lcssa to i64, !llfi_index !3119
  %33 = tail call noalias i8* @calloc(i64 %32, i64 16) #3, !llfi_index !3120
  %34 = bitcast i8* %33 to %struct.quantum_reg_node_struct*, !llfi_index !3121
  %35 = icmp eq i8* %33, null, !llfi_index !3122
  br i1 %35, label %36, label %38, !llfi_index !3123

; <label>:36                                      ; preds = %._crit_edge29
  %37 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([50 x i8]* @.str1144, i64 0, i64 0), i32 %size.0.lcssa) #3, !llfi_index !3124
  tail call void @exit(i32 1) #12, !llfi_index !3125
  unreachable, !llfi_index !3126

; <label>:38                                      ; preds = %._crit_edge29
  %39 = shl nsw i64 %32, 4, !llfi_index !3127
  %40 = tail call i64 @quantum_memman(i64 %39) #3, !llfi_index !3128
  %41 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !3129
  %42 = load i32* %41, align 8, !tbaa !864, !llfi_index !3130
  %43 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !3131
  %44 = load i32** %43, align 8, !tbaa !869, !llfi_index !3132
  %45 = load i32* %3, align 4, !tbaa !195, !llfi_index !3133
  %46 = icmp sgt i32 %45, 0, !llfi_index !3134
  br i1 %46, label %.lr.ph22, label %._crit_edge23, !llfi_index !3135

.lr.ph22:                                         ; preds = %38
  %47 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3136
  %48 = load %struct.quantum_reg_node_struct** %47, align 8, !tbaa !200, !llfi_index !3137
  %49 = icmp ne i32 %value, 0, !llfi_index !3138
  %50 = load i32* %3, align 4, !tbaa !195, !llfi_index !3139
  %51 = icmp sgt i32 %pos, 0, !llfi_index !3140
  %52 = icmp slt i32 %pos, 63, !llfi_index !3141
  br label %53, !llfi_index !3142

; <label>:53                                      ; preds = %98, %.lr.ph22
  %indvars.iv34 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next35, %98 ], !llfi_index !3143
  %j.019 = phi i32 [ 0, %.lr.ph22 ], [ %j.1, %98 ], !llfi_index !3144
  %54 = getelementptr inbounds %struct.quantum_reg_node_struct* %48, i64 %indvars.iv34, i32 1, !llfi_index !3145
  %55 = load i64* %54, align 8, !tbaa !224, !llfi_index !3146
  %56 = and i64 %55, %2, !llfi_index !3147
  %57 = icmp ne i64 %56, 0, !llfi_index !3148
  %or.cond10 = xor i1 %57, %49, !llfi_index !3149
  br i1 %or.cond10, label %98, label %.preheader, !llfi_index !3150

.preheader:                                       ; preds = %53
  br i1 %51, label %.lr.ph, label %._crit_edge, !llfi_index !3151

.lr.ph:                                           ; preds = %.lr.ph, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ], !llfi_index !3152
  %rpat.011 = phi i64 [ %59, %.lr.ph ], [ 0, %.preheader ], !llfi_index !3153
  %58 = shl i64 1, %indvars.iv, !llfi_index !3154
  %59 = add i64 %58, %rpat.011, !llfi_index !3155
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3156
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !3157
  %exitcond = icmp eq i32 %lftr.wideiv, %pos, !llfi_index !3158
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !3159

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %rpat.0.lcssa = phi i64 [ 0, %.preheader ], [ %59, %.lr.ph ], !llfi_index !3160
  %60 = getelementptr inbounds %struct.quantum_reg_node_struct* %48, i64 %indvars.iv34, i32 1, !llfi_index !3161
  %61 = load i64* %60, align 8, !tbaa !224, !llfi_index !3162
  %62 = and i64 %61, %rpat.0.lcssa, !llfi_index !3163
  br i1 %52, label %.lr.ph16, label %._crit_edge17, !llfi_index !3164

.lr.ph16:                                         ; preds = %.lr.ph16, %._crit_edge
  %k.114 = phi i32 [ %66, %.lr.ph16 ], [ 63, %._crit_edge ], !llfi_index !3165
  %lpat.013 = phi i64 [ %65, %.lr.ph16 ], [ 0, %._crit_edge ], !llfi_index !3166
  %63 = zext i32 %k.114 to i64, !llfi_index !3167
  %64 = shl i64 1, %63, !llfi_index !3168
  %65 = add i64 %64, %lpat.013, !llfi_index !3169
  %66 = add nsw i32 %k.114, -1, !llfi_index !3170
  %67 = icmp sgt i32 %66, %pos, !llfi_index !3171
  br i1 %67, label %.lr.ph16, label %._crit_edge17, !llfi_index !3172

._crit_edge17:                                    ; preds = %.lr.ph16, %._crit_edge
  %lpat.0.lcssa = phi i64 [ 0, %._crit_edge ], [ %65, %.lr.ph16 ], !llfi_index !3173
  %68 = getelementptr inbounds %struct.quantum_reg_node_struct* %48, i64 %indvars.iv34, i32 1, !llfi_index !3174
  %69 = load i64* %68, align 8, !tbaa !224, !llfi_index !3175
  %70 = and i64 %69, %lpat.0.lcssa, !llfi_index !3176
  %71 = lshr i64 %70, 1, !llfi_index !3177
  %72 = or i64 %71, %62, !llfi_index !3178
  %73 = sext i32 %j.019 to i64, !llfi_index !3179
  %74 = getelementptr inbounds %struct.quantum_reg_node_struct* %34, i64 %73, i32 1, !llfi_index !3180
  store i64 %72, i64* %74, align 8, !tbaa !224, !llfi_index !3181
  %75 = getelementptr inbounds %struct.quantum_reg_node_struct* %48, i64 %indvars.iv34, i32 0, i32 0, !llfi_index !3182
  %76 = load float* %75, align 4, !llfi_index !3183
  %77 = getelementptr inbounds %struct.quantum_reg_node_struct* %48, i64 %indvars.iv34, i32 0, i32 1, !llfi_index !3184
  %78 = load float* %77, align 4, !llfi_index !3185
  %79 = fmul float %78, 0.000000e+00, !llfi_index !3186
  %80 = fsub float %76, %79, !llfi_index !3187
  %81 = fmul float %76, 0.000000e+00, !llfi_index !3188
  %82 = fadd float %78, %81, !llfi_index !3189
  %83 = tail call double @sqrt(double %d.0.lcssa) #3, !llfi_index !3190
  %84 = fptrunc double %83 to float, !llfi_index !3191
  %85 = fmul float %80, %84, !llfi_index !3192
  %86 = fmul float %82, 0.000000e+00, !llfi_index !3193
  %87 = fadd float %86, %85, !llfi_index !3194
  %88 = fmul float %84, %84, !llfi_index !3195
  %89 = fadd float %88, 0.000000e+00, !llfi_index !3196
  %90 = fmul float %82, %84, !llfi_index !3197
  %91 = fmul float %80, 0.000000e+00, !llfi_index !3198
  %92 = fsub float %90, %91, !llfi_index !3199
  %93 = fdiv float %87, %89, !llfi_index !3200
  %94 = fdiv float %92, %89, !llfi_index !3201
  %95 = getelementptr inbounds %struct.quantum_reg_node_struct* %34, i64 %73, i32 0, i32 0, !llfi_index !3202
  %96 = getelementptr inbounds %struct.quantum_reg_node_struct* %34, i64 %73, i32 0, i32 1, !llfi_index !3203
  store float %93, float* %95, align 4, !llfi_index !3204
  store float %94, float* %96, align 4, !llfi_index !3205
  %97 = add nsw i32 %j.019, 1, !llfi_index !3206
  br label %98, !llfi_index !3207

; <label>:98                                      ; preds = %._crit_edge17, %53
  %j.1 = phi i32 [ %97, %._crit_edge17 ], [ %j.019, %53 ], !llfi_index !3208
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1, !llfi_index !3209
  %99 = trunc i64 %indvars.iv.next35 to i32, !llfi_index !3210
  %100 = icmp slt i32 %99, %50, !llfi_index !3211
  br i1 %100, label %53, label %._crit_edge23, !llfi_index !3212

._crit_edge23:                                    ; preds = %98, %38
  %101 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 0, !llfi_index !3213
  store i32 %31, i32* %101, align 8, !llfi_index !3214
  %102 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 1, !llfi_index !3215
  store i32 %size.0.lcssa, i32* %102, align 4, !llfi_index !3216
  %103 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 2, !llfi_index !3217
  store i32 %42, i32* %103, align 8, !llfi_index !3218
  %104 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 3, !llfi_index !3219
  store %struct.quantum_reg_node_struct* %34, %struct.quantum_reg_node_struct** %104, align 8, !llfi_index !3220
  %105 = getelementptr inbounds %struct.quantum_reg_struct* %agg.result, i64 0, i32 4, !llfi_index !3221
  store i32* %44, i32** %105, align 8, !llfi_index !3222
  ret void, !llfi_index !3223
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define <2 x float> @quantum_dot_product(%struct.quantum_reg_struct* nocapture readonly %reg1, %struct.quantum_reg_struct* nocapture readonly %reg2) #0 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 2, !llfi_index !3224
  %2 = load i32* %1, align 4, !tbaa !864, !llfi_index !3225
  %3 = icmp eq i32 %2, 31, !llfi_index !3226
  br i1 %3, label %.preheader7, label %.lr.ph12, !llfi_index !3227

.lr.ph12:                                         ; preds = %0
  %4 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 4, !llfi_index !3228
  %5 = load i32** %4, align 8, !tbaa !869, !llfi_index !3229
  br label %10, !llfi_index !3230

.preheader7:                                      ; preds = %10, %0
  %6 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 1, !llfi_index !3231
  %7 = load i32* %6, align 4, !tbaa !195, !llfi_index !3232
  %8 = icmp sgt i32 %7, 0, !llfi_index !3233
  br i1 %8, label %.lr.ph9, label %.preheader, !llfi_index !3234

.lr.ph9:                                          ; preds = %.preheader7
  %9 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 3, !llfi_index !3235
  br label %21, !llfi_index !3236

; <label>:10                                      ; preds = %10, %.lr.ph12
  %indvars.iv15 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next16, %10 ], !llfi_index !3237
  %11 = getelementptr inbounds i32* %5, i64 %indvars.iv15, !llfi_index !3238
  store i32 0, i32* %11, align 4, !tbaa !1, !llfi_index !3239
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !llfi_index !3240
  %12 = load i32* %1, align 4, !tbaa !864, !llfi_index !3241
  %13 = shl i32 1, %12, !llfi_index !3242
  %14 = trunc i64 %indvars.iv.next16 to i32, !llfi_index !3243
  %15 = icmp slt i32 %14, %13, !llfi_index !3244
  br i1 %15, label %10, label %.preheader7, !llfi_index !3245

.preheader:                                       ; preds = %21, %.preheader7
  %16 = getelementptr inbounds %struct.quantum_reg_struct* %reg1, i64 0, i32 1, !llfi_index !3246
  %17 = load i32* %16, align 4, !tbaa !195, !llfi_index !3247
  %18 = icmp sgt i32 %17, 0, !llfi_index !3248
  br i1 %18, label %.lr.ph, label %._crit_edge, !llfi_index !3249

.lr.ph:                                           ; preds = %.preheader
  %19 = getelementptr inbounds %struct.quantum_reg_struct* %reg1, i64 0, i32 3, !llfi_index !3250
  %20 = getelementptr inbounds %struct.quantum_reg_struct* %reg2, i64 0, i32 3, !llfi_index !3251
  br label %29, !llfi_index !3252

; <label>:21                                      ; preds = %21, %.lr.ph9
  %indvars.iv13 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next14, %21 ], !llfi_index !3253
  %22 = load %struct.quantum_reg_node_struct** %9, align 8, !tbaa !200, !llfi_index !3254
  %23 = getelementptr inbounds %struct.quantum_reg_node_struct* %22, i64 %indvars.iv13, i32 1, !llfi_index !3255
  %24 = load i64* %23, align 8, !tbaa !224, !llfi_index !3256
  %25 = trunc i64 %indvars.iv13 to i32, !llfi_index !3257
  tail call fastcc void @quantum_add_hash55(i64 %24, i32 %25, %struct.quantum_reg_struct* %reg2), !llfi_index !3258
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !llfi_index !3259
  %26 = load i32* %6, align 4, !tbaa !195, !llfi_index !3260
  %27 = trunc i64 %indvars.iv.next14 to i32, !llfi_index !3261
  %28 = icmp slt i32 %27, %26, !llfi_index !3262
  br i1 %28, label %21, label %.preheader, !llfi_index !3263

; <label>:29                                      ; preds = %59, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %59 ], !llfi_index !3264
  %f.sroa.4.04 = phi float [ 0.000000e+00, %.lr.ph ], [ %f.sroa.4.1, %59 ], !llfi_index !3265
  %f.sroa.0.03 = phi float [ 0.000000e+00, %.lr.ph ], [ %f.sroa.0.1, %59 ], !llfi_index !3266
  %30 = load %struct.quantum_reg_node_struct** %19, align 8, !tbaa !200, !llfi_index !3267
  %31 = getelementptr inbounds %struct.quantum_reg_node_struct* %30, i64 %indvars.iv, i32 1, !llfi_index !3268
  %32 = load i64* %31, align 8, !tbaa !224, !llfi_index !3269
  %33 = tail call fastcc i32 @quantum_get_state56(i64 %32, %struct.quantum_reg_struct* byval align 8 %reg2), !llfi_index !3270
  %34 = icmp sgt i32 %33, -1, !llfi_index !3271
  br i1 %34, label %35, label %59, !llfi_index !3272

; <label>:35                                      ; preds = %29
  %36 = getelementptr inbounds %struct.quantum_reg_node_struct* %30, i64 %indvars.iv, i32 0, i32 0, !llfi_index !3273
  %37 = load float* %36, align 4, !llfi_index !3274
  %38 = getelementptr inbounds %struct.quantum_reg_node_struct* %30, i64 %indvars.iv, i32 0, i32 1, !llfi_index !3275
  %39 = load float* %38, align 4, !llfi_index !3276
  %40 = insertelement <2 x float> undef, float %37, i32 0, !llfi_index !3277
  %41 = insertelement <2 x float> %40, float %39, i32 1, !llfi_index !3278
  %42 = tail call <2 x float> @quantum_conj(<2 x float> %41) #3, !llfi_index !3279
  %43 = extractelement <2 x float> %42, i32 0, !llfi_index !3280
  %44 = extractelement <2 x float> %42, i32 1, !llfi_index !3281
  %45 = sext i32 %33 to i64, !llfi_index !3282
  %46 = load %struct.quantum_reg_node_struct** %20, align 8, !tbaa !200, !llfi_index !3283
  %47 = getelementptr inbounds %struct.quantum_reg_node_struct* %46, i64 %45, i32 0, i32 0, !llfi_index !3284
  %48 = load float* %47, align 4, !llfi_index !3285
  %49 = getelementptr inbounds %struct.quantum_reg_node_struct* %46, i64 %45, i32 0, i32 1, !llfi_index !3286
  %50 = load float* %49, align 4, !llfi_index !3287
  %51 = fmul float %43, %48, !llfi_index !3288
  %52 = fmul float %44, %50, !llfi_index !3289
  %53 = fsub float %51, %52, !llfi_index !3290
  %54 = fmul float %44, %48, !llfi_index !3291
  %55 = fmul float %43, %50, !llfi_index !3292
  %56 = fadd float %54, %55, !llfi_index !3293
  %57 = fadd float %f.sroa.0.03, %53, !llfi_index !3294
  %58 = fadd float %f.sroa.4.04, %56, !llfi_index !3295
  br label %59, !llfi_index !3296

; <label>:59                                      ; preds = %35, %29
  %f.sroa.0.1 = phi float [ %57, %35 ], [ %f.sroa.0.03, %29 ], !llfi_index !3297
  %f.sroa.4.1 = phi float [ %58, %35 ], [ %f.sroa.4.04, %29 ], !llfi_index !3298
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3299
  %60 = load i32* %16, align 4, !tbaa !195, !llfi_index !3300
  %61 = trunc i64 %indvars.iv.next to i32, !llfi_index !3301
  %62 = icmp slt i32 %61, %60, !llfi_index !3302
  br i1 %62, label %29, label %._crit_edge, !llfi_index !3303

._crit_edge:                                      ; preds = %59, %.preheader
  %f.sroa.4.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %f.sroa.4.1, %59 ], !llfi_index !3304
  %f.sroa.0.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %f.sroa.0.1, %59 ], !llfi_index !3305
  %63 = insertelement <2 x float> undef, float %f.sroa.0.0.lcssa, i32 0, !llfi_index !3306
  %64 = insertelement <2 x float> %63, float %f.sroa.4.0.lcssa, i32 1, !llfi_index !3307
  ret <2 x float> %64, !llfi_index !3308
}

; Function Attrs: nounwind
declare i32 @putchar(i32) #3

; Function Attrs: inlinehint nounwind readnone uwtable
define internal fastcc float @quantum_real52(<2 x float> %a.coerce) #6 {
  %1 = extractelement <2 x float> %a.coerce, i32 0, !llfi_index !3309
  ret float %1, !llfi_index !3310
}

; Function Attrs: inlinehint nounwind readnone uwtable
define internal fastcc float @quantum_imag53(<2 x float> %a.coerce) #6 {
  %1 = extractelement <2 x float> %a.coerce, i32 1, !llfi_index !3311
  ret float %1, !llfi_index !3312
}

; Function Attrs: inlinehint nounwind readnone uwtable
define internal fastcc float @quantum_prob_inline54(<2 x float> %a.coerce) #6 {
  %1 = tail call fastcc float @quantum_real52(<2 x float> %a.coerce), !llfi_index !3313
  %2 = tail call fastcc float @quantum_imag53(<2 x float> %a.coerce), !llfi_index !3314
  %3 = fmul float %1, %1, !llfi_index !3315
  %4 = fmul float %2, %2, !llfi_index !3316
  %5 = fadd float %3, %4, !llfi_index !3317
  ret float %5, !llfi_index !3318
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @quantum_add_hash55(i64 %a, i32 %pos, %struct.quantum_reg_struct* nocapture readonly %reg) #5 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !3319
  %2 = load i32* %1, align 4, !tbaa !864, !llfi_index !3320
  %3 = tail call fastcc i32 @quantum_hash6457(i64 %a, i32 %2), !llfi_index !3321
  %4 = sext i32 %3 to i64, !llfi_index !3322
  %5 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !3323
  %6 = load i32** %5, align 8, !tbaa !869, !llfi_index !3324
  %7 = getelementptr inbounds i32* %6, i64 %4, !llfi_index !3325
  %8 = load i32* %7, align 4, !tbaa !1, !llfi_index !3326
  %9 = icmp eq i32 %8, 0, !llfi_index !3327
  br i1 %9, label %._crit_edge, label %.lr.ph, !llfi_index !3328

.lr.ph:                                           ; preds = %0
  %10 = load i32* %1, align 4, !tbaa !864, !llfi_index !3329
  %11 = shl i32 1, %10, !llfi_index !3330
  %12 = load i32** %5, align 8, !tbaa !869, !llfi_index !3331
  br label %13, !llfi_index !3332

; <label>:13                                      ; preds = %13, %.lr.ph
  %i.01 = phi i32 [ %3, %.lr.ph ], [ %., %13 ], !llfi_index !3333
  %14 = add nsw i32 %i.01, 1, !llfi_index !3334
  %15 = icmp eq i32 %14, %11, !llfi_index !3335
  %. = select i1 %15, i32 0, i32 %14, !llfi_index !3336
  %16 = sext i32 %. to i64, !llfi_index !3337
  %17 = getelementptr inbounds i32* %12, i64 %16, !llfi_index !3338
  %18 = load i32* %17, align 4, !tbaa !1, !llfi_index !3339
  %19 = icmp eq i32 %18, 0, !llfi_index !3340
  br i1 %19, label %._crit_edge, label %13, !llfi_index !3341

._crit_edge:                                      ; preds = %13, %0
  %.lcssa = phi i32* [ %7, %0 ], [ %17, %13 ], !llfi_index !3342
  %20 = add nsw i32 %pos, 1, !llfi_index !3343
  store i32 %20, i32* %.lcssa, align 4, !tbaa !1, !llfi_index !3344
  ret void, !llfi_index !3345
}

; Function Attrs: inlinehint nounwind readonly uwtable
define internal fastcc i32 @quantum_get_state56(i64 %a, %struct.quantum_reg_struct* byval nocapture readonly align 8 %reg) #4 {
  %1 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !3346
  %2 = load i32* %1, align 8, !tbaa !864, !llfi_index !3347
  %3 = tail call fastcc i32 @quantum_hash6457(i64 %a, i32 %2), !llfi_index !3348
  %4 = sext i32 %3 to i64, !llfi_index !3349
  %5 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !3350
  %6 = load i32** %5, align 8, !tbaa !869, !llfi_index !3351
  %7 = getelementptr inbounds i32* %6, i64 %4, !llfi_index !3352
  %8 = load i32* %7, align 4, !tbaa !1, !llfi_index !3353
  %9 = icmp eq i32 %8, 0, !llfi_index !3354
  br i1 %9, label %split2, label %.lr.ph, !llfi_index !3355

.lr.ph:                                           ; preds = %0
  %10 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3356
  %11 = load %struct.quantum_reg_node_struct** %10, align 8, !tbaa !200, !llfi_index !3357
  %12 = load i32* %1, align 8, !tbaa !864, !llfi_index !3358
  %13 = shl i32 1, %12, !llfi_index !3359
  %14 = load i32** %5, align 8, !tbaa !869, !llfi_index !3360
  br label %15, !llfi_index !3361

; <label>:15                                      ; preds = %22, %.lr.ph
  %16 = phi i32 [ %8, %.lr.ph ], [ %27, %22 ], !llfi_index !3362
  %i.01 = phi i32 [ %3, %.lr.ph ], [ %., %22 ], !llfi_index !3363
  %17 = add nsw i32 %16, -1, !llfi_index !3364
  %18 = sext i32 %17 to i64, !llfi_index !3365
  %19 = getelementptr inbounds %struct.quantum_reg_node_struct* %11, i64 %18, i32 1, !llfi_index !3366
  %20 = load i64* %19, align 8, !tbaa !224, !llfi_index !3367
  %21 = icmp eq i64 %20, %a, !llfi_index !3368
  br i1 %21, label %split2, label %22, !llfi_index !3369

; <label>:22                                      ; preds = %15
  %23 = add nsw i32 %i.01, 1, !llfi_index !3370
  %24 = icmp eq i32 %23, %13, !llfi_index !3371
  %. = select i1 %24, i32 0, i32 %23, !llfi_index !3372
  %25 = sext i32 %. to i64, !llfi_index !3373
  %26 = getelementptr inbounds i32* %14, i64 %25, !llfi_index !3374
  %27 = load i32* %26, align 4, !tbaa !1, !llfi_index !3375
  %28 = icmp eq i32 %27, 0, !llfi_index !3376
  br i1 %28, label %split2, label %15, !llfi_index !3377

split2:                                           ; preds = %22, %15, %0
  %.0 = phi i32 [ -1, %0 ], [ %17, %15 ], [ -1, %22 ], !llfi_index !3378
  ret i32 %.0, !llfi_index !3379
}

; Function Attrs: inlinehint nounwind readnone uwtable
define internal fastcc i32 @quantum_hash6457(i64 %key, i32 %width) #6 {
  %1 = lshr i64 %key, 32, !llfi_index !3380
  %key.masked = and i64 %key, 4294967295, !llfi_index !3381
  %2 = xor i64 %1, %key.masked, !llfi_index !3382
  %3 = mul i64 %2, 2654404609, !llfi_index !3383
  %4 = trunc i64 %3 to i32, !llfi_index !3384
  %5 = sub nsw i32 32, %width, !llfi_index !3385
  %6 = lshr i32 %4, %5, !llfi_index !3386
  ret i32 %6, !llfi_index !3387
}

; Function Attrs: nounwind uwtable
define i64 @quantum_memman(i64 %change) #0 {
  %1 = load i64* @quantum_memman.mem, align 8, !tbaa !3388, !llfi_index !3390
  %2 = add nsw i64 %1, %change, !llfi_index !3391
  store i64 %2, i64* @quantum_memman.mem, align 8, !tbaa !3388, !llfi_index !3392
  %3 = load i64* @quantum_memman.max, align 8, !tbaa !3388, !llfi_index !3393
  %4 = icmp sgt i64 %2, %3, !llfi_index !3394
  br i1 %4, label %5, label %6, !llfi_index !3395

; <label>:5                                       ; preds = %0
  store i64 %2, i64* @quantum_memman.max, align 8, !tbaa !3388, !llfi_index !3396
  br label %6, !llfi_index !3397

; <label>:6                                       ; preds = %5, %0
  %7 = load i64* @quantum_memman.mem, align 8, !tbaa !3388, !llfi_index !3398
  ret i64 %7, !llfi_index !3399
}

; Function Attrs: nounwind uwtable
define { i64, { float, float }* } @quantum_new_matrix(i32 %cols, i32 %rows) #0 {
  %1 = mul nsw i32 %rows, %cols, !llfi_index !3400
  %2 = sext i32 %1 to i64, !llfi_index !3401
  %3 = tail call noalias i8* @calloc(i64 %2, i64 8) #3, !llfi_index !3402
  %4 = icmp eq i8* %3, null, !llfi_index !3403
  br i1 %4, label %5, label %7, !llfi_index !3404

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str58, i64 0, i64 0), i32 %rows, i32 %cols) #3, !llfi_index !3405
  tail call void @exit(i32 1) #12, !llfi_index !3406
  unreachable, !llfi_index !3407

; <label>:7                                       ; preds = %0
  %8 = bitcast i8* %3 to { float, float }*, !llfi_index !3408
  %9 = sext i32 %cols to i64, !llfi_index !3409
  %10 = shl nsw i64 %9, 3, !llfi_index !3410
  %11 = sext i32 %rows to i64, !llfi_index !3411
  %12 = mul i64 %10, %11, !llfi_index !3412
  %13 = tail call i64 @quantum_memman(i64 %12), !llfi_index !3413
  %14 = zext i32 %rows to i64, !llfi_index !3414
  %15 = zext i32 %cols to i64, !llfi_index !3415
  %16 = shl nuw i64 %15, 32, !llfi_index !3416
  %17 = or i64 %14, %16, !llfi_index !3417
  %18 = insertvalue { i64, { float, float }* } undef, i64 %17, 0, !llfi_index !3418
  %19 = insertvalue { i64, { float, float }* } %18, { float, float }* %8, 1, !llfi_index !3419
  ret { i64, { float, float }* } %19, !llfi_index !3420
}

; Function Attrs: nounwind uwtable
define void @quantum_delete_matrix(%struct.quantum_matrix_struct* nocapture %m) #0 {
  %1 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 2, !llfi_index !3421
  %2 = load { float, float }** %1, align 8, !tbaa !1795, !llfi_index !3422
  %3 = bitcast { float, float }* %2 to i8*, !llfi_index !3423
  tail call void @free(i8* %3) #3, !llfi_index !3424
  %4 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 1, !llfi_index !3425
  %5 = load i32* %4, align 4, !tbaa !2625, !llfi_index !3426
  %6 = sext i32 %5 to i64, !llfi_index !3427
  %7 = mul i64 %6, -8, !llfi_index !3428
  %8 = getelementptr inbounds %struct.quantum_matrix_struct* %m, i64 0, i32 0, !llfi_index !3429
  %9 = load i32* %8, align 4, !tbaa !2630, !llfi_index !3430
  %10 = sext i32 %9 to i64, !llfi_index !3431
  %11 = mul i64 %7, %10, !llfi_index !3432
  %12 = tail call i64 @quantum_memman(i64 %11), !llfi_index !3433
  store { float, float }* null, { float, float }** %1, align 8, !tbaa !1795, !llfi_index !3434
  ret void, !llfi_index !3435
}

; Function Attrs: nounwind uwtable
define void @quantum_print_matrix(i64 %m.coerce0, { float, float }* nocapture readonly %m.coerce1) #0 {
  %1 = trunc i64 %m.coerce0 to i32, !llfi_index !3436
  br label %2, !llfi_index !3437

; <label>:2                                       ; preds = %2, %0
  %z.0 = phi i32 [ 0, %0 ], [ %3, %2 ], !llfi_index !3438
  %3 = add nsw i32 %z.0, 1, !llfi_index !3439
  %4 = shl i32 1, %z.0, !llfi_index !3440
  %5 = icmp slt i32 %4, %1, !llfi_index !3441
  br i1 %5, label %2, label %.preheader4, !llfi_index !3442

.preheader4:                                      ; preds = %2
  %6 = icmp sgt i32 %1, 0, !llfi_index !3443
  br i1 %6, label %.preheader.lr.ph, label %._crit_edge6, !llfi_index !3444

.preheader.lr.ph:                                 ; preds = %.preheader4
  %7 = lshr i64 %m.coerce0, 32, !llfi_index !3445
  %8 = trunc i64 %7 to i32, !llfi_index !3446
  %9 = icmp sgt i32 %8, 0, !llfi_index !3447
  %10 = trunc i64 %7 to i32, !llfi_index !3448
  %11 = trunc i64 %m.coerce0 to i32, !llfi_index !3449
  br label %.preheader, !llfi_index !3450

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv7 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next8, %._crit_edge ], !llfi_index !3451
  br i1 %9, label %.lr.ph, label %._crit_edge, !llfi_index !3452

.lr.ph:                                           ; preds = %.preheader
  %12 = mul i64 %indvars.iv7, %7, !llfi_index !3453
  %sext = shl i64 %12, 32, !llfi_index !3454
  %13 = ashr exact i64 %sext, 32, !llfi_index !3455
  br label %14, !llfi_index !3456

; <label>:14                                      ; preds = %14, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %14 ], !llfi_index !3457
  %15 = add nsw i64 %indvars.iv, %13, !llfi_index !3458
  %16 = getelementptr inbounds { float, float }* %m.coerce1, i64 %15, i32 0, !llfi_index !3459
  %17 = load float* %16, align 4, !llfi_index !3460
  %18 = getelementptr inbounds { float, float }* %m.coerce1, i64 %15, i32 1, !llfi_index !3461
  %19 = load float* %18, align 4, !llfi_index !3462
  %20 = insertelement <2 x float> undef, float %17, i32 0, !llfi_index !3463
  %21 = insertelement <2 x float> %20, float %19, i32 1, !llfi_index !3464
  %22 = tail call fastcc float @quantum_real67(<2 x float> %21), !llfi_index !3465
  %23 = fpext float %22 to double, !llfi_index !3466
  %24 = tail call fastcc float @quantum_imag68(<2 x float> %21), !llfi_index !3467
  %25 = fpext float %24 to double, !llfi_index !3468
  %26 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str159, i64 0, i64 0), double %23, double %25) #3, !llfi_index !3469
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3470
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !llfi_index !3471
  %exitcond = icmp eq i32 %lftr.wideiv, %10, !llfi_index !3472
  br i1 %exitcond, label %._crit_edge, label %14, !llfi_index !3473

._crit_edge:                                      ; preds = %14, %.preheader
  %putchar2 = tail call i32 @putchar(i32 10) #3, !llfi_index !3474
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !llfi_index !3475
  %lftr.wideiv9 = trunc i64 %indvars.iv.next8 to i32, !llfi_index !3476
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %11, !llfi_index !3477
  br i1 %exitcond10, label %._crit_edge6, label %.preheader, !llfi_index !3478

._crit_edge6:                                     ; preds = %._crit_edge, %.preheader4
  %putchar = tail call i32 @putchar(i32 10) #3, !llfi_index !3479
  ret void, !llfi_index !3480
}

; Function Attrs: inlinehint nounwind readnone uwtable
define internal fastcc float @quantum_real67(<2 x float> %a.coerce) #6 {
  %1 = extractelement <2 x float> %a.coerce, i32 0, !llfi_index !3481
  ret float %1, !llfi_index !3482
}

; Function Attrs: inlinehint nounwind readnone uwtable
define internal fastcc float @quantum_imag68(<2 x float> %a.coerce) #6 {
  %1 = extractelement <2 x float> %a.coerce, i32 1, !llfi_index !3483
  ret float %1, !llfi_index !3484
}

; Function Attrs: nounwind readnone uwtable
define i32 @quantum_ipow(i32 %a, i32 %b) #8 {
  %1 = icmp sgt i32 %b, 0, !llfi_index !3485
  br i1 %1, label %.lr.ph, label %._crit_edge, !llfi_index !3486

.lr.ph:                                           ; preds = %.lr.ph, %0
  %r.02 = phi i32 [ %2, %.lr.ph ], [ 1, %0 ], !llfi_index !3487
  %i.01 = phi i32 [ %3, %.lr.ph ], [ 0, %0 ], !llfi_index !3488
  %2 = mul nsw i32 %r.02, %a, !llfi_index !3489
  %3 = add nsw i32 %i.01, 1, !llfi_index !3490
  %exitcond = icmp eq i32 %3, %b, !llfi_index !3491
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llfi_index !3492

._crit_edge:                                      ; preds = %.lr.ph, %0
  %r.0.lcssa = phi i32 [ 1, %0 ], [ %2, %.lr.ph ], !llfi_index !3493
  ret i32 %r.0.lcssa, !llfi_index !3494
}

; Function Attrs: nounwind readnone uwtable
define i32 @quantum_gcd(i32 %u, i32 %v) #8 {
  %1 = icmp eq i32 %v, 0, !llfi_index !3495
  br i1 %1, label %._crit_edge, label %.lr.ph, !llfi_index !3496

.lr.ph:                                           ; preds = %.lr.ph, %0
  %.03 = phi i32 [ %.012, %.lr.ph ], [ %u, %0 ], !llfi_index !3497
  %.012 = phi i32 [ %2, %.lr.ph ], [ %v, %0 ], !llfi_index !3498
  %2 = srem i32 %.03, %.012, !llfi_index !3499
  %3 = icmp eq i32 %2, 0, !llfi_index !3500
  br i1 %3, label %._crit_edge, label %.lr.ph, !llfi_index !3501

._crit_edge:                                      ; preds = %.lr.ph, %0
  %.0.lcssa = phi i32 [ %u, %0 ], [ %.012, %.lr.ph ], !llfi_index !3502
  ret i32 %.0.lcssa, !llfi_index !3503
}

; Function Attrs: nounwind uwtable
define void @quantum_frac_approx(i32* nocapture %a, i32* nocapture %b, i32 %width) #0 {
  %1 = load i32* %a, align 4, !tbaa !1, !llfi_index !3504
  %2 = sitofp i32 %1 to float, !llfi_index !3505
  %3 = load i32* %b, align 4, !tbaa !1, !llfi_index !3506
  %4 = sitofp i32 %3 to float, !llfi_index !3507
  %5 = fdiv float %2, %4, !llfi_index !3508
  %6 = shl i32 1, %width, !llfi_index !3509
  %7 = shl nsw i32 %6, 1, !llfi_index !3510
  %8 = sitofp i32 %7 to double, !llfi_index !3511
  %9 = fdiv double 1.000000e+00, %8, !llfi_index !3512
  br label %10, !llfi_index !3513

; <label>:10                                      ; preds = %17, %0
  %g.0 = phi float [ %5, %0 ], [ %22, %17 ], !llfi_index !3514
  %num2.0 = phi i32 [ 0, %0 ], [ %num1.0, %17 ], !llfi_index !3515
  %den2.0 = phi i32 [ 1, %0 ], [ %den1.0, %17 ], !llfi_index !3516
  %num1.0 = phi i32 [ 1, %0 ], [ %24, %17 ], !llfi_index !3517
  %den1.0 = phi i32 [ 0, %0 ], [ %15, %17 ], !llfi_index !3518
  %num.0 = phi i32 [ 0, %0 ], [ %24, %17 ], !llfi_index !3519
  %11 = fpext float %g.0 to double, !llfi_index !3520
  %12 = fadd double %11, 5.000000e-06, !llfi_index !3521
  %13 = fptosi double %12 to i32, !llfi_index !3522
  %14 = mul nsw i32 %den1.0, %13, !llfi_index !3523
  %15 = add nsw i32 %14, %den2.0, !llfi_index !3524
  %16 = icmp sgt i32 %15, %6, !llfi_index !3525
  br i1 %16, label %32, label %17, !llfi_index !3526

; <label>:17                                      ; preds = %10
  %18 = sitofp i32 %13 to double, !llfi_index !3527
  %19 = fadd double %18, -5.000000e-06, !llfi_index !3528
  %20 = fsub double %11, %19, !llfi_index !3529
  %21 = fptrunc double %20 to float, !llfi_index !3530
  %22 = fdiv float 1.000000e+00, %21, !llfi_index !3531
  %23 = mul nsw i32 %13, %num1.0, !llfi_index !3532
  %24 = add nsw i32 %23, %num2.0, !llfi_index !3533
  %25 = sitofp i32 %24 to float, !llfi_index !3534
  %26 = sitofp i32 %15 to float, !llfi_index !3535
  %27 = fdiv float %25, %26, !llfi_index !3536
  %28 = fsub float %27, %5, !llfi_index !3537
  %29 = tail call float @fabsf(float %28) #13, !llfi_index !3538
  %30 = fpext float %29 to double, !llfi_index !3539
  %31 = fcmp ogt double %30, %9, !llfi_index !3540
  br i1 %31, label %10, label %32, !llfi_index !3541

; <label>:32                                      ; preds = %17, %10
  %num.1 = phi i32 [ %num.0, %10 ], [ %24, %17 ], !llfi_index !3542
  %den.1 = phi i32 [ %den1.0, %10 ], [ %15, %17 ], !llfi_index !3543
  store i32 %num.1, i32* %a, align 4, !tbaa !1, !llfi_index !3544
  store i32 %den.1, i32* %b, align 4, !tbaa !1, !llfi_index !3545
  ret void, !llfi_index !3546
}

; Function Attrs: nounwind readnone
declare float @fabsf(float) #9

; Function Attrs: nounwind readnone uwtable
define i32 @quantum_getwidth(i32 %n) #8 {
  br label %1, !llfi_index !3547

; <label>:1                                       ; preds = %1, %0
  %i.0 = phi i32 [ 1, %0 ], [ %4, %1 ], !llfi_index !3548
  %2 = shl i32 1, %i.0, !llfi_index !3549
  %3 = icmp slt i32 %2, %n, !llfi_index !3550
  %4 = add nsw i32 %i.0, 1, !llfi_index !3551
  br i1 %3, label %1, label %5, !llfi_index !3552

; <label>:5                                       ; preds = %1
  ret i32 %i.0, !llfi_index !3553
}

; Function Attrs: nounwind readnone uwtable
define i32 @quantum_inverse_mod(i32 %n, i32 %c) #8 {
  br label %1, !llfi_index !3554

; <label>:1                                       ; preds = %1, %0
  %i.0 = phi i32 [ 1, %0 ], [ %5, %1 ], !llfi_index !3555
  %2 = mul nsw i32 %i.0, %c, !llfi_index !3556
  %3 = srem i32 %2, %n, !llfi_index !3557
  %4 = icmp eq i32 %3, 1, !llfi_index !3558
  %5 = add nsw i32 %i.0, 1, !llfi_index !3559
  br i1 %4, label %6, label %1, !llfi_index !3560

; <label>:6                                       ; preds = %1
  ret i32 %i.0, !llfi_index !3561
}

; Function Attrs: nounwind readnone uwtable
define <2 x float> @quantum_conj(<2 x float> %a.coerce) #8 {
  %1 = tail call fastcc float @quantum_real83(<2 x float> %a.coerce), !llfi_index !3562
  %2 = tail call fastcc float @quantum_imag84(<2 x float> %a.coerce), !llfi_index !3563
  %3 = fmul float %2, 0.000000e+00, !llfi_index !3564
  %4 = fadd float %2, 0.000000e+00, !llfi_index !3565
  %5 = fsub float %1, %3, !llfi_index !3566
  %6 = fsub float 0.000000e+00, %4, !llfi_index !3567
  %7 = insertelement <2 x float> undef, float %5, i32 0, !llfi_index !3568
  %8 = insertelement <2 x float> %7, float %6, i32 1, !llfi_index !3569
  ret <2 x float> %8, !llfi_index !3570
}

; Function Attrs: nounwind readnone uwtable
define float @quantum_prob(<2 x float> %a.coerce) #8 {
  %1 = tail call fastcc float @quantum_prob_inline85(<2 x float> %a.coerce), !llfi_index !3571
  ret float %1, !llfi_index !3572
}

; Function Attrs: nounwind uwtable
define <2 x float> @quantum_cexp(float %phi) #0 {
  %1 = fpext float %phi to double, !llfi_index !3573
  %2 = tail call double @cos(double %1) #3, !llfi_index !3574
  %3 = tail call double @sin(double %1) #3, !llfi_index !3575
  %4 = fmul double %3, 0.000000e+00, !llfi_index !3576
  %5 = fadd double %3, 0.000000e+00, !llfi_index !3577
  %6 = fadd double %2, %4, !llfi_index !3578
  %7 = fptrunc double %6 to float, !llfi_index !3579
  %8 = fptrunc double %5 to float, !llfi_index !3580
  %9 = insertelement <2 x float> undef, float %7, i32 0, !llfi_index !3581
  %10 = insertelement <2 x float> %9, float %8, i32 1, !llfi_index !3582
  ret <2 x float> %10, !llfi_index !3583
}

; Function Attrs: inlinehint nounwind readnone uwtable
define internal fastcc float @quantum_real83(<2 x float> %a.coerce) #6 {
  %1 = extractelement <2 x float> %a.coerce, i32 0, !llfi_index !3584
  ret float %1, !llfi_index !3585
}

; Function Attrs: inlinehint nounwind readnone uwtable
define internal fastcc float @quantum_imag84(<2 x float> %a.coerce) #6 {
  %1 = extractelement <2 x float> %a.coerce, i32 1, !llfi_index !3586
  ret float %1, !llfi_index !3587
}

; Function Attrs: inlinehint nounwind readnone uwtable
define internal fastcc float @quantum_prob_inline85(<2 x float> %a.coerce) #6 {
  %1 = tail call fastcc float @quantum_real83(<2 x float> %a.coerce), !llfi_index !3588
  %2 = tail call fastcc float @quantum_imag84(<2 x float> %a.coerce), !llfi_index !3589
  %3 = fmul float %1, %1, !llfi_index !3590
  %4 = fmul float %2, %2, !llfi_index !3591
  %5 = fadd float %3, %4, !llfi_index !3592
  ret float %5, !llfi_index !3593
}

; Function Attrs: nounwind uwtable
define double @quantum_frand() #0 {
  %1 = tail call double @spec_rand() #3, !llfi_index !3594
  ret double %1, !llfi_index !3595
}

; Function Attrs: nounwind uwtable
define i64 @quantum_measure(%struct.quantum_reg_struct* byval nocapture readonly align 8 %reg) #0 {
  %1 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext -128) #3, !llfi_index !3596
  %2 = icmp eq i32 %1, 0, !llfi_index !3597
  br i1 %2, label %3, label %.loopexit, !llfi_index !3598

; <label>:3                                       ; preds = %0
  %4 = tail call double @quantum_frand(), !llfi_index !3599
  %5 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !3600
  %6 = load i32* %5, align 4, !tbaa !195, !llfi_index !3601
  %7 = icmp sgt i32 %6, 0, !llfi_index !3602
  br i1 %7, label %.lr.ph, label %.loopexit, !llfi_index !3603

.lr.ph:                                           ; preds = %3
  %8 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3604
  %9 = load %struct.quantum_reg_node_struct** %8, align 8, !tbaa !200, !llfi_index !3605
  %10 = load i32* %5, align 4, !tbaa !195, !llfi_index !3606
  br label %14, !llfi_index !3607

; <label>:11                                      ; preds = %14
  %12 = trunc i64 %indvars.iv.next to i32, !llfi_index !3608
  %13 = icmp slt i32 %12, %10, !llfi_index !3609
  br i1 %13, label %14, label %.loopexit, !llfi_index !3610

; <label>:14                                      ; preds = %11, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %11 ], !llfi_index !3611
  %r.02 = phi double [ %4, %.lr.ph ], [ %23, %11 ], !llfi_index !3612
  %15 = getelementptr inbounds %struct.quantum_reg_node_struct* %9, i64 %indvars.iv, i32 0, i32 0, !llfi_index !3613
  %16 = load float* %15, align 4, !llfi_index !3614
  %17 = getelementptr inbounds %struct.quantum_reg_node_struct* %9, i64 %indvars.iv, i32 0, i32 1, !llfi_index !3615
  %18 = load float* %17, align 4, !llfi_index !3616
  %19 = insertelement <2 x float> undef, float %16, i32 0, !llfi_index !3617
  %20 = insertelement <2 x float> %19, float %18, i32 1, !llfi_index !3618
  %21 = tail call fastcc float @quantum_prob_inline91(<2 x float> %20), !llfi_index !3619
  %22 = fpext float %21 to double, !llfi_index !3620
  %23 = fsub double %r.02, %22, !llfi_index !3621
  %24 = fcmp ugt double %23, 0.000000e+00, !llfi_index !3622
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3623
  br i1 %24, label %11, label %25, !llfi_index !3624

; <label>:25                                      ; preds = %14
  %26 = getelementptr inbounds %struct.quantum_reg_node_struct* %9, i64 %indvars.iv, i32 1, !llfi_index !3625
  %27 = load i64* %26, align 8, !tbaa !224, !llfi_index !3626
  br label %.loopexit, !llfi_index !3627

.loopexit:                                        ; preds = %25, %11, %3, %0
  %.0 = phi i64 [ %27, %25 ], [ 0, %0 ], [ -1, %11 ], [ -1, %3 ], !llfi_index !3628
  ret i64 %.0, !llfi_index !3629
}

; Function Attrs: nounwind uwtable
define i32 @quantum_bmeasure(i32 %pos, %struct.quantum_reg_struct* %reg) #0 {
  %out = alloca %struct.quantum_reg_struct, align 8, !llfi_index !3630
  %1 = call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext -127, i32 %pos) #3, !llfi_index !3631
  %2 = icmp eq i32 %1, 0, !llfi_index !3632
  br i1 %2, label %3, label %34, !llfi_index !3633

; <label>:3                                       ; preds = %0
  %4 = zext i32 %pos to i64, !llfi_index !3634
  %5 = shl i64 1, %4, !llfi_index !3635
  %6 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !3636
  %7 = load i32* %6, align 4, !tbaa !195, !llfi_index !3637
  %8 = icmp sgt i32 %7, 0, !llfi_index !3638
  br i1 %8, label %.lr.ph, label %._crit_edge, !llfi_index !3639

.lr.ph:                                           ; preds = %3
  %9 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3640
  %10 = load %struct.quantum_reg_node_struct** %9, align 8, !tbaa !200, !llfi_index !3641
  %11 = load i32* %6, align 4, !tbaa !195, !llfi_index !3642
  br label %12, !llfi_index !3643

; <label>:12                                      ; preds = %27, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %27 ], !llfi_index !3644
  %pa.01 = phi double [ 0.000000e+00, %.lr.ph ], [ %pa.1, %27 ], !llfi_index !3645
  %13 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv, i32 1, !llfi_index !3646
  %14 = load i64* %13, align 8, !tbaa !224, !llfi_index !3647
  %15 = and i64 %14, %5, !llfi_index !3648
  %16 = icmp eq i64 %15, 0, !llfi_index !3649
  br i1 %16, label %17, label %27, !llfi_index !3650

; <label>:17                                      ; preds = %12
  %18 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv, i32 0, i32 0, !llfi_index !3651
  %19 = load float* %18, align 4, !llfi_index !3652
  %20 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv, i32 0, i32 1, !llfi_index !3653
  %21 = load float* %20, align 4, !llfi_index !3654
  %22 = insertelement <2 x float> undef, float %19, i32 0, !llfi_index !3655
  %23 = insertelement <2 x float> %22, float %21, i32 1, !llfi_index !3656
  %24 = call fastcc float @quantum_prob_inline91(<2 x float> %23), !llfi_index !3657
  %25 = fpext float %24 to double, !llfi_index !3658
  %26 = fadd double %pa.01, %25, !llfi_index !3659
  br label %27, !llfi_index !3660

; <label>:27                                      ; preds = %17, %12
  %pa.1 = phi double [ %pa.01, %12 ], [ %26, %17 ], !llfi_index !3661
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3662
  %28 = trunc i64 %indvars.iv.next to i32, !llfi_index !3663
  %29 = icmp slt i32 %28, %11, !llfi_index !3664
  br i1 %29, label %12, label %._crit_edge, !llfi_index !3665

._crit_edge:                                      ; preds = %27, %3
  %pa.0.lcssa = phi double [ 0.000000e+00, %3 ], [ %pa.1, %27 ], !llfi_index !3666
  %30 = call double @quantum_frand(), !llfi_index !3667
  %31 = fcmp ogt double %30, %pa.0.lcssa, !llfi_index !3668
  %result.0 = zext i1 %31 to i32, !llfi_index !3669
  call void @quantum_state_collapse(%struct.quantum_reg_struct* sret %out, i32 %pos, i32 %result.0, %struct.quantum_reg_struct* byval align 8 %reg) #3, !llfi_index !3670
  %32 = bitcast %struct.quantum_reg_struct* %out to i8*, !llfi_index !3671
  call void @quantum_delete_qureg_hashpreserve(%struct.quantum_reg_struct* %reg) #3, !llfi_index !3672
  %33 = bitcast %struct.quantum_reg_struct* %reg to i8*, !llfi_index !3673
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %32, i64 32, i32 8, i1 false), !tbaa.struct !3674, !llfi_index !3675
  br label %34, !llfi_index !3676

; <label>:34                                      ; preds = %._crit_edge, %0
  %.0 = phi i32 [ %result.0, %._crit_edge ], [ 0, %0 ], !llfi_index !3677
  ret i32 %.0, !llfi_index !3678
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @quantum_bmeasure_bitpreserve(i32 %pos, %struct.quantum_reg_struct* %reg) #0 {
  %1 = tail call i32 (i8, ...)* @quantum_objcode_put(i8 zeroext -126, i32 %pos) #3, !llfi_index !3679
  %2 = icmp eq i32 %1, 0, !llfi_index !3680
  br i1 %2, label %3, label %133, !llfi_index !3681

; <label>:3                                       ; preds = %0
  %4 = zext i32 %pos to i64, !llfi_index !3682
  %5 = shl i64 1, %4, !llfi_index !3683
  %6 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !3684
  %7 = load i32* %6, align 4, !tbaa !195, !llfi_index !3685
  %8 = icmp sgt i32 %7, 0, !llfi_index !3686
  br i1 %8, label %.lr.ph16, label %._crit_edge17, !llfi_index !3687

.lr.ph16:                                         ; preds = %3
  %9 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3688
  %10 = load %struct.quantum_reg_node_struct** %9, align 8, !tbaa !200, !llfi_index !3689
  %11 = load i32* %6, align 4, !tbaa !195, !llfi_index !3690
  br label %12, !llfi_index !3691

; <label>:12                                      ; preds = %27, %.lr.ph16
  %indvars.iv22 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next23, %27 ], !llfi_index !3692
  %pa.013 = phi double [ 0.000000e+00, %.lr.ph16 ], [ %pa.1, %27 ], !llfi_index !3693
  %13 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv22, i32 1, !llfi_index !3694
  %14 = load i64* %13, align 8, !tbaa !224, !llfi_index !3695
  %15 = and i64 %14, %5, !llfi_index !3696
  %16 = icmp eq i64 %15, 0, !llfi_index !3697
  br i1 %16, label %17, label %27, !llfi_index !3698

; <label>:17                                      ; preds = %12
  %18 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv22, i32 0, i32 0, !llfi_index !3699
  %19 = load float* %18, align 4, !llfi_index !3700
  %20 = getelementptr inbounds %struct.quantum_reg_node_struct* %10, i64 %indvars.iv22, i32 0, i32 1, !llfi_index !3701
  %21 = load float* %20, align 4, !llfi_index !3702
  %22 = insertelement <2 x float> undef, float %19, i32 0, !llfi_index !3703
  %23 = insertelement <2 x float> %22, float %21, i32 1, !llfi_index !3704
  %24 = tail call fastcc float @quantum_prob_inline91(<2 x float> %23), !llfi_index !3705
  %25 = fpext float %24 to double, !llfi_index !3706
  %26 = fadd double %pa.013, %25, !llfi_index !3707
  br label %27, !llfi_index !3708

; <label>:27                                      ; preds = %17, %12
  %pa.1 = phi double [ %pa.013, %12 ], [ %26, %17 ], !llfi_index !3709
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !llfi_index !3710
  %28 = trunc i64 %indvars.iv.next23 to i32, !llfi_index !3711
  %29 = icmp slt i32 %28, %11, !llfi_index !3712
  br i1 %29, label %12, label %._crit_edge17, !llfi_index !3713

._crit_edge17:                                    ; preds = %27, %3
  %pa.0.lcssa = phi double [ 0.000000e+00, %3 ], [ %pa.1, %27 ], !llfi_index !3714
  %30 = tail call double @quantum_frand(), !llfi_index !3715
  %31 = fcmp ogt double %30, %pa.0.lcssa, !llfi_index !3716
  %result.0 = zext i1 %31 to i32, !llfi_index !3717
  %32 = load i32* %6, align 4, !tbaa !195, !llfi_index !3718
  %33 = icmp sgt i32 %32, 0, !llfi_index !3719
  br i1 %33, label %.lr.ph10, label %._crit_edge11, !llfi_index !3720

.lr.ph10:                                         ; preds = %._crit_edge17
  %34 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3721
  br label %35, !llfi_index !3722

; <label>:35                                      ; preds = %68, %.lr.ph10
  %indvars.iv20 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next21, %68 ], !llfi_index !3723
  %size.07 = phi i32 [ 0, %.lr.ph10 ], [ %size.1, %68 ], !llfi_index !3724
  %d.06 = phi double [ 0.000000e+00, %.lr.ph10 ], [ %d.1, %68 ], !llfi_index !3725
  %36 = load %struct.quantum_reg_node_struct** %34, align 8, !tbaa !200, !llfi_index !3726
  %37 = getelementptr inbounds %struct.quantum_reg_node_struct* %36, i64 %indvars.iv20, i32 1, !llfi_index !3727
  %38 = load i64* %37, align 8, !tbaa !224, !llfi_index !3728
  %39 = and i64 %38, %5, !llfi_index !3729
  %40 = icmp eq i64 %39, 0, !llfi_index !3730
  %41 = getelementptr inbounds %struct.quantum_reg_node_struct* %36, i64 %indvars.iv20, i32 0, i32 0, !llfi_index !3731
  br i1 %40, label %55, label %42, !llfi_index !3732

; <label>:42                                      ; preds = %35
  br i1 %31, label %45, label %43, !llfi_index !3733

; <label>:43                                      ; preds = %42
  %44 = getelementptr inbounds %struct.quantum_reg_node_struct* %36, i64 %indvars.iv20, i32 0, i32 1, !llfi_index !3734
  store float 0.000000e+00, float* %41, align 4, !llfi_index !3735
  store float 0.000000e+00, float* %44, align 4, !llfi_index !3736
  br label %68, !llfi_index !3737

; <label>:45                                      ; preds = %42
  %46 = load float* %41, align 4, !llfi_index !3738
  %47 = getelementptr inbounds %struct.quantum_reg_node_struct* %36, i64 %indvars.iv20, i32 0, i32 1, !llfi_index !3739
  %48 = load float* %47, align 4, !llfi_index !3740
  %49 = insertelement <2 x float> undef, float %46, i32 0, !llfi_index !3741
  %50 = insertelement <2 x float> %49, float %48, i32 1, !llfi_index !3742
  %51 = tail call fastcc float @quantum_prob_inline91(<2 x float> %50), !llfi_index !3743
  %52 = fpext float %51 to double, !llfi_index !3744
  %53 = fadd double %d.06, %52, !llfi_index !3745
  %54 = add nsw i32 %size.07, 1, !llfi_index !3746
  br label %68, !llfi_index !3747

; <label>:55                                      ; preds = %35
  br i1 %31, label %56, label %58, !llfi_index !3748

; <label>:56                                      ; preds = %55
  %57 = getelementptr inbounds %struct.quantum_reg_node_struct* %36, i64 %indvars.iv20, i32 0, i32 1, !llfi_index !3749
  store float 0.000000e+00, float* %41, align 4, !llfi_index !3750
  store float 0.000000e+00, float* %57, align 4, !llfi_index !3751
  br label %68, !llfi_index !3752

; <label>:58                                      ; preds = %55
  %59 = load float* %41, align 4, !llfi_index !3753
  %60 = getelementptr inbounds %struct.quantum_reg_node_struct* %36, i64 %indvars.iv20, i32 0, i32 1, !llfi_index !3754
  %61 = load float* %60, align 4, !llfi_index !3755
  %62 = insertelement <2 x float> undef, float %59, i32 0, !llfi_index !3756
  %63 = insertelement <2 x float> %62, float %61, i32 1, !llfi_index !3757
  %64 = tail call fastcc float @quantum_prob_inline91(<2 x float> %63), !llfi_index !3758
  %65 = fpext float %64 to double, !llfi_index !3759
  %66 = fadd double %d.06, %65, !llfi_index !3760
  %67 = add nsw i32 %size.07, 1, !llfi_index !3761
  br label %68, !llfi_index !3762

; <label>:68                                      ; preds = %58, %56, %45, %43
  %d.1 = phi double [ %53, %45 ], [ %d.06, %43 ], [ %d.06, %56 ], [ %66, %58 ], !llfi_index !3763
  %size.1 = phi i32 [ %54, %45 ], [ %size.07, %43 ], [ %size.07, %56 ], [ %67, %58 ], !llfi_index !3764
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1, !llfi_index !3765
  %69 = load i32* %6, align 4, !tbaa !195, !llfi_index !3766
  %70 = trunc i64 %indvars.iv.next21 to i32, !llfi_index !3767
  %71 = icmp slt i32 %70, %69, !llfi_index !3768
  br i1 %71, label %35, label %._crit_edge11, !llfi_index !3769

._crit_edge11:                                    ; preds = %68, %._crit_edge17
  %size.0.lcssa = phi i32 [ 0, %._crit_edge17 ], [ %size.1, %68 ], !llfi_index !3770
  %d.0.lcssa = phi double [ 0.000000e+00, %._crit_edge17 ], [ %d.1, %68 ], !llfi_index !3771
  %72 = sext i32 %size.0.lcssa to i64, !llfi_index !3772
  %73 = tail call noalias i8* @calloc(i64 %72, i64 16) #3, !llfi_index !3773
  %74 = bitcast i8* %73 to %struct.quantum_reg_node_struct*, !llfi_index !3774
  %75 = icmp eq i8* %73, null, !llfi_index !3775
  br i1 %75, label %76, label %78, !llfi_index !3776

; <label>:76                                      ; preds = %._crit_edge11
  %77 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str86, i64 0, i64 0), i32 %size.0.lcssa) #3, !llfi_index !3777
  tail call void @exit(i32 1) #12, !llfi_index !3778
  unreachable, !llfi_index !3779

; <label>:78                                      ; preds = %._crit_edge11
  %79 = shl nsw i64 %72, 4, !llfi_index !3780
  %80 = tail call i64 @quantum_memman(i64 %79) #3, !llfi_index !3781
  %81 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 2, !llfi_index !3782
  %82 = load i32* %81, align 4, !tbaa !864, !llfi_index !3783
  %83 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 4, !llfi_index !3784
  %84 = load i32** %83, align 8, !tbaa !869, !llfi_index !3785
  %85 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !3786
  %86 = load i32* %85, align 4, !tbaa !22, !llfi_index !3787
  %87 = load i32* %6, align 4, !tbaa !195, !llfi_index !3788
  %88 = icmp sgt i32 %87, 0, !llfi_index !3789
  br i1 %88, label %.lr.ph, label %._crit_edge, !llfi_index !3790

.lr.ph:                                           ; preds = %78
  %89 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3791
  br label %90, !llfi_index !3792

; <label>:90                                      ; preds = %128, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %128 ], !llfi_index !3793
  %j.04 = phi i32 [ 0, %.lr.ph ], [ %j.1, %128 ], !llfi_index !3794
  %91 = load %struct.quantum_reg_node_struct** %89, align 8, !tbaa !200, !llfi_index !3795
  %92 = getelementptr inbounds %struct.quantum_reg_node_struct* %91, i64 %indvars.iv, i32 0, i32 0, !llfi_index !3796
  %93 = load float* %92, align 4, !llfi_index !3797
  %94 = getelementptr inbounds %struct.quantum_reg_node_struct* %91, i64 %indvars.iv, i32 0, i32 1, !llfi_index !3798
  %95 = load float* %94, align 4, !llfi_index !3799
  %96 = fcmp une float %93, 0.000000e+00, !llfi_index !3800
  %97 = fcmp une float %95, 0.000000e+00, !llfi_index !3801
  %98 = or i1 %96, %97, !llfi_index !3802
  br i1 %98, label %99, label %128, !llfi_index !3803

; <label>:99                                      ; preds = %90
  %100 = getelementptr inbounds %struct.quantum_reg_node_struct* %91, i64 %indvars.iv, i32 1, !llfi_index !3804
  %101 = load i64* %100, align 8, !tbaa !224, !llfi_index !3805
  %102 = sext i32 %j.04 to i64, !llfi_index !3806
  %103 = getelementptr inbounds %struct.quantum_reg_node_struct* %74, i64 %102, i32 1, !llfi_index !3807
  store i64 %101, i64* %103, align 8, !tbaa !224, !llfi_index !3808
  %104 = load %struct.quantum_reg_node_struct** %89, align 8, !tbaa !200, !llfi_index !3809
  %105 = getelementptr inbounds %struct.quantum_reg_node_struct* %104, i64 %indvars.iv, i32 0, i32 0, !llfi_index !3810
  %106 = load float* %105, align 4, !llfi_index !3811
  %107 = getelementptr inbounds %struct.quantum_reg_node_struct* %104, i64 %indvars.iv, i32 0, i32 1, !llfi_index !3812
  %108 = load float* %107, align 4, !llfi_index !3813
  %109 = fmul float %108, 0.000000e+00, !llfi_index !3814
  %110 = fsub float %106, %109, !llfi_index !3815
  %111 = fmul float %106, 0.000000e+00, !llfi_index !3816
  %112 = fadd float %108, %111, !llfi_index !3817
  %113 = tail call double @sqrt(double %d.0.lcssa) #3, !llfi_index !3818
  %114 = fptrunc double %113 to float, !llfi_index !3819
  %115 = fmul float %110, %114, !llfi_index !3820
  %116 = fmul float %112, 0.000000e+00, !llfi_index !3821
  %117 = fadd float %116, %115, !llfi_index !3822
  %118 = fmul float %114, %114, !llfi_index !3823
  %119 = fadd float %118, 0.000000e+00, !llfi_index !3824
  %120 = fmul float %112, %114, !llfi_index !3825
  %121 = fmul float %110, 0.000000e+00, !llfi_index !3826
  %122 = fsub float %120, %121, !llfi_index !3827
  %123 = fdiv float %117, %119, !llfi_index !3828
  %124 = fdiv float %122, %119, !llfi_index !3829
  %125 = getelementptr inbounds %struct.quantum_reg_node_struct* %74, i64 %102, i32 0, i32 0, !llfi_index !3830
  %126 = getelementptr inbounds %struct.quantum_reg_node_struct* %74, i64 %102, i32 0, i32 1, !llfi_index !3831
  store float %123, float* %125, align 4, !llfi_index !3832
  store float %124, float* %126, align 4, !llfi_index !3833
  %127 = add nsw i32 %j.04, 1, !llfi_index !3834
  br label %128, !llfi_index !3835

; <label>:128                                     ; preds = %99, %90
  %j.1 = phi i32 [ %127, %99 ], [ %j.04, %90 ], !llfi_index !3836
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3837
  %129 = load i32* %6, align 4, !tbaa !195, !llfi_index !3838
  %130 = trunc i64 %indvars.iv.next to i32, !llfi_index !3839
  %131 = icmp slt i32 %130, %129, !llfi_index !3840
  br i1 %131, label %90, label %._crit_edge, !llfi_index !3841

._crit_edge:                                      ; preds = %128, %78
  tail call void @quantum_delete_qureg_hashpreserve(%struct.quantum_reg_struct* %reg) #3, !llfi_index !3842
  store i32 %86, i32* %85, align 8, !llfi_index !3843
  store i32 %size.0.lcssa, i32* %6, align 4, !llfi_index !3844
  store i32 %82, i32* %81, align 8, !llfi_index !3845
  %132 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !3846
  store %struct.quantum_reg_node_struct* %74, %struct.quantum_reg_node_struct** %132, align 8, !llfi_index !3847
  store i32* %84, i32** %83, align 8, !llfi_index !3848
  br label %133, !llfi_index !3849

; <label>:133                                     ; preds = %._crit_edge, %0
  %.0 = phi i32 [ %result.0, %._crit_edge ], [ 0, %0 ], !llfi_index !3850
  ret i32 %.0, !llfi_index !3851
}

; Function Attrs: inlinehint nounwind readnone uwtable
define internal fastcc float @quantum_prob_inline91(<2 x float> %a.coerce) #6 {
  %1 = tail call fastcc float @quantum_real92(<2 x float> %a.coerce), !llfi_index !3852
  %2 = tail call fastcc float @quantum_imag93(<2 x float> %a.coerce), !llfi_index !3853
  %3 = fmul float %1, %1, !llfi_index !3854
  %4 = fmul float %2, %2, !llfi_index !3855
  %5 = fadd float %3, %4, !llfi_index !3856
  ret float %5, !llfi_index !3857
}

; Function Attrs: inlinehint nounwind readnone uwtable
define internal fastcc float @quantum_real92(<2 x float> %a.coerce) #6 {
  %1 = extractelement <2 x float> %a.coerce, i32 0, !llfi_index !3858
  ret float %1, !llfi_index !3859
}

; Function Attrs: inlinehint nounwind readnone uwtable
define internal fastcc float @quantum_imag93(<2 x float> %a.coerce) #6 {
  %1 = extractelement <2 x float> %a.coerce, i32 1, !llfi_index !3860
  ret float %1, !llfi_index !3861
}

; Function Attrs: nounwind uwtable
define void @quantum_mu2char(i64 %mu, i8* nocapture %buf) #0 {
  br label %1, !llfi_index !3862

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ], !llfi_index !3863
  %.02 = phi i64 [ %mu, %0 ], [ %11, %1 ], !llfi_index !3864
  %2 = sub nsw i64 8, %indvars.iv, !llfi_index !3865
  %3 = shl i64 %2, 3, !llfi_index !3866
  %4 = add i64 %3, 4294967288, !llfi_index !3867
  %5 = and i64 %4, 4294967288, !llfi_index !3868
  %6 = shl nuw i64 1, %5, !llfi_index !3869
  %7 = lshr i64 %.02, %5, !llfi_index !3870
  %8 = trunc i64 %7 to i8, !llfi_index !3871
  %9 = getelementptr inbounds i8* %buf, i64 %indvars.iv, !llfi_index !3872
  store i8 %8, i8* %9, align 1, !tbaa !1052, !llfi_index !3873
  %10 = add i64 %6, -1, !llfi_index !3874
  %11 = and i64 %10, %.02, !llfi_index !3875
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3876
  %exitcond = icmp eq i64 %indvars.iv.next, 8, !llfi_index !3877
  br i1 %exitcond, label %12, label %1, !llfi_index !3878

; <label>:12                                      ; preds = %1
  ret void, !llfi_index !3879
}

; Function Attrs: nounwind uwtable
define void @quantum_int2char(i32 %j, i8* nocapture %buf) #0 {
  br label %1, !llfi_index !3880

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ], !llfi_index !3881
  %.02 = phi i32 [ %j, %0 ], [ %10, %1 ], !llfi_index !3882
  %2 = sub nsw i64 4, %indvars.iv, !llfi_index !3883
  %3 = shl i64 %2, 3, !llfi_index !3884
  %4 = add i64 %3, 4294967288, !llfi_index !3885
  %5 = trunc i64 %4 to i32, !llfi_index !3886
  %6 = shl i32 1, %5, !llfi_index !3887
  %7 = sdiv i32 %.02, %6, !llfi_index !3888
  %8 = trunc i32 %7 to i8, !llfi_index !3889
  %9 = getelementptr inbounds i8* %buf, i64 %indvars.iv, !llfi_index !3890
  store i8 %8, i8* %9, align 1, !tbaa !1052, !llfi_index !3891
  %10 = srem i32 %.02, %6, !llfi_index !3892
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !3893
  %exitcond = icmp eq i64 %indvars.iv.next, 4, !llfi_index !3894
  br i1 %exitcond, label %11, label %1, !llfi_index !3895

; <label>:11                                      ; preds = %1
  ret void, !llfi_index !3896
}

; Function Attrs: nounwind uwtable
define void @quantum_double2char(double %d, i8* nocapture %buf) #0 {
  %1 = alloca double, align 8, !llfi_index !3897
  store double %d, double* %1, align 8, !tbaa !3898, !llfi_index !3900
  %2 = bitcast double* %1 to i64*, !llfi_index !3901
  %3 = bitcast i8* %buf to i64*, !llfi_index !3902
  %4 = load i64* %2, align 8, !llfi_index !3903
  store i64 %4, i64* %3, align 1, !llfi_index !3904
  ret void, !llfi_index !3905
}

; Function Attrs: nounwind readonly uwtable
define i64 @quantum_char2mu(i8* nocapture readonly %buf) #10 {
  br label %1, !llfi_index !3906

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 7, %0 ], [ %indvars.iv.next, %1 ], !llfi_index !3907
  %mu.02 = phi i64 [ 0, %0 ], [ %11, %1 ], !llfi_index !3908
  %i.01 = phi i64 [ 7, %0 ], [ %12, %1 ], !llfi_index !3909
  %sext = shl i64 %indvars.iv, 32, !llfi_index !3910
  %2 = ashr exact i64 %sext, 32, !llfi_index !3911
  %3 = getelementptr inbounds i8* %buf, i64 %2, !llfi_index !3912
  %4 = load i8* %3, align 1, !tbaa !1052, !llfi_index !3913
  %5 = zext i8 %4 to i64, !llfi_index !3914
  %6 = sub i64 8, %i.01, !llfi_index !3915
  %7 = shl i64 %6, 3, !llfi_index !3916
  %8 = add i64 %7, 4294967288, !llfi_index !3917
  %9 = and i64 %8, 4294967288, !llfi_index !3918
  %10 = shl i64 %5, %9, !llfi_index !3919
  %11 = add i64 %10, %mu.02, !llfi_index !3920
  %12 = add i64 %indvars.iv, 4294967295, !llfi_index !3921
  %13 = trunc i64 %indvars.iv to i32, !llfi_index !3922
  %14 = icmp sgt i32 %13, 0, !llfi_index !3923
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !llfi_index !3924
  br i1 %14, label %1, label %15, !llfi_index !3925

; <label>:15                                      ; preds = %1
  ret i64 %11, !llfi_index !3926
}

; Function Attrs: nounwind readonly uwtable
define i32 @quantum_char2int(i8* nocapture readonly %buf) #10 {
  br label %1, !llfi_index !3927

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 3, %0 ], [ %indvars.iv.next, %1 ], !llfi_index !3928
  %j.02 = phi i32 [ 0, %0 ], [ %10, %1 ], !llfi_index !3929
  %2 = getelementptr inbounds i8* %buf, i64 %indvars.iv, !llfi_index !3930
  %3 = load i8* %2, align 1, !tbaa !1052, !llfi_index !3931
  %4 = zext i8 %3 to i32, !llfi_index !3932
  %5 = sub nsw i64 4, %indvars.iv, !llfi_index !3933
  %6 = shl i64 %5, 3, !llfi_index !3934
  %7 = add i64 %6, 4294967288, !llfi_index !3935
  %8 = trunc i64 %7 to i32, !llfi_index !3936
  %9 = shl i32 %4, %8, !llfi_index !3937
  %10 = add nsw i32 %9, %j.02, !llfi_index !3938
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !llfi_index !3939
  %11 = trunc i64 %indvars.iv to i32, !llfi_index !3940
  %12 = icmp sgt i32 %11, 0, !llfi_index !3941
  br i1 %12, label %1, label %13, !llfi_index !3942

; <label>:13                                      ; preds = %1
  ret i32 %10, !llfi_index !3943
}

; Function Attrs: nounwind readonly uwtable
define double @quantum_char2double(i8* nocapture readonly %buf) #10 {
  %1 = bitcast i8* %buf to double*, !llfi_index !3944
  %2 = load double* %1, align 8, !tbaa !3898, !llfi_index !3945
  ret double %2, !llfi_index !3946
}

; Function Attrs: nounwind uwtable
define void @quantum_objcode_start() #0 {
  store i32 1, i32* @opstatus, align 4, !tbaa !1, !llfi_index !3947
  store i64 1, i64* @allocated, align 8, !tbaa !3388, !llfi_index !3948
  %1 = tail call noalias i8* @malloc(i64 65536) #3, !llfi_index !3949
  store i8* %1, i8** @objcode, align 8, !tbaa !322, !llfi_index !3950
  %2 = icmp eq i8* %1, null, !llfi_index !3951
  br i1 %2, label %3, label %4, !llfi_index !3952

; <label>:3                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([42 x i8]* @str102, i64 0, i64 0)), !llfi_index !3953
  tail call void @exit(i32 1) #12, !llfi_index !3954
  unreachable, !llfi_index !3955

; <label>:4                                       ; preds = %0
  %5 = tail call i64 @quantum_memman(i64 65536) #3, !llfi_index !3956
  ret void, !llfi_index !3957
}

; Function Attrs: nounwind uwtable
define void @quantum_objcode_stop() #0 {
  store i32 0, i32* @opstatus, align 4, !tbaa !1, !llfi_index !3958
  %1 = load i8** @objcode, align 8, !tbaa !322, !llfi_index !3959
  tail call void @free(i8* %1) #3, !llfi_index !3960
  store i8* null, i8** @objcode, align 8, !tbaa !322, !llfi_index !3961
  %2 = load i64* @allocated, align 8, !tbaa !3388, !llfi_index !3962
  %3 = sub i64 0, %2, !llfi_index !3963
  %4 = shl i64 %3, 16, !llfi_index !3964
  %5 = tail call i64 @quantum_memman(i64 %4) #3, !llfi_index !3965
  store i64 0, i64* @allocated, align 8, !tbaa !3388, !llfi_index !3966
  ret void, !llfi_index !3967
}

; Function Attrs: nounwind uwtable
define i32 @quantum_objcode_put(i8 zeroext %operation, ...) #0 {
  %args = alloca [1 x %struct.__va_list_tag], align 16, !llfi_index !3968
  %buf = alloca [80 x i8], align 16, !llfi_index !3969
  %1 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 0, !llfi_index !3970
  call void @llvm.lifetime.start(i64 80, i8* %1) #3, !llfi_index !3971
  %2 = load i32* @opstatus, align 4, !tbaa !1, !llfi_index !3972
  %3 = icmp eq i32 %2, 0, !llfi_index !3973
  br i1 %3, label %.loopexit, label %4, !llfi_index !3974

; <label>:4                                       ; preds = %0
  %5 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !llfi_index !3975
  call void @llvm.va_start(i8* %5), !llfi_index !3976
  store i8 %operation, i8* %1, align 16, !tbaa !1052, !llfi_index !3977
  %6 = zext i8 %operation to i32, !llfi_index !3978
  switch i32 %6, label %213 [
    i32 0, label %7
    i32 1, label %25
    i32 12, label %25
    i32 2, label %59
    i32 3, label %109
    i32 4, label %109
    i32 5, label %109
    i32 6, label %109
    i32 129, label %109
    i32 130, label %109
    i32 14, label %109
    i32 7, label %127
    i32 8, label %127
    i32 9, label %127
    i32 10, label %127
    i32 11, label %127
    i32 13, label %162
    i32 128, label %215
    i32 255, label %215
  ], !llfi_index !3979

; <label>:7                                       ; preds = %4
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !llfi_index !3980
  %9 = load i32* %8, align 16, !llfi_index !3981
  %10 = icmp ult i32 %9, 41, !llfi_index !3982
  br i1 %10, label %11, label %17, !llfi_index !3983

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !3984
  %13 = load i8** %12, align 16, !llfi_index !3985
  %14 = sext i32 %9 to i64, !llfi_index !3986
  %15 = getelementptr i8* %13, i64 %14, !llfi_index !3987
  %16 = add i32 %9, 8, !llfi_index !3988
  store i32 %16, i32* %8, align 16, !llfi_index !3989
  br label %21, !llfi_index !3990

; <label>:17                                      ; preds = %7
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !3991
  %19 = load i8** %18, align 8, !llfi_index !3992
  %20 = getelementptr i8* %19, i64 8, !llfi_index !3993
  store i8* %20, i8** %18, align 8, !llfi_index !3994
  br label %21, !llfi_index !3995

; <label>:21                                      ; preds = %17, %11
  %.in11 = phi i8* [ %15, %11 ], [ %19, %17 ], !llfi_index !3996
  %22 = bitcast i8* %.in11 to i64*, !llfi_index !3997
  %23 = load i64* %22, align 8, !llfi_index !3998
  %24 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 1, !llfi_index !3999
  call void @quantum_mu2char(i64 %23, i8* %24), !llfi_index !4000
  br label %215, !llfi_index !4001

; <label>:25                                      ; preds = %4, %4
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !llfi_index !4002
  %27 = load i32* %26, align 16, !llfi_index !4003
  %28 = icmp ult i32 %27, 41, !llfi_index !4004
  br i1 %28, label %29, label %35, !llfi_index !4005

; <label>:29                                      ; preds = %25
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4006
  %31 = load i8** %30, align 16, !llfi_index !4007
  %32 = sext i32 %27 to i64, !llfi_index !4008
  %33 = getelementptr i8* %31, i64 %32, !llfi_index !4009
  %34 = add i32 %27, 8, !llfi_index !4010
  store i32 %34, i32* %26, align 16, !llfi_index !4011
  br label %39, !llfi_index !4012

; <label>:35                                      ; preds = %25
  %36 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4013
  %37 = load i8** %36, align 8, !llfi_index !4014
  %38 = getelementptr i8* %37, i64 8, !llfi_index !4015
  store i8* %38, i8** %36, align 8, !llfi_index !4016
  br label %39, !llfi_index !4017

; <label>:39                                      ; preds = %35, %29
  %.in9 = phi i8* [ %33, %29 ], [ %37, %35 ], !llfi_index !4018
  %40 = bitcast i8* %.in9 to i32*, !llfi_index !4019
  %41 = load i32* %40, align 4, !llfi_index !4020
  %42 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 1, !llfi_index !4021
  call void @quantum_int2char(i32 %41, i8* %42), !llfi_index !4022
  %43 = load i32* %26, align 16, !llfi_index !4023
  %44 = icmp ult i32 %43, 41, !llfi_index !4024
  br i1 %44, label %45, label %51, !llfi_index !4025

; <label>:45                                      ; preds = %39
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4026
  %47 = load i8** %46, align 16, !llfi_index !4027
  %48 = sext i32 %43 to i64, !llfi_index !4028
  %49 = getelementptr i8* %47, i64 %48, !llfi_index !4029
  %50 = add i32 %43, 8, !llfi_index !4030
  store i32 %50, i32* %26, align 16, !llfi_index !4031
  br label %55, !llfi_index !4032

; <label>:51                                      ; preds = %39
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4033
  %53 = load i8** %52, align 8, !llfi_index !4034
  %54 = getelementptr i8* %53, i64 8, !llfi_index !4035
  store i8* %54, i8** %52, align 8, !llfi_index !4036
  br label %55, !llfi_index !4037

; <label>:55                                      ; preds = %51, %45
  %.in10 = phi i8* [ %49, %45 ], [ %53, %51 ], !llfi_index !4038
  %56 = bitcast i8* %.in10 to i32*, !llfi_index !4039
  %57 = load i32* %56, align 4, !llfi_index !4040
  %58 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 5, !llfi_index !4041
  call void @quantum_int2char(i32 %57, i8* %58), !llfi_index !4042
  br label %215, !llfi_index !4043

; <label>:59                                      ; preds = %4
  %60 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !llfi_index !4044
  %61 = load i32* %60, align 16, !llfi_index !4045
  %62 = icmp ult i32 %61, 41, !llfi_index !4046
  br i1 %62, label %63, label %69, !llfi_index !4047

; <label>:63                                      ; preds = %59
  %64 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4048
  %65 = load i8** %64, align 16, !llfi_index !4049
  %66 = sext i32 %61 to i64, !llfi_index !4050
  %67 = getelementptr i8* %65, i64 %66, !llfi_index !4051
  %68 = add i32 %61, 8, !llfi_index !4052
  store i32 %68, i32* %60, align 16, !llfi_index !4053
  br label %73, !llfi_index !4054

; <label>:69                                      ; preds = %59
  %70 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4055
  %71 = load i8** %70, align 8, !llfi_index !4056
  %72 = getelementptr i8* %71, i64 8, !llfi_index !4057
  store i8* %72, i8** %70, align 8, !llfi_index !4058
  br label %73, !llfi_index !4059

; <label>:73                                      ; preds = %69, %63
  %.in6 = phi i8* [ %67, %63 ], [ %71, %69 ], !llfi_index !4060
  %74 = bitcast i8* %.in6 to i32*, !llfi_index !4061
  %75 = load i32* %74, align 4, !llfi_index !4062
  %76 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 1, !llfi_index !4063
  call void @quantum_int2char(i32 %75, i8* %76), !llfi_index !4064
  %77 = load i32* %60, align 16, !llfi_index !4065
  %78 = icmp ult i32 %77, 41, !llfi_index !4066
  br i1 %78, label %79, label %85, !llfi_index !4067

; <label>:79                                      ; preds = %73
  %80 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4068
  %81 = load i8** %80, align 16, !llfi_index !4069
  %82 = sext i32 %77 to i64, !llfi_index !4070
  %83 = getelementptr i8* %81, i64 %82, !llfi_index !4071
  %84 = add i32 %77, 8, !llfi_index !4072
  store i32 %84, i32* %60, align 16, !llfi_index !4073
  br label %89, !llfi_index !4074

; <label>:85                                      ; preds = %73
  %86 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4075
  %87 = load i8** %86, align 8, !llfi_index !4076
  %88 = getelementptr i8* %87, i64 8, !llfi_index !4077
  store i8* %88, i8** %86, align 8, !llfi_index !4078
  br label %89, !llfi_index !4079

; <label>:89                                      ; preds = %85, %79
  %.in7 = phi i8* [ %83, %79 ], [ %87, %85 ], !llfi_index !4080
  %90 = bitcast i8* %.in7 to i32*, !llfi_index !4081
  %91 = load i32* %90, align 4, !llfi_index !4082
  %92 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 5, !llfi_index !4083
  call void @quantum_int2char(i32 %91, i8* %92), !llfi_index !4084
  %93 = load i32* %60, align 16, !llfi_index !4085
  %94 = icmp ult i32 %93, 41, !llfi_index !4086
  br i1 %94, label %95, label %101, !llfi_index !4087

; <label>:95                                      ; preds = %89
  %96 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4088
  %97 = load i8** %96, align 16, !llfi_index !4089
  %98 = sext i32 %93 to i64, !llfi_index !4090
  %99 = getelementptr i8* %97, i64 %98, !llfi_index !4091
  %100 = add i32 %93, 8, !llfi_index !4092
  store i32 %100, i32* %60, align 16, !llfi_index !4093
  br label %105, !llfi_index !4094

; <label>:101                                     ; preds = %89
  %102 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4095
  %103 = load i8** %102, align 8, !llfi_index !4096
  %104 = getelementptr i8* %103, i64 8, !llfi_index !4097
  store i8* %104, i8** %102, align 8, !llfi_index !4098
  br label %105, !llfi_index !4099

; <label>:105                                     ; preds = %101, %95
  %.in8 = phi i8* [ %99, %95 ], [ %103, %101 ], !llfi_index !4100
  %106 = bitcast i8* %.in8 to i32*, !llfi_index !4101
  %107 = load i32* %106, align 4, !llfi_index !4102
  %108 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 9, !llfi_index !4103
  call void @quantum_int2char(i32 %107, i8* %108), !llfi_index !4104
  br label %215, !llfi_index !4105

; <label>:109                                     ; preds = %4, %4, %4, %4, %4, %4, %4
  %110 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !llfi_index !4106
  %111 = load i32* %110, align 16, !llfi_index !4107
  %112 = icmp ult i32 %111, 41, !llfi_index !4108
  br i1 %112, label %113, label %119, !llfi_index !4109

; <label>:113                                     ; preds = %109
  %114 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4110
  %115 = load i8** %114, align 16, !llfi_index !4111
  %116 = sext i32 %111 to i64, !llfi_index !4112
  %117 = getelementptr i8* %115, i64 %116, !llfi_index !4113
  %118 = add i32 %111, 8, !llfi_index !4114
  store i32 %118, i32* %110, align 16, !llfi_index !4115
  br label %123, !llfi_index !4116

; <label>:119                                     ; preds = %109
  %120 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4117
  %121 = load i8** %120, align 8, !llfi_index !4118
  %122 = getelementptr i8* %121, i64 8, !llfi_index !4119
  store i8* %122, i8** %120, align 8, !llfi_index !4120
  br label %123, !llfi_index !4121

; <label>:123                                     ; preds = %119, %113
  %.in5 = phi i8* [ %117, %113 ], [ %121, %119 ], !llfi_index !4122
  %124 = bitcast i8* %.in5 to i32*, !llfi_index !4123
  %125 = load i32* %124, align 4, !llfi_index !4124
  %126 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 1, !llfi_index !4125
  call void @quantum_int2char(i32 %125, i8* %126), !llfi_index !4126
  br label %215, !llfi_index !4127

; <label>:127                                     ; preds = %4, %4, %4, %4, %4
  %128 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !llfi_index !4128
  %129 = load i32* %128, align 16, !llfi_index !4129
  %130 = icmp ult i32 %129, 41, !llfi_index !4130
  br i1 %130, label %131, label %137, !llfi_index !4131

; <label>:131                                     ; preds = %127
  %132 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4132
  %133 = load i8** %132, align 16, !llfi_index !4133
  %134 = sext i32 %129 to i64, !llfi_index !4134
  %135 = getelementptr i8* %133, i64 %134, !llfi_index !4135
  %136 = add i32 %129, 8, !llfi_index !4136
  store i32 %136, i32* %128, align 16, !llfi_index !4137
  br label %141, !llfi_index !4138

; <label>:137                                     ; preds = %127
  %138 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4139
  %139 = load i8** %138, align 8, !llfi_index !4140
  %140 = getelementptr i8* %139, i64 8, !llfi_index !4141
  store i8* %140, i8** %138, align 8, !llfi_index !4142
  br label %141, !llfi_index !4143

; <label>:141                                     ; preds = %137, %131
  %.in3 = phi i8* [ %135, %131 ], [ %139, %137 ], !llfi_index !4144
  %142 = bitcast i8* %.in3 to i32*, !llfi_index !4145
  %143 = load i32* %142, align 4, !llfi_index !4146
  %144 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 1, !llfi_index !4147
  %145 = load i32* %144, align 4, !llfi_index !4148
  %146 = icmp ult i32 %145, 161, !llfi_index !4149
  br i1 %146, label %147, label %153, !llfi_index !4150

; <label>:147                                     ; preds = %141
  %148 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4151
  %149 = load i8** %148, align 16, !llfi_index !4152
  %150 = sext i32 %145 to i64, !llfi_index !4153
  %151 = getelementptr i8* %149, i64 %150, !llfi_index !4154
  %152 = add i32 %145, 16, !llfi_index !4155
  store i32 %152, i32* %144, align 4, !llfi_index !4156
  br label %157, !llfi_index !4157

; <label>:153                                     ; preds = %141
  %154 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4158
  %155 = load i8** %154, align 8, !llfi_index !4159
  %156 = getelementptr i8* %155, i64 8, !llfi_index !4160
  store i8* %156, i8** %154, align 8, !llfi_index !4161
  br label %157, !llfi_index !4162

; <label>:157                                     ; preds = %153, %147
  %.in4 = phi i8* [ %151, %147 ], [ %155, %153 ], !llfi_index !4163
  %158 = bitcast i8* %.in4 to double*, !llfi_index !4164
  %159 = load double* %158, align 8, !llfi_index !4165
  %160 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 1, !llfi_index !4166
  call void @quantum_int2char(i32 %143, i8* %160), !llfi_index !4167
  %161 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 5, !llfi_index !4168
  call void @quantum_double2char(double %159, i8* %161), !llfi_index !4169
  br label %215, !llfi_index !4170

; <label>:162                                     ; preds = %4
  %163 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0, !llfi_index !4171
  %164 = load i32* %163, align 16, !llfi_index !4172
  %165 = icmp ult i32 %164, 41, !llfi_index !4173
  br i1 %165, label %166, label %172, !llfi_index !4174

; <label>:166                                     ; preds = %162
  %167 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4175
  %168 = load i8** %167, align 16, !llfi_index !4176
  %169 = sext i32 %164 to i64, !llfi_index !4177
  %170 = getelementptr i8* %168, i64 %169, !llfi_index !4178
  %171 = add i32 %164, 8, !llfi_index !4179
  store i32 %171, i32* %163, align 16, !llfi_index !4180
  br label %176, !llfi_index !4181

; <label>:172                                     ; preds = %162
  %173 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4182
  %174 = load i8** %173, align 8, !llfi_index !4183
  %175 = getelementptr i8* %174, i64 8, !llfi_index !4184
  store i8* %175, i8** %173, align 8, !llfi_index !4185
  br label %176, !llfi_index !4186

; <label>:176                                     ; preds = %172, %166
  %.in = phi i8* [ %170, %166 ], [ %174, %172 ], !llfi_index !4187
  %177 = bitcast i8* %.in to i32*, !llfi_index !4188
  %178 = load i32* %177, align 4, !llfi_index !4189
  %179 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 1, !llfi_index !4190
  call void @quantum_int2char(i32 %178, i8* %179), !llfi_index !4191
  %180 = load i32* %163, align 16, !llfi_index !4192
  %181 = icmp ult i32 %180, 41, !llfi_index !4193
  br i1 %181, label %182, label %188, !llfi_index !4194

; <label>:182                                     ; preds = %176
  %183 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4195
  %184 = load i8** %183, align 16, !llfi_index !4196
  %185 = sext i32 %180 to i64, !llfi_index !4197
  %186 = getelementptr i8* %184, i64 %185, !llfi_index !4198
  %187 = add i32 %180, 8, !llfi_index !4199
  store i32 %187, i32* %163, align 16, !llfi_index !4200
  br label %192, !llfi_index !4201

; <label>:188                                     ; preds = %176
  %189 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4202
  %190 = load i8** %189, align 8, !llfi_index !4203
  %191 = getelementptr i8* %190, i64 8, !llfi_index !4204
  store i8* %191, i8** %189, align 8, !llfi_index !4205
  br label %192, !llfi_index !4206

; <label>:192                                     ; preds = %188, %182
  %.in1 = phi i8* [ %186, %182 ], [ %190, %188 ], !llfi_index !4207
  %193 = bitcast i8* %.in1 to i32*, !llfi_index !4208
  %194 = load i32* %193, align 4, !llfi_index !4209
  %195 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 5, !llfi_index !4210
  call void @quantum_int2char(i32 %194, i8* %195), !llfi_index !4211
  %196 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 1, !llfi_index !4212
  %197 = load i32* %196, align 4, !llfi_index !4213
  %198 = icmp ult i32 %197, 161, !llfi_index !4214
  br i1 %198, label %199, label %205, !llfi_index !4215

; <label>:199                                     ; preds = %192
  %200 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3, !llfi_index !4216
  %201 = load i8** %200, align 16, !llfi_index !4217
  %202 = sext i32 %197 to i64, !llfi_index !4218
  %203 = getelementptr i8* %201, i64 %202, !llfi_index !4219
  %204 = add i32 %197, 16, !llfi_index !4220
  store i32 %204, i32* %196, align 4, !llfi_index !4221
  br label %209, !llfi_index !4222

; <label>:205                                     ; preds = %192
  %206 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2, !llfi_index !4223
  %207 = load i8** %206, align 8, !llfi_index !4224
  %208 = getelementptr i8* %207, i64 8, !llfi_index !4225
  store i8* %208, i8** %206, align 8, !llfi_index !4226
  br label %209, !llfi_index !4227

; <label>:209                                     ; preds = %205, %199
  %.in2 = phi i8* [ %203, %199 ], [ %207, %205 ], !llfi_index !4228
  %210 = bitcast i8* %.in2 to double*, !llfi_index !4229
  %211 = load double* %210, align 8, !llfi_index !4230
  %212 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 9, !llfi_index !4231
  call void @quantum_double2char(double %211, i8* %212), !llfi_index !4232
  br label %215, !llfi_index !4233

; <label>:213                                     ; preds = %4
  %214 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str195, i64 0, i64 0), i32 %6) #3, !llfi_index !4234
  call void @exit(i32 1) #12, !llfi_index !4235
  unreachable, !llfi_index !4236

; <label>:215                                     ; preds = %209, %157, %123, %105, %55, %21, %4, %4
  %size.0 = phi i32 [ 17, %209 ], [ 13, %157 ], [ 5, %123 ], [ 13, %105 ], [ 9, %55 ], [ 9, %21 ], [ 1, %4 ], [ 1, %4 ], !llfi_index !4237
  %216 = load i64* @position, align 8, !tbaa !3388, !llfi_index !4238
  %217 = zext i32 %size.0 to i64, !llfi_index !4239
  %218 = add i64 %216, %217, !llfi_index !4240
  %219 = lshr i64 %218, 16, !llfi_index !4241
  %220 = lshr i64 %216, 16, !llfi_index !4242
  %221 = icmp ugt i64 %219, %220, !llfi_index !4243
  br i1 %221, label %222, label %.preheader, !llfi_index !4244

; <label>:222                                     ; preds = %215
  %223 = load i64* @allocated, align 8, !tbaa !3388, !llfi_index !4245
  %224 = add i64 %223, 1, !llfi_index !4246
  store i64 %224, i64* @allocated, align 8, !tbaa !3388, !llfi_index !4247
  %225 = load i8** @objcode, align 8, !tbaa !322, !llfi_index !4248
  %226 = shl i64 %224, 16, !llfi_index !4249
  %227 = call i8* @realloc(i8* %225, i64 %226) #3, !llfi_index !4250
  store i8* %227, i8** @objcode, align 8, !tbaa !322, !llfi_index !4251
  %228 = icmp eq i8* %227, null, !llfi_index !4252
  br i1 %228, label %229, label %230, !llfi_index !4253

; <label>:229                                     ; preds = %222
  %puts = call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str8, i64 0, i64 0)), !llfi_index !4254
  call void @exit(i32 1) #12, !llfi_index !4255
  unreachable, !llfi_index !4256

; <label>:230                                     ; preds = %222
  %231 = call i64 @quantum_memman(i64 65536) #3, !llfi_index !4257
  br label %.preheader, !llfi_index !4258

.preheader:                                       ; preds = %.preheader, %230, %215
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %230 ], [ 0, %215 ], !llfi_index !4259
  %232 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 %indvars.iv, !llfi_index !4260
  %233 = load i8* %232, align 1, !tbaa !1052, !llfi_index !4261
  %234 = load i64* @position, align 8, !tbaa !3388, !llfi_index !4262
  %235 = load i8** @objcode, align 8, !tbaa !322, !llfi_index !4263
  %236 = getelementptr inbounds i8* %235, i64 %234, !llfi_index !4264
  store i8 %233, i8* %236, align 1, !tbaa !1052, !llfi_index !4265
  %237 = load i64* @position, align 8, !tbaa !3388, !llfi_index !4266
  %238 = add i64 %237, 1, !llfi_index !4267
  store i64 %238, i64* @position, align 8, !tbaa !3388, !llfi_index !4268
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !4269
  %239 = trunc i64 %indvars.iv.next to i32, !llfi_index !4270
  %240 = icmp slt i32 %239, %size.0, !llfi_index !4271
  br i1 %240, label %.preheader, label %.loopexit, !llfi_index !4272

.loopexit:                                        ; preds = %.preheader, %0
  %.0 = phi i32 [ 0, %0 ], [ 1, %.preheader ], !llfi_index !4273
  call void @llvm.lifetime.end(i64 80, i8* %1) #3, !llfi_index !4274
  ret i32 %.0, !llfi_index !4275
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define i32 @quantum_objcode_write(i8* readonly %file) #0 {
  %1 = load i32* @opstatus, align 4, !tbaa !1, !llfi_index !4276
  %2 = icmp eq i32 %1, 0, !llfi_index !4277
  br i1 %2, label %3, label %6, !llfi_index !4278

; <label>:3                                       ; preds = %0
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !322, !llfi_index !4279
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([74 x i8]* @.str397, i64 0, i64 0), i64 73, i64 1, %struct._IO_FILE* %4) #14, !llfi_index !4280
  br label %16, !llfi_index !4281

; <label>:6                                       ; preds = %0
  %7 = icmp eq i8* %file, null, !llfi_index !4282
  %8 = load i8** @globalfile, align 8, !tbaa !322, !llfi_index !4283
  %.file = select i1 %7, i8* %8, i8* %file, !llfi_index !4284
  %9 = tail call %struct._IO_FILE* @fopen(i8* %.file, i8* getelementptr inbounds ([2 x i8]* @.str498, i64 0, i64 0)) #3, !llfi_index !4285
  %10 = icmp eq %struct._IO_FILE* %9, null, !llfi_index !4286
  br i1 %10, label %16, label %11, !llfi_index !4287

; <label>:11                                      ; preds = %6
  %12 = load i8** @objcode, align 8, !tbaa !322, !llfi_index !4288
  %13 = load i64* @position, align 8, !tbaa !3388, !llfi_index !4289
  %14 = tail call i64 @fwrite(i8* %12, i64 %13, i64 1, %struct._IO_FILE* %9) #3, !llfi_index !4290
  %15 = tail call i32 @fclose(%struct._IO_FILE* %9) #3, !llfi_index !4291
  br label %16, !llfi_index !4292

; <label>:16                                      ; preds = %11, %6, %3
  %.0 = phi i32 [ 0, %11 ], [ 1, %3 ], [ -1, %6 ], !llfi_index !4293
  ret i32 %.0, !llfi_index !4294
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
  store i8* %file, i8** @globalfile, align 8, !tbaa !322, !llfi_index !4295
  ret void, !llfi_index !4296
}

; Function Attrs: nounwind uwtable
define void @quantum_objcode_exit(i8* nocapture readnone %file) #0 {
  %1 = tail call i32 @quantum_objcode_write(i8* null), !llfi_index !4297
  tail call void @quantum_objcode_stop(), !llfi_index !4298
  ret void, !llfi_index !4299
}

; Function Attrs: nounwind uwtable
define void @quantum_objcode_run(i8* %file, %struct.quantum_reg_struct* %reg) #0 {
  %buf = alloca [80 x i8], align 16, !llfi_index !4300
  %buf5 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 0, !llfi_index !4301
  %1 = alloca %struct.quantum_reg_struct, align 8, !llfi_index !4302
  %2 = getelementptr inbounds [80 x i8]* %buf, i64 0, i64 0, !llfi_index !4303
  call void @llvm.lifetime.start(i64 80, i8* %2) #3, !llfi_index !4304
  %3 = call %struct._IO_FILE* @fopen(i8* %file, i8* getelementptr inbounds ([2 x i8]* @.str599, i64 0, i64 0)) #3, !llfi_index !4305
  %4 = icmp eq %struct._IO_FILE* %3, null, !llfi_index !4306
  br i1 %4, label %9, label %.preheader2, !llfi_index !4307

.preheader2:                                      ; preds = %0
  %5 = call i32 @feof(%struct._IO_FILE* %3) #3, !llfi_index !4308
  %6 = icmp eq i32 %5, 0, !llfi_index !4309
  br i1 %6, label %.preheader.lr.ph, label %._crit_edge, !llfi_index !4310

.preheader.lr.ph:                                 ; preds = %.preheader2
  %7 = bitcast %struct.quantum_reg_struct* %reg to i8*, !llfi_index !4311
  %8 = bitcast %struct.quantum_reg_struct* %1 to i8*, !llfi_index !4312
  br label %12, !llfi_index !4313

; <label>:9                                       ; preds = %0
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !322, !llfi_index !4314
  %11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([41 x i8]* @.str6100, i64 0, i64 0), i8* %file) #14, !llfi_index !4315
  call void @perror(i8* null) #14, !llfi_index !4316
  br label %77, !llfi_index !4317

; <label>:12                                      ; preds = %72, %.preheader.lr.ph
  %i.04 = phi i32 [ 0, %.preheader.lr.ph ], [ %73, %72 ], !llfi_index !4318
  call void @llvm.memset.p0i8.i64(i8* %buf5, i8 0, i64 80, i32 16, i1 false), !llfi_index !4319
  %13 = call i32 @fgetc(%struct._IO_FILE* %3) #3, !llfi_index !4320
  %14 = and i32 %13, 255, !llfi_index !4321
  switch i32 %14, label %69 [
    i32 0, label %15
    i32 1, label %18
    i32 12, label %18
    i32 2, label %25
    i32 3, label %32
    i32 4, label %32
    i32 5, label %32
    i32 6, label %32
    i32 129, label %32
    i32 130, label %32
    i32 14, label %32
    i32 7, label %44
    i32 8, label %44
    i32 9, label %44
    i32 10, label %44
    i32 11, label %44
    i32 13, label %59
    i32 128, label %67
    i32 255, label %72
  ], !llfi_index !4322

; <label>:15                                      ; preds = %12
  %16 = call i64 @fread(i8* %2, i64 8, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !4323
  %17 = call i64 @quantum_char2mu(i8* %2), !llfi_index !4324
  call void @quantum_new_qureg(%struct.quantum_reg_struct* sret %1, i64 %17, i32 12) #3, !llfi_index !4325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false), !tbaa.struct !3674, !llfi_index !4326
  br label %72, !llfi_index !4327

; <label>:18                                      ; preds = %12, %12
  %19 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !4328
  %20 = call i32 @quantum_char2int(i8* %2), !llfi_index !4329
  %21 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !4330
  %22 = call i32 @quantum_char2int(i8* %2), !llfi_index !4331
  switch i32 %14, label %72 [
    i32 1, label %23
    i32 12, label %24
  ], !llfi_index !4332

; <label>:23                                      ; preds = %18
  call void @quantum_cnot(i32 %20, i32 %22, %struct.quantum_reg_struct* %reg) #3, !llfi_index !4333
  br label %72, !llfi_index !4334

; <label>:24                                      ; preds = %18
  call void @quantum_cond_phase(i32 %20, i32 %22, %struct.quantum_reg_struct* %reg) #3, !llfi_index !4335
  br label %72, !llfi_index !4336

; <label>:25                                      ; preds = %12
  %26 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !4337
  %27 = call i32 @quantum_char2int(i8* %2), !llfi_index !4338
  %28 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !4339
  %29 = call i32 @quantum_char2int(i8* %2), !llfi_index !4340
  %30 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !4341
  %31 = call i32 @quantum_char2int(i8* %2), !llfi_index !4342
  call void @quantum_toffoli(i32 %27, i32 %29, i32 %31, %struct.quantum_reg_struct* %reg) #3, !llfi_index !4343
  br label %72, !llfi_index !4344

; <label>:32                                      ; preds = %12, %12, %12, %12, %12, %12, %12
  %33 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !4345
  %34 = call i32 @quantum_char2int(i8* %2), !llfi_index !4346
  switch i32 %14, label %72 [
    i32 3, label %35
    i32 4, label %36
    i32 5, label %37
    i32 6, label %38
    i32 129, label %39
    i32 130, label %41
    i32 14, label %43
  ], !llfi_index !4347

; <label>:35                                      ; preds = %32
  call void @quantum_sigma_x(i32 %34, %struct.quantum_reg_struct* %reg) #3, !llfi_index !4348
  br label %72, !llfi_index !4349

; <label>:36                                      ; preds = %32
  call void @quantum_sigma_y(i32 %34, %struct.quantum_reg_struct* %reg) #3, !llfi_index !4350
  br label %72, !llfi_index !4351

; <label>:37                                      ; preds = %32
  call void @quantum_sigma_z(i32 %34, %struct.quantum_reg_struct* %reg) #3, !llfi_index !4352
  br label %72, !llfi_index !4353

; <label>:38                                      ; preds = %32
  call void @quantum_hadamard(i32 %34, %struct.quantum_reg_struct* %reg) #3, !llfi_index !4354
  br label %72, !llfi_index !4355

; <label>:39                                      ; preds = %32
  %40 = call i32 @quantum_bmeasure(i32 %34, %struct.quantum_reg_struct* %reg) #3, !llfi_index !4356
  br label %72, !llfi_index !4357

; <label>:41                                      ; preds = %32
  %42 = call i32 @quantum_bmeasure_bitpreserve(i32 %34, %struct.quantum_reg_struct* %reg) #3, !llfi_index !4358
  br label %72, !llfi_index !4359

; <label>:43                                      ; preds = %32
  call void @quantum_swaptheleads(i32 %34, %struct.quantum_reg_struct* %reg) #3, !llfi_index !4360
  br label %72, !llfi_index !4361

; <label>:44                                      ; preds = %12, %12, %12, %12, %12
  %45 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !4362
  %46 = call i32 @quantum_char2int(i8* %2), !llfi_index !4363
  %47 = call i64 @fread(i8* %2, i64 8, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !4364
  %48 = call double @quantum_char2double(i8* %2), !llfi_index !4365
  switch i32 %14, label %72 [
    i32 7, label %49
    i32 8, label %51
    i32 9, label %53
    i32 10, label %55
    i32 11, label %57
  ], !llfi_index !4366

; <label>:49                                      ; preds = %44
  %50 = fptrunc double %48 to float, !llfi_index !4367
  call void @quantum_r_x(i32 %46, float %50, %struct.quantum_reg_struct* %reg) #3, !llfi_index !4368
  br label %72, !llfi_index !4369

; <label>:51                                      ; preds = %44
  %52 = fptrunc double %48 to float, !llfi_index !4370
  call void @quantum_r_y(i32 %46, float %52, %struct.quantum_reg_struct* %reg) #3, !llfi_index !4371
  br label %72, !llfi_index !4372

; <label>:53                                      ; preds = %44
  %54 = fptrunc double %48 to float, !llfi_index !4373
  call void @quantum_r_z(i32 %46, float %54, %struct.quantum_reg_struct* %reg) #3, !llfi_index !4374
  br label %72, !llfi_index !4375

; <label>:55                                      ; preds = %44
  %56 = fptrunc double %48 to float, !llfi_index !4376
  call void @quantum_phase_kick(i32 %46, float %56, %struct.quantum_reg_struct* %reg) #3, !llfi_index !4377
  br label %72, !llfi_index !4378

; <label>:57                                      ; preds = %44
  %58 = fptrunc double %48 to float, !llfi_index !4379
  call void @quantum_phase_scale(i32 %46, float %58, %struct.quantum_reg_struct* %reg) #3, !llfi_index !4380
  br label %72, !llfi_index !4381

; <label>:59                                      ; preds = %12
  %60 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !4382
  %61 = call i32 @quantum_char2int(i8* %2), !llfi_index !4383
  %62 = call i64 @fread(i8* %2, i64 4, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !4384
  %63 = call i32 @quantum_char2int(i8* %2), !llfi_index !4385
  %64 = call i64 @fread(i8* %2, i64 8, i64 1, %struct._IO_FILE* %3) #3, !llfi_index !4386
  %65 = call double @quantum_char2double(i8* %2), !llfi_index !4387
  %66 = fptrunc double %65 to float, !llfi_index !4388
  call void @quantum_cond_phase_kick(i32 %61, i32 %63, float %66, %struct.quantum_reg_struct* %reg) #3, !llfi_index !4389
  br label %72, !llfi_index !4390

; <label>:67                                      ; preds = %12
  %68 = call i64 @quantum_measure(%struct.quantum_reg_struct* byval align 8 %reg) #3, !llfi_index !4391
  br label %72, !llfi_index !4392

; <label>:69                                      ; preds = %12
  %70 = load %struct._IO_FILE** @stderr, align 8, !tbaa !322, !llfi_index !4393
  %71 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([28 x i8]* @.str7101, i64 0, i64 0), i32 %i.04, i32 %14) #14, !llfi_index !4394
  br label %77, !llfi_index !4395

; <label>:72                                      ; preds = %67, %59, %57, %55, %53, %51, %49, %44, %43, %41, %39, %38, %37, %36, %35, %32, %25, %24, %23, %18, %15, %12
  %73 = add nsw i32 %i.04, 1, !llfi_index !4396
  %74 = call i32 @feof(%struct._IO_FILE* %3) #3, !llfi_index !4397
  %75 = icmp eq i32 %74, 0, !llfi_index !4398
  br i1 %75, label %12, label %._crit_edge, !llfi_index !4399

._crit_edge:                                      ; preds = %72, %.preheader2
  %76 = call i32 @fclose(%struct._IO_FILE* %3) #3, !llfi_index !4400
  br label %77, !llfi_index !4401

; <label>:77                                      ; preds = %._crit_edge, %69, %9
  call void @llvm.lifetime.end(i64 80, i8* %2) #3, !llfi_index !4402
  ret void, !llfi_index !4403
}

; Function Attrs: nounwind
declare void @perror(i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fgetc(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind readnone uwtable
define i8* @quantum_get_version() #8 {
  ret i8* getelementptr inbounds ([6 x i8]* @.str111, i64 0, i64 0), !llfi_index !4404
}

; Function Attrs: nounwind uwtable
define void @spec_srand(i32 %seed) #0 {
  store i32 %seed, i32* @seedi, align 4, !tbaa !1, !llfi_index !4405
  ret void, !llfi_index !4406
}

; Function Attrs: nounwind uwtable
define double @spec_rand() #0 {
  %1 = load i32* @seedi, align 4, !tbaa !1, !llfi_index !4407
  %2 = sext i32 %1 to i64, !llfi_index !4408
  %3 = sdiv i64 %2, 127773, !llfi_index !4409
  %4 = srem i64 %2, 127773, !llfi_index !4410
  %sext = shl i64 %4, 32, !llfi_index !4411
  %5 = ashr exact i64 %sext, 32, !llfi_index !4412
  %6 = mul nsw i64 %5, 16807, !llfi_index !4413
  %sext1 = shl i64 %3, 32, !llfi_index !4414
  %7 = ashr exact i64 %sext1, 32, !llfi_index !4415
  %8 = mul i64 %7, -2836, !llfi_index !4416
  %9 = add i64 %6, %8, !llfi_index !4417
  %10 = trunc i64 %9 to i32, !llfi_index !4418
  %11 = icmp sgt i32 %10, 0, !llfi_index !4419
  br i1 %11, label %15, label %12, !llfi_index !4420

; <label>:12                                      ; preds = %0
  %13 = add nsw i64 %9, 2147483647, !llfi_index !4421
  %14 = trunc i64 %13 to i32, !llfi_index !4422
  br label %15, !llfi_index !4423

; <label>:15                                      ; preds = %12, %0
  %storemerge = phi i32 [ %14, %12 ], [ %10, %0 ], !llfi_index !4424
  store i32 %storemerge, i32* @seedi, align 4, !tbaa !1, !llfi_index !4425
  %16 = sitofp i32 %storemerge to double, !llfi_index !4426
  %17 = fdiv double %16, 0x41DFFFFFFFC00000, !llfi_index !4427
  ret double %17, !llfi_index !4428
}

; Function Attrs: nounwind readonly uwtable
define float @quantum_get_decoherence() #10 {
  %1 = load float* @lambda, align 4, !tbaa !4429, !llfi_index !4431
  ret float %1, !llfi_index !4432
}

; Function Attrs: nounwind uwtable
define void @quantum_set_decoherence(float %l) #0 {
  %1 = fcmp une float %l, 0.000000e+00, !llfi_index !4433
  br i1 %1, label %2, label %3, !llfi_index !4434

; <label>:2                                       ; preds = %0
  store i32 1, i32* @status, align 4, !tbaa !1, !llfi_index !4435
  store float %l, float* @lambda, align 4, !tbaa !4429, !llfi_index !4436
  br label %4, !llfi_index !4437

; <label>:3                                       ; preds = %0
  store i32 0, i32* @status, align 4, !tbaa !1, !llfi_index !4438
  br label %4, !llfi_index !4439

; <label>:4                                       ; preds = %3, %2
  ret void, !llfi_index !4440
}

; Function Attrs: nounwind uwtable
define void @quantum_decohere(%struct.quantum_reg_struct* nocapture readonly %reg) #0 {
  %1 = tail call i32 @quantum_gate_counter(i32 1) #3, !llfi_index !4441
  %2 = load i32* @status, align 4, !tbaa !1, !llfi_index !4442
  %3 = icmp eq i32 %2, 0, !llfi_index !4443
  br i1 %3, label %102, label %4, !llfi_index !4444

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 0, !llfi_index !4445
  %6 = load i32* %5, align 4, !tbaa !22, !llfi_index !4446
  %7 = sext i32 %6 to i64, !llfi_index !4447
  %8 = tail call noalias i8* @calloc(i64 %7, i64 4) #3, !llfi_index !4448
  %9 = bitcast i8* %8 to float*, !llfi_index !4449
  %10 = icmp eq i8* %8, null, !llfi_index !4450
  %11 = load i32* %5, align 4, !tbaa !22, !llfi_index !4451
  br i1 %10, label %12, label %14, !llfi_index !4452

; <label>:12                                      ; preds = %4
  %13 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str116, i64 0, i64 0), i32 %11) #3, !llfi_index !4453
  tail call void @exit(i32 1) #12, !llfi_index !4454
  unreachable, !llfi_index !4455

; <label>:14                                      ; preds = %4
  %15 = sext i32 %11 to i64, !llfi_index !4456
  %16 = shl nsw i64 %15, 2, !llfi_index !4457
  %17 = tail call i64 @quantum_memman(i64 %16) #3, !llfi_index !4458
  %18 = load i32* %5, align 4, !tbaa !22, !llfi_index !4459
  %19 = icmp sgt i32 %18, 0, !llfi_index !4460
  br i1 %19, label %.preheader6, label %.preheader3, !llfi_index !4461

.preheader6:                                      ; preds = %38, %14
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %38 ], [ 0, %14 ], !llfi_index !4462
  br label %25, !llfi_index !4463

.preheader3:                                      ; preds = %38, %14
  %20 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 1, !llfi_index !4464
  %21 = load i32* %20, align 4, !tbaa !195, !llfi_index !4465
  %22 = icmp sgt i32 %21, 0, !llfi_index !4466
  br i1 %22, label %.preheader.lr.ph, label %._crit_edge5, !llfi_index !4467

.preheader.lr.ph:                                 ; preds = %.preheader3
  %23 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !4468
  %24 = getelementptr inbounds %struct.quantum_reg_struct* %reg, i64 0, i32 3, !llfi_index !4469
  br label %.preheader, !llfi_index !4470

; <label>:25                                      ; preds = %25, %.preheader6
  %26 = tail call double (...)* bitcast (double ()* @quantum_frand to double (...)*)() #3, !llfi_index !4471
  %27 = tail call double (...)* bitcast (double ()* @quantum_frand to double (...)*)() #3, !llfi_index !4472
  %28 = insertelement <2 x double> undef, double %26, i32 0, !llfi_index !4473
  %29 = insertelement <2 x double> %28, double %27, i32 1, !llfi_index !4474
  %30 = fmul <2 x double> %29, <double 2.000000e+00, double 2.000000e+00>, !llfi_index !4475
  %31 = fadd <2 x double> %30, <double -1.000000e+00, double -1.000000e+00>, !llfi_index !4476
  %32 = fptrunc <2 x double> %31 to <2 x float>, !llfi_index !4477
  %33 = fmul <2 x float> %32, %32, !llfi_index !4478
  %34 = extractelement <2 x float> %33, i32 0, !llfi_index !4479
  %35 = extractelement <2 x float> %33, i32 1, !llfi_index !4480
  %36 = fadd float %34, %35, !llfi_index !4481
  %37 = fcmp ult float %36, 1.000000e+00, !llfi_index !4482
  br i1 %37, label %38, label %25, !llfi_index !4483

; <label>:38                                      ; preds = %25
  %39 = extractelement <2 x float> %32, i32 0, !llfi_index !4484
  %40 = fpext float %39 to double, !llfi_index !4485
  %41 = fpext float %36 to double, !llfi_index !4486
  %42 = tail call double @log(double %41) #3, !llfi_index !4487
  %43 = fmul double %42, -2.000000e+00, !llfi_index !4488
  %44 = fdiv double %43, %41, !llfi_index !4489
  %45 = tail call double @sqrt(double %44) #3, !llfi_index !4490
  %46 = fmul double %40, %45, !llfi_index !4491
  %47 = fptrunc double %46 to float, !llfi_index !4492
  %48 = load float* @lambda, align 4, !tbaa !4429, !llfi_index !4493
  %49 = fmul float %48, 2.000000e+00, !llfi_index !4494
  %50 = fpext float %49 to double, !llfi_index !4495
  %51 = tail call double @sqrt(double %50) #3, !llfi_index !4496
  %52 = fpext float %47 to double, !llfi_index !4497
  %53 = fmul double %51, %52, !llfi_index !4498
  %54 = fptrunc double %53 to float, !llfi_index !4499
  %55 = fmul float %54, 5.000000e-01, !llfi_index !4500
  %56 = getelementptr inbounds float* %9, i64 %indvars.iv12, !llfi_index !4501
  store float %55, float* %56, align 4, !tbaa !4429, !llfi_index !4502
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !llfi_index !4503
  %57 = load i32* %5, align 4, !tbaa !22, !llfi_index !4504
  %58 = trunc i64 %indvars.iv.next13 to i32, !llfi_index !4505
  %59 = icmp slt i32 %58, %57, !llfi_index !4506
  br i1 %59, label %.preheader6, label %.preheader3, !llfi_index !4507

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv9 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next10, %._crit_edge ], !llfi_index !4508
  %60 = load i32* %5, align 4, !tbaa !22, !llfi_index !4509
  %61 = icmp sgt i32 %60, 0, !llfi_index !4510
  br i1 %61, label %.lr.ph, label %._crit_edge, !llfi_index !4511

.lr.ph:                                           ; preds = %.preheader
  %62 = load %struct.quantum_reg_node_struct** %24, align 8, !tbaa !200, !llfi_index !4512
  %63 = getelementptr inbounds %struct.quantum_reg_node_struct* %62, i64 %indvars.iv9, i32 1, !llfi_index !4513
  %64 = load i64* %63, align 8, !tbaa !224, !llfi_index !4514
  %65 = load i32* %5, align 4, !tbaa !22, !llfi_index !4515
  br label %66, !llfi_index !4516

; <label>:66                                      ; preds = %77, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %77 ], !llfi_index !4517
  %angle.02 = phi float [ 0.000000e+00, %.lr.ph ], [ %angle.1, %77 ], !llfi_index !4518
  %67 = and i64 %indvars.iv, 4294967295, !llfi_index !4519
  %68 = shl i64 1, %67, !llfi_index !4520
  %69 = and i64 %64, %68, !llfi_index !4521
  %70 = icmp eq i64 %69, 0, !llfi_index !4522
  %71 = getelementptr inbounds float* %9, i64 %indvars.iv, !llfi_index !4523
  %72 = load float* %71, align 4, !tbaa !4429, !llfi_index !4524
  br i1 %70, label %75, label %73, !llfi_index !4525

; <label>:73                                      ; preds = %66
  %74 = fadd float %angle.02, %72, !llfi_index !4526
  br label %77, !llfi_index !4527

; <label>:75                                      ; preds = %66
  %76 = fsub float %angle.02, %72, !llfi_index !4528
  br label %77, !llfi_index !4529

; <label>:77                                      ; preds = %75, %73
  %angle.1 = phi float [ %74, %73 ], [ %76, %75 ], !llfi_index !4530
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !llfi_index !4531
  %78 = trunc i64 %indvars.iv.next to i32, !llfi_index !4532
  %79 = icmp slt i32 %78, %65, !llfi_index !4533
  br i1 %79, label %66, label %._crit_edge, !llfi_index !4534

._crit_edge:                                      ; preds = %77, %.preheader
  %angle.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %angle.1, %77 ], !llfi_index !4535
  %80 = tail call <2 x float> @quantum_cexp(float %angle.0.lcssa) #3, !llfi_index !4536
  %81 = extractelement <2 x float> %80, i32 0, !llfi_index !4537
  %82 = extractelement <2 x float> %80, i32 1, !llfi_index !4538
  %83 = load %struct.quantum_reg_node_struct** %23, align 8, !tbaa !200, !llfi_index !4539
  %84 = getelementptr inbounds %struct.quantum_reg_node_struct* %83, i64 %indvars.iv9, i32 0, i32 0, !llfi_index !4540
  %85 = load float* %84, align 4, !llfi_index !4541
  %86 = getelementptr inbounds %struct.quantum_reg_node_struct* %83, i64 %indvars.iv9, i32 0, i32 1, !llfi_index !4542
  %87 = load float* %86, align 4, !llfi_index !4543
  %88 = fmul float %81, %85, !llfi_index !4544
  %89 = fmul float %82, %87, !llfi_index !4545
  %90 = fsub float %88, %89, !llfi_index !4546
  %91 = fmul float %81, %87, !llfi_index !4547
  %92 = fmul float %82, %85, !llfi_index !4548
  %93 = fadd float %92, %91, !llfi_index !4549
  store float %90, float* %84, align 4, !llfi_index !4550
  store float %93, float* %86, align 4, !llfi_index !4551
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !llfi_index !4552
  %94 = load i32* %20, align 4, !tbaa !195, !llfi_index !4553
  %95 = trunc i64 %indvars.iv.next10 to i32, !llfi_index !4554
  %96 = icmp slt i32 %95, %94, !llfi_index !4555
  br i1 %96, label %.preheader, label %._crit_edge5, !llfi_index !4556

._crit_edge5:                                     ; preds = %._crit_edge, %.preheader3
  tail call void @free(i8* %8) #3, !llfi_index !4557
  %97 = load i32* %5, align 4, !tbaa !22, !llfi_index !4558
  %98 = sub nsw i32 0, %97, !llfi_index !4559
  %99 = sext i32 %98 to i64, !llfi_index !4560
  %100 = shl nsw i64 %99, 2, !llfi_index !4561
  %101 = tail call i64 @quantum_memman(i64 %100) #3, !llfi_index !4562
  br label %102, !llfi_index !4563

; <label>:102                                     ; preds = %._crit_edge5, %0
  ret void, !llfi_index !4564
}

; Function Attrs: nounwind
declare double @log(double) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }

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
!195 = metadata !{metadata !23, metadata !2, i64 4}
!196 = metadata !{i64 188}
!197 = metadata !{i64 189}
!198 = metadata !{i64 190}
!199 = metadata !{i64 191}
!200 = metadata !{metadata !23, metadata !24, i64 16}
!201 = metadata !{i64 192}
!202 = metadata !{i64 193}
!203 = metadata !{i64 194}
!204 = metadata !{i64 195}
!205 = metadata !{i64 196}
!206 = metadata !{i64 197}
!207 = metadata !{i64 198}
!208 = metadata !{i64 199}
!209 = metadata !{i64 200}
!210 = metadata !{i64 201}
!211 = metadata !{i64 202}
!212 = metadata !{i64 203}
!213 = metadata !{i64 204}
!214 = metadata !{i64 205}
!215 = metadata !{i64 206}
!216 = metadata !{i64 207}
!217 = metadata !{i64 208}
!218 = metadata !{i64 209}
!219 = metadata !{i64 210}
!220 = metadata !{i64 211}
!221 = metadata !{i64 212}
!222 = metadata !{i64 213}
!223 = metadata !{i64 214}
!224 = metadata !{metadata !225, metadata !226, i64 8}
!225 = metadata !{metadata !"quantum_reg_node_struct", metadata !3, i64 0, metadata !226, i64 8}
!226 = metadata !{metadata !"long long", metadata !3, i64 0}
!227 = metadata !{i64 215}
!228 = metadata !{i64 216}
!229 = metadata !{i64 217}
!230 = metadata !{i64 218}
!231 = metadata !{i64 219}
!232 = metadata !{i64 220}
!233 = metadata !{i64 221}
!234 = metadata !{i64 222}
!235 = metadata !{i64 223}
!236 = metadata !{i64 224}
!237 = metadata !{i64 225}
!238 = metadata !{i64 226}
!239 = metadata !{i64 227}
!240 = metadata !{i64 228}
!241 = metadata !{i64 229}
!242 = metadata !{i64 230}
!243 = metadata !{i64 231}
!244 = metadata !{i64 232}
!245 = metadata !{i64 233}
!246 = metadata !{i64 234}
!247 = metadata !{i64 235}
!248 = metadata !{i64 236}
!249 = metadata !{i64 237}
!250 = metadata !{i64 238}
!251 = metadata !{i64 239}
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
!322 = metadata !{metadata !24, metadata !24, i64 0}
!323 = metadata !{i64 310}
!324 = metadata !{i64 311}
!325 = metadata !{i64 312}
!326 = metadata !{i64 313}
!327 = metadata !{i64 314}
!328 = metadata !{i64 315}
!329 = metadata !{i64 316}
!330 = metadata !{i64 317}
!331 = metadata !{i64 318}
!332 = metadata !{i64 319}
!333 = metadata !{i64 320}
!334 = metadata !{i64 321}
!335 = metadata !{i64 322}
!336 = metadata !{i64 323}
!337 = metadata !{i64 324}
!338 = metadata !{i64 325}
!339 = metadata !{i64 326}
!340 = metadata !{i64 327}
!341 = metadata !{i64 328}
!342 = metadata !{i64 329}
!343 = metadata !{i64 330}
!344 = metadata !{i64 331}
!345 = metadata !{i64 332}
!346 = metadata !{i64 333}
!347 = metadata !{i64 334}
!348 = metadata !{i64 335}
!349 = metadata !{i64 336}
!350 = metadata !{i64 337}
!351 = metadata !{i64 338}
!352 = metadata !{i64 339}
!353 = metadata !{i64 340}
!354 = metadata !{i64 341}
!355 = metadata !{i64 342}
!356 = metadata !{i64 343}
!357 = metadata !{i64 344}
!358 = metadata !{i64 345}
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
!864 = metadata !{metadata !23, metadata !2, i64 8}
!865 = metadata !{i64 851}
!866 = metadata !{i64 852}
!867 = metadata !{i64 853}
!868 = metadata !{i64 854}
!869 = metadata !{metadata !23, metadata !24, i64 24}
!870 = metadata !{i64 855}
!871 = metadata !{i64 856}
!872 = metadata !{i64 857}
!873 = metadata !{i64 858}
!874 = metadata !{i64 859}
!875 = metadata !{i64 860}
!876 = metadata !{i64 861}
!877 = metadata !{i64 862}
!878 = metadata !{i64 863}
!879 = metadata !{i64 864}
!880 = metadata !{i64 865}
!881 = metadata !{i64 866}
!882 = metadata !{i64 867}
!883 = metadata !{i64 868}
!884 = metadata !{i64 869}
!885 = metadata !{i64 870}
!886 = metadata !{i64 871}
!887 = metadata !{i64 872}
!888 = metadata !{i64 873}
!889 = metadata !{i64 874}
!890 = metadata !{i64 875}
!891 = metadata !{i64 876}
!892 = metadata !{i64 877}
!893 = metadata !{i64 878}
!894 = metadata !{i64 879}
!895 = metadata !{i64 880}
!896 = metadata !{i64 881}
!897 = metadata !{i64 882}
!898 = metadata !{i64 883}
!899 = metadata !{i64 884}
!900 = metadata !{i64 885}
!901 = metadata !{i64 886}
!902 = metadata !{i64 887}
!903 = metadata !{i64 888}
!904 = metadata !{i64 889}
!905 = metadata !{i64 890}
!906 = metadata !{i64 891}
!907 = metadata !{i64 892}
!908 = metadata !{i64 893}
!909 = metadata !{i64 894}
!910 = metadata !{i64 895}
!911 = metadata !{i64 896}
!912 = metadata !{i64 897}
!913 = metadata !{i64 898}
!914 = metadata !{i64 899}
!915 = metadata !{i64 900}
!916 = metadata !{i64 901}
!917 = metadata !{i64 902}
!918 = metadata !{i64 903}
!919 = metadata !{i64 904}
!920 = metadata !{i64 905}
!921 = metadata !{i64 906}
!922 = metadata !{i64 907}
!923 = metadata !{i64 908}
!924 = metadata !{i64 909}
!925 = metadata !{i64 910}
!926 = metadata !{i64 911}
!927 = metadata !{i64 912}
!928 = metadata !{i64 913}
!929 = metadata !{i64 914}
!930 = metadata !{i64 915}
!931 = metadata !{i64 916}
!932 = metadata !{i64 917}
!933 = metadata !{i64 918}
!934 = metadata !{i64 919}
!935 = metadata !{i64 920}
!936 = metadata !{i64 921}
!937 = metadata !{i64 922}
!938 = metadata !{i64 923}
!939 = metadata !{i64 924}
!940 = metadata !{i64 925}
!941 = metadata !{i64 926}
!942 = metadata !{i64 927}
!943 = metadata !{i64 928}
!944 = metadata !{i64 929}
!945 = metadata !{i64 930}
!946 = metadata !{i64 931}
!947 = metadata !{i64 932}
!948 = metadata !{i64 933}
!949 = metadata !{i64 934}
!950 = metadata !{i64 935}
!951 = metadata !{i64 936}
!952 = metadata !{i64 937}
!953 = metadata !{i64 938}
!954 = metadata !{i64 939}
!955 = metadata !{i64 940}
!956 = metadata !{i64 941}
!957 = metadata !{i64 942}
!958 = metadata !{i64 943}
!959 = metadata !{i64 944}
!960 = metadata !{i64 945}
!961 = metadata !{i64 946}
!962 = metadata !{i64 947}
!963 = metadata !{i64 948}
!964 = metadata !{i64 949}
!965 = metadata !{i64 950}
!966 = metadata !{i64 951}
!967 = metadata !{i64 952}
!968 = metadata !{i64 953}
!969 = metadata !{i64 954}
!970 = metadata !{i64 955}
!971 = metadata !{i64 956}
!972 = metadata !{i64 957}
!973 = metadata !{i64 958}
!974 = metadata !{i64 959}
!975 = metadata !{i64 960}
!976 = metadata !{i64 961}
!977 = metadata !{i64 962}
!978 = metadata !{i64 963}
!979 = metadata !{i64 964}
!980 = metadata !{i64 965}
!981 = metadata !{i64 966}
!982 = metadata !{i64 967}
!983 = metadata !{i64 968}
!984 = metadata !{i64 969}
!985 = metadata !{i64 970}
!986 = metadata !{i64 971}
!987 = metadata !{i64 972}
!988 = metadata !{i64 973}
!989 = metadata !{i64 974}
!990 = metadata !{i64 975}
!991 = metadata !{i64 976}
!992 = metadata !{i64 977}
!993 = metadata !{i64 978}
!994 = metadata !{i64 979}
!995 = metadata !{i64 980}
!996 = metadata !{i64 981}
!997 = metadata !{i64 982}
!998 = metadata !{i64 983}
!999 = metadata !{i64 984}
!1000 = metadata !{i64 985}
!1001 = metadata !{i64 986}
!1002 = metadata !{i64 987}
!1003 = metadata !{i64 988}
!1004 = metadata !{i64 989}
!1005 = metadata !{i64 990}
!1006 = metadata !{i64 991}
!1007 = metadata !{i64 992}
!1008 = metadata !{i64 993}
!1009 = metadata !{i64 994}
!1010 = metadata !{i64 995}
!1011 = metadata !{i64 996}
!1012 = metadata !{i64 997}
!1013 = metadata !{i64 998}
!1014 = metadata !{i64 999}
!1015 = metadata !{i64 1000}
!1016 = metadata !{i64 1001}
!1017 = metadata !{i64 1002}
!1018 = metadata !{i64 1003}
!1019 = metadata !{i64 1004}
!1020 = metadata !{i64 1005}
!1021 = metadata !{i64 1006}
!1022 = metadata !{i64 1007}
!1023 = metadata !{i64 1008}
!1024 = metadata !{i64 1009}
!1025 = metadata !{i64 1010}
!1026 = metadata !{i64 1011}
!1027 = metadata !{i64 1012}
!1028 = metadata !{i64 1013}
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
!1052 = metadata !{metadata !3, metadata !3, i64 0}
!1053 = metadata !{i64 1037}
!1054 = metadata !{i64 1038}
!1055 = metadata !{i64 1039}
!1056 = metadata !{i64 1040}
!1057 = metadata !{i64 1041}
!1058 = metadata !{i64 1042}
!1059 = metadata !{i64 1043}
!1060 = metadata !{i64 1044}
!1061 = metadata !{i64 1045}
!1062 = metadata !{i64 1046}
!1063 = metadata !{i64 1047}
!1064 = metadata !{i64 1048}
!1065 = metadata !{i64 1049}
!1066 = metadata !{i64 1050}
!1067 = metadata !{i64 1051}
!1068 = metadata !{i64 1052}
!1069 = metadata !{i64 1053}
!1070 = metadata !{i64 1054}
!1071 = metadata !{i64 1055}
!1072 = metadata !{i64 1056}
!1073 = metadata !{i64 1057}
!1074 = metadata !{i64 1058}
!1075 = metadata !{i64 1059}
!1076 = metadata !{i64 1060}
!1077 = metadata !{i64 1061}
!1078 = metadata !{i64 1062}
!1079 = metadata !{i64 1063}
!1080 = metadata !{i64 1064}
!1081 = metadata !{i64 1065}
!1082 = metadata !{i64 1066}
!1083 = metadata !{i64 1067}
!1084 = metadata !{i64 1068}
!1085 = metadata !{i64 1069}
!1086 = metadata !{i64 1070}
!1087 = metadata !{i64 1071}
!1088 = metadata !{i64 1072}
!1089 = metadata !{i64 1073}
!1090 = metadata !{i64 1074}
!1091 = metadata !{i64 1075}
!1092 = metadata !{i64 1076}
!1093 = metadata !{i64 1077}
!1094 = metadata !{i64 1078}
!1095 = metadata !{i64 1079}
!1096 = metadata !{i64 1080}
!1097 = metadata !{i64 1081}
!1098 = metadata !{i64 1082}
!1099 = metadata !{i64 1083}
!1100 = metadata !{i64 1084}
!1101 = metadata !{i64 1085}
!1102 = metadata !{i64 1086}
!1103 = metadata !{i64 1087}
!1104 = metadata !{i64 1088}
!1105 = metadata !{i64 1089}
!1106 = metadata !{i64 1090}
!1107 = metadata !{i64 1091}
!1108 = metadata !{i64 1092}
!1109 = metadata !{i64 1093}
!1110 = metadata !{i64 1094}
!1111 = metadata !{i64 1095}
!1112 = metadata !{i64 1096}
!1113 = metadata !{i64 1097}
!1114 = metadata !{i64 1098}
!1115 = metadata !{i64 1099}
!1116 = metadata !{i64 1100}
!1117 = metadata !{i64 1101}
!1118 = metadata !{i64 1102}
!1119 = metadata !{i64 1103}
!1120 = metadata !{i64 1104}
!1121 = metadata !{i64 1105}
!1122 = metadata !{i64 1106}
!1123 = metadata !{i64 1107}
!1124 = metadata !{i64 1108}
!1125 = metadata !{i64 1109}
!1126 = metadata !{i64 1110}
!1127 = metadata !{i64 1111}
!1128 = metadata !{i64 1112}
!1129 = metadata !{i64 1113}
!1130 = metadata !{i64 1114}
!1131 = metadata !{i64 1115}
!1132 = metadata !{i64 1116}
!1133 = metadata !{i64 1117}
!1134 = metadata !{i64 1118}
!1135 = metadata !{i64 1119}
!1136 = metadata !{i64 1120}
!1137 = metadata !{i64 1121}
!1138 = metadata !{i64 1122}
!1139 = metadata !{i64 1123}
!1140 = metadata !{i64 1124}
!1141 = metadata !{i64 1125}
!1142 = metadata !{i64 1126}
!1143 = metadata !{i64 1127}
!1144 = metadata !{i64 1128}
!1145 = metadata !{i64 1129}
!1146 = metadata !{i64 1130}
!1147 = metadata !{i64 1131}
!1148 = metadata !{i64 1132}
!1149 = metadata !{i64 1133}
!1150 = metadata !{i64 1134}
!1151 = metadata !{i64 1135}
!1152 = metadata !{i64 1136}
!1153 = metadata !{i64 1137}
!1154 = metadata !{i64 1138}
!1155 = metadata !{i64 1139}
!1156 = metadata !{i64 1140}
!1157 = metadata !{i64 1141}
!1158 = metadata !{i64 1142}
!1159 = metadata !{i64 1143}
!1160 = metadata !{i64 1144}
!1161 = metadata !{i64 1145}
!1162 = metadata !{i64 1146}
!1163 = metadata !{i64 1147}
!1164 = metadata !{i64 1148}
!1165 = metadata !{i64 1149}
!1166 = metadata !{i64 1150}
!1167 = metadata !{i64 1151}
!1168 = metadata !{i64 1152}
!1169 = metadata !{i64 1153}
!1170 = metadata !{i64 1154}
!1171 = metadata !{i64 1155}
!1172 = metadata !{i64 1156}
!1173 = metadata !{i64 1157}
!1174 = metadata !{i64 1158}
!1175 = metadata !{i64 1159}
!1176 = metadata !{i64 1160}
!1177 = metadata !{i64 1161}
!1178 = metadata !{i64 1162}
!1179 = metadata !{i64 1163}
!1180 = metadata !{i64 1164}
!1181 = metadata !{i64 1165}
!1182 = metadata !{i64 1166}
!1183 = metadata !{i64 1167}
!1184 = metadata !{i64 1168}
!1185 = metadata !{i64 1169}
!1186 = metadata !{i64 1170}
!1187 = metadata !{i64 1171}
!1188 = metadata !{i64 1172}
!1189 = metadata !{i64 1173}
!1190 = metadata !{i64 1174}
!1191 = metadata !{i64 1175}
!1192 = metadata !{i64 1176}
!1193 = metadata !{i64 1177}
!1194 = metadata !{i64 1178}
!1195 = metadata !{i64 1179}
!1196 = metadata !{i64 1180}
!1197 = metadata !{i64 1181}
!1198 = metadata !{i64 1182}
!1199 = metadata !{i64 1183}
!1200 = metadata !{i64 1184}
!1201 = metadata !{i64 1185}
!1202 = metadata !{i64 1186}
!1203 = metadata !{i64 1187}
!1204 = metadata !{i64 1188}
!1205 = metadata !{i64 1189}
!1206 = metadata !{i64 1190}
!1207 = metadata !{i64 1191}
!1208 = metadata !{i64 1192}
!1209 = metadata !{i64 1193}
!1210 = metadata !{i64 1194}
!1211 = metadata !{i64 1195}
!1212 = metadata !{i64 1196}
!1213 = metadata !{i64 1197}
!1214 = metadata !{i64 1198}
!1215 = metadata !{i64 1199}
!1216 = metadata !{i64 1200}
!1217 = metadata !{i64 1201}
!1218 = metadata !{i64 1202}
!1219 = metadata !{i64 1203}
!1220 = metadata !{i64 1204}
!1221 = metadata !{i64 1205}
!1222 = metadata !{i64 1206}
!1223 = metadata !{i64 1207}
!1224 = metadata !{i64 1208}
!1225 = metadata !{i64 1209}
!1226 = metadata !{i64 1210}
!1227 = metadata !{i64 1211}
!1228 = metadata !{i64 1212}
!1229 = metadata !{i64 1213}
!1230 = metadata !{i64 1214}
!1231 = metadata !{i64 1215}
!1232 = metadata !{i64 1216}
!1233 = metadata !{i64 1217}
!1234 = metadata !{i64 1218}
!1235 = metadata !{i64 1219}
!1236 = metadata !{i64 1220}
!1237 = metadata !{i64 1221}
!1238 = metadata !{i64 1222}
!1239 = metadata !{i64 1223}
!1240 = metadata !{i64 1224}
!1241 = metadata !{i64 1225}
!1242 = metadata !{i64 1226}
!1243 = metadata !{i64 1227}
!1244 = metadata !{i64 1228}
!1245 = metadata !{i64 1229}
!1246 = metadata !{i64 1230}
!1247 = metadata !{i64 1231}
!1248 = metadata !{i64 1232}
!1249 = metadata !{i64 1233}
!1250 = metadata !{i64 1234}
!1251 = metadata !{i64 1235}
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
!1795 = metadata !{metadata !1796, metadata !24, i64 8}
!1796 = metadata !{metadata !"quantum_matrix_struct", metadata !2, i64 0, metadata !2, i64 4, metadata !24, i64 8}
!1797 = metadata !{i64 1779}
!1798 = metadata !{i64 1780}
!1799 = metadata !{i64 1781}
!1800 = metadata !{i64 1782}
!1801 = metadata !{i64 1783}
!1802 = metadata !{i64 1784}
!1803 = metadata !{i64 1785}
!1804 = metadata !{i64 1786}
!1805 = metadata !{i64 1787}
!1806 = metadata !{i64 1788}
!1807 = metadata !{i64 1789}
!1808 = metadata !{i64 1790}
!1809 = metadata !{i64 1791}
!1810 = metadata !{i64 1792}
!1811 = metadata !{i64 1793}
!1812 = metadata !{i64 1794}
!1813 = metadata !{i64 1795}
!1814 = metadata !{i64 1796}
!1815 = metadata !{i64 1797}
!1816 = metadata !{i64 1798}
!1817 = metadata !{i64 1799}
!1818 = metadata !{i64 1800}
!1819 = metadata !{i64 1801}
!1820 = metadata !{i64 1802}
!1821 = metadata !{i64 1803}
!1822 = metadata !{i64 1804}
!1823 = metadata !{i64 1805}
!1824 = metadata !{i64 1806}
!1825 = metadata !{i64 1807}
!1826 = metadata !{i64 1808}
!1827 = metadata !{i64 1809}
!1828 = metadata !{i64 1810}
!1829 = metadata !{i64 1811}
!1830 = metadata !{i64 1812}
!1831 = metadata !{i64 1813}
!1832 = metadata !{i64 1814}
!1833 = metadata !{i64 1815}
!1834 = metadata !{i64 1816}
!1835 = metadata !{i64 1817}
!1836 = metadata !{i64 1818}
!1837 = metadata !{i64 1819}
!1838 = metadata !{i64 1820}
!1839 = metadata !{i64 1821}
!1840 = metadata !{i64 1822}
!1841 = metadata !{i64 1823}
!1842 = metadata !{i64 1824}
!1843 = metadata !{i64 1825}
!1844 = metadata !{i64 1826}
!1845 = metadata !{i64 1827}
!1846 = metadata !{i64 1828}
!1847 = metadata !{i64 1829}
!1848 = metadata !{i64 1830}
!1849 = metadata !{i64 1831}
!1850 = metadata !{i64 1832}
!1851 = metadata !{i64 1833}
!1852 = metadata !{i64 1834}
!1853 = metadata !{i64 1835}
!1854 = metadata !{i64 1836}
!1855 = metadata !{i64 1837}
!1856 = metadata !{i64 1838}
!1857 = metadata !{i64 1839}
!1858 = metadata !{i64 1840}
!1859 = metadata !{i64 1841}
!1860 = metadata !{i64 1842}
!1861 = metadata !{i64 1843}
!1862 = metadata !{i64 1844}
!1863 = metadata !{i64 1845}
!1864 = metadata !{i64 1846}
!1865 = metadata !{i64 1847}
!1866 = metadata !{i64 1848}
!1867 = metadata !{i64 1849}
!1868 = metadata !{i64 1850}
!1869 = metadata !{i64 1851}
!1870 = metadata !{i64 1852}
!1871 = metadata !{i64 1853}
!1872 = metadata !{i64 1854}
!1873 = metadata !{i64 1855}
!1874 = metadata !{i64 1856}
!1875 = metadata !{i64 1857}
!1876 = metadata !{i64 1858}
!1877 = metadata !{i64 1859}
!1878 = metadata !{i64 1860}
!1879 = metadata !{i64 1861}
!1880 = metadata !{i64 1862}
!1881 = metadata !{i64 1863}
!1882 = metadata !{i64 1864}
!1883 = metadata !{i64 1865}
!1884 = metadata !{i64 1866}
!1885 = metadata !{i64 1867}
!1886 = metadata !{i64 1868}
!1887 = metadata !{i64 1869}
!1888 = metadata !{i64 1870}
!1889 = metadata !{i64 1871}
!1890 = metadata !{i64 1872}
!1891 = metadata !{i64 1873}
!1892 = metadata !{i64 1874}
!1893 = metadata !{i64 1875}
!1894 = metadata !{i64 1876}
!1895 = metadata !{i64 1877}
!1896 = metadata !{i64 1878}
!1897 = metadata !{i64 1879}
!1898 = metadata !{i64 1880}
!1899 = metadata !{i64 1881}
!1900 = metadata !{i64 1882}
!1901 = metadata !{i64 1883}
!1902 = metadata !{i64 1884}
!1903 = metadata !{i64 1885}
!1904 = metadata !{i64 1886}
!1905 = metadata !{i64 1887}
!1906 = metadata !{i64 1888}
!1907 = metadata !{i64 1889}
!1908 = metadata !{i64 1890}
!1909 = metadata !{i64 1891}
!1910 = metadata !{i64 1892}
!1911 = metadata !{i64 1893}
!1912 = metadata !{i64 1894}
!1913 = metadata !{i64 1895}
!1914 = metadata !{i64 1896}
!1915 = metadata !{i64 1897}
!1916 = metadata !{i64 1898}
!1917 = metadata !{i64 1899}
!1918 = metadata !{i64 1900}
!1919 = metadata !{i64 1901}
!1920 = metadata !{i64 1902}
!1921 = metadata !{i64 1903}
!1922 = metadata !{i64 1904}
!1923 = metadata !{i64 1905}
!1924 = metadata !{i64 1906}
!1925 = metadata !{i64 1907}
!1926 = metadata !{i64 1908}
!1927 = metadata !{i64 1909}
!1928 = metadata !{i64 1910}
!1929 = metadata !{i64 1911}
!1930 = metadata !{i64 1912}
!1931 = metadata !{i64 1913}
!1932 = metadata !{i64 1914}
!1933 = metadata !{i64 1915}
!1934 = metadata !{i64 1916}
!1935 = metadata !{i64 1917}
!1936 = metadata !{i64 1918}
!1937 = metadata !{i64 1919}
!1938 = metadata !{i64 1920}
!1939 = metadata !{i64 1921}
!1940 = metadata !{i64 1922}
!1941 = metadata !{i64 1923}
!1942 = metadata !{i64 1924}
!1943 = metadata !{i64 1925}
!1944 = metadata !{i64 1926}
!1945 = metadata !{i64 1927}
!1946 = metadata !{i64 1928}
!1947 = metadata !{i64 1929}
!1948 = metadata !{i64 1930}
!1949 = metadata !{i64 1931}
!1950 = metadata !{i64 1932}
!1951 = metadata !{i64 1933}
!1952 = metadata !{i64 1934}
!1953 = metadata !{i64 1935}
!1954 = metadata !{i64 1936}
!1955 = metadata !{i64 1937}
!1956 = metadata !{i64 1938}
!1957 = metadata !{i64 1939}
!1958 = metadata !{i64 1940}
!1959 = metadata !{i64 1941}
!1960 = metadata !{i64 1942}
!1961 = metadata !{i64 1943}
!1962 = metadata !{i64 1944}
!1963 = metadata !{i64 1945}
!1964 = metadata !{i64 1946}
!1965 = metadata !{i64 1947}
!1966 = metadata !{i64 1948}
!1967 = metadata !{i64 1949}
!1968 = metadata !{i64 1950}
!1969 = metadata !{i64 1951}
!1970 = metadata !{i64 1952}
!1971 = metadata !{i64 1953}
!1972 = metadata !{i64 1954}
!1973 = metadata !{i64 1955}
!1974 = metadata !{i64 1956}
!1975 = metadata !{i64 1957}
!1976 = metadata !{i64 1958}
!1977 = metadata !{i64 1959}
!1978 = metadata !{i64 1960}
!1979 = metadata !{i64 1961}
!1980 = metadata !{i64 1962}
!1981 = metadata !{i64 1963}
!1982 = metadata !{i64 1964}
!1983 = metadata !{i64 1965}
!1984 = metadata !{i64 1966}
!1985 = metadata !{i64 1967}
!1986 = metadata !{i64 1968}
!1987 = metadata !{i64 1969}
!1988 = metadata !{i64 1970}
!1989 = metadata !{i64 1971}
!1990 = metadata !{i64 1972}
!1991 = metadata !{i64 1973}
!1992 = metadata !{i64 1974}
!1993 = metadata !{i64 1975}
!1994 = metadata !{i64 1976}
!1995 = metadata !{i64 1977}
!1996 = metadata !{i64 1978}
!1997 = metadata !{i64 1979}
!1998 = metadata !{i64 1980}
!1999 = metadata !{i64 1981}
!2000 = metadata !{i64 1982}
!2001 = metadata !{i64 1983}
!2002 = metadata !{i64 1984}
!2003 = metadata !{i64 1985}
!2004 = metadata !{i64 1986}
!2005 = metadata !{i64 1987}
!2006 = metadata !{i64 1988}
!2007 = metadata !{i64 1989}
!2008 = metadata !{i64 1990}
!2009 = metadata !{i64 1991}
!2010 = metadata !{i64 1992}
!2011 = metadata !{i64 1993}
!2012 = metadata !{i64 1994}
!2013 = metadata !{i64 1995}
!2014 = metadata !{i64 1996}
!2015 = metadata !{i64 1997}
!2016 = metadata !{i64 1998}
!2017 = metadata !{i64 1999}
!2018 = metadata !{i64 2000}
!2019 = metadata !{i64 2001}
!2020 = metadata !{i64 2002}
!2021 = metadata !{i64 2003}
!2022 = metadata !{i64 2004}
!2023 = metadata !{i64 2005}
!2024 = metadata !{i64 2006}
!2025 = metadata !{i64 2007}
!2026 = metadata !{i64 2008}
!2027 = metadata !{i64 2009}
!2028 = metadata !{i64 2010}
!2029 = metadata !{i64 2011}
!2030 = metadata !{i64 2012}
!2031 = metadata !{i64 2013}
!2032 = metadata !{i64 2014}
!2033 = metadata !{i64 2015}
!2034 = metadata !{i64 2016}
!2035 = metadata !{i64 2017}
!2036 = metadata !{i64 2018}
!2037 = metadata !{i64 2019}
!2038 = metadata !{i64 2020}
!2039 = metadata !{i64 2021}
!2040 = metadata !{i64 2022}
!2041 = metadata !{i64 2023}
!2042 = metadata !{i64 2024}
!2043 = metadata !{i64 2025}
!2044 = metadata !{i64 2026}
!2045 = metadata !{i64 2027}
!2046 = metadata !{i64 2028}
!2047 = metadata !{i64 2029}
!2048 = metadata !{i64 2030}
!2049 = metadata !{i64 2031}
!2050 = metadata !{i64 2032}
!2051 = metadata !{i64 2033}
!2052 = metadata !{i64 2034}
!2053 = metadata !{i64 2035}
!2054 = metadata !{i64 2036}
!2055 = metadata !{i64 2037}
!2056 = metadata !{i64 2038}
!2057 = metadata !{i64 2039}
!2058 = metadata !{i64 2040}
!2059 = metadata !{i64 2041}
!2060 = metadata !{i64 2042}
!2061 = metadata !{i64 2043}
!2062 = metadata !{i64 2044}
!2063 = metadata !{i64 2045}
!2064 = metadata !{i64 2046}
!2065 = metadata !{i64 2047}
!2066 = metadata !{i64 2048}
!2067 = metadata !{i64 2049}
!2068 = metadata !{i64 2050}
!2069 = metadata !{i64 2051}
!2070 = metadata !{i64 2052}
!2071 = metadata !{i64 2053}
!2072 = metadata !{i64 2054}
!2073 = metadata !{i64 2055}
!2074 = metadata !{i64 2056}
!2075 = metadata !{i64 2057}
!2076 = metadata !{i64 2058}
!2077 = metadata !{i64 2059}
!2078 = metadata !{i64 2060}
!2079 = metadata !{i64 2061}
!2080 = metadata !{i64 2062}
!2081 = metadata !{i64 2063}
!2082 = metadata !{i64 2064}
!2083 = metadata !{i64 2065}
!2084 = metadata !{i64 2066}
!2085 = metadata !{i64 2067}
!2086 = metadata !{i64 2068}
!2087 = metadata !{i64 2069}
!2088 = metadata !{i64 2070}
!2089 = metadata !{i64 2071}
!2090 = metadata !{i64 2072}
!2091 = metadata !{i64 2073}
!2092 = metadata !{i64 2074}
!2093 = metadata !{i64 2075}
!2094 = metadata !{i64 2076}
!2095 = metadata !{i64 2077}
!2096 = metadata !{i64 2078}
!2097 = metadata !{i64 2079}
!2098 = metadata !{i64 2080}
!2099 = metadata !{i64 2081}
!2100 = metadata !{i64 2082}
!2101 = metadata !{i64 2083}
!2102 = metadata !{i64 2084}
!2103 = metadata !{i64 2085}
!2104 = metadata !{i64 2086}
!2105 = metadata !{i64 2087}
!2106 = metadata !{i64 2088}
!2107 = metadata !{i64 2089}
!2108 = metadata !{i64 2090}
!2109 = metadata !{i64 2091}
!2110 = metadata !{i64 2092}
!2111 = metadata !{i64 2093}
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
!2625 = metadata !{metadata !1796, metadata !2, i64 4}
!2626 = metadata !{i64 2607}
!2627 = metadata !{i64 2608}
!2628 = metadata !{i64 2609}
!2629 = metadata !{i64 2610}
!2630 = metadata !{metadata !1796, metadata !2, i64 0}
!2631 = metadata !{i64 2611}
!2632 = metadata !{i64 2612}
!2633 = metadata !{i64 2613}
!2634 = metadata !{i64 2614}
!2635 = metadata !{i64 2615}
!2636 = metadata !{i64 2616}
!2637 = metadata !{i64 2617}
!2638 = metadata !{i64 2618}
!2639 = metadata !{i64 2619}
!2640 = metadata !{i64 2620}
!2641 = metadata !{i64 2621}
!2642 = metadata !{i64 2622}
!2643 = metadata !{i64 2623}
!2644 = metadata !{i64 2624}
!2645 = metadata !{i64 2625}
!2646 = metadata !{i64 2626}
!2647 = metadata !{i64 2627}
!2648 = metadata !{i64 2628}
!2649 = metadata !{i64 2629}
!2650 = metadata !{i64 2630}
!2651 = metadata !{i64 2631}
!2652 = metadata !{i64 2632}
!2653 = metadata !{i64 2633}
!2654 = metadata !{i64 2634}
!2655 = metadata !{i64 2635}
!2656 = metadata !{i64 2636}
!2657 = metadata !{i64 2637}
!2658 = metadata !{i64 2638}
!2659 = metadata !{i64 2639}
!2660 = metadata !{i64 2640}
!2661 = metadata !{i64 2641}
!2662 = metadata !{i64 2642}
!2663 = metadata !{i64 2643}
!2664 = metadata !{i64 2644}
!2665 = metadata !{i64 2645}
!2666 = metadata !{i64 2646}
!2667 = metadata !{i64 2647}
!2668 = metadata !{i64 2648}
!2669 = metadata !{i64 2649}
!2670 = metadata !{i64 2650}
!2671 = metadata !{i64 2651}
!2672 = metadata !{i64 2652}
!2673 = metadata !{i64 2653}
!2674 = metadata !{i64 2654}
!2675 = metadata !{i64 2655}
!2676 = metadata !{i64 2656}
!2677 = metadata !{i64 2657}
!2678 = metadata !{i64 2658}
!2679 = metadata !{i64 2659}
!2680 = metadata !{i64 2660}
!2681 = metadata !{i64 2661}
!2682 = metadata !{i64 2662}
!2683 = metadata !{i64 2663}
!2684 = metadata !{i64 2664}
!2685 = metadata !{i64 2665}
!2686 = metadata !{i64 2666}
!2687 = metadata !{i64 2667}
!2688 = metadata !{i64 2668}
!2689 = metadata !{i64 2669}
!2690 = metadata !{i64 2670}
!2691 = metadata !{i64 2671}
!2692 = metadata !{i64 2672}
!2693 = metadata !{i64 2673}
!2694 = metadata !{i64 2674}
!2695 = metadata !{i64 2675}
!2696 = metadata !{i64 2676}
!2697 = metadata !{i64 2677}
!2698 = metadata !{i64 2678}
!2699 = metadata !{i64 2679}
!2700 = metadata !{i64 2680}
!2701 = metadata !{i64 2681}
!2702 = metadata !{i64 2682}
!2703 = metadata !{i64 2683}
!2704 = metadata !{i64 2684}
!2705 = metadata !{i64 2685}
!2706 = metadata !{i64 2686}
!2707 = metadata !{i64 2687}
!2708 = metadata !{i64 2688}
!2709 = metadata !{i64 2689}
!2710 = metadata !{i64 2690}
!2711 = metadata !{i64 2691}
!2712 = metadata !{i64 2692}
!2713 = metadata !{i64 2693}
!2714 = metadata !{i64 2694}
!2715 = metadata !{i64 2695}
!2716 = metadata !{i64 2696}
!2717 = metadata !{i64 2697}
!2718 = metadata !{i64 2698}
!2719 = metadata !{i64 2699}
!2720 = metadata !{i64 2700}
!2721 = metadata !{i64 2701}
!2722 = metadata !{i64 2702}
!2723 = metadata !{i64 2703}
!2724 = metadata !{i64 2704}
!2725 = metadata !{i64 2705}
!2726 = metadata !{i64 2706}
!2727 = metadata !{i64 2707}
!2728 = metadata !{i64 2708}
!2729 = metadata !{i64 2709}
!2730 = metadata !{i64 2710}
!2731 = metadata !{i64 2711}
!2732 = metadata !{i64 2712}
!2733 = metadata !{i64 2713}
!2734 = metadata !{i64 2714}
!2735 = metadata !{i64 2715}
!2736 = metadata !{i64 2716}
!2737 = metadata !{i64 2717}
!2738 = metadata !{i64 2718}
!2739 = metadata !{i64 2719}
!2740 = metadata !{i64 2720}
!2741 = metadata !{i64 2721}
!2742 = metadata !{i64 2722}
!2743 = metadata !{i64 2723}
!2744 = metadata !{i64 2724}
!2745 = metadata !{i64 2725}
!2746 = metadata !{i64 2726}
!2747 = metadata !{i64 2727}
!2748 = metadata !{i64 2728}
!2749 = metadata !{i64 2729}
!2750 = metadata !{i64 2730}
!2751 = metadata !{i64 2731}
!2752 = metadata !{i64 2732}
!2753 = metadata !{i64 2733}
!2754 = metadata !{i64 2734}
!2755 = metadata !{i64 2735}
!2756 = metadata !{i64 2736}
!2757 = metadata !{i64 2737}
!2758 = metadata !{i64 2738}
!2759 = metadata !{i64 2739}
!2760 = metadata !{i64 2740}
!2761 = metadata !{i64 2741}
!2762 = metadata !{i64 2742}
!2763 = metadata !{i64 2743}
!2764 = metadata !{i64 2744}
!2765 = metadata !{i64 2745}
!2766 = metadata !{i64 2746}
!2767 = metadata !{i64 2747}
!2768 = metadata !{i64 2748}
!2769 = metadata !{i64 2749}
!2770 = metadata !{i64 2750}
!2771 = metadata !{i64 2751}
!2772 = metadata !{i64 2752}
!2773 = metadata !{i64 2753}
!2774 = metadata !{i64 2754}
!2775 = metadata !{i64 2755}
!2776 = metadata !{i64 2756}
!2777 = metadata !{i64 2757}
!2778 = metadata !{i64 2758}
!2779 = metadata !{i64 2759}
!2780 = metadata !{i64 2760}
!2781 = metadata !{i64 2761}
!2782 = metadata !{i64 2762}
!2783 = metadata !{i64 2763}
!2784 = metadata !{i64 2764}
!2785 = metadata !{i64 2765}
!2786 = metadata !{i64 2766}
!2787 = metadata !{i64 2767}
!2788 = metadata !{i64 2768}
!2789 = metadata !{i64 2769}
!2790 = metadata !{i64 2770}
!2791 = metadata !{i64 2771}
!2792 = metadata !{i64 2772}
!2793 = metadata !{i64 2773}
!2794 = metadata !{i64 2774}
!2795 = metadata !{i64 2775}
!2796 = metadata !{i64 2776}
!2797 = metadata !{i64 2777}
!2798 = metadata !{i64 2778}
!2799 = metadata !{i64 2779}
!2800 = metadata !{i64 2780}
!2801 = metadata !{i64 2781}
!2802 = metadata !{i64 2782}
!2803 = metadata !{i64 2783}
!2804 = metadata !{i64 2784}
!2805 = metadata !{i64 2785}
!2806 = metadata !{i64 2786}
!2807 = metadata !{i64 2787}
!2808 = metadata !{i64 2788}
!2809 = metadata !{i64 2789}
!2810 = metadata !{i64 2790}
!2811 = metadata !{i64 2791}
!2812 = metadata !{i64 2792}
!2813 = metadata !{i64 2793}
!2814 = metadata !{i64 2794}
!2815 = metadata !{i64 2795}
!2816 = metadata !{i64 2796}
!2817 = metadata !{i64 2797}
!2818 = metadata !{i64 2798}
!2819 = metadata !{i64 2799}
!2820 = metadata !{i64 2800}
!2821 = metadata !{i64 2801}
!2822 = metadata !{i64 2802}
!2823 = metadata !{i64 2803}
!2824 = metadata !{i64 2804}
!2825 = metadata !{i64 2805}
!2826 = metadata !{i64 2806}
!2827 = metadata !{i64 2807}
!2828 = metadata !{i64 2808}
!2829 = metadata !{i64 2809}
!2830 = metadata !{i64 2810}
!2831 = metadata !{i64 2811}
!2832 = metadata !{i64 2812}
!2833 = metadata !{i64 2813}
!2834 = metadata !{i64 2814}
!2835 = metadata !{i64 2815}
!2836 = metadata !{i64 2816}
!2837 = metadata !{i64 2817}
!2838 = metadata !{i64 2818}
!2839 = metadata !{i64 2819}
!2840 = metadata !{i64 2820}
!2841 = metadata !{i64 2821}
!2842 = metadata !{i64 2822}
!2843 = metadata !{i64 2823}
!2844 = metadata !{i64 2824}
!2845 = metadata !{i64 2825}
!2846 = metadata !{i64 2826}
!2847 = metadata !{i64 2827}
!2848 = metadata !{i64 2828}
!2849 = metadata !{i64 2829}
!2850 = metadata !{i64 2830}
!2851 = metadata !{i64 2831}
!2852 = metadata !{i64 2832}
!2853 = metadata !{i64 2833}
!2854 = metadata !{i64 2834}
!2855 = metadata !{i64 2835}
!2856 = metadata !{i64 2836}
!2857 = metadata !{i64 2837}
!2858 = metadata !{i64 2838}
!2859 = metadata !{i64 2839}
!2860 = metadata !{i64 2840}
!2861 = metadata !{i64 2841}
!2862 = metadata !{i64 2842}
!2863 = metadata !{i64 2843}
!2864 = metadata !{i64 2844}
!2865 = metadata !{i64 2845}
!2866 = metadata !{i64 2846}
!2867 = metadata !{i64 2847}
!2868 = metadata !{i64 2848}
!2869 = metadata !{i64 2849}
!2870 = metadata !{i64 2850}
!2871 = metadata !{i64 2851}
!2872 = metadata !{i64 2852}
!2873 = metadata !{i64 2853}
!2874 = metadata !{i64 2854}
!2875 = metadata !{i64 2855}
!2876 = metadata !{i64 2856}
!2877 = metadata !{i64 2857}
!2878 = metadata !{i64 2858}
!2879 = metadata !{i64 2859}
!2880 = metadata !{i64 2860}
!2881 = metadata !{i64 2861}
!2882 = metadata !{i64 2862}
!2883 = metadata !{i64 2863}
!2884 = metadata !{i64 2864}
!2885 = metadata !{i64 2865}
!2886 = metadata !{i64 2866}
!2887 = metadata !{i64 2867}
!2888 = metadata !{i64 2868}
!2889 = metadata !{i64 2869}
!2890 = metadata !{i64 2870}
!2891 = metadata !{i64 2871}
!2892 = metadata !{i64 2872}
!2893 = metadata !{i64 2873}
!2894 = metadata !{i64 2874}
!2895 = metadata !{i64 2875}
!2896 = metadata !{i64 2876}
!2897 = metadata !{i64 2877}
!2898 = metadata !{i64 2878}
!2899 = metadata !{i64 2879}
!2900 = metadata !{i64 2880}
!2901 = metadata !{i64 2881}
!2902 = metadata !{i64 2882}
!2903 = metadata !{i64 2883}
!2904 = metadata !{i64 2884}
!2905 = metadata !{i64 2885}
!2906 = metadata !{i64 2886}
!2907 = metadata !{i64 2887}
!2908 = metadata !{i64 2888}
!2909 = metadata !{i64 2889}
!2910 = metadata !{i64 2890}
!2911 = metadata !{i64 2891}
!2912 = metadata !{i64 2892}
!2913 = metadata !{i64 2893}
!2914 = metadata !{i64 2894}
!2915 = metadata !{i64 2895}
!2916 = metadata !{i64 2896}
!2917 = metadata !{i64 2897}
!2918 = metadata !{i64 2898}
!2919 = metadata !{i64 2899}
!2920 = metadata !{i64 2900}
!2921 = metadata !{i64 2901}
!2922 = metadata !{i64 2902}
!2923 = metadata !{i64 2903}
!2924 = metadata !{i64 2904}
!2925 = metadata !{i64 2905}
!2926 = metadata !{i64 2906}
!2927 = metadata !{i64 2907}
!2928 = metadata !{i64 2908}
!2929 = metadata !{i64 2909}
!2930 = metadata !{i64 2910}
!2931 = metadata !{i64 2911}
!2932 = metadata !{i64 2912}
!2933 = metadata !{i64 2913}
!2934 = metadata !{i64 2914}
!2935 = metadata !{i64 2915}
!2936 = metadata !{i64 2916}
!2937 = metadata !{i64 2917}
!2938 = metadata !{i64 2918}
!2939 = metadata !{i64 2919}
!2940 = metadata !{i64 2920}
!2941 = metadata !{i64 2921}
!2942 = metadata !{i64 2922}
!2943 = metadata !{i64 2923}
!2944 = metadata !{i64 2924}
!2945 = metadata !{i64 2925}
!2946 = metadata !{i64 2926}
!2947 = metadata !{i64 2927}
!2948 = metadata !{i64 2928}
!2949 = metadata !{i64 2929}
!2950 = metadata !{i64 2930}
!2951 = metadata !{i64 2931}
!2952 = metadata !{i64 2932}
!2953 = metadata !{i64 2933}
!2954 = metadata !{i64 2934}
!2955 = metadata !{i64 2935}
!2956 = metadata !{i64 2936}
!2957 = metadata !{i64 2937}
!2958 = metadata !{i64 2938}
!2959 = metadata !{i64 2939}
!2960 = metadata !{i64 2940}
!2961 = metadata !{i64 2941}
!2962 = metadata !{i64 2942}
!2963 = metadata !{i64 2943}
!2964 = metadata !{i64 2944}
!2965 = metadata !{i64 2945}
!2966 = metadata !{i64 2946}
!2967 = metadata !{i64 2947}
!2968 = metadata !{i64 2948}
!2969 = metadata !{i64 2949}
!2970 = metadata !{i64 2950}
!2971 = metadata !{i64 2951}
!2972 = metadata !{i64 2952}
!2973 = metadata !{i64 2953}
!2974 = metadata !{i64 2954}
!2975 = metadata !{i64 2955}
!2976 = metadata !{i64 2956}
!2977 = metadata !{i64 2957}
!2978 = metadata !{i64 2958}
!2979 = metadata !{i64 2959}
!2980 = metadata !{i64 2960}
!2981 = metadata !{i64 2961}
!2982 = metadata !{i64 2962}
!2983 = metadata !{i64 2963}
!2984 = metadata !{i64 2964}
!2985 = metadata !{i64 2965}
!2986 = metadata !{i64 2966}
!2987 = metadata !{i64 2967}
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
!3024 = metadata !{i64 3004}
!3025 = metadata !{i64 3005}
!3026 = metadata !{i64 3006}
!3027 = metadata !{i64 3007}
!3028 = metadata !{i64 3008}
!3029 = metadata !{i64 3009}
!3030 = metadata !{i64 3010}
!3031 = metadata !{i64 3011}
!3032 = metadata !{i64 3012}
!3033 = metadata !{i64 3013}
!3034 = metadata !{i64 3014}
!3035 = metadata !{i64 3015}
!3036 = metadata !{i64 3016}
!3037 = metadata !{i64 3017}
!3038 = metadata !{i64 3018}
!3039 = metadata !{i64 3019}
!3040 = metadata !{i64 3020}
!3041 = metadata !{i64 3021}
!3042 = metadata !{i64 3022}
!3043 = metadata !{i64 3023}
!3044 = metadata !{i64 3024}
!3045 = metadata !{i64 3025}
!3046 = metadata !{i64 3026}
!3047 = metadata !{i64 3027}
!3048 = metadata !{i64 3028}
!3049 = metadata !{i64 3029}
!3050 = metadata !{i64 3030}
!3051 = metadata !{i64 3031}
!3052 = metadata !{i64 3032}
!3053 = metadata !{i64 3033}
!3054 = metadata !{i64 3034}
!3055 = metadata !{i64 3035}
!3056 = metadata !{i64 3036}
!3057 = metadata !{i64 3037}
!3058 = metadata !{i64 3038}
!3059 = metadata !{i64 3039}
!3060 = metadata !{i64 3040}
!3061 = metadata !{i64 3041}
!3062 = metadata !{i64 3042}
!3063 = metadata !{i64 3043}
!3064 = metadata !{i64 3044}
!3065 = metadata !{i64 3045}
!3066 = metadata !{i64 3046}
!3067 = metadata !{i64 3047}
!3068 = metadata !{i64 3048}
!3069 = metadata !{i64 3049}
!3070 = metadata !{i64 3050}
!3071 = metadata !{i64 3051}
!3072 = metadata !{i64 3052}
!3073 = metadata !{i64 3053}
!3074 = metadata !{i64 3054}
!3075 = metadata !{i64 3055}
!3076 = metadata !{i64 3056}
!3077 = metadata !{i64 3057}
!3078 = metadata !{i64 3058}
!3079 = metadata !{i64 3059}
!3080 = metadata !{i64 3060}
!3081 = metadata !{i64 3061}
!3082 = metadata !{i64 3062}
!3083 = metadata !{i64 3063}
!3084 = metadata !{i64 3064}
!3085 = metadata !{i64 3065}
!3086 = metadata !{i64 3066}
!3087 = metadata !{i64 3067}
!3088 = metadata !{i64 3068}
!3089 = metadata !{i64 3069}
!3090 = metadata !{i64 3070}
!3091 = metadata !{i64 3071}
!3092 = metadata !{i64 3072}
!3093 = metadata !{i64 3073}
!3094 = metadata !{i64 3074}
!3095 = metadata !{i64 3075}
!3096 = metadata !{i64 3076}
!3097 = metadata !{i64 3077}
!3098 = metadata !{i64 3078}
!3099 = metadata !{i64 3079}
!3100 = metadata !{i64 3080}
!3101 = metadata !{i64 3081}
!3102 = metadata !{i64 3082}
!3103 = metadata !{i64 3083}
!3104 = metadata !{i64 3084}
!3105 = metadata !{i64 3085}
!3106 = metadata !{i64 3086}
!3107 = metadata !{i64 3087}
!3108 = metadata !{i64 3088}
!3109 = metadata !{i64 3089}
!3110 = metadata !{i64 3090}
!3111 = metadata !{i64 3091}
!3112 = metadata !{i64 3092}
!3113 = metadata !{i64 3093}
!3114 = metadata !{i64 3094}
!3115 = metadata !{i64 3095}
!3116 = metadata !{i64 3096}
!3117 = metadata !{i64 3097}
!3118 = metadata !{i64 3098}
!3119 = metadata !{i64 3099}
!3120 = metadata !{i64 3100}
!3121 = metadata !{i64 3101}
!3122 = metadata !{i64 3102}
!3123 = metadata !{i64 3103}
!3124 = metadata !{i64 3104}
!3125 = metadata !{i64 3105}
!3126 = metadata !{i64 3106}
!3127 = metadata !{i64 3107}
!3128 = metadata !{i64 3108}
!3129 = metadata !{i64 3109}
!3130 = metadata !{i64 3110}
!3131 = metadata !{i64 3111}
!3132 = metadata !{i64 3112}
!3133 = metadata !{i64 3113}
!3134 = metadata !{i64 3114}
!3135 = metadata !{i64 3115}
!3136 = metadata !{i64 3116}
!3137 = metadata !{i64 3117}
!3138 = metadata !{i64 3118}
!3139 = metadata !{i64 3119}
!3140 = metadata !{i64 3120}
!3141 = metadata !{i64 3121}
!3142 = metadata !{i64 3122}
!3143 = metadata !{i64 3123}
!3144 = metadata !{i64 3124}
!3145 = metadata !{i64 3125}
!3146 = metadata !{i64 3126}
!3147 = metadata !{i64 3127}
!3148 = metadata !{i64 3128}
!3149 = metadata !{i64 3129}
!3150 = metadata !{i64 3130}
!3151 = metadata !{i64 3131}
!3152 = metadata !{i64 3132}
!3153 = metadata !{i64 3133}
!3154 = metadata !{i64 3134}
!3155 = metadata !{i64 3135}
!3156 = metadata !{i64 3136}
!3157 = metadata !{i64 3137}
!3158 = metadata !{i64 3138}
!3159 = metadata !{i64 3139}
!3160 = metadata !{i64 3140}
!3161 = metadata !{i64 3141}
!3162 = metadata !{i64 3142}
!3163 = metadata !{i64 3143}
!3164 = metadata !{i64 3144}
!3165 = metadata !{i64 3145}
!3166 = metadata !{i64 3146}
!3167 = metadata !{i64 3147}
!3168 = metadata !{i64 3148}
!3169 = metadata !{i64 3149}
!3170 = metadata !{i64 3150}
!3171 = metadata !{i64 3151}
!3172 = metadata !{i64 3152}
!3173 = metadata !{i64 3153}
!3174 = metadata !{i64 3154}
!3175 = metadata !{i64 3155}
!3176 = metadata !{i64 3156}
!3177 = metadata !{i64 3157}
!3178 = metadata !{i64 3158}
!3179 = metadata !{i64 3159}
!3180 = metadata !{i64 3160}
!3181 = metadata !{i64 3161}
!3182 = metadata !{i64 3162}
!3183 = metadata !{i64 3163}
!3184 = metadata !{i64 3164}
!3185 = metadata !{i64 3165}
!3186 = metadata !{i64 3166}
!3187 = metadata !{i64 3167}
!3188 = metadata !{i64 3168}
!3189 = metadata !{i64 3169}
!3190 = metadata !{i64 3170}
!3191 = metadata !{i64 3171}
!3192 = metadata !{i64 3172}
!3193 = metadata !{i64 3173}
!3194 = metadata !{i64 3174}
!3195 = metadata !{i64 3175}
!3196 = metadata !{i64 3176}
!3197 = metadata !{i64 3177}
!3198 = metadata !{i64 3178}
!3199 = metadata !{i64 3179}
!3200 = metadata !{i64 3180}
!3201 = metadata !{i64 3181}
!3202 = metadata !{i64 3182}
!3203 = metadata !{i64 3183}
!3204 = metadata !{i64 3184}
!3205 = metadata !{i64 3185}
!3206 = metadata !{i64 3186}
!3207 = metadata !{i64 3187}
!3208 = metadata !{i64 3188}
!3209 = metadata !{i64 3189}
!3210 = metadata !{i64 3190}
!3211 = metadata !{i64 3191}
!3212 = metadata !{i64 3192}
!3213 = metadata !{i64 3193}
!3214 = metadata !{i64 3194}
!3215 = metadata !{i64 3195}
!3216 = metadata !{i64 3196}
!3217 = metadata !{i64 3197}
!3218 = metadata !{i64 3198}
!3219 = metadata !{i64 3199}
!3220 = metadata !{i64 3200}
!3221 = metadata !{i64 3201}
!3222 = metadata !{i64 3202}
!3223 = metadata !{i64 3203}
!3224 = metadata !{i64 3204}
!3225 = metadata !{i64 3205}
!3226 = metadata !{i64 3206}
!3227 = metadata !{i64 3207}
!3228 = metadata !{i64 3208}
!3229 = metadata !{i64 3209}
!3230 = metadata !{i64 3210}
!3231 = metadata !{i64 3211}
!3232 = metadata !{i64 3212}
!3233 = metadata !{i64 3213}
!3234 = metadata !{i64 3214}
!3235 = metadata !{i64 3215}
!3236 = metadata !{i64 3216}
!3237 = metadata !{i64 3217}
!3238 = metadata !{i64 3218}
!3239 = metadata !{i64 3219}
!3240 = metadata !{i64 3220}
!3241 = metadata !{i64 3221}
!3242 = metadata !{i64 3222}
!3243 = metadata !{i64 3223}
!3244 = metadata !{i64 3224}
!3245 = metadata !{i64 3225}
!3246 = metadata !{i64 3226}
!3247 = metadata !{i64 3227}
!3248 = metadata !{i64 3228}
!3249 = metadata !{i64 3229}
!3250 = metadata !{i64 3230}
!3251 = metadata !{i64 3231}
!3252 = metadata !{i64 3232}
!3253 = metadata !{i64 3233}
!3254 = metadata !{i64 3234}
!3255 = metadata !{i64 3235}
!3256 = metadata !{i64 3236}
!3257 = metadata !{i64 3237}
!3258 = metadata !{i64 3238}
!3259 = metadata !{i64 3239}
!3260 = metadata !{i64 3240}
!3261 = metadata !{i64 3241}
!3262 = metadata !{i64 3242}
!3263 = metadata !{i64 3243}
!3264 = metadata !{i64 3244}
!3265 = metadata !{i64 3245}
!3266 = metadata !{i64 3246}
!3267 = metadata !{i64 3247}
!3268 = metadata !{i64 3248}
!3269 = metadata !{i64 3249}
!3270 = metadata !{i64 3250}
!3271 = metadata !{i64 3251}
!3272 = metadata !{i64 3252}
!3273 = metadata !{i64 3253}
!3274 = metadata !{i64 3254}
!3275 = metadata !{i64 3255}
!3276 = metadata !{i64 3256}
!3277 = metadata !{i64 3257}
!3278 = metadata !{i64 3258}
!3279 = metadata !{i64 3259}
!3280 = metadata !{i64 3260}
!3281 = metadata !{i64 3261}
!3282 = metadata !{i64 3262}
!3283 = metadata !{i64 3263}
!3284 = metadata !{i64 3264}
!3285 = metadata !{i64 3265}
!3286 = metadata !{i64 3266}
!3287 = metadata !{i64 3267}
!3288 = metadata !{i64 3268}
!3289 = metadata !{i64 3269}
!3290 = metadata !{i64 3270}
!3291 = metadata !{i64 3271}
!3292 = metadata !{i64 3272}
!3293 = metadata !{i64 3273}
!3294 = metadata !{i64 3274}
!3295 = metadata !{i64 3275}
!3296 = metadata !{i64 3276}
!3297 = metadata !{i64 3277}
!3298 = metadata !{i64 3278}
!3299 = metadata !{i64 3279}
!3300 = metadata !{i64 3280}
!3301 = metadata !{i64 3281}
!3302 = metadata !{i64 3282}
!3303 = metadata !{i64 3283}
!3304 = metadata !{i64 3284}
!3305 = metadata !{i64 3285}
!3306 = metadata !{i64 3286}
!3307 = metadata !{i64 3287}
!3308 = metadata !{i64 3288}
!3309 = metadata !{i64 3289}
!3310 = metadata !{i64 3290}
!3311 = metadata !{i64 3291}
!3312 = metadata !{i64 3292}
!3313 = metadata !{i64 3293}
!3314 = metadata !{i64 3294}
!3315 = metadata !{i64 3295}
!3316 = metadata !{i64 3296}
!3317 = metadata !{i64 3297}
!3318 = metadata !{i64 3298}
!3319 = metadata !{i64 3299}
!3320 = metadata !{i64 3300}
!3321 = metadata !{i64 3301}
!3322 = metadata !{i64 3302}
!3323 = metadata !{i64 3303}
!3324 = metadata !{i64 3304}
!3325 = metadata !{i64 3305}
!3326 = metadata !{i64 3306}
!3327 = metadata !{i64 3307}
!3328 = metadata !{i64 3308}
!3329 = metadata !{i64 3309}
!3330 = metadata !{i64 3310}
!3331 = metadata !{i64 3311}
!3332 = metadata !{i64 3312}
!3333 = metadata !{i64 3313}
!3334 = metadata !{i64 3314}
!3335 = metadata !{i64 3315}
!3336 = metadata !{i64 3316}
!3337 = metadata !{i64 3317}
!3338 = metadata !{i64 3318}
!3339 = metadata !{i64 3319}
!3340 = metadata !{i64 3320}
!3341 = metadata !{i64 3321}
!3342 = metadata !{i64 3322}
!3343 = metadata !{i64 3323}
!3344 = metadata !{i64 3324}
!3345 = metadata !{i64 3325}
!3346 = metadata !{i64 3326}
!3347 = metadata !{i64 3327}
!3348 = metadata !{i64 3328}
!3349 = metadata !{i64 3329}
!3350 = metadata !{i64 3330}
!3351 = metadata !{i64 3331}
!3352 = metadata !{i64 3332}
!3353 = metadata !{i64 3333}
!3354 = metadata !{i64 3334}
!3355 = metadata !{i64 3335}
!3356 = metadata !{i64 3336}
!3357 = metadata !{i64 3337}
!3358 = metadata !{i64 3338}
!3359 = metadata !{i64 3339}
!3360 = metadata !{i64 3340}
!3361 = metadata !{i64 3341}
!3362 = metadata !{i64 3342}
!3363 = metadata !{i64 3343}
!3364 = metadata !{i64 3344}
!3365 = metadata !{i64 3345}
!3366 = metadata !{i64 3346}
!3367 = metadata !{i64 3347}
!3368 = metadata !{i64 3348}
!3369 = metadata !{i64 3349}
!3370 = metadata !{i64 3350}
!3371 = metadata !{i64 3351}
!3372 = metadata !{i64 3352}
!3373 = metadata !{i64 3353}
!3374 = metadata !{i64 3354}
!3375 = metadata !{i64 3355}
!3376 = metadata !{i64 3356}
!3377 = metadata !{i64 3357}
!3378 = metadata !{i64 3358}
!3379 = metadata !{i64 3359}
!3380 = metadata !{i64 3360}
!3381 = metadata !{i64 3361}
!3382 = metadata !{i64 3362}
!3383 = metadata !{i64 3363}
!3384 = metadata !{i64 3364}
!3385 = metadata !{i64 3365}
!3386 = metadata !{i64 3366}
!3387 = metadata !{i64 3367}
!3388 = metadata !{metadata !3389, metadata !3389, i64 0}
!3389 = metadata !{metadata !"long", metadata !3, i64 0}
!3390 = metadata !{i64 3368}
!3391 = metadata !{i64 3369}
!3392 = metadata !{i64 3370}
!3393 = metadata !{i64 3371}
!3394 = metadata !{i64 3372}
!3395 = metadata !{i64 3373}
!3396 = metadata !{i64 3374}
!3397 = metadata !{i64 3375}
!3398 = metadata !{i64 3376}
!3399 = metadata !{i64 3377}
!3400 = metadata !{i64 3378}
!3401 = metadata !{i64 3379}
!3402 = metadata !{i64 3380}
!3403 = metadata !{i64 3381}
!3404 = metadata !{i64 3382}
!3405 = metadata !{i64 3383}
!3406 = metadata !{i64 3384}
!3407 = metadata !{i64 3385}
!3408 = metadata !{i64 3386}
!3409 = metadata !{i64 3387}
!3410 = metadata !{i64 3388}
!3411 = metadata !{i64 3389}
!3412 = metadata !{i64 3390}
!3413 = metadata !{i64 3391}
!3414 = metadata !{i64 3392}
!3415 = metadata !{i64 3393}
!3416 = metadata !{i64 3394}
!3417 = metadata !{i64 3395}
!3418 = metadata !{i64 3396}
!3419 = metadata !{i64 3397}
!3420 = metadata !{i64 3398}
!3421 = metadata !{i64 3399}
!3422 = metadata !{i64 3400}
!3423 = metadata !{i64 3401}
!3424 = metadata !{i64 3402}
!3425 = metadata !{i64 3403}
!3426 = metadata !{i64 3404}
!3427 = metadata !{i64 3405}
!3428 = metadata !{i64 3406}
!3429 = metadata !{i64 3407}
!3430 = metadata !{i64 3408}
!3431 = metadata !{i64 3409}
!3432 = metadata !{i64 3410}
!3433 = metadata !{i64 3411}
!3434 = metadata !{i64 3412}
!3435 = metadata !{i64 3413}
!3436 = metadata !{i64 3414}
!3437 = metadata !{i64 3415}
!3438 = metadata !{i64 3416}
!3439 = metadata !{i64 3417}
!3440 = metadata !{i64 3418}
!3441 = metadata !{i64 3419}
!3442 = metadata !{i64 3420}
!3443 = metadata !{i64 3421}
!3444 = metadata !{i64 3422}
!3445 = metadata !{i64 3423}
!3446 = metadata !{i64 3424}
!3447 = metadata !{i64 3425}
!3448 = metadata !{i64 3426}
!3449 = metadata !{i64 3427}
!3450 = metadata !{i64 3428}
!3451 = metadata !{i64 3429}
!3452 = metadata !{i64 3430}
!3453 = metadata !{i64 3431}
!3454 = metadata !{i64 3432}
!3455 = metadata !{i64 3433}
!3456 = metadata !{i64 3434}
!3457 = metadata !{i64 3435}
!3458 = metadata !{i64 3436}
!3459 = metadata !{i64 3437}
!3460 = metadata !{i64 3438}
!3461 = metadata !{i64 3439}
!3462 = metadata !{i64 3440}
!3463 = metadata !{i64 3441}
!3464 = metadata !{i64 3442}
!3465 = metadata !{i64 3443}
!3466 = metadata !{i64 3444}
!3467 = metadata !{i64 3445}
!3468 = metadata !{i64 3446}
!3469 = metadata !{i64 3447}
!3470 = metadata !{i64 3448}
!3471 = metadata !{i64 3449}
!3472 = metadata !{i64 3450}
!3473 = metadata !{i64 3451}
!3474 = metadata !{i64 3452}
!3475 = metadata !{i64 3453}
!3476 = metadata !{i64 3454}
!3477 = metadata !{i64 3455}
!3478 = metadata !{i64 3456}
!3479 = metadata !{i64 3457}
!3480 = metadata !{i64 3458}
!3481 = metadata !{i64 3459}
!3482 = metadata !{i64 3460}
!3483 = metadata !{i64 3461}
!3484 = metadata !{i64 3462}
!3485 = metadata !{i64 3463}
!3486 = metadata !{i64 3464}
!3487 = metadata !{i64 3465}
!3488 = metadata !{i64 3466}
!3489 = metadata !{i64 3467}
!3490 = metadata !{i64 3468}
!3491 = metadata !{i64 3469}
!3492 = metadata !{i64 3470}
!3493 = metadata !{i64 3471}
!3494 = metadata !{i64 3472}
!3495 = metadata !{i64 3473}
!3496 = metadata !{i64 3474}
!3497 = metadata !{i64 3475}
!3498 = metadata !{i64 3476}
!3499 = metadata !{i64 3477}
!3500 = metadata !{i64 3478}
!3501 = metadata !{i64 3479}
!3502 = metadata !{i64 3480}
!3503 = metadata !{i64 3481}
!3504 = metadata !{i64 3482}
!3505 = metadata !{i64 3483}
!3506 = metadata !{i64 3484}
!3507 = metadata !{i64 3485}
!3508 = metadata !{i64 3486}
!3509 = metadata !{i64 3487}
!3510 = metadata !{i64 3488}
!3511 = metadata !{i64 3489}
!3512 = metadata !{i64 3490}
!3513 = metadata !{i64 3491}
!3514 = metadata !{i64 3492}
!3515 = metadata !{i64 3493}
!3516 = metadata !{i64 3494}
!3517 = metadata !{i64 3495}
!3518 = metadata !{i64 3496}
!3519 = metadata !{i64 3497}
!3520 = metadata !{i64 3498}
!3521 = metadata !{i64 3499}
!3522 = metadata !{i64 3500}
!3523 = metadata !{i64 3501}
!3524 = metadata !{i64 3502}
!3525 = metadata !{i64 3503}
!3526 = metadata !{i64 3504}
!3527 = metadata !{i64 3505}
!3528 = metadata !{i64 3506}
!3529 = metadata !{i64 3507}
!3530 = metadata !{i64 3508}
!3531 = metadata !{i64 3509}
!3532 = metadata !{i64 3510}
!3533 = metadata !{i64 3511}
!3534 = metadata !{i64 3512}
!3535 = metadata !{i64 3513}
!3536 = metadata !{i64 3514}
!3537 = metadata !{i64 3515}
!3538 = metadata !{i64 3516}
!3539 = metadata !{i64 3517}
!3540 = metadata !{i64 3518}
!3541 = metadata !{i64 3519}
!3542 = metadata !{i64 3520}
!3543 = metadata !{i64 3521}
!3544 = metadata !{i64 3522}
!3545 = metadata !{i64 3523}
!3546 = metadata !{i64 3524}
!3547 = metadata !{i64 3525}
!3548 = metadata !{i64 3526}
!3549 = metadata !{i64 3527}
!3550 = metadata !{i64 3528}
!3551 = metadata !{i64 3529}
!3552 = metadata !{i64 3530}
!3553 = metadata !{i64 3531}
!3554 = metadata !{i64 3532}
!3555 = metadata !{i64 3533}
!3556 = metadata !{i64 3534}
!3557 = metadata !{i64 3535}
!3558 = metadata !{i64 3536}
!3559 = metadata !{i64 3537}
!3560 = metadata !{i64 3538}
!3561 = metadata !{i64 3539}
!3562 = metadata !{i64 3540}
!3563 = metadata !{i64 3541}
!3564 = metadata !{i64 3542}
!3565 = metadata !{i64 3543}
!3566 = metadata !{i64 3544}
!3567 = metadata !{i64 3545}
!3568 = metadata !{i64 3546}
!3569 = metadata !{i64 3547}
!3570 = metadata !{i64 3548}
!3571 = metadata !{i64 3549}
!3572 = metadata !{i64 3550}
!3573 = metadata !{i64 3551}
!3574 = metadata !{i64 3552}
!3575 = metadata !{i64 3553}
!3576 = metadata !{i64 3554}
!3577 = metadata !{i64 3555}
!3578 = metadata !{i64 3556}
!3579 = metadata !{i64 3557}
!3580 = metadata !{i64 3558}
!3581 = metadata !{i64 3559}
!3582 = metadata !{i64 3560}
!3583 = metadata !{i64 3561}
!3584 = metadata !{i64 3562}
!3585 = metadata !{i64 3563}
!3586 = metadata !{i64 3564}
!3587 = metadata !{i64 3565}
!3588 = metadata !{i64 3566}
!3589 = metadata !{i64 3567}
!3590 = metadata !{i64 3568}
!3591 = metadata !{i64 3569}
!3592 = metadata !{i64 3570}
!3593 = metadata !{i64 3571}
!3594 = metadata !{i64 3572}
!3595 = metadata !{i64 3573}
!3596 = metadata !{i64 3574}
!3597 = metadata !{i64 3575}
!3598 = metadata !{i64 3576}
!3599 = metadata !{i64 3577}
!3600 = metadata !{i64 3578}
!3601 = metadata !{i64 3579}
!3602 = metadata !{i64 3580}
!3603 = metadata !{i64 3581}
!3604 = metadata !{i64 3582}
!3605 = metadata !{i64 3583}
!3606 = metadata !{i64 3584}
!3607 = metadata !{i64 3585}
!3608 = metadata !{i64 3586}
!3609 = metadata !{i64 3587}
!3610 = metadata !{i64 3588}
!3611 = metadata !{i64 3589}
!3612 = metadata !{i64 3590}
!3613 = metadata !{i64 3591}
!3614 = metadata !{i64 3592}
!3615 = metadata !{i64 3593}
!3616 = metadata !{i64 3594}
!3617 = metadata !{i64 3595}
!3618 = metadata !{i64 3596}
!3619 = metadata !{i64 3597}
!3620 = metadata !{i64 3598}
!3621 = metadata !{i64 3599}
!3622 = metadata !{i64 3600}
!3623 = metadata !{i64 3601}
!3624 = metadata !{i64 3602}
!3625 = metadata !{i64 3603}
!3626 = metadata !{i64 3604}
!3627 = metadata !{i64 3605}
!3628 = metadata !{i64 3606}
!3629 = metadata !{i64 3607}
!3630 = metadata !{i64 3608}
!3631 = metadata !{i64 3609}
!3632 = metadata !{i64 3610}
!3633 = metadata !{i64 3611}
!3634 = metadata !{i64 3612}
!3635 = metadata !{i64 3613}
!3636 = metadata !{i64 3614}
!3637 = metadata !{i64 3615}
!3638 = metadata !{i64 3616}
!3639 = metadata !{i64 3617}
!3640 = metadata !{i64 3618}
!3641 = metadata !{i64 3619}
!3642 = metadata !{i64 3620}
!3643 = metadata !{i64 3621}
!3644 = metadata !{i64 3622}
!3645 = metadata !{i64 3623}
!3646 = metadata !{i64 3624}
!3647 = metadata !{i64 3625}
!3648 = metadata !{i64 3626}
!3649 = metadata !{i64 3627}
!3650 = metadata !{i64 3628}
!3651 = metadata !{i64 3629}
!3652 = metadata !{i64 3630}
!3653 = metadata !{i64 3631}
!3654 = metadata !{i64 3632}
!3655 = metadata !{i64 3633}
!3656 = metadata !{i64 3634}
!3657 = metadata !{i64 3635}
!3658 = metadata !{i64 3636}
!3659 = metadata !{i64 3637}
!3660 = metadata !{i64 3638}
!3661 = metadata !{i64 3639}
!3662 = metadata !{i64 3640}
!3663 = metadata !{i64 3641}
!3664 = metadata !{i64 3642}
!3665 = metadata !{i64 3643}
!3666 = metadata !{i64 3644}
!3667 = metadata !{i64 3645}
!3668 = metadata !{i64 3646}
!3669 = metadata !{i64 3647}
!3670 = metadata !{i64 3648}
!3671 = metadata !{i64 3649}
!3672 = metadata !{i64 3650}
!3673 = metadata !{i64 3651}
!3674 = metadata !{i64 0, i64 4, metadata !1, i64 4, i64 4, metadata !1, i64 8, i64 4, metadata !1, i64 16, i64 8, metadata !322, i64 24, i64 8, metadata !322}
!3675 = metadata !{i64 3652}
!3676 = metadata !{i64 3653}
!3677 = metadata !{i64 3654}
!3678 = metadata !{i64 3655}
!3679 = metadata !{i64 3656}
!3680 = metadata !{i64 3657}
!3681 = metadata !{i64 3658}
!3682 = metadata !{i64 3659}
!3683 = metadata !{i64 3660}
!3684 = metadata !{i64 3661}
!3685 = metadata !{i64 3662}
!3686 = metadata !{i64 3663}
!3687 = metadata !{i64 3664}
!3688 = metadata !{i64 3665}
!3689 = metadata !{i64 3666}
!3690 = metadata !{i64 3667}
!3691 = metadata !{i64 3668}
!3692 = metadata !{i64 3669}
!3693 = metadata !{i64 3670}
!3694 = metadata !{i64 3671}
!3695 = metadata !{i64 3672}
!3696 = metadata !{i64 3673}
!3697 = metadata !{i64 3674}
!3698 = metadata !{i64 3675}
!3699 = metadata !{i64 3676}
!3700 = metadata !{i64 3677}
!3701 = metadata !{i64 3678}
!3702 = metadata !{i64 3679}
!3703 = metadata !{i64 3680}
!3704 = metadata !{i64 3681}
!3705 = metadata !{i64 3682}
!3706 = metadata !{i64 3683}
!3707 = metadata !{i64 3684}
!3708 = metadata !{i64 3685}
!3709 = metadata !{i64 3686}
!3710 = metadata !{i64 3687}
!3711 = metadata !{i64 3688}
!3712 = metadata !{i64 3689}
!3713 = metadata !{i64 3690}
!3714 = metadata !{i64 3691}
!3715 = metadata !{i64 3692}
!3716 = metadata !{i64 3693}
!3717 = metadata !{i64 3694}
!3718 = metadata !{i64 3695}
!3719 = metadata !{i64 3696}
!3720 = metadata !{i64 3697}
!3721 = metadata !{i64 3698}
!3722 = metadata !{i64 3699}
!3723 = metadata !{i64 3700}
!3724 = metadata !{i64 3701}
!3725 = metadata !{i64 3702}
!3726 = metadata !{i64 3703}
!3727 = metadata !{i64 3704}
!3728 = metadata !{i64 3705}
!3729 = metadata !{i64 3706}
!3730 = metadata !{i64 3707}
!3731 = metadata !{i64 3708}
!3732 = metadata !{i64 3709}
!3733 = metadata !{i64 3710}
!3734 = metadata !{i64 3711}
!3735 = metadata !{i64 3712}
!3736 = metadata !{i64 3713}
!3737 = metadata !{i64 3714}
!3738 = metadata !{i64 3715}
!3739 = metadata !{i64 3716}
!3740 = metadata !{i64 3717}
!3741 = metadata !{i64 3718}
!3742 = metadata !{i64 3719}
!3743 = metadata !{i64 3720}
!3744 = metadata !{i64 3721}
!3745 = metadata !{i64 3722}
!3746 = metadata !{i64 3723}
!3747 = metadata !{i64 3724}
!3748 = metadata !{i64 3725}
!3749 = metadata !{i64 3726}
!3750 = metadata !{i64 3727}
!3751 = metadata !{i64 3728}
!3752 = metadata !{i64 3729}
!3753 = metadata !{i64 3730}
!3754 = metadata !{i64 3731}
!3755 = metadata !{i64 3732}
!3756 = metadata !{i64 3733}
!3757 = metadata !{i64 3734}
!3758 = metadata !{i64 3735}
!3759 = metadata !{i64 3736}
!3760 = metadata !{i64 3737}
!3761 = metadata !{i64 3738}
!3762 = metadata !{i64 3739}
!3763 = metadata !{i64 3740}
!3764 = metadata !{i64 3741}
!3765 = metadata !{i64 3742}
!3766 = metadata !{i64 3743}
!3767 = metadata !{i64 3744}
!3768 = metadata !{i64 3745}
!3769 = metadata !{i64 3746}
!3770 = metadata !{i64 3747}
!3771 = metadata !{i64 3748}
!3772 = metadata !{i64 3749}
!3773 = metadata !{i64 3750}
!3774 = metadata !{i64 3751}
!3775 = metadata !{i64 3752}
!3776 = metadata !{i64 3753}
!3777 = metadata !{i64 3754}
!3778 = metadata !{i64 3755}
!3779 = metadata !{i64 3756}
!3780 = metadata !{i64 3757}
!3781 = metadata !{i64 3758}
!3782 = metadata !{i64 3759}
!3783 = metadata !{i64 3760}
!3784 = metadata !{i64 3761}
!3785 = metadata !{i64 3762}
!3786 = metadata !{i64 3763}
!3787 = metadata !{i64 3764}
!3788 = metadata !{i64 3765}
!3789 = metadata !{i64 3766}
!3790 = metadata !{i64 3767}
!3791 = metadata !{i64 3768}
!3792 = metadata !{i64 3769}
!3793 = metadata !{i64 3770}
!3794 = metadata !{i64 3771}
!3795 = metadata !{i64 3772}
!3796 = metadata !{i64 3773}
!3797 = metadata !{i64 3774}
!3798 = metadata !{i64 3775}
!3799 = metadata !{i64 3776}
!3800 = metadata !{i64 3777}
!3801 = metadata !{i64 3778}
!3802 = metadata !{i64 3779}
!3803 = metadata !{i64 3780}
!3804 = metadata !{i64 3781}
!3805 = metadata !{i64 3782}
!3806 = metadata !{i64 3783}
!3807 = metadata !{i64 3784}
!3808 = metadata !{i64 3785}
!3809 = metadata !{i64 3786}
!3810 = metadata !{i64 3787}
!3811 = metadata !{i64 3788}
!3812 = metadata !{i64 3789}
!3813 = metadata !{i64 3790}
!3814 = metadata !{i64 3791}
!3815 = metadata !{i64 3792}
!3816 = metadata !{i64 3793}
!3817 = metadata !{i64 3794}
!3818 = metadata !{i64 3795}
!3819 = metadata !{i64 3796}
!3820 = metadata !{i64 3797}
!3821 = metadata !{i64 3798}
!3822 = metadata !{i64 3799}
!3823 = metadata !{i64 3800}
!3824 = metadata !{i64 3801}
!3825 = metadata !{i64 3802}
!3826 = metadata !{i64 3803}
!3827 = metadata !{i64 3804}
!3828 = metadata !{i64 3805}
!3829 = metadata !{i64 3806}
!3830 = metadata !{i64 3807}
!3831 = metadata !{i64 3808}
!3832 = metadata !{i64 3809}
!3833 = metadata !{i64 3810}
!3834 = metadata !{i64 3811}
!3835 = metadata !{i64 3812}
!3836 = metadata !{i64 3813}
!3837 = metadata !{i64 3814}
!3838 = metadata !{i64 3815}
!3839 = metadata !{i64 3816}
!3840 = metadata !{i64 3817}
!3841 = metadata !{i64 3818}
!3842 = metadata !{i64 3819}
!3843 = metadata !{i64 3820}
!3844 = metadata !{i64 3821}
!3845 = metadata !{i64 3822}
!3846 = metadata !{i64 3823}
!3847 = metadata !{i64 3824}
!3848 = metadata !{i64 3825}
!3849 = metadata !{i64 3826}
!3850 = metadata !{i64 3827}
!3851 = metadata !{i64 3828}
!3852 = metadata !{i64 3829}
!3853 = metadata !{i64 3830}
!3854 = metadata !{i64 3831}
!3855 = metadata !{i64 3832}
!3856 = metadata !{i64 3833}
!3857 = metadata !{i64 3834}
!3858 = metadata !{i64 3835}
!3859 = metadata !{i64 3836}
!3860 = metadata !{i64 3837}
!3861 = metadata !{i64 3838}
!3862 = metadata !{i64 3839}
!3863 = metadata !{i64 3840}
!3864 = metadata !{i64 3841}
!3865 = metadata !{i64 3842}
!3866 = metadata !{i64 3843}
!3867 = metadata !{i64 3844}
!3868 = metadata !{i64 3845}
!3869 = metadata !{i64 3846}
!3870 = metadata !{i64 3847}
!3871 = metadata !{i64 3848}
!3872 = metadata !{i64 3849}
!3873 = metadata !{i64 3850}
!3874 = metadata !{i64 3851}
!3875 = metadata !{i64 3852}
!3876 = metadata !{i64 3853}
!3877 = metadata !{i64 3854}
!3878 = metadata !{i64 3855}
!3879 = metadata !{i64 3856}
!3880 = metadata !{i64 3857}
!3881 = metadata !{i64 3858}
!3882 = metadata !{i64 3859}
!3883 = metadata !{i64 3860}
!3884 = metadata !{i64 3861}
!3885 = metadata !{i64 3862}
!3886 = metadata !{i64 3863}
!3887 = metadata !{i64 3864}
!3888 = metadata !{i64 3865}
!3889 = metadata !{i64 3866}
!3890 = metadata !{i64 3867}
!3891 = metadata !{i64 3868}
!3892 = metadata !{i64 3869}
!3893 = metadata !{i64 3870}
!3894 = metadata !{i64 3871}
!3895 = metadata !{i64 3872}
!3896 = metadata !{i64 3873}
!3897 = metadata !{i64 3874}
!3898 = metadata !{metadata !3899, metadata !3899, i64 0}
!3899 = metadata !{metadata !"double", metadata !3, i64 0}
!3900 = metadata !{i64 3875}
!3901 = metadata !{i64 3876}
!3902 = metadata !{i64 3877}
!3903 = metadata !{i64 3878}
!3904 = metadata !{i64 3879}
!3905 = metadata !{i64 3880}
!3906 = metadata !{i64 3881}
!3907 = metadata !{i64 3882}
!3908 = metadata !{i64 3883}
!3909 = metadata !{i64 3884}
!3910 = metadata !{i64 3885}
!3911 = metadata !{i64 3886}
!3912 = metadata !{i64 3887}
!3913 = metadata !{i64 3888}
!3914 = metadata !{i64 3889}
!3915 = metadata !{i64 3890}
!3916 = metadata !{i64 3891}
!3917 = metadata !{i64 3892}
!3918 = metadata !{i64 3893}
!3919 = metadata !{i64 3894}
!3920 = metadata !{i64 3895}
!3921 = metadata !{i64 3896}
!3922 = metadata !{i64 3897}
!3923 = metadata !{i64 3898}
!3924 = metadata !{i64 3899}
!3925 = metadata !{i64 3900}
!3926 = metadata !{i64 3901}
!3927 = metadata !{i64 3902}
!3928 = metadata !{i64 3903}
!3929 = metadata !{i64 3904}
!3930 = metadata !{i64 3905}
!3931 = metadata !{i64 3906}
!3932 = metadata !{i64 3907}
!3933 = metadata !{i64 3908}
!3934 = metadata !{i64 3909}
!3935 = metadata !{i64 3910}
!3936 = metadata !{i64 3911}
!3937 = metadata !{i64 3912}
!3938 = metadata !{i64 3913}
!3939 = metadata !{i64 3914}
!3940 = metadata !{i64 3915}
!3941 = metadata !{i64 3916}
!3942 = metadata !{i64 3917}
!3943 = metadata !{i64 3918}
!3944 = metadata !{i64 3919}
!3945 = metadata !{i64 3920}
!3946 = metadata !{i64 3921}
!3947 = metadata !{i64 3922}
!3948 = metadata !{i64 3923}
!3949 = metadata !{i64 3924}
!3950 = metadata !{i64 3925}
!3951 = metadata !{i64 3926}
!3952 = metadata !{i64 3927}
!3953 = metadata !{i64 3928}
!3954 = metadata !{i64 3929}
!3955 = metadata !{i64 3930}
!3956 = metadata !{i64 3931}
!3957 = metadata !{i64 3932}
!3958 = metadata !{i64 3933}
!3959 = metadata !{i64 3934}
!3960 = metadata !{i64 3935}
!3961 = metadata !{i64 3936}
!3962 = metadata !{i64 3937}
!3963 = metadata !{i64 3938}
!3964 = metadata !{i64 3939}
!3965 = metadata !{i64 3940}
!3966 = metadata !{i64 3941}
!3967 = metadata !{i64 3942}
!3968 = metadata !{i64 3943}
!3969 = metadata !{i64 3944}
!3970 = metadata !{i64 3945}
!3971 = metadata !{i64 3946}
!3972 = metadata !{i64 3947}
!3973 = metadata !{i64 3948}
!3974 = metadata !{i64 3949}
!3975 = metadata !{i64 3950}
!3976 = metadata !{i64 3951}
!3977 = metadata !{i64 3952}
!3978 = metadata !{i64 3953}
!3979 = metadata !{i64 3954}
!3980 = metadata !{i64 3955}
!3981 = metadata !{i64 3956}
!3982 = metadata !{i64 3957}
!3983 = metadata !{i64 3958}
!3984 = metadata !{i64 3959}
!3985 = metadata !{i64 3960}
!3986 = metadata !{i64 3961}
!3987 = metadata !{i64 3962}
!3988 = metadata !{i64 3963}
!3989 = metadata !{i64 3964}
!3990 = metadata !{i64 3965}
!3991 = metadata !{i64 3966}
!3992 = metadata !{i64 3967}
!3993 = metadata !{i64 3968}
!3994 = metadata !{i64 3969}
!3995 = metadata !{i64 3970}
!3996 = metadata !{i64 3971}
!3997 = metadata !{i64 3972}
!3998 = metadata !{i64 3973}
!3999 = metadata !{i64 3974}
!4000 = metadata !{i64 3975}
!4001 = metadata !{i64 3976}
!4002 = metadata !{i64 3977}
!4003 = metadata !{i64 3978}
!4004 = metadata !{i64 3979}
!4005 = metadata !{i64 3980}
!4006 = metadata !{i64 3981}
!4007 = metadata !{i64 3982}
!4008 = metadata !{i64 3983}
!4009 = metadata !{i64 3984}
!4010 = metadata !{i64 3985}
!4011 = metadata !{i64 3986}
!4012 = metadata !{i64 3987}
!4013 = metadata !{i64 3988}
!4014 = metadata !{i64 3989}
!4015 = metadata !{i64 3990}
!4016 = metadata !{i64 3991}
!4017 = metadata !{i64 3992}
!4018 = metadata !{i64 3993}
!4019 = metadata !{i64 3994}
!4020 = metadata !{i64 3995}
!4021 = metadata !{i64 3996}
!4022 = metadata !{i64 3997}
!4023 = metadata !{i64 3998}
!4024 = metadata !{i64 3999}
!4025 = metadata !{i64 4000}
!4026 = metadata !{i64 4001}
!4027 = metadata !{i64 4002}
!4028 = metadata !{i64 4003}
!4029 = metadata !{i64 4004}
!4030 = metadata !{i64 4005}
!4031 = metadata !{i64 4006}
!4032 = metadata !{i64 4007}
!4033 = metadata !{i64 4008}
!4034 = metadata !{i64 4009}
!4035 = metadata !{i64 4010}
!4036 = metadata !{i64 4011}
!4037 = metadata !{i64 4012}
!4038 = metadata !{i64 4013}
!4039 = metadata !{i64 4014}
!4040 = metadata !{i64 4015}
!4041 = metadata !{i64 4016}
!4042 = metadata !{i64 4017}
!4043 = metadata !{i64 4018}
!4044 = metadata !{i64 4019}
!4045 = metadata !{i64 4020}
!4046 = metadata !{i64 4021}
!4047 = metadata !{i64 4022}
!4048 = metadata !{i64 4023}
!4049 = metadata !{i64 4024}
!4050 = metadata !{i64 4025}
!4051 = metadata !{i64 4026}
!4052 = metadata !{i64 4027}
!4053 = metadata !{i64 4028}
!4054 = metadata !{i64 4029}
!4055 = metadata !{i64 4030}
!4056 = metadata !{i64 4031}
!4057 = metadata !{i64 4032}
!4058 = metadata !{i64 4033}
!4059 = metadata !{i64 4034}
!4060 = metadata !{i64 4035}
!4061 = metadata !{i64 4036}
!4062 = metadata !{i64 4037}
!4063 = metadata !{i64 4038}
!4064 = metadata !{i64 4039}
!4065 = metadata !{i64 4040}
!4066 = metadata !{i64 4041}
!4067 = metadata !{i64 4042}
!4068 = metadata !{i64 4043}
!4069 = metadata !{i64 4044}
!4070 = metadata !{i64 4045}
!4071 = metadata !{i64 4046}
!4072 = metadata !{i64 4047}
!4073 = metadata !{i64 4048}
!4074 = metadata !{i64 4049}
!4075 = metadata !{i64 4050}
!4076 = metadata !{i64 4051}
!4077 = metadata !{i64 4052}
!4078 = metadata !{i64 4053}
!4079 = metadata !{i64 4054}
!4080 = metadata !{i64 4055}
!4081 = metadata !{i64 4056}
!4082 = metadata !{i64 4057}
!4083 = metadata !{i64 4058}
!4084 = metadata !{i64 4059}
!4085 = metadata !{i64 4060}
!4086 = metadata !{i64 4061}
!4087 = metadata !{i64 4062}
!4088 = metadata !{i64 4063}
!4089 = metadata !{i64 4064}
!4090 = metadata !{i64 4065}
!4091 = metadata !{i64 4066}
!4092 = metadata !{i64 4067}
!4093 = metadata !{i64 4068}
!4094 = metadata !{i64 4069}
!4095 = metadata !{i64 4070}
!4096 = metadata !{i64 4071}
!4097 = metadata !{i64 4072}
!4098 = metadata !{i64 4073}
!4099 = metadata !{i64 4074}
!4100 = metadata !{i64 4075}
!4101 = metadata !{i64 4076}
!4102 = metadata !{i64 4077}
!4103 = metadata !{i64 4078}
!4104 = metadata !{i64 4079}
!4105 = metadata !{i64 4080}
!4106 = metadata !{i64 4081}
!4107 = metadata !{i64 4082}
!4108 = metadata !{i64 4083}
!4109 = metadata !{i64 4084}
!4110 = metadata !{i64 4085}
!4111 = metadata !{i64 4086}
!4112 = metadata !{i64 4087}
!4113 = metadata !{i64 4088}
!4114 = metadata !{i64 4089}
!4115 = metadata !{i64 4090}
!4116 = metadata !{i64 4091}
!4117 = metadata !{i64 4092}
!4118 = metadata !{i64 4093}
!4119 = metadata !{i64 4094}
!4120 = metadata !{i64 4095}
!4121 = metadata !{i64 4096}
!4122 = metadata !{i64 4097}
!4123 = metadata !{i64 4098}
!4124 = metadata !{i64 4099}
!4125 = metadata !{i64 4100}
!4126 = metadata !{i64 4101}
!4127 = metadata !{i64 4102}
!4128 = metadata !{i64 4103}
!4129 = metadata !{i64 4104}
!4130 = metadata !{i64 4105}
!4131 = metadata !{i64 4106}
!4132 = metadata !{i64 4107}
!4133 = metadata !{i64 4108}
!4134 = metadata !{i64 4109}
!4135 = metadata !{i64 4110}
!4136 = metadata !{i64 4111}
!4137 = metadata !{i64 4112}
!4138 = metadata !{i64 4113}
!4139 = metadata !{i64 4114}
!4140 = metadata !{i64 4115}
!4141 = metadata !{i64 4116}
!4142 = metadata !{i64 4117}
!4143 = metadata !{i64 4118}
!4144 = metadata !{i64 4119}
!4145 = metadata !{i64 4120}
!4146 = metadata !{i64 4121}
!4147 = metadata !{i64 4122}
!4148 = metadata !{i64 4123}
!4149 = metadata !{i64 4124}
!4150 = metadata !{i64 4125}
!4151 = metadata !{i64 4126}
!4152 = metadata !{i64 4127}
!4153 = metadata !{i64 4128}
!4154 = metadata !{i64 4129}
!4155 = metadata !{i64 4130}
!4156 = metadata !{i64 4131}
!4157 = metadata !{i64 4132}
!4158 = metadata !{i64 4133}
!4159 = metadata !{i64 4134}
!4160 = metadata !{i64 4135}
!4161 = metadata !{i64 4136}
!4162 = metadata !{i64 4137}
!4163 = metadata !{i64 4138}
!4164 = metadata !{i64 4139}
!4165 = metadata !{i64 4140}
!4166 = metadata !{i64 4141}
!4167 = metadata !{i64 4142}
!4168 = metadata !{i64 4143}
!4169 = metadata !{i64 4144}
!4170 = metadata !{i64 4145}
!4171 = metadata !{i64 4146}
!4172 = metadata !{i64 4147}
!4173 = metadata !{i64 4148}
!4174 = metadata !{i64 4149}
!4175 = metadata !{i64 4150}
!4176 = metadata !{i64 4151}
!4177 = metadata !{i64 4152}
!4178 = metadata !{i64 4153}
!4179 = metadata !{i64 4154}
!4180 = metadata !{i64 4155}
!4181 = metadata !{i64 4156}
!4182 = metadata !{i64 4157}
!4183 = metadata !{i64 4158}
!4184 = metadata !{i64 4159}
!4185 = metadata !{i64 4160}
!4186 = metadata !{i64 4161}
!4187 = metadata !{i64 4162}
!4188 = metadata !{i64 4163}
!4189 = metadata !{i64 4164}
!4190 = metadata !{i64 4165}
!4191 = metadata !{i64 4166}
!4192 = metadata !{i64 4167}
!4193 = metadata !{i64 4168}
!4194 = metadata !{i64 4169}
!4195 = metadata !{i64 4170}
!4196 = metadata !{i64 4171}
!4197 = metadata !{i64 4172}
!4198 = metadata !{i64 4173}
!4199 = metadata !{i64 4174}
!4200 = metadata !{i64 4175}
!4201 = metadata !{i64 4176}
!4202 = metadata !{i64 4177}
!4203 = metadata !{i64 4178}
!4204 = metadata !{i64 4179}
!4205 = metadata !{i64 4180}
!4206 = metadata !{i64 4181}
!4207 = metadata !{i64 4182}
!4208 = metadata !{i64 4183}
!4209 = metadata !{i64 4184}
!4210 = metadata !{i64 4185}
!4211 = metadata !{i64 4186}
!4212 = metadata !{i64 4187}
!4213 = metadata !{i64 4188}
!4214 = metadata !{i64 4189}
!4215 = metadata !{i64 4190}
!4216 = metadata !{i64 4191}
!4217 = metadata !{i64 4192}
!4218 = metadata !{i64 4193}
!4219 = metadata !{i64 4194}
!4220 = metadata !{i64 4195}
!4221 = metadata !{i64 4196}
!4222 = metadata !{i64 4197}
!4223 = metadata !{i64 4198}
!4224 = metadata !{i64 4199}
!4225 = metadata !{i64 4200}
!4226 = metadata !{i64 4201}
!4227 = metadata !{i64 4202}
!4228 = metadata !{i64 4203}
!4229 = metadata !{i64 4204}
!4230 = metadata !{i64 4205}
!4231 = metadata !{i64 4206}
!4232 = metadata !{i64 4207}
!4233 = metadata !{i64 4208}
!4234 = metadata !{i64 4209}
!4235 = metadata !{i64 4210}
!4236 = metadata !{i64 4211}
!4237 = metadata !{i64 4212}
!4238 = metadata !{i64 4213}
!4239 = metadata !{i64 4214}
!4240 = metadata !{i64 4215}
!4241 = metadata !{i64 4216}
!4242 = metadata !{i64 4217}
!4243 = metadata !{i64 4218}
!4244 = metadata !{i64 4219}
!4245 = metadata !{i64 4220}
!4246 = metadata !{i64 4221}
!4247 = metadata !{i64 4222}
!4248 = metadata !{i64 4223}
!4249 = metadata !{i64 4224}
!4250 = metadata !{i64 4225}
!4251 = metadata !{i64 4226}
!4252 = metadata !{i64 4227}
!4253 = metadata !{i64 4228}
!4254 = metadata !{i64 4229}
!4255 = metadata !{i64 4230}
!4256 = metadata !{i64 4231}
!4257 = metadata !{i64 4232}
!4258 = metadata !{i64 4233}
!4259 = metadata !{i64 4234}
!4260 = metadata !{i64 4235}
!4261 = metadata !{i64 4236}
!4262 = metadata !{i64 4237}
!4263 = metadata !{i64 4238}
!4264 = metadata !{i64 4239}
!4265 = metadata !{i64 4240}
!4266 = metadata !{i64 4241}
!4267 = metadata !{i64 4242}
!4268 = metadata !{i64 4243}
!4269 = metadata !{i64 4244}
!4270 = metadata !{i64 4245}
!4271 = metadata !{i64 4246}
!4272 = metadata !{i64 4247}
!4273 = metadata !{i64 4248}
!4274 = metadata !{i64 4249}
!4275 = metadata !{i64 4250}
!4276 = metadata !{i64 4251}
!4277 = metadata !{i64 4252}
!4278 = metadata !{i64 4253}
!4279 = metadata !{i64 4254}
!4280 = metadata !{i64 4255}
!4281 = metadata !{i64 4256}
!4282 = metadata !{i64 4257}
!4283 = metadata !{i64 4258}
!4284 = metadata !{i64 4259}
!4285 = metadata !{i64 4260}
!4286 = metadata !{i64 4261}
!4287 = metadata !{i64 4262}
!4288 = metadata !{i64 4263}
!4289 = metadata !{i64 4264}
!4290 = metadata !{i64 4265}
!4291 = metadata !{i64 4266}
!4292 = metadata !{i64 4267}
!4293 = metadata !{i64 4268}
!4294 = metadata !{i64 4269}
!4295 = metadata !{i64 4270}
!4296 = metadata !{i64 4271}
!4297 = metadata !{i64 4272}
!4298 = metadata !{i64 4273}
!4299 = metadata !{i64 4274}
!4300 = metadata !{i64 4275}
!4301 = metadata !{i64 4276}
!4302 = metadata !{i64 4277}
!4303 = metadata !{i64 4278}
!4304 = metadata !{i64 4279}
!4305 = metadata !{i64 4280}
!4306 = metadata !{i64 4281}
!4307 = metadata !{i64 4282}
!4308 = metadata !{i64 4283}
!4309 = metadata !{i64 4284}
!4310 = metadata !{i64 4285}
!4311 = metadata !{i64 4286}
!4312 = metadata !{i64 4287}
!4313 = metadata !{i64 4288}
!4314 = metadata !{i64 4289}
!4315 = metadata !{i64 4290}
!4316 = metadata !{i64 4291}
!4317 = metadata !{i64 4292}
!4318 = metadata !{i64 4293}
!4319 = metadata !{i64 4294}
!4320 = metadata !{i64 4295}
!4321 = metadata !{i64 4296}
!4322 = metadata !{i64 4297}
!4323 = metadata !{i64 4298}
!4324 = metadata !{i64 4299}
!4325 = metadata !{i64 4300}
!4326 = metadata !{i64 4301}
!4327 = metadata !{i64 4302}
!4328 = metadata !{i64 4303}
!4329 = metadata !{i64 4304}
!4330 = metadata !{i64 4305}
!4331 = metadata !{i64 4306}
!4332 = metadata !{i64 4307}
!4333 = metadata !{i64 4308}
!4334 = metadata !{i64 4309}
!4335 = metadata !{i64 4310}
!4336 = metadata !{i64 4311}
!4337 = metadata !{i64 4312}
!4338 = metadata !{i64 4313}
!4339 = metadata !{i64 4314}
!4340 = metadata !{i64 4315}
!4341 = metadata !{i64 4316}
!4342 = metadata !{i64 4317}
!4343 = metadata !{i64 4318}
!4344 = metadata !{i64 4319}
!4345 = metadata !{i64 4320}
!4346 = metadata !{i64 4321}
!4347 = metadata !{i64 4322}
!4348 = metadata !{i64 4323}
!4349 = metadata !{i64 4324}
!4350 = metadata !{i64 4325}
!4351 = metadata !{i64 4326}
!4352 = metadata !{i64 4327}
!4353 = metadata !{i64 4328}
!4354 = metadata !{i64 4329}
!4355 = metadata !{i64 4330}
!4356 = metadata !{i64 4331}
!4357 = metadata !{i64 4332}
!4358 = metadata !{i64 4333}
!4359 = metadata !{i64 4334}
!4360 = metadata !{i64 4335}
!4361 = metadata !{i64 4336}
!4362 = metadata !{i64 4337}
!4363 = metadata !{i64 4338}
!4364 = metadata !{i64 4339}
!4365 = metadata !{i64 4340}
!4366 = metadata !{i64 4341}
!4367 = metadata !{i64 4342}
!4368 = metadata !{i64 4343}
!4369 = metadata !{i64 4344}
!4370 = metadata !{i64 4345}
!4371 = metadata !{i64 4346}
!4372 = metadata !{i64 4347}
!4373 = metadata !{i64 4348}
!4374 = metadata !{i64 4349}
!4375 = metadata !{i64 4350}
!4376 = metadata !{i64 4351}
!4377 = metadata !{i64 4352}
!4378 = metadata !{i64 4353}
!4379 = metadata !{i64 4354}
!4380 = metadata !{i64 4355}
!4381 = metadata !{i64 4356}
!4382 = metadata !{i64 4357}
!4383 = metadata !{i64 4358}
!4384 = metadata !{i64 4359}
!4385 = metadata !{i64 4360}
!4386 = metadata !{i64 4361}
!4387 = metadata !{i64 4362}
!4388 = metadata !{i64 4363}
!4389 = metadata !{i64 4364}
!4390 = metadata !{i64 4365}
!4391 = metadata !{i64 4366}
!4392 = metadata !{i64 4367}
!4393 = metadata !{i64 4368}
!4394 = metadata !{i64 4369}
!4395 = metadata !{i64 4370}
!4396 = metadata !{i64 4371}
!4397 = metadata !{i64 4372}
!4398 = metadata !{i64 4373}
!4399 = metadata !{i64 4374}
!4400 = metadata !{i64 4375}
!4401 = metadata !{i64 4376}
!4402 = metadata !{i64 4377}
!4403 = metadata !{i64 4378}
!4404 = metadata !{i64 4379}
!4405 = metadata !{i64 4380}
!4406 = metadata !{i64 4381}
!4407 = metadata !{i64 4382}
!4408 = metadata !{i64 4383}
!4409 = metadata !{i64 4384}
!4410 = metadata !{i64 4385}
!4411 = metadata !{i64 4386}
!4412 = metadata !{i64 4387}
!4413 = metadata !{i64 4388}
!4414 = metadata !{i64 4389}
!4415 = metadata !{i64 4390}
!4416 = metadata !{i64 4391}
!4417 = metadata !{i64 4392}
!4418 = metadata !{i64 4393}
!4419 = metadata !{i64 4394}
!4420 = metadata !{i64 4395}
!4421 = metadata !{i64 4396}
!4422 = metadata !{i64 4397}
!4423 = metadata !{i64 4398}
!4424 = metadata !{i64 4399}
!4425 = metadata !{i64 4400}
!4426 = metadata !{i64 4401}
!4427 = metadata !{i64 4402}
!4428 = metadata !{i64 4403}
!4429 = metadata !{metadata !4430, metadata !4430, i64 0}
!4430 = metadata !{metadata !"float", metadata !3, i64 0}
!4431 = metadata !{i64 4404}
!4432 = metadata !{i64 4405}
!4433 = metadata !{i64 4406}
!4434 = metadata !{i64 4407}
!4435 = metadata !{i64 4408}
!4436 = metadata !{i64 4409}
!4437 = metadata !{i64 4410}
!4438 = metadata !{i64 4411}
!4439 = metadata !{i64 4412}
!4440 = metadata !{i64 4413}
!4441 = metadata !{i64 4414}
!4442 = metadata !{i64 4415}
!4443 = metadata !{i64 4416}
!4444 = metadata !{i64 4417}
!4445 = metadata !{i64 4418}
!4446 = metadata !{i64 4419}
!4447 = metadata !{i64 4420}
!4448 = metadata !{i64 4421}
!4449 = metadata !{i64 4422}
!4450 = metadata !{i64 4423}
!4451 = metadata !{i64 4424}
!4452 = metadata !{i64 4425}
!4453 = metadata !{i64 4426}
!4454 = metadata !{i64 4427}
!4455 = metadata !{i64 4428}
!4456 = metadata !{i64 4429}
!4457 = metadata !{i64 4430}
!4458 = metadata !{i64 4431}
!4459 = metadata !{i64 4432}
!4460 = metadata !{i64 4433}
!4461 = metadata !{i64 4434}
!4462 = metadata !{i64 4435}
!4463 = metadata !{i64 4436}
!4464 = metadata !{i64 4437}
!4465 = metadata !{i64 4438}
!4466 = metadata !{i64 4439}
!4467 = metadata !{i64 4440}
!4468 = metadata !{i64 4441}
!4469 = metadata !{i64 4442}
!4470 = metadata !{i64 4443}
!4471 = metadata !{i64 4444}
!4472 = metadata !{i64 4445}
!4473 = metadata !{i64 4446}
!4474 = metadata !{i64 4447}
!4475 = metadata !{i64 4448}
!4476 = metadata !{i64 4449}
!4477 = metadata !{i64 4450}
!4478 = metadata !{i64 4451}
!4479 = metadata !{i64 4452}
!4480 = metadata !{i64 4453}
!4481 = metadata !{i64 4454}
!4482 = metadata !{i64 4455}
!4483 = metadata !{i64 4456}
!4484 = metadata !{i64 4457}
!4485 = metadata !{i64 4458}
!4486 = metadata !{i64 4459}
!4487 = metadata !{i64 4460}
!4488 = metadata !{i64 4461}
!4489 = metadata !{i64 4462}
!4490 = metadata !{i64 4463}
!4491 = metadata !{i64 4464}
!4492 = metadata !{i64 4465}
!4493 = metadata !{i64 4466}
!4494 = metadata !{i64 4467}
!4495 = metadata !{i64 4468}
!4496 = metadata !{i64 4469}
!4497 = metadata !{i64 4470}
!4498 = metadata !{i64 4471}
!4499 = metadata !{i64 4472}
!4500 = metadata !{i64 4473}
!4501 = metadata !{i64 4474}
!4502 = metadata !{i64 4475}
!4503 = metadata !{i64 4476}
!4504 = metadata !{i64 4477}
!4505 = metadata !{i64 4478}
!4506 = metadata !{i64 4479}
!4507 = metadata !{i64 4480}
!4508 = metadata !{i64 4481}
!4509 = metadata !{i64 4482}
!4510 = metadata !{i64 4483}
!4511 = metadata !{i64 4484}
!4512 = metadata !{i64 4485}
!4513 = metadata !{i64 4486}
!4514 = metadata !{i64 4487}
!4515 = metadata !{i64 4488}
!4516 = metadata !{i64 4489}
!4517 = metadata !{i64 4490}
!4518 = metadata !{i64 4491}
!4519 = metadata !{i64 4492}
!4520 = metadata !{i64 4493}
!4521 = metadata !{i64 4494}
!4522 = metadata !{i64 4495}
!4523 = metadata !{i64 4496}
!4524 = metadata !{i64 4497}
!4525 = metadata !{i64 4498}
!4526 = metadata !{i64 4499}
!4527 = metadata !{i64 4500}
!4528 = metadata !{i64 4501}
!4529 = metadata !{i64 4502}
!4530 = metadata !{i64 4503}
!4531 = metadata !{i64 4504}
!4532 = metadata !{i64 4505}
!4533 = metadata !{i64 4506}
!4534 = metadata !{i64 4507}
!4535 = metadata !{i64 4508}
!4536 = metadata !{i64 4509}
!4537 = metadata !{i64 4510}
!4538 = metadata !{i64 4511}
!4539 = metadata !{i64 4512}
!4540 = metadata !{i64 4513}
!4541 = metadata !{i64 4514}
!4542 = metadata !{i64 4515}
!4543 = metadata !{i64 4516}
!4544 = metadata !{i64 4517}
!4545 = metadata !{i64 4518}
!4546 = metadata !{i64 4519}
!4547 = metadata !{i64 4520}
!4548 = metadata !{i64 4521}
!4549 = metadata !{i64 4522}
!4550 = metadata !{i64 4523}
!4551 = metadata !{i64 4524}
!4552 = metadata !{i64 4525}
!4553 = metadata !{i64 4526}
!4554 = metadata !{i64 4527}
!4555 = metadata !{i64 4528}
!4556 = metadata !{i64 4529}
!4557 = metadata !{i64 4530}
!4558 = metadata !{i64 4531}
!4559 = metadata !{i64 4532}
!4560 = metadata !{i64 4533}
!4561 = metadata !{i64 4534}
!4562 = metadata !{i64 4535}
!4563 = metadata !{i64 4536}
!4564 = metadata !{i64 4537}
