Öď
°˙
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.11.02v2.11.0-rc2-15-g6290819256d8ą
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0

Adam/v/dense_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_32/bias
y
(Adam/v/dense_32/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_32/bias*
_output_shapes
:*
dtype0

Adam/m/dense_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_32/bias
y
(Adam/m/dense_32/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_32/bias*
_output_shapes
:*
dtype0

Adam/v/dense_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/v/dense_32/kernel

*Adam/v/dense_32/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_32/kernel*
_output_shapes

:*
dtype0

Adam/m/dense_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/m/dense_32/kernel

*Adam/m/dense_32/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_32/kernel*
_output_shapes

:*
dtype0

Adam/v/dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_31/bias
y
(Adam/v/dense_31/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_31/bias*
_output_shapes
:*
dtype0

Adam/m/dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_31/bias
y
(Adam/m/dense_31/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_31/bias*
_output_shapes
:*
dtype0

Adam/v/dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/v/dense_31/kernel

*Adam/v/dense_31/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_31/kernel*
_output_shapes

:2*
dtype0

Adam/m/dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/m/dense_31/kernel

*Adam/m/dense_31/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_31/kernel*
_output_shapes

:2*
dtype0

Adam/v/dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/v/dense_30/bias
y
(Adam/v/dense_30/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_30/bias*
_output_shapes
:2*
dtype0

Adam/m/dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/m/dense_30/bias
y
(Adam/m/dense_30/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_30/bias*
_output_shapes
:2*
dtype0

Adam/v/dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ä2*'
shared_nameAdam/v/dense_30/kernel

*Adam/v/dense_30/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_30/kernel* 
_output_shapes
:
Ä2*
dtype0

Adam/m/dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ä2*'
shared_nameAdam/m/dense_30/kernel

*Adam/m/dense_30/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_30/kernel* 
_output_shapes
:
Ä2*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
{
block5_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:*
dtype0

block5_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock5_conv3/kernel

'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:*
dtype0

block5_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock5_conv2/kernel

'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:*
dtype0
{
block5_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:*
dtype0

block5_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock5_conv1/kernel

'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:*
dtype0

block4_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock4_conv3/kernel

'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:*
dtype0

block4_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock4_conv2/kernel

'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:*
dtype0
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:*
dtype0

block4_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock4_conv1/kernel

'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:*
dtype0
{
block3_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:*
dtype0

block3_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock3_conv3/kernel

'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:*
dtype0
{
block3_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:*
dtype0

block3_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock3_conv2/kernel

'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:*
dtype0
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:*
dtype0

block3_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock3_conv1/kernel

'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:*
dtype0
{
block2_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:*
dtype0

block2_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameblock2_conv2/kernel

'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:*
dtype0
{
block2_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:*
dtype0

block2_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock2_conv1/kernel

'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@*
dtype0
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0

block1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel

'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
z
block1_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0

block1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel

'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0
r
dense_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_32/bias
k
!dense_32/bias/Read/ReadVariableOpReadVariableOpdense_32/bias*
_output_shapes
:*
dtype0
z
dense_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_32/kernel
s
#dense_32/kernel/Read/ReadVariableOpReadVariableOpdense_32/kernel*
_output_shapes

:*
dtype0
r
dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_31/bias
k
!dense_31/bias/Read/ReadVariableOpReadVariableOpdense_31/bias*
_output_shapes
:*
dtype0
z
dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namedense_31/kernel
s
#dense_31/kernel/Read/ReadVariableOpReadVariableOpdense_31/kernel*
_output_shapes

:2*
dtype0
r
dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_30/bias
k
!dense_30/bias/Read/ReadVariableOpReadVariableOpdense_30/bias*
_output_shapes
:2*
dtype0
|
dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ä2* 
shared_namedense_30/kernel
u
#dense_30/kernel/Read/ReadVariableOpReadVariableOpdense_30/kernel* 
_output_shapes
:
Ä2*
dtype0

serving_default_vgg16_inputPlaceholder*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ*
dtype0*&
shape:˙˙˙˙˙˙˙˙˙ŕŕ
Ţ
StatefulPartitionedCallStatefulPartitionedCallserving_default_vgg16_inputblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasdense_30/kerneldense_30/biasdense_31/kerneldense_31/biasdense_32/kerneldense_32/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_102183

NoOpNoOp
Š
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ť¨
value°¨BŹ¨ B¤¨

layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
ĺ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
layer_with_weights-6
layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
 layer_with_weights-11
 layer-16
!layer_with_weights-12
!layer-17
"layer-18
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses*

)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses* 
Ś
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias*
Ľ
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses
=_random_generator* 
Ś
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias*
Ś
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias*
ú
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
Z12
[13
\14
]15
^16
_17
`18
a19
b20
c21
d22
e23
f24
g25
526
627
D28
E29
L30
M31*
.
50
61
D2
E3
L4
M5*
* 
°
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
mtrace_0
ntrace_1
otrace_2
ptrace_3* 
6
qtrace_0
rtrace_1
strace_2
ttrace_3* 
* 

u
_variables
v_iterations
w_learning_rate
x_index_dict
y
_momentums
z_velocities
{_update_step_xla*

|serving_default* 
* 
Ě
}	variables
~trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Nkernel
Obias
!_jit_compiled_convolution_op*
Ď
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Pkernel
Qbias
!_jit_compiled_convolution_op*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Ď
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Rkernel
Sbias
!_jit_compiled_convolution_op*
Ď
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Tkernel
Ubias
!_jit_compiled_convolution_op*

	variables
 trainable_variables
Ąregularization_losses
˘	keras_api
Ł__call__
+¤&call_and_return_all_conditional_losses* 
Ď
Ľ	variables
Śtrainable_variables
§regularization_losses
¨	keras_api
Š__call__
+Ş&call_and_return_all_conditional_losses

Vkernel
Wbias
!Ť_jit_compiled_convolution_op*
Ď
Ź	variables
­trainable_variables
Žregularization_losses
Ż	keras_api
°__call__
+ą&call_and_return_all_conditional_losses

Xkernel
Ybias
!˛_jit_compiled_convolution_op*
Ď
ł	variables
´trainable_variables
ľregularization_losses
ś	keras_api
ˇ__call__
+¸&call_and_return_all_conditional_losses

Zkernel
[bias
!š_jit_compiled_convolution_op*

ş	variables
ťtrainable_variables
źregularization_losses
˝	keras_api
ž__call__
+ż&call_and_return_all_conditional_losses* 
Ď
Ŕ	variables
Átrainable_variables
Âregularization_losses
Ă	keras_api
Ä__call__
+Ĺ&call_and_return_all_conditional_losses

\kernel
]bias
!Ć_jit_compiled_convolution_op*
Ď
Ç	variables
Čtrainable_variables
Éregularization_losses
Ę	keras_api
Ë__call__
+Ě&call_and_return_all_conditional_losses

^kernel
_bias
!Í_jit_compiled_convolution_op*
Ď
Î	variables
Ďtrainable_variables
Đregularization_losses
Ń	keras_api
Ň__call__
+Ó&call_and_return_all_conditional_losses

`kernel
abias
!Ô_jit_compiled_convolution_op*

Ő	variables
Ötrainable_variables
×regularization_losses
Ř	keras_api
Ů__call__
+Ú&call_and_return_all_conditional_losses* 
Ď
Ű	variables
Ütrainable_variables
Ýregularization_losses
Ţ	keras_api
ß__call__
+ŕ&call_and_return_all_conditional_losses

bkernel
cbias
!á_jit_compiled_convolution_op*
Ď
â	variables
ătrainable_variables
äregularization_losses
ĺ	keras_api
ć__call__
+ç&call_and_return_all_conditional_losses

dkernel
ebias
!č_jit_compiled_convolution_op*
Ď
é	variables
ętrainable_variables
ëregularization_losses
ě	keras_api
í__call__
+î&call_and_return_all_conditional_losses

fkernel
gbias
!ď_jit_compiled_convolution_op*

đ	variables
ńtrainable_variables
ňregularization_losses
ó	keras_api
ô__call__
+ő&call_and_return_all_conditional_losses* 
Ę
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
Z12
[13
\14
]15
^16
_17
`18
a19
b20
c21
d22
e23
f24
g25*
* 
* 

önon_trainable_variables
÷layers
řmetrics
 ůlayer_regularization_losses
úlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
:
űtrace_0
ütrace_1
ýtrace_2
ţtrace_3* 
:
˙trace_0
trace_1
trace_2
trace_3* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 

trace_0* 

trace_0* 

50
61*

50
61*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEdense_30/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_30/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses* 

trace_0
trace_1* 

trace_0
trace_1* 
* 

D0
E1*

D0
E1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*

trace_0* 

 trace_0* 
_Y
VARIABLE_VALUEdense_31/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_31/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

L0
M1*

L0
M1*
* 

Ąnon_trainable_variables
˘layers
Łmetrics
 ¤layer_regularization_losses
Ľlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

Śtrace_0* 

§trace_0* 
_Y
VARIABLE_VALUEdense_32/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_32/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock1_conv1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock1_conv1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock1_conv2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock1_conv2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock2_conv1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock2_conv1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock2_conv2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock2_conv2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEblock3_conv1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEblock3_conv1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock3_conv2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock3_conv2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock3_conv3/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock3_conv3/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv1/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv1/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv2/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv2/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock4_conv3/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock4_conv3/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv1/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv1/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv2/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv2/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEblock5_conv3/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEblock5_conv3/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
Ę
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
Z12
[13
\14
]15
^16
_17
`18
a19
b20
c21
d22
e23
f24
g25*
.
0
1
2
3
4
5*

¨0
Š1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
n
v0
Ş1
Ť2
Ź3
­4
Ž5
Ż6
°7
ą8
˛9
ł10
´11
ľ12*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
4
Ş0
Ź1
Ž2
°3
˛4
´5*
4
Ť0
­1
Ż2
ą3
ł4
ľ5*
* 
* 

N0
O1*
* 
* 

śnon_trainable_variables
ˇlayers
¸metrics
 šlayer_regularization_losses
şlayer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

ťtrace_0* 

źtrace_0* 
* 

P0
Q1*
* 
* 

˝non_trainable_variables
žlayers
żmetrics
 Ŕlayer_regularization_losses
Álayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Âtrace_0* 

Ătrace_0* 
* 
* 
* 
* 

Änon_trainable_variables
Ĺlayers
Ćmetrics
 Çlayer_regularization_losses
Člayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Étrace_0* 

Ętrace_0* 

R0
S1*
* 
* 

Ënon_trainable_variables
Ělayers
Ímetrics
 Îlayer_regularization_losses
Ďlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Đtrace_0* 

Ńtrace_0* 
* 

T0
U1*
* 
* 

Ňnon_trainable_variables
Ólayers
Ômetrics
 Őlayer_regularization_losses
Ölayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

×trace_0* 

Řtrace_0* 
* 
* 
* 
* 

Ůnon_trainable_variables
Úlayers
Űmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
	variables
 trainable_variables
Ąregularization_losses
Ł__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses* 

Ţtrace_0* 

ßtrace_0* 

V0
W1*
* 
* 

ŕnon_trainable_variables
álayers
âmetrics
 ălayer_regularization_losses
älayer_metrics
Ľ	variables
Śtrainable_variables
§regularization_losses
Š__call__
+Ş&call_and_return_all_conditional_losses
'Ş"call_and_return_conditional_losses*

ĺtrace_0* 

ćtrace_0* 
* 

X0
Y1*
* 
* 

çnon_trainable_variables
člayers
émetrics
 ęlayer_regularization_losses
ëlayer_metrics
Ź	variables
­trainable_variables
Žregularization_losses
°__call__
+ą&call_and_return_all_conditional_losses
'ą"call_and_return_conditional_losses*

ětrace_0* 

ítrace_0* 
* 

Z0
[1*
* 
* 

înon_trainable_variables
ďlayers
đmetrics
 ńlayer_regularization_losses
ňlayer_metrics
ł	variables
´trainable_variables
ľregularization_losses
ˇ__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses*

ótrace_0* 

ôtrace_0* 
* 
* 
* 
* 

őnon_trainable_variables
ölayers
÷metrics
 řlayer_regularization_losses
ůlayer_metrics
ş	variables
ťtrainable_variables
źregularization_losses
ž__call__
+ż&call_and_return_all_conditional_losses
'ż"call_and_return_conditional_losses* 

útrace_0* 

űtrace_0* 

\0
]1*
* 
* 

ünon_trainable_variables
ýlayers
ţmetrics
 ˙layer_regularization_losses
layer_metrics
Ŕ	variables
Átrainable_variables
Âregularization_losses
Ä__call__
+Ĺ&call_and_return_all_conditional_losses
'Ĺ"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 

^0
_1*
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ç	variables
Čtrainable_variables
Éregularization_losses
Ë__call__
+Ě&call_and_return_all_conditional_losses
'Ě"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 

`0
a1*
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Î	variables
Ďtrainable_variables
Đregularization_losses
Ň__call__
+Ó&call_and_return_all_conditional_losses
'Ó"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ő	variables
Ötrainable_variables
×regularization_losses
Ů__call__
+Ú&call_and_return_all_conditional_losses
'Ú"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

b0
c1*
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ű	variables
Ütrainable_variables
Ýregularization_losses
ß__call__
+ŕ&call_and_return_all_conditional_losses
'ŕ"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 

d0
e1*
* 
* 

non_trainable_variables
 layers
Ąmetrics
 ˘layer_regularization_losses
Łlayer_metrics
â	variables
ătrainable_variables
äregularization_losses
ć__call__
+ç&call_and_return_all_conditional_losses
'ç"call_and_return_conditional_losses*

¤trace_0* 

Ľtrace_0* 
* 

f0
g1*
* 
* 

Śnon_trainable_variables
§layers
¨metrics
 Šlayer_regularization_losses
Şlayer_metrics
é	variables
ętrainable_variables
ëregularization_losses
í__call__
+î&call_and_return_all_conditional_losses
'î"call_and_return_conditional_losses*

Ťtrace_0* 

Źtrace_0* 
* 
* 
* 
* 

­non_trainable_variables
Žlayers
Żmetrics
 °layer_regularization_losses
ąlayer_metrics
đ	variables
ńtrainable_variables
ňregularization_losses
ô__call__
+ő&call_and_return_all_conditional_losses
'ő"call_and_return_conditional_losses* 

˛trace_0* 

łtrace_0* 
Ę
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
Z12
[13
\14
]15
^16
_17
`18
a19
b20
c21
d22
e23
f24
g25*

0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
 16
!17
"18*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
´	variables
ľ	keras_api

śtotal

ˇcount*
M
¸	variables
š	keras_api

ştotal

ťcount
ź
_fn_kwargs*
a[
VARIABLE_VALUEAdam/m/dense_30/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_30/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_30/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_30/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_31/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_31/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_31/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_31/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_32/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_32/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_32/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_32/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*

N0
O1*
* 
* 
* 
* 
* 
* 

P0
Q1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

R0
S1*
* 
* 
* 
* 
* 
* 

T0
U1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

V0
W1*
* 
* 
* 
* 
* 
* 

X0
Y1*
* 
* 
* 
* 
* 
* 

Z0
[1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

\0
]1*
* 
* 
* 
* 
* 
* 

^0
_1*
* 
* 
* 
* 
* 
* 

`0
a1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

b0
c1*
* 
* 
* 
* 
* 
* 

d0
e1*
* 
* 
* 
* 
* 
* 

f0
g1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

ś0
ˇ1*

´	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ş0
ť1*

¸	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ë
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_30/kernel/Read/ReadVariableOp!dense_30/bias/Read/ReadVariableOp#dense_31/kernel/Read/ReadVariableOp!dense_31/bias/Read/ReadVariableOp#dense_32/kernel/Read/ReadVariableOp!dense_32/bias/Read/ReadVariableOp'block1_conv1/kernel/Read/ReadVariableOp%block1_conv1/bias/Read/ReadVariableOp'block1_conv2/kernel/Read/ReadVariableOp%block1_conv2/bias/Read/ReadVariableOp'block2_conv1/kernel/Read/ReadVariableOp%block2_conv1/bias/Read/ReadVariableOp'block2_conv2/kernel/Read/ReadVariableOp%block2_conv2/bias/Read/ReadVariableOp'block3_conv1/kernel/Read/ReadVariableOp%block3_conv1/bias/Read/ReadVariableOp'block3_conv2/kernel/Read/ReadVariableOp%block3_conv2/bias/Read/ReadVariableOp'block3_conv3/kernel/Read/ReadVariableOp%block3_conv3/bias/Read/ReadVariableOp'block4_conv1/kernel/Read/ReadVariableOp%block4_conv1/bias/Read/ReadVariableOp'block4_conv2/kernel/Read/ReadVariableOp%block4_conv2/bias/Read/ReadVariableOp'block4_conv3/kernel/Read/ReadVariableOp%block4_conv3/bias/Read/ReadVariableOp'block5_conv1/kernel/Read/ReadVariableOp%block5_conv1/bias/Read/ReadVariableOp'block5_conv2/kernel/Read/ReadVariableOp%block5_conv2/bias/Read/ReadVariableOp'block5_conv3/kernel/Read/ReadVariableOp%block5_conv3/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp*Adam/m/dense_30/kernel/Read/ReadVariableOp*Adam/v/dense_30/kernel/Read/ReadVariableOp(Adam/m/dense_30/bias/Read/ReadVariableOp(Adam/v/dense_30/bias/Read/ReadVariableOp*Adam/m/dense_31/kernel/Read/ReadVariableOp*Adam/v/dense_31/kernel/Read/ReadVariableOp(Adam/m/dense_31/bias/Read/ReadVariableOp(Adam/v/dense_31/bias/Read/ReadVariableOp*Adam/m/dense_32/kernel/Read/ReadVariableOp*Adam/v/dense_32/kernel/Read/ReadVariableOp(Adam/m/dense_32/bias/Read/ReadVariableOp(Adam/v/dense_32/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*?
Tin8
624	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_103471
ţ	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_30/kerneldense_30/biasdense_31/kerneldense_31/biasdense_32/kerneldense_32/biasblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/bias	iterationlearning_rateAdam/m/dense_30/kernelAdam/v/dense_30/kernelAdam/m/dense_30/biasAdam/v/dense_30/biasAdam/m/dense_31/kernelAdam/v/dense_31/kernelAdam/m/dense_31/biasAdam/v/dense_31/biasAdam/m/dense_32/kernelAdam/v/dense_32/kernelAdam/m/dense_32/biasAdam/v/dense_32/biastotal_1count_1totalcount*>
Tin7
523*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_103631č
Ł

÷
D__inference_dense_30_layer_call_and_return_conditional_losses_102921

inputs2
matmul_readvariableop_resource:
Ä2-
biasadd_readvariableop_resource:2
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ä2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙Ä: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä
 
_user_specified_nameinputs
řŘ
ˇ#
!__inference__wrapped_model_100556
vgg16_inputY
?sequential_18_vgg16_block1_conv1_conv2d_readvariableop_resource:@N
@sequential_18_vgg16_block1_conv1_biasadd_readvariableop_resource:@Y
?sequential_18_vgg16_block1_conv2_conv2d_readvariableop_resource:@@N
@sequential_18_vgg16_block1_conv2_biasadd_readvariableop_resource:@Z
?sequential_18_vgg16_block2_conv1_conv2d_readvariableop_resource:@O
@sequential_18_vgg16_block2_conv1_biasadd_readvariableop_resource:	[
?sequential_18_vgg16_block2_conv2_conv2d_readvariableop_resource:O
@sequential_18_vgg16_block2_conv2_biasadd_readvariableop_resource:	[
?sequential_18_vgg16_block3_conv1_conv2d_readvariableop_resource:O
@sequential_18_vgg16_block3_conv1_biasadd_readvariableop_resource:	[
?sequential_18_vgg16_block3_conv2_conv2d_readvariableop_resource:O
@sequential_18_vgg16_block3_conv2_biasadd_readvariableop_resource:	[
?sequential_18_vgg16_block3_conv3_conv2d_readvariableop_resource:O
@sequential_18_vgg16_block3_conv3_biasadd_readvariableop_resource:	[
?sequential_18_vgg16_block4_conv1_conv2d_readvariableop_resource:O
@sequential_18_vgg16_block4_conv1_biasadd_readvariableop_resource:	[
?sequential_18_vgg16_block4_conv2_conv2d_readvariableop_resource:O
@sequential_18_vgg16_block4_conv2_biasadd_readvariableop_resource:	[
?sequential_18_vgg16_block4_conv3_conv2d_readvariableop_resource:O
@sequential_18_vgg16_block4_conv3_biasadd_readvariableop_resource:	[
?sequential_18_vgg16_block5_conv1_conv2d_readvariableop_resource:O
@sequential_18_vgg16_block5_conv1_biasadd_readvariableop_resource:	[
?sequential_18_vgg16_block5_conv2_conv2d_readvariableop_resource:O
@sequential_18_vgg16_block5_conv2_biasadd_readvariableop_resource:	[
?sequential_18_vgg16_block5_conv3_conv2d_readvariableop_resource:O
@sequential_18_vgg16_block5_conv3_biasadd_readvariableop_resource:	I
5sequential_18_dense_30_matmul_readvariableop_resource:
Ä2D
6sequential_18_dense_30_biasadd_readvariableop_resource:2G
5sequential_18_dense_31_matmul_readvariableop_resource:2D
6sequential_18_dense_31_biasadd_readvariableop_resource:G
5sequential_18_dense_32_matmul_readvariableop_resource:D
6sequential_18_dense_32_biasadd_readvariableop_resource:
identity˘-sequential_18/dense_30/BiasAdd/ReadVariableOp˘,sequential_18/dense_30/MatMul/ReadVariableOp˘-sequential_18/dense_31/BiasAdd/ReadVariableOp˘,sequential_18/dense_31/MatMul/ReadVariableOp˘-sequential_18/dense_32/BiasAdd/ReadVariableOp˘,sequential_18/dense_32/MatMul/ReadVariableOp˘7sequential_18/vgg16/block1_conv1/BiasAdd/ReadVariableOp˘6sequential_18/vgg16/block1_conv1/Conv2D/ReadVariableOp˘7sequential_18/vgg16/block1_conv2/BiasAdd/ReadVariableOp˘6sequential_18/vgg16/block1_conv2/Conv2D/ReadVariableOp˘7sequential_18/vgg16/block2_conv1/BiasAdd/ReadVariableOp˘6sequential_18/vgg16/block2_conv1/Conv2D/ReadVariableOp˘7sequential_18/vgg16/block2_conv2/BiasAdd/ReadVariableOp˘6sequential_18/vgg16/block2_conv2/Conv2D/ReadVariableOp˘7sequential_18/vgg16/block3_conv1/BiasAdd/ReadVariableOp˘6sequential_18/vgg16/block3_conv1/Conv2D/ReadVariableOp˘7sequential_18/vgg16/block3_conv2/BiasAdd/ReadVariableOp˘6sequential_18/vgg16/block3_conv2/Conv2D/ReadVariableOp˘7sequential_18/vgg16/block3_conv3/BiasAdd/ReadVariableOp˘6sequential_18/vgg16/block3_conv3/Conv2D/ReadVariableOp˘7sequential_18/vgg16/block4_conv1/BiasAdd/ReadVariableOp˘6sequential_18/vgg16/block4_conv1/Conv2D/ReadVariableOp˘7sequential_18/vgg16/block4_conv2/BiasAdd/ReadVariableOp˘6sequential_18/vgg16/block4_conv2/Conv2D/ReadVariableOp˘7sequential_18/vgg16/block4_conv3/BiasAdd/ReadVariableOp˘6sequential_18/vgg16/block4_conv3/Conv2D/ReadVariableOp˘7sequential_18/vgg16/block5_conv1/BiasAdd/ReadVariableOp˘6sequential_18/vgg16/block5_conv1/Conv2D/ReadVariableOp˘7sequential_18/vgg16/block5_conv2/BiasAdd/ReadVariableOp˘6sequential_18/vgg16/block5_conv2/Conv2D/ReadVariableOp˘7sequential_18/vgg16/block5_conv3/BiasAdd/ReadVariableOp˘6sequential_18/vgg16/block5_conv3/Conv2D/ReadVariableOpž
6sequential_18/vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp?sequential_18_vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0â
'sequential_18/vgg16/block1_conv1/Conv2DConv2Dvgg16_input>sequential_18/vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*
paddingSAME*
strides
´
7sequential_18/vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp@sequential_18_vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0â
(sequential_18/vgg16/block1_conv1/BiasAddBiasAdd0sequential_18/vgg16/block1_conv1/Conv2D:output:0?sequential_18/vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@
%sequential_18/vgg16/block1_conv1/ReluRelu1sequential_18/vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@ž
6sequential_18/vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp?sequential_18_vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
'sequential_18/vgg16/block1_conv2/Conv2DConv2D3sequential_18/vgg16/block1_conv1/Relu:activations:0>sequential_18/vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*
paddingSAME*
strides
´
7sequential_18/vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp@sequential_18_vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0â
(sequential_18/vgg16/block1_conv2/BiasAddBiasAdd0sequential_18/vgg16/block1_conv2/Conv2D:output:0?sequential_18/vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@
%sequential_18/vgg16/block1_conv2/ReluRelu1sequential_18/vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@Ô
'sequential_18/vgg16/block1_pool/MaxPoolMaxPool3sequential_18/vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙pp@*
ksize
*
paddingVALID*
strides
ż
6sequential_18/vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp?sequential_18_vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
'sequential_18/vgg16/block2_conv1/Conv2DConv2D0sequential_18/vgg16/block1_pool/MaxPool:output:0>sequential_18/vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*
paddingSAME*
strides
ľ
7sequential_18/vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp@sequential_18_vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_18/vgg16/block2_conv1/BiasAddBiasAdd0sequential_18/vgg16/block2_conv1/Conv2D:output:0?sequential_18/vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp
%sequential_18/vgg16/block2_conv1/ReluRelu1sequential_18/vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ppŔ
6sequential_18/vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp?sequential_18_vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_18/vgg16/block2_conv2/Conv2DConv2D3sequential_18/vgg16/block2_conv1/Relu:activations:0>sequential_18/vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*
paddingSAME*
strides
ľ
7sequential_18/vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp@sequential_18_vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_18/vgg16/block2_conv2/BiasAddBiasAdd0sequential_18/vgg16/block2_conv2/Conv2D:output:0?sequential_18/vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp
%sequential_18/vgg16/block2_conv2/ReluRelu1sequential_18/vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ppŐ
'sequential_18/vgg16/block2_pool/MaxPoolMaxPool3sequential_18/vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
ksize
*
paddingVALID*
strides
Ŕ
6sequential_18/vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp?sequential_18_vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_18/vgg16/block3_conv1/Conv2DConv2D0sequential_18/vgg16/block2_pool/MaxPool:output:0>sequential_18/vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides
ľ
7sequential_18/vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp@sequential_18_vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_18/vgg16/block3_conv1/BiasAddBiasAdd0sequential_18/vgg16/block3_conv1/Conv2D:output:0?sequential_18/vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
%sequential_18/vgg16/block3_conv1/ReluRelu1sequential_18/vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88Ŕ
6sequential_18/vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp?sequential_18_vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_18/vgg16/block3_conv2/Conv2DConv2D3sequential_18/vgg16/block3_conv1/Relu:activations:0>sequential_18/vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides
ľ
7sequential_18/vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp@sequential_18_vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_18/vgg16/block3_conv2/BiasAddBiasAdd0sequential_18/vgg16/block3_conv2/Conv2D:output:0?sequential_18/vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
%sequential_18/vgg16/block3_conv2/ReluRelu1sequential_18/vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88Ŕ
6sequential_18/vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp?sequential_18_vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_18/vgg16/block3_conv3/Conv2DConv2D3sequential_18/vgg16/block3_conv2/Relu:activations:0>sequential_18/vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides
ľ
7sequential_18/vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp@sequential_18_vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_18/vgg16/block3_conv3/BiasAddBiasAdd0sequential_18/vgg16/block3_conv3/Conv2D:output:0?sequential_18/vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
%sequential_18/vgg16/block3_conv3/ReluRelu1sequential_18/vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88Ő
'sequential_18/vgg16/block3_pool/MaxPoolMaxPool3sequential_18/vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
Ŕ
6sequential_18/vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp?sequential_18_vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_18/vgg16/block4_conv1/Conv2DConv2D0sequential_18/vgg16/block3_pool/MaxPool:output:0>sequential_18/vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
ľ
7sequential_18/vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp@sequential_18_vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_18/vgg16/block4_conv1/BiasAddBiasAdd0sequential_18/vgg16/block4_conv1/Conv2D:output:0?sequential_18/vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
%sequential_18/vgg16/block4_conv1/ReluRelu1sequential_18/vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
6sequential_18/vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp?sequential_18_vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_18/vgg16/block4_conv2/Conv2DConv2D3sequential_18/vgg16/block4_conv1/Relu:activations:0>sequential_18/vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
ľ
7sequential_18/vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp@sequential_18_vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_18/vgg16/block4_conv2/BiasAddBiasAdd0sequential_18/vgg16/block4_conv2/Conv2D:output:0?sequential_18/vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
%sequential_18/vgg16/block4_conv2/ReluRelu1sequential_18/vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
6sequential_18/vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp?sequential_18_vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_18/vgg16/block4_conv3/Conv2DConv2D3sequential_18/vgg16/block4_conv2/Relu:activations:0>sequential_18/vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
ľ
7sequential_18/vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp@sequential_18_vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_18/vgg16/block4_conv3/BiasAddBiasAdd0sequential_18/vgg16/block4_conv3/Conv2D:output:0?sequential_18/vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
%sequential_18/vgg16/block4_conv3/ReluRelu1sequential_18/vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Ő
'sequential_18/vgg16/block4_pool/MaxPoolMaxPool3sequential_18/vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
Ŕ
6sequential_18/vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp?sequential_18_vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_18/vgg16/block5_conv1/Conv2DConv2D0sequential_18/vgg16/block4_pool/MaxPool:output:0>sequential_18/vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
ľ
7sequential_18/vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp@sequential_18_vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_18/vgg16/block5_conv1/BiasAddBiasAdd0sequential_18/vgg16/block5_conv1/Conv2D:output:0?sequential_18/vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
%sequential_18/vgg16/block5_conv1/ReluRelu1sequential_18/vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
6sequential_18/vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp?sequential_18_vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_18/vgg16/block5_conv2/Conv2DConv2D3sequential_18/vgg16/block5_conv1/Relu:activations:0>sequential_18/vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
ľ
7sequential_18/vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp@sequential_18_vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_18/vgg16/block5_conv2/BiasAddBiasAdd0sequential_18/vgg16/block5_conv2/Conv2D:output:0?sequential_18/vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
%sequential_18/vgg16/block5_conv2/ReluRelu1sequential_18/vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ
6sequential_18/vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp?sequential_18_vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
'sequential_18/vgg16/block5_conv3/Conv2DConv2D3sequential_18/vgg16/block5_conv2/Relu:activations:0>sequential_18/vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
ľ
7sequential_18/vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp@sequential_18_vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0á
(sequential_18/vgg16/block5_conv3/BiasAddBiasAdd0sequential_18/vgg16/block5_conv3/Conv2D:output:0?sequential_18/vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
%sequential_18/vgg16/block5_conv3/ReluRelu1sequential_18/vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Ő
'sequential_18/vgg16/block5_pool/MaxPoolMaxPool3sequential_18/vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
o
sequential_18/flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ b  ş
 sequential_18/flatten_10/ReshapeReshape0sequential_18/vgg16/block5_pool/MaxPool:output:0'sequential_18/flatten_10/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä¤
,sequential_18/dense_30/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_30_matmul_readvariableop_resource* 
_output_shapes
:
Ä2*
dtype0ş
sequential_18/dense_30/MatMulMatMul)sequential_18/flatten_10/Reshape:output:04sequential_18/dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2 
-sequential_18/dense_30/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_30_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0ť
sequential_18/dense_30/BiasAddBiasAdd'sequential_18/dense_30/MatMul:product:05sequential_18/dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2~
sequential_18/dense_30/ReluRelu'sequential_18/dense_30/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
!sequential_18/dropout_11/IdentityIdentity)sequential_18/dense_30/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2˘
,sequential_18/dense_31/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_31_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0ť
sequential_18/dense_31/MatMulMatMul*sequential_18/dropout_11/Identity:output:04sequential_18/dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
-sequential_18/dense_31/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ť
sequential_18/dense_31/BiasAddBiasAdd'sequential_18/dense_31/MatMul:product:05sequential_18/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
sequential_18/dense_31/ReluRelu'sequential_18/dense_31/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
,sequential_18/dense_32/MatMul/ReadVariableOpReadVariableOp5sequential_18_dense_32_matmul_readvariableop_resource*
_output_shapes

:*
dtype0ş
sequential_18/dense_32/MatMulMatMul)sequential_18/dense_31/Relu:activations:04sequential_18/dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
-sequential_18/dense_32/BiasAdd/ReadVariableOpReadVariableOp6sequential_18_dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ť
sequential_18/dense_32/BiasAddBiasAdd'sequential_18/dense_32/MatMul:product:05sequential_18/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
sequential_18/dense_32/SoftmaxSoftmax'sequential_18/dense_32/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
IdentityIdentity(sequential_18/dense_32/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ş
NoOpNoOp.^sequential_18/dense_30/BiasAdd/ReadVariableOp-^sequential_18/dense_30/MatMul/ReadVariableOp.^sequential_18/dense_31/BiasAdd/ReadVariableOp-^sequential_18/dense_31/MatMul/ReadVariableOp.^sequential_18/dense_32/BiasAdd/ReadVariableOp-^sequential_18/dense_32/MatMul/ReadVariableOp8^sequential_18/vgg16/block1_conv1/BiasAdd/ReadVariableOp7^sequential_18/vgg16/block1_conv1/Conv2D/ReadVariableOp8^sequential_18/vgg16/block1_conv2/BiasAdd/ReadVariableOp7^sequential_18/vgg16/block1_conv2/Conv2D/ReadVariableOp8^sequential_18/vgg16/block2_conv1/BiasAdd/ReadVariableOp7^sequential_18/vgg16/block2_conv1/Conv2D/ReadVariableOp8^sequential_18/vgg16/block2_conv2/BiasAdd/ReadVariableOp7^sequential_18/vgg16/block2_conv2/Conv2D/ReadVariableOp8^sequential_18/vgg16/block3_conv1/BiasAdd/ReadVariableOp7^sequential_18/vgg16/block3_conv1/Conv2D/ReadVariableOp8^sequential_18/vgg16/block3_conv2/BiasAdd/ReadVariableOp7^sequential_18/vgg16/block3_conv2/Conv2D/ReadVariableOp8^sequential_18/vgg16/block3_conv3/BiasAdd/ReadVariableOp7^sequential_18/vgg16/block3_conv3/Conv2D/ReadVariableOp8^sequential_18/vgg16/block4_conv1/BiasAdd/ReadVariableOp7^sequential_18/vgg16/block4_conv1/Conv2D/ReadVariableOp8^sequential_18/vgg16/block4_conv2/BiasAdd/ReadVariableOp7^sequential_18/vgg16/block4_conv2/Conv2D/ReadVariableOp8^sequential_18/vgg16/block4_conv3/BiasAdd/ReadVariableOp7^sequential_18/vgg16/block4_conv3/Conv2D/ReadVariableOp8^sequential_18/vgg16/block5_conv1/BiasAdd/ReadVariableOp7^sequential_18/vgg16/block5_conv1/Conv2D/ReadVariableOp8^sequential_18/vgg16/block5_conv2/BiasAdd/ReadVariableOp7^sequential_18/vgg16/block5_conv2/Conv2D/ReadVariableOp8^sequential_18/vgg16/block5_conv3/BiasAdd/ReadVariableOp7^sequential_18/vgg16/block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-sequential_18/dense_30/BiasAdd/ReadVariableOp-sequential_18/dense_30/BiasAdd/ReadVariableOp2\
,sequential_18/dense_30/MatMul/ReadVariableOp,sequential_18/dense_30/MatMul/ReadVariableOp2^
-sequential_18/dense_31/BiasAdd/ReadVariableOp-sequential_18/dense_31/BiasAdd/ReadVariableOp2\
,sequential_18/dense_31/MatMul/ReadVariableOp,sequential_18/dense_31/MatMul/ReadVariableOp2^
-sequential_18/dense_32/BiasAdd/ReadVariableOp-sequential_18/dense_32/BiasAdd/ReadVariableOp2\
,sequential_18/dense_32/MatMul/ReadVariableOp,sequential_18/dense_32/MatMul/ReadVariableOp2r
7sequential_18/vgg16/block1_conv1/BiasAdd/ReadVariableOp7sequential_18/vgg16/block1_conv1/BiasAdd/ReadVariableOp2p
6sequential_18/vgg16/block1_conv1/Conv2D/ReadVariableOp6sequential_18/vgg16/block1_conv1/Conv2D/ReadVariableOp2r
7sequential_18/vgg16/block1_conv2/BiasAdd/ReadVariableOp7sequential_18/vgg16/block1_conv2/BiasAdd/ReadVariableOp2p
6sequential_18/vgg16/block1_conv2/Conv2D/ReadVariableOp6sequential_18/vgg16/block1_conv2/Conv2D/ReadVariableOp2r
7sequential_18/vgg16/block2_conv1/BiasAdd/ReadVariableOp7sequential_18/vgg16/block2_conv1/BiasAdd/ReadVariableOp2p
6sequential_18/vgg16/block2_conv1/Conv2D/ReadVariableOp6sequential_18/vgg16/block2_conv1/Conv2D/ReadVariableOp2r
7sequential_18/vgg16/block2_conv2/BiasAdd/ReadVariableOp7sequential_18/vgg16/block2_conv2/BiasAdd/ReadVariableOp2p
6sequential_18/vgg16/block2_conv2/Conv2D/ReadVariableOp6sequential_18/vgg16/block2_conv2/Conv2D/ReadVariableOp2r
7sequential_18/vgg16/block3_conv1/BiasAdd/ReadVariableOp7sequential_18/vgg16/block3_conv1/BiasAdd/ReadVariableOp2p
6sequential_18/vgg16/block3_conv1/Conv2D/ReadVariableOp6sequential_18/vgg16/block3_conv1/Conv2D/ReadVariableOp2r
7sequential_18/vgg16/block3_conv2/BiasAdd/ReadVariableOp7sequential_18/vgg16/block3_conv2/BiasAdd/ReadVariableOp2p
6sequential_18/vgg16/block3_conv2/Conv2D/ReadVariableOp6sequential_18/vgg16/block3_conv2/Conv2D/ReadVariableOp2r
7sequential_18/vgg16/block3_conv3/BiasAdd/ReadVariableOp7sequential_18/vgg16/block3_conv3/BiasAdd/ReadVariableOp2p
6sequential_18/vgg16/block3_conv3/Conv2D/ReadVariableOp6sequential_18/vgg16/block3_conv3/Conv2D/ReadVariableOp2r
7sequential_18/vgg16/block4_conv1/BiasAdd/ReadVariableOp7sequential_18/vgg16/block4_conv1/BiasAdd/ReadVariableOp2p
6sequential_18/vgg16/block4_conv1/Conv2D/ReadVariableOp6sequential_18/vgg16/block4_conv1/Conv2D/ReadVariableOp2r
7sequential_18/vgg16/block4_conv2/BiasAdd/ReadVariableOp7sequential_18/vgg16/block4_conv2/BiasAdd/ReadVariableOp2p
6sequential_18/vgg16/block4_conv2/Conv2D/ReadVariableOp6sequential_18/vgg16/block4_conv2/Conv2D/ReadVariableOp2r
7sequential_18/vgg16/block4_conv3/BiasAdd/ReadVariableOp7sequential_18/vgg16/block4_conv3/BiasAdd/ReadVariableOp2p
6sequential_18/vgg16/block4_conv3/Conv2D/ReadVariableOp6sequential_18/vgg16/block4_conv3/Conv2D/ReadVariableOp2r
7sequential_18/vgg16/block5_conv1/BiasAdd/ReadVariableOp7sequential_18/vgg16/block5_conv1/BiasAdd/ReadVariableOp2p
6sequential_18/vgg16/block5_conv1/Conv2D/ReadVariableOp6sequential_18/vgg16/block5_conv1/Conv2D/ReadVariableOp2r
7sequential_18/vgg16/block5_conv2/BiasAdd/ReadVariableOp7sequential_18/vgg16/block5_conv2/BiasAdd/ReadVariableOp2p
6sequential_18/vgg16/block5_conv2/Conv2D/ReadVariableOp6sequential_18/vgg16/block5_conv2/Conv2D/ReadVariableOp2r
7sequential_18/vgg16/block5_conv3/BiasAdd/ReadVariableOp7sequential_18/vgg16/block5_conv3/BiasAdd/ReadVariableOp2p
6sequential_18/vgg16/block5_conv3/Conv2D/ReadVariableOp6sequential_18/vgg16/block5_conv3/Conv2D/ReadVariableOp:^ Z
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
%
_user_specified_namevgg16_input
ź&
Ň

I__inference_sequential_18_layer_call_and_return_conditional_losses_102036
vgg16_input&
vgg16_101965:@
vgg16_101967:@&
vgg16_101969:@@
vgg16_101971:@'
vgg16_101973:@
vgg16_101975:	(
vgg16_101977:
vgg16_101979:	(
vgg16_101981:
vgg16_101983:	(
vgg16_101985:
vgg16_101987:	(
vgg16_101989:
vgg16_101991:	(
vgg16_101993:
vgg16_101995:	(
vgg16_101997:
vgg16_101999:	(
vgg16_102001:
vgg16_102003:	(
vgg16_102005:
vgg16_102007:	(
vgg16_102009:
vgg16_102011:	(
vgg16_102013:
vgg16_102015:	#
dense_30_102019:
Ä2
dense_30_102021:2!
dense_31_102025:2
dense_31_102027:!
dense_32_102030:
dense_32_102032:
identity˘ dense_30/StatefulPartitionedCall˘ dense_31/StatefulPartitionedCall˘ dense_32/StatefulPartitionedCall˘vgg16/StatefulPartitionedCallň
vgg16/StatefulPartitionedCallStatefulPartitionedCallvgg16_inputvgg16_101965vgg16_101967vgg16_101969vgg16_101971vgg16_101973vgg16_101975vgg16_101977vgg16_101979vgg16_101981vgg16_101983vgg16_101985vgg16_101987vgg16_101989vgg16_101991vgg16_101993vgg16_101995vgg16_101997vgg16_101999vgg16_102001vgg16_102003vgg16_102005vgg16_102007vgg16_102009vgg16_102011vgg16_102013vgg16_102015*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_vgg16_layer_call_and_return_conditional_losses_100850Ţ
flatten_10/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_101494
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_30_102019dense_30_102021*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_101507ß
dropout_11/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_101518
 dense_31/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_31_102025dense_31_102027*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_101531
 dense_32/StatefulPartitionedCallStatefulPartitionedCall)dense_31/StatefulPartitionedCall:output:0dense_32_102030dense_32_102032*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_101548x
IdentityIdentity)dense_32/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ď
NoOpNoOp!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:^ Z
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
%
_user_specified_namevgg16_input


H__inference_block4_conv2_layer_call_and_return_conditional_losses_100773

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
°
H
,__inference_block3_pool_layer_call_fn_103153

inputs
identityŐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_pool_layer_call_and_return_conditional_losses_100589
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ä°
Ú
I__inference_sequential_18_layer_call_and_return_conditional_losses_102445

inputsK
1vgg16_block1_conv1_conv2d_readvariableop_resource:@@
2vgg16_block1_conv1_biasadd_readvariableop_resource:@K
1vgg16_block1_conv2_conv2d_readvariableop_resource:@@@
2vgg16_block1_conv2_biasadd_readvariableop_resource:@L
1vgg16_block2_conv1_conv2d_readvariableop_resource:@A
2vgg16_block2_conv1_biasadd_readvariableop_resource:	M
1vgg16_block2_conv2_conv2d_readvariableop_resource:A
2vgg16_block2_conv2_biasadd_readvariableop_resource:	M
1vgg16_block3_conv1_conv2d_readvariableop_resource:A
2vgg16_block3_conv1_biasadd_readvariableop_resource:	M
1vgg16_block3_conv2_conv2d_readvariableop_resource:A
2vgg16_block3_conv2_biasadd_readvariableop_resource:	M
1vgg16_block3_conv3_conv2d_readvariableop_resource:A
2vgg16_block3_conv3_biasadd_readvariableop_resource:	M
1vgg16_block4_conv1_conv2d_readvariableop_resource:A
2vgg16_block4_conv1_biasadd_readvariableop_resource:	M
1vgg16_block4_conv2_conv2d_readvariableop_resource:A
2vgg16_block4_conv2_biasadd_readvariableop_resource:	M
1vgg16_block4_conv3_conv2d_readvariableop_resource:A
2vgg16_block4_conv3_biasadd_readvariableop_resource:	M
1vgg16_block5_conv1_conv2d_readvariableop_resource:A
2vgg16_block5_conv1_biasadd_readvariableop_resource:	M
1vgg16_block5_conv2_conv2d_readvariableop_resource:A
2vgg16_block5_conv2_biasadd_readvariableop_resource:	M
1vgg16_block5_conv3_conv2d_readvariableop_resource:A
2vgg16_block5_conv3_biasadd_readvariableop_resource:	;
'dense_30_matmul_readvariableop_resource:
Ä26
(dense_30_biasadd_readvariableop_resource:29
'dense_31_matmul_readvariableop_resource:26
(dense_31_biasadd_readvariableop_resource:9
'dense_32_matmul_readvariableop_resource:6
(dense_32_biasadd_readvariableop_resource:
identity˘dense_30/BiasAdd/ReadVariableOp˘dense_30/MatMul/ReadVariableOp˘dense_31/BiasAdd/ReadVariableOp˘dense_31/MatMul/ReadVariableOp˘dense_32/BiasAdd/ReadVariableOp˘dense_32/MatMul/ReadVariableOp˘)vgg16/block1_conv1/BiasAdd/ReadVariableOp˘(vgg16/block1_conv1/Conv2D/ReadVariableOp˘)vgg16/block1_conv2/BiasAdd/ReadVariableOp˘(vgg16/block1_conv2/Conv2D/ReadVariableOp˘)vgg16/block2_conv1/BiasAdd/ReadVariableOp˘(vgg16/block2_conv1/Conv2D/ReadVariableOp˘)vgg16/block2_conv2/BiasAdd/ReadVariableOp˘(vgg16/block2_conv2/Conv2D/ReadVariableOp˘)vgg16/block3_conv1/BiasAdd/ReadVariableOp˘(vgg16/block3_conv1/Conv2D/ReadVariableOp˘)vgg16/block3_conv2/BiasAdd/ReadVariableOp˘(vgg16/block3_conv2/Conv2D/ReadVariableOp˘)vgg16/block3_conv3/BiasAdd/ReadVariableOp˘(vgg16/block3_conv3/Conv2D/ReadVariableOp˘)vgg16/block4_conv1/BiasAdd/ReadVariableOp˘(vgg16/block4_conv1/Conv2D/ReadVariableOp˘)vgg16/block4_conv2/BiasAdd/ReadVariableOp˘(vgg16/block4_conv2/Conv2D/ReadVariableOp˘)vgg16/block4_conv3/BiasAdd/ReadVariableOp˘(vgg16/block4_conv3/Conv2D/ReadVariableOp˘)vgg16/block5_conv1/BiasAdd/ReadVariableOp˘(vgg16/block5_conv1/Conv2D/ReadVariableOp˘)vgg16/block5_conv2/BiasAdd/ReadVariableOp˘(vgg16/block5_conv2/Conv2D/ReadVariableOp˘)vgg16/block5_conv3/BiasAdd/ReadVariableOp˘(vgg16/block5_conv3/Conv2D/ReadVariableOp˘
(vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Á
vgg16/block1_conv1/Conv2DConv2Dinputs0vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*
paddingSAME*
strides

)vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¸
vgg16/block1_conv1/BiasAddBiasAdd"vgg16/block1_conv1/Conv2D:output:01vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@
vgg16/block1_conv1/ReluRelu#vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@˘
(vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ŕ
vgg16/block1_conv2/Conv2DConv2D%vgg16/block1_conv1/Relu:activations:00vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*
paddingSAME*
strides

)vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¸
vgg16/block1_conv2/BiasAddBiasAdd"vgg16/block1_conv2/Conv2D:output:01vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@
vgg16/block1_conv2/ReluRelu#vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@¸
vgg16/block1_pool/MaxPoolMaxPool%vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙pp@*
ksize
*
paddingVALID*
strides
Ł
(vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ü
vgg16/block2_conv1/Conv2DConv2D"vgg16/block1_pool/MaxPool:output:00vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*
paddingSAME*
strides

)vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block2_conv1/BiasAddBiasAdd"vgg16/block2_conv1/Conv2D:output:01vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp
vgg16/block2_conv1/ReluRelu#vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp¤
(vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block2_conv2/Conv2DConv2D%vgg16/block2_conv1/Relu:activations:00vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*
paddingSAME*
strides

)vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block2_conv2/BiasAddBiasAdd"vgg16/block2_conv2/Conv2D:output:01vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp
vgg16/block2_conv2/ReluRelu#vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ppš
vgg16/block2_pool/MaxPoolMaxPool%vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
ksize
*
paddingVALID*
strides
¤
(vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ü
vgg16/block3_conv1/Conv2DConv2D"vgg16/block2_pool/MaxPool:output:00vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides

)vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block3_conv1/BiasAddBiasAdd"vgg16/block3_conv1/Conv2D:output:01vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
vgg16/block3_conv1/ReluRelu#vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88¤
(vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block3_conv2/Conv2DConv2D%vgg16/block3_conv1/Relu:activations:00vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides

)vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block3_conv2/BiasAddBiasAdd"vgg16/block3_conv2/Conv2D:output:01vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
vgg16/block3_conv2/ReluRelu#vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88¤
(vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block3_conv3/Conv2DConv2D%vgg16/block3_conv2/Relu:activations:00vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides

)vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block3_conv3/BiasAddBiasAdd"vgg16/block3_conv3/Conv2D:output:01vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
vgg16/block3_conv3/ReluRelu#vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88š
vgg16/block3_pool/MaxPoolMaxPool%vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
¤
(vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ü
vgg16/block4_conv1/Conv2DConv2D"vgg16/block3_pool/MaxPool:output:00vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

)vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block4_conv1/BiasAddBiasAdd"vgg16/block4_conv1/Conv2D:output:01vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
vgg16/block4_conv1/ReluRelu#vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
(vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block4_conv2/Conv2DConv2D%vgg16/block4_conv1/Relu:activations:00vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

)vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block4_conv2/BiasAddBiasAdd"vgg16/block4_conv2/Conv2D:output:01vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
vgg16/block4_conv2/ReluRelu#vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
(vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block4_conv3/Conv2DConv2D%vgg16/block4_conv2/Relu:activations:00vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

)vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block4_conv3/BiasAddBiasAdd"vgg16/block4_conv3/Conv2D:output:01vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
vgg16/block4_conv3/ReluRelu#vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙š
vgg16/block4_pool/MaxPoolMaxPool%vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
¤
(vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ü
vgg16/block5_conv1/Conv2DConv2D"vgg16/block4_pool/MaxPool:output:00vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

)vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block5_conv1/BiasAddBiasAdd"vgg16/block5_conv1/Conv2D:output:01vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
vgg16/block5_conv1/ReluRelu#vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
(vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block5_conv2/Conv2DConv2D%vgg16/block5_conv1/Relu:activations:00vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

)vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block5_conv2/BiasAddBiasAdd"vgg16/block5_conv2/Conv2D:output:01vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
vgg16/block5_conv2/ReluRelu#vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
(vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block5_conv3/Conv2DConv2D%vgg16/block5_conv2/Relu:activations:00vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

)vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block5_conv3/BiasAddBiasAdd"vgg16/block5_conv3/Conv2D:output:01vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
vgg16/block5_conv3/ReluRelu#vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙š
vgg16/block5_pool/MaxPoolMaxPool%vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
a
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ b  
flatten_10/ReshapeReshape"vgg16/block5_pool/MaxPool:output:0flatten_10/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource* 
_output_shapes
:
Ä2*
dtype0
dense_30/MatMulMatMulflatten_10/Reshape:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2b
dense_30/ReluReludense_30/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2n
dropout_11/IdentityIdentitydense_30/Relu:activations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
dense_31/MatMulMatMuldropout_11/Identity:output:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b
dense_31/ReluReludense_31/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_32/MatMulMatMuldense_31/Relu:activations:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
dense_32/SoftmaxSoftmaxdense_32/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_32/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ú

NoOpNoOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp*^vgg16/block1_conv1/BiasAdd/ReadVariableOp)^vgg16/block1_conv1/Conv2D/ReadVariableOp*^vgg16/block1_conv2/BiasAdd/ReadVariableOp)^vgg16/block1_conv2/Conv2D/ReadVariableOp*^vgg16/block2_conv1/BiasAdd/ReadVariableOp)^vgg16/block2_conv1/Conv2D/ReadVariableOp*^vgg16/block2_conv2/BiasAdd/ReadVariableOp)^vgg16/block2_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv1/BiasAdd/ReadVariableOp)^vgg16/block3_conv1/Conv2D/ReadVariableOp*^vgg16/block3_conv2/BiasAdd/ReadVariableOp)^vgg16/block3_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv3/BiasAdd/ReadVariableOp)^vgg16/block3_conv3/Conv2D/ReadVariableOp*^vgg16/block4_conv1/BiasAdd/ReadVariableOp)^vgg16/block4_conv1/Conv2D/ReadVariableOp*^vgg16/block4_conv2/BiasAdd/ReadVariableOp)^vgg16/block4_conv2/Conv2D/ReadVariableOp*^vgg16/block4_conv3/BiasAdd/ReadVariableOp)^vgg16/block4_conv3/Conv2D/ReadVariableOp*^vgg16/block5_conv1/BiasAdd/ReadVariableOp)^vgg16/block5_conv1/Conv2D/ReadVariableOp*^vgg16/block5_conv2/BiasAdd/ReadVariableOp)^vgg16/block5_conv2/Conv2D/ReadVariableOp*^vgg16/block5_conv3/BiasAdd/ReadVariableOp)^vgg16/block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp2V
)vgg16/block1_conv1/BiasAdd/ReadVariableOp)vgg16/block1_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv1/Conv2D/ReadVariableOp(vgg16/block1_conv1/Conv2D/ReadVariableOp2V
)vgg16/block1_conv2/BiasAdd/ReadVariableOp)vgg16/block1_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv2/Conv2D/ReadVariableOp(vgg16/block1_conv2/Conv2D/ReadVariableOp2V
)vgg16/block2_conv1/BiasAdd/ReadVariableOp)vgg16/block2_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv1/Conv2D/ReadVariableOp(vgg16/block2_conv1/Conv2D/ReadVariableOp2V
)vgg16/block2_conv2/BiasAdd/ReadVariableOp)vgg16/block2_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv2/Conv2D/ReadVariableOp(vgg16/block2_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv1/BiasAdd/ReadVariableOp)vgg16/block3_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv1/Conv2D/ReadVariableOp(vgg16/block3_conv1/Conv2D/ReadVariableOp2V
)vgg16/block3_conv2/BiasAdd/ReadVariableOp)vgg16/block3_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv2/Conv2D/ReadVariableOp(vgg16/block3_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv3/BiasAdd/ReadVariableOp)vgg16/block3_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv3/Conv2D/ReadVariableOp(vgg16/block3_conv3/Conv2D/ReadVariableOp2V
)vgg16/block4_conv1/BiasAdd/ReadVariableOp)vgg16/block4_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv1/Conv2D/ReadVariableOp(vgg16/block4_conv1/Conv2D/ReadVariableOp2V
)vgg16/block4_conv2/BiasAdd/ReadVariableOp)vgg16/block4_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv2/Conv2D/ReadVariableOp(vgg16/block4_conv2/Conv2D/ReadVariableOp2V
)vgg16/block4_conv3/BiasAdd/ReadVariableOp)vgg16/block4_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv3/Conv2D/ReadVariableOp(vgg16/block4_conv3/Conv2D/ReadVariableOp2V
)vgg16/block5_conv1/BiasAdd/ReadVariableOp)vgg16/block5_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv1/Conv2D/ReadVariableOp(vgg16/block5_conv1/Conv2D/ReadVariableOp2V
)vgg16/block5_conv2/BiasAdd/ReadVariableOp)vgg16/block5_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv2/Conv2D/ReadVariableOp(vgg16/block5_conv2/Conv2D/ReadVariableOp2V
)vgg16/block5_conv3/BiasAdd/ReadVariableOp)vgg16/block5_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv3/Conv2D/ReadVariableOp(vgg16/block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
 
_user_specified_nameinputs


ő
D__inference_dense_31_layer_call_and_return_conditional_losses_102968

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs


H__inference_block1_conv1_layer_call_and_return_conditional_losses_103008

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙ŕŕ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
 
_user_specified_nameinputs
Č

)__inference_dense_30_layer_call_fn_102910

inputs
unknown:
Ä2
	unknown_0:2
identity˘StatefulPartitionedCallŮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_101507o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙Ä: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä
 
_user_specified_nameinputs

ä
.__inference_sequential_18_layer_call_fn_102252

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:
Ä2

unknown_26:2

unknown_27:2

unknown_28:

unknown_29:

unknown_30:
identity˘StatefulPartitionedCallů
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_101555o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
 
_user_specified_nameinputs

c
G__inference_block4_pool_layer_call_and_return_conditional_losses_100601

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

c
G__inference_block3_pool_layer_call_and_return_conditional_losses_103158

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


H__inference_block3_conv1_layer_call_and_return_conditional_losses_103108

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙88: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
 
_user_specified_nameinputs
Â

)__inference_dense_32_layer_call_fn_102977

inputs
unknown:
	unknown_0:
identity˘StatefulPartitionedCallŮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_101548o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
¸]
°
__inference__traced_save_103471
file_prefix.
*savev2_dense_30_kernel_read_readvariableop,
(savev2_dense_30_bias_read_readvariableop.
*savev2_dense_31_kernel_read_readvariableop,
(savev2_dense_31_bias_read_readvariableop.
*savev2_dense_32_kernel_read_readvariableop,
(savev2_dense_32_bias_read_readvariableop2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop2
.savev2_block3_conv1_kernel_read_readvariableop0
,savev2_block3_conv1_bias_read_readvariableop2
.savev2_block3_conv2_kernel_read_readvariableop0
,savev2_block3_conv2_bias_read_readvariableop2
.savev2_block3_conv3_kernel_read_readvariableop0
,savev2_block3_conv3_bias_read_readvariableop2
.savev2_block4_conv1_kernel_read_readvariableop0
,savev2_block4_conv1_bias_read_readvariableop2
.savev2_block4_conv2_kernel_read_readvariableop0
,savev2_block4_conv2_bias_read_readvariableop2
.savev2_block4_conv3_kernel_read_readvariableop0
,savev2_block4_conv3_bias_read_readvariableop2
.savev2_block5_conv1_kernel_read_readvariableop0
,savev2_block5_conv1_bias_read_readvariableop2
.savev2_block5_conv2_kernel_read_readvariableop0
,savev2_block5_conv2_bias_read_readvariableop2
.savev2_block5_conv3_kernel_read_readvariableop0
,savev2_block5_conv3_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop5
1savev2_adam_m_dense_30_kernel_read_readvariableop5
1savev2_adam_v_dense_30_kernel_read_readvariableop3
/savev2_adam_m_dense_30_bias_read_readvariableop3
/savev2_adam_v_dense_30_bias_read_readvariableop5
1savev2_adam_m_dense_31_kernel_read_readvariableop5
1savev2_adam_v_dense_31_kernel_read_readvariableop3
/savev2_adam_m_dense_31_bias_read_readvariableop3
/savev2_adam_v_dense_31_bias_read_readvariableop5
1savev2_adam_m_dense_32_kernel_read_readvariableop5
1savev2_adam_v_dense_32_kernel_read_readvariableop3
/savev2_adam_m_dense_32_bias_read_readvariableop3
/savev2_adam_v_dense_32_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1˘MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*Ă
valuešBś3B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÓ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_30_kernel_read_readvariableop(savev2_dense_30_bias_read_readvariableop*savev2_dense_31_kernel_read_readvariableop(savev2_dense_31_bias_read_readvariableop*savev2_dense_32_kernel_read_readvariableop(savev2_dense_32_bias_read_readvariableop.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop.savev2_block3_conv1_kernel_read_readvariableop,savev2_block3_conv1_bias_read_readvariableop.savev2_block3_conv2_kernel_read_readvariableop,savev2_block3_conv2_bias_read_readvariableop.savev2_block3_conv3_kernel_read_readvariableop,savev2_block3_conv3_bias_read_readvariableop.savev2_block4_conv1_kernel_read_readvariableop,savev2_block4_conv1_bias_read_readvariableop.savev2_block4_conv2_kernel_read_readvariableop,savev2_block4_conv2_bias_read_readvariableop.savev2_block4_conv3_kernel_read_readvariableop,savev2_block4_conv3_bias_read_readvariableop.savev2_block5_conv1_kernel_read_readvariableop,savev2_block5_conv1_bias_read_readvariableop.savev2_block5_conv2_kernel_read_readvariableop,savev2_block5_conv2_bias_read_readvariableop.savev2_block5_conv3_kernel_read_readvariableop,savev2_block5_conv3_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop1savev2_adam_m_dense_30_kernel_read_readvariableop1savev2_adam_v_dense_30_kernel_read_readvariableop/savev2_adam_m_dense_30_bias_read_readvariableop/savev2_adam_v_dense_30_bias_read_readvariableop1savev2_adam_m_dense_31_kernel_read_readvariableop1savev2_adam_v_dense_31_kernel_read_readvariableop/savev2_adam_m_dense_31_bias_read_readvariableop/savev2_adam_v_dense_31_bias_read_readvariableop1savev2_adam_m_dense_32_kernel_read_readvariableop1savev2_adam_v_dense_32_kernel_read_readvariableop/savev2_adam_m_dense_32_bias_read_readvariableop/savev2_adam_v_dense_32_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *A
dtypes7
523	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:ł
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
ţ: :
Ä2:2:2::::@:@:@@:@:@:::::::::::::::::::::: : :
Ä2:
Ä2:2:2:2:2::::::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
Ä2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::! 

_output_shapes	
::!

_output_shapes
: :"

_output_shapes
: :&#"
 
_output_shapes
:
Ä2:&$"
 
_output_shapes
:
Ä2: %

_output_shapes
:2: &

_output_shapes
:2:$' 

_output_shapes

:2:$( 

_output_shapes

:2: )

_output_shapes
:: *

_output_shapes
::$+ 

_output_shapes

::$, 

_output_shapes

:: -

_output_shapes
:: .

_output_shapes
::/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: 


H__inference_block2_conv1_layer_call_and_return_conditional_losses_103058

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ppY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ppj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ppw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙pp@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙pp@
 
_user_specified_nameinputs
­&
Í

I__inference_sequential_18_layer_call_and_return_conditional_losses_101555

inputs&
vgg16_101435:@
vgg16_101437:@&
vgg16_101439:@@
vgg16_101441:@'
vgg16_101443:@
vgg16_101445:	(
vgg16_101447:
vgg16_101449:	(
vgg16_101451:
vgg16_101453:	(
vgg16_101455:
vgg16_101457:	(
vgg16_101459:
vgg16_101461:	(
vgg16_101463:
vgg16_101465:	(
vgg16_101467:
vgg16_101469:	(
vgg16_101471:
vgg16_101473:	(
vgg16_101475:
vgg16_101477:	(
vgg16_101479:
vgg16_101481:	(
vgg16_101483:
vgg16_101485:	#
dense_30_101508:
Ä2
dense_30_101510:2!
dense_31_101532:2
dense_31_101534:!
dense_32_101549:
dense_32_101551:
identity˘ dense_30/StatefulPartitionedCall˘ dense_31/StatefulPartitionedCall˘ dense_32/StatefulPartitionedCall˘vgg16/StatefulPartitionedCallí
vgg16/StatefulPartitionedCallStatefulPartitionedCallinputsvgg16_101435vgg16_101437vgg16_101439vgg16_101441vgg16_101443vgg16_101445vgg16_101447vgg16_101449vgg16_101451vgg16_101453vgg16_101455vgg16_101457vgg16_101459vgg16_101461vgg16_101463vgg16_101465vgg16_101467vgg16_101469vgg16_101471vgg16_101473vgg16_101475vgg16_101477vgg16_101479vgg16_101481vgg16_101483vgg16_101485*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_vgg16_layer_call_and_return_conditional_losses_100850Ţ
flatten_10/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_101494
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_30_101508dense_30_101510*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_101507ß
dropout_11/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_101518
 dense_31/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0dense_31_101532dense_31_101534*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_101531
 dense_32/StatefulPartitionedCallStatefulPartitionedCall)dense_31/StatefulPartitionedCall:output:0dense_32_101549dense_32_101551*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_101548x
IdentityIdentity)dense_32/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ď
NoOpNoOp!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
 
_user_specified_nameinputs


H__inference_block1_conv2_layer_call_and_return_conditional_losses_103028

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙ŕŕ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@
 
_user_specified_nameinputs
ů
Ľ
-__inference_block2_conv2_layer_call_fn_103067

inputs#
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block2_conv2_layer_call_and_return_conditional_losses_100686x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙pp: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp
 
_user_specified_nameinputs
Ů
d
F__inference_dropout_11_layer_call_and_return_conditional_losses_102936

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙2:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
ů
Ľ
-__inference_block3_conv3_layer_call_fn_103137

inputs#
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block3_conv3_layer_call_and_return_conditional_losses_100738x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙88: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
 
_user_specified_nameinputs
Ě¸
Ú
I__inference_sequential_18_layer_call_and_return_conditional_losses_102576

inputsK
1vgg16_block1_conv1_conv2d_readvariableop_resource:@@
2vgg16_block1_conv1_biasadd_readvariableop_resource:@K
1vgg16_block1_conv2_conv2d_readvariableop_resource:@@@
2vgg16_block1_conv2_biasadd_readvariableop_resource:@L
1vgg16_block2_conv1_conv2d_readvariableop_resource:@A
2vgg16_block2_conv1_biasadd_readvariableop_resource:	M
1vgg16_block2_conv2_conv2d_readvariableop_resource:A
2vgg16_block2_conv2_biasadd_readvariableop_resource:	M
1vgg16_block3_conv1_conv2d_readvariableop_resource:A
2vgg16_block3_conv1_biasadd_readvariableop_resource:	M
1vgg16_block3_conv2_conv2d_readvariableop_resource:A
2vgg16_block3_conv2_biasadd_readvariableop_resource:	M
1vgg16_block3_conv3_conv2d_readvariableop_resource:A
2vgg16_block3_conv3_biasadd_readvariableop_resource:	M
1vgg16_block4_conv1_conv2d_readvariableop_resource:A
2vgg16_block4_conv1_biasadd_readvariableop_resource:	M
1vgg16_block4_conv2_conv2d_readvariableop_resource:A
2vgg16_block4_conv2_biasadd_readvariableop_resource:	M
1vgg16_block4_conv3_conv2d_readvariableop_resource:A
2vgg16_block4_conv3_biasadd_readvariableop_resource:	M
1vgg16_block5_conv1_conv2d_readvariableop_resource:A
2vgg16_block5_conv1_biasadd_readvariableop_resource:	M
1vgg16_block5_conv2_conv2d_readvariableop_resource:A
2vgg16_block5_conv2_biasadd_readvariableop_resource:	M
1vgg16_block5_conv3_conv2d_readvariableop_resource:A
2vgg16_block5_conv3_biasadd_readvariableop_resource:	;
'dense_30_matmul_readvariableop_resource:
Ä26
(dense_30_biasadd_readvariableop_resource:29
'dense_31_matmul_readvariableop_resource:26
(dense_31_biasadd_readvariableop_resource:9
'dense_32_matmul_readvariableop_resource:6
(dense_32_biasadd_readvariableop_resource:
identity˘dense_30/BiasAdd/ReadVariableOp˘dense_30/MatMul/ReadVariableOp˘dense_31/BiasAdd/ReadVariableOp˘dense_31/MatMul/ReadVariableOp˘dense_32/BiasAdd/ReadVariableOp˘dense_32/MatMul/ReadVariableOp˘)vgg16/block1_conv1/BiasAdd/ReadVariableOp˘(vgg16/block1_conv1/Conv2D/ReadVariableOp˘)vgg16/block1_conv2/BiasAdd/ReadVariableOp˘(vgg16/block1_conv2/Conv2D/ReadVariableOp˘)vgg16/block2_conv1/BiasAdd/ReadVariableOp˘(vgg16/block2_conv1/Conv2D/ReadVariableOp˘)vgg16/block2_conv2/BiasAdd/ReadVariableOp˘(vgg16/block2_conv2/Conv2D/ReadVariableOp˘)vgg16/block3_conv1/BiasAdd/ReadVariableOp˘(vgg16/block3_conv1/Conv2D/ReadVariableOp˘)vgg16/block3_conv2/BiasAdd/ReadVariableOp˘(vgg16/block3_conv2/Conv2D/ReadVariableOp˘)vgg16/block3_conv3/BiasAdd/ReadVariableOp˘(vgg16/block3_conv3/Conv2D/ReadVariableOp˘)vgg16/block4_conv1/BiasAdd/ReadVariableOp˘(vgg16/block4_conv1/Conv2D/ReadVariableOp˘)vgg16/block4_conv2/BiasAdd/ReadVariableOp˘(vgg16/block4_conv2/Conv2D/ReadVariableOp˘)vgg16/block4_conv3/BiasAdd/ReadVariableOp˘(vgg16/block4_conv3/Conv2D/ReadVariableOp˘)vgg16/block5_conv1/BiasAdd/ReadVariableOp˘(vgg16/block5_conv1/Conv2D/ReadVariableOp˘)vgg16/block5_conv2/BiasAdd/ReadVariableOp˘(vgg16/block5_conv2/Conv2D/ReadVariableOp˘)vgg16/block5_conv3/BiasAdd/ReadVariableOp˘(vgg16/block5_conv3/Conv2D/ReadVariableOp˘
(vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Á
vgg16/block1_conv1/Conv2DConv2Dinputs0vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*
paddingSAME*
strides

)vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¸
vgg16/block1_conv1/BiasAddBiasAdd"vgg16/block1_conv1/Conv2D:output:01vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@
vgg16/block1_conv1/ReluRelu#vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@˘
(vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ŕ
vgg16/block1_conv2/Conv2DConv2D%vgg16/block1_conv1/Relu:activations:00vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*
paddingSAME*
strides

)vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¸
vgg16/block1_conv2/BiasAddBiasAdd"vgg16/block1_conv2/Conv2D:output:01vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@
vgg16/block1_conv2/ReluRelu#vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@¸
vgg16/block1_pool/MaxPoolMaxPool%vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙pp@*
ksize
*
paddingVALID*
strides
Ł
(vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ü
vgg16/block2_conv1/Conv2DConv2D"vgg16/block1_pool/MaxPool:output:00vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*
paddingSAME*
strides

)vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block2_conv1/BiasAddBiasAdd"vgg16/block2_conv1/Conv2D:output:01vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp
vgg16/block2_conv1/ReluRelu#vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp¤
(vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block2_conv2/Conv2DConv2D%vgg16/block2_conv1/Relu:activations:00vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*
paddingSAME*
strides

)vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block2_conv2/BiasAddBiasAdd"vgg16/block2_conv2/Conv2D:output:01vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp
vgg16/block2_conv2/ReluRelu#vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ppš
vgg16/block2_pool/MaxPoolMaxPool%vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
ksize
*
paddingVALID*
strides
¤
(vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ü
vgg16/block3_conv1/Conv2DConv2D"vgg16/block2_pool/MaxPool:output:00vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides

)vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block3_conv1/BiasAddBiasAdd"vgg16/block3_conv1/Conv2D:output:01vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
vgg16/block3_conv1/ReluRelu#vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88¤
(vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block3_conv2/Conv2DConv2D%vgg16/block3_conv1/Relu:activations:00vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides

)vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block3_conv2/BiasAddBiasAdd"vgg16/block3_conv2/Conv2D:output:01vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
vgg16/block3_conv2/ReluRelu#vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88¤
(vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block3_conv3/Conv2DConv2D%vgg16/block3_conv2/Relu:activations:00vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides

)vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block3_conv3/BiasAddBiasAdd"vgg16/block3_conv3/Conv2D:output:01vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
vgg16/block3_conv3/ReluRelu#vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88š
vgg16/block3_pool/MaxPoolMaxPool%vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
¤
(vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ü
vgg16/block4_conv1/Conv2DConv2D"vgg16/block3_pool/MaxPool:output:00vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

)vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block4_conv1/BiasAddBiasAdd"vgg16/block4_conv1/Conv2D:output:01vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
vgg16/block4_conv1/ReluRelu#vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
(vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block4_conv2/Conv2DConv2D%vgg16/block4_conv1/Relu:activations:00vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

)vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block4_conv2/BiasAddBiasAdd"vgg16/block4_conv2/Conv2D:output:01vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
vgg16/block4_conv2/ReluRelu#vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
(vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block4_conv3/Conv2DConv2D%vgg16/block4_conv2/Relu:activations:00vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

)vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block4_conv3/BiasAddBiasAdd"vgg16/block4_conv3/Conv2D:output:01vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
vgg16/block4_conv3/ReluRelu#vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙š
vgg16/block4_pool/MaxPoolMaxPool%vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
¤
(vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ü
vgg16/block5_conv1/Conv2DConv2D"vgg16/block4_pool/MaxPool:output:00vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

)vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block5_conv1/BiasAddBiasAdd"vgg16/block5_conv1/Conv2D:output:01vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
vgg16/block5_conv1/ReluRelu#vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
(vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block5_conv2/Conv2DConv2D%vgg16/block5_conv1/Relu:activations:00vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

)vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block5_conv2/BiasAddBiasAdd"vgg16/block5_conv2/Conv2D:output:01vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
vgg16/block5_conv2/ReluRelu#vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙¤
(vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ß
vgg16/block5_conv3/Conv2DConv2D%vgg16/block5_conv2/Relu:activations:00vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

)vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
vgg16/block5_conv3/BiasAddBiasAdd"vgg16/block5_conv3/Conv2D:output:01vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
vgg16/block5_conv3/ReluRelu#vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙š
vgg16/block5_pool/MaxPoolMaxPool%vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
a
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ b  
flatten_10/ReshapeReshape"vgg16/block5_pool/MaxPool:output:0flatten_10/Const:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource* 
_output_shapes
:
Ä2*
dtype0
dense_30/MatMulMatMulflatten_10/Reshape:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2b
dense_30/ReluReludense_30/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2]
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_11/dropout/MulMuldense_30/Relu:activations:0!dropout_11/dropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2c
dropout_11/dropout/ShapeShapedense_30/Relu:activations:0*
T0*
_output_shapes
:˘
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
dtype0f
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>Ç
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2_
dropout_11/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ż
dropout_11/dropout/SelectV2SelectV2#dropout_11/dropout/GreaterEqual:z:0dropout_11/dropout/Mul:z:0#dropout_11/dropout/Const_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0
dense_31/MatMulMatMul$dropout_11/dropout/SelectV2:output:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b
dense_31/ReluReludense_31/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_32/MatMulMatMuldense_31/Relu:activations:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
dense_32/SoftmaxSoftmaxdense_32/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙i
IdentityIdentitydense_32/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ú

NoOpNoOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp*^vgg16/block1_conv1/BiasAdd/ReadVariableOp)^vgg16/block1_conv1/Conv2D/ReadVariableOp*^vgg16/block1_conv2/BiasAdd/ReadVariableOp)^vgg16/block1_conv2/Conv2D/ReadVariableOp*^vgg16/block2_conv1/BiasAdd/ReadVariableOp)^vgg16/block2_conv1/Conv2D/ReadVariableOp*^vgg16/block2_conv2/BiasAdd/ReadVariableOp)^vgg16/block2_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv1/BiasAdd/ReadVariableOp)^vgg16/block3_conv1/Conv2D/ReadVariableOp*^vgg16/block3_conv2/BiasAdd/ReadVariableOp)^vgg16/block3_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv3/BiasAdd/ReadVariableOp)^vgg16/block3_conv3/Conv2D/ReadVariableOp*^vgg16/block4_conv1/BiasAdd/ReadVariableOp)^vgg16/block4_conv1/Conv2D/ReadVariableOp*^vgg16/block4_conv2/BiasAdd/ReadVariableOp)^vgg16/block4_conv2/Conv2D/ReadVariableOp*^vgg16/block4_conv3/BiasAdd/ReadVariableOp)^vgg16/block4_conv3/Conv2D/ReadVariableOp*^vgg16/block5_conv1/BiasAdd/ReadVariableOp)^vgg16/block5_conv1/Conv2D/ReadVariableOp*^vgg16/block5_conv2/BiasAdd/ReadVariableOp)^vgg16/block5_conv2/Conv2D/ReadVariableOp*^vgg16/block5_conv3/BiasAdd/ReadVariableOp)^vgg16/block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp2V
)vgg16/block1_conv1/BiasAdd/ReadVariableOp)vgg16/block1_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv1/Conv2D/ReadVariableOp(vgg16/block1_conv1/Conv2D/ReadVariableOp2V
)vgg16/block1_conv2/BiasAdd/ReadVariableOp)vgg16/block1_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv2/Conv2D/ReadVariableOp(vgg16/block1_conv2/Conv2D/ReadVariableOp2V
)vgg16/block2_conv1/BiasAdd/ReadVariableOp)vgg16/block2_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv1/Conv2D/ReadVariableOp(vgg16/block2_conv1/Conv2D/ReadVariableOp2V
)vgg16/block2_conv2/BiasAdd/ReadVariableOp)vgg16/block2_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv2/Conv2D/ReadVariableOp(vgg16/block2_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv1/BiasAdd/ReadVariableOp)vgg16/block3_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv1/Conv2D/ReadVariableOp(vgg16/block3_conv1/Conv2D/ReadVariableOp2V
)vgg16/block3_conv2/BiasAdd/ReadVariableOp)vgg16/block3_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv2/Conv2D/ReadVariableOp(vgg16/block3_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv3/BiasAdd/ReadVariableOp)vgg16/block3_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv3/Conv2D/ReadVariableOp(vgg16/block3_conv3/Conv2D/ReadVariableOp2V
)vgg16/block4_conv1/BiasAdd/ReadVariableOp)vgg16/block4_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv1/Conv2D/ReadVariableOp(vgg16/block4_conv1/Conv2D/ReadVariableOp2V
)vgg16/block4_conv2/BiasAdd/ReadVariableOp)vgg16/block4_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv2/Conv2D/ReadVariableOp(vgg16/block4_conv2/Conv2D/ReadVariableOp2V
)vgg16/block4_conv3/BiasAdd/ReadVariableOp)vgg16/block4_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv3/Conv2D/ReadVariableOp(vgg16/block4_conv3/Conv2D/ReadVariableOp2V
)vgg16/block5_conv1/BiasAdd/ReadVariableOp)vgg16/block5_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv1/Conv2D/ReadVariableOp(vgg16/block5_conv1/Conv2D/ReadVariableOp2V
)vgg16/block5_conv2/BiasAdd/ReadVariableOp)vgg16/block5_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv2/Conv2D/ReadVariableOp(vgg16/block5_conv2/Conv2D/ReadVariableOp2V
)vgg16/block5_conv3/BiasAdd/ReadVariableOp)vgg16/block5_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv3/Conv2D/ReadVariableOp(vgg16/block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
 
_user_specified_nameinputs


H__inference_block3_conv3_layer_call_and_return_conditional_losses_103148

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙88: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
 
_user_specified_nameinputs
 

ő
D__inference_dense_32_layer_call_and_return_conditional_losses_102988

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


ő
D__inference_dense_31_layer_call_and_return_conditional_losses_101531

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
ö
¤
-__inference_block2_conv1_layer_call_fn_103047

inputs"
unknown:@
	unknown_0:	
identity˘StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block2_conv1_layer_call_and_return_conditional_losses_100669x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙pp@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙pp@
 
_user_specified_nameinputs


H__inference_block2_conv2_layer_call_and_return_conditional_losses_100686

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ppY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ppj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ppw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙pp: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp
 
_user_specified_nameinputs
°
H
,__inference_block1_pool_layer_call_fn_103033

inputs
identityŐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block1_pool_layer_call_and_return_conditional_losses_100565
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ř
˛
&__inference_vgg16_layer_call_fn_102633

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	
identity˘StatefulPartitionedCallŚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_vgg16_layer_call_and_return_conditional_losses_100850x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
 
_user_specified_nameinputs

c
G__inference_block5_pool_layer_call_and_return_conditional_losses_100613

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
°
ö
A__inference_vgg16_layer_call_and_return_conditional_losses_102790

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@;
,block2_conv1_biasadd_readvariableop_resource:	G
+block2_conv2_conv2d_readvariableop_resource:;
,block2_conv2_biasadd_readvariableop_resource:	G
+block3_conv1_conv2d_readvariableop_resource:;
,block3_conv1_biasadd_readvariableop_resource:	G
+block3_conv2_conv2d_readvariableop_resource:;
,block3_conv2_biasadd_readvariableop_resource:	G
+block3_conv3_conv2d_readvariableop_resource:;
,block3_conv3_biasadd_readvariableop_resource:	G
+block4_conv1_conv2d_readvariableop_resource:;
,block4_conv1_biasadd_readvariableop_resource:	G
+block4_conv2_conv2d_readvariableop_resource:;
,block4_conv2_biasadd_readvariableop_resource:	G
+block4_conv3_conv2d_readvariableop_resource:;
,block4_conv3_biasadd_readvariableop_resource:	G
+block5_conv1_conv2d_readvariableop_resource:;
,block5_conv1_biasadd_readvariableop_resource:	G
+block5_conv2_conv2d_readvariableop_resource:;
,block5_conv2_biasadd_readvariableop_resource:	G
+block5_conv3_conv2d_readvariableop_resource:;
,block5_conv3_biasadd_readvariableop_resource:	
identity˘#block1_conv1/BiasAdd/ReadVariableOp˘"block1_conv1/Conv2D/ReadVariableOp˘#block1_conv2/BiasAdd/ReadVariableOp˘"block1_conv2/Conv2D/ReadVariableOp˘#block2_conv1/BiasAdd/ReadVariableOp˘"block2_conv1/Conv2D/ReadVariableOp˘#block2_conv2/BiasAdd/ReadVariableOp˘"block2_conv2/Conv2D/ReadVariableOp˘#block3_conv1/BiasAdd/ReadVariableOp˘"block3_conv1/Conv2D/ReadVariableOp˘#block3_conv2/BiasAdd/ReadVariableOp˘"block3_conv2/Conv2D/ReadVariableOp˘#block3_conv3/BiasAdd/ReadVariableOp˘"block3_conv3/Conv2D/ReadVariableOp˘#block4_conv1/BiasAdd/ReadVariableOp˘"block4_conv1/Conv2D/ReadVariableOp˘#block4_conv2/BiasAdd/ReadVariableOp˘"block4_conv2/Conv2D/ReadVariableOp˘#block4_conv3/BiasAdd/ReadVariableOp˘"block4_conv3/Conv2D/ReadVariableOp˘#block5_conv1/BiasAdd/ReadVariableOp˘"block5_conv1/Conv2D/ReadVariableOp˘#block5_conv2/BiasAdd/ReadVariableOp˘"block5_conv2/Conv2D/ReadVariableOp˘#block5_conv3/BiasAdd/ReadVariableOp˘"block5_conv3/Conv2D/ReadVariableOp
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ľ
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*
paddingSAME*
strides

#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ś
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@t
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Î
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*
paddingSAME*
strides

#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ś
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@t
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@Ź
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙pp@*
ksize
*
paddingVALID*
strides

"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ę
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*
paddingSAME*
strides

#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pps
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*
paddingSAME*
strides

#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pps
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp­
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
ksize
*
paddingVALID*
strides

"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ę
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides

#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88s
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides

#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88s
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides

#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88s
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88­
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides

"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ę
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙s
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙s
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙s
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙­
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides

"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ę
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙s
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙s
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙s
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙­
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
t
IdentityIdentityblock5_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
 
_user_specified_nameinputs


H__inference_block5_conv3_layer_call_and_return_conditional_losses_100842

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ú
˘
-__inference_block1_conv1_layer_call_fn_102997

inputs!
unknown:@
	unknown_0:@
identity˘StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block1_conv1_layer_call_and_return_conditional_losses_100634y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙ŕŕ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
 
_user_specified_nameinputs


H__inference_block4_conv2_layer_call_and_return_conditional_losses_103198

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ó
d
+__inference_dropout_11_layer_call_fn_102931

inputs
identity˘StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_101662o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙222
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
Ł

÷
D__inference_dense_30_layer_call_and_return_conditional_losses_101507

inputs2
matmul_readvariableop_resource:
Ä2-
biasadd_readvariableop_resource:2
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Ä2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙Ä: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä
 
_user_specified_nameinputs
Ě
b
F__inference_flatten_10_layer_call_and_return_conditional_losses_102901

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ b  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙ÄZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ě
b
F__inference_flatten_10_layer_call_and_return_conditional_losses_101494

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙ b  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙ÄZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ţ
´
&__inference_vgg16_layer_call_fn_101280
input_11!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	
identity˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_vgg16_layer_call_and_return_conditional_losses_101168x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
"
_user_specified_name
input_11


H__inference_block1_conv2_layer_call_and_return_conditional_losses_100651

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙ŕŕ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@
 
_user_specified_nameinputs
°
H
,__inference_block4_pool_layer_call_fn_103223

inputs
identityŐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_pool_layer_call_and_return_conditional_losses_100601
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
č'
÷

I__inference_sequential_18_layer_call_and_return_conditional_losses_102110
vgg16_input&
vgg16_102039:@
vgg16_102041:@&
vgg16_102043:@@
vgg16_102045:@'
vgg16_102047:@
vgg16_102049:	(
vgg16_102051:
vgg16_102053:	(
vgg16_102055:
vgg16_102057:	(
vgg16_102059:
vgg16_102061:	(
vgg16_102063:
vgg16_102065:	(
vgg16_102067:
vgg16_102069:	(
vgg16_102071:
vgg16_102073:	(
vgg16_102075:
vgg16_102077:	(
vgg16_102079:
vgg16_102081:	(
vgg16_102083:
vgg16_102085:	(
vgg16_102087:
vgg16_102089:	#
dense_30_102093:
Ä2
dense_30_102095:2!
dense_31_102099:2
dense_31_102101:!
dense_32_102104:
dense_32_102106:
identity˘ dense_30/StatefulPartitionedCall˘ dense_31/StatefulPartitionedCall˘ dense_32/StatefulPartitionedCall˘"dropout_11/StatefulPartitionedCall˘vgg16/StatefulPartitionedCallň
vgg16/StatefulPartitionedCallStatefulPartitionedCallvgg16_inputvgg16_102039vgg16_102041vgg16_102043vgg16_102045vgg16_102047vgg16_102049vgg16_102051vgg16_102053vgg16_102055vgg16_102057vgg16_102059vgg16_102061vgg16_102063vgg16_102065vgg16_102067vgg16_102069vgg16_102071vgg16_102073vgg16_102075vgg16_102077vgg16_102079vgg16_102081vgg16_102083vgg16_102085vgg16_102087vgg16_102089*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_vgg16_layer_call_and_return_conditional_losses_101168Ţ
flatten_10/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_101494
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_30_102093dense_30_102095*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_101507ď
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_101662
 dense_31/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_31_102099dense_31_102101*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_101531
 dense_32/StatefulPartitionedCallStatefulPartitionedCall)dense_31/StatefulPartitionedCall:output:0dense_32_102104dense_32_102106*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_101548x
IdentityIdentity)dense_32/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ô
NoOpNoOp!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:^ Z
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
%
_user_specified_namevgg16_input


H__inference_block5_conv1_layer_call_and_return_conditional_losses_103248

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ů
Ľ
-__inference_block5_conv1_layer_call_fn_103237

inputs#
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block5_conv1_layer_call_and_return_conditional_losses_100808x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


H__inference_block5_conv2_layer_call_and_return_conditional_losses_100825

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ů
Ľ
-__inference_block4_conv3_layer_call_fn_103207

inputs#
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block4_conv3_layer_call_and_return_conditional_losses_100790x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ř
˛
&__inference_vgg16_layer_call_fn_102690

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	
identity˘StatefulPartitionedCallŚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_vgg16_layer_call_and_return_conditional_losses_101168x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
 
_user_specified_nameinputs


e
F__inference_dropout_11_layer_call_and_return_conditional_losses_102948

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>Ś
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙2:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs


H__inference_block2_conv2_layer_call_and_return_conditional_losses_103078

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ppY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ppj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ppw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙pp: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp
 
_user_specified_nameinputs
Ů
d
F__inference_dropout_11_layer_call_and_return_conditional_losses_101518

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙2:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs

c
G__inference_block1_pool_layer_call_and_return_conditional_losses_103038

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


H__inference_block4_conv3_layer_call_and_return_conditional_losses_103218

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ˇ
G
+__inference_flatten_10_layer_call_fn_102895

inputs
identitył
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_101494b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


H__inference_block4_conv1_layer_call_and_return_conditional_losses_100756

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ňV
§
A__inference_vgg16_layer_call_and_return_conditional_losses_101428
input_11-
block1_conv1_101357:@!
block1_conv1_101359:@-
block1_conv2_101362:@@!
block1_conv2_101364:@.
block2_conv1_101368:@"
block2_conv1_101370:	/
block2_conv2_101373:"
block2_conv2_101375:	/
block3_conv1_101379:"
block3_conv1_101381:	/
block3_conv2_101384:"
block3_conv2_101386:	/
block3_conv3_101389:"
block3_conv3_101391:	/
block4_conv1_101395:"
block4_conv1_101397:	/
block4_conv2_101400:"
block4_conv2_101402:	/
block4_conv3_101405:"
block4_conv3_101407:	/
block5_conv1_101411:"
block5_conv1_101413:	/
block5_conv2_101416:"
block5_conv2_101418:	/
block5_conv3_101421:"
block5_conv3_101423:	
identity˘$block1_conv1/StatefulPartitionedCall˘$block1_conv2/StatefulPartitionedCall˘$block2_conv1/StatefulPartitionedCall˘$block2_conv2/StatefulPartitionedCall˘$block3_conv1/StatefulPartitionedCall˘$block3_conv2/StatefulPartitionedCall˘$block3_conv3/StatefulPartitionedCall˘$block4_conv1/StatefulPartitionedCall˘$block4_conv2/StatefulPartitionedCall˘$block4_conv3/StatefulPartitionedCall˘$block5_conv1/StatefulPartitionedCall˘$block5_conv2/StatefulPartitionedCall˘$block5_conv3/StatefulPartitionedCall
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_11block1_conv1_101357block1_conv1_101359*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block1_conv1_layer_call_and_return_conditional_losses_100634ą
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_101362block1_conv2_101364*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block1_conv2_layer_call_and_return_conditional_losses_100651í
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙pp@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block1_pool_layer_call_and_return_conditional_losses_100565§
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_101368block2_conv1_101370*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block2_conv1_layer_call_and_return_conditional_losses_100669°
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_101373block2_conv2_101375*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block2_conv2_layer_call_and_return_conditional_losses_100686î
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block2_pool_layer_call_and_return_conditional_losses_100577§
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_101379block3_conv1_101381*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block3_conv1_layer_call_and_return_conditional_losses_100704°
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_101384block3_conv2_101386*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block3_conv2_layer_call_and_return_conditional_losses_100721°
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_101389block3_conv3_101391*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block3_conv3_layer_call_and_return_conditional_losses_100738î
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_pool_layer_call_and_return_conditional_losses_100589§
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_101395block4_conv1_101397*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block4_conv1_layer_call_and_return_conditional_losses_100756°
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_101400block4_conv2_101402*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block4_conv2_layer_call_and_return_conditional_losses_100773°
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_101405block4_conv3_101407*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block4_conv3_layer_call_and_return_conditional_losses_100790î
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_pool_layer_call_and_return_conditional_losses_100601§
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_101411block5_conv1_101413*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block5_conv1_layer_call_and_return_conditional_losses_100808°
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_101416block5_conv2_101418*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block5_conv2_layer_call_and_return_conditional_losses_100825°
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_101421block5_conv3_101423*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block5_conv3_layer_call_and_return_conditional_losses_100842î
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_pool_layer_call_and_return_conditional_losses_100613|
IdentityIdentity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:[ W
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
"
_user_specified_name
input_11

c
G__inference_block4_pool_layer_call_and_return_conditional_losses_103228

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


H__inference_block2_conv1_layer_call_and_return_conditional_losses_100669

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ppY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ppj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙ppw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:˙˙˙˙˙˙˙˙˙pp@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:˙˙˙˙˙˙˙˙˙pp@
 
_user_specified_nameinputs
ů
Ľ
-__inference_block3_conv1_layer_call_fn_103097

inputs#
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block3_conv1_layer_call_and_return_conditional_losses_100704x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙88: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
 
_user_specified_nameinputs


H__inference_block3_conv3_layer_call_and_return_conditional_losses_100738

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙88: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
 
_user_specified_nameinputs


e
F__inference_dropout_11_layer_call_and_return_conditional_losses_101662

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>Ś
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙2:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs

é
.__inference_sequential_18_layer_call_fn_101962
vgg16_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:
Ä2

unknown_26:2

unknown_27:2

unknown_28:

unknown_29:

unknown_30:
identity˘StatefulPartitionedCallţ
StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_101826o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
%
_user_specified_namevgg16_input
 

ő
D__inference_dense_32_layer_call_and_return_conditional_losses_101548

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ů
Ľ
-__inference_block5_conv3_layer_call_fn_103277

inputs#
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block5_conv3_layer_call_and_return_conditional_losses_100842x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ý
ß
$__inference_signature_wrapper_102183
vgg16_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:
Ä2

unknown_26:2

unknown_27:2

unknown_28:

unknown_29:

unknown_30:
identity˘StatefulPartitionedCallÖ
StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_100556o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
%
_user_specified_namevgg16_input
ů
Ľ
-__inference_block5_conv2_layer_call_fn_103257

inputs#
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block5_conv2_layer_call_and_return_conditional_losses_100825x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ů
Ľ
-__inference_block4_conv1_layer_call_fn_103167

inputs#
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block4_conv1_layer_call_and_return_conditional_losses_100756x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


H__inference_block5_conv2_layer_call_and_return_conditional_losses_103268

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

c
G__inference_block2_pool_layer_call_and_return_conditional_losses_103088

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ů'
ň

I__inference_sequential_18_layer_call_and_return_conditional_losses_101826

inputs&
vgg16_101755:@
vgg16_101757:@&
vgg16_101759:@@
vgg16_101761:@'
vgg16_101763:@
vgg16_101765:	(
vgg16_101767:
vgg16_101769:	(
vgg16_101771:
vgg16_101773:	(
vgg16_101775:
vgg16_101777:	(
vgg16_101779:
vgg16_101781:	(
vgg16_101783:
vgg16_101785:	(
vgg16_101787:
vgg16_101789:	(
vgg16_101791:
vgg16_101793:	(
vgg16_101795:
vgg16_101797:	(
vgg16_101799:
vgg16_101801:	(
vgg16_101803:
vgg16_101805:	#
dense_30_101809:
Ä2
dense_30_101811:2!
dense_31_101815:2
dense_31_101817:!
dense_32_101820:
dense_32_101822:
identity˘ dense_30/StatefulPartitionedCall˘ dense_31/StatefulPartitionedCall˘ dense_32/StatefulPartitionedCall˘"dropout_11/StatefulPartitionedCall˘vgg16/StatefulPartitionedCallí
vgg16/StatefulPartitionedCallStatefulPartitionedCallinputsvgg16_101755vgg16_101757vgg16_101759vgg16_101761vgg16_101763vgg16_101765vgg16_101767vgg16_101769vgg16_101771vgg16_101773vgg16_101775vgg16_101777vgg16_101779vgg16_101781vgg16_101783vgg16_101785vgg16_101787vgg16_101789vgg16_101791vgg16_101793vgg16_101795vgg16_101797vgg16_101799vgg16_101801vgg16_101803vgg16_101805*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_vgg16_layer_call_and_return_conditional_losses_101168Ţ
flatten_10/PartitionedCallPartitionedCall&vgg16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:˙˙˙˙˙˙˙˙˙Ä* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_101494
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_30_101809dense_30_101811*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_101507ď
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_101662
 dense_31/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0dense_31_101815dense_31_101817*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_101531
 dense_32/StatefulPartitionedCallStatefulPartitionedCall)dense_31/StatefulPartitionedCall:output:0dense_32_101820dense_32_101822*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_101548x
IdentityIdentity)dense_32/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ô
NoOpNoOp!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
 
_user_specified_nameinputs
ů
Ľ
-__inference_block4_conv2_layer_call_fn_103187

inputs#
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block4_conv2_layer_call_and_return_conditional_losses_100773x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

é
.__inference_sequential_18_layer_call_fn_101622
vgg16_input!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:
Ä2

unknown_26:2

unknown_27:2

unknown_28:

unknown_29:

unknown_30:
identity˘StatefulPartitionedCallţ
StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_101555o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
%
_user_specified_namevgg16_input
ňV
§
A__inference_vgg16_layer_call_and_return_conditional_losses_101354
input_11-
block1_conv1_101283:@!
block1_conv1_101285:@-
block1_conv2_101288:@@!
block1_conv2_101290:@.
block2_conv1_101294:@"
block2_conv1_101296:	/
block2_conv2_101299:"
block2_conv2_101301:	/
block3_conv1_101305:"
block3_conv1_101307:	/
block3_conv2_101310:"
block3_conv2_101312:	/
block3_conv3_101315:"
block3_conv3_101317:	/
block4_conv1_101321:"
block4_conv1_101323:	/
block4_conv2_101326:"
block4_conv2_101328:	/
block4_conv3_101331:"
block4_conv3_101333:	/
block5_conv1_101337:"
block5_conv1_101339:	/
block5_conv2_101342:"
block5_conv2_101344:	/
block5_conv3_101347:"
block5_conv3_101349:	
identity˘$block1_conv1/StatefulPartitionedCall˘$block1_conv2/StatefulPartitionedCall˘$block2_conv1/StatefulPartitionedCall˘$block2_conv2/StatefulPartitionedCall˘$block3_conv1/StatefulPartitionedCall˘$block3_conv2/StatefulPartitionedCall˘$block3_conv3/StatefulPartitionedCall˘$block4_conv1/StatefulPartitionedCall˘$block4_conv2/StatefulPartitionedCall˘$block4_conv3/StatefulPartitionedCall˘$block5_conv1/StatefulPartitionedCall˘$block5_conv2/StatefulPartitionedCall˘$block5_conv3/StatefulPartitionedCall
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_11block1_conv1_101283block1_conv1_101285*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block1_conv1_layer_call_and_return_conditional_losses_100634ą
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_101288block1_conv2_101290*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block1_conv2_layer_call_and_return_conditional_losses_100651í
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙pp@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block1_pool_layer_call_and_return_conditional_losses_100565§
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_101294block2_conv1_101296*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block2_conv1_layer_call_and_return_conditional_losses_100669°
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_101299block2_conv2_101301*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block2_conv2_layer_call_and_return_conditional_losses_100686î
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block2_pool_layer_call_and_return_conditional_losses_100577§
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_101305block3_conv1_101307*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block3_conv1_layer_call_and_return_conditional_losses_100704°
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_101310block3_conv2_101312*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block3_conv2_layer_call_and_return_conditional_losses_100721°
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_101315block3_conv3_101317*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block3_conv3_layer_call_and_return_conditional_losses_100738î
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_pool_layer_call_and_return_conditional_losses_100589§
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_101321block4_conv1_101323*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block4_conv1_layer_call_and_return_conditional_losses_100756°
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_101326block4_conv2_101328*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block4_conv2_layer_call_and_return_conditional_losses_100773°
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_101331block4_conv3_101333*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block4_conv3_layer_call_and_return_conditional_losses_100790î
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_pool_layer_call_and_return_conditional_losses_100601§
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_101337block5_conv1_101339*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block5_conv1_layer_call_and_return_conditional_losses_100808°
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_101342block5_conv2_101344*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block5_conv2_layer_call_and_return_conditional_losses_100825°
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_101347block5_conv3_101349*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block5_conv3_layer_call_and_return_conditional_losses_100842î
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_pool_layer_call_and_return_conditional_losses_100613|
IdentityIdentity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:[ W
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
"
_user_specified_name
input_11


H__inference_block5_conv3_layer_call_and_return_conditional_losses_103288

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ů
Ľ
-__inference_block3_conv2_layer_call_fn_103117

inputs#
unknown:
	unknown_0:	
identity˘StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block3_conv2_layer_call_and_return_conditional_losses_100721x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙88: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
 
_user_specified_nameinputs


H__inference_block4_conv3_layer_call_and_return_conditional_losses_100790

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

c
G__inference_block2_pool_layer_call_and_return_conditional_losses_100577

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ěV
Ľ
A__inference_vgg16_layer_call_and_return_conditional_losses_101168

inputs-
block1_conv1_101097:@!
block1_conv1_101099:@-
block1_conv2_101102:@@!
block1_conv2_101104:@.
block2_conv1_101108:@"
block2_conv1_101110:	/
block2_conv2_101113:"
block2_conv2_101115:	/
block3_conv1_101119:"
block3_conv1_101121:	/
block3_conv2_101124:"
block3_conv2_101126:	/
block3_conv3_101129:"
block3_conv3_101131:	/
block4_conv1_101135:"
block4_conv1_101137:	/
block4_conv2_101140:"
block4_conv2_101142:	/
block4_conv3_101145:"
block4_conv3_101147:	/
block5_conv1_101151:"
block5_conv1_101153:	/
block5_conv2_101156:"
block5_conv2_101158:	/
block5_conv3_101161:"
block5_conv3_101163:	
identity˘$block1_conv1/StatefulPartitionedCall˘$block1_conv2/StatefulPartitionedCall˘$block2_conv1/StatefulPartitionedCall˘$block2_conv2/StatefulPartitionedCall˘$block3_conv1/StatefulPartitionedCall˘$block3_conv2/StatefulPartitionedCall˘$block3_conv3/StatefulPartitionedCall˘$block4_conv1/StatefulPartitionedCall˘$block4_conv2/StatefulPartitionedCall˘$block4_conv3/StatefulPartitionedCall˘$block5_conv1/StatefulPartitionedCall˘$block5_conv2/StatefulPartitionedCall˘$block5_conv3/StatefulPartitionedCall
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_101097block1_conv1_101099*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block1_conv1_layer_call_and_return_conditional_losses_100634ą
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_101102block1_conv2_101104*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block1_conv2_layer_call_and_return_conditional_losses_100651í
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙pp@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block1_pool_layer_call_and_return_conditional_losses_100565§
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_101108block2_conv1_101110*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block2_conv1_layer_call_and_return_conditional_losses_100669°
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_101113block2_conv2_101115*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block2_conv2_layer_call_and_return_conditional_losses_100686î
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block2_pool_layer_call_and_return_conditional_losses_100577§
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_101119block3_conv1_101121*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block3_conv1_layer_call_and_return_conditional_losses_100704°
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_101124block3_conv2_101126*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block3_conv2_layer_call_and_return_conditional_losses_100721°
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_101129block3_conv3_101131*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block3_conv3_layer_call_and_return_conditional_losses_100738î
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_pool_layer_call_and_return_conditional_losses_100589§
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_101135block4_conv1_101137*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block4_conv1_layer_call_and_return_conditional_losses_100756°
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_101140block4_conv2_101142*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block4_conv2_layer_call_and_return_conditional_losses_100773°
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_101145block4_conv3_101147*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block4_conv3_layer_call_and_return_conditional_losses_100790î
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_pool_layer_call_and_return_conditional_losses_100601§
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_101151block5_conv1_101153*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block5_conv1_layer_call_and_return_conditional_losses_100808°
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_101156block5_conv2_101158*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block5_conv2_layer_call_and_return_conditional_losses_100825°
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_101161block5_conv3_101163*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block5_conv3_layer_call_and_return_conditional_losses_100842î
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_pool_layer_call_and_return_conditional_losses_100613|
IdentityIdentity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
 
_user_specified_nameinputs
ěV
Ľ
A__inference_vgg16_layer_call_and_return_conditional_losses_100850

inputs-
block1_conv1_100635:@!
block1_conv1_100637:@-
block1_conv2_100652:@@!
block1_conv2_100654:@.
block2_conv1_100670:@"
block2_conv1_100672:	/
block2_conv2_100687:"
block2_conv2_100689:	/
block3_conv1_100705:"
block3_conv1_100707:	/
block3_conv2_100722:"
block3_conv2_100724:	/
block3_conv3_100739:"
block3_conv3_100741:	/
block4_conv1_100757:"
block4_conv1_100759:	/
block4_conv2_100774:"
block4_conv2_100776:	/
block4_conv3_100791:"
block4_conv3_100793:	/
block5_conv1_100809:"
block5_conv1_100811:	/
block5_conv2_100826:"
block5_conv2_100828:	/
block5_conv3_100843:"
block5_conv3_100845:	
identity˘$block1_conv1/StatefulPartitionedCall˘$block1_conv2/StatefulPartitionedCall˘$block2_conv1/StatefulPartitionedCall˘$block2_conv2/StatefulPartitionedCall˘$block3_conv1/StatefulPartitionedCall˘$block3_conv2/StatefulPartitionedCall˘$block3_conv3/StatefulPartitionedCall˘$block4_conv1/StatefulPartitionedCall˘$block4_conv2/StatefulPartitionedCall˘$block4_conv3/StatefulPartitionedCall˘$block5_conv1/StatefulPartitionedCall˘$block5_conv2/StatefulPartitionedCall˘$block5_conv3/StatefulPartitionedCall
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_100635block1_conv1_100637*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block1_conv1_layer_call_and_return_conditional_losses_100634ą
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_100652block1_conv2_100654*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block1_conv2_layer_call_and_return_conditional_losses_100651í
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:˙˙˙˙˙˙˙˙˙pp@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block1_pool_layer_call_and_return_conditional_losses_100565§
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_100670block2_conv1_100672*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block2_conv1_layer_call_and_return_conditional_losses_100669°
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_100687block2_conv2_100689*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block2_conv2_layer_call_and_return_conditional_losses_100686î
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block2_pool_layer_call_and_return_conditional_losses_100577§
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_100705block3_conv1_100707*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block3_conv1_layer_call_and_return_conditional_losses_100704°
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_100722block3_conv2_100724*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block3_conv2_layer_call_and_return_conditional_losses_100721°
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_100739block3_conv3_100741*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block3_conv3_layer_call_and_return_conditional_losses_100738î
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block3_pool_layer_call_and_return_conditional_losses_100589§
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_100757block4_conv1_100759*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block4_conv1_layer_call_and_return_conditional_losses_100756°
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_100774block4_conv2_100776*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block4_conv2_layer_call_and_return_conditional_losses_100773°
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_100791block4_conv3_100793*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block4_conv3_layer_call_and_return_conditional_losses_100790î
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block4_pool_layer_call_and_return_conditional_losses_100601§
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_100809block5_conv1_100811*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block5_conv1_layer_call_and_return_conditional_losses_100808°
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_100826block5_conv2_100828*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block5_conv2_layer_call_and_return_conditional_losses_100825°
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_100843block5_conv3_100845*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block5_conv3_layer_call_and_return_conditional_losses_100842î
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_pool_layer_call_and_return_conditional_losses_100613|
IdentityIdentity$block5_pool/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
NoOpNoOp%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
 
_user_specified_nameinputs
đÎ
Ľ
"__inference__traced_restore_103631
file_prefix4
 assignvariableop_dense_30_kernel:
Ä2.
 assignvariableop_1_dense_30_bias:24
"assignvariableop_2_dense_31_kernel:2.
 assignvariableop_3_dense_31_bias:4
"assignvariableop_4_dense_32_kernel:.
 assignvariableop_5_dense_32_bias:@
&assignvariableop_6_block1_conv1_kernel:@2
$assignvariableop_7_block1_conv1_bias:@@
&assignvariableop_8_block1_conv2_kernel:@@2
$assignvariableop_9_block1_conv2_bias:@B
'assignvariableop_10_block2_conv1_kernel:@4
%assignvariableop_11_block2_conv1_bias:	C
'assignvariableop_12_block2_conv2_kernel:4
%assignvariableop_13_block2_conv2_bias:	C
'assignvariableop_14_block3_conv1_kernel:4
%assignvariableop_15_block3_conv1_bias:	C
'assignvariableop_16_block3_conv2_kernel:4
%assignvariableop_17_block3_conv2_bias:	C
'assignvariableop_18_block3_conv3_kernel:4
%assignvariableop_19_block3_conv3_bias:	C
'assignvariableop_20_block4_conv1_kernel:4
%assignvariableop_21_block4_conv1_bias:	C
'assignvariableop_22_block4_conv2_kernel:4
%assignvariableop_23_block4_conv2_bias:	C
'assignvariableop_24_block4_conv3_kernel:4
%assignvariableop_25_block4_conv3_bias:	C
'assignvariableop_26_block5_conv1_kernel:4
%assignvariableop_27_block5_conv1_bias:	C
'assignvariableop_28_block5_conv2_kernel:4
%assignvariableop_29_block5_conv2_bias:	C
'assignvariableop_30_block5_conv3_kernel:4
%assignvariableop_31_block5_conv3_bias:	'
assignvariableop_32_iteration:	 +
!assignvariableop_33_learning_rate: >
*assignvariableop_34_adam_m_dense_30_kernel:
Ä2>
*assignvariableop_35_adam_v_dense_30_kernel:
Ä26
(assignvariableop_36_adam_m_dense_30_bias:26
(assignvariableop_37_adam_v_dense_30_bias:2<
*assignvariableop_38_adam_m_dense_31_kernel:2<
*assignvariableop_39_adam_v_dense_31_kernel:26
(assignvariableop_40_adam_m_dense_31_bias:6
(assignvariableop_41_adam_v_dense_31_bias:<
*assignvariableop_42_adam_m_dense_32_kernel:<
*assignvariableop_43_adam_v_dense_32_kernel:6
(assignvariableop_44_adam_m_dense_32_bias:6
(assignvariableop_45_adam_v_dense_32_bias:%
assignvariableop_46_total_1: %
assignvariableop_47_count_1: #
assignvariableop_48_total: #
assignvariableop_49_count: 
identity_51˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_15˘AssignVariableOp_16˘AssignVariableOp_17˘AssignVariableOp_18˘AssignVariableOp_19˘AssignVariableOp_2˘AssignVariableOp_20˘AssignVariableOp_21˘AssignVariableOp_22˘AssignVariableOp_23˘AssignVariableOp_24˘AssignVariableOp_25˘AssignVariableOp_26˘AssignVariableOp_27˘AssignVariableOp_28˘AssignVariableOp_29˘AssignVariableOp_3˘AssignVariableOp_30˘AssignVariableOp_31˘AssignVariableOp_32˘AssignVariableOp_33˘AssignVariableOp_34˘AssignVariableOp_35˘AssignVariableOp_36˘AssignVariableOp_37˘AssignVariableOp_38˘AssignVariableOp_39˘AssignVariableOp_4˘AssignVariableOp_40˘AssignVariableOp_41˘AssignVariableOp_42˘AssignVariableOp_43˘AssignVariableOp_44˘AssignVariableOp_45˘AssignVariableOp_46˘AssignVariableOp_47˘AssignVariableOp_48˘AssignVariableOp_49˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*Ă
valuešBś3B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÖ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:3*
dtype0*y
valuepBn3B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B  
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*â
_output_shapesĎ
Ě:::::::::::::::::::::::::::::::::::::::::::::::::::*A
dtypes7
523	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:ł
AssignVariableOpAssignVariableOp assignvariableop_dense_30_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ˇ
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_30_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:š
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_31_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:ˇ
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_31_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:š
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_32_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ˇ
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_32_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:˝
AssignVariableOp_6AssignVariableOp&assignvariableop_6_block1_conv1_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ť
AssignVariableOp_7AssignVariableOp$assignvariableop_7_block1_conv1_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:˝
AssignVariableOp_8AssignVariableOp&assignvariableop_8_block1_conv2_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ť
AssignVariableOp_9AssignVariableOp$assignvariableop_9_block1_conv2_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_10AssignVariableOp'assignvariableop_10_block2_conv1_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_11AssignVariableOp%assignvariableop_11_block2_conv1_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_12AssignVariableOp'assignvariableop_12_block2_conv2_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_13AssignVariableOp%assignvariableop_13_block2_conv2_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_14AssignVariableOp'assignvariableop_14_block3_conv1_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_15AssignVariableOp%assignvariableop_15_block3_conv1_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_16AssignVariableOp'assignvariableop_16_block3_conv2_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_17AssignVariableOp%assignvariableop_17_block3_conv2_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_18AssignVariableOp'assignvariableop_18_block3_conv3_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_19AssignVariableOp%assignvariableop_19_block3_conv3_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_20AssignVariableOp'assignvariableop_20_block4_conv1_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_21AssignVariableOp%assignvariableop_21_block4_conv1_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_22AssignVariableOp'assignvariableop_22_block4_conv2_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_23AssignVariableOp%assignvariableop_23_block4_conv2_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_24AssignVariableOp'assignvariableop_24_block4_conv3_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_25AssignVariableOp%assignvariableop_25_block4_conv3_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_26AssignVariableOp'assignvariableop_26_block5_conv1_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_27AssignVariableOp%assignvariableop_27_block5_conv1_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_28AssignVariableOp'assignvariableop_28_block5_conv2_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_29AssignVariableOp%assignvariableop_29_block5_conv2_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ŕ
AssignVariableOp_30AssignVariableOp'assignvariableop_30_block5_conv3_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_31AssignVariableOp%assignvariableop_31_block5_conv3_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:ś
AssignVariableOp_32AssignVariableOpassignvariableop_32_iterationIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:ş
AssignVariableOp_33AssignVariableOp!assignvariableop_33_learning_rateIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ă
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_m_dense_30_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ă
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_v_dense_30_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_m_dense_30_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_v_dense_30_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ă
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_m_dense_31_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ă
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_v_dense_31_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_m_dense_31_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_v_dense_31_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ă
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_m_dense_32_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ă
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_v_dense_32_kernelIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_m_dense_32_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adam_v_dense_32_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_46AssignVariableOpassignvariableop_46_total_1Identity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_47AssignVariableOpassignvariableop_47_count_1Identity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_48AssignVariableOpassignvariableop_48_totalIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:˛
AssignVariableOp_49AssignVariableOpassignvariableop_49_countIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 	
Identity_50Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_51IdentityIdentity_50:output:0^NoOp_1*
T0*
_output_shapes
: 	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_51Identity_51:output:0*y
_input_shapesh
f: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ą
G
+__inference_dropout_11_layer_call_fn_102926

inputs
identityą
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_11_layer_call_and_return_conditional_losses_101518`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙2:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs


H__inference_block3_conv1_layer_call_and_return_conditional_losses_100704

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙88: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
 
_user_specified_nameinputs
ú
˘
-__inference_block1_conv2_layer_call_fn_103017

inputs!
unknown:@@
	unknown_0:@
identity˘StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_block1_conv2_layer_call_and_return_conditional_losses_100651y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙ŕŕ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@
 
_user_specified_nameinputs


H__inference_block5_conv1_layer_call_and_return_conditional_losses_100808

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
°
H
,__inference_block2_pool_layer_call_fn_103083

inputs
identityŐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block2_pool_layer_call_and_return_conditional_losses_100577
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


H__inference_block4_conv1_layer_call_and_return_conditional_losses_103178

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Â

)__inference_dense_31_layer_call_fn_102957

inputs
unknown:2
	unknown_0:
identity˘StatefulPartitionedCallŮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_101531o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
 
_user_specified_nameinputs
°
H
,__inference_block5_pool_layer_call_fn_103293

inputs
identityŐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_block5_pool_layer_call_and_return_conditional_losses_100613
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ä
.__inference_sequential_18_layer_call_fn_102321

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:
Ä2

unknown_26:2

unknown_27:2

unknown_28:

unknown_29:

unknown_30:
identity˘StatefulPartitionedCallů
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_101826o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
 
_user_specified_nameinputs

c
G__inference_block1_pool_layer_call_and_return_conditional_losses_100565

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

c
G__inference_block5_pool_layer_call_and_return_conditional_losses_103298

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
°
ö
A__inference_vgg16_layer_call_and_return_conditional_losses_102890

inputsE
+block1_conv1_conv2d_readvariableop_resource:@:
,block1_conv1_biasadd_readvariableop_resource:@E
+block1_conv2_conv2d_readvariableop_resource:@@:
,block1_conv2_biasadd_readvariableop_resource:@F
+block2_conv1_conv2d_readvariableop_resource:@;
,block2_conv1_biasadd_readvariableop_resource:	G
+block2_conv2_conv2d_readvariableop_resource:;
,block2_conv2_biasadd_readvariableop_resource:	G
+block3_conv1_conv2d_readvariableop_resource:;
,block3_conv1_biasadd_readvariableop_resource:	G
+block3_conv2_conv2d_readvariableop_resource:;
,block3_conv2_biasadd_readvariableop_resource:	G
+block3_conv3_conv2d_readvariableop_resource:;
,block3_conv3_biasadd_readvariableop_resource:	G
+block4_conv1_conv2d_readvariableop_resource:;
,block4_conv1_biasadd_readvariableop_resource:	G
+block4_conv2_conv2d_readvariableop_resource:;
,block4_conv2_biasadd_readvariableop_resource:	G
+block4_conv3_conv2d_readvariableop_resource:;
,block4_conv3_biasadd_readvariableop_resource:	G
+block5_conv1_conv2d_readvariableop_resource:;
,block5_conv1_biasadd_readvariableop_resource:	G
+block5_conv2_conv2d_readvariableop_resource:;
,block5_conv2_biasadd_readvariableop_resource:	G
+block5_conv3_conv2d_readvariableop_resource:;
,block5_conv3_biasadd_readvariableop_resource:	
identity˘#block1_conv1/BiasAdd/ReadVariableOp˘"block1_conv1/Conv2D/ReadVariableOp˘#block1_conv2/BiasAdd/ReadVariableOp˘"block1_conv2/Conv2D/ReadVariableOp˘#block2_conv1/BiasAdd/ReadVariableOp˘"block2_conv1/Conv2D/ReadVariableOp˘#block2_conv2/BiasAdd/ReadVariableOp˘"block2_conv2/Conv2D/ReadVariableOp˘#block3_conv1/BiasAdd/ReadVariableOp˘"block3_conv1/Conv2D/ReadVariableOp˘#block3_conv2/BiasAdd/ReadVariableOp˘"block3_conv2/Conv2D/ReadVariableOp˘#block3_conv3/BiasAdd/ReadVariableOp˘"block3_conv3/Conv2D/ReadVariableOp˘#block4_conv1/BiasAdd/ReadVariableOp˘"block4_conv1/Conv2D/ReadVariableOp˘#block4_conv2/BiasAdd/ReadVariableOp˘"block4_conv2/Conv2D/ReadVariableOp˘#block4_conv3/BiasAdd/ReadVariableOp˘"block4_conv3/Conv2D/ReadVariableOp˘#block5_conv1/BiasAdd/ReadVariableOp˘"block5_conv1/Conv2D/ReadVariableOp˘#block5_conv2/BiasAdd/ReadVariableOp˘"block5_conv2/Conv2D/ReadVariableOp˘#block5_conv3/BiasAdd/ReadVariableOp˘"block5_conv3/Conv2D/ReadVariableOp
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ľ
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*
paddingSAME*
strides

#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ś
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@t
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Î
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*
paddingSAME*
strides

#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ś
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@t
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@Ź
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙pp@*
ksize
*
paddingVALID*
strides

"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ę
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*
paddingSAME*
strides

#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pps
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp*
paddingSAME*
strides

#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pps
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙pp­
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
ksize
*
paddingVALID*
strides

"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ę
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides

#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88s
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides

#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88s
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides

#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88s
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88­
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides

"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ę
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙s
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙s
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙s
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙­
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides

"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ę
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙s
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙s
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Í
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
paddingSAME*
strides

#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ľ
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙s
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙­
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
t
IdentityIdentityblock5_pool/MaxPool:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : 2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
 
_user_specified_nameinputs


H__inference_block1_conv1_layer_call_and_return_conditional_losses_100634

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:˙˙˙˙˙˙˙˙˙ŕŕ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
 
_user_specified_nameinputs


H__inference_block3_conv2_layer_call_and_return_conditional_losses_100721

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙88: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
 
_user_specified_nameinputs


H__inference_block3_conv2_layer_call_and_return_conditional_losses_103128

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙88w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :˙˙˙˙˙˙˙˙˙88: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:˙˙˙˙˙˙˙˙˙88
 
_user_specified_nameinputs

c
G__inference_block3_pool_layer_call_and_return_conditional_losses_100589

inputs
identity˘
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:r n
J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ţ
´
&__inference_vgg16_layer_call_fn_100905
input_11!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	%
	unknown_9:

unknown_10:	&

unknown_11:

unknown_12:	&

unknown_13:

unknown_14:	&

unknown_15:

unknown_16:	&

unknown_17:

unknown_18:	&

unknown_19:

unknown_20:	&

unknown_21:

unknown_22:	&

unknown_23:

unknown_24:	
identity˘StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_vgg16_layer_call_and_return_conditional_losses_100850x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:˙˙˙˙˙˙˙˙˙ŕŕ: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:˙˙˙˙˙˙˙˙˙ŕŕ
"
_user_specified_name
input_11"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*˝
serving_defaultŠ
M
vgg16_input>
serving_default_vgg16_input:0˙˙˙˙˙˙˙˙˙ŕŕ<
dense_320
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:¨

layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
ü
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
layer_with_weights-6
layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
 layer_with_weights-11
 layer-16
!layer_with_weights-12
!layer-17
"layer-18
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_network
Ľ
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
ť
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias"
_tf_keras_layer
ź
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses
=_random_generator"
_tf_keras_layer
ť
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias"
_tf_keras_layer
ť
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias"
_tf_keras_layer

N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
Z12
[13
\14
]15
^16
_17
`18
a19
b20
c21
d22
e23
f24
g25
526
627
D28
E29
L30
M31"
trackable_list_wrapper
J
50
61
D2
E3
L4
M5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ę
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
í
mtrace_0
ntrace_1
otrace_2
ptrace_32
.__inference_sequential_18_layer_call_fn_101622
.__inference_sequential_18_layer_call_fn_102252
.__inference_sequential_18_layer_call_fn_102321
.__inference_sequential_18_layer_call_fn_101962ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zmtrace_0zntrace_1zotrace_2zptrace_3
Ů
qtrace_0
rtrace_1
strace_2
ttrace_32î
I__inference_sequential_18_layer_call_and_return_conditional_losses_102445
I__inference_sequential_18_layer_call_and_return_conditional_losses_102576
I__inference_sequential_18_layer_call_and_return_conditional_losses_102036
I__inference_sequential_18_layer_call_and_return_conditional_losses_102110ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zqtrace_0zrtrace_1zstrace_2zttrace_3
ĐBÍ
!__inference__wrapped_model_100556vgg16_input"
˛
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 

u
_variables
v_iterations
w_learning_rate
x_index_dict
y
_momentums
z_velocities
{_update_step_xla"
experimentalOptimizer
,
|serving_default"
signature_map
"
_tf_keras_input_layer
á
}	variables
~trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Nkernel
Obias
!_jit_compiled_convolution_op"
_tf_keras_layer
ä
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Pkernel
Qbias
!_jit_compiled_convolution_op"
_tf_keras_layer
Ť
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ä
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Rkernel
Sbias
!_jit_compiled_convolution_op"
_tf_keras_layer
ä
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Tkernel
Ubias
!_jit_compiled_convolution_op"
_tf_keras_layer
Ť
	variables
 trainable_variables
Ąregularization_losses
˘	keras_api
Ł__call__
+¤&call_and_return_all_conditional_losses"
_tf_keras_layer
ä
Ľ	variables
Śtrainable_variables
§regularization_losses
¨	keras_api
Š__call__
+Ş&call_and_return_all_conditional_losses

Vkernel
Wbias
!Ť_jit_compiled_convolution_op"
_tf_keras_layer
ä
Ź	variables
­trainable_variables
Žregularization_losses
Ż	keras_api
°__call__
+ą&call_and_return_all_conditional_losses

Xkernel
Ybias
!˛_jit_compiled_convolution_op"
_tf_keras_layer
ä
ł	variables
´trainable_variables
ľregularization_losses
ś	keras_api
ˇ__call__
+¸&call_and_return_all_conditional_losses

Zkernel
[bias
!š_jit_compiled_convolution_op"
_tf_keras_layer
Ť
ş	variables
ťtrainable_variables
źregularization_losses
˝	keras_api
ž__call__
+ż&call_and_return_all_conditional_losses"
_tf_keras_layer
ä
Ŕ	variables
Átrainable_variables
Âregularization_losses
Ă	keras_api
Ä__call__
+Ĺ&call_and_return_all_conditional_losses

\kernel
]bias
!Ć_jit_compiled_convolution_op"
_tf_keras_layer
ä
Ç	variables
Čtrainable_variables
Éregularization_losses
Ę	keras_api
Ë__call__
+Ě&call_and_return_all_conditional_losses

^kernel
_bias
!Í_jit_compiled_convolution_op"
_tf_keras_layer
ä
Î	variables
Ďtrainable_variables
Đregularization_losses
Ń	keras_api
Ň__call__
+Ó&call_and_return_all_conditional_losses

`kernel
abias
!Ô_jit_compiled_convolution_op"
_tf_keras_layer
Ť
Ő	variables
Ötrainable_variables
×regularization_losses
Ř	keras_api
Ů__call__
+Ú&call_and_return_all_conditional_losses"
_tf_keras_layer
ä
Ű	variables
Ütrainable_variables
Ýregularization_losses
Ţ	keras_api
ß__call__
+ŕ&call_and_return_all_conditional_losses

bkernel
cbias
!á_jit_compiled_convolution_op"
_tf_keras_layer
ä
â	variables
ătrainable_variables
äregularization_losses
ĺ	keras_api
ć__call__
+ç&call_and_return_all_conditional_losses

dkernel
ebias
!č_jit_compiled_convolution_op"
_tf_keras_layer
ä
é	variables
ętrainable_variables
ëregularization_losses
ě	keras_api
í__call__
+î&call_and_return_all_conditional_losses

fkernel
gbias
!ď_jit_compiled_convolution_op"
_tf_keras_layer
Ť
đ	variables
ńtrainable_variables
ňregularization_losses
ó	keras_api
ô__call__
+ő&call_and_return_all_conditional_losses"
_tf_keras_layer
ć
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
Z12
[13
\14
]15
^16
_17
`18
a19
b20
c21
d22
e23
f24
g25"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
önon_trainable_variables
÷layers
řmetrics
 ůlayer_regularization_losses
úlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
Ő
űtrace_0
ütrace_1
ýtrace_2
ţtrace_32â
&__inference_vgg16_layer_call_fn_100905
&__inference_vgg16_layer_call_fn_102633
&__inference_vgg16_layer_call_fn_102690
&__inference_vgg16_layer_call_fn_101280ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zűtrace_0zütrace_1zýtrace_2zţtrace_3
Á
˙trace_0
trace_1
trace_2
trace_32Î
A__inference_vgg16_layer_call_and_return_conditional_losses_102790
A__inference_vgg16_layer_call_and_return_conditional_losses_102890
A__inference_vgg16_layer_call_and_return_conditional_losses_101354
A__inference_vgg16_layer_call_and_return_conditional_losses_101428ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z˙trace_0ztrace_1ztrace_2ztrace_3
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
ń
trace_02Ň
+__inference_flatten_10_layer_call_fn_102895˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0

trace_02í
F__inference_flatten_10_layer_call_and_return_conditional_losses_102901˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
ď
trace_02Đ
)__inference_dense_30_layer_call_fn_102910˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0

trace_02ë
D__inference_dense_30_layer_call_and_return_conditional_losses_102921˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
#:!
Ä22dense_30/kernel
:22dense_30/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
Ë
trace_0
trace_12
+__inference_dropout_11_layer_call_fn_102926
+__inference_dropout_11_layer_call_fn_102931ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1

trace_0
trace_12Ć
F__inference_dropout_11_layer_call_and_return_conditional_losses_102936
F__inference_dropout_11_layer_call_and_return_conditional_losses_102948ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1
"
_generic_user_object
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
ď
trace_02Đ
)__inference_dense_31_layer_call_fn_102957˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0

 trace_02ë
D__inference_dense_31_layer_call_and_return_conditional_losses_102968˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z trace_0
!:22dense_31/kernel
:2dense_31/bias
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Ąnon_trainable_variables
˘layers
Łmetrics
 ¤layer_regularization_losses
Ľlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
ď
Śtrace_02Đ
)__inference_dense_32_layer_call_fn_102977˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŚtrace_0

§trace_02ë
D__inference_dense_32_layer_call_and_return_conditional_losses_102988˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z§trace_0
!:2dense_32/kernel
:2dense_32/bias
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
.:,@2block2_conv1/kernel
 :2block2_conv1/bias
/:-2block2_conv2/kernel
 :2block2_conv2/bias
/:-2block3_conv1/kernel
 :2block3_conv1/bias
/:-2block3_conv2/kernel
 :2block3_conv2/bias
/:-2block3_conv3/kernel
 :2block3_conv3/bias
/:-2block4_conv1/kernel
 :2block4_conv1/bias
/:-2block4_conv2/kernel
 :2block4_conv2/bias
/:-2block4_conv3/kernel
 :2block4_conv3/bias
/:-2block5_conv1/kernel
 :2block5_conv1/bias
/:-2block5_conv2/kernel
 :2block5_conv2/bias
/:-2block5_conv3/kernel
 :2block5_conv3/bias
ć
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
Z12
[13
\14
]15
^16
_17
`18
a19
b20
c21
d22
e23
f24
g25"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
0
¨0
Š1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
.__inference_sequential_18_layer_call_fn_101622vgg16_input"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
˙Bü
.__inference_sequential_18_layer_call_fn_102252inputs"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
˙Bü
.__inference_sequential_18_layer_call_fn_102321inputs"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
.__inference_sequential_18_layer_call_fn_101962vgg16_input"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
I__inference_sequential_18_layer_call_and_return_conditional_losses_102445inputs"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
I__inference_sequential_18_layer_call_and_return_conditional_losses_102576inputs"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
I__inference_sequential_18_layer_call_and_return_conditional_losses_102036vgg16_input"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
I__inference_sequential_18_layer_call_and_return_conditional_losses_102110vgg16_input"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 

v0
Ş1
Ť2
Ź3
­4
Ž5
Ż6
°7
ą8
˛9
ł10
´11
ľ12"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
P
Ş0
Ź1
Ž2
°3
˛4
´5"
trackable_list_wrapper
P
Ť0
­1
Ż2
ą3
ł4
ľ5"
trackable_list_wrapper
ż2źš
Ž˛Ş
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
ĎBĚ
$__inference_signature_wrapper_102183vgg16_input"
˛
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ľ
śnon_trainable_variables
ˇlayers
¸metrics
 šlayer_regularization_losses
şlayer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ó
ťtrace_02Ô
-__inference_block1_conv1_layer_call_fn_102997˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zťtrace_0

źtrace_02ď
H__inference_block1_conv1_layer_call_and_return_conditional_losses_103008˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zźtrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
˝non_trainable_variables
žlayers
żmetrics
 Ŕlayer_regularization_losses
Álayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ó
Âtrace_02Ô
-__inference_block1_conv2_layer_call_fn_103017˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zÂtrace_0

Ătrace_02ď
H__inference_block1_conv2_layer_call_and_return_conditional_losses_103028˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zĂtrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Änon_trainable_variables
Ĺlayers
Ćmetrics
 Çlayer_regularization_losses
Člayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ň
Étrace_02Ó
,__inference_block1_pool_layer_call_fn_103033˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zÉtrace_0

Ętrace_02î
G__inference_block1_pool_layer_call_and_return_conditional_losses_103038˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zĘtrace_0
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ënon_trainable_variables
Ělayers
Ímetrics
 Îlayer_regularization_losses
Ďlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ó
Đtrace_02Ô
-__inference_block2_conv1_layer_call_fn_103047˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zĐtrace_0

Ńtrace_02ď
H__inference_block2_conv1_layer_call_and_return_conditional_losses_103058˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŃtrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ňnon_trainable_variables
Ólayers
Ômetrics
 Őlayer_regularization_losses
Ölayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ó
×trace_02Ô
-__inference_block2_conv2_layer_call_fn_103067˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z×trace_0

Řtrace_02ď
H__inference_block2_conv2_layer_call_and_return_conditional_losses_103078˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŘtrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ůnon_trainable_variables
Úlayers
Űmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
	variables
 trainable_variables
Ąregularization_losses
Ł__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
ň
Ţtrace_02Ó
,__inference_block2_pool_layer_call_fn_103083˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŢtrace_0

ßtrace_02î
G__inference_block2_pool_layer_call_and_return_conditional_losses_103088˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zßtrace_0
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ŕnon_trainable_variables
álayers
âmetrics
 ălayer_regularization_losses
älayer_metrics
Ľ	variables
Śtrainable_variables
§regularization_losses
Š__call__
+Ş&call_and_return_all_conditional_losses
'Ş"call_and_return_conditional_losses"
_generic_user_object
ó
ĺtrace_02Ô
-__inference_block3_conv1_layer_call_fn_103097˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zĺtrace_0

ćtrace_02ď
H__inference_block3_conv1_layer_call_and_return_conditional_losses_103108˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zćtrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
çnon_trainable_variables
člayers
émetrics
 ęlayer_regularization_losses
ëlayer_metrics
Ź	variables
­trainable_variables
Žregularization_losses
°__call__
+ą&call_and_return_all_conditional_losses
'ą"call_and_return_conditional_losses"
_generic_user_object
ó
ětrace_02Ô
-__inference_block3_conv2_layer_call_fn_103117˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zětrace_0

ítrace_02ď
H__inference_block3_conv2_layer_call_and_return_conditional_losses_103128˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zítrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
înon_trainable_variables
ďlayers
đmetrics
 ńlayer_regularization_losses
ňlayer_metrics
ł	variables
´trainable_variables
ľregularization_losses
ˇ__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses"
_generic_user_object
ó
ótrace_02Ô
-__inference_block3_conv3_layer_call_fn_103137˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zótrace_0

ôtrace_02ď
H__inference_block3_conv3_layer_call_and_return_conditional_losses_103148˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zôtrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
őnon_trainable_variables
ölayers
÷metrics
 řlayer_regularization_losses
ůlayer_metrics
ş	variables
ťtrainable_variables
źregularization_losses
ž__call__
+ż&call_and_return_all_conditional_losses
'ż"call_and_return_conditional_losses"
_generic_user_object
ň
útrace_02Ó
,__inference_block3_pool_layer_call_fn_103153˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zútrace_0

űtrace_02î
G__inference_block3_pool_layer_call_and_return_conditional_losses_103158˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zűtrace_0
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ünon_trainable_variables
ýlayers
ţmetrics
 ˙layer_regularization_losses
layer_metrics
Ŕ	variables
Átrainable_variables
Âregularization_losses
Ä__call__
+Ĺ&call_and_return_all_conditional_losses
'Ĺ"call_and_return_conditional_losses"
_generic_user_object
ó
trace_02Ô
-__inference_block4_conv1_layer_call_fn_103167˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0

trace_02ď
H__inference_block4_conv1_layer_call_and_return_conditional_losses_103178˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ç	variables
Čtrainable_variables
Éregularization_losses
Ë__call__
+Ě&call_and_return_all_conditional_losses
'Ě"call_and_return_conditional_losses"
_generic_user_object
ó
trace_02Ô
-__inference_block4_conv2_layer_call_fn_103187˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0

trace_02ď
H__inference_block4_conv2_layer_call_and_return_conditional_losses_103198˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Î	variables
Ďtrainable_variables
Đregularization_losses
Ň__call__
+Ó&call_and_return_all_conditional_losses
'Ó"call_and_return_conditional_losses"
_generic_user_object
ó
trace_02Ô
-__inference_block4_conv3_layer_call_fn_103207˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0

trace_02ď
H__inference_block4_conv3_layer_call_and_return_conditional_losses_103218˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ő	variables
Ötrainable_variables
×regularization_losses
Ů__call__
+Ú&call_and_return_all_conditional_losses
'Ú"call_and_return_conditional_losses"
_generic_user_object
ň
trace_02Ó
,__inference_block4_pool_layer_call_fn_103223˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0

trace_02î
G__inference_block4_pool_layer_call_and_return_conditional_losses_103228˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ű	variables
Ütrainable_variables
Ýregularization_losses
ß__call__
+ŕ&call_and_return_all_conditional_losses
'ŕ"call_and_return_conditional_losses"
_generic_user_object
ó
trace_02Ô
-__inference_block5_conv1_layer_call_fn_103237˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0

trace_02ď
H__inference_block5_conv1_layer_call_and_return_conditional_losses_103248˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
 layers
Ąmetrics
 ˘layer_regularization_losses
Łlayer_metrics
â	variables
ătrainable_variables
äregularization_losses
ć__call__
+ç&call_and_return_all_conditional_losses
'ç"call_and_return_conditional_losses"
_generic_user_object
ó
¤trace_02Ô
-__inference_block5_conv2_layer_call_fn_103257˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z¤trace_0

Ľtrace_02ď
H__inference_block5_conv2_layer_call_and_return_conditional_losses_103268˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zĽtrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Śnon_trainable_variables
§layers
¨metrics
 Šlayer_regularization_losses
Şlayer_metrics
é	variables
ętrainable_variables
ëregularization_losses
í__call__
+î&call_and_return_all_conditional_losses
'î"call_and_return_conditional_losses"
_generic_user_object
ó
Ťtrace_02Ô
-__inference_block5_conv3_layer_call_fn_103277˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŤtrace_0

Źtrace_02ď
H__inference_block5_conv3_layer_call_and_return_conditional_losses_103288˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŹtrace_0
´2ąŽ
Ł˛
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
­non_trainable_variables
Žlayers
Żmetrics
 °layer_regularization_losses
ąlayer_metrics
đ	variables
ńtrainable_variables
ňregularization_losses
ô__call__
+ő&call_and_return_all_conditional_losses
'ő"call_and_return_conditional_losses"
_generic_user_object
ň
˛trace_02Ó
,__inference_block5_pool_layer_call_fn_103293˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z˛trace_0

łtrace_02î
G__inference_block5_pool_layer_call_and_return_conditional_losses_103298˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 złtrace_0
ć
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
Z12
[13
\14
]15
^16
_17
`18
a19
b20
c21
d22
e23
f24
g25"
trackable_list_wrapper
Ž
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
 16
!17
"18"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ůBö
&__inference_vgg16_layer_call_fn_100905input_11"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
÷Bô
&__inference_vgg16_layer_call_fn_102633inputs"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
÷Bô
&__inference_vgg16_layer_call_fn_102690inputs"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
&__inference_vgg16_layer_call_fn_101280input_11"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
A__inference_vgg16_layer_call_and_return_conditional_losses_102790inputs"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
A__inference_vgg16_layer_call_and_return_conditional_losses_102890inputs"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
A__inference_vgg16_layer_call_and_return_conditional_losses_101354input_11"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
A__inference_vgg16_layer_call_and_return_conditional_losses_101428input_11"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ßBÜ
+__inference_flatten_10_layer_call_fn_102895inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
úB÷
F__inference_flatten_10_layer_call_and_return_conditional_losses_102901inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÝBÚ
)__inference_dense_30_layer_call_fn_102910inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
řBő
D__inference_dense_30_layer_call_and_return_conditional_losses_102921inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
đBí
+__inference_dropout_11_layer_call_fn_102926inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
đBí
+__inference_dropout_11_layer_call_fn_102931inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
F__inference_dropout_11_layer_call_and_return_conditional_losses_102936inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
F__inference_dropout_11_layer_call_and_return_conditional_losses_102948inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÝBÚ
)__inference_dense_31_layer_call_fn_102957inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
řBő
D__inference_dense_31_layer_call_and_return_conditional_losses_102968inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÝBÚ
)__inference_dense_32_layer_call_fn_102977inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
řBő
D__inference_dense_32_layer_call_and_return_conditional_losses_102988inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
R
´	variables
ľ	keras_api

śtotal

ˇcount"
_tf_keras_metric
c
¸	variables
š	keras_api

ştotal

ťcount
ź
_fn_kwargs"
_tf_keras_metric
(:&
Ä22Adam/m/dense_30/kernel
(:&
Ä22Adam/v/dense_30/kernel
 :22Adam/m/dense_30/bias
 :22Adam/v/dense_30/bias
&:$22Adam/m/dense_31/kernel
&:$22Adam/v/dense_31/kernel
 :2Adam/m/dense_31/bias
 :2Adam/v/dense_31/bias
&:$2Adam/m/dense_32/kernel
&:$2Adam/v/dense_32/kernel
 :2Adam/m/dense_32/bias
 :2Adam/v/dense_32/bias
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŢ
-__inference_block1_conv1_layer_call_fn_102997inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
üBů
H__inference_block1_conv1_layer_call_and_return_conditional_losses_103008inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŢ
-__inference_block1_conv2_layer_call_fn_103017inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
üBů
H__inference_block1_conv2_layer_call_and_return_conditional_losses_103028inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŕBÝ
,__inference_block1_pool_layer_call_fn_103033inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
űBř
G__inference_block1_pool_layer_call_and_return_conditional_losses_103038inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŢ
-__inference_block2_conv1_layer_call_fn_103047inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
üBů
H__inference_block2_conv1_layer_call_and_return_conditional_losses_103058inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŢ
-__inference_block2_conv2_layer_call_fn_103067inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
üBů
H__inference_block2_conv2_layer_call_and_return_conditional_losses_103078inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŕBÝ
,__inference_block2_pool_layer_call_fn_103083inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
űBř
G__inference_block2_pool_layer_call_and_return_conditional_losses_103088inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŢ
-__inference_block3_conv1_layer_call_fn_103097inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
üBů
H__inference_block3_conv1_layer_call_and_return_conditional_losses_103108inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŢ
-__inference_block3_conv2_layer_call_fn_103117inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
üBů
H__inference_block3_conv2_layer_call_and_return_conditional_losses_103128inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŢ
-__inference_block3_conv3_layer_call_fn_103137inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
üBů
H__inference_block3_conv3_layer_call_and_return_conditional_losses_103148inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŕBÝ
,__inference_block3_pool_layer_call_fn_103153inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
űBř
G__inference_block3_pool_layer_call_and_return_conditional_losses_103158inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŢ
-__inference_block4_conv1_layer_call_fn_103167inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
üBů
H__inference_block4_conv1_layer_call_and_return_conditional_losses_103178inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŢ
-__inference_block4_conv2_layer_call_fn_103187inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
üBů
H__inference_block4_conv2_layer_call_and_return_conditional_losses_103198inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŢ
-__inference_block4_conv3_layer_call_fn_103207inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
üBů
H__inference_block4_conv3_layer_call_and_return_conditional_losses_103218inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŕBÝ
,__inference_block4_pool_layer_call_fn_103223inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
űBř
G__inference_block4_pool_layer_call_and_return_conditional_losses_103228inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŢ
-__inference_block5_conv1_layer_call_fn_103237inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
üBů
H__inference_block5_conv1_layer_call_and_return_conditional_losses_103248inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŢ
-__inference_block5_conv2_layer_call_fn_103257inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
üBů
H__inference_block5_conv2_layer_call_and_return_conditional_losses_103268inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
áBŢ
-__inference_block5_conv3_layer_call_fn_103277inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
üBů
H__inference_block5_conv3_layer_call_and_return_conditional_losses_103288inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŕBÝ
,__inference_block5_pool_layer_call_fn_103293inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
űBř
G__inference_block5_pool_layer_call_and_return_conditional_losses_103298inputs"˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
0
ś0
ˇ1"
trackable_list_wrapper
.
´	variables"
_generic_user_object
:  (2total
:  (2count
0
ş0
ť1"
trackable_list_wrapper
.
¸	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper˝
!__inference__wrapped_model_100556 NOPQRSTUVWXYZ[\]^_`abcdefg56DELM>˘;
4˘1
/,
vgg16_input˙˙˙˙˙˙˙˙˙ŕŕ
Ş "3Ş0
.
dense_32"
dense_32˙˙˙˙˙˙˙˙˙Ă
H__inference_block1_conv1_layer_call_and_return_conditional_losses_103008wNO9˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙ŕŕ
Ş "6˘3
,)
tensor_0˙˙˙˙˙˙˙˙˙ŕŕ@
 
-__inference_block1_conv1_layer_call_fn_102997lNO9˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙ŕŕ
Ş "+(
unknown˙˙˙˙˙˙˙˙˙ŕŕ@Ă
H__inference_block1_conv2_layer_call_and_return_conditional_losses_103028wPQ9˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙ŕŕ@
Ş "6˘3
,)
tensor_0˙˙˙˙˙˙˙˙˙ŕŕ@
 
-__inference_block1_conv2_layer_call_fn_103017lPQ9˘6
/˘,
*'
inputs˙˙˙˙˙˙˙˙˙ŕŕ@
Ş "+(
unknown˙˙˙˙˙˙˙˙˙ŕŕ@ń
G__inference_block1_pool_layer_call_and_return_conditional_losses_103038ĽR˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "O˘L
EB
tensor_04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ë
,__inference_block1_pool_layer_call_fn_103033R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "DA
unknown4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ŕ
H__inference_block2_conv1_layer_call_and_return_conditional_losses_103058tRS7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙pp@
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙pp
 
-__inference_block2_conv1_layer_call_fn_103047iRS7˘4
-˘*
(%
inputs˙˙˙˙˙˙˙˙˙pp@
Ş "*'
unknown˙˙˙˙˙˙˙˙˙ppÁ
H__inference_block2_conv2_layer_call_and_return_conditional_losses_103078uTU8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙pp
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙pp
 
-__inference_block2_conv2_layer_call_fn_103067jTU8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙pp
Ş "*'
unknown˙˙˙˙˙˙˙˙˙ppń
G__inference_block2_pool_layer_call_and_return_conditional_losses_103088ĽR˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "O˘L
EB
tensor_04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ë
,__inference_block2_pool_layer_call_fn_103083R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "DA
unknown4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Á
H__inference_block3_conv1_layer_call_and_return_conditional_losses_103108uVW8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙88
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙88
 
-__inference_block3_conv1_layer_call_fn_103097jVW8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙88
Ş "*'
unknown˙˙˙˙˙˙˙˙˙88Á
H__inference_block3_conv2_layer_call_and_return_conditional_losses_103128uXY8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙88
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙88
 
-__inference_block3_conv2_layer_call_fn_103117jXY8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙88
Ş "*'
unknown˙˙˙˙˙˙˙˙˙88Á
H__inference_block3_conv3_layer_call_and_return_conditional_losses_103148uZ[8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙88
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙88
 
-__inference_block3_conv3_layer_call_fn_103137jZ[8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙88
Ş "*'
unknown˙˙˙˙˙˙˙˙˙88ń
G__inference_block3_pool_layer_call_and_return_conditional_losses_103158ĽR˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "O˘L
EB
tensor_04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ë
,__inference_block3_pool_layer_call_fn_103153R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "DA
unknown4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Á
H__inference_block4_conv1_layer_call_and_return_conditional_losses_103178u\]8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙
 
-__inference_block4_conv1_layer_call_fn_103167j\]8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙
Ş "*'
unknown˙˙˙˙˙˙˙˙˙Á
H__inference_block4_conv2_layer_call_and_return_conditional_losses_103198u^_8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙
 
-__inference_block4_conv2_layer_call_fn_103187j^_8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙
Ş "*'
unknown˙˙˙˙˙˙˙˙˙Á
H__inference_block4_conv3_layer_call_and_return_conditional_losses_103218u`a8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙
 
-__inference_block4_conv3_layer_call_fn_103207j`a8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙
Ş "*'
unknown˙˙˙˙˙˙˙˙˙ń
G__inference_block4_pool_layer_call_and_return_conditional_losses_103228ĽR˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "O˘L
EB
tensor_04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ë
,__inference_block4_pool_layer_call_fn_103223R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "DA
unknown4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Á
H__inference_block5_conv1_layer_call_and_return_conditional_losses_103248ubc8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙
 
-__inference_block5_conv1_layer_call_fn_103237jbc8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙
Ş "*'
unknown˙˙˙˙˙˙˙˙˙Á
H__inference_block5_conv2_layer_call_and_return_conditional_losses_103268ude8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙
 
-__inference_block5_conv2_layer_call_fn_103257jde8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙
Ş "*'
unknown˙˙˙˙˙˙˙˙˙Á
H__inference_block5_conv3_layer_call_and_return_conditional_losses_103288ufg8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙
 
-__inference_block5_conv3_layer_call_fn_103277jfg8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙
Ş "*'
unknown˙˙˙˙˙˙˙˙˙ń
G__inference_block5_pool_layer_call_and_return_conditional_losses_103298ĽR˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "O˘L
EB
tensor_04˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 Ë
,__inference_block5_pool_layer_call_fn_103293R˘O
H˘E
C@
inputs4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ş "DA
unknown4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙­
D__inference_dense_30_layer_call_and_return_conditional_losses_102921e561˘.
'˘$
"
inputs˙˙˙˙˙˙˙˙˙Ä
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙2
 
)__inference_dense_30_layer_call_fn_102910Z561˘.
'˘$
"
inputs˙˙˙˙˙˙˙˙˙Ä
Ş "!
unknown˙˙˙˙˙˙˙˙˙2Ť
D__inference_dense_31_layer_call_and_return_conditional_losses_102968cDE/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙2
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 
)__inference_dense_31_layer_call_fn_102957XDE/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙2
Ş "!
unknown˙˙˙˙˙˙˙˙˙Ť
D__inference_dense_32_layer_call_and_return_conditional_losses_102988cLM/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 
)__inference_dense_32_layer_call_fn_102977XLM/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş "!
unknown˙˙˙˙˙˙˙˙˙­
F__inference_dropout_11_layer_call_and_return_conditional_losses_102936c3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙2
p 
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙2
 ­
F__inference_dropout_11_layer_call_and_return_conditional_losses_102948c3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙2
p
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙2
 
+__inference_dropout_11_layer_call_fn_102926X3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙2
p 
Ş "!
unknown˙˙˙˙˙˙˙˙˙2
+__inference_dropout_11_layer_call_fn_102931X3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙2
p
Ş "!
unknown˙˙˙˙˙˙˙˙˙2´
F__inference_flatten_10_layer_call_and_return_conditional_losses_102901j8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙
Ş ".˘+
$!
tensor_0˙˙˙˙˙˙˙˙˙Ä
 
+__inference_flatten_10_layer_call_fn_102895_8˘5
.˘+
)&
inputs˙˙˙˙˙˙˙˙˙
Ş "# 
unknown˙˙˙˙˙˙˙˙˙Äć
I__inference_sequential_18_layer_call_and_return_conditional_losses_102036 NOPQRSTUVWXYZ[\]^_`abcdefg56DELMF˘C
<˘9
/,
vgg16_input˙˙˙˙˙˙˙˙˙ŕŕ
p 

 
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 ć
I__inference_sequential_18_layer_call_and_return_conditional_losses_102110 NOPQRSTUVWXYZ[\]^_`abcdefg56DELMF˘C
<˘9
/,
vgg16_input˙˙˙˙˙˙˙˙˙ŕŕ
p

 
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 á
I__inference_sequential_18_layer_call_and_return_conditional_losses_102445 NOPQRSTUVWXYZ[\]^_`abcdefg56DELMA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙ŕŕ
p 

 
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 á
I__inference_sequential_18_layer_call_and_return_conditional_losses_102576 NOPQRSTUVWXYZ[\]^_`abcdefg56DELMA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙ŕŕ
p

 
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙
 Ŕ
.__inference_sequential_18_layer_call_fn_101622 NOPQRSTUVWXYZ[\]^_`abcdefg56DELMF˘C
<˘9
/,
vgg16_input˙˙˙˙˙˙˙˙˙ŕŕ
p 

 
Ş "!
unknown˙˙˙˙˙˙˙˙˙Ŕ
.__inference_sequential_18_layer_call_fn_101962 NOPQRSTUVWXYZ[\]^_`abcdefg56DELMF˘C
<˘9
/,
vgg16_input˙˙˙˙˙˙˙˙˙ŕŕ
p

 
Ş "!
unknown˙˙˙˙˙˙˙˙˙ť
.__inference_sequential_18_layer_call_fn_102252 NOPQRSTUVWXYZ[\]^_`abcdefg56DELMA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙ŕŕ
p 

 
Ş "!
unknown˙˙˙˙˙˙˙˙˙ť
.__inference_sequential_18_layer_call_fn_102321 NOPQRSTUVWXYZ[\]^_`abcdefg56DELMA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙ŕŕ
p

 
Ş "!
unknown˙˙˙˙˙˙˙˙˙Ď
$__inference_signature_wrapper_102183Ś NOPQRSTUVWXYZ[\]^_`abcdefg56DELMM˘J
˘ 
CŞ@
>
vgg16_input/,
vgg16_input˙˙˙˙˙˙˙˙˙ŕŕ"3Ş0
.
dense_32"
dense_32˙˙˙˙˙˙˙˙˙Ţ
A__inference_vgg16_layer_call_and_return_conditional_losses_101354NOPQRSTUVWXYZ[\]^_`abcdefgC˘@
9˘6
,)
input_11˙˙˙˙˙˙˙˙˙ŕŕ
p 

 
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙
 Ţ
A__inference_vgg16_layer_call_and_return_conditional_losses_101428NOPQRSTUVWXYZ[\]^_`abcdefgC˘@
9˘6
,)
input_11˙˙˙˙˙˙˙˙˙ŕŕ
p

 
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙
 Ü
A__inference_vgg16_layer_call_and_return_conditional_losses_102790NOPQRSTUVWXYZ[\]^_`abcdefgA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙ŕŕ
p 

 
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙
 Ü
A__inference_vgg16_layer_call_and_return_conditional_losses_102890NOPQRSTUVWXYZ[\]^_`abcdefgA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙ŕŕ
p

 
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙
 ¸
&__inference_vgg16_layer_call_fn_100905NOPQRSTUVWXYZ[\]^_`abcdefgC˘@
9˘6
,)
input_11˙˙˙˙˙˙˙˙˙ŕŕ
p 

 
Ş "*'
unknown˙˙˙˙˙˙˙˙˙¸
&__inference_vgg16_layer_call_fn_101280NOPQRSTUVWXYZ[\]^_`abcdefgC˘@
9˘6
,)
input_11˙˙˙˙˙˙˙˙˙ŕŕ
p

 
Ş "*'
unknown˙˙˙˙˙˙˙˙˙ś
&__inference_vgg16_layer_call_fn_102633NOPQRSTUVWXYZ[\]^_`abcdefgA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙ŕŕ
p 

 
Ş "*'
unknown˙˙˙˙˙˙˙˙˙ś
&__inference_vgg16_layer_call_fn_102690NOPQRSTUVWXYZ[\]^_`abcdefgA˘>
7˘4
*'
inputs˙˙˙˙˙˙˙˙˙ŕŕ
p

 
Ş "*'
unknown˙˙˙˙˙˙˙˙˙