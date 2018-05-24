source_filename = "test"
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"

@eax = internal unnamed_addr global i32 0
@ebx = internal unnamed_addr global i32 0
@0 = external global i32
@global_var_804b004.2 = local_unnamed_addr global i32 0
@global_var_804b008.1 = local_unnamed_addr global i32 (i32)* null

declare void @__pseudo_call(i32) local_unnamed_addr

define i32 @function_80484a0() local_unnamed_addr {
entry:
  %v0_80484a0 = load i32, i32* @ebx, align 4
  %v1_80484a4 = call i32 @function_8048600(i32 %v0_80484a0)
  %v0_80484a9 = load i32, i32* @ebx, align 4
  %v1_80484af = add i32 %v0_80484a9, 11091
  %v2_80484af = inttoptr i32 %v1_80484af to i32*
  %v3_80484af = load i32, i32* %v2_80484af, align 4
  %v1_80484b5 = icmp eq i32 %v3_80484af, 0
  br i1 %v1_80484b5, label %dec_label_pc_80484be, label %dec_label_pc_80484b9

dec_label_pc_80484b9:                             ; preds = %entry
  call void @__gmon_start__()
  br label %dec_label_pc_80484be

dec_label_pc_80484be:                             ; preds = %entry, %dec_label_pc_80484b9
  %v0_80484c2 = phi i32 [ 0, %entry ], [ ptrtoint (i32* @0 to i32), %dec_label_pc_80484b9 ]
  store i32 %v0_80484a0, i32* @ebx, align 4
  ret i32 %v0_80484c2

; uselistorder directives
  uselistorder label %dec_label_pc_80484be, { 1, 0 }
}

define i32 @function_80484d0(i32 %arg1) local_unnamed_addr {
entry:
  %v0_80484d0 = load i32, i32* @global_var_804b004.2, align 4
  %v2_80484d6 = call i32 bitcast (i32 (i32)** @global_var_804b008.1 to i32 (i32)*)(i32 %v0_80484d0)
  %v1_80484eb = call i32 @function_80484d0(i32 0)
  %v1_80484fb = call i32 @function_80484d0(i32 8)
  %v1_804850b = call i32 @function_80484d0(i32 16)
  %v1_804851b = call i32 @function_80484d0(i32 24)
  %v1_804852b = call i32 @function_80484d0(i32 32)
  %v1_804853b = call i32 @function_80484d0(i32 40)
  %v1_804854b = call i32 @function_80484d0(i32 48)
  %v1_804855b = call i32 @function_80484d0(i32 56)
  %v1_804856b = call i32 @function_80484d0(i32 64)
  %v1_804857b = call i32 @function_80484d0(i32 72)
  ret i32 %v1_804857b
}

define i32 @function_8048580(i32 %main, i32 %argc, i8** %ubp_av, void ()* %init, void ()* %fini, void ()* %rtld_fini) local_unnamed_addr {
dec_label_pc_8048580:
  %v6_8048580 = call i32 @__libc_start_main(i32 %main, i32 %argc, i8** %ubp_av, void ()* %init, void ()* %fini, void ()* %rtld_fini)
  %v1_804858b = call i32 @function_80484d0(i32 80)
  %v1_804859b = call i32 @function_80484d0(i32 88)
  %v1_80485ab = call i32 @function_80484d0(i32 96)
  %v1_80485bb = call i32 @function_80484d0(i32 104)
  ret i32 %v1_80485bb

; uselistorder directives
  uselistorder i32 (i32)* @function_80484d0, { 3, 2, 1, 0, 13, 12, 11, 10, 5, 4, 9, 8, 7, 6 }
}

define void @___gmon_start__() local_unnamed_addr {
entry:
  call void @__gmon_start__()
  ret void

; uselistorder directives
  uselistorder void ()* @__gmon_start__, { 1, 0 }
}

define i32 @entry_point(i32 %arg1) local_unnamed_addr {
entry:
  %stack_var_4 = alloca i32, align 4
  %tmp14 = bitcast i32* %stack_var_4 to i8**
  %v16_80485ec = call i32 @__libc_start_main(i32 134516445, i32 %arg1, i8** %tmp14, void ()* inttoptr (i32 134517216 to void ()*), void ()* inttoptr (i32 134517312 to void ()*), void ()* null)
  ret i32 %v16_80485ec
}

define i32 @function_8048600(i32 %arg1) local_unnamed_addr {
dec_label_pc_8048600:
  store i32 %arg1, i32* @ebx, align 4
  %v0_8048603 = load i32, i32* @eax, align 4
  ret i32 %v0_8048603
}

define i32 @function_8048610() local_unnamed_addr {
dec_label_pc_8048610:
  ret i32 3
}

define i32 @function_8048640() local_unnamed_addr {
dec_label_pc_8048640:
  ret i32 0
}

define i32 @function_80491e0(i32 %arg1, i32 %arg2, i32 %arg3) local_unnamed_addr {
dec_label_pc_80491e0:
  %edi.global-to-local = alloca i32, align 4
  %esi.global-to-local = alloca i32, align 4
  store i32 0, i32* %edi.global-to-local, align 4
  store i32 0, i32* %esi.global-to-local, align 4
  %stack_var_-16 = alloca i32, align 4
  %v0_80491e2 = load i32, i32* %esi.global-to-local, align 4
  %v0_80491e3 = load i32, i32* @ebx, align 4
  store i32 %v0_80491e3, i32* %stack_var_-16, align 4
  %v1_80491e4 = call i32 @function_8048600(i32 %v0_80491e3)
  store i32 %v1_80491e4, i32* @eax, align 4
  %v0_80491e9 = load i32, i32* @ebx, align 4
  %v1_80491e9 = add i32 %v0_80491e9, 7703
  store i32 %v1_80491e9, i32* @ebx, align 4
  %v1_80491f6 = add i32 %v0_80491e9, 7459
  store i32 %v1_80491f6, i32* %esi.global-to-local, align 4
  %v0_80491fc = call i32 @function_80484a0()
  %v0_8049201 = load i32, i32* @ebx, align 4
  %v1_8049201 = add i32 %v0_8049201, -248
  %v2_8049207 = sub i32 %v1_80491f6, %v1_8049201
  %v2_8049209 = sdiv i32 %v2_8049207, 4
  store i32 0, i32* %edi.global-to-local, align 4
  store i32 %v2_8049209, i32* %esi.global-to-local, align 4
  %v9_804922418 = inttoptr i32 %v1_8049201 to i32*
  %v10_804922419 = load i32, i32* %v9_804922418, align 4
  call void @__pseudo_call(i32 %v10_804922419)
  store i32 1, i32* %edi.global-to-local, align 4
  %tmp = and i32 %v2_8049207, -4
  %tmp26 = icmp eq i32 %tmp, 4
  %v1_804923324 = icmp eq i1 %tmp26, false
  br i1 %v1_804923324, label %dec_label_pc_8049218.dec_label_pc_8049218_crit_edge, label %dec_label_pc_8049235

dec_label_pc_8049218.dec_label_pc_8049218_crit_edge: ; preds = %dec_label_pc_80491e0, %dec_label_pc_8049218.dec_label_pc_8049218_crit_edge
  %v1_804922b25 = phi i32 [ %v1_804922b, %dec_label_pc_8049218.dec_label_pc_8049218_crit_edge ], [ 1, %dec_label_pc_80491e0 ]
  %v4_8049224.pre = load i32, i32* @ebx, align 4
  %v6_8049224 = mul i32 %v1_804922b25, 4
  %v7_8049224 = add i32 %v4_8049224.pre, -248
  %v8_8049224 = add i32 %v7_8049224, %v6_8049224
  %v9_8049224 = inttoptr i32 %v8_8049224 to i32*
  %v10_8049224 = load i32, i32* %v9_8049224, align 4
  call void @__pseudo_call(i32 %v10_8049224)
  %v0_804922b = load i32, i32* %edi.global-to-local, align 4
  %v1_804922b = add i32 %v0_804922b, 1
  store i32 %v1_804922b, i32* %edi.global-to-local, align 4
  %v1_8049231 = load i32, i32* %esi.global-to-local, align 4
  %v12_8049231 = icmp eq i32 %v1_804922b, %v1_8049231
  %v1_8049233 = icmp eq i1 %v12_8049231, false
  br i1 %v1_8049233, label %dec_label_pc_8049218.dec_label_pc_8049218_crit_edge, label %dec_label_pc_8049235

dec_label_pc_8049235:                             ; preds = %dec_label_pc_8049218.dec_label_pc_8049218_crit_edge, %dec_label_pc_80491e0
  %v2_8049239 = load i32, i32* %stack_var_-16, align 4
  store i32 %v2_8049239, i32* %esi.global-to-local, align 4
  store i32 %v0_80491e2, i32* %edi.global-to-local, align 4
  ret i32 %v1_8049201

; uselistorder directives
  uselistorder i32 %v1_804922b, { 1, 2, 0 }
  uselistorder i32 %v1_8049201, { 1, 0, 2 }
  uselistorder i32* %esi.global-to-local, { 2, 3, 4, 5, 0, 1 }
  uselistorder i32* %edi.global-to-local, { 1, 2, 4, 5, 3, 0 }
  uselistorder i1 false, { 1, 0 }
  uselistorder void (i32)* @__pseudo_call, { 1, 0 }
  uselistorder i32 4, { 2, 0, 1 }
  uselistorder i32* @eax, { 1, 0 }
  uselistorder i32 1, { 6, 1, 0, 4, 2, 3, 5 }
  uselistorder label %dec_label_pc_8049218.dec_label_pc_8049218_crit_edge, { 1, 0 }
}

define i32 @function_8049244() local_unnamed_addr {
entry:
  %v0_8049244 = load i32, i32* @ebx, align 4
  %v1_8049248 = call i32 @function_8048600(i32 %v0_8049244)
  ret i32 %v1_8049248

; uselistorder directives
  uselistorder i32 (i32)* @function_8048600, { 2, 1, 0 }
  uselistorder i32 0, { 6, 2, 1, 0, 4, 3, 7, 5, 8, 9 }
  uselistorder i32* @ebx, { 1, 0, 2, 3, 4, 5, 9, 6, 7, 8 }
}

declare void @__gmon_start__() local_unnamed_addr

declare i32 @__libc_start_main(i32, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare i32 @__decompiler_undefined_function_0() local_unnamed_addr

declare i8** @__decompiler_undefined_function_1() local_unnamed_addr

declare void ()* @__decompiler_undefined_function_2() local_unnamed_addr
