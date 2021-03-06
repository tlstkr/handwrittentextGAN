؊
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
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
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
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
?
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
{
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?* 
shared_namedense_20/kernel
t
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes
:	d?*
dtype0
s
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_20/bias
l
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_15/gamma
?
0batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_15/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_15/beta
?
/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_15/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_15/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_15/moving_mean
?
6batch_normalization_15/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_15/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_15/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_15/moving_variance
?
:batch_normalization_15/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_15/moving_variance*
_output_shapes	
:?*
dtype0
|
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??1* 
shared_namedense_21/kernel
u
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel* 
_output_shapes
:
??1*
dtype0
s
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*
shared_namedense_21/bias
l
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes	
:?1*
dtype0
?
batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*-
shared_namebatch_normalization_16/gamma
?
0batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_16/gamma*
_output_shapes	
:?1*
dtype0
?
batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*,
shared_namebatch_normalization_16/beta
?
/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_16/beta*
_output_shapes	
:?1*
dtype0
?
"batch_normalization_16/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*3
shared_name$"batch_normalization_16/moving_mean
?
6batch_normalization_16/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_16/moving_mean*
_output_shapes	
:?1*
dtype0
?
&batch_normalization_16/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*7
shared_name(&batch_normalization_16/moving_variance
?
:batch_normalization_16/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_16/moving_variance*
_output_shapes	
:?1*
dtype0
?
conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*!
shared_nameconv2d_20/kernel
~
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*'
_output_shapes
:?@*
dtype0
t
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_20/bias
m
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_17/gamma
?
0batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_17/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_17/beta
?
/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_17/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_17/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_17/moving_mean
?
6batch_normalization_17/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_17/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_17/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_17/moving_variance
?
:batch_normalization_17/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_17/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_21/kernel
}
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_21/bias
m
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?9
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?9
value?9B?9 B?9
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer-11
layer_with_weights-6
layer-12
	variables
regularization_losses
trainable_variables
	keras_api

signatures
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?
axis
	gamma
beta
moving_mean
moving_variance
	variables
regularization_losses
 trainable_variables
!	keras_api
R
"	variables
#regularization_losses
$trainable_variables
%	keras_api
h

&kernel
'bias
(	variables
)regularization_losses
*trainable_variables
+	keras_api
?
,axis
	-gamma
.beta
/moving_mean
0moving_variance
1	variables
2regularization_losses
3trainable_variables
4	keras_api
R
5	variables
6regularization_losses
7trainable_variables
8	keras_api
R
9	variables
:regularization_losses
;trainable_variables
<	keras_api
R
=	variables
>regularization_losses
?trainable_variables
@	keras_api
h

Akernel
Bbias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
?
Gaxis
	Hgamma
Ibeta
Jmoving_mean
Kmoving_variance
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
R
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
R
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
h

Xkernel
Ybias
Z	variables
[regularization_losses
\trainable_variables
]	keras_api
?
0
1
2
3
4
5
&6
'7
-8
.9
/10
011
A12
B13
H14
I15
J16
K17
X18
Y19
 
f
0
1
2
3
&4
'5
-6
.7
A8
B9
H10
I11
X12
Y13
?
^metrics
_non_trainable_variables
	variables

`layers
regularization_losses
alayer_metrics
trainable_variables
blayer_regularization_losses
 
[Y
VARIABLE_VALUEdense_20/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_20/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
cmetrics
dnon_trainable_variables
	variables

elayers
regularization_losses
flayer_metrics
trainable_variables
glayer_regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_15/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_15/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_15/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_15/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3
 

0
1
?
hmetrics
inon_trainable_variables
	variables

jlayers
regularization_losses
klayer_metrics
 trainable_variables
llayer_regularization_losses
 
 
 
?
mmetrics
nnon_trainable_variables
"	variables

olayers
#regularization_losses
player_metrics
$trainable_variables
qlayer_regularization_losses
[Y
VARIABLE_VALUEdense_21/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_21/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

&0
'1
 

&0
'1
?
rmetrics
snon_trainable_variables
(	variables

tlayers
)regularization_losses
ulayer_metrics
*trainable_variables
vlayer_regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_16/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_16/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_16/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_16/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

-0
.1
/2
03
 

-0
.1
?
wmetrics
xnon_trainable_variables
1	variables

ylayers
2regularization_losses
zlayer_metrics
3trainable_variables
{layer_regularization_losses
 
 
 
?
|metrics
}non_trainable_variables
5	variables

~layers
6regularization_losses
layer_metrics
7trainable_variables
 ?layer_regularization_losses
 
 
 
?
?metrics
?non_trainable_variables
9	variables
?layers
:regularization_losses
?layer_metrics
;trainable_variables
 ?layer_regularization_losses
 
 
 
?
?metrics
?non_trainable_variables
=	variables
?layers
>regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

A0
B1
 

A0
B1
?
?metrics
?non_trainable_variables
C	variables
?layers
Dregularization_losses
?layer_metrics
Etrainable_variables
 ?layer_regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_17/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_17/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_17/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_17/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

H0
I1
J2
K3
 

H0
I1
?
?metrics
?non_trainable_variables
L	variables
?layers
Mregularization_losses
?layer_metrics
Ntrainable_variables
 ?layer_regularization_losses
 
 
 
?
?metrics
?non_trainable_variables
P	variables
?layers
Qregularization_losses
?layer_metrics
Rtrainable_variables
 ?layer_regularization_losses
 
 
 
?
?metrics
?non_trainable_variables
T	variables
?layers
Uregularization_losses
?layer_metrics
Vtrainable_variables
 ?layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_21/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_21/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

X0
Y1
 

X0
Y1
?
?metrics
?non_trainable_variables
Z	variables
?layers
[regularization_losses
?layer_metrics
\trainable_variables
 ?layer_regularization_losses
 
*
0
1
/2
03
J4
K5
^
0
1
2
3
4
5
6
7
	8

9
10
11
12
 
 
 
 
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

/0
01
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

J0
K1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
serving_default_dense_20_inputPlaceholder*'
_output_shapes
:?????????d*
dtype0*
shape:?????????d
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_20_inputdense_20/kerneldense_20/bias&batch_normalization_15/moving_variancebatch_normalization_15/gamma"batch_normalization_15/moving_meanbatch_normalization_15/betadense_21/kerneldense_21/bias&batch_normalization_16/moving_variancebatch_normalization_16/gamma"batch_normalization_16/moving_meanbatch_normalization_16/betaconv2d_20/kernelconv2d_20/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_varianceconv2d_21/kernelconv2d_21/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1038022
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOp0batch_normalization_15/gamma/Read/ReadVariableOp/batch_normalization_15/beta/Read/ReadVariableOp6batch_normalization_15/moving_mean/Read/ReadVariableOp:batch_normalization_15/moving_variance/Read/ReadVariableOp#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOp0batch_normalization_16/gamma/Read/ReadVariableOp/batch_normalization_16/beta/Read/ReadVariableOp6batch_normalization_16/moving_mean/Read/ReadVariableOp:batch_normalization_16/moving_variance/Read/ReadVariableOp$conv2d_20/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp0batch_normalization_17/gamma/Read/ReadVariableOp/batch_normalization_17/beta/Read/ReadVariableOp6batch_normalization_17/moving_mean/Read/ReadVariableOp:batch_normalization_17/moving_variance/Read/ReadVariableOp$conv2d_21/kernel/Read/ReadVariableOp"conv2d_21/bias/Read/ReadVariableOpConst*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_1038763
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_20/kerneldense_20/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_variancedense_21/kerneldense_21/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv2d_20/kernelconv2d_20/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_varianceconv2d_21/kernelconv2d_21/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_1038833??
?
?
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1038506

inputs0
!batchnorm_readvariableop_resource:	?14
%batchnorm_mul_readvariableop_resource:	?12
#batchnorm_readvariableop_1_resource:	?12
#batchnorm_readvariableop_2_resource:	?1
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?1*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?12
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?12
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?1*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?12
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????12
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?1*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?12
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?1*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?12
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????12
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????1: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????1
 
_user_specified_nameinputs
?
i
M__inference_up_sampling2d_11_layer_call_and_return_conditional_losses_1037417

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(2
resize/ResizeNearestNeighbor?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_1038660

inputs
identityn
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+???????????????????????????@2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?
J__inference_sequential_10_layer_call_and_return_conditional_losses_1038332

inputs:
'dense_20_matmul_readvariableop_resource:	d?7
(dense_20_biasadd_readvariableop_resource:	?M
>batch_normalization_15_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_15_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_15_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_15_batchnorm_readvariableop_resource:	?;
'dense_21_matmul_readvariableop_resource:
??17
(dense_21_biasadd_readvariableop_resource:	?1M
>batch_normalization_16_assignmovingavg_readvariableop_resource:	?1O
@batch_normalization_16_assignmovingavg_1_readvariableop_resource:	?1K
<batch_normalization_16_batchnorm_mul_readvariableop_resource:	?1G
8batch_normalization_16_batchnorm_readvariableop_resource:	?1C
(conv2d_20_conv2d_readvariableop_resource:?@7
)conv2d_20_biasadd_readvariableop_resource:@<
.batch_normalization_17_readvariableop_resource:@>
0batch_normalization_17_readvariableop_1_resource:@M
?batch_normalization_17_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_21_conv2d_readvariableop_resource:@7
)conv2d_21_biasadd_readvariableop_resource:
identity??&batch_normalization_15/AssignMovingAvg?5batch_normalization_15/AssignMovingAvg/ReadVariableOp?(batch_normalization_15/AssignMovingAvg_1?7batch_normalization_15/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_15/batchnorm/ReadVariableOp?3batch_normalization_15/batchnorm/mul/ReadVariableOp?&batch_normalization_16/AssignMovingAvg?5batch_normalization_16/AssignMovingAvg/ReadVariableOp?(batch_normalization_16/AssignMovingAvg_1?7batch_normalization_16/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_16/batchnorm/ReadVariableOp?3batch_normalization_16/batchnorm/mul/ReadVariableOp?%batch_normalization_17/AssignNewValue?'batch_normalization_17/AssignNewValue_1?6batch_normalization_17/FusedBatchNormV3/ReadVariableOp?8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_17/ReadVariableOp?'batch_normalization_17/ReadVariableOp_1? conv2d_20/BiasAdd/ReadVariableOp?conv2d_20/Conv2D/ReadVariableOp? conv2d_21/BiasAdd/ReadVariableOp?conv2d_21/Conv2D/ReadVariableOp?dense_20/BiasAdd/ReadVariableOp?dense_20/MatMul/ReadVariableOp?dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02 
dense_20/MatMul/ReadVariableOp?
dense_20/MatMulMatMulinputs&dense_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_20/MatMul?
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_20/BiasAdd/ReadVariableOp?
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_20/BiasAdd?
5batch_normalization_15/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_15/moments/mean/reduction_indices?
#batch_normalization_15/moments/meanMeandense_20/BiasAdd:output:0>batch_normalization_15/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_15/moments/mean?
+batch_normalization_15/moments/StopGradientStopGradient,batch_normalization_15/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_15/moments/StopGradient?
0batch_normalization_15/moments/SquaredDifferenceSquaredDifferencedense_20/BiasAdd:output:04batch_normalization_15/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_15/moments/SquaredDifference?
9batch_normalization_15/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_15/moments/variance/reduction_indices?
'batch_normalization_15/moments/varianceMean4batch_normalization_15/moments/SquaredDifference:z:0Bbatch_normalization_15/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_15/moments/variance?
&batch_normalization_15/moments/SqueezeSqueeze,batch_normalization_15/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_15/moments/Squeeze?
(batch_normalization_15/moments/Squeeze_1Squeeze0batch_normalization_15/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_15/moments/Squeeze_1?
,batch_normalization_15/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2.
,batch_normalization_15/AssignMovingAvg/decay?
5batch_normalization_15/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_15_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_15/AssignMovingAvg/ReadVariableOp?
*batch_normalization_15/AssignMovingAvg/subSub=batch_normalization_15/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_15/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_15/AssignMovingAvg/sub?
*batch_normalization_15/AssignMovingAvg/mulMul.batch_normalization_15/AssignMovingAvg/sub:z:05batch_normalization_15/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_15/AssignMovingAvg/mul?
&batch_normalization_15/AssignMovingAvgAssignSubVariableOp>batch_normalization_15_assignmovingavg_readvariableop_resource.batch_normalization_15/AssignMovingAvg/mul:z:06^batch_normalization_15/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_15/AssignMovingAvg?
.batch_normalization_15/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>20
.batch_normalization_15/AssignMovingAvg_1/decay?
7batch_normalization_15/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_15_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_15/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_15/AssignMovingAvg_1/subSub?batch_normalization_15/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_15/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_15/AssignMovingAvg_1/sub?
,batch_normalization_15/AssignMovingAvg_1/mulMul0batch_normalization_15/AssignMovingAvg_1/sub:z:07batch_normalization_15/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_15/AssignMovingAvg_1/mul?
(batch_normalization_15/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_15_assignmovingavg_1_readvariableop_resource0batch_normalization_15/AssignMovingAvg_1/mul:z:08^batch_normalization_15/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_15/AssignMovingAvg_1?
&batch_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_15/batchnorm/add/y?
$batch_normalization_15/batchnorm/addAddV21batch_normalization_15/moments/Squeeze_1:output:0/batch_normalization_15/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_15/batchnorm/add?
&batch_normalization_15/batchnorm/RsqrtRsqrt(batch_normalization_15/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_15/batchnorm/Rsqrt?
3batch_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_15/batchnorm/mul/ReadVariableOp?
$batch_normalization_15/batchnorm/mulMul*batch_normalization_15/batchnorm/Rsqrt:y:0;batch_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_15/batchnorm/mul?
&batch_normalization_15/batchnorm/mul_1Muldense_20/BiasAdd:output:0(batch_normalization_15/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_15/batchnorm/mul_1?
&batch_normalization_15/batchnorm/mul_2Mul/batch_normalization_15/moments/Squeeze:output:0(batch_normalization_15/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_15/batchnorm/mul_2?
/batch_normalization_15/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_15_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_15/batchnorm/ReadVariableOp?
$batch_normalization_15/batchnorm/subSub7batch_normalization_15/batchnorm/ReadVariableOp:value:0*batch_normalization_15/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_15/batchnorm/sub?
&batch_normalization_15/batchnorm/add_1AddV2*batch_normalization_15/batchnorm/mul_1:z:0(batch_normalization_15/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_15/batchnorm/add_1?
activation_10/ReluRelu*batch_normalization_15/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_10/Relu?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
??1*
dtype02 
dense_21/MatMul/ReadVariableOp?
dense_21/MatMulMatMul activation_10/Relu:activations:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
dense_21/MatMul?
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:?1*
dtype02!
dense_21/BiasAdd/ReadVariableOp?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
dense_21/BiasAdd?
5batch_normalization_16/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_16/moments/mean/reduction_indices?
#batch_normalization_16/moments/meanMeandense_21/BiasAdd:output:0>batch_normalization_16/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?1*
	keep_dims(2%
#batch_normalization_16/moments/mean?
+batch_normalization_16/moments/StopGradientStopGradient,batch_normalization_16/moments/mean:output:0*
T0*
_output_shapes
:	?12-
+batch_normalization_16/moments/StopGradient?
0batch_normalization_16/moments/SquaredDifferenceSquaredDifferencedense_21/BiasAdd:output:04batch_normalization_16/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????122
0batch_normalization_16/moments/SquaredDifference?
9batch_normalization_16/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_16/moments/variance/reduction_indices?
'batch_normalization_16/moments/varianceMean4batch_normalization_16/moments/SquaredDifference:z:0Bbatch_normalization_16/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?1*
	keep_dims(2)
'batch_normalization_16/moments/variance?
&batch_normalization_16/moments/SqueezeSqueeze,batch_normalization_16/moments/mean:output:0*
T0*
_output_shapes	
:?1*
squeeze_dims
 2(
&batch_normalization_16/moments/Squeeze?
(batch_normalization_16/moments/Squeeze_1Squeeze0batch_normalization_16/moments/variance:output:0*
T0*
_output_shapes	
:?1*
squeeze_dims
 2*
(batch_normalization_16/moments/Squeeze_1?
,batch_normalization_16/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2.
,batch_normalization_16/AssignMovingAvg/decay?
5batch_normalization_16/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_16_assignmovingavg_readvariableop_resource*
_output_shapes	
:?1*
dtype027
5batch_normalization_16/AssignMovingAvg/ReadVariableOp?
*batch_normalization_16/AssignMovingAvg/subSub=batch_normalization_16/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_16/moments/Squeeze:output:0*
T0*
_output_shapes	
:?12,
*batch_normalization_16/AssignMovingAvg/sub?
*batch_normalization_16/AssignMovingAvg/mulMul.batch_normalization_16/AssignMovingAvg/sub:z:05batch_normalization_16/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?12,
*batch_normalization_16/AssignMovingAvg/mul?
&batch_normalization_16/AssignMovingAvgAssignSubVariableOp>batch_normalization_16_assignmovingavg_readvariableop_resource.batch_normalization_16/AssignMovingAvg/mul:z:06^batch_normalization_16/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_16/AssignMovingAvg?
.batch_normalization_16/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>20
.batch_normalization_16/AssignMovingAvg_1/decay?
7batch_normalization_16/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_16_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?1*
dtype029
7batch_normalization_16/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_16/AssignMovingAvg_1/subSub?batch_normalization_16/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_16/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?12.
,batch_normalization_16/AssignMovingAvg_1/sub?
,batch_normalization_16/AssignMovingAvg_1/mulMul0batch_normalization_16/AssignMovingAvg_1/sub:z:07batch_normalization_16/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?12.
,batch_normalization_16/AssignMovingAvg_1/mul?
(batch_normalization_16/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_16_assignmovingavg_1_readvariableop_resource0batch_normalization_16/AssignMovingAvg_1/mul:z:08^batch_normalization_16/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_16/AssignMovingAvg_1?
&batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_16/batchnorm/add/y?
$batch_normalization_16/batchnorm/addAddV21batch_normalization_16/moments/Squeeze_1:output:0/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?12&
$batch_normalization_16/batchnorm/add?
&batch_normalization_16/batchnorm/RsqrtRsqrt(batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes	
:?12(
&batch_normalization_16/batchnorm/Rsqrt?
3batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?1*
dtype025
3batch_normalization_16/batchnorm/mul/ReadVariableOp?
$batch_normalization_16/batchnorm/mulMul*batch_normalization_16/batchnorm/Rsqrt:y:0;batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?12&
$batch_normalization_16/batchnorm/mul?
&batch_normalization_16/batchnorm/mul_1Muldense_21/BiasAdd:output:0(batch_normalization_16/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????12(
&batch_normalization_16/batchnorm/mul_1?
&batch_normalization_16/batchnorm/mul_2Mul/batch_normalization_16/moments/Squeeze:output:0(batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes	
:?12(
&batch_normalization_16/batchnorm/mul_2?
/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes	
:?1*
dtype021
/batch_normalization_16/batchnorm/ReadVariableOp?
$batch_normalization_16/batchnorm/subSub7batch_normalization_16/batchnorm/ReadVariableOp:value:0*batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?12&
$batch_normalization_16/batchnorm/sub?
&batch_normalization_16/batchnorm/add_1AddV2*batch_normalization_16/batchnorm/mul_1:z:0(batch_normalization_16/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????12(
&batch_normalization_16/batchnorm/add_1?
activation_11/ReluRelu*batch_normalization_16/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????12
activation_11/Relur
reshape_5/ShapeShape activation_11/Relu:activations:0*
T0*
_output_shapes
:2
reshape_5/Shape?
reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_5/strided_slice/stack?
reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_5/strided_slice/stack_1?
reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_5/strided_slice/stack_2?
reshape_5/strided_sliceStridedSlicereshape_5/Shape:output:0&reshape_5/strided_slice/stack:output:0(reshape_5/strided_slice/stack_1:output:0(reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_5/strided_slicex
reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_5/Reshape/shape/1x
reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_5/Reshape/shape/2y
reshape_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_5/Reshape/shape/3?
reshape_5/Reshape/shapePack reshape_5/strided_slice:output:0"reshape_5/Reshape/shape/1:output:0"reshape_5/Reshape/shape/2:output:0"reshape_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_5/Reshape/shape?
reshape_5/ReshapeReshape activation_11/Relu:activations:0 reshape_5/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_5/Reshape?
up_sampling2d_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_10/Const?
up_sampling2d_10/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_10/Const_1?
up_sampling2d_10/mulMulup_sampling2d_10/Const:output:0!up_sampling2d_10/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_10/mul?
-up_sampling2d_10/resize/ResizeNearestNeighborResizeNearestNeighborreshape_5/Reshape:output:0up_sampling2d_10/mul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(2/
-up_sampling2d_10/resize/ResizeNearestNeighbor?
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02!
conv2d_20/Conv2D/ReadVariableOp?
conv2d_20/Conv2DConv2D>up_sampling2d_10/resize/ResizeNearestNeighbor:resized_images:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_20/Conv2D?
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp?
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_20/BiasAdd?
%batch_normalization_17/ReadVariableOpReadVariableOp.batch_normalization_17_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_17/ReadVariableOp?
'batch_normalization_17/ReadVariableOp_1ReadVariableOp0batch_normalization_17_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_17/ReadVariableOp_1?
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_17/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_17/FusedBatchNormV3FusedBatchNormV3conv2d_20/BiasAdd:output:0-batch_normalization_17/ReadVariableOp:value:0/batch_normalization_17/ReadVariableOp_1:value:0>batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%??L>2)
'batch_normalization_17/FusedBatchNormV3?
%batch_normalization_17/AssignNewValueAssignVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource4batch_normalization_17/FusedBatchNormV3:batch_mean:07^batch_normalization_17/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_17/AssignNewValue?
'batch_normalization_17/AssignNewValue_1AssignVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_17/FusedBatchNormV3:batch_variance:09^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_17/AssignNewValue_1?
leaky_re_lu_20/LeakyRelu	LeakyRelu+batch_normalization_17/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@2
leaky_re_lu_20/LeakyRelu?
up_sampling2d_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_11/Const?
up_sampling2d_11/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_11/Const_1?
up_sampling2d_11/mulMulup_sampling2d_11/Const:output:0!up_sampling2d_11/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_11/mul?
-up_sampling2d_11/resize/ResizeNearestNeighborResizeNearestNeighbor&leaky_re_lu_20/LeakyRelu:activations:0up_sampling2d_11/mul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(2/
-up_sampling2d_11/resize/ResizeNearestNeighbor?
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_21/Conv2D/ReadVariableOp?
conv2d_21/Conv2DConv2D>up_sampling2d_11/resize/ResizeNearestNeighbor:resized_images:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_21/Conv2D?
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp?
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_21/BiasAdd~
conv2d_21/TanhTanhconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_21/Tanh?	
IdentityIdentityconv2d_21/Tanh:y:0'^batch_normalization_15/AssignMovingAvg6^batch_normalization_15/AssignMovingAvg/ReadVariableOp)^batch_normalization_15/AssignMovingAvg_18^batch_normalization_15/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_15/batchnorm/ReadVariableOp4^batch_normalization_15/batchnorm/mul/ReadVariableOp'^batch_normalization_16/AssignMovingAvg6^batch_normalization_16/AssignMovingAvg/ReadVariableOp)^batch_normalization_16/AssignMovingAvg_18^batch_normalization_16/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_16/batchnorm/ReadVariableOp4^batch_normalization_16/batchnorm/mul/ReadVariableOp&^batch_normalization_17/AssignNewValue(^batch_normalization_17/AssignNewValue_17^batch_normalization_17/FusedBatchNormV3/ReadVariableOp9^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_17/ReadVariableOp(^batch_normalization_17/ReadVariableOp_1!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_15/AssignMovingAvg&batch_normalization_15/AssignMovingAvg2n
5batch_normalization_15/AssignMovingAvg/ReadVariableOp5batch_normalization_15/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_15/AssignMovingAvg_1(batch_normalization_15/AssignMovingAvg_12r
7batch_normalization_15/AssignMovingAvg_1/ReadVariableOp7batch_normalization_15/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_15/batchnorm/ReadVariableOp/batch_normalization_15/batchnorm/ReadVariableOp2j
3batch_normalization_15/batchnorm/mul/ReadVariableOp3batch_normalization_15/batchnorm/mul/ReadVariableOp2P
&batch_normalization_16/AssignMovingAvg&batch_normalization_16/AssignMovingAvg2n
5batch_normalization_16/AssignMovingAvg/ReadVariableOp5batch_normalization_16/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_16/AssignMovingAvg_1(batch_normalization_16/AssignMovingAvg_12r
7batch_normalization_16/AssignMovingAvg_1/ReadVariableOp7batch_normalization_16/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_16/batchnorm/ReadVariableOp/batch_normalization_16/batchnorm/ReadVariableOp2j
3batch_normalization_16/batchnorm/mul/ReadVariableOp3batch_normalization_16/batchnorm/mul/ReadVariableOp2N
%batch_normalization_17/AssignNewValue%batch_normalization_17/AssignNewValue2R
'batch_normalization_17/AssignNewValue_1'batch_normalization_17/AssignNewValue_12p
6batch_normalization_17/FusedBatchNormV3/ReadVariableOp6batch_normalization_17/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_18batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_17/ReadVariableOp%batch_normalization_17/ReadVariableOp2R
'batch_normalization_17/ReadVariableOp_1'batch_normalization_17/ReadVariableOp_12D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_1036935
dense_20_inputH
5sequential_10_dense_20_matmul_readvariableop_resource:	d?E
6sequential_10_dense_20_biasadd_readvariableop_resource:	?U
Fsequential_10_batch_normalization_15_batchnorm_readvariableop_resource:	?Y
Jsequential_10_batch_normalization_15_batchnorm_mul_readvariableop_resource:	?W
Hsequential_10_batch_normalization_15_batchnorm_readvariableop_1_resource:	?W
Hsequential_10_batch_normalization_15_batchnorm_readvariableop_2_resource:	?I
5sequential_10_dense_21_matmul_readvariableop_resource:
??1E
6sequential_10_dense_21_biasadd_readvariableop_resource:	?1U
Fsequential_10_batch_normalization_16_batchnorm_readvariableop_resource:	?1Y
Jsequential_10_batch_normalization_16_batchnorm_mul_readvariableop_resource:	?1W
Hsequential_10_batch_normalization_16_batchnorm_readvariableop_1_resource:	?1W
Hsequential_10_batch_normalization_16_batchnorm_readvariableop_2_resource:	?1Q
6sequential_10_conv2d_20_conv2d_readvariableop_resource:?@E
7sequential_10_conv2d_20_biasadd_readvariableop_resource:@J
<sequential_10_batch_normalization_17_readvariableop_resource:@L
>sequential_10_batch_normalization_17_readvariableop_1_resource:@[
Msequential_10_batch_normalization_17_fusedbatchnormv3_readvariableop_resource:@]
Osequential_10_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:@P
6sequential_10_conv2d_21_conv2d_readvariableop_resource:@E
7sequential_10_conv2d_21_biasadd_readvariableop_resource:
identity??=sequential_10/batch_normalization_15/batchnorm/ReadVariableOp??sequential_10/batch_normalization_15/batchnorm/ReadVariableOp_1??sequential_10/batch_normalization_15/batchnorm/ReadVariableOp_2?Asequential_10/batch_normalization_15/batchnorm/mul/ReadVariableOp?=sequential_10/batch_normalization_16/batchnorm/ReadVariableOp??sequential_10/batch_normalization_16/batchnorm/ReadVariableOp_1??sequential_10/batch_normalization_16/batchnorm/ReadVariableOp_2?Asequential_10/batch_normalization_16/batchnorm/mul/ReadVariableOp?Dsequential_10/batch_normalization_17/FusedBatchNormV3/ReadVariableOp?Fsequential_10/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1?3sequential_10/batch_normalization_17/ReadVariableOp?5sequential_10/batch_normalization_17/ReadVariableOp_1?.sequential_10/conv2d_20/BiasAdd/ReadVariableOp?-sequential_10/conv2d_20/Conv2D/ReadVariableOp?.sequential_10/conv2d_21/BiasAdd/ReadVariableOp?-sequential_10/conv2d_21/Conv2D/ReadVariableOp?-sequential_10/dense_20/BiasAdd/ReadVariableOp?,sequential_10/dense_20/MatMul/ReadVariableOp?-sequential_10/dense_21/BiasAdd/ReadVariableOp?,sequential_10/dense_21/MatMul/ReadVariableOp?
,sequential_10/dense_20/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_20_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02.
,sequential_10/dense_20/MatMul/ReadVariableOp?
sequential_10/dense_20/MatMulMatMuldense_20_input4sequential_10/dense_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_10/dense_20/MatMul?
-sequential_10/dense_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_10/dense_20/BiasAdd/ReadVariableOp?
sequential_10/dense_20/BiasAddBiasAdd'sequential_10/dense_20/MatMul:product:05sequential_10/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_10/dense_20/BiasAdd?
=sequential_10/batch_normalization_15/batchnorm/ReadVariableOpReadVariableOpFsequential_10_batch_normalization_15_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=sequential_10/batch_normalization_15/batchnorm/ReadVariableOp?
4sequential_10/batch_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_10/batch_normalization_15/batchnorm/add/y?
2sequential_10/batch_normalization_15/batchnorm/addAddV2Esequential_10/batch_normalization_15/batchnorm/ReadVariableOp:value:0=sequential_10/batch_normalization_15/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?24
2sequential_10/batch_normalization_15/batchnorm/add?
4sequential_10/batch_normalization_15/batchnorm/RsqrtRsqrt6sequential_10/batch_normalization_15/batchnorm/add:z:0*
T0*
_output_shapes	
:?26
4sequential_10/batch_normalization_15/batchnorm/Rsqrt?
Asequential_10/batch_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_10_batch_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Asequential_10/batch_normalization_15/batchnorm/mul/ReadVariableOp?
2sequential_10/batch_normalization_15/batchnorm/mulMul8sequential_10/batch_normalization_15/batchnorm/Rsqrt:y:0Isequential_10/batch_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?24
2sequential_10/batch_normalization_15/batchnorm/mul?
4sequential_10/batch_normalization_15/batchnorm/mul_1Mul'sequential_10/dense_20/BiasAdd:output:06sequential_10/batch_normalization_15/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????26
4sequential_10/batch_normalization_15/batchnorm/mul_1?
?sequential_10/batch_normalization_15/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_10_batch_normalization_15_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?sequential_10/batch_normalization_15/batchnorm/ReadVariableOp_1?
4sequential_10/batch_normalization_15/batchnorm/mul_2MulGsequential_10/batch_normalization_15/batchnorm/ReadVariableOp_1:value:06sequential_10/batch_normalization_15/batchnorm/mul:z:0*
T0*
_output_shapes	
:?26
4sequential_10/batch_normalization_15/batchnorm/mul_2?
?sequential_10/batch_normalization_15/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_10_batch_normalization_15_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02A
?sequential_10/batch_normalization_15/batchnorm/ReadVariableOp_2?
2sequential_10/batch_normalization_15/batchnorm/subSubGsequential_10/batch_normalization_15/batchnorm/ReadVariableOp_2:value:08sequential_10/batch_normalization_15/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?24
2sequential_10/batch_normalization_15/batchnorm/sub?
4sequential_10/batch_normalization_15/batchnorm/add_1AddV28sequential_10/batch_normalization_15/batchnorm/mul_1:z:06sequential_10/batch_normalization_15/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????26
4sequential_10/batch_normalization_15/batchnorm/add_1?
 sequential_10/activation_10/ReluRelu8sequential_10/batch_normalization_15/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2"
 sequential_10/activation_10/Relu?
,sequential_10/dense_21/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_21_matmul_readvariableop_resource* 
_output_shapes
:
??1*
dtype02.
,sequential_10/dense_21/MatMul/ReadVariableOp?
sequential_10/dense_21/MatMulMatMul.sequential_10/activation_10/Relu:activations:04sequential_10/dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
sequential_10/dense_21/MatMul?
-sequential_10/dense_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_21_biasadd_readvariableop_resource*
_output_shapes	
:?1*
dtype02/
-sequential_10/dense_21/BiasAdd/ReadVariableOp?
sequential_10/dense_21/BiasAddBiasAdd'sequential_10/dense_21/MatMul:product:05sequential_10/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12 
sequential_10/dense_21/BiasAdd?
=sequential_10/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOpFsequential_10_batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes	
:?1*
dtype02?
=sequential_10/batch_normalization_16/batchnorm/ReadVariableOp?
4sequential_10/batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_10/batch_normalization_16/batchnorm/add/y?
2sequential_10/batch_normalization_16/batchnorm/addAddV2Esequential_10/batch_normalization_16/batchnorm/ReadVariableOp:value:0=sequential_10/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?124
2sequential_10/batch_normalization_16/batchnorm/add?
4sequential_10/batch_normalization_16/batchnorm/RsqrtRsqrt6sequential_10/batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes	
:?126
4sequential_10/batch_normalization_16/batchnorm/Rsqrt?
Asequential_10/batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_10_batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?1*
dtype02C
Asequential_10/batch_normalization_16/batchnorm/mul/ReadVariableOp?
2sequential_10/batch_normalization_16/batchnorm/mulMul8sequential_10/batch_normalization_16/batchnorm/Rsqrt:y:0Isequential_10/batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?124
2sequential_10/batch_normalization_16/batchnorm/mul?
4sequential_10/batch_normalization_16/batchnorm/mul_1Mul'sequential_10/dense_21/BiasAdd:output:06sequential_10/batch_normalization_16/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????126
4sequential_10/batch_normalization_16/batchnorm/mul_1?
?sequential_10/batch_normalization_16/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_10_batch_normalization_16_batchnorm_readvariableop_1_resource*
_output_shapes	
:?1*
dtype02A
?sequential_10/batch_normalization_16/batchnorm/ReadVariableOp_1?
4sequential_10/batch_normalization_16/batchnorm/mul_2MulGsequential_10/batch_normalization_16/batchnorm/ReadVariableOp_1:value:06sequential_10/batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes	
:?126
4sequential_10/batch_normalization_16/batchnorm/mul_2?
?sequential_10/batch_normalization_16/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_10_batch_normalization_16_batchnorm_readvariableop_2_resource*
_output_shapes	
:?1*
dtype02A
?sequential_10/batch_normalization_16/batchnorm/ReadVariableOp_2?
2sequential_10/batch_normalization_16/batchnorm/subSubGsequential_10/batch_normalization_16/batchnorm/ReadVariableOp_2:value:08sequential_10/batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?124
2sequential_10/batch_normalization_16/batchnorm/sub?
4sequential_10/batch_normalization_16/batchnorm/add_1AddV28sequential_10/batch_normalization_16/batchnorm/mul_1:z:06sequential_10/batch_normalization_16/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????126
4sequential_10/batch_normalization_16/batchnorm/add_1?
 sequential_10/activation_11/ReluRelu8sequential_10/batch_normalization_16/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????12"
 sequential_10/activation_11/Relu?
sequential_10/reshape_5/ShapeShape.sequential_10/activation_11/Relu:activations:0*
T0*
_output_shapes
:2
sequential_10/reshape_5/Shape?
+sequential_10/reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_10/reshape_5/strided_slice/stack?
-sequential_10/reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/reshape_5/strided_slice/stack_1?
-sequential_10/reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_10/reshape_5/strided_slice/stack_2?
%sequential_10/reshape_5/strided_sliceStridedSlice&sequential_10/reshape_5/Shape:output:04sequential_10/reshape_5/strided_slice/stack:output:06sequential_10/reshape_5/strided_slice/stack_1:output:06sequential_10/reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_10/reshape_5/strided_slice?
'sequential_10/reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_10/reshape_5/Reshape/shape/1?
'sequential_10/reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_10/reshape_5/Reshape/shape/2?
'sequential_10/reshape_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_10/reshape_5/Reshape/shape/3?
%sequential_10/reshape_5/Reshape/shapePack.sequential_10/reshape_5/strided_slice:output:00sequential_10/reshape_5/Reshape/shape/1:output:00sequential_10/reshape_5/Reshape/shape/2:output:00sequential_10/reshape_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_10/reshape_5/Reshape/shape?
sequential_10/reshape_5/ReshapeReshape.sequential_10/activation_11/Relu:activations:0.sequential_10/reshape_5/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2!
sequential_10/reshape_5/Reshape?
$sequential_10/up_sampling2d_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_10/up_sampling2d_10/Const?
&sequential_10/up_sampling2d_10/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&sequential_10/up_sampling2d_10/Const_1?
"sequential_10/up_sampling2d_10/mulMul-sequential_10/up_sampling2d_10/Const:output:0/sequential_10/up_sampling2d_10/Const_1:output:0*
T0*
_output_shapes
:2$
"sequential_10/up_sampling2d_10/mul?
;sequential_10/up_sampling2d_10/resize/ResizeNearestNeighborResizeNearestNeighbor(sequential_10/reshape_5/Reshape:output:0&sequential_10/up_sampling2d_10/mul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(2=
;sequential_10/up_sampling2d_10/resize/ResizeNearestNeighbor?
-sequential_10/conv2d_20/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02/
-sequential_10/conv2d_20/Conv2D/ReadVariableOp?
sequential_10/conv2d_20/Conv2DConv2DLsequential_10/up_sampling2d_10/resize/ResizeNearestNeighbor:resized_images:05sequential_10/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2 
sequential_10/conv2d_20/Conv2D?
.sequential_10/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_10/conv2d_20/BiasAdd/ReadVariableOp?
sequential_10/conv2d_20/BiasAddBiasAdd'sequential_10/conv2d_20/Conv2D:output:06sequential_10/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2!
sequential_10/conv2d_20/BiasAdd?
3sequential_10/batch_normalization_17/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_17_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_10/batch_normalization_17/ReadVariableOp?
5sequential_10/batch_normalization_17/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_17_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_10/batch_normalization_17/ReadVariableOp_1?
Dsequential_10/batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_10/batch_normalization_17/FusedBatchNormV3/ReadVariableOp?
Fsequential_10/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_10/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1?
5sequential_10/batch_normalization_17/FusedBatchNormV3FusedBatchNormV3(sequential_10/conv2d_20/BiasAdd:output:0;sequential_10/batch_normalization_17/ReadVariableOp:value:0=sequential_10/batch_normalization_17/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5sequential_10/batch_normalization_17/FusedBatchNormV3?
&sequential_10/leaky_re_lu_20/LeakyRelu	LeakyRelu9sequential_10/batch_normalization_17/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@2(
&sequential_10/leaky_re_lu_20/LeakyRelu?
$sequential_10/up_sampling2d_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_10/up_sampling2d_11/Const?
&sequential_10/up_sampling2d_11/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&sequential_10/up_sampling2d_11/Const_1?
"sequential_10/up_sampling2d_11/mulMul-sequential_10/up_sampling2d_11/Const:output:0/sequential_10/up_sampling2d_11/Const_1:output:0*
T0*
_output_shapes
:2$
"sequential_10/up_sampling2d_11/mul?
;sequential_10/up_sampling2d_11/resize/ResizeNearestNeighborResizeNearestNeighbor4sequential_10/leaky_re_lu_20/LeakyRelu:activations:0&sequential_10/up_sampling2d_11/mul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(2=
;sequential_10/up_sampling2d_11/resize/ResizeNearestNeighbor?
-sequential_10/conv2d_21/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02/
-sequential_10/conv2d_21/Conv2D/ReadVariableOp?
sequential_10/conv2d_21/Conv2DConv2DLsequential_10/up_sampling2d_11/resize/ResizeNearestNeighbor:resized_images:05sequential_10/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2 
sequential_10/conv2d_21/Conv2D?
.sequential_10/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_10/conv2d_21/BiasAdd/ReadVariableOp?
sequential_10/conv2d_21/BiasAddBiasAdd'sequential_10/conv2d_21/Conv2D:output:06sequential_10/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2!
sequential_10/conv2d_21/BiasAdd?
sequential_10/conv2d_21/TanhTanh(sequential_10/conv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
sequential_10/conv2d_21/Tanh?

IdentityIdentity sequential_10/conv2d_21/Tanh:y:0>^sequential_10/batch_normalization_15/batchnorm/ReadVariableOp@^sequential_10/batch_normalization_15/batchnorm/ReadVariableOp_1@^sequential_10/batch_normalization_15/batchnorm/ReadVariableOp_2B^sequential_10/batch_normalization_15/batchnorm/mul/ReadVariableOp>^sequential_10/batch_normalization_16/batchnorm/ReadVariableOp@^sequential_10/batch_normalization_16/batchnorm/ReadVariableOp_1@^sequential_10/batch_normalization_16/batchnorm/ReadVariableOp_2B^sequential_10/batch_normalization_16/batchnorm/mul/ReadVariableOpE^sequential_10/batch_normalization_17/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_17/ReadVariableOp6^sequential_10/batch_normalization_17/ReadVariableOp_1/^sequential_10/conv2d_20/BiasAdd/ReadVariableOp.^sequential_10/conv2d_20/Conv2D/ReadVariableOp/^sequential_10/conv2d_21/BiasAdd/ReadVariableOp.^sequential_10/conv2d_21/Conv2D/ReadVariableOp.^sequential_10/dense_20/BiasAdd/ReadVariableOp-^sequential_10/dense_20/MatMul/ReadVariableOp.^sequential_10/dense_21/BiasAdd/ReadVariableOp-^sequential_10/dense_21/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2~
=sequential_10/batch_normalization_15/batchnorm/ReadVariableOp=sequential_10/batch_normalization_15/batchnorm/ReadVariableOp2?
?sequential_10/batch_normalization_15/batchnorm/ReadVariableOp_1?sequential_10/batch_normalization_15/batchnorm/ReadVariableOp_12?
?sequential_10/batch_normalization_15/batchnorm/ReadVariableOp_2?sequential_10/batch_normalization_15/batchnorm/ReadVariableOp_22?
Asequential_10/batch_normalization_15/batchnorm/mul/ReadVariableOpAsequential_10/batch_normalization_15/batchnorm/mul/ReadVariableOp2~
=sequential_10/batch_normalization_16/batchnorm/ReadVariableOp=sequential_10/batch_normalization_16/batchnorm/ReadVariableOp2?
?sequential_10/batch_normalization_16/batchnorm/ReadVariableOp_1?sequential_10/batch_normalization_16/batchnorm/ReadVariableOp_12?
?sequential_10/batch_normalization_16/batchnorm/ReadVariableOp_2?sequential_10/batch_normalization_16/batchnorm/ReadVariableOp_22?
Asequential_10/batch_normalization_16/batchnorm/mul/ReadVariableOpAsequential_10/batch_normalization_16/batchnorm/mul/ReadVariableOp2?
Dsequential_10/batch_normalization_17/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_17/FusedBatchNormV3/ReadVariableOp2?
Fsequential_10/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_17/ReadVariableOp3sequential_10/batch_normalization_17/ReadVariableOp2n
5sequential_10/batch_normalization_17/ReadVariableOp_15sequential_10/batch_normalization_17/ReadVariableOp_12`
.sequential_10/conv2d_20/BiasAdd/ReadVariableOp.sequential_10/conv2d_20/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_20/Conv2D/ReadVariableOp-sequential_10/conv2d_20/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_21/BiasAdd/ReadVariableOp.sequential_10/conv2d_21/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_21/Conv2D/ReadVariableOp-sequential_10/conv2d_21/Conv2D/ReadVariableOp2^
-sequential_10/dense_20/BiasAdd/ReadVariableOp-sequential_10/dense_20/BiasAdd/ReadVariableOp2\
,sequential_10/dense_20/MatMul/ReadVariableOp,sequential_10/dense_20/MatMul/ReadVariableOp2^
-sequential_10/dense_21/BiasAdd/ReadVariableOp-sequential_10/dense_21/BiasAdd/ReadVariableOp2\
,sequential_10/dense_21/MatMul/ReadVariableOp,sequential_10/dense_21/MatMul/ReadVariableOp:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_20_input
?C
?	
J__inference_sequential_10_layer_call_and_return_conditional_losses_1037975
dense_20_input#
dense_20_1037921:	d?
dense_20_1037923:	?-
batch_normalization_15_1037926:	?-
batch_normalization_15_1037928:	?-
batch_normalization_15_1037930:	?-
batch_normalization_15_1037932:	?$
dense_21_1037936:
??1
dense_21_1037938:	?1-
batch_normalization_16_1037941:	?1-
batch_normalization_16_1037943:	?1-
batch_normalization_16_1037945:	?1-
batch_normalization_16_1037947:	?1,
conv2d_20_1037953:?@
conv2d_20_1037955:@,
batch_normalization_17_1037958:@,
batch_normalization_17_1037960:@,
batch_normalization_17_1037962:@,
batch_normalization_17_1037964:@+
conv2d_21_1037969:@
conv2d_21_1037971:
identity??.batch_normalization_15/StatefulPartitionedCall?.batch_normalization_16/StatefulPartitionedCall?.batch_normalization_17/StatefulPartitionedCall?!conv2d_20/StatefulPartitionedCall?!conv2d_21/StatefulPartitionedCall? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCalldense_20_inputdense_20_1037921dense_20_1037923*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_10374402"
 dense_20/StatefulPartitionedCall?
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0batch_normalization_15_1037926batch_normalization_15_1037928batch_normalization_15_1037930batch_normalization_15_1037932*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_103701920
.batch_normalization_15/StatefulPartitionedCall?
activation_10/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_10_layer_call_and_return_conditional_losses_10374602
activation_10/PartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall&activation_10/PartitionedCall:output:0dense_21_1037936dense_21_1037938*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_10374722"
 dense_21/StatefulPartitionedCall?
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0batch_normalization_16_1037941batch_normalization_16_1037943batch_normalization_16_1037945batch_normalization_16_1037947*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_103718120
.batch_normalization_16/StatefulPartitionedCall?
activation_11/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_11_layer_call_and_return_conditional_losses_10374922
activation_11/PartitionedCall?
reshape_5/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_5_layer_call_and_return_conditional_losses_10375082
reshape_5/PartitionedCall?
 up_sampling2d_10/PartitionedCallPartitionedCall"reshape_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_10_layer_call_and_return_conditional_losses_10372722"
 up_sampling2d_10/PartitionedCall?
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_10/PartitionedCall:output:0conv2d_20_1037953conv2d_20_1037955*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_20_layer_call_and_return_conditional_losses_10375212#
!conv2d_20/StatefulPartitionedCall?
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0batch_normalization_17_1037958batch_normalization_17_1037960batch_normalization_17_1037962batch_normalization_17_1037964*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_103734420
.batch_normalization_17/StatefulPartitionedCall?
leaky_re_lu_20/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_10375412 
leaky_re_lu_20/PartitionedCall?
 up_sampling2d_11/PartitionedCallPartitionedCall'leaky_re_lu_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_11_layer_call_and_return_conditional_losses_10374172"
 up_sampling2d_11/PartitionedCall?
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_11/PartitionedCall:output:0conv2d_21_1037969conv2d_21_1037971*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_21_layer_call_and_return_conditional_losses_10375552#
!conv2d_21/StatefulPartitionedCall?
IdentityIdentity*conv2d_21/StatefulPartitionedCall:output:0/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_20_input
?Y
?
#__inference__traced_restore_1038833
file_prefix3
 assignvariableop_dense_20_kernel:	d?/
 assignvariableop_1_dense_20_bias:	?>
/assignvariableop_2_batch_normalization_15_gamma:	?=
.assignvariableop_3_batch_normalization_15_beta:	?D
5assignvariableop_4_batch_normalization_15_moving_mean:	?H
9assignvariableop_5_batch_normalization_15_moving_variance:	?6
"assignvariableop_6_dense_21_kernel:
??1/
 assignvariableop_7_dense_21_bias:	?1>
/assignvariableop_8_batch_normalization_16_gamma:	?1=
.assignvariableop_9_batch_normalization_16_beta:	?1E
6assignvariableop_10_batch_normalization_16_moving_mean:	?1I
:assignvariableop_11_batch_normalization_16_moving_variance:	?1?
$assignvariableop_12_conv2d_20_kernel:?@0
"assignvariableop_13_conv2d_20_bias:@>
0assignvariableop_14_batch_normalization_17_gamma:@=
/assignvariableop_15_batch_normalization_17_beta:@D
6assignvariableop_16_batch_normalization_17_moving_mean:@H
:assignvariableop_17_batch_normalization_17_moving_variance:@>
$assignvariableop_18_conv2d_21_kernel:@0
"assignvariableop_19_conv2d_21_bias:
identity_21??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_20_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_20_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_15_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_15_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_15_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_15_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_21_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_21_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_16_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_16_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_16_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_16_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_20_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_20_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_17_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_17_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_17_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_17_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_21_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_21_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_199
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_20Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_20?
Identity_21IdentityIdentity_20:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_21"#
identity_21Identity_21:output:0*=
_input_shapes,
*: : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
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
?	
?
E__inference_dense_20_layer_call_and_return_conditional_losses_1038351

inputs1
matmul_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
F__inference_conv2d_21_layer_call_and_return_conditional_losses_1037555

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
G
+__inference_reshape_5_layer_call_fn_1038555

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_5_layer_call_and_return_conditional_losses_10375082
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????1:P L
(
_output_shapes
:??????????1
 
_user_specified_nameinputs
?
?
/__inference_sequential_10_layer_call_fn_1037861
dense_20_input
unknown:	d?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??1
	unknown_6:	?1
	unknown_7:	?1
	unknown_8:	?1
	unknown_9:	?1

unknown_10:	?1%

unknown_11:?@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@

unknown_18:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*0
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_10377732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_20_input
?*
?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1037019

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_20_layer_call_and_return_conditional_losses_1037521

inputs9
conv2d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_activation_11_layer_call_and_return_conditional_losses_1037492

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????12
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????1:P L
(
_output_shapes
:??????????1
 
_user_specified_nameinputs
?
f
J__inference_activation_11_layer_call_and_return_conditional_losses_1038550

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????12
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????1:P L
(
_output_shapes
:??????????1
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1038650

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%??L>2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_16_layer_call_fn_1038473

inputs
unknown:	?1
	unknown_0:	?1
	unknown_1:	?1
	unknown_2:	?1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_10371212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????1: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????1
 
_user_specified_nameinputs
?
?
+__inference_conv2d_21_layer_call_fn_1038669

inputs!
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_21_layer_call_and_return_conditional_losses_10375552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1036959

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
K
/__inference_activation_10_layer_call_fn_1038436

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_10_layer_call_and_return_conditional_losses_10374602
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1038431

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_reshape_5_layer_call_and_return_conditional_losses_1037508

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????1:P L
(
_output_shapes
:??????????1
 
_user_specified_nameinputs
?
?
F__inference_conv2d_20_layer_call_and_return_conditional_losses_1038588

inputs9
conv2d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
ޏ
?
J__inference_sequential_10_layer_call_and_return_conditional_losses_1038208

inputs:
'dense_20_matmul_readvariableop_resource:	d?7
(dense_20_biasadd_readvariableop_resource:	?G
8batch_normalization_15_batchnorm_readvariableop_resource:	?K
<batch_normalization_15_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_15_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_15_batchnorm_readvariableop_2_resource:	?;
'dense_21_matmul_readvariableop_resource:
??17
(dense_21_biasadd_readvariableop_resource:	?1G
8batch_normalization_16_batchnorm_readvariableop_resource:	?1K
<batch_normalization_16_batchnorm_mul_readvariableop_resource:	?1I
:batch_normalization_16_batchnorm_readvariableop_1_resource:	?1I
:batch_normalization_16_batchnorm_readvariableop_2_resource:	?1C
(conv2d_20_conv2d_readvariableop_resource:?@7
)conv2d_20_biasadd_readvariableop_resource:@<
.batch_normalization_17_readvariableop_resource:@>
0batch_normalization_17_readvariableop_1_resource:@M
?batch_normalization_17_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_21_conv2d_readvariableop_resource:@7
)conv2d_21_biasadd_readvariableop_resource:
identity??/batch_normalization_15/batchnorm/ReadVariableOp?1batch_normalization_15/batchnorm/ReadVariableOp_1?1batch_normalization_15/batchnorm/ReadVariableOp_2?3batch_normalization_15/batchnorm/mul/ReadVariableOp?/batch_normalization_16/batchnorm/ReadVariableOp?1batch_normalization_16/batchnorm/ReadVariableOp_1?1batch_normalization_16/batchnorm/ReadVariableOp_2?3batch_normalization_16/batchnorm/mul/ReadVariableOp?6batch_normalization_17/FusedBatchNormV3/ReadVariableOp?8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_17/ReadVariableOp?'batch_normalization_17/ReadVariableOp_1? conv2d_20/BiasAdd/ReadVariableOp?conv2d_20/Conv2D/ReadVariableOp? conv2d_21/BiasAdd/ReadVariableOp?conv2d_21/Conv2D/ReadVariableOp?dense_20/BiasAdd/ReadVariableOp?dense_20/MatMul/ReadVariableOp?dense_21/BiasAdd/ReadVariableOp?dense_21/MatMul/ReadVariableOp?
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02 
dense_20/MatMul/ReadVariableOp?
dense_20/MatMulMatMulinputs&dense_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_20/MatMul?
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_20/BiasAdd/ReadVariableOp?
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_20/BiasAdd?
/batch_normalization_15/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_15_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_15/batchnorm/ReadVariableOp?
&batch_normalization_15/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_15/batchnorm/add/y?
$batch_normalization_15/batchnorm/addAddV27batch_normalization_15/batchnorm/ReadVariableOp:value:0/batch_normalization_15/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_15/batchnorm/add?
&batch_normalization_15/batchnorm/RsqrtRsqrt(batch_normalization_15/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_15/batchnorm/Rsqrt?
3batch_normalization_15/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_15_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_15/batchnorm/mul/ReadVariableOp?
$batch_normalization_15/batchnorm/mulMul*batch_normalization_15/batchnorm/Rsqrt:y:0;batch_normalization_15/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_15/batchnorm/mul?
&batch_normalization_15/batchnorm/mul_1Muldense_20/BiasAdd:output:0(batch_normalization_15/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_15/batchnorm/mul_1?
1batch_normalization_15/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_15_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_15/batchnorm/ReadVariableOp_1?
&batch_normalization_15/batchnorm/mul_2Mul9batch_normalization_15/batchnorm/ReadVariableOp_1:value:0(batch_normalization_15/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_15/batchnorm/mul_2?
1batch_normalization_15/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_15_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_15/batchnorm/ReadVariableOp_2?
$batch_normalization_15/batchnorm/subSub9batch_normalization_15/batchnorm/ReadVariableOp_2:value:0*batch_normalization_15/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_15/batchnorm/sub?
&batch_normalization_15/batchnorm/add_1AddV2*batch_normalization_15/batchnorm/mul_1:z:0(batch_normalization_15/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_15/batchnorm/add_1?
activation_10/ReluRelu*batch_normalization_15/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_10/Relu?
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
??1*
dtype02 
dense_21/MatMul/ReadVariableOp?
dense_21/MatMulMatMul activation_10/Relu:activations:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
dense_21/MatMul?
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:?1*
dtype02!
dense_21/BiasAdd/ReadVariableOp?
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
dense_21/BiasAdd?
/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes	
:?1*
dtype021
/batch_normalization_16/batchnorm/ReadVariableOp?
&batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_16/batchnorm/add/y?
$batch_normalization_16/batchnorm/addAddV27batch_normalization_16/batchnorm/ReadVariableOp:value:0/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?12&
$batch_normalization_16/batchnorm/add?
&batch_normalization_16/batchnorm/RsqrtRsqrt(batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes	
:?12(
&batch_normalization_16/batchnorm/Rsqrt?
3batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?1*
dtype025
3batch_normalization_16/batchnorm/mul/ReadVariableOp?
$batch_normalization_16/batchnorm/mulMul*batch_normalization_16/batchnorm/Rsqrt:y:0;batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?12&
$batch_normalization_16/batchnorm/mul?
&batch_normalization_16/batchnorm/mul_1Muldense_21/BiasAdd:output:0(batch_normalization_16/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????12(
&batch_normalization_16/batchnorm/mul_1?
1batch_normalization_16/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_16_batchnorm_readvariableop_1_resource*
_output_shapes	
:?1*
dtype023
1batch_normalization_16/batchnorm/ReadVariableOp_1?
&batch_normalization_16/batchnorm/mul_2Mul9batch_normalization_16/batchnorm/ReadVariableOp_1:value:0(batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes	
:?12(
&batch_normalization_16/batchnorm/mul_2?
1batch_normalization_16/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_16_batchnorm_readvariableop_2_resource*
_output_shapes	
:?1*
dtype023
1batch_normalization_16/batchnorm/ReadVariableOp_2?
$batch_normalization_16/batchnorm/subSub9batch_normalization_16/batchnorm/ReadVariableOp_2:value:0*batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?12&
$batch_normalization_16/batchnorm/sub?
&batch_normalization_16/batchnorm/add_1AddV2*batch_normalization_16/batchnorm/mul_1:z:0(batch_normalization_16/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????12(
&batch_normalization_16/batchnorm/add_1?
activation_11/ReluRelu*batch_normalization_16/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????12
activation_11/Relur
reshape_5/ShapeShape activation_11/Relu:activations:0*
T0*
_output_shapes
:2
reshape_5/Shape?
reshape_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_5/strided_slice/stack?
reshape_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_5/strided_slice/stack_1?
reshape_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_5/strided_slice/stack_2?
reshape_5/strided_sliceStridedSlicereshape_5/Shape:output:0&reshape_5/strided_slice/stack:output:0(reshape_5/strided_slice/stack_1:output:0(reshape_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_5/strided_slicex
reshape_5/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_5/Reshape/shape/1x
reshape_5/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_5/Reshape/shape/2y
reshape_5/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_5/Reshape/shape/3?
reshape_5/Reshape/shapePack reshape_5/strided_slice:output:0"reshape_5/Reshape/shape/1:output:0"reshape_5/Reshape/shape/2:output:0"reshape_5/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_5/Reshape/shape?
reshape_5/ReshapeReshape activation_11/Relu:activations:0 reshape_5/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_5/Reshape?
up_sampling2d_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_10/Const?
up_sampling2d_10/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_10/Const_1?
up_sampling2d_10/mulMulup_sampling2d_10/Const:output:0!up_sampling2d_10/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_10/mul?
-up_sampling2d_10/resize/ResizeNearestNeighborResizeNearestNeighborreshape_5/Reshape:output:0up_sampling2d_10/mul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(2/
-up_sampling2d_10/resize/ResizeNearestNeighbor?
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02!
conv2d_20/Conv2D/ReadVariableOp?
conv2d_20/Conv2DConv2D>up_sampling2d_10/resize/ResizeNearestNeighbor:resized_images:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_20/Conv2D?
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_20/BiasAdd/ReadVariableOp?
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_20/BiasAdd?
%batch_normalization_17/ReadVariableOpReadVariableOp.batch_normalization_17_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_17/ReadVariableOp?
'batch_normalization_17/ReadVariableOp_1ReadVariableOp0batch_normalization_17_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_17/ReadVariableOp_1?
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_17/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_17/FusedBatchNormV3FusedBatchNormV3conv2d_20/BiasAdd:output:0-batch_normalization_17/ReadVariableOp:value:0/batch_normalization_17/ReadVariableOp_1:value:0>batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_17/FusedBatchNormV3?
leaky_re_lu_20/LeakyRelu	LeakyRelu+batch_normalization_17/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@2
leaky_re_lu_20/LeakyRelu?
up_sampling2d_11/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_11/Const?
up_sampling2d_11/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_11/Const_1?
up_sampling2d_11/mulMulup_sampling2d_11/Const:output:0!up_sampling2d_11/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_11/mul?
-up_sampling2d_11/resize/ResizeNearestNeighborResizeNearestNeighbor&leaky_re_lu_20/LeakyRelu:activations:0up_sampling2d_11/mul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(2/
-up_sampling2d_11/resize/ResizeNearestNeighbor?
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_21/Conv2D/ReadVariableOp?
conv2d_21/Conv2DConv2D>up_sampling2d_11/resize/ResizeNearestNeighbor:resized_images:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_21/Conv2D?
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_21/BiasAdd/ReadVariableOp?
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_21/BiasAdd~
conv2d_21/TanhTanhconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_21/Tanh?
IdentityIdentityconv2d_21/Tanh:y:00^batch_normalization_15/batchnorm/ReadVariableOp2^batch_normalization_15/batchnorm/ReadVariableOp_12^batch_normalization_15/batchnorm/ReadVariableOp_24^batch_normalization_15/batchnorm/mul/ReadVariableOp0^batch_normalization_16/batchnorm/ReadVariableOp2^batch_normalization_16/batchnorm/ReadVariableOp_12^batch_normalization_16/batchnorm/ReadVariableOp_24^batch_normalization_16/batchnorm/mul/ReadVariableOp7^batch_normalization_17/FusedBatchNormV3/ReadVariableOp9^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_17/ReadVariableOp(^batch_normalization_17/ReadVariableOp_1!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_15/batchnorm/ReadVariableOp/batch_normalization_15/batchnorm/ReadVariableOp2f
1batch_normalization_15/batchnorm/ReadVariableOp_11batch_normalization_15/batchnorm/ReadVariableOp_12f
1batch_normalization_15/batchnorm/ReadVariableOp_21batch_normalization_15/batchnorm/ReadVariableOp_22j
3batch_normalization_15/batchnorm/mul/ReadVariableOp3batch_normalization_15/batchnorm/mul/ReadVariableOp2b
/batch_normalization_16/batchnorm/ReadVariableOp/batch_normalization_16/batchnorm/ReadVariableOp2f
1batch_normalization_16/batchnorm/ReadVariableOp_11batch_normalization_16/batchnorm/ReadVariableOp_12f
1batch_normalization_16/batchnorm/ReadVariableOp_21batch_normalization_16/batchnorm/ReadVariableOp_22j
3batch_normalization_16/batchnorm/mul/ReadVariableOp3batch_normalization_16/batchnorm/mul/ReadVariableOp2p
6batch_normalization_17/FusedBatchNormV3/ReadVariableOp6batch_normalization_17/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_18batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_17/ReadVariableOp%batch_normalization_17/ReadVariableOp2R
'batch_normalization_17/ReadVariableOp_1'batch_normalization_17/ReadVariableOp_12D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_dense_21_layer_call_fn_1038450

inputs
unknown:
??1
	unknown_0:	?1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_10374722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
L
0__inference_leaky_re_lu_20_layer_call_fn_1038655

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_10375412
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
b
F__inference_reshape_5_layer_call_and_return_conditional_losses_1038569

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????1:P L
(
_output_shapes
:??????????1
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_17_layer_call_fn_1038601

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_10373002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?*
?
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1038540

inputs6
'assignmovingavg_readvariableop_resource:	?18
)assignmovingavg_1_readvariableop_resource:	?14
%batchnorm_mul_readvariableop_resource:	?10
!batchnorm_readvariableop_resource:	?1
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?1*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?12
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????12
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?1*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?1*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?1*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?1*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?12
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?12
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?1*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?12
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?12
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?12
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?12
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?1*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?12
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????12
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?12
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?1*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?12
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????12
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????1: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????1
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_15_layer_call_fn_1038364

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_10369592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_16_layer_call_fn_1038486

inputs
unknown:	?1
	unknown_0:	?1
	unknown_1:	?1
	unknown_2:	?1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_10371812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????1: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????1
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1037121

inputs0
!batchnorm_readvariableop_resource:	?14
%batchnorm_mul_readvariableop_resource:	?12
#batchnorm_readvariableop_1_resource:	?12
#batchnorm_readvariableop_2_resource:	?1
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?1*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?12
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?12
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?1*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?12
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????12
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?1*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?12
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?1*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?12
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????12
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????1: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????1
 
_user_specified_nameinputs
?
N
2__inference_up_sampling2d_11_layer_call_fn_1037423

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_11_layer_call_and_return_conditional_losses_10374172
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
i
M__inference_up_sampling2d_10_layer_call_and_return_conditional_losses_1037272

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mul?
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4????????????????????????????????????*
half_pixel_centers(2
resize/ResizeNearestNeighbor?
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_21_layer_call_and_return_conditional_losses_1038460

inputs2
matmul_readvariableop_resource:
??1.
biasadd_readvariableop_resource:	?1
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??1*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?1*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_20_layer_call_fn_1038578

inputs"
unknown:?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_20_layer_call_and_return_conditional_losses_10375212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?C
?	
J__inference_sequential_10_layer_call_and_return_conditional_losses_1037562

inputs#
dense_20_1037441:	d?
dense_20_1037443:	?-
batch_normalization_15_1037446:	?-
batch_normalization_15_1037448:	?-
batch_normalization_15_1037450:	?-
batch_normalization_15_1037452:	?$
dense_21_1037473:
??1
dense_21_1037475:	?1-
batch_normalization_16_1037478:	?1-
batch_normalization_16_1037480:	?1-
batch_normalization_16_1037482:	?1-
batch_normalization_16_1037484:	?1,
conv2d_20_1037522:?@
conv2d_20_1037524:@,
batch_normalization_17_1037527:@,
batch_normalization_17_1037529:@,
batch_normalization_17_1037531:@,
batch_normalization_17_1037533:@+
conv2d_21_1037556:@
conv2d_21_1037558:
identity??.batch_normalization_15/StatefulPartitionedCall?.batch_normalization_16/StatefulPartitionedCall?.batch_normalization_17/StatefulPartitionedCall?!conv2d_20/StatefulPartitionedCall?!conv2d_21/StatefulPartitionedCall? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCallinputsdense_20_1037441dense_20_1037443*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_10374402"
 dense_20/StatefulPartitionedCall?
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0batch_normalization_15_1037446batch_normalization_15_1037448batch_normalization_15_1037450batch_normalization_15_1037452*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_103695920
.batch_normalization_15/StatefulPartitionedCall?
activation_10/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_10_layer_call_and_return_conditional_losses_10374602
activation_10/PartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall&activation_10/PartitionedCall:output:0dense_21_1037473dense_21_1037475*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_10374722"
 dense_21/StatefulPartitionedCall?
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0batch_normalization_16_1037478batch_normalization_16_1037480batch_normalization_16_1037482batch_normalization_16_1037484*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_103712120
.batch_normalization_16/StatefulPartitionedCall?
activation_11/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_11_layer_call_and_return_conditional_losses_10374922
activation_11/PartitionedCall?
reshape_5/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_5_layer_call_and_return_conditional_losses_10375082
reshape_5/PartitionedCall?
 up_sampling2d_10/PartitionedCallPartitionedCall"reshape_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_10_layer_call_and_return_conditional_losses_10372722"
 up_sampling2d_10/PartitionedCall?
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_10/PartitionedCall:output:0conv2d_20_1037522conv2d_20_1037524*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_20_layer_call_and_return_conditional_losses_10375212#
!conv2d_20/StatefulPartitionedCall?
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0batch_normalization_17_1037527batch_normalization_17_1037529batch_normalization_17_1037531batch_normalization_17_1037533*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_103730020
.batch_normalization_17/StatefulPartitionedCall?
leaky_re_lu_20/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_10375412 
leaky_re_lu_20/PartitionedCall?
 up_sampling2d_11/PartitionedCallPartitionedCall'leaky_re_lu_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_11_layer_call_and_return_conditional_losses_10374172"
 up_sampling2d_11/PartitionedCall?
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_11/PartitionedCall:output:0conv2d_21_1037556conv2d_21_1037558*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_21_layer_call_and_return_conditional_losses_10375552#
!conv2d_21/StatefulPartitionedCall?
IdentityIdentity*conv2d_21/StatefulPartitionedCall:output:0/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_1037541

inputs
identityn
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+???????????????????????????@2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+???????????????????????????@:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_15_layer_call_fn_1038377

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_10370192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?C
?	
J__inference_sequential_10_layer_call_and_return_conditional_losses_1037773

inputs#
dense_20_1037719:	d?
dense_20_1037721:	?-
batch_normalization_15_1037724:	?-
batch_normalization_15_1037726:	?-
batch_normalization_15_1037728:	?-
batch_normalization_15_1037730:	?$
dense_21_1037734:
??1
dense_21_1037736:	?1-
batch_normalization_16_1037739:	?1-
batch_normalization_16_1037741:	?1-
batch_normalization_16_1037743:	?1-
batch_normalization_16_1037745:	?1,
conv2d_20_1037751:?@
conv2d_20_1037753:@,
batch_normalization_17_1037756:@,
batch_normalization_17_1037758:@,
batch_normalization_17_1037760:@,
batch_normalization_17_1037762:@+
conv2d_21_1037767:@
conv2d_21_1037769:
identity??.batch_normalization_15/StatefulPartitionedCall?.batch_normalization_16/StatefulPartitionedCall?.batch_normalization_17/StatefulPartitionedCall?!conv2d_20/StatefulPartitionedCall?!conv2d_21/StatefulPartitionedCall? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCallinputsdense_20_1037719dense_20_1037721*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_10374402"
 dense_20/StatefulPartitionedCall?
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0batch_normalization_15_1037724batch_normalization_15_1037726batch_normalization_15_1037728batch_normalization_15_1037730*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_103701920
.batch_normalization_15/StatefulPartitionedCall?
activation_10/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_10_layer_call_and_return_conditional_losses_10374602
activation_10/PartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall&activation_10/PartitionedCall:output:0dense_21_1037734dense_21_1037736*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_10374722"
 dense_21/StatefulPartitionedCall?
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0batch_normalization_16_1037739batch_normalization_16_1037741batch_normalization_16_1037743batch_normalization_16_1037745*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_103718120
.batch_normalization_16/StatefulPartitionedCall?
activation_11/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_11_layer_call_and_return_conditional_losses_10374922
activation_11/PartitionedCall?
reshape_5/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_5_layer_call_and_return_conditional_losses_10375082
reshape_5/PartitionedCall?
 up_sampling2d_10/PartitionedCallPartitionedCall"reshape_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_10_layer_call_and_return_conditional_losses_10372722"
 up_sampling2d_10/PartitionedCall?
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_10/PartitionedCall:output:0conv2d_20_1037751conv2d_20_1037753*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_20_layer_call_and_return_conditional_losses_10375212#
!conv2d_20/StatefulPartitionedCall?
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0batch_normalization_17_1037756batch_normalization_17_1037758batch_normalization_17_1037760batch_normalization_17_1037762*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_103734420
.batch_normalization_17/StatefulPartitionedCall?
leaky_re_lu_20/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_10375412 
leaky_re_lu_20/PartitionedCall?
 up_sampling2d_11/PartitionedCallPartitionedCall'leaky_re_lu_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_11_layer_call_and_return_conditional_losses_10374172"
 up_sampling2d_11/PartitionedCall?
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_11/PartitionedCall:output:0conv2d_21_1037767conv2d_21_1037769*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_21_layer_call_and_return_conditional_losses_10375552#
!conv2d_21/StatefulPartitionedCall?
IdentityIdentity*conv2d_21/StatefulPartitionedCall:output:0/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_1038022
dense_20_input
unknown:	d?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??1
	unknown_6:	?1
	unknown_7:	?1
	unknown_8:	?1
	unknown_9:	?1

unknown_10:	?1%

unknown_11:?@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@

unknown_18:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_10369352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_20_input
?	
?
E__inference_dense_21_layer_call_and_return_conditional_losses_1037472

inputs2
matmul_readvariableop_resource:
??1.
biasadd_readvariableop_resource:	?1
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??1*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?1*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?C
?	
J__inference_sequential_10_layer_call_and_return_conditional_losses_1037918
dense_20_input#
dense_20_1037864:	d?
dense_20_1037866:	?-
batch_normalization_15_1037869:	?-
batch_normalization_15_1037871:	?-
batch_normalization_15_1037873:	?-
batch_normalization_15_1037875:	?$
dense_21_1037879:
??1
dense_21_1037881:	?1-
batch_normalization_16_1037884:	?1-
batch_normalization_16_1037886:	?1-
batch_normalization_16_1037888:	?1-
batch_normalization_16_1037890:	?1,
conv2d_20_1037896:?@
conv2d_20_1037898:@,
batch_normalization_17_1037901:@,
batch_normalization_17_1037903:@,
batch_normalization_17_1037905:@,
batch_normalization_17_1037907:@+
conv2d_21_1037912:@
conv2d_21_1037914:
identity??.batch_normalization_15/StatefulPartitionedCall?.batch_normalization_16/StatefulPartitionedCall?.batch_normalization_17/StatefulPartitionedCall?!conv2d_20/StatefulPartitionedCall?!conv2d_21/StatefulPartitionedCall? dense_20/StatefulPartitionedCall? dense_21/StatefulPartitionedCall?
 dense_20/StatefulPartitionedCallStatefulPartitionedCalldense_20_inputdense_20_1037864dense_20_1037866*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_10374402"
 dense_20/StatefulPartitionedCall?
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0batch_normalization_15_1037869batch_normalization_15_1037871batch_normalization_15_1037873batch_normalization_15_1037875*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_103695920
.batch_normalization_15/StatefulPartitionedCall?
activation_10/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_10_layer_call_and_return_conditional_losses_10374602
activation_10/PartitionedCall?
 dense_21/StatefulPartitionedCallStatefulPartitionedCall&activation_10/PartitionedCall:output:0dense_21_1037879dense_21_1037881*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_10374722"
 dense_21/StatefulPartitionedCall?
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0batch_normalization_16_1037884batch_normalization_16_1037886batch_normalization_16_1037888batch_normalization_16_1037890*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_103712120
.batch_normalization_16/StatefulPartitionedCall?
activation_11/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_11_layer_call_and_return_conditional_losses_10374922
activation_11/PartitionedCall?
reshape_5/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_5_layer_call_and_return_conditional_losses_10375082
reshape_5/PartitionedCall?
 up_sampling2d_10/PartitionedCallPartitionedCall"reshape_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_10_layer_call_and_return_conditional_losses_10372722"
 up_sampling2d_10/PartitionedCall?
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_10/PartitionedCall:output:0conv2d_20_1037896conv2d_20_1037898*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_20_layer_call_and_return_conditional_losses_10375212#
!conv2d_20/StatefulPartitionedCall?
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0batch_normalization_17_1037901batch_normalization_17_1037903batch_normalization_17_1037905batch_normalization_17_1037907*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_103730020
.batch_normalization_17/StatefulPartitionedCall?
leaky_re_lu_20/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_10375412 
leaky_re_lu_20/PartitionedCall?
 up_sampling2d_11/PartitionedCallPartitionedCall'leaky_re_lu_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_11_layer_call_and_return_conditional_losses_10374172"
 up_sampling2d_11/PartitionedCall?
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_11/PartitionedCall:output:0conv2d_21_1037912conv2d_21_1037914*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_21_layer_call_and_return_conditional_losses_10375552#
!conv2d_21/StatefulPartitionedCall?
IdentityIdentity*conv2d_21/StatefulPartitionedCall:output:0/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_20_input
?
f
J__inference_activation_10_layer_call_and_return_conditional_losses_1037460

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_dense_20_layer_call_fn_1038341

inputs
unknown:	d?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_10374402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_sequential_10_layer_call_fn_1037605
dense_20_input
unknown:	d?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??1
	unknown_6:	?1
	unknown_7:	?1
	unknown_8:	?1
	unknown_9:	?1

unknown_10:	?1%

unknown_11:?@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@

unknown_18:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_10375622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_20_input
?4
?	
 __inference__traced_save_1038763
file_prefix.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop;
7savev2_batch_normalization_15_gamma_read_readvariableop:
6savev2_batch_normalization_15_beta_read_readvariableopA
=savev2_batch_normalization_15_moving_mean_read_readvariableopE
Asavev2_batch_normalization_15_moving_variance_read_readvariableop.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableop;
7savev2_batch_normalization_16_gamma_read_readvariableop:
6savev2_batch_normalization_16_beta_read_readvariableopA
=savev2_batch_normalization_16_moving_mean_read_readvariableopE
Asavev2_batch_normalization_16_moving_variance_read_readvariableop/
+savev2_conv2d_20_kernel_read_readvariableop-
)savev2_conv2d_20_bias_read_readvariableop;
7savev2_batch_normalization_17_gamma_read_readvariableop:
6savev2_batch_normalization_17_beta_read_readvariableopA
=savev2_batch_normalization_17_moving_mean_read_readvariableopE
Asavev2_batch_normalization_17_moving_variance_read_readvariableop/
+savev2_conv2d_21_kernel_read_readvariableop-
)savev2_conv2d_21_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop7savev2_batch_normalization_15_gamma_read_readvariableop6savev2_batch_normalization_15_beta_read_readvariableop=savev2_batch_normalization_15_moving_mean_read_readvariableopAsavev2_batch_normalization_15_moving_variance_read_readvariableop*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop7savev2_batch_normalization_16_gamma_read_readvariableop6savev2_batch_normalization_16_beta_read_readvariableop=savev2_batch_normalization_16_moving_mean_read_readvariableopAsavev2_batch_normalization_16_moving_variance_read_readvariableop+savev2_conv2d_20_kernel_read_readvariableop)savev2_conv2d_20_bias_read_readvariableop7savev2_batch_normalization_17_gamma_read_readvariableop6savev2_batch_normalization_17_beta_read_readvariableop=savev2_batch_normalization_17_moving_mean_read_readvariableopAsavev2_batch_normalization_17_moving_variance_read_readvariableop+savev2_conv2d_21_kernel_read_readvariableop)savev2_conv2d_21_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *#
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	d?:?:?:?:?:?:
??1:?1:?1:?1:?1:?1:?@:@:@:@:@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	d?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??1:!

_output_shapes	
:?1:!	

_output_shapes	
:?1:!


_output_shapes	
:?1:!

_output_shapes	
:?1:!

_output_shapes	
:?1:-)
'
_output_shapes
:?@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
::

_output_shapes
: 
?
?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1038397

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
N
2__inference_up_sampling2d_10_layer_call_fn_1037278

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_up_sampling2d_10_layer_call_and_return_conditional_losses_10372722
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_20_layer_call_and_return_conditional_losses_1037440

inputs1
matmul_readvariableop_resource:	d?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_17_layer_call_fn_1038614

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_10373442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
/__inference_sequential_10_layer_call_fn_1038067

inputs
unknown:	d?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??1
	unknown_6:	?1
	unknown_7:	?1
	unknown_8:	?1
	unknown_9:	?1

unknown_10:	?1%

unknown_11:?@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@

unknown_18:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_10375622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_sequential_10_layer_call_fn_1038112

inputs
unknown:	d?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
??1
	unknown_6:	?1
	unknown_7:	?1
	unknown_8:	?1
	unknown_9:	?1

unknown_10:	?1%

unknown_11:?@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@

unknown_18:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*0
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_10377732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1038632

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1037300

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
f
J__inference_activation_10_layer_call_and_return_conditional_losses_1038441

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_21_layer_call_and_return_conditional_losses_1038680

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1037344

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%??L>2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
K
/__inference_activation_11_layer_call_fn_1038545

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????1* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_activation_11_layer_call_and_return_conditional_losses_10374922
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????1:P L
(
_output_shapes
:??????????1
 
_user_specified_nameinputs
?*
?
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1037181

inputs6
'assignmovingavg_readvariableop_resource:	?18
)assignmovingavg_1_readvariableop_resource:	?14
%batchnorm_mul_readvariableop_resource:	?10
!batchnorm_readvariableop_resource:	?1
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?1*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?12
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????12
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?1*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?1*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?1*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?1*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?12
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?12
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?1*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?12
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?12
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?12
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?12
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?1*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?12
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????12
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?12
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?1*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?12
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????12
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:??????????12

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????1: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????1
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
I
dense_20_input7
 serving_default_dense_20_input:0?????????dE
	conv2d_218
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?c
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer-11
layer_with_weights-6
layer-12
	variables
regularization_losses
trainable_variables
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?_
_tf_keras_sequential?_{"name": "sequential_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_20_input"}}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_15", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_10", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 6272, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_16", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_11", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Reshape", "config": {"name": "reshape_5", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_10", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_17", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_20", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_11", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 100]}, "float32", "dense_20_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_20_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_15", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8}, {"class_name": "Activation", "config": {"name": "activation_10", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 9}, {"class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 6272, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_16", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 14}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 16}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 17}, {"class_name": "Activation", "config": {"name": "activation_11", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 18}, {"class_name": "Reshape", "config": {"name": "reshape_5", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}, "shared_object_id": 19}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_10", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "shared_object_id": 20}, {"class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_17", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 25}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 27}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 28}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_20", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 29}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_11", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "shared_object_id": 30}, {"class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 33}]}}}
?	

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_20", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?

axis
	gamma
beta
moving_mean
moving_variance
	variables
regularization_losses
 trainable_variables
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_15", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 1024}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?
"	variables
#regularization_losses
$trainable_variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_10", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 9}
?	

&kernel
'bias
(	variables
)regularization_losses
*trainable_variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 6272, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?

,axis
	-gamma
.beta
/moving_mean
0moving_variance
1	variables
2regularization_losses
3trainable_variables
4	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_16", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_16", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 14}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 16}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 6272}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6272]}}
?
5	variables
6regularization_losses
7trainable_variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_11", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 18}
?
9	variables
:regularization_losses
;trainable_variables
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "reshape_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape_5", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}, "shared_object_id": 19}
?
=	variables
>regularization_losses
?trainable_variables
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "up_sampling2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_10", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 39}}
?


Akernel
Bbias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 128]}}
?

Gaxis
	Hgamma
Ibeta
Jmoving_mean
Kmoving_variance
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_17", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 25}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 27}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 64]}}
?
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_20", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 29}
?
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "up_sampling2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_11", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "shared_object_id": 30, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 42}}
?


Xkernel
Ybias
Z	variables
[regularization_losses
\trainable_variables
]	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 33, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 43}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
?
0
1
2
3
4
5
&6
'7
-8
.9
/10
011
A12
B13
H14
I15
J16
K17
X18
Y19"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
1
2
3
&4
'5
-6
.7
A8
B9
H10
I11
X12
Y13"
trackable_list_wrapper
?
^metrics
_non_trainable_variables
	variables

`layers
regularization_losses
alayer_metrics
trainable_variables
blayer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
": 	d?2dense_20/kernel
:?2dense_20/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
cmetrics
dnon_trainable_variables
	variables

elayers
regularization_losses
flayer_metrics
trainable_variables
glayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?2batch_normalization_15/gamma
*:(?2batch_normalization_15/beta
3:1? (2"batch_normalization_15/moving_mean
7:5? (2&batch_normalization_15/moving_variance
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
hmetrics
inon_trainable_variables
	variables

jlayers
regularization_losses
klayer_metrics
 trainable_variables
llayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
mmetrics
nnon_trainable_variables
"	variables

olayers
#regularization_losses
player_metrics
$trainable_variables
qlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??12dense_21/kernel
:?12dense_21/bias
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
?
rmetrics
snon_trainable_variables
(	variables

tlayers
)regularization_losses
ulayer_metrics
*trainable_variables
vlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)?12batch_normalization_16/gamma
*:(?12batch_normalization_16/beta
3:1?1 (2"batch_normalization_16/moving_mean
7:5?1 (2&batch_normalization_16/moving_variance
<
-0
.1
/2
03"
trackable_list_wrapper
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
?
wmetrics
xnon_trainable_variables
1	variables

ylayers
2regularization_losses
zlayer_metrics
3trainable_variables
{layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
|metrics
}non_trainable_variables
5	variables

~layers
6regularization_losses
layer_metrics
7trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?non_trainable_variables
9	variables
?layers
:regularization_losses
?layer_metrics
;trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?non_trainable_variables
=	variables
?layers
>regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)?@2conv2d_20/kernel
:@2conv2d_20/bias
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
?
?metrics
?non_trainable_variables
C	variables
?layers
Dregularization_losses
?layer_metrics
Etrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_17/gamma
):'@2batch_normalization_17/beta
2:0@ (2"batch_normalization_17/moving_mean
6:4@ (2&batch_normalization_17/moving_variance
<
H0
I1
J2
K3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
?
?metrics
?non_trainable_variables
L	variables
?layers
Mregularization_losses
?layer_metrics
Ntrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?non_trainable_variables
P	variables
?layers
Qregularization_losses
?layer_metrics
Rtrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?non_trainable_variables
T	variables
?layers
Uregularization_losses
?layer_metrics
Vtrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(@2conv2d_21/kernel
:2conv2d_21/bias
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
?
?metrics
?non_trainable_variables
Z	variables
?layers
[regularization_losses
?layer_metrics
\trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
0
1
/2
03
J4
K5"
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
?2?
/__inference_sequential_10_layer_call_fn_1037605
/__inference_sequential_10_layer_call_fn_1038067
/__inference_sequential_10_layer_call_fn_1038112
/__inference_sequential_10_layer_call_fn_1037861?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
"__inference__wrapped_model_1036935?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *-?*
(?%
dense_20_input?????????d
?2?
J__inference_sequential_10_layer_call_and_return_conditional_losses_1038208
J__inference_sequential_10_layer_call_and_return_conditional_losses_1038332
J__inference_sequential_10_layer_call_and_return_conditional_losses_1037918
J__inference_sequential_10_layer_call_and_return_conditional_losses_1037975?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_20_layer_call_fn_1038341?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_20_layer_call_and_return_conditional_losses_1038351?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
8__inference_batch_normalization_15_layer_call_fn_1038364
8__inference_batch_normalization_15_layer_call_fn_1038377?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1038397
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1038431?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_activation_10_layer_call_fn_1038436?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_activation_10_layer_call_and_return_conditional_losses_1038441?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_21_layer_call_fn_1038450?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_21_layer_call_and_return_conditional_losses_1038460?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
8__inference_batch_normalization_16_layer_call_fn_1038473
8__inference_batch_normalization_16_layer_call_fn_1038486?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1038506
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1038540?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_activation_11_layer_call_fn_1038545?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_activation_11_layer_call_and_return_conditional_losses_1038550?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_reshape_5_layer_call_fn_1038555?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_reshape_5_layer_call_and_return_conditional_losses_1038569?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_up_sampling2d_10_layer_call_fn_1037278?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
M__inference_up_sampling2d_10_layer_call_and_return_conditional_losses_1037272?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
+__inference_conv2d_20_layer_call_fn_1038578?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_20_layer_call_and_return_conditional_losses_1038588?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
8__inference_batch_normalization_17_layer_call_fn_1038601
8__inference_batch_normalization_17_layer_call_fn_1038614?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1038632
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1038650?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_leaky_re_lu_20_layer_call_fn_1038655?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_1038660?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_up_sampling2d_11_layer_call_fn_1037423?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
M__inference_up_sampling2d_11_layer_call_and_return_conditional_losses_1037417?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
+__inference_conv2d_21_layer_call_fn_1038669?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv2d_21_layer_call_and_return_conditional_losses_1038680?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_1038022dense_20_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_1036935?&'0-/.ABHIJKXY7?4
-?*
(?%
dense_20_input?????????d
? "=?:
8
	conv2d_21+?(
	conv2d_21??????????
J__inference_activation_10_layer_call_and_return_conditional_losses_1038441Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
/__inference_activation_10_layer_call_fn_1038436M0?-
&?#
!?
inputs??????????
? "????????????
J__inference_activation_11_layer_call_and_return_conditional_losses_1038550Z0?-
&?#
!?
inputs??????????1
? "&?#
?
0??????????1
? ?
/__inference_activation_11_layer_call_fn_1038545M0?-
&?#
!?
inputs??????????1
? "???????????1?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1038397d4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1038431d4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
8__inference_batch_normalization_15_layer_call_fn_1038364W4?1
*?'
!?
inputs??????????
p 
? "????????????
8__inference_batch_normalization_15_layer_call_fn_1038377W4?1
*?'
!?
inputs??????????
p
? "????????????
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1038506d0-/.4?1
*?'
!?
inputs??????????1
p 
? "&?#
?
0??????????1
? ?
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1038540d/0-.4?1
*?'
!?
inputs??????????1
p
? "&?#
?
0??????????1
? ?
8__inference_batch_normalization_16_layer_call_fn_1038473W0-/.4?1
*?'
!?
inputs??????????1
p 
? "???????????1?
8__inference_batch_normalization_16_layer_call_fn_1038486W/0-.4?1
*?'
!?
inputs??????????1
p
? "???????????1?
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1038632?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1038650?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
8__inference_batch_normalization_17_layer_call_fn_1038601?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
8__inference_batch_normalization_17_layer_call_fn_1038614?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
F__inference_conv2d_20_layer_call_and_return_conditional_losses_1038588?ABJ?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
+__inference_conv2d_20_layer_call_fn_1038578?ABJ?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
F__inference_conv2d_21_layer_call_and_return_conditional_losses_1038680?XYI?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????
? ?
+__inference_conv2d_21_layer_call_fn_1038669?XYI?F
??<
:?7
inputs+???????????????????????????@
? "2?/+????????????????????????????
E__inference_dense_20_layer_call_and_return_conditional_losses_1038351]/?,
%?"
 ?
inputs?????????d
? "&?#
?
0??????????
? ~
*__inference_dense_20_layer_call_fn_1038341P/?,
%?"
 ?
inputs?????????d
? "????????????
E__inference_dense_21_layer_call_and_return_conditional_losses_1038460^&'0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????1
? 
*__inference_dense_21_layer_call_fn_1038450Q&'0?-
&?#
!?
inputs??????????
? "???????????1?
K__inference_leaky_re_lu_20_layer_call_and_return_conditional_losses_1038660?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
0__inference_leaky_re_lu_20_layer_call_fn_1038655I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
F__inference_reshape_5_layer_call_and_return_conditional_losses_1038569b0?-
&?#
!?
inputs??????????1
? ".?+
$?!
0??????????
? ?
+__inference_reshape_5_layer_call_fn_1038555U0?-
&?#
!?
inputs??????????1
? "!????????????
J__inference_sequential_10_layer_call_and_return_conditional_losses_1037918?&'0-/.ABHIJKXY??<
5?2
(?%
dense_20_input?????????d
p 

 
? "??<
5?2
0+???????????????????????????
? ?
J__inference_sequential_10_layer_call_and_return_conditional_losses_1037975?&'/0-.ABHIJKXY??<
5?2
(?%
dense_20_input?????????d
p

 
? "??<
5?2
0+???????????????????????????
? ?
J__inference_sequential_10_layer_call_and_return_conditional_losses_1038208~&'0-/.ABHIJKXY7?4
-?*
 ?
inputs?????????d
p 

 
? "-?*
#? 
0?????????
? ?
J__inference_sequential_10_layer_call_and_return_conditional_losses_1038332~&'/0-.ABHIJKXY7?4
-?*
 ?
inputs?????????d
p

 
? "-?*
#? 
0?????????
? ?
/__inference_sequential_10_layer_call_fn_1037605?&'0-/.ABHIJKXY??<
5?2
(?%
dense_20_input?????????d
p 

 
? "2?/+????????????????????????????
/__inference_sequential_10_layer_call_fn_1037861?&'/0-.ABHIJKXY??<
5?2
(?%
dense_20_input?????????d
p

 
? "2?/+????????????????????????????
/__inference_sequential_10_layer_call_fn_1038067?&'0-/.ABHIJKXY7?4
-?*
 ?
inputs?????????d
p 

 
? "2?/+????????????????????????????
/__inference_sequential_10_layer_call_fn_1038112?&'/0-.ABHIJKXY7?4
-?*
 ?
inputs?????????d
p

 
? "2?/+????????????????????????????
%__inference_signature_wrapper_1038022?&'0-/.ABHIJKXYI?F
? 
??<
:
dense_20_input(?%
dense_20_input?????????d"=?:
8
	conv2d_21+?(
	conv2d_21??????????
M__inference_up_sampling2d_10_layer_call_and_return_conditional_losses_1037272?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_up_sampling2d_10_layer_call_fn_1037278?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_up_sampling2d_11_layer_call_and_return_conditional_losses_1037417?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_up_sampling2d_11_layer_call_fn_1037423?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84????????????????????????????????????