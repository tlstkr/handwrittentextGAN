΋
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
dense_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?* 
shared_namedense_44/kernel
t
#dense_44/kernel/Read/ReadVariableOpReadVariableOpdense_44/kernel*
_output_shapes
:	d?*
dtype0
s
dense_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_44/bias
l
!dense_44/bias/Read/ReadVariableOpReadVariableOpdense_44/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_33/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_33/gamma
?
0batch_normalization_33/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_33/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_33/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_33/beta
?
/batch_normalization_33/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_33/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_33/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_33/moving_mean
?
6batch_normalization_33/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_33/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_33/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_33/moving_variance
?
:batch_normalization_33/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_33/moving_variance*
_output_shapes	
:?*
dtype0
|
dense_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??1* 
shared_namedense_45/kernel
u
#dense_45/kernel/Read/ReadVariableOpReadVariableOpdense_45/kernel* 
_output_shapes
:
??1*
dtype0
s
dense_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*
shared_namedense_45/bias
l
!dense_45/bias/Read/ReadVariableOpReadVariableOpdense_45/bias*
_output_shapes	
:?1*
dtype0
?
batch_normalization_34/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*-
shared_namebatch_normalization_34/gamma
?
0batch_normalization_34/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_34/gamma*
_output_shapes	
:?1*
dtype0
?
batch_normalization_34/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*,
shared_namebatch_normalization_34/beta
?
/batch_normalization_34/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_34/beta*
_output_shapes	
:?1*
dtype0
?
"batch_normalization_34/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*3
shared_name$"batch_normalization_34/moving_mean
?
6batch_normalization_34/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_34/moving_mean*
_output_shapes	
:?1*
dtype0
?
&batch_normalization_34/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*7
shared_name(&batch_normalization_34/moving_variance
?
:batch_normalization_34/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_34/moving_variance*
_output_shapes	
:?1*
dtype0
?
conv2d_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*!
shared_nameconv2d_44/kernel
~
$conv2d_44/kernel/Read/ReadVariableOpReadVariableOpconv2d_44/kernel*'
_output_shapes
:?@*
dtype0
t
conv2d_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_44/bias
m
"conv2d_44/bias/Read/ReadVariableOpReadVariableOpconv2d_44/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_35/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_35/gamma
?
0batch_normalization_35/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_35/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_35/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_35/beta
?
/batch_normalization_35/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_35/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_35/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_35/moving_mean
?
6batch_normalization_35/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_35/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_35/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_35/moving_variance
?
:batch_normalization_35/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_35/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_45/kernel
}
$conv2d_45/kernel/Read/ReadVariableOpReadVariableOpconv2d_45/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_45/bias
m
"conv2d_45/bias/Read/ReadVariableOpReadVariableOpconv2d_45/bias*
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
VARIABLE_VALUEdense_44/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_44/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_33/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_33/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_33/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_33/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEdense_45/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_45/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_34/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_34/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_34/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_34/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEconv2d_44/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_44/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_35/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_35/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_35/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_35/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEconv2d_45/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_45/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
serving_default_dense_44_inputPlaceholder*'
_output_shapes
:?????????d*
dtype0*
shape:?????????d
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_44_inputdense_44/kerneldense_44/bias&batch_normalization_33/moving_variancebatch_normalization_33/gamma"batch_normalization_33/moving_meanbatch_normalization_33/betadense_45/kerneldense_45/bias&batch_normalization_34/moving_variancebatch_normalization_34/gamma"batch_normalization_34/moving_meanbatch_normalization_34/betaconv2d_44/kernelconv2d_44/biasbatch_normalization_35/gammabatch_normalization_35/beta"batch_normalization_35/moving_mean&batch_normalization_35/moving_varianceconv2d_45/kernelconv2d_45/bias* 
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
%__inference_signature_wrapper_2081242
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_44/kernel/Read/ReadVariableOp!dense_44/bias/Read/ReadVariableOp0batch_normalization_33/gamma/Read/ReadVariableOp/batch_normalization_33/beta/Read/ReadVariableOp6batch_normalization_33/moving_mean/Read/ReadVariableOp:batch_normalization_33/moving_variance/Read/ReadVariableOp#dense_45/kernel/Read/ReadVariableOp!dense_45/bias/Read/ReadVariableOp0batch_normalization_34/gamma/Read/ReadVariableOp/batch_normalization_34/beta/Read/ReadVariableOp6batch_normalization_34/moving_mean/Read/ReadVariableOp:batch_normalization_34/moving_variance/Read/ReadVariableOp$conv2d_44/kernel/Read/ReadVariableOp"conv2d_44/bias/Read/ReadVariableOp0batch_normalization_35/gamma/Read/ReadVariableOp/batch_normalization_35/beta/Read/ReadVariableOp6batch_normalization_35/moving_mean/Read/ReadVariableOp:batch_normalization_35/moving_variance/Read/ReadVariableOp$conv2d_45/kernel/Read/ReadVariableOp"conv2d_45/bias/Read/ReadVariableOpConst*!
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
 __inference__traced_save_2081983
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_44/kerneldense_44/biasbatch_normalization_33/gammabatch_normalization_33/beta"batch_normalization_33/moving_mean&batch_normalization_33/moving_variancedense_45/kerneldense_45/biasbatch_normalization_34/gammabatch_normalization_34/beta"batch_normalization_34/moving_mean&batch_normalization_34/moving_varianceconv2d_44/kernelconv2d_44/biasbatch_normalization_35/gammabatch_normalization_35/beta"batch_normalization_35/moving_mean&batch_normalization_35/moving_varianceconv2d_45/kernelconv2d_45/bias* 
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
#__inference__traced_restore_2082053??
?	
?
E__inference_dense_44_layer_call_and_return_conditional_losses_2080660

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
?
f
J__inference_activation_22_layer_call_and_return_conditional_losses_2081661

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
c
G__inference_reshape_11_layer_call_and_return_conditional_losses_2081789

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
?*
?
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_2081760

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
?
f
J__inference_activation_23_layer_call_and_return_conditional_losses_2080712

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
?*
?
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_2081651

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
?
?
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_2080341

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
?
?
*__inference_dense_45_layer_call_fn_2081670

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
E__inference_dense_45_layer_call_and_return_conditional_losses_20806922
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
?
f
J__inference_activation_23_layer_call_and_return_conditional_losses_2081770

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
?
i
M__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_2080492

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
F__inference_conv2d_45_layer_call_and_return_conditional_losses_2081900

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
?	
?
E__inference_dense_45_layer_call_and_return_conditional_losses_2080692

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
?
?
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_2080520

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
?	
?
E__inference_dense_44_layer_call_and_return_conditional_losses_2081571

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
+__inference_conv2d_45_layer_call_fn_2081889

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
F__inference_conv2d_45_layer_call_and_return_conditional_losses_20807752
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
?
?
+__inference_conv2d_44_layer_call_fn_2081798

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
F__inference_conv2d_44_layer_call_and_return_conditional_losses_20807412
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
?	
?
E__inference_dense_45_layer_call_and_return_conditional_losses_2081680

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
J__inference_sequential_22_layer_call_and_return_conditional_losses_2080993

inputs#
dense_44_2080939:	d?
dense_44_2080941:	?-
batch_normalization_33_2080944:	?-
batch_normalization_33_2080946:	?-
batch_normalization_33_2080948:	?-
batch_normalization_33_2080950:	?$
dense_45_2080954:
??1
dense_45_2080956:	?1-
batch_normalization_34_2080959:	?1-
batch_normalization_34_2080961:	?1-
batch_normalization_34_2080963:	?1-
batch_normalization_34_2080965:	?1,
conv2d_44_2080971:?@
conv2d_44_2080973:@,
batch_normalization_35_2080976:@,
batch_normalization_35_2080978:@,
batch_normalization_35_2080980:@,
batch_normalization_35_2080982:@+
conv2d_45_2080987:@
conv2d_45_2080989:
identity??.batch_normalization_33/StatefulPartitionedCall?.batch_normalization_34/StatefulPartitionedCall?.batch_normalization_35/StatefulPartitionedCall?!conv2d_44/StatefulPartitionedCall?!conv2d_45/StatefulPartitionedCall? dense_44/StatefulPartitionedCall? dense_45/StatefulPartitionedCall?
 dense_44/StatefulPartitionedCallStatefulPartitionedCallinputsdense_44_2080939dense_44_2080941*
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
E__inference_dense_44_layer_call_and_return_conditional_losses_20806602"
 dense_44/StatefulPartitionedCall?
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0batch_normalization_33_2080944batch_normalization_33_2080946batch_normalization_33_2080948batch_normalization_33_2080950*
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
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_208023920
.batch_normalization_33/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
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
J__inference_activation_22_layer_call_and_return_conditional_losses_20806802
activation_22/PartitionedCall?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0dense_45_2080954dense_45_2080956*
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
E__inference_dense_45_layer_call_and_return_conditional_losses_20806922"
 dense_45/StatefulPartitionedCall?
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0batch_normalization_34_2080959batch_normalization_34_2080961batch_normalization_34_2080963batch_normalization_34_2080965*
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
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_208040120
.batch_normalization_34/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
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
J__inference_activation_23_layer_call_and_return_conditional_losses_20807122
activation_23/PartitionedCall?
reshape_11/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_reshape_11_layer_call_and_return_conditional_losses_20807282
reshape_11/PartitionedCall?
 up_sampling2d_22/PartitionedCallPartitionedCall#reshape_11/PartitionedCall:output:0*
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
M__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_20804922"
 up_sampling2d_22/PartitionedCall?
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_22/PartitionedCall:output:0conv2d_44_2080971conv2d_44_2080973*
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
F__inference_conv2d_44_layer_call_and_return_conditional_losses_20807412#
!conv2d_44/StatefulPartitionedCall?
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0batch_normalization_35_2080976batch_normalization_35_2080978batch_normalization_35_2080980batch_normalization_35_2080982*
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
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_208056420
.batch_normalization_35/StatefulPartitionedCall?
leaky_re_lu_44/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_44_layer_call_and_return_conditional_losses_20807612 
leaky_re_lu_44/PartitionedCall?
 up_sampling2d_23/PartitionedCallPartitionedCall'leaky_re_lu_44/PartitionedCall:output:0*
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
M__inference_up_sampling2d_23_layer_call_and_return_conditional_losses_20806372"
 up_sampling2d_23/PartitionedCall?
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_23/PartitionedCall:output:0conv2d_45_2080987conv2d_45_2080989*
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
F__inference_conv2d_45_layer_call_and_return_conditional_losses_20807752#
!conv2d_45/StatefulPartitionedCall?
IdentityIdentity*conv2d_45/StatefulPartitionedCall:output:0/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
f
J__inference_activation_22_layer_call_and_return_conditional_losses_2080680

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
?
?
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_2080564

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
?
?
F__inference_conv2d_45_layer_call_and_return_conditional_losses_2080775

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
?
?
/__inference_sequential_22_layer_call_fn_2080825
dense_44_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_44_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
J__inference_sequential_22_layer_call_and_return_conditional_losses_20807822
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
_user_specified_namedense_44_input
?
?
*__inference_dense_44_layer_call_fn_2081561

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
E__inference_dense_44_layer_call_and_return_conditional_losses_20806602
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
?
K
/__inference_activation_22_layer_call_fn_2081656

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
J__inference_activation_22_layer_call_and_return_conditional_losses_20806802
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
?
?
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_2081852

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
?
?
8__inference_batch_normalization_35_layer_call_fn_2081834

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
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_20805642
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
?
?
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_2080179

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
?*
?
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_2080239

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
?
?
8__inference_batch_normalization_35_layer_call_fn_2081821

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
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_20805202
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
?
?
8__inference_batch_normalization_34_layer_call_fn_2081706

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
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_20804012
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
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_2081726

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
c
G__inference_reshape_11_layer_call_and_return_conditional_losses_2080728

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
??
?
J__inference_sequential_22_layer_call_and_return_conditional_losses_2081552

inputs:
'dense_44_matmul_readvariableop_resource:	d?7
(dense_44_biasadd_readvariableop_resource:	?M
>batch_normalization_33_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_33_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_33_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_33_batchnorm_readvariableop_resource:	?;
'dense_45_matmul_readvariableop_resource:
??17
(dense_45_biasadd_readvariableop_resource:	?1M
>batch_normalization_34_assignmovingavg_readvariableop_resource:	?1O
@batch_normalization_34_assignmovingavg_1_readvariableop_resource:	?1K
<batch_normalization_34_batchnorm_mul_readvariableop_resource:	?1G
8batch_normalization_34_batchnorm_readvariableop_resource:	?1C
(conv2d_44_conv2d_readvariableop_resource:?@7
)conv2d_44_biasadd_readvariableop_resource:@<
.batch_normalization_35_readvariableop_resource:@>
0batch_normalization_35_readvariableop_1_resource:@M
?batch_normalization_35_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_35_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_45_conv2d_readvariableop_resource:@7
)conv2d_45_biasadd_readvariableop_resource:
identity??&batch_normalization_33/AssignMovingAvg?5batch_normalization_33/AssignMovingAvg/ReadVariableOp?(batch_normalization_33/AssignMovingAvg_1?7batch_normalization_33/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_33/batchnorm/ReadVariableOp?3batch_normalization_33/batchnorm/mul/ReadVariableOp?&batch_normalization_34/AssignMovingAvg?5batch_normalization_34/AssignMovingAvg/ReadVariableOp?(batch_normalization_34/AssignMovingAvg_1?7batch_normalization_34/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_34/batchnorm/ReadVariableOp?3batch_normalization_34/batchnorm/mul/ReadVariableOp?%batch_normalization_35/AssignNewValue?'batch_normalization_35/AssignNewValue_1?6batch_normalization_35/FusedBatchNormV3/ReadVariableOp?8batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_35/ReadVariableOp?'batch_normalization_35/ReadVariableOp_1? conv2d_44/BiasAdd/ReadVariableOp?conv2d_44/Conv2D/ReadVariableOp? conv2d_45/BiasAdd/ReadVariableOp?conv2d_45/Conv2D/ReadVariableOp?dense_44/BiasAdd/ReadVariableOp?dense_44/MatMul/ReadVariableOp?dense_45/BiasAdd/ReadVariableOp?dense_45/MatMul/ReadVariableOp?
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02 
dense_44/MatMul/ReadVariableOp?
dense_44/MatMulMatMulinputs&dense_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_44/MatMul?
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_44/BiasAdd/ReadVariableOp?
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_44/BiasAdd?
5batch_normalization_33/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_33/moments/mean/reduction_indices?
#batch_normalization_33/moments/meanMeandense_44/BiasAdd:output:0>batch_normalization_33/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_33/moments/mean?
+batch_normalization_33/moments/StopGradientStopGradient,batch_normalization_33/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_33/moments/StopGradient?
0batch_normalization_33/moments/SquaredDifferenceSquaredDifferencedense_44/BiasAdd:output:04batch_normalization_33/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_33/moments/SquaredDifference?
9batch_normalization_33/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_33/moments/variance/reduction_indices?
'batch_normalization_33/moments/varianceMean4batch_normalization_33/moments/SquaredDifference:z:0Bbatch_normalization_33/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_33/moments/variance?
&batch_normalization_33/moments/SqueezeSqueeze,batch_normalization_33/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_33/moments/Squeeze?
(batch_normalization_33/moments/Squeeze_1Squeeze0batch_normalization_33/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_33/moments/Squeeze_1?
,batch_normalization_33/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2.
,batch_normalization_33/AssignMovingAvg/decay?
5batch_normalization_33/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_33_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_33/AssignMovingAvg/ReadVariableOp?
*batch_normalization_33/AssignMovingAvg/subSub=batch_normalization_33/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_33/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_33/AssignMovingAvg/sub?
*batch_normalization_33/AssignMovingAvg/mulMul.batch_normalization_33/AssignMovingAvg/sub:z:05batch_normalization_33/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_33/AssignMovingAvg/mul?
&batch_normalization_33/AssignMovingAvgAssignSubVariableOp>batch_normalization_33_assignmovingavg_readvariableop_resource.batch_normalization_33/AssignMovingAvg/mul:z:06^batch_normalization_33/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_33/AssignMovingAvg?
.batch_normalization_33/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>20
.batch_normalization_33/AssignMovingAvg_1/decay?
7batch_normalization_33/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_33_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_33/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_33/AssignMovingAvg_1/subSub?batch_normalization_33/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_33/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_33/AssignMovingAvg_1/sub?
,batch_normalization_33/AssignMovingAvg_1/mulMul0batch_normalization_33/AssignMovingAvg_1/sub:z:07batch_normalization_33/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_33/AssignMovingAvg_1/mul?
(batch_normalization_33/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_33_assignmovingavg_1_readvariableop_resource0batch_normalization_33/AssignMovingAvg_1/mul:z:08^batch_normalization_33/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_33/AssignMovingAvg_1?
&batch_normalization_33/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_33/batchnorm/add/y?
$batch_normalization_33/batchnorm/addAddV21batch_normalization_33/moments/Squeeze_1:output:0/batch_normalization_33/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_33/batchnorm/add?
&batch_normalization_33/batchnorm/RsqrtRsqrt(batch_normalization_33/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_33/batchnorm/Rsqrt?
3batch_normalization_33/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_33_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_33/batchnorm/mul/ReadVariableOp?
$batch_normalization_33/batchnorm/mulMul*batch_normalization_33/batchnorm/Rsqrt:y:0;batch_normalization_33/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_33/batchnorm/mul?
&batch_normalization_33/batchnorm/mul_1Muldense_44/BiasAdd:output:0(batch_normalization_33/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_33/batchnorm/mul_1?
&batch_normalization_33/batchnorm/mul_2Mul/batch_normalization_33/moments/Squeeze:output:0(batch_normalization_33/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_33/batchnorm/mul_2?
/batch_normalization_33/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_33_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_33/batchnorm/ReadVariableOp?
$batch_normalization_33/batchnorm/subSub7batch_normalization_33/batchnorm/ReadVariableOp:value:0*batch_normalization_33/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_33/batchnorm/sub?
&batch_normalization_33/batchnorm/add_1AddV2*batch_normalization_33/batchnorm/mul_1:z:0(batch_normalization_33/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_33/batchnorm/add_1?
activation_22/ReluRelu*batch_normalization_33/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_22/Relu?
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource* 
_output_shapes
:
??1*
dtype02 
dense_45/MatMul/ReadVariableOp?
dense_45/MatMulMatMul activation_22/Relu:activations:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
dense_45/MatMul?
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes	
:?1*
dtype02!
dense_45/BiasAdd/ReadVariableOp?
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
dense_45/BiasAdd?
5batch_normalization_34/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_34/moments/mean/reduction_indices?
#batch_normalization_34/moments/meanMeandense_45/BiasAdd:output:0>batch_normalization_34/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?1*
	keep_dims(2%
#batch_normalization_34/moments/mean?
+batch_normalization_34/moments/StopGradientStopGradient,batch_normalization_34/moments/mean:output:0*
T0*
_output_shapes
:	?12-
+batch_normalization_34/moments/StopGradient?
0batch_normalization_34/moments/SquaredDifferenceSquaredDifferencedense_45/BiasAdd:output:04batch_normalization_34/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????122
0batch_normalization_34/moments/SquaredDifference?
9batch_normalization_34/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_34/moments/variance/reduction_indices?
'batch_normalization_34/moments/varianceMean4batch_normalization_34/moments/SquaredDifference:z:0Bbatch_normalization_34/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?1*
	keep_dims(2)
'batch_normalization_34/moments/variance?
&batch_normalization_34/moments/SqueezeSqueeze,batch_normalization_34/moments/mean:output:0*
T0*
_output_shapes	
:?1*
squeeze_dims
 2(
&batch_normalization_34/moments/Squeeze?
(batch_normalization_34/moments/Squeeze_1Squeeze0batch_normalization_34/moments/variance:output:0*
T0*
_output_shapes	
:?1*
squeeze_dims
 2*
(batch_normalization_34/moments/Squeeze_1?
,batch_normalization_34/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2.
,batch_normalization_34/AssignMovingAvg/decay?
5batch_normalization_34/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_34_assignmovingavg_readvariableop_resource*
_output_shapes	
:?1*
dtype027
5batch_normalization_34/AssignMovingAvg/ReadVariableOp?
*batch_normalization_34/AssignMovingAvg/subSub=batch_normalization_34/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_34/moments/Squeeze:output:0*
T0*
_output_shapes	
:?12,
*batch_normalization_34/AssignMovingAvg/sub?
*batch_normalization_34/AssignMovingAvg/mulMul.batch_normalization_34/AssignMovingAvg/sub:z:05batch_normalization_34/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?12,
*batch_normalization_34/AssignMovingAvg/mul?
&batch_normalization_34/AssignMovingAvgAssignSubVariableOp>batch_normalization_34_assignmovingavg_readvariableop_resource.batch_normalization_34/AssignMovingAvg/mul:z:06^batch_normalization_34/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_34/AssignMovingAvg?
.batch_normalization_34/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>20
.batch_normalization_34/AssignMovingAvg_1/decay?
7batch_normalization_34/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_34_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?1*
dtype029
7batch_normalization_34/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_34/AssignMovingAvg_1/subSub?batch_normalization_34/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_34/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?12.
,batch_normalization_34/AssignMovingAvg_1/sub?
,batch_normalization_34/AssignMovingAvg_1/mulMul0batch_normalization_34/AssignMovingAvg_1/sub:z:07batch_normalization_34/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?12.
,batch_normalization_34/AssignMovingAvg_1/mul?
(batch_normalization_34/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_34_assignmovingavg_1_readvariableop_resource0batch_normalization_34/AssignMovingAvg_1/mul:z:08^batch_normalization_34/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_34/AssignMovingAvg_1?
&batch_normalization_34/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_34/batchnorm/add/y?
$batch_normalization_34/batchnorm/addAddV21batch_normalization_34/moments/Squeeze_1:output:0/batch_normalization_34/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?12&
$batch_normalization_34/batchnorm/add?
&batch_normalization_34/batchnorm/RsqrtRsqrt(batch_normalization_34/batchnorm/add:z:0*
T0*
_output_shapes	
:?12(
&batch_normalization_34/batchnorm/Rsqrt?
3batch_normalization_34/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_34_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?1*
dtype025
3batch_normalization_34/batchnorm/mul/ReadVariableOp?
$batch_normalization_34/batchnorm/mulMul*batch_normalization_34/batchnorm/Rsqrt:y:0;batch_normalization_34/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?12&
$batch_normalization_34/batchnorm/mul?
&batch_normalization_34/batchnorm/mul_1Muldense_45/BiasAdd:output:0(batch_normalization_34/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????12(
&batch_normalization_34/batchnorm/mul_1?
&batch_normalization_34/batchnorm/mul_2Mul/batch_normalization_34/moments/Squeeze:output:0(batch_normalization_34/batchnorm/mul:z:0*
T0*
_output_shapes	
:?12(
&batch_normalization_34/batchnorm/mul_2?
/batch_normalization_34/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_34_batchnorm_readvariableop_resource*
_output_shapes	
:?1*
dtype021
/batch_normalization_34/batchnorm/ReadVariableOp?
$batch_normalization_34/batchnorm/subSub7batch_normalization_34/batchnorm/ReadVariableOp:value:0*batch_normalization_34/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?12&
$batch_normalization_34/batchnorm/sub?
&batch_normalization_34/batchnorm/add_1AddV2*batch_normalization_34/batchnorm/mul_1:z:0(batch_normalization_34/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????12(
&batch_normalization_34/batchnorm/add_1?
activation_23/ReluRelu*batch_normalization_34/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????12
activation_23/Relut
reshape_11/ShapeShape activation_23/Relu:activations:0*
T0*
_output_shapes
:2
reshape_11/Shape?
reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_11/strided_slice/stack?
 reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_11/strided_slice/stack_1?
 reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_11/strided_slice/stack_2?
reshape_11/strided_sliceStridedSlicereshape_11/Shape:output:0'reshape_11/strided_slice/stack:output:0)reshape_11/strided_slice/stack_1:output:0)reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_11/strided_slicez
reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_11/Reshape/shape/1z
reshape_11/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_11/Reshape/shape/2{
reshape_11/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_11/Reshape/shape/3?
reshape_11/Reshape/shapePack!reshape_11/strided_slice:output:0#reshape_11/Reshape/shape/1:output:0#reshape_11/Reshape/shape/2:output:0#reshape_11/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_11/Reshape/shape?
reshape_11/ReshapeReshape activation_23/Relu:activations:0!reshape_11/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_11/Reshape?
up_sampling2d_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_22/Const?
up_sampling2d_22/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_22/Const_1?
up_sampling2d_22/mulMulup_sampling2d_22/Const:output:0!up_sampling2d_22/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_22/mul?
-up_sampling2d_22/resize/ResizeNearestNeighborResizeNearestNeighborreshape_11/Reshape:output:0up_sampling2d_22/mul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(2/
-up_sampling2d_22/resize/ResizeNearestNeighbor?
conv2d_44/Conv2D/ReadVariableOpReadVariableOp(conv2d_44_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02!
conv2d_44/Conv2D/ReadVariableOp?
conv2d_44/Conv2DConv2D>up_sampling2d_22/resize/ResizeNearestNeighbor:resized_images:0'conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_44/Conv2D?
 conv2d_44/BiasAdd/ReadVariableOpReadVariableOp)conv2d_44_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_44/BiasAdd/ReadVariableOp?
conv2d_44/BiasAddBiasAddconv2d_44/Conv2D:output:0(conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_44/BiasAdd?
%batch_normalization_35/ReadVariableOpReadVariableOp.batch_normalization_35_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_35/ReadVariableOp?
'batch_normalization_35/ReadVariableOp_1ReadVariableOp0batch_normalization_35_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_35/ReadVariableOp_1?
6batch_normalization_35/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_35_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_35/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_35_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_35/FusedBatchNormV3FusedBatchNormV3conv2d_44/BiasAdd:output:0-batch_normalization_35/ReadVariableOp:value:0/batch_normalization_35/ReadVariableOp_1:value:0>batch_normalization_35/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%??L>2)
'batch_normalization_35/FusedBatchNormV3?
%batch_normalization_35/AssignNewValueAssignVariableOp?batch_normalization_35_fusedbatchnormv3_readvariableop_resource4batch_normalization_35/FusedBatchNormV3:batch_mean:07^batch_normalization_35/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_35/AssignNewValue?
'batch_normalization_35/AssignNewValue_1AssignVariableOpAbatch_normalization_35_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_35/FusedBatchNormV3:batch_variance:09^batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_35/AssignNewValue_1?
leaky_re_lu_44/LeakyRelu	LeakyRelu+batch_normalization_35/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@2
leaky_re_lu_44/LeakyRelu?
up_sampling2d_23/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_23/Const?
up_sampling2d_23/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_23/Const_1?
up_sampling2d_23/mulMulup_sampling2d_23/Const:output:0!up_sampling2d_23/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_23/mul?
-up_sampling2d_23/resize/ResizeNearestNeighborResizeNearestNeighbor&leaky_re_lu_44/LeakyRelu:activations:0up_sampling2d_23/mul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(2/
-up_sampling2d_23/resize/ResizeNearestNeighbor?
conv2d_45/Conv2D/ReadVariableOpReadVariableOp(conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_45/Conv2D/ReadVariableOp?
conv2d_45/Conv2DConv2D>up_sampling2d_23/resize/ResizeNearestNeighbor:resized_images:0'conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_45/Conv2D?
 conv2d_45/BiasAdd/ReadVariableOpReadVariableOp)conv2d_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_45/BiasAdd/ReadVariableOp?
conv2d_45/BiasAddBiasAddconv2d_45/Conv2D:output:0(conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_45/BiasAdd~
conv2d_45/TanhTanhconv2d_45/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_45/Tanh?	
IdentityIdentityconv2d_45/Tanh:y:0'^batch_normalization_33/AssignMovingAvg6^batch_normalization_33/AssignMovingAvg/ReadVariableOp)^batch_normalization_33/AssignMovingAvg_18^batch_normalization_33/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_33/batchnorm/ReadVariableOp4^batch_normalization_33/batchnorm/mul/ReadVariableOp'^batch_normalization_34/AssignMovingAvg6^batch_normalization_34/AssignMovingAvg/ReadVariableOp)^batch_normalization_34/AssignMovingAvg_18^batch_normalization_34/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_34/batchnorm/ReadVariableOp4^batch_normalization_34/batchnorm/mul/ReadVariableOp&^batch_normalization_35/AssignNewValue(^batch_normalization_35/AssignNewValue_17^batch_normalization_35/FusedBatchNormV3/ReadVariableOp9^batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_35/ReadVariableOp(^batch_normalization_35/ReadVariableOp_1!^conv2d_44/BiasAdd/ReadVariableOp ^conv2d_44/Conv2D/ReadVariableOp!^conv2d_45/BiasAdd/ReadVariableOp ^conv2d_45/Conv2D/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_33/AssignMovingAvg&batch_normalization_33/AssignMovingAvg2n
5batch_normalization_33/AssignMovingAvg/ReadVariableOp5batch_normalization_33/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_33/AssignMovingAvg_1(batch_normalization_33/AssignMovingAvg_12r
7batch_normalization_33/AssignMovingAvg_1/ReadVariableOp7batch_normalization_33/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_33/batchnorm/ReadVariableOp/batch_normalization_33/batchnorm/ReadVariableOp2j
3batch_normalization_33/batchnorm/mul/ReadVariableOp3batch_normalization_33/batchnorm/mul/ReadVariableOp2P
&batch_normalization_34/AssignMovingAvg&batch_normalization_34/AssignMovingAvg2n
5batch_normalization_34/AssignMovingAvg/ReadVariableOp5batch_normalization_34/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_34/AssignMovingAvg_1(batch_normalization_34/AssignMovingAvg_12r
7batch_normalization_34/AssignMovingAvg_1/ReadVariableOp7batch_normalization_34/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_34/batchnorm/ReadVariableOp/batch_normalization_34/batchnorm/ReadVariableOp2j
3batch_normalization_34/batchnorm/mul/ReadVariableOp3batch_normalization_34/batchnorm/mul/ReadVariableOp2N
%batch_normalization_35/AssignNewValue%batch_normalization_35/AssignNewValue2R
'batch_normalization_35/AssignNewValue_1'batch_normalization_35/AssignNewValue_12p
6batch_normalization_35/FusedBatchNormV3/ReadVariableOp6batch_normalization_35/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_35/FusedBatchNormV3/ReadVariableOp_18batch_normalization_35/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_35/ReadVariableOp%batch_normalization_35/ReadVariableOp2R
'batch_normalization_35/ReadVariableOp_1'batch_normalization_35/ReadVariableOp_12D
 conv2d_44/BiasAdd/ReadVariableOp conv2d_44/BiasAdd/ReadVariableOp2B
conv2d_44/Conv2D/ReadVariableOpconv2d_44/Conv2D/ReadVariableOp2D
 conv2d_45/BiasAdd/ReadVariableOp conv2d_45/BiasAdd/ReadVariableOp2B
conv2d_45/Conv2D/ReadVariableOpconv2d_45/Conv2D/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_34_layer_call_fn_2081693

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
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_20803412
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
8__inference_batch_normalization_33_layer_call_fn_2081584

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
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_20801792
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
?
N
2__inference_up_sampling2d_22_layer_call_fn_2080498

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
M__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_20804922
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
??
?
"__inference__wrapped_model_2080155
dense_44_inputH
5sequential_22_dense_44_matmul_readvariableop_resource:	d?E
6sequential_22_dense_44_biasadd_readvariableop_resource:	?U
Fsequential_22_batch_normalization_33_batchnorm_readvariableop_resource:	?Y
Jsequential_22_batch_normalization_33_batchnorm_mul_readvariableop_resource:	?W
Hsequential_22_batch_normalization_33_batchnorm_readvariableop_1_resource:	?W
Hsequential_22_batch_normalization_33_batchnorm_readvariableop_2_resource:	?I
5sequential_22_dense_45_matmul_readvariableop_resource:
??1E
6sequential_22_dense_45_biasadd_readvariableop_resource:	?1U
Fsequential_22_batch_normalization_34_batchnorm_readvariableop_resource:	?1Y
Jsequential_22_batch_normalization_34_batchnorm_mul_readvariableop_resource:	?1W
Hsequential_22_batch_normalization_34_batchnorm_readvariableop_1_resource:	?1W
Hsequential_22_batch_normalization_34_batchnorm_readvariableop_2_resource:	?1Q
6sequential_22_conv2d_44_conv2d_readvariableop_resource:?@E
7sequential_22_conv2d_44_biasadd_readvariableop_resource:@J
<sequential_22_batch_normalization_35_readvariableop_resource:@L
>sequential_22_batch_normalization_35_readvariableop_1_resource:@[
Msequential_22_batch_normalization_35_fusedbatchnormv3_readvariableop_resource:@]
Osequential_22_batch_normalization_35_fusedbatchnormv3_readvariableop_1_resource:@P
6sequential_22_conv2d_45_conv2d_readvariableop_resource:@E
7sequential_22_conv2d_45_biasadd_readvariableop_resource:
identity??=sequential_22/batch_normalization_33/batchnorm/ReadVariableOp??sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_1??sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_2?Asequential_22/batch_normalization_33/batchnorm/mul/ReadVariableOp?=sequential_22/batch_normalization_34/batchnorm/ReadVariableOp??sequential_22/batch_normalization_34/batchnorm/ReadVariableOp_1??sequential_22/batch_normalization_34/batchnorm/ReadVariableOp_2?Asequential_22/batch_normalization_34/batchnorm/mul/ReadVariableOp?Dsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp?Fsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1?3sequential_22/batch_normalization_35/ReadVariableOp?5sequential_22/batch_normalization_35/ReadVariableOp_1?.sequential_22/conv2d_44/BiasAdd/ReadVariableOp?-sequential_22/conv2d_44/Conv2D/ReadVariableOp?.sequential_22/conv2d_45/BiasAdd/ReadVariableOp?-sequential_22/conv2d_45/Conv2D/ReadVariableOp?-sequential_22/dense_44/BiasAdd/ReadVariableOp?,sequential_22/dense_44/MatMul/ReadVariableOp?-sequential_22/dense_45/BiasAdd/ReadVariableOp?,sequential_22/dense_45/MatMul/ReadVariableOp?
,sequential_22/dense_44/MatMul/ReadVariableOpReadVariableOp5sequential_22_dense_44_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02.
,sequential_22/dense_44/MatMul/ReadVariableOp?
sequential_22/dense_44/MatMulMatMuldense_44_input4sequential_22/dense_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_22/dense_44/MatMul?
-sequential_22/dense_44/BiasAdd/ReadVariableOpReadVariableOp6sequential_22_dense_44_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_22/dense_44/BiasAdd/ReadVariableOp?
sequential_22/dense_44/BiasAddBiasAdd'sequential_22/dense_44/MatMul:product:05sequential_22/dense_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_22/dense_44/BiasAdd?
=sequential_22/batch_normalization_33/batchnorm/ReadVariableOpReadVariableOpFsequential_22_batch_normalization_33_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=sequential_22/batch_normalization_33/batchnorm/ReadVariableOp?
4sequential_22/batch_normalization_33/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_22/batch_normalization_33/batchnorm/add/y?
2sequential_22/batch_normalization_33/batchnorm/addAddV2Esequential_22/batch_normalization_33/batchnorm/ReadVariableOp:value:0=sequential_22/batch_normalization_33/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?24
2sequential_22/batch_normalization_33/batchnorm/add?
4sequential_22/batch_normalization_33/batchnorm/RsqrtRsqrt6sequential_22/batch_normalization_33/batchnorm/add:z:0*
T0*
_output_shapes	
:?26
4sequential_22/batch_normalization_33/batchnorm/Rsqrt?
Asequential_22/batch_normalization_33/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_22_batch_normalization_33_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Asequential_22/batch_normalization_33/batchnorm/mul/ReadVariableOp?
2sequential_22/batch_normalization_33/batchnorm/mulMul8sequential_22/batch_normalization_33/batchnorm/Rsqrt:y:0Isequential_22/batch_normalization_33/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?24
2sequential_22/batch_normalization_33/batchnorm/mul?
4sequential_22/batch_normalization_33/batchnorm/mul_1Mul'sequential_22/dense_44/BiasAdd:output:06sequential_22/batch_normalization_33/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????26
4sequential_22/batch_normalization_33/batchnorm/mul_1?
?sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_22_batch_normalization_33_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_1?
4sequential_22/batch_normalization_33/batchnorm/mul_2MulGsequential_22/batch_normalization_33/batchnorm/ReadVariableOp_1:value:06sequential_22/batch_normalization_33/batchnorm/mul:z:0*
T0*
_output_shapes	
:?26
4sequential_22/batch_normalization_33/batchnorm/mul_2?
?sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_22_batch_normalization_33_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02A
?sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_2?
2sequential_22/batch_normalization_33/batchnorm/subSubGsequential_22/batch_normalization_33/batchnorm/ReadVariableOp_2:value:08sequential_22/batch_normalization_33/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?24
2sequential_22/batch_normalization_33/batchnorm/sub?
4sequential_22/batch_normalization_33/batchnorm/add_1AddV28sequential_22/batch_normalization_33/batchnorm/mul_1:z:06sequential_22/batch_normalization_33/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????26
4sequential_22/batch_normalization_33/batchnorm/add_1?
 sequential_22/activation_22/ReluRelu8sequential_22/batch_normalization_33/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2"
 sequential_22/activation_22/Relu?
,sequential_22/dense_45/MatMul/ReadVariableOpReadVariableOp5sequential_22_dense_45_matmul_readvariableop_resource* 
_output_shapes
:
??1*
dtype02.
,sequential_22/dense_45/MatMul/ReadVariableOp?
sequential_22/dense_45/MatMulMatMul.sequential_22/activation_22/Relu:activations:04sequential_22/dense_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
sequential_22/dense_45/MatMul?
-sequential_22/dense_45/BiasAdd/ReadVariableOpReadVariableOp6sequential_22_dense_45_biasadd_readvariableop_resource*
_output_shapes	
:?1*
dtype02/
-sequential_22/dense_45/BiasAdd/ReadVariableOp?
sequential_22/dense_45/BiasAddBiasAdd'sequential_22/dense_45/MatMul:product:05sequential_22/dense_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12 
sequential_22/dense_45/BiasAdd?
=sequential_22/batch_normalization_34/batchnorm/ReadVariableOpReadVariableOpFsequential_22_batch_normalization_34_batchnorm_readvariableop_resource*
_output_shapes	
:?1*
dtype02?
=sequential_22/batch_normalization_34/batchnorm/ReadVariableOp?
4sequential_22/batch_normalization_34/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_22/batch_normalization_34/batchnorm/add/y?
2sequential_22/batch_normalization_34/batchnorm/addAddV2Esequential_22/batch_normalization_34/batchnorm/ReadVariableOp:value:0=sequential_22/batch_normalization_34/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?124
2sequential_22/batch_normalization_34/batchnorm/add?
4sequential_22/batch_normalization_34/batchnorm/RsqrtRsqrt6sequential_22/batch_normalization_34/batchnorm/add:z:0*
T0*
_output_shapes	
:?126
4sequential_22/batch_normalization_34/batchnorm/Rsqrt?
Asequential_22/batch_normalization_34/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_22_batch_normalization_34_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?1*
dtype02C
Asequential_22/batch_normalization_34/batchnorm/mul/ReadVariableOp?
2sequential_22/batch_normalization_34/batchnorm/mulMul8sequential_22/batch_normalization_34/batchnorm/Rsqrt:y:0Isequential_22/batch_normalization_34/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?124
2sequential_22/batch_normalization_34/batchnorm/mul?
4sequential_22/batch_normalization_34/batchnorm/mul_1Mul'sequential_22/dense_45/BiasAdd:output:06sequential_22/batch_normalization_34/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????126
4sequential_22/batch_normalization_34/batchnorm/mul_1?
?sequential_22/batch_normalization_34/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_22_batch_normalization_34_batchnorm_readvariableop_1_resource*
_output_shapes	
:?1*
dtype02A
?sequential_22/batch_normalization_34/batchnorm/ReadVariableOp_1?
4sequential_22/batch_normalization_34/batchnorm/mul_2MulGsequential_22/batch_normalization_34/batchnorm/ReadVariableOp_1:value:06sequential_22/batch_normalization_34/batchnorm/mul:z:0*
T0*
_output_shapes	
:?126
4sequential_22/batch_normalization_34/batchnorm/mul_2?
?sequential_22/batch_normalization_34/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_22_batch_normalization_34_batchnorm_readvariableop_2_resource*
_output_shapes	
:?1*
dtype02A
?sequential_22/batch_normalization_34/batchnorm/ReadVariableOp_2?
2sequential_22/batch_normalization_34/batchnorm/subSubGsequential_22/batch_normalization_34/batchnorm/ReadVariableOp_2:value:08sequential_22/batch_normalization_34/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?124
2sequential_22/batch_normalization_34/batchnorm/sub?
4sequential_22/batch_normalization_34/batchnorm/add_1AddV28sequential_22/batch_normalization_34/batchnorm/mul_1:z:06sequential_22/batch_normalization_34/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????126
4sequential_22/batch_normalization_34/batchnorm/add_1?
 sequential_22/activation_23/ReluRelu8sequential_22/batch_normalization_34/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????12"
 sequential_22/activation_23/Relu?
sequential_22/reshape_11/ShapeShape.sequential_22/activation_23/Relu:activations:0*
T0*
_output_shapes
:2 
sequential_22/reshape_11/Shape?
,sequential_22/reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_22/reshape_11/strided_slice/stack?
.sequential_22/reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_22/reshape_11/strided_slice/stack_1?
.sequential_22/reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_22/reshape_11/strided_slice/stack_2?
&sequential_22/reshape_11/strided_sliceStridedSlice'sequential_22/reshape_11/Shape:output:05sequential_22/reshape_11/strided_slice/stack:output:07sequential_22/reshape_11/strided_slice/stack_1:output:07sequential_22/reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_22/reshape_11/strided_slice?
(sequential_22/reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_22/reshape_11/Reshape/shape/1?
(sequential_22/reshape_11/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_22/reshape_11/Reshape/shape/2?
(sequential_22/reshape_11/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2*
(sequential_22/reshape_11/Reshape/shape/3?
&sequential_22/reshape_11/Reshape/shapePack/sequential_22/reshape_11/strided_slice:output:01sequential_22/reshape_11/Reshape/shape/1:output:01sequential_22/reshape_11/Reshape/shape/2:output:01sequential_22/reshape_11/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_22/reshape_11/Reshape/shape?
 sequential_22/reshape_11/ReshapeReshape.sequential_22/activation_23/Relu:activations:0/sequential_22/reshape_11/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2"
 sequential_22/reshape_11/Reshape?
$sequential_22/up_sampling2d_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_22/up_sampling2d_22/Const?
&sequential_22/up_sampling2d_22/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&sequential_22/up_sampling2d_22/Const_1?
"sequential_22/up_sampling2d_22/mulMul-sequential_22/up_sampling2d_22/Const:output:0/sequential_22/up_sampling2d_22/Const_1:output:0*
T0*
_output_shapes
:2$
"sequential_22/up_sampling2d_22/mul?
;sequential_22/up_sampling2d_22/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_22/reshape_11/Reshape:output:0&sequential_22/up_sampling2d_22/mul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(2=
;sequential_22/up_sampling2d_22/resize/ResizeNearestNeighbor?
-sequential_22/conv2d_44/Conv2D/ReadVariableOpReadVariableOp6sequential_22_conv2d_44_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02/
-sequential_22/conv2d_44/Conv2D/ReadVariableOp?
sequential_22/conv2d_44/Conv2DConv2DLsequential_22/up_sampling2d_22/resize/ResizeNearestNeighbor:resized_images:05sequential_22/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2 
sequential_22/conv2d_44/Conv2D?
.sequential_22/conv2d_44/BiasAdd/ReadVariableOpReadVariableOp7sequential_22_conv2d_44_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_22/conv2d_44/BiasAdd/ReadVariableOp?
sequential_22/conv2d_44/BiasAddBiasAdd'sequential_22/conv2d_44/Conv2D:output:06sequential_22/conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2!
sequential_22/conv2d_44/BiasAdd?
3sequential_22/batch_normalization_35/ReadVariableOpReadVariableOp<sequential_22_batch_normalization_35_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_22/batch_normalization_35/ReadVariableOp?
5sequential_22/batch_normalization_35/ReadVariableOp_1ReadVariableOp>sequential_22_batch_normalization_35_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_22/batch_normalization_35/ReadVariableOp_1?
Dsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_22_batch_normalization_35_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp?
Fsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_22_batch_normalization_35_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1?
5sequential_22/batch_normalization_35/FusedBatchNormV3FusedBatchNormV3(sequential_22/conv2d_44/BiasAdd:output:0;sequential_22/batch_normalization_35/ReadVariableOp:value:0=sequential_22/batch_normalization_35/ReadVariableOp_1:value:0Lsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5sequential_22/batch_normalization_35/FusedBatchNormV3?
&sequential_22/leaky_re_lu_44/LeakyRelu	LeakyRelu9sequential_22/batch_normalization_35/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@2(
&sequential_22/leaky_re_lu_44/LeakyRelu?
$sequential_22/up_sampling2d_23/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_22/up_sampling2d_23/Const?
&sequential_22/up_sampling2d_23/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&sequential_22/up_sampling2d_23/Const_1?
"sequential_22/up_sampling2d_23/mulMul-sequential_22/up_sampling2d_23/Const:output:0/sequential_22/up_sampling2d_23/Const_1:output:0*
T0*
_output_shapes
:2$
"sequential_22/up_sampling2d_23/mul?
;sequential_22/up_sampling2d_23/resize/ResizeNearestNeighborResizeNearestNeighbor4sequential_22/leaky_re_lu_44/LeakyRelu:activations:0&sequential_22/up_sampling2d_23/mul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(2=
;sequential_22/up_sampling2d_23/resize/ResizeNearestNeighbor?
-sequential_22/conv2d_45/Conv2D/ReadVariableOpReadVariableOp6sequential_22_conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02/
-sequential_22/conv2d_45/Conv2D/ReadVariableOp?
sequential_22/conv2d_45/Conv2DConv2DLsequential_22/up_sampling2d_23/resize/ResizeNearestNeighbor:resized_images:05sequential_22/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2 
sequential_22/conv2d_45/Conv2D?
.sequential_22/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp7sequential_22_conv2d_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_22/conv2d_45/BiasAdd/ReadVariableOp?
sequential_22/conv2d_45/BiasAddBiasAdd'sequential_22/conv2d_45/Conv2D:output:06sequential_22/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2!
sequential_22/conv2d_45/BiasAdd?
sequential_22/conv2d_45/TanhTanh(sequential_22/conv2d_45/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
sequential_22/conv2d_45/Tanh?

IdentityIdentity sequential_22/conv2d_45/Tanh:y:0>^sequential_22/batch_normalization_33/batchnorm/ReadVariableOp@^sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_1@^sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_2B^sequential_22/batch_normalization_33/batchnorm/mul/ReadVariableOp>^sequential_22/batch_normalization_34/batchnorm/ReadVariableOp@^sequential_22/batch_normalization_34/batchnorm/ReadVariableOp_1@^sequential_22/batch_normalization_34/batchnorm/ReadVariableOp_2B^sequential_22/batch_normalization_34/batchnorm/mul/ReadVariableOpE^sequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOpG^sequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp_14^sequential_22/batch_normalization_35/ReadVariableOp6^sequential_22/batch_normalization_35/ReadVariableOp_1/^sequential_22/conv2d_44/BiasAdd/ReadVariableOp.^sequential_22/conv2d_44/Conv2D/ReadVariableOp/^sequential_22/conv2d_45/BiasAdd/ReadVariableOp.^sequential_22/conv2d_45/Conv2D/ReadVariableOp.^sequential_22/dense_44/BiasAdd/ReadVariableOp-^sequential_22/dense_44/MatMul/ReadVariableOp.^sequential_22/dense_45/BiasAdd/ReadVariableOp-^sequential_22/dense_45/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2~
=sequential_22/batch_normalization_33/batchnorm/ReadVariableOp=sequential_22/batch_normalization_33/batchnorm/ReadVariableOp2?
?sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_1?sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_12?
?sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_2?sequential_22/batch_normalization_33/batchnorm/ReadVariableOp_22?
Asequential_22/batch_normalization_33/batchnorm/mul/ReadVariableOpAsequential_22/batch_normalization_33/batchnorm/mul/ReadVariableOp2~
=sequential_22/batch_normalization_34/batchnorm/ReadVariableOp=sequential_22/batch_normalization_34/batchnorm/ReadVariableOp2?
?sequential_22/batch_normalization_34/batchnorm/ReadVariableOp_1?sequential_22/batch_normalization_34/batchnorm/ReadVariableOp_12?
?sequential_22/batch_normalization_34/batchnorm/ReadVariableOp_2?sequential_22/batch_normalization_34/batchnorm/ReadVariableOp_22?
Asequential_22/batch_normalization_34/batchnorm/mul/ReadVariableOpAsequential_22/batch_normalization_34/batchnorm/mul/ReadVariableOp2?
Dsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOpDsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp2?
Fsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1Fsequential_22/batch_normalization_35/FusedBatchNormV3/ReadVariableOp_12j
3sequential_22/batch_normalization_35/ReadVariableOp3sequential_22/batch_normalization_35/ReadVariableOp2n
5sequential_22/batch_normalization_35/ReadVariableOp_15sequential_22/batch_normalization_35/ReadVariableOp_12`
.sequential_22/conv2d_44/BiasAdd/ReadVariableOp.sequential_22/conv2d_44/BiasAdd/ReadVariableOp2^
-sequential_22/conv2d_44/Conv2D/ReadVariableOp-sequential_22/conv2d_44/Conv2D/ReadVariableOp2`
.sequential_22/conv2d_45/BiasAdd/ReadVariableOp.sequential_22/conv2d_45/BiasAdd/ReadVariableOp2^
-sequential_22/conv2d_45/Conv2D/ReadVariableOp-sequential_22/conv2d_45/Conv2D/ReadVariableOp2^
-sequential_22/dense_44/BiasAdd/ReadVariableOp-sequential_22/dense_44/BiasAdd/ReadVariableOp2\
,sequential_22/dense_44/MatMul/ReadVariableOp,sequential_22/dense_44/MatMul/ReadVariableOp2^
-sequential_22/dense_45/BiasAdd/ReadVariableOp-sequential_22/dense_45/BiasAdd/ReadVariableOp2\
,sequential_22/dense_45/MatMul/ReadVariableOp,sequential_22/dense_45/MatMul/ReadVariableOp:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_44_input
?
?
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_2081617

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
H
,__inference_reshape_11_layer_call_fn_2081775

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
GPU2*0J 8? *P
fKRI
G__inference_reshape_11_layer_call_and_return_conditional_losses_20807282
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
?
?
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_2081870

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
?
?
/__inference_sequential_22_layer_call_fn_2081287

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
J__inference_sequential_22_layer_call_and_return_conditional_losses_20807822
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
i
M__inference_up_sampling2d_23_layer_call_and_return_conditional_losses_2080637

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
?C
?	
J__inference_sequential_22_layer_call_and_return_conditional_losses_2081138
dense_44_input#
dense_44_2081084:	d?
dense_44_2081086:	?-
batch_normalization_33_2081089:	?-
batch_normalization_33_2081091:	?-
batch_normalization_33_2081093:	?-
batch_normalization_33_2081095:	?$
dense_45_2081099:
??1
dense_45_2081101:	?1-
batch_normalization_34_2081104:	?1-
batch_normalization_34_2081106:	?1-
batch_normalization_34_2081108:	?1-
batch_normalization_34_2081110:	?1,
conv2d_44_2081116:?@
conv2d_44_2081118:@,
batch_normalization_35_2081121:@,
batch_normalization_35_2081123:@,
batch_normalization_35_2081125:@,
batch_normalization_35_2081127:@+
conv2d_45_2081132:@
conv2d_45_2081134:
identity??.batch_normalization_33/StatefulPartitionedCall?.batch_normalization_34/StatefulPartitionedCall?.batch_normalization_35/StatefulPartitionedCall?!conv2d_44/StatefulPartitionedCall?!conv2d_45/StatefulPartitionedCall? dense_44/StatefulPartitionedCall? dense_45/StatefulPartitionedCall?
 dense_44/StatefulPartitionedCallStatefulPartitionedCalldense_44_inputdense_44_2081084dense_44_2081086*
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
E__inference_dense_44_layer_call_and_return_conditional_losses_20806602"
 dense_44/StatefulPartitionedCall?
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0batch_normalization_33_2081089batch_normalization_33_2081091batch_normalization_33_2081093batch_normalization_33_2081095*
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
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_208017920
.batch_normalization_33/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
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
J__inference_activation_22_layer_call_and_return_conditional_losses_20806802
activation_22/PartitionedCall?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0dense_45_2081099dense_45_2081101*
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
E__inference_dense_45_layer_call_and_return_conditional_losses_20806922"
 dense_45/StatefulPartitionedCall?
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0batch_normalization_34_2081104batch_normalization_34_2081106batch_normalization_34_2081108batch_normalization_34_2081110*
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
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_208034120
.batch_normalization_34/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
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
J__inference_activation_23_layer_call_and_return_conditional_losses_20807122
activation_23/PartitionedCall?
reshape_11/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_reshape_11_layer_call_and_return_conditional_losses_20807282
reshape_11/PartitionedCall?
 up_sampling2d_22/PartitionedCallPartitionedCall#reshape_11/PartitionedCall:output:0*
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
M__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_20804922"
 up_sampling2d_22/PartitionedCall?
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_22/PartitionedCall:output:0conv2d_44_2081116conv2d_44_2081118*
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
F__inference_conv2d_44_layer_call_and_return_conditional_losses_20807412#
!conv2d_44/StatefulPartitionedCall?
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0batch_normalization_35_2081121batch_normalization_35_2081123batch_normalization_35_2081125batch_normalization_35_2081127*
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
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_208052020
.batch_normalization_35/StatefulPartitionedCall?
leaky_re_lu_44/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_44_layer_call_and_return_conditional_losses_20807612 
leaky_re_lu_44/PartitionedCall?
 up_sampling2d_23/PartitionedCallPartitionedCall'leaky_re_lu_44/PartitionedCall:output:0*
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
M__inference_up_sampling2d_23_layer_call_and_return_conditional_losses_20806372"
 up_sampling2d_23/PartitionedCall?
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_23/PartitionedCall:output:0conv2d_45_2081132conv2d_45_2081134*
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
F__inference_conv2d_45_layer_call_and_return_conditional_losses_20807752#
!conv2d_45/StatefulPartitionedCall?
IdentityIdentity*conv2d_45/StatefulPartitionedCall:output:0/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_44_input
?
?
8__inference_batch_normalization_33_layer_call_fn_2081597

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
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_20802392
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
?*
?
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_2080401

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
?
?
/__inference_sequential_22_layer_call_fn_2081081
dense_44_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_44_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
J__inference_sequential_22_layer_call_and_return_conditional_losses_20809932
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
_user_specified_namedense_44_input
?Y
?
#__inference__traced_restore_2082053
file_prefix3
 assignvariableop_dense_44_kernel:	d?/
 assignvariableop_1_dense_44_bias:	?>
/assignvariableop_2_batch_normalization_33_gamma:	?=
.assignvariableop_3_batch_normalization_33_beta:	?D
5assignvariableop_4_batch_normalization_33_moving_mean:	?H
9assignvariableop_5_batch_normalization_33_moving_variance:	?6
"assignvariableop_6_dense_45_kernel:
??1/
 assignvariableop_7_dense_45_bias:	?1>
/assignvariableop_8_batch_normalization_34_gamma:	?1=
.assignvariableop_9_batch_normalization_34_beta:	?1E
6assignvariableop_10_batch_normalization_34_moving_mean:	?1I
:assignvariableop_11_batch_normalization_34_moving_variance:	?1?
$assignvariableop_12_conv2d_44_kernel:?@0
"assignvariableop_13_conv2d_44_bias:@>
0assignvariableop_14_batch_normalization_35_gamma:@=
/assignvariableop_15_batch_normalization_35_beta:@D
6assignvariableop_16_batch_normalization_35_moving_mean:@H
:assignvariableop_17_batch_normalization_35_moving_variance:@>
$assignvariableop_18_conv2d_45_kernel:@0
"assignvariableop_19_conv2d_45_bias:
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
AssignVariableOpAssignVariableOp assignvariableop_dense_44_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_44_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_33_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_33_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_33_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_33_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_45_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_45_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_34_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_34_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_34_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_34_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_44_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_44_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_35_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_35_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_35_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_35_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_45_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_45_biasIdentity_19:output:0"/device:CPU:0*
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
?C
?	
J__inference_sequential_22_layer_call_and_return_conditional_losses_2081195
dense_44_input#
dense_44_2081141:	d?
dense_44_2081143:	?-
batch_normalization_33_2081146:	?-
batch_normalization_33_2081148:	?-
batch_normalization_33_2081150:	?-
batch_normalization_33_2081152:	?$
dense_45_2081156:
??1
dense_45_2081158:	?1-
batch_normalization_34_2081161:	?1-
batch_normalization_34_2081163:	?1-
batch_normalization_34_2081165:	?1-
batch_normalization_34_2081167:	?1,
conv2d_44_2081173:?@
conv2d_44_2081175:@,
batch_normalization_35_2081178:@,
batch_normalization_35_2081180:@,
batch_normalization_35_2081182:@,
batch_normalization_35_2081184:@+
conv2d_45_2081189:@
conv2d_45_2081191:
identity??.batch_normalization_33/StatefulPartitionedCall?.batch_normalization_34/StatefulPartitionedCall?.batch_normalization_35/StatefulPartitionedCall?!conv2d_44/StatefulPartitionedCall?!conv2d_45/StatefulPartitionedCall? dense_44/StatefulPartitionedCall? dense_45/StatefulPartitionedCall?
 dense_44/StatefulPartitionedCallStatefulPartitionedCalldense_44_inputdense_44_2081141dense_44_2081143*
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
E__inference_dense_44_layer_call_and_return_conditional_losses_20806602"
 dense_44/StatefulPartitionedCall?
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0batch_normalization_33_2081146batch_normalization_33_2081148batch_normalization_33_2081150batch_normalization_33_2081152*
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
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_208023920
.batch_normalization_33/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
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
J__inference_activation_22_layer_call_and_return_conditional_losses_20806802
activation_22/PartitionedCall?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0dense_45_2081156dense_45_2081158*
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
E__inference_dense_45_layer_call_and_return_conditional_losses_20806922"
 dense_45/StatefulPartitionedCall?
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0batch_normalization_34_2081161batch_normalization_34_2081163batch_normalization_34_2081165batch_normalization_34_2081167*
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
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_208040120
.batch_normalization_34/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
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
J__inference_activation_23_layer_call_and_return_conditional_losses_20807122
activation_23/PartitionedCall?
reshape_11/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_reshape_11_layer_call_and_return_conditional_losses_20807282
reshape_11/PartitionedCall?
 up_sampling2d_22/PartitionedCallPartitionedCall#reshape_11/PartitionedCall:output:0*
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
M__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_20804922"
 up_sampling2d_22/PartitionedCall?
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_22/PartitionedCall:output:0conv2d_44_2081173conv2d_44_2081175*
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
F__inference_conv2d_44_layer_call_and_return_conditional_losses_20807412#
!conv2d_44/StatefulPartitionedCall?
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0batch_normalization_35_2081178batch_normalization_35_2081180batch_normalization_35_2081182batch_normalization_35_2081184*
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
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_208056420
.batch_normalization_35/StatefulPartitionedCall?
leaky_re_lu_44/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_44_layer_call_and_return_conditional_losses_20807612 
leaky_re_lu_44/PartitionedCall?
 up_sampling2d_23/PartitionedCallPartitionedCall'leaky_re_lu_44/PartitionedCall:output:0*
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
M__inference_up_sampling2d_23_layer_call_and_return_conditional_losses_20806372"
 up_sampling2d_23/PartitionedCall?
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_23/PartitionedCall:output:0conv2d_45_2081189conv2d_45_2081191*
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
F__inference_conv2d_45_layer_call_and_return_conditional_losses_20807752#
!conv2d_45/StatefulPartitionedCall?
IdentityIdentity*conv2d_45/StatefulPartitionedCall:output:0/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_44_input
?
?
%__inference_signature_wrapper_2081242
dense_44_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_44_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_20801552
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
_user_specified_namedense_44_input
?
?
/__inference_sequential_22_layer_call_fn_2081332

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
J__inference_sequential_22_layer_call_and_return_conditional_losses_20809932
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
?4
?	
 __inference__traced_save_2081983
file_prefix.
*savev2_dense_44_kernel_read_readvariableop,
(savev2_dense_44_bias_read_readvariableop;
7savev2_batch_normalization_33_gamma_read_readvariableop:
6savev2_batch_normalization_33_beta_read_readvariableopA
=savev2_batch_normalization_33_moving_mean_read_readvariableopE
Asavev2_batch_normalization_33_moving_variance_read_readvariableop.
*savev2_dense_45_kernel_read_readvariableop,
(savev2_dense_45_bias_read_readvariableop;
7savev2_batch_normalization_34_gamma_read_readvariableop:
6savev2_batch_normalization_34_beta_read_readvariableopA
=savev2_batch_normalization_34_moving_mean_read_readvariableopE
Asavev2_batch_normalization_34_moving_variance_read_readvariableop/
+savev2_conv2d_44_kernel_read_readvariableop-
)savev2_conv2d_44_bias_read_readvariableop;
7savev2_batch_normalization_35_gamma_read_readvariableop:
6savev2_batch_normalization_35_beta_read_readvariableopA
=savev2_batch_normalization_35_moving_mean_read_readvariableopE
Asavev2_batch_normalization_35_moving_variance_read_readvariableop/
+savev2_conv2d_45_kernel_read_readvariableop-
)savev2_conv2d_45_bias_read_readvariableop
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

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_44_kernel_read_readvariableop(savev2_dense_44_bias_read_readvariableop7savev2_batch_normalization_33_gamma_read_readvariableop6savev2_batch_normalization_33_beta_read_readvariableop=savev2_batch_normalization_33_moving_mean_read_readvariableopAsavev2_batch_normalization_33_moving_variance_read_readvariableop*savev2_dense_45_kernel_read_readvariableop(savev2_dense_45_bias_read_readvariableop7savev2_batch_normalization_34_gamma_read_readvariableop6savev2_batch_normalization_34_beta_read_readvariableop=savev2_batch_normalization_34_moving_mean_read_readvariableopAsavev2_batch_normalization_34_moving_variance_read_readvariableop+savev2_conv2d_44_kernel_read_readvariableop)savev2_conv2d_44_bias_read_readvariableop7savev2_batch_normalization_35_gamma_read_readvariableop6savev2_batch_normalization_35_beta_read_readvariableop=savev2_batch_normalization_35_moving_mean_read_readvariableopAsavev2_batch_normalization_35_moving_variance_read_readvariableop+savev2_conv2d_45_kernel_read_readvariableop)savev2_conv2d_45_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
?
g
K__inference_leaky_re_lu_44_layer_call_and_return_conditional_losses_2080761

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
?
?
F__inference_conv2d_44_layer_call_and_return_conditional_losses_2080741

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
?C
?	
J__inference_sequential_22_layer_call_and_return_conditional_losses_2080782

inputs#
dense_44_2080661:	d?
dense_44_2080663:	?-
batch_normalization_33_2080666:	?-
batch_normalization_33_2080668:	?-
batch_normalization_33_2080670:	?-
batch_normalization_33_2080672:	?$
dense_45_2080693:
??1
dense_45_2080695:	?1-
batch_normalization_34_2080698:	?1-
batch_normalization_34_2080700:	?1-
batch_normalization_34_2080702:	?1-
batch_normalization_34_2080704:	?1,
conv2d_44_2080742:?@
conv2d_44_2080744:@,
batch_normalization_35_2080747:@,
batch_normalization_35_2080749:@,
batch_normalization_35_2080751:@,
batch_normalization_35_2080753:@+
conv2d_45_2080776:@
conv2d_45_2080778:
identity??.batch_normalization_33/StatefulPartitionedCall?.batch_normalization_34/StatefulPartitionedCall?.batch_normalization_35/StatefulPartitionedCall?!conv2d_44/StatefulPartitionedCall?!conv2d_45/StatefulPartitionedCall? dense_44/StatefulPartitionedCall? dense_45/StatefulPartitionedCall?
 dense_44/StatefulPartitionedCallStatefulPartitionedCallinputsdense_44_2080661dense_44_2080663*
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
E__inference_dense_44_layer_call_and_return_conditional_losses_20806602"
 dense_44/StatefulPartitionedCall?
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0batch_normalization_33_2080666batch_normalization_33_2080668batch_normalization_33_2080670batch_normalization_33_2080672*
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
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_208017920
.batch_normalization_33/StatefulPartitionedCall?
activation_22/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
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
J__inference_activation_22_layer_call_and_return_conditional_losses_20806802
activation_22/PartitionedCall?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall&activation_22/PartitionedCall:output:0dense_45_2080693dense_45_2080695*
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
E__inference_dense_45_layer_call_and_return_conditional_losses_20806922"
 dense_45/StatefulPartitionedCall?
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0batch_normalization_34_2080698batch_normalization_34_2080700batch_normalization_34_2080702batch_normalization_34_2080704*
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
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_208034120
.batch_normalization_34/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
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
J__inference_activation_23_layer_call_and_return_conditional_losses_20807122
activation_23/PartitionedCall?
reshape_11/PartitionedCallPartitionedCall&activation_23/PartitionedCall:output:0*
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
GPU2*0J 8? *P
fKRI
G__inference_reshape_11_layer_call_and_return_conditional_losses_20807282
reshape_11/PartitionedCall?
 up_sampling2d_22/PartitionedCallPartitionedCall#reshape_11/PartitionedCall:output:0*
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
M__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_20804922"
 up_sampling2d_22/PartitionedCall?
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_22/PartitionedCall:output:0conv2d_44_2080742conv2d_44_2080744*
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
F__inference_conv2d_44_layer_call_and_return_conditional_losses_20807412#
!conv2d_44/StatefulPartitionedCall?
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0batch_normalization_35_2080747batch_normalization_35_2080749batch_normalization_35_2080751batch_normalization_35_2080753*
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
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_208052020
.batch_normalization_35/StatefulPartitionedCall?
leaky_re_lu_44/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_44_layer_call_and_return_conditional_losses_20807612 
leaky_re_lu_44/PartitionedCall?
 up_sampling2d_23/PartitionedCallPartitionedCall'leaky_re_lu_44/PartitionedCall:output:0*
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
M__inference_up_sampling2d_23_layer_call_and_return_conditional_losses_20806372"
 up_sampling2d_23/PartitionedCall?
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_23/PartitionedCall:output:0conv2d_45_2080776conv2d_45_2080778*
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
F__inference_conv2d_45_layer_call_and_return_conditional_losses_20807752#
!conv2d_45/StatefulPartitionedCall?
IdentityIdentity*conv2d_45/StatefulPartitionedCall:output:0/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
J__inference_sequential_22_layer_call_and_return_conditional_losses_2081428

inputs:
'dense_44_matmul_readvariableop_resource:	d?7
(dense_44_biasadd_readvariableop_resource:	?G
8batch_normalization_33_batchnorm_readvariableop_resource:	?K
<batch_normalization_33_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_33_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_33_batchnorm_readvariableop_2_resource:	?;
'dense_45_matmul_readvariableop_resource:
??17
(dense_45_biasadd_readvariableop_resource:	?1G
8batch_normalization_34_batchnorm_readvariableop_resource:	?1K
<batch_normalization_34_batchnorm_mul_readvariableop_resource:	?1I
:batch_normalization_34_batchnorm_readvariableop_1_resource:	?1I
:batch_normalization_34_batchnorm_readvariableop_2_resource:	?1C
(conv2d_44_conv2d_readvariableop_resource:?@7
)conv2d_44_biasadd_readvariableop_resource:@<
.batch_normalization_35_readvariableop_resource:@>
0batch_normalization_35_readvariableop_1_resource:@M
?batch_normalization_35_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_35_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_45_conv2d_readvariableop_resource:@7
)conv2d_45_biasadd_readvariableop_resource:
identity??/batch_normalization_33/batchnorm/ReadVariableOp?1batch_normalization_33/batchnorm/ReadVariableOp_1?1batch_normalization_33/batchnorm/ReadVariableOp_2?3batch_normalization_33/batchnorm/mul/ReadVariableOp?/batch_normalization_34/batchnorm/ReadVariableOp?1batch_normalization_34/batchnorm/ReadVariableOp_1?1batch_normalization_34/batchnorm/ReadVariableOp_2?3batch_normalization_34/batchnorm/mul/ReadVariableOp?6batch_normalization_35/FusedBatchNormV3/ReadVariableOp?8batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_35/ReadVariableOp?'batch_normalization_35/ReadVariableOp_1? conv2d_44/BiasAdd/ReadVariableOp?conv2d_44/Conv2D/ReadVariableOp? conv2d_45/BiasAdd/ReadVariableOp?conv2d_45/Conv2D/ReadVariableOp?dense_44/BiasAdd/ReadVariableOp?dense_44/MatMul/ReadVariableOp?dense_45/BiasAdd/ReadVariableOp?dense_45/MatMul/ReadVariableOp?
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02 
dense_44/MatMul/ReadVariableOp?
dense_44/MatMulMatMulinputs&dense_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_44/MatMul?
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_44/BiasAdd/ReadVariableOp?
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_44/BiasAdd?
/batch_normalization_33/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_33_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_33/batchnorm/ReadVariableOp?
&batch_normalization_33/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_33/batchnorm/add/y?
$batch_normalization_33/batchnorm/addAddV27batch_normalization_33/batchnorm/ReadVariableOp:value:0/batch_normalization_33/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_33/batchnorm/add?
&batch_normalization_33/batchnorm/RsqrtRsqrt(batch_normalization_33/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_33/batchnorm/Rsqrt?
3batch_normalization_33/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_33_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_33/batchnorm/mul/ReadVariableOp?
$batch_normalization_33/batchnorm/mulMul*batch_normalization_33/batchnorm/Rsqrt:y:0;batch_normalization_33/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_33/batchnorm/mul?
&batch_normalization_33/batchnorm/mul_1Muldense_44/BiasAdd:output:0(batch_normalization_33/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_33/batchnorm/mul_1?
1batch_normalization_33/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_33_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_33/batchnorm/ReadVariableOp_1?
&batch_normalization_33/batchnorm/mul_2Mul9batch_normalization_33/batchnorm/ReadVariableOp_1:value:0(batch_normalization_33/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_33/batchnorm/mul_2?
1batch_normalization_33/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_33_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_33/batchnorm/ReadVariableOp_2?
$batch_normalization_33/batchnorm/subSub9batch_normalization_33/batchnorm/ReadVariableOp_2:value:0*batch_normalization_33/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_33/batchnorm/sub?
&batch_normalization_33/batchnorm/add_1AddV2*batch_normalization_33/batchnorm/mul_1:z:0(batch_normalization_33/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_33/batchnorm/add_1?
activation_22/ReluRelu*batch_normalization_33/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_22/Relu?
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource* 
_output_shapes
:
??1*
dtype02 
dense_45/MatMul/ReadVariableOp?
dense_45/MatMulMatMul activation_22/Relu:activations:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
dense_45/MatMul?
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes	
:?1*
dtype02!
dense_45/BiasAdd/ReadVariableOp?
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
dense_45/BiasAdd?
/batch_normalization_34/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_34_batchnorm_readvariableop_resource*
_output_shapes	
:?1*
dtype021
/batch_normalization_34/batchnorm/ReadVariableOp?
&batch_normalization_34/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_34/batchnorm/add/y?
$batch_normalization_34/batchnorm/addAddV27batch_normalization_34/batchnorm/ReadVariableOp:value:0/batch_normalization_34/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?12&
$batch_normalization_34/batchnorm/add?
&batch_normalization_34/batchnorm/RsqrtRsqrt(batch_normalization_34/batchnorm/add:z:0*
T0*
_output_shapes	
:?12(
&batch_normalization_34/batchnorm/Rsqrt?
3batch_normalization_34/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_34_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?1*
dtype025
3batch_normalization_34/batchnorm/mul/ReadVariableOp?
$batch_normalization_34/batchnorm/mulMul*batch_normalization_34/batchnorm/Rsqrt:y:0;batch_normalization_34/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?12&
$batch_normalization_34/batchnorm/mul?
&batch_normalization_34/batchnorm/mul_1Muldense_45/BiasAdd:output:0(batch_normalization_34/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????12(
&batch_normalization_34/batchnorm/mul_1?
1batch_normalization_34/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_34_batchnorm_readvariableop_1_resource*
_output_shapes	
:?1*
dtype023
1batch_normalization_34/batchnorm/ReadVariableOp_1?
&batch_normalization_34/batchnorm/mul_2Mul9batch_normalization_34/batchnorm/ReadVariableOp_1:value:0(batch_normalization_34/batchnorm/mul:z:0*
T0*
_output_shapes	
:?12(
&batch_normalization_34/batchnorm/mul_2?
1batch_normalization_34/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_34_batchnorm_readvariableop_2_resource*
_output_shapes	
:?1*
dtype023
1batch_normalization_34/batchnorm/ReadVariableOp_2?
$batch_normalization_34/batchnorm/subSub9batch_normalization_34/batchnorm/ReadVariableOp_2:value:0*batch_normalization_34/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?12&
$batch_normalization_34/batchnorm/sub?
&batch_normalization_34/batchnorm/add_1AddV2*batch_normalization_34/batchnorm/mul_1:z:0(batch_normalization_34/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????12(
&batch_normalization_34/batchnorm/add_1?
activation_23/ReluRelu*batch_normalization_34/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????12
activation_23/Relut
reshape_11/ShapeShape activation_23/Relu:activations:0*
T0*
_output_shapes
:2
reshape_11/Shape?
reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_11/strided_slice/stack?
 reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_11/strided_slice/stack_1?
 reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_11/strided_slice/stack_2?
reshape_11/strided_sliceStridedSlicereshape_11/Shape:output:0'reshape_11/strided_slice/stack:output:0)reshape_11/strided_slice/stack_1:output:0)reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_11/strided_slicez
reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_11/Reshape/shape/1z
reshape_11/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_11/Reshape/shape/2{
reshape_11/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_11/Reshape/shape/3?
reshape_11/Reshape/shapePack!reshape_11/strided_slice:output:0#reshape_11/Reshape/shape/1:output:0#reshape_11/Reshape/shape/2:output:0#reshape_11/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_11/Reshape/shape?
reshape_11/ReshapeReshape activation_23/Relu:activations:0!reshape_11/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_11/Reshape?
up_sampling2d_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_22/Const?
up_sampling2d_22/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_22/Const_1?
up_sampling2d_22/mulMulup_sampling2d_22/Const:output:0!up_sampling2d_22/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_22/mul?
-up_sampling2d_22/resize/ResizeNearestNeighborResizeNearestNeighborreshape_11/Reshape:output:0up_sampling2d_22/mul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(2/
-up_sampling2d_22/resize/ResizeNearestNeighbor?
conv2d_44/Conv2D/ReadVariableOpReadVariableOp(conv2d_44_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02!
conv2d_44/Conv2D/ReadVariableOp?
conv2d_44/Conv2DConv2D>up_sampling2d_22/resize/ResizeNearestNeighbor:resized_images:0'conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_44/Conv2D?
 conv2d_44/BiasAdd/ReadVariableOpReadVariableOp)conv2d_44_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_44/BiasAdd/ReadVariableOp?
conv2d_44/BiasAddBiasAddconv2d_44/Conv2D:output:0(conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_44/BiasAdd?
%batch_normalization_35/ReadVariableOpReadVariableOp.batch_normalization_35_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_35/ReadVariableOp?
'batch_normalization_35/ReadVariableOp_1ReadVariableOp0batch_normalization_35_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_35/ReadVariableOp_1?
6batch_normalization_35/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_35_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_35/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_35_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_35/FusedBatchNormV3FusedBatchNormV3conv2d_44/BiasAdd:output:0-batch_normalization_35/ReadVariableOp:value:0/batch_normalization_35/ReadVariableOp_1:value:0>batch_normalization_35/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_35/FusedBatchNormV3?
leaky_re_lu_44/LeakyRelu	LeakyRelu+batch_normalization_35/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@2
leaky_re_lu_44/LeakyRelu?
up_sampling2d_23/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_23/Const?
up_sampling2d_23/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_23/Const_1?
up_sampling2d_23/mulMulup_sampling2d_23/Const:output:0!up_sampling2d_23/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_23/mul?
-up_sampling2d_23/resize/ResizeNearestNeighborResizeNearestNeighbor&leaky_re_lu_44/LeakyRelu:activations:0up_sampling2d_23/mul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(2/
-up_sampling2d_23/resize/ResizeNearestNeighbor?
conv2d_45/Conv2D/ReadVariableOpReadVariableOp(conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_45/Conv2D/ReadVariableOp?
conv2d_45/Conv2DConv2D>up_sampling2d_23/resize/ResizeNearestNeighbor:resized_images:0'conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_45/Conv2D?
 conv2d_45/BiasAdd/ReadVariableOpReadVariableOp)conv2d_45_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_45/BiasAdd/ReadVariableOp?
conv2d_45/BiasAddBiasAddconv2d_45/Conv2D:output:0(conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_45/BiasAdd~
conv2d_45/TanhTanhconv2d_45/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_45/Tanh?
IdentityIdentityconv2d_45/Tanh:y:00^batch_normalization_33/batchnorm/ReadVariableOp2^batch_normalization_33/batchnorm/ReadVariableOp_12^batch_normalization_33/batchnorm/ReadVariableOp_24^batch_normalization_33/batchnorm/mul/ReadVariableOp0^batch_normalization_34/batchnorm/ReadVariableOp2^batch_normalization_34/batchnorm/ReadVariableOp_12^batch_normalization_34/batchnorm/ReadVariableOp_24^batch_normalization_34/batchnorm/mul/ReadVariableOp7^batch_normalization_35/FusedBatchNormV3/ReadVariableOp9^batch_normalization_35/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_35/ReadVariableOp(^batch_normalization_35/ReadVariableOp_1!^conv2d_44/BiasAdd/ReadVariableOp ^conv2d_44/Conv2D/ReadVariableOp!^conv2d_45/BiasAdd/ReadVariableOp ^conv2d_45/Conv2D/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_33/batchnorm/ReadVariableOp/batch_normalization_33/batchnorm/ReadVariableOp2f
1batch_normalization_33/batchnorm/ReadVariableOp_11batch_normalization_33/batchnorm/ReadVariableOp_12f
1batch_normalization_33/batchnorm/ReadVariableOp_21batch_normalization_33/batchnorm/ReadVariableOp_22j
3batch_normalization_33/batchnorm/mul/ReadVariableOp3batch_normalization_33/batchnorm/mul/ReadVariableOp2b
/batch_normalization_34/batchnorm/ReadVariableOp/batch_normalization_34/batchnorm/ReadVariableOp2f
1batch_normalization_34/batchnorm/ReadVariableOp_11batch_normalization_34/batchnorm/ReadVariableOp_12f
1batch_normalization_34/batchnorm/ReadVariableOp_21batch_normalization_34/batchnorm/ReadVariableOp_22j
3batch_normalization_34/batchnorm/mul/ReadVariableOp3batch_normalization_34/batchnorm/mul/ReadVariableOp2p
6batch_normalization_35/FusedBatchNormV3/ReadVariableOp6batch_normalization_35/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_35/FusedBatchNormV3/ReadVariableOp_18batch_normalization_35/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_35/ReadVariableOp%batch_normalization_35/ReadVariableOp2R
'batch_normalization_35/ReadVariableOp_1'batch_normalization_35/ReadVariableOp_12D
 conv2d_44/BiasAdd/ReadVariableOp conv2d_44/BiasAdd/ReadVariableOp2B
conv2d_44/Conv2D/ReadVariableOpconv2d_44/Conv2D/ReadVariableOp2D
 conv2d_45/BiasAdd/ReadVariableOp conv2d_45/BiasAdd/ReadVariableOp2B
conv2d_45/Conv2D/ReadVariableOpconv2d_45/Conv2D/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
N
2__inference_up_sampling2d_23_layer_call_fn_2080643

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
M__inference_up_sampling2d_23_layer_call_and_return_conditional_losses_20806372
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
?
g
K__inference_leaky_re_lu_44_layer_call_and_return_conditional_losses_2081880

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
?
?
F__inference_conv2d_44_layer_call_and_return_conditional_losses_2081808

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
?
K
/__inference_activation_23_layer_call_fn_2081765

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
J__inference_activation_23_layer_call_and_return_conditional_losses_20807122
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
?
L
0__inference_leaky_re_lu_44_layer_call_fn_2081875

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
K__inference_leaky_re_lu_44_layer_call_and_return_conditional_losses_20807612
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
dense_44_input7
 serving_default_dense_44_input:0?????????dE
	conv2d_458
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
_tf_keras_sequential?_{"name": "sequential_22", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_22", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_44_input"}}, {"class_name": "Dense", "config": {"name": "dense_44", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_33", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_45", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 6272, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_34", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Reshape", "config": {"name": "reshape_11", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_22", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_44", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_35", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_44", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_23", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_45", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 100]}, "float32", "dense_44_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_22", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_44_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_44", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_33", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8}, {"class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 9}, {"class_name": "Dense", "config": {"name": "dense_45", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 6272, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_34", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 14}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 16}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 17}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 18}, {"class_name": "Reshape", "config": {"name": "reshape_11", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}, "shared_object_id": 19}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_22", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "shared_object_id": 20}, {"class_name": "Conv2D", "config": {"name": "conv2d_44", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_35", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 25}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 27}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 28}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_44", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 29}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_23", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "shared_object_id": 30}, {"class_name": "Conv2D", "config": {"name": "conv2d_45", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 33}]}}}
?	

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_44", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_44", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
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
_tf_keras_layer?{"name": "batch_normalization_33", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_33", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 1024}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?
"	variables
#regularization_losses
$trainable_variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_22", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 9}
?	

&kernel
'bias
(	variables
)regularization_losses
*trainable_variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_45", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 6272, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
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
_tf_keras_layer?{"name": "batch_normalization_34", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_34", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 14}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 16}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 6272}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6272]}}
?
5	variables
6regularization_losses
7trainable_variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 18}
?
9	variables
:regularization_losses
;trainable_variables
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "reshape_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape_11", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}, "shared_object_id": 19}
?
=	variables
>regularization_losses
?trainable_variables
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "up_sampling2d_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_22", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 39}}
?


Akernel
Bbias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_44", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_44", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 128]}}
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
_tf_keras_layer?{"name": "batch_normalization_35", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_35", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 25}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 27}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 64]}}
?
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_44", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_44", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 29}
?
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "up_sampling2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_23", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "shared_object_id": 30, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 42}}
?


Xkernel
Ybias
Z	variables
[regularization_losses
\trainable_variables
]	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_45", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 33, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 43}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
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
": 	d?2dense_44/kernel
:?2dense_44/bias
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
+:)?2batch_normalization_33/gamma
*:(?2batch_normalization_33/beta
3:1? (2"batch_normalization_33/moving_mean
7:5? (2&batch_normalization_33/moving_variance
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
??12dense_45/kernel
:?12dense_45/bias
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
+:)?12batch_normalization_34/gamma
*:(?12batch_normalization_34/beta
3:1?1 (2"batch_normalization_34/moving_mean
7:5?1 (2&batch_normalization_34/moving_variance
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
+:)?@2conv2d_44/kernel
:@2conv2d_44/bias
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
*:(@2batch_normalization_35/gamma
):'@2batch_normalization_35/beta
2:0@ (2"batch_normalization_35/moving_mean
6:4@ (2&batch_normalization_35/moving_variance
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
*:(@2conv2d_45/kernel
:2conv2d_45/bias
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
/__inference_sequential_22_layer_call_fn_2080825
/__inference_sequential_22_layer_call_fn_2081287
/__inference_sequential_22_layer_call_fn_2081332
/__inference_sequential_22_layer_call_fn_2081081?
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
"__inference__wrapped_model_2080155?
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
dense_44_input?????????d
?2?
J__inference_sequential_22_layer_call_and_return_conditional_losses_2081428
J__inference_sequential_22_layer_call_and_return_conditional_losses_2081552
J__inference_sequential_22_layer_call_and_return_conditional_losses_2081138
J__inference_sequential_22_layer_call_and_return_conditional_losses_2081195?
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
*__inference_dense_44_layer_call_fn_2081561?
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
E__inference_dense_44_layer_call_and_return_conditional_losses_2081571?
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
8__inference_batch_normalization_33_layer_call_fn_2081584
8__inference_batch_normalization_33_layer_call_fn_2081597?
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
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_2081617
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_2081651?
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
/__inference_activation_22_layer_call_fn_2081656?
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
J__inference_activation_22_layer_call_and_return_conditional_losses_2081661?
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
*__inference_dense_45_layer_call_fn_2081670?
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
E__inference_dense_45_layer_call_and_return_conditional_losses_2081680?
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
8__inference_batch_normalization_34_layer_call_fn_2081693
8__inference_batch_normalization_34_layer_call_fn_2081706?
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
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_2081726
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_2081760?
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
/__inference_activation_23_layer_call_fn_2081765?
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
J__inference_activation_23_layer_call_and_return_conditional_losses_2081770?
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
,__inference_reshape_11_layer_call_fn_2081775?
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
G__inference_reshape_11_layer_call_and_return_conditional_losses_2081789?
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
2__inference_up_sampling2d_22_layer_call_fn_2080498?
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
M__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_2080492?
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
+__inference_conv2d_44_layer_call_fn_2081798?
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
F__inference_conv2d_44_layer_call_and_return_conditional_losses_2081808?
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
8__inference_batch_normalization_35_layer_call_fn_2081821
8__inference_batch_normalization_35_layer_call_fn_2081834?
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
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_2081852
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_2081870?
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
0__inference_leaky_re_lu_44_layer_call_fn_2081875?
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
K__inference_leaky_re_lu_44_layer_call_and_return_conditional_losses_2081880?
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
2__inference_up_sampling2d_23_layer_call_fn_2080643?
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
M__inference_up_sampling2d_23_layer_call_and_return_conditional_losses_2080637?
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
+__inference_conv2d_45_layer_call_fn_2081889?
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
F__inference_conv2d_45_layer_call_and_return_conditional_losses_2081900?
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
%__inference_signature_wrapper_2081242dense_44_input"?
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
"__inference__wrapped_model_2080155?&'0-/.ABHIJKXY7?4
-?*
(?%
dense_44_input?????????d
? "=?:
8
	conv2d_45+?(
	conv2d_45??????????
J__inference_activation_22_layer_call_and_return_conditional_losses_2081661Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
/__inference_activation_22_layer_call_fn_2081656M0?-
&?#
!?
inputs??????????
? "????????????
J__inference_activation_23_layer_call_and_return_conditional_losses_2081770Z0?-
&?#
!?
inputs??????????1
? "&?#
?
0??????????1
? ?
/__inference_activation_23_layer_call_fn_2081765M0?-
&?#
!?
inputs??????????1
? "???????????1?
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_2081617d4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_2081651d4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
8__inference_batch_normalization_33_layer_call_fn_2081584W4?1
*?'
!?
inputs??????????
p 
? "????????????
8__inference_batch_normalization_33_layer_call_fn_2081597W4?1
*?'
!?
inputs??????????
p
? "????????????
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_2081726d0-/.4?1
*?'
!?
inputs??????????1
p 
? "&?#
?
0??????????1
? ?
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_2081760d/0-.4?1
*?'
!?
inputs??????????1
p
? "&?#
?
0??????????1
? ?
8__inference_batch_normalization_34_layer_call_fn_2081693W0-/.4?1
*?'
!?
inputs??????????1
p 
? "???????????1?
8__inference_batch_normalization_34_layer_call_fn_2081706W/0-.4?1
*?'
!?
inputs??????????1
p
? "???????????1?
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_2081852?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_2081870?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
8__inference_batch_normalization_35_layer_call_fn_2081821?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
8__inference_batch_normalization_35_layer_call_fn_2081834?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
F__inference_conv2d_44_layer_call_and_return_conditional_losses_2081808?ABJ?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
+__inference_conv2d_44_layer_call_fn_2081798?ABJ?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
F__inference_conv2d_45_layer_call_and_return_conditional_losses_2081900?XYI?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????
? ?
+__inference_conv2d_45_layer_call_fn_2081889?XYI?F
??<
:?7
inputs+???????????????????????????@
? "2?/+????????????????????????????
E__inference_dense_44_layer_call_and_return_conditional_losses_2081571]/?,
%?"
 ?
inputs?????????d
? "&?#
?
0??????????
? ~
*__inference_dense_44_layer_call_fn_2081561P/?,
%?"
 ?
inputs?????????d
? "????????????
E__inference_dense_45_layer_call_and_return_conditional_losses_2081680^&'0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????1
? 
*__inference_dense_45_layer_call_fn_2081670Q&'0?-
&?#
!?
inputs??????????
? "???????????1?
K__inference_leaky_re_lu_44_layer_call_and_return_conditional_losses_2081880?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
0__inference_leaky_re_lu_44_layer_call_fn_2081875I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
G__inference_reshape_11_layer_call_and_return_conditional_losses_2081789b0?-
&?#
!?
inputs??????????1
? ".?+
$?!
0??????????
? ?
,__inference_reshape_11_layer_call_fn_2081775U0?-
&?#
!?
inputs??????????1
? "!????????????
J__inference_sequential_22_layer_call_and_return_conditional_losses_2081138?&'0-/.ABHIJKXY??<
5?2
(?%
dense_44_input?????????d
p 

 
? "??<
5?2
0+???????????????????????????
? ?
J__inference_sequential_22_layer_call_and_return_conditional_losses_2081195?&'/0-.ABHIJKXY??<
5?2
(?%
dense_44_input?????????d
p

 
? "??<
5?2
0+???????????????????????????
? ?
J__inference_sequential_22_layer_call_and_return_conditional_losses_2081428~&'0-/.ABHIJKXY7?4
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
J__inference_sequential_22_layer_call_and_return_conditional_losses_2081552~&'/0-.ABHIJKXY7?4
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
/__inference_sequential_22_layer_call_fn_2080825?&'0-/.ABHIJKXY??<
5?2
(?%
dense_44_input?????????d
p 

 
? "2?/+????????????????????????????
/__inference_sequential_22_layer_call_fn_2081081?&'/0-.ABHIJKXY??<
5?2
(?%
dense_44_input?????????d
p

 
? "2?/+????????????????????????????
/__inference_sequential_22_layer_call_fn_2081287?&'0-/.ABHIJKXY7?4
-?*
 ?
inputs?????????d
p 

 
? "2?/+????????????????????????????
/__inference_sequential_22_layer_call_fn_2081332?&'/0-.ABHIJKXY7?4
-?*
 ?
inputs?????????d
p

 
? "2?/+????????????????????????????
%__inference_signature_wrapper_2081242?&'0-/.ABHIJKXYI?F
? 
??<
:
dense_44_input(?%
dense_44_input?????????d"=?:
8
	conv2d_45+?(
	conv2d_45??????????
M__inference_up_sampling2d_22_layer_call_and_return_conditional_losses_2080492?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_up_sampling2d_22_layer_call_fn_2080498?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_up_sampling2d_23_layer_call_and_return_conditional_losses_2080637?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_up_sampling2d_23_layer_call_fn_2080643?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84????????????????????????????????????