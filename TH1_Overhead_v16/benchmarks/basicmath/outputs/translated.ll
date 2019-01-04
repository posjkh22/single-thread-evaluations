; ModuleID = './outputs/translated.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_sqrt = type { i32, i32 }
%struct.timeval = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [21 x i8] c" [target finished!]\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c" [target] Execution Time: %ld\0A\00", align 1
@is_signature_queue_full = external global i32, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"./evaluations/overhead/time_overead\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  call void @init_monitor()
  call void @enqueue_signature(i32 65537)
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca [3 x double], align 16
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.int_sqrt, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct.timeval, align 8
  %15 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %1, align 4
  store double 1.000000e+00, double* %2, align 8
  store double -1.050000e+01, double* %3, align 8
  store double 3.200000e+01, double* %4, align 8
  store double -3.000000e+01, double* %5, align 8
  store i64 1072497001, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %16 = call i32 @gettimeofday(%struct.timeval* %13, %struct.int_sqrt* null) #5
  br label %17

; <label>:17:                                     ; preds = %0
  call void @enqueue_signature_with_call(i32 65538)
  %18 = load double, double* %2, align 8
  %19 = load double, double* %3, align 8
  %20 = load double, double* %4, align 8
  %21 = load double, double* %5, align 8
  %22 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %18, double %19, double %20, double %21, i32* %8, double* %22)
  br label %23

; <label>:23:                                     ; preds = %17
  call void @enqueue_signature(i32 65539)
  store i32 0, i32* %9, align 4
  br label %24

; <label>:24:                                     ; preds = %29, %23
  call void @enqueue_signature(i32 65540)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %32

; <label>:28:                                     ; preds = %24
  call void @enqueue_signature(i32 65541)
  store double 1.000000e+00, double* %2, align 8
  br label %29

; <label>:29:                                     ; preds = %28
  call void @enqueue_signature(i32 65542)
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %24

; <label>:32:                                     ; preds = %24
  call void @enqueue_signature_with_call(i32 65543)
  store double -4.500000e+00, double* %3, align 8
  store double 1.700000e+01, double* %4, align 8
  store double -3.000000e+01, double* %5, align 8
  %33 = load double, double* %2, align 8
  %34 = load double, double* %3, align 8
  %35 = load double, double* %4, align 8
  %36 = load double, double* %5, align 8
  %37 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %33, double %34, double %35, double %36, i32* %8, double* %37)
  br label %38

; <label>:38:                                     ; preds = %32
  call void @enqueue_signature(i32 65544)
  store i32 0, i32* %9, align 4
  br label %39

; <label>:39:                                     ; preds = %44, %38
  call void @enqueue_signature(i32 65545)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %39
  call void @enqueue_signature(i32 65546)
  store double 1.000000e+00, double* %2, align 8
  br label %44

; <label>:44:                                     ; preds = %43
  call void @enqueue_signature(i32 65547)
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %39

; <label>:47:                                     ; preds = %39
  call void @enqueue_signature_with_call(i32 65548)
  store double -3.500000e+00, double* %3, align 8
  store double 2.200000e+01, double* %4, align 8
  store double -3.100000e+01, double* %5, align 8
  %48 = load double, double* %2, align 8
  %49 = load double, double* %3, align 8
  %50 = load double, double* %4, align 8
  %51 = load double, double* %5, align 8
  %52 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %48, double %49, double %50, double %51, i32* %8, double* %52)
  br label %53

; <label>:53:                                     ; preds = %47
  call void @enqueue_signature(i32 65549)
  store i32 0, i32* %9, align 4
  br label %54

; <label>:54:                                     ; preds = %59, %53
  call void @enqueue_signature(i32 65550)
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %62

; <label>:58:                                     ; preds = %54
  call void @enqueue_signature(i32 65551)
  store double 1.000000e+00, double* %2, align 8
  br label %59

; <label>:59:                                     ; preds = %58
  call void @enqueue_signature(i32 65552)
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %54

; <label>:62:                                     ; preds = %54
  call void @enqueue_signature_with_call(i32 65553)
  store double -1.370000e+01, double* %3, align 8
  store double 1.000000e+00, double* %4, align 8
  store double -3.500000e+01, double* %5, align 8
  %63 = load double, double* %2, align 8
  %64 = load double, double* %3, align 8
  %65 = load double, double* %4, align 8
  %66 = load double, double* %5, align 8
  %67 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %63, double %64, double %65, double %66, i32* %8, double* %67)
  br label %68

; <label>:68:                                     ; preds = %62
  call void @enqueue_signature(i32 65554)
  store i32 0, i32* %9, align 4
  br label %69

; <label>:69:                                     ; preds = %74, %68
  call void @enqueue_signature(i32 65555)
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %77

; <label>:73:                                     ; preds = %69
  call void @enqueue_signature(i32 65556)
  store double 3.000000e+00, double* %2, align 8
  br label %74

; <label>:74:                                     ; preds = %73
  call void @enqueue_signature(i32 65557)
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %69

; <label>:77:                                     ; preds = %69
  call void @enqueue_signature_with_call(i32 65558)
  store double 1.234000e+01, double* %3, align 8
  store double 5.000000e+00, double* %4, align 8
  store double 1.200000e+01, double* %5, align 8
  %78 = load double, double* %2, align 8
  %79 = load double, double* %3, align 8
  %80 = load double, double* %4, align 8
  %81 = load double, double* %5, align 8
  %82 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %78, double %79, double %80, double %81, i32* %8, double* %82)
  br label %83

; <label>:83:                                     ; preds = %77
  call void @enqueue_signature(i32 65559)
  store i32 0, i32* %9, align 4
  br label %84

; <label>:84:                                     ; preds = %89, %83
  call void @enqueue_signature(i32 65560)
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %92

; <label>:88:                                     ; preds = %84
  call void @enqueue_signature(i32 65561)
  store double -8.000000e+00, double* %2, align 8
  br label %89

; <label>:89:                                     ; preds = %88
  call void @enqueue_signature(i32 65562)
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %84

; <label>:92:                                     ; preds = %84
  call void @enqueue_signature_with_call(i32 65563)
  store double -6.789000e+01, double* %3, align 8
  store double 6.000000e+00, double* %4, align 8
  store double -2.360000e+01, double* %5, align 8
  %93 = load double, double* %2, align 8
  %94 = load double, double* %3, align 8
  %95 = load double, double* %4, align 8
  %96 = load double, double* %5, align 8
  %97 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %93, double %94, double %95, double %96, i32* %8, double* %97)
  br label %98

; <label>:98:                                     ; preds = %92
  call void @enqueue_signature(i32 65564)
  store i32 0, i32* %9, align 4
  br label %99

; <label>:99:                                     ; preds = %104, %98
  call void @enqueue_signature(i32 65565)
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %107

; <label>:103:                                    ; preds = %99
  call void @enqueue_signature(i32 65566)
  store double 4.500000e+01, double* %2, align 8
  br label %104

; <label>:104:                                    ; preds = %103
  call void @enqueue_signature(i32 65567)
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %99

; <label>:107:                                    ; preds = %99
  call void @enqueue_signature_with_call(i32 65568)
  store double 8.670000e+00, double* %3, align 8
  store double 7.500000e+00, double* %4, align 8
  store double 3.400000e+01, double* %5, align 8
  %108 = load double, double* %2, align 8
  %109 = load double, double* %3, align 8
  %110 = load double, double* %4, align 8
  %111 = load double, double* %5, align 8
  %112 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %108, double %109, double %110, double %111, i32* %8, double* %112)
  br label %113

; <label>:113:                                    ; preds = %107
  call void @enqueue_signature(i32 65569)
  store i32 0, i32* %9, align 4
  br label %114

; <label>:114:                                    ; preds = %119, %113
  call void @enqueue_signature(i32 65570)
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %122

; <label>:118:                                    ; preds = %114
  call void @enqueue_signature(i32 65571)
  store double -1.200000e+01, double* %2, align 8
  br label %119

; <label>:119:                                    ; preds = %118
  call void @enqueue_signature(i32 65572)
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %114

; <label>:122:                                    ; preds = %114
  call void @enqueue_signature_with_call(i32 65573)
  store double -1.700000e+00, double* %3, align 8
  store double 5.300000e+00, double* %4, align 8
  store double 1.600000e+01, double* %5, align 8
  %123 = load double, double* %2, align 8
  %124 = load double, double* %3, align 8
  %125 = load double, double* %4, align 8
  %126 = load double, double* %5, align 8
  %127 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %123, double %124, double %125, double %126, i32* %8, double* %127)
  br label %128

; <label>:128:                                    ; preds = %122
  call void @enqueue_signature(i32 65574)
  store i32 0, i32* %9, align 4
  br label %129

; <label>:129:                                    ; preds = %171, %128
  call void @enqueue_signature(i32 65575)
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %174

; <label>:133:                                    ; preds = %129
  call void @enqueue_signature(i32 65576)
  store double 1.000000e+00, double* %2, align 8
  br label %134

; <label>:134:                                    ; preds = %167, %133
  call void @enqueue_signature(i32 65577)
  %135 = load double, double* %2, align 8
  %136 = fcmp olt double %135, 1.000000e+01
  br i1 %136, label %137, label %170

; <label>:137:                                    ; preds = %134
  call void @enqueue_signature(i32 65578)
  store double 1.000000e+01, double* %3, align 8
  br label %138

; <label>:138:                                    ; preds = %163, %137
  call void @enqueue_signature(i32 65579)
  %139 = load double, double* %3, align 8
  %140 = fcmp ogt double %139, 0.000000e+00
  br i1 %140, label %141, label %166

; <label>:141:                                    ; preds = %138
  call void @enqueue_signature(i32 65580)
  store double 5.000000e+00, double* %4, align 8
  br label %142

; <label>:142:                                    ; preds = %159, %141
  call void @enqueue_signature(i32 65581)
  %143 = load double, double* %4, align 8
  %144 = fcmp olt double %143, 1.500000e+01
  br i1 %144, label %145, label %162

; <label>:145:                                    ; preds = %142
  call void @enqueue_signature(i32 65582)
  store double -1.000000e+00, double* %5, align 8
  br label %146

; <label>:146:                                    ; preds = %155, %145
  call void @enqueue_signature(i32 65583)
  %147 = load double, double* %5, align 8
  %148 = fcmp ogt double %147, -5.000000e+00
  br i1 %148, label %149, label %158

; <label>:149:                                    ; preds = %146
  call void @enqueue_signature_with_call(i32 65584)
  %150 = load double, double* %2, align 8
  %151 = load double, double* %3, align 8
  %152 = load double, double* %4, align 8
  %153 = load double, double* %5, align 8
  %154 = getelementptr inbounds [3 x double], [3 x double]* %6, i32 0, i32 0
  call void @SolveCubic(double %150, double %151, double %152, double %153, i32* %8, double* %154)
  br label %155

; <label>:155:                                    ; preds = %149
  call void @enqueue_signature(i32 65585)
  %156 = load double, double* %5, align 8
  %157 = fsub double %156, 4.510000e-01
  store double %157, double* %5, align 8
  br label %146

; <label>:158:                                    ; preds = %146
  call void @enqueue_signature(i32 65586)
  br label %159

; <label>:159:                                    ; preds = %158
  call void @enqueue_signature(i32 65587)
  %160 = load double, double* %4, align 8
  %161 = fadd double %160, 6.100000e-01
  store double %161, double* %4, align 8
  br label %142

; <label>:162:                                    ; preds = %142
  call void @enqueue_signature(i32 65588)
  br label %163

; <label>:163:                                    ; preds = %162
  call void @enqueue_signature(i32 65589)
  %164 = load double, double* %3, align 8
  %165 = fsub double %164, 2.500000e-01
  store double %165, double* %3, align 8
  br label %138

; <label>:166:                                    ; preds = %138
  call void @enqueue_signature(i32 65590)
  br label %167

; <label>:167:                                    ; preds = %166
  call void @enqueue_signature(i32 65591)
  %168 = load double, double* %2, align 8
  %169 = fadd double %168, 1.000000e+00
  store double %169, double* %2, align 8
  br label %134

; <label>:170:                                    ; preds = %134
  call void @enqueue_signature(i32 65592)
  br label %171

; <label>:171:                                    ; preds = %170
  call void @enqueue_signature(i32 65593)
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %129

; <label>:174:                                    ; preds = %129
  call void @enqueue_signature(i32 65594)
  store i32 0, i32* %9, align 4
  br label %175

; <label>:175:                                    ; preds = %181, %174
  call void @enqueue_signature(i32 65595)
  %176 = load i32, i32* %9, align 4
  %177 = icmp slt i32 %176, 100000
  br i1 %177, label %178, label %184

; <label>:178:                                    ; preds = %175
  call void @enqueue_signature_with_call(i32 65596)
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  call void @usqrt(i64 %180, %struct.int_sqrt* %11)
  br label %181

; <label>:181:                                    ; preds = %178
  call void @enqueue_signature(i32 65597)
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 2
  store i32 %183, i32* %9, align 4
  br label %175

; <label>:184:                                    ; preds = %175
  call void @enqueue_signature(i32 65598)
  store i64 1072497001, i64* %10, align 8
  br label %185

; <label>:185:                                    ; preds = %190, %184
  call void @enqueue_signature(i32 65599)
  %186 = load i64, i64* %10, align 8
  %187 = icmp ult i64 %186, 1072513385
  br i1 %187, label %188, label %193

; <label>:188:                                    ; preds = %185
  call void @enqueue_signature_with_call(i32 65600)
  %189 = load i64, i64* %10, align 8
  call void @usqrt(i64 %189, %struct.int_sqrt* %11)
  br label %190

; <label>:190:                                    ; preds = %188
  call void @enqueue_signature(i32 65601)
  %191 = load i64, i64* %10, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %10, align 8
  br label %185

; <label>:193:                                    ; preds = %185
  call void @enqueue_signature(i32 65602)
  store double 0.000000e+00, double* %7, align 8
  br label %194

; <label>:194:                                    ; preds = %204, %193
  call void @enqueue_signature(i32 65603)
  %195 = load double, double* %7, align 8
  %196 = fcmp ole double %195, 3.600000e+02
  br i1 %196, label %197, label %207

; <label>:197:                                    ; preds = %194
  call void @enqueue_signature(i32 65604)
  %198 = load double, double* %7, align 8
  %199 = call double @atan(double 1.000000e+00) #5
  br label %200

; <label>:200:                                    ; preds = %197
  call void @enqueue_signature(i32 65605)
  %201 = fmul double 4.000000e+00, %199
  %202 = fmul double %198, %201
  %203 = fdiv double %202, 1.800000e+02
  br label %204

; <label>:204:                                    ; preds = %200
  call void @enqueue_signature(i32 65606)
  %205 = load double, double* %7, align 8
  %206 = fadd double %205, 1.000000e-03
  store double %206, double* %7, align 8
  br label %194

; <label>:207:                                    ; preds = %194
  call void @enqueue_signature(i32 65607)
  store double 0.000000e+00, double* %7, align 8
  br label %208

; <label>:208:                                    ; preds = %225, %207
  call void @enqueue_signature(i32 65608)
  %209 = load double, double* %7, align 8
  %210 = call double @atan(double 1.000000e+00) #5
  br label %211

; <label>:211:                                    ; preds = %208
  call void @enqueue_signature(i32 65609)
  %212 = fmul double 4.000000e+00, %210
  %213 = fmul double 2.000000e+00, %212
  %214 = fadd double %213, 0x3EB0C6F7A0B5ED8D
  %215 = fcmp ole double %209, %214
  br i1 %215, label %216, label %230

; <label>:216:                                    ; preds = %211
  call void @enqueue_signature(i32 65610)
  %217 = load double, double* %7, align 8
  %218 = fmul double %217, 1.800000e+02
  %219 = call double @atan(double 1.000000e+00) #5
  br label %220

; <label>:220:                                    ; preds = %216
  call void @enqueue_signature(i32 65611)
  %221 = fmul double 4.000000e+00, %219
  %222 = fdiv double %218, %221
  br label %223

; <label>:223:                                    ; preds = %220
  call void @enqueue_signature(i32 65612)
  %224 = call double @atan(double 1.000000e+00) #5
  br label %225

; <label>:225:                                    ; preds = %223
  call void @enqueue_signature(i32 65613)
  %226 = fmul double 4.000000e+00, %224
  %227 = fdiv double %226, 5.760000e+03
  %228 = load double, double* %7, align 8
  %229 = fadd double %228, %227
  store double %229, double* %7, align 8
  br label %208

; <label>:230:                                    ; preds = %211
  call void @enqueue_signature(i32 65614)
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  br label %232

; <label>:232:                                    ; preds = %230
  call void @enqueue_signature(i32 65615)
  %233 = call i32 @gettimeofday(%struct.timeval* %14, %struct.int_sqrt* null) #5
  br label %234

; <label>:234:                                    ; preds = %232
  call void @enqueue_signature(i32 65616)
  %235 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = sub nsw i64 %236, %238
  %240 = mul nsw i64 %239, 1000000
  %241 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = sub nsw i64 %242, %244
  %246 = add nsw i64 %240, %245
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i64 %246)
  br label %248

; <label>:248:                                    ; preds = %234
  call void @enqueue_signature(i32 65617)
  store i32 1, i32* @is_signature_queue_full, align 4
  %249 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %250

; <label>:250:                                    ; preds = %248
  call void @enqueue_signature(i32 65618)
  store %struct._IO_FILE* %249, %struct._IO_FILE** %15, align 8
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %252 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = sub nsw i64 %253, %255
  %257 = mul nsw i64 %256, 1000000
  %258 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = sub nsw i64 %259, %261
  %263 = add nsw i64 %257, %262
  %264 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %251, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 %263)
  br label %265

; <label>:265:                                    ; preds = %250
  call void @enqueue_signature(i32 65619)
  %266 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %267 = call i32 @fclose(%struct._IO_FILE* %266)
  br label %268

; <label>:268:                                    ; preds = %265
  call void @enqueue_signature_with_remainder_process(i32 65620)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.int_sqrt*) #1

; Function Attrs: nounwind
declare double @atan(double) #1

declare i32 @printf(i8*, ...) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define double @rad2deg(double) #0 {
  call void @enqueue_signature(i32 524289)
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fmul double 1.800000e+02, %3
  %5 = call double @atan(double 1.000000e+00) #5
  br label %6

; <label>:6:                                      ; preds = %1
  call void @enqueue_signature_with_return(i32 524290)
  %7 = fmul double 4.000000e+00, %5
  %8 = fdiv double %4, %7
  ret double %8
}

; Function Attrs: noinline nounwind optnone uwtable
define double @deg2rad(double) #0 {
  call void @enqueue_signature(i32 589825)
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = call double @atan(double 1.000000e+00) #5
  br label %4

; <label>:4:                                      ; preds = %1
  call void @enqueue_signature_with_return(i32 589826)
  %5 = fmul double 4.000000e+00, %3
  %6 = load double, double* %2, align 8
  %7 = fmul double %5, %6
  %8 = fdiv double %7, 1.800000e+02
  ret double %8
}

; Function Attrs: noinline nounwind optnone uwtable
define void @SolveCubic(double, double, double, double, i32*, double*) #0 {
  call void @enqueue_signature(i32 655361)
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32*, align 8
  %12 = alloca double*, align 8
  %13 = alloca x86_fp80, align 16
  %14 = alloca x86_fp80, align 16
  %15 = alloca x86_fp80, align 16
  %16 = alloca x86_fp80, align 16
  %17 = alloca x86_fp80, align 16
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store i32* %4, i32** %11, align 8
  store double* %5, double** %12, align 8
  %20 = load double, double* %8, align 8
  %21 = load double, double* %7, align 8
  %22 = fdiv double %20, %21
  %23 = fpext double %22 to x86_fp80
  store x86_fp80 %23, x86_fp80* %13, align 16
  %24 = load double, double* %9, align 8
  %25 = load double, double* %7, align 8
  %26 = fdiv double %24, %25
  %27 = fpext double %26 to x86_fp80
  store x86_fp80 %27, x86_fp80* %14, align 16
  %28 = load double, double* %10, align 8
  %29 = load double, double* %7, align 8
  %30 = fdiv double %28, %29
  %31 = fpext double %30 to x86_fp80
  store x86_fp80 %31, x86_fp80* %15, align 16
  %32 = load x86_fp80, x86_fp80* %13, align 16
  %33 = load x86_fp80, x86_fp80* %13, align 16
  %34 = fmul x86_fp80 %32, %33
  %35 = load x86_fp80, x86_fp80* %14, align 16
  %36 = fmul x86_fp80 0xK4000C000000000000000, %35
  %37 = fsub x86_fp80 %34, %36
  %38 = fdiv x86_fp80 %37, 0xK40029000000000000000
  store x86_fp80 %38, x86_fp80* %16, align 16
  %39 = load x86_fp80, x86_fp80* %13, align 16
  %40 = fmul x86_fp80 0xK40008000000000000000, %39
  %41 = load x86_fp80, x86_fp80* %13, align 16
  %42 = fmul x86_fp80 %40, %41
  %43 = load x86_fp80, x86_fp80* %13, align 16
  %44 = fmul x86_fp80 %42, %43
  %45 = load x86_fp80, x86_fp80* %13, align 16
  %46 = fmul x86_fp80 0xK40029000000000000000, %45
  %47 = load x86_fp80, x86_fp80* %14, align 16
  %48 = fmul x86_fp80 %46, %47
  %49 = fsub x86_fp80 %44, %48
  %50 = load x86_fp80, x86_fp80* %15, align 16
  %51 = fmul x86_fp80 0xK4003D800000000000000, %50
  %52 = fadd x86_fp80 %49, %51
  %53 = fdiv x86_fp80 %52, 0xK4004D800000000000000
  store x86_fp80 %53, x86_fp80* %17, align 16
  %54 = load x86_fp80, x86_fp80* %17, align 16
  %55 = load x86_fp80, x86_fp80* %17, align 16
  %56 = fmul x86_fp80 %54, %55
  %57 = load x86_fp80, x86_fp80* %16, align 16
  %58 = load x86_fp80, x86_fp80* %16, align 16
  %59 = fmul x86_fp80 %57, %58
  %60 = load x86_fp80, x86_fp80* %16, align 16
  %61 = fmul x86_fp80 %59, %60
  %62 = fsub x86_fp80 %56, %61
  %63 = fptrunc x86_fp80 %62 to double
  store double %63, double* %18, align 8
  %64 = load double, double* %18, align 8
  %65 = fcmp ole double %64, 0.000000e+00
  br i1 %65, label %66, label %143

; <label>:66:                                     ; preds = %6
  call void @enqueue_signature(i32 655362)
  %67 = load i32*, i32** %11, align 8
  store i32 3, i32* %67, align 4
  %68 = load x86_fp80, x86_fp80* %17, align 16
  %69 = load x86_fp80, x86_fp80* %16, align 16
  %70 = load x86_fp80, x86_fp80* %16, align 16
  %71 = fmul x86_fp80 %69, %70
  %72 = load x86_fp80, x86_fp80* %16, align 16
  %73 = fmul x86_fp80 %71, %72
  %74 = fptrunc x86_fp80 %73 to double
  %75 = call double @sqrt(double %74) #5
  br label %76

; <label>:76:                                     ; preds = %66
  call void @enqueue_signature(i32 655363)
  %77 = fpext double %75 to x86_fp80
  %78 = fdiv x86_fp80 %68, %77
  %79 = fptrunc x86_fp80 %78 to double
  %80 = call double @acos(double %79) #5
  br label %81

; <label>:81:                                     ; preds = %76
  call void @enqueue_signature(i32 655364)
  store double %80, double* %19, align 8
  %82 = load x86_fp80, x86_fp80* %16, align 16
  %83 = fptrunc x86_fp80 %82 to double
  %84 = call double @sqrt(double %83) #5
  br label %85

; <label>:85:                                     ; preds = %81
  call void @enqueue_signature(i32 655365)
  %86 = fmul double -2.000000e+00, %84
  %87 = load double, double* %19, align 8
  %88 = fdiv double %87, 3.000000e+00
  %89 = call double @cos(double %88) #5
  br label %90

; <label>:90:                                     ; preds = %85
  call void @enqueue_signature(i32 655366)
  %91 = fmul double %86, %89
  %92 = fpext double %91 to x86_fp80
  %93 = load x86_fp80, x86_fp80* %13, align 16
  %94 = fdiv x86_fp80 %93, 0xK4000C000000000000000
  %95 = fsub x86_fp80 %92, %94
  %96 = fptrunc x86_fp80 %95 to double
  %97 = load double*, double** %12, align 8
  %98 = getelementptr inbounds double, double* %97, i64 0
  store double %96, double* %98, align 8
  %99 = load x86_fp80, x86_fp80* %16, align 16
  %100 = fptrunc x86_fp80 %99 to double
  %101 = call double @sqrt(double %100) #5
  br label %102

; <label>:102:                                    ; preds = %90
  call void @enqueue_signature(i32 655367)
  %103 = fmul double -2.000000e+00, %101
  %104 = load double, double* %19, align 8
  %105 = call double @atan(double 1.000000e+00) #5
  br label %106

; <label>:106:                                    ; preds = %102
  call void @enqueue_signature(i32 655368)
  %107 = fmul double 4.000000e+00, %105
  %108 = fmul double 2.000000e+00, %107
  %109 = fadd double %104, %108
  %110 = fdiv double %109, 3.000000e+00
  %111 = call double @cos(double %110) #5
  br label %112

; <label>:112:                                    ; preds = %106
  call void @enqueue_signature(i32 655369)
  %113 = fmul double %103, %111
  %114 = fpext double %113 to x86_fp80
  %115 = load x86_fp80, x86_fp80* %13, align 16
  %116 = fdiv x86_fp80 %115, 0xK4000C000000000000000
  %117 = fsub x86_fp80 %114, %116
  %118 = fptrunc x86_fp80 %117 to double
  %119 = load double*, double** %12, align 8
  %120 = getelementptr inbounds double, double* %119, i64 1
  store double %118, double* %120, align 8
  %121 = load x86_fp80, x86_fp80* %16, align 16
  %122 = fptrunc x86_fp80 %121 to double
  %123 = call double @sqrt(double %122) #5
  br label %124

; <label>:124:                                    ; preds = %112
  call void @enqueue_signature(i32 655370)
  %125 = fmul double -2.000000e+00, %123
  %126 = load double, double* %19, align 8
  %127 = call double @atan(double 1.000000e+00) #5
  br label %128

; <label>:128:                                    ; preds = %124
  call void @enqueue_signature(i32 655371)
  %129 = fmul double 4.000000e+00, %127
  %130 = fmul double 4.000000e+00, %129
  %131 = fadd double %126, %130
  %132 = fdiv double %131, 3.000000e+00
  %133 = call double @cos(double %132) #5
  br label %134

; <label>:134:                                    ; preds = %128
  call void @enqueue_signature(i32 655372)
  %135 = fmul double %125, %133
  %136 = fpext double %135 to x86_fp80
  %137 = load x86_fp80, x86_fp80* %13, align 16
  %138 = fdiv x86_fp80 %137, 0xK4000C000000000000000
  %139 = fsub x86_fp80 %136, %138
  %140 = fptrunc x86_fp80 %139 to double
  %141 = load double*, double** %12, align 8
  %142 = getelementptr inbounds double, double* %141, i64 2
  store double %140, double* %142, align 8
  br label %186

; <label>:143:                                    ; preds = %6
  call void @enqueue_signature(i32 655373)
  %144 = load i32*, i32** %11, align 8
  store i32 1, i32* %144, align 4
  %145 = load double, double* %18, align 8
  %146 = call double @sqrt(double %145) #5
  br label %147

; <label>:147:                                    ; preds = %143
  call void @enqueue_signature(i32 655374)
  %148 = load x86_fp80, x86_fp80* %17, align 16
  %149 = fptrunc x86_fp80 %148 to double
  %150 = call double @fabs(double %149) #6
  br label %151

; <label>:151:                                    ; preds = %147
  call void @enqueue_signature(i32 655375)
  %152 = fadd double %146, %150
  %153 = call double @pow(double %152, double 0x3FD5555555555555) #5
  br label %154

; <label>:154:                                    ; preds = %151
  call void @enqueue_signature(i32 655376)
  %155 = load double*, double** %12, align 8
  %156 = getelementptr inbounds double, double* %155, i64 0
  store double %153, double* %156, align 8
  %157 = load x86_fp80, x86_fp80* %16, align 16
  %158 = load double*, double** %12, align 8
  %159 = getelementptr inbounds double, double* %158, i64 0
  %160 = load double, double* %159, align 8
  %161 = fpext double %160 to x86_fp80
  %162 = fdiv x86_fp80 %157, %161
  %163 = load double*, double** %12, align 8
  %164 = getelementptr inbounds double, double* %163, i64 0
  %165 = load double, double* %164, align 8
  %166 = fpext double %165 to x86_fp80
  %167 = fadd x86_fp80 %166, %162
  %168 = fptrunc x86_fp80 %167 to double
  store double %168, double* %164, align 8
  %169 = load x86_fp80, x86_fp80* %17, align 16
  %170 = fcmp olt x86_fp80 %169, 0xK00000000000000000000
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 1, i32 -1
  %173 = sitofp i32 %172 to double
  %174 = load double*, double** %12, align 8
  %175 = getelementptr inbounds double, double* %174, i64 0
  %176 = load double, double* %175, align 8
  %177 = fmul double %176, %173
  store double %177, double* %175, align 8
  %178 = load x86_fp80, x86_fp80* %13, align 16
  %179 = fdiv x86_fp80 %178, 0xK4000C000000000000000
  %180 = load double*, double** %12, align 8
  %181 = getelementptr inbounds double, double* %180, i64 0
  %182 = load double, double* %181, align 8
  %183 = fpext double %182 to x86_fp80
  %184 = fsub x86_fp80 %183, %179
  %185 = fptrunc x86_fp80 %184 to double
  store double %185, double* %181, align 8
  br label %186

; <label>:186:                                    ; preds = %154, %134
  call void @enqueue_signature_with_return(i32 655377)
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @acos(double) #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @usqrt(i64, %struct.int_sqrt*) #0 {
  call void @enqueue_signature(i32 1048577)
  %3 = alloca i64, align 8
  %4 = alloca %struct.int_sqrt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.int_sqrt* %1, %struct.int_sqrt** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %36, %2
  call void @enqueue_signature(i32 1048578)
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %39

; <label>:12:                                     ; preds = %9
  call void @enqueue_signature(i32 1048579)
  %13 = load i64, i64* %6, align 8
  %14 = shl i64 %13, 2
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, 3221225472
  %17 = lshr i64 %16, 30
  %18 = add i64 %14, %17
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %3, align 8
  %20 = shl i64 %19, 2
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = shl i64 %21, 1
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = shl i64 %23, 1
  %25 = add i64 %24, 1
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %12
  call void @enqueue_signature(i32 1048580)
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %35

; <label>:35:                                     ; preds = %29, %12
  call void @enqueue_signature(i32 1048581)
  br label %36

; <label>:36:                                     ; preds = %35
  call void @enqueue_signature(i32 1048582)
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %9

; <label>:39:                                     ; preds = %9
  call void @enqueue_signature(i32 1048583)
  %40 = load %struct.int_sqrt*, %struct.int_sqrt** %4, align 8
  %41 = bitcast %struct.int_sqrt* %40 to i8*
  %42 = bitcast i64* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 8, i32 4, i1 false)
  br label %43

; <label>:43:                                     ; preds = %39
  call void @enqueue_signature_with_return(i32 1048584)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare void @init_monitor()

declare void @enqueue_signature(i32)

declare void @enqueue_signature_with_call(i32)

declare void @enqueue_signature_with_return(i32)

declare void @enqueue_signature_with_remainder_process(i32)

define void @CallcheckerSet() {
entry:
  call void @init_monitor()
  call void @enqueue_signature(i32 1)
  call void @enqueue_signature_with_call(i32 1)
  call void @enqueue_signature_with_return(i32 1)
  call void @enqueue_signature_with_remainder_process(i32 1)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}