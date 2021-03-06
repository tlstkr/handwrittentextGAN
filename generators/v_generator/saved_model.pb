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
dense_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?* 
shared_namedense_48/kernel
t
#dense_48/kernel/Read/ReadVariableOpReadVariableOpdense_48/kernel*
_output_shapes
:	d?*
dtype0
s
dense_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_48/bias
l
!dense_48/bias/Read/ReadVariableOpReadVariableOpdense_48/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_36/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_36/gamma
?
0batch_normalization_36/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_36/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_36/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_36/beta
?
/batch_normalization_36/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_36/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_36/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_36/moving_mean
?
6batch_normalization_36/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_36/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_36/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_36/moving_variance
?
:batch_normalization_36/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_36/moving_variance*
_output_shapes	
:?*
dtype0
|
dense_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??1* 
shared_namedense_49/kernel
u
#dense_49/kernel/Read/ReadVariableOpReadVariableOpdense_49/kernel* 
_output_shapes
:
??1*
dtype0
s
dense_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*
shared_namedense_49/bias
l
!dense_49/bias/Read/ReadVariableOpReadVariableOpdense_49/bias*
_output_shapes	
:?1*
dtype0
?
batch_normalization_37/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*-
shared_namebatch_normalization_37/gamma
?
0batch_normalization_37/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_37/gamma*
_output_shapes	
:?1*
dtype0
?
batch_normalization_37/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*,
shared_namebatch_normalization_37/beta
?
/batch_normalization_37/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_37/beta*
_output_shapes	
:?1*
dtype0
?
"batch_normalization_37/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*3
shared_name$"batch_normalization_37/moving_mean
?
6batch_normalization_37/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_37/moving_mean*
_output_shapes	
:?1*
dtype0
?
&batch_normalization_37/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*7
shared_name(&batch_normalization_37/moving_variance
?
:batch_normalization_37/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_37/moving_variance*
_output_shapes	
:?1*
dtype0
?
conv2d_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*!
shared_nameconv2d_48/kernel
~
$conv2d_48/kernel/Read/ReadVariableOpReadVariableOpconv2d_48/kernel*'
_output_shapes
:?@*
dtype0
t
conv2d_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_48/bias
m
"conv2d_48/bias/Read/ReadVariableOpReadVariableOpconv2d_48/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_38/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_38/gamma
?
0batch_normalization_38/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_38/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_38/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_38/beta
?
/batch_normalization_38/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_38/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_38/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_38/moving_mean
?
6batch_normalization_38/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_38/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_38/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_38/moving_variance
?
:batch_normalization_38/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_38/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_49/kernel
}
$conv2d_49/kernel/Read/ReadVariableOpReadVariableOpconv2d_49/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_49/bias
m
"conv2d_49/bias/Read/ReadVariableOpReadVariableOpconv2d_49/bias*
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
VARIABLE_VALUEdense_48/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_48/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_36/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_36/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_36/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_36/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEdense_49/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_49/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_37/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_37/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_37/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_37/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEconv2d_48/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_48/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_38/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_38/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_38/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_38/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEconv2d_49/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_49/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
serving_default_dense_48_inputPlaceholder*'
_output_shapes
:?????????d*
dtype0*
shape:?????????d
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_48_inputdense_48/kerneldense_48/bias&batch_normalization_36/moving_variancebatch_normalization_36/gamma"batch_normalization_36/moving_meanbatch_normalization_36/betadense_49/kerneldense_49/bias&batch_normalization_37/moving_variancebatch_normalization_37/gamma"batch_normalization_37/moving_meanbatch_normalization_37/betaconv2d_48/kernelconv2d_48/biasbatch_normalization_38/gammabatch_normalization_38/beta"batch_normalization_38/moving_mean&batch_normalization_38/moving_varianceconv2d_49/kernelconv2d_49/bias* 
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
%__inference_signature_wrapper_2254048
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_48/kernel/Read/ReadVariableOp!dense_48/bias/Read/ReadVariableOp0batch_normalization_36/gamma/Read/ReadVariableOp/batch_normalization_36/beta/Read/ReadVariableOp6batch_normalization_36/moving_mean/Read/ReadVariableOp:batch_normalization_36/moving_variance/Read/ReadVariableOp#dense_49/kernel/Read/ReadVariableOp!dense_49/bias/Read/ReadVariableOp0batch_normalization_37/gamma/Read/ReadVariableOp/batch_normalization_37/beta/Read/ReadVariableOp6batch_normalization_37/moving_mean/Read/ReadVariableOp:batch_normalization_37/moving_variance/Read/ReadVariableOp$conv2d_48/kernel/Read/ReadVariableOp"conv2d_48/bias/Read/ReadVariableOp0batch_normalization_38/gamma/Read/ReadVariableOp/batch_normalization_38/beta/Read/ReadVariableOp6batch_normalization_38/moving_mean/Read/ReadVariableOp:batch_normalization_38/moving_variance/Read/ReadVariableOp$conv2d_49/kernel/Read/ReadVariableOp"conv2d_49/bias/Read/ReadVariableOpConst*!
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
 __inference__traced_save_2254789
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_48/kerneldense_48/biasbatch_normalization_36/gammabatch_normalization_36/beta"batch_normalization_36/moving_mean&batch_normalization_36/moving_variancedense_49/kerneldense_49/biasbatch_normalization_37/gammabatch_normalization_37/beta"batch_normalization_37/moving_mean&batch_normalization_37/moving_varianceconv2d_48/kernelconv2d_48/biasbatch_normalization_38/gammabatch_normalization_38/beta"batch_normalization_38/moving_mean&batch_normalization_38/moving_varianceconv2d_49/kernelconv2d_49/bias* 
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
#__inference__traced_restore_2254859??
?4
?	
 __inference__traced_save_2254789
file_prefix.
*savev2_dense_48_kernel_read_readvariableop,
(savev2_dense_48_bias_read_readvariableop;
7savev2_batch_normalization_36_gamma_read_readvariableop:
6savev2_batch_normalization_36_beta_read_readvariableopA
=savev2_batch_normalization_36_moving_mean_read_readvariableopE
Asavev2_batch_normalization_36_moving_variance_read_readvariableop.
*savev2_dense_49_kernel_read_readvariableop,
(savev2_dense_49_bias_read_readvariableop;
7savev2_batch_normalization_37_gamma_read_readvariableop:
6savev2_batch_normalization_37_beta_read_readvariableopA
=savev2_batch_normalization_37_moving_mean_read_readvariableopE
Asavev2_batch_normalization_37_moving_variance_read_readvariableop/
+savev2_conv2d_48_kernel_read_readvariableop-
)savev2_conv2d_48_bias_read_readvariableop;
7savev2_batch_normalization_38_gamma_read_readvariableop:
6savev2_batch_normalization_38_beta_read_readvariableopA
=savev2_batch_normalization_38_moving_mean_read_readvariableopE
Asavev2_batch_normalization_38_moving_variance_read_readvariableop/
+savev2_conv2d_49_kernel_read_readvariableop-
)savev2_conv2d_49_bias_read_readvariableop
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

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_48_kernel_read_readvariableop(savev2_dense_48_bias_read_readvariableop7savev2_batch_normalization_36_gamma_read_readvariableop6savev2_batch_normalization_36_beta_read_readvariableop=savev2_batch_normalization_36_moving_mean_read_readvariableopAsavev2_batch_normalization_36_moving_variance_read_readvariableop*savev2_dense_49_kernel_read_readvariableop(savev2_dense_49_bias_read_readvariableop7savev2_batch_normalization_37_gamma_read_readvariableop6savev2_batch_normalization_37_beta_read_readvariableop=savev2_batch_normalization_37_moving_mean_read_readvariableopAsavev2_batch_normalization_37_moving_variance_read_readvariableop+savev2_conv2d_48_kernel_read_readvariableop)savev2_conv2d_48_bias_read_readvariableop7savev2_batch_normalization_38_gamma_read_readvariableop6savev2_batch_normalization_38_beta_read_readvariableop=savev2_batch_normalization_38_moving_mean_read_readvariableopAsavev2_batch_normalization_38_moving_variance_read_readvariableop+savev2_conv2d_49_kernel_read_readvariableop)savev2_conv2d_49_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
?
i
M__inference_up_sampling2d_24_layer_call_and_return_conditional_losses_2253298

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
?
H
,__inference_reshape_12_layer_call_fn_2254581

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
G__inference_reshape_12_layer_call_and_return_conditional_losses_22535342
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
?
?
8__inference_batch_normalization_36_layer_call_fn_2254403

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
S__inference_batch_normalization_36_layer_call_and_return_conditional_losses_22530452
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
?
?
/__inference_sequential_24_layer_call_fn_2253887
dense_48_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_48_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
J__inference_sequential_24_layer_call_and_return_conditional_losses_22537992
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
_user_specified_namedense_48_input
?
i
M__inference_up_sampling2d_25_layer_call_and_return_conditional_losses_2253443

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
?
?
8__inference_batch_normalization_38_layer_call_fn_2254640

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
S__inference_batch_normalization_38_layer_call_and_return_conditional_losses_22533702
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
S__inference_batch_normalization_36_layer_call_and_return_conditional_losses_2252985

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
?C
?	
J__inference_sequential_24_layer_call_and_return_conditional_losses_2253799

inputs#
dense_48_2253745:	d?
dense_48_2253747:	?-
batch_normalization_36_2253750:	?-
batch_normalization_36_2253752:	?-
batch_normalization_36_2253754:	?-
batch_normalization_36_2253756:	?$
dense_49_2253760:
??1
dense_49_2253762:	?1-
batch_normalization_37_2253765:	?1-
batch_normalization_37_2253767:	?1-
batch_normalization_37_2253769:	?1-
batch_normalization_37_2253771:	?1,
conv2d_48_2253777:?@
conv2d_48_2253779:@,
batch_normalization_38_2253782:@,
batch_normalization_38_2253784:@,
batch_normalization_38_2253786:@,
batch_normalization_38_2253788:@+
conv2d_49_2253793:@
conv2d_49_2253795:
identity??.batch_normalization_36/StatefulPartitionedCall?.batch_normalization_37/StatefulPartitionedCall?.batch_normalization_38/StatefulPartitionedCall?!conv2d_48/StatefulPartitionedCall?!conv2d_49/StatefulPartitionedCall? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCallinputsdense_48_2253745dense_48_2253747*
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
E__inference_dense_48_layer_call_and_return_conditional_losses_22534662"
 dense_48/StatefulPartitionedCall?
.batch_normalization_36/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0batch_normalization_36_2253750batch_normalization_36_2253752batch_normalization_36_2253754batch_normalization_36_2253756*
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
S__inference_batch_normalization_36_layer_call_and_return_conditional_losses_225304520
.batch_normalization_36/StatefulPartitionedCall?
activation_24/PartitionedCallPartitionedCall7batch_normalization_36/StatefulPartitionedCall:output:0*
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
J__inference_activation_24_layer_call_and_return_conditional_losses_22534862
activation_24/PartitionedCall?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0dense_49_2253760dense_49_2253762*
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
E__inference_dense_49_layer_call_and_return_conditional_losses_22534982"
 dense_49/StatefulPartitionedCall?
.batch_normalization_37/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0batch_normalization_37_2253765batch_normalization_37_2253767batch_normalization_37_2253769batch_normalization_37_2253771*
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
S__inference_batch_normalization_37_layer_call_and_return_conditional_losses_225320720
.batch_normalization_37/StatefulPartitionedCall?
activation_25/PartitionedCallPartitionedCall7batch_normalization_37/StatefulPartitionedCall:output:0*
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
J__inference_activation_25_layer_call_and_return_conditional_losses_22535182
activation_25/PartitionedCall?
reshape_12/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
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
G__inference_reshape_12_layer_call_and_return_conditional_losses_22535342
reshape_12/PartitionedCall?
 up_sampling2d_24/PartitionedCallPartitionedCall#reshape_12/PartitionedCall:output:0*
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
M__inference_up_sampling2d_24_layer_call_and_return_conditional_losses_22532982"
 up_sampling2d_24/PartitionedCall?
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_24/PartitionedCall:output:0conv2d_48_2253777conv2d_48_2253779*
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
F__inference_conv2d_48_layer_call_and_return_conditional_losses_22535472#
!conv2d_48/StatefulPartitionedCall?
.batch_normalization_38/StatefulPartitionedCallStatefulPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0batch_normalization_38_2253782batch_normalization_38_2253784batch_normalization_38_2253786batch_normalization_38_2253788*
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
S__inference_batch_normalization_38_layer_call_and_return_conditional_losses_225337020
.batch_normalization_38/StatefulPartitionedCall?
leaky_re_lu_48/PartitionedCallPartitionedCall7batch_normalization_38/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_48_layer_call_and_return_conditional_losses_22535672 
leaky_re_lu_48/PartitionedCall?
 up_sampling2d_25/PartitionedCallPartitionedCall'leaky_re_lu_48/PartitionedCall:output:0*
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
M__inference_up_sampling2d_25_layer_call_and_return_conditional_losses_22534432"
 up_sampling2d_25/PartitionedCall?
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_25/PartitionedCall:output:0conv2d_49_2253793conv2d_49_2253795*
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
F__inference_conv2d_49_layer_call_and_return_conditional_losses_22535812#
!conv2d_49/StatefulPartitionedCall?
IdentityIdentity*conv2d_49/StatefulPartitionedCall:output:0/^batch_normalization_36/StatefulPartitionedCall/^batch_normalization_37/StatefulPartitionedCall/^batch_normalization_38/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_36/StatefulPartitionedCall.batch_normalization_36/StatefulPartitionedCall2`
.batch_normalization_37/StatefulPartitionedCall.batch_normalization_37/StatefulPartitionedCall2`
.batch_normalization_38/StatefulPartitionedCall.batch_normalization_38/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
F__inference_conv2d_48_layer_call_and_return_conditional_losses_2253547

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
?
?
8__inference_batch_normalization_37_layer_call_fn_2254499

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
S__inference_batch_normalization_37_layer_call_and_return_conditional_losses_22531472
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
?
?
*__inference_dense_48_layer_call_fn_2254367

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
E__inference_dense_48_layer_call_and_return_conditional_losses_22534662
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
?	
?
E__inference_dense_48_layer_call_and_return_conditional_losses_2253466

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
8__inference_batch_normalization_38_layer_call_fn_2254627

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
S__inference_batch_normalization_38_layer_call_and_return_conditional_losses_22533262
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
?
E__inference_dense_49_layer_call_and_return_conditional_losses_2254486

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
?
c
G__inference_reshape_12_layer_call_and_return_conditional_losses_2253534

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
?C
?	
J__inference_sequential_24_layer_call_and_return_conditional_losses_2254001
dense_48_input#
dense_48_2253947:	d?
dense_48_2253949:	?-
batch_normalization_36_2253952:	?-
batch_normalization_36_2253954:	?-
batch_normalization_36_2253956:	?-
batch_normalization_36_2253958:	?$
dense_49_2253962:
??1
dense_49_2253964:	?1-
batch_normalization_37_2253967:	?1-
batch_normalization_37_2253969:	?1-
batch_normalization_37_2253971:	?1-
batch_normalization_37_2253973:	?1,
conv2d_48_2253979:?@
conv2d_48_2253981:@,
batch_normalization_38_2253984:@,
batch_normalization_38_2253986:@,
batch_normalization_38_2253988:@,
batch_normalization_38_2253990:@+
conv2d_49_2253995:@
conv2d_49_2253997:
identity??.batch_normalization_36/StatefulPartitionedCall?.batch_normalization_37/StatefulPartitionedCall?.batch_normalization_38/StatefulPartitionedCall?!conv2d_48/StatefulPartitionedCall?!conv2d_49/StatefulPartitionedCall? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCalldense_48_inputdense_48_2253947dense_48_2253949*
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
E__inference_dense_48_layer_call_and_return_conditional_losses_22534662"
 dense_48/StatefulPartitionedCall?
.batch_normalization_36/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0batch_normalization_36_2253952batch_normalization_36_2253954batch_normalization_36_2253956batch_normalization_36_2253958*
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
S__inference_batch_normalization_36_layer_call_and_return_conditional_losses_225304520
.batch_normalization_36/StatefulPartitionedCall?
activation_24/PartitionedCallPartitionedCall7batch_normalization_36/StatefulPartitionedCall:output:0*
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
J__inference_activation_24_layer_call_and_return_conditional_losses_22534862
activation_24/PartitionedCall?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0dense_49_2253962dense_49_2253964*
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
E__inference_dense_49_layer_call_and_return_conditional_losses_22534982"
 dense_49/StatefulPartitionedCall?
.batch_normalization_37/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0batch_normalization_37_2253967batch_normalization_37_2253969batch_normalization_37_2253971batch_normalization_37_2253973*
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
S__inference_batch_normalization_37_layer_call_and_return_conditional_losses_225320720
.batch_normalization_37/StatefulPartitionedCall?
activation_25/PartitionedCallPartitionedCall7batch_normalization_37/StatefulPartitionedCall:output:0*
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
J__inference_activation_25_layer_call_and_return_conditional_losses_22535182
activation_25/PartitionedCall?
reshape_12/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
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
G__inference_reshape_12_layer_call_and_return_conditional_losses_22535342
reshape_12/PartitionedCall?
 up_sampling2d_24/PartitionedCallPartitionedCall#reshape_12/PartitionedCall:output:0*
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
M__inference_up_sampling2d_24_layer_call_and_return_conditional_losses_22532982"
 up_sampling2d_24/PartitionedCall?
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_24/PartitionedCall:output:0conv2d_48_2253979conv2d_48_2253981*
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
F__inference_conv2d_48_layer_call_and_return_conditional_losses_22535472#
!conv2d_48/StatefulPartitionedCall?
.batch_normalization_38/StatefulPartitionedCallStatefulPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0batch_normalization_38_2253984batch_normalization_38_2253986batch_normalization_38_2253988batch_normalization_38_2253990*
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
S__inference_batch_normalization_38_layer_call_and_return_conditional_losses_225337020
.batch_normalization_38/StatefulPartitionedCall?
leaky_re_lu_48/PartitionedCallPartitionedCall7batch_normalization_38/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_48_layer_call_and_return_conditional_losses_22535672 
leaky_re_lu_48/PartitionedCall?
 up_sampling2d_25/PartitionedCallPartitionedCall'leaky_re_lu_48/PartitionedCall:output:0*
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
M__inference_up_sampling2d_25_layer_call_and_return_conditional_losses_22534432"
 up_sampling2d_25/PartitionedCall?
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_25/PartitionedCall:output:0conv2d_49_2253995conv2d_49_2253997*
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
F__inference_conv2d_49_layer_call_and_return_conditional_losses_22535812#
!conv2d_49/StatefulPartitionedCall?
IdentityIdentity*conv2d_49/StatefulPartitionedCall:output:0/^batch_normalization_36/StatefulPartitionedCall/^batch_normalization_37/StatefulPartitionedCall/^batch_normalization_38/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_36/StatefulPartitionedCall.batch_normalization_36/StatefulPartitionedCall2`
.batch_normalization_37/StatefulPartitionedCall.batch_normalization_37/StatefulPartitionedCall2`
.batch_normalization_38/StatefulPartitionedCall.batch_normalization_38/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_48_input
?
f
J__inference_activation_25_layer_call_and_return_conditional_losses_2254576

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
J__inference_activation_24_layer_call_and_return_conditional_losses_2254467

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
??
?
"__inference__wrapped_model_2252961
dense_48_inputH
5sequential_24_dense_48_matmul_readvariableop_resource:	d?E
6sequential_24_dense_48_biasadd_readvariableop_resource:	?U
Fsequential_24_batch_normalization_36_batchnorm_readvariableop_resource:	?Y
Jsequential_24_batch_normalization_36_batchnorm_mul_readvariableop_resource:	?W
Hsequential_24_batch_normalization_36_batchnorm_readvariableop_1_resource:	?W
Hsequential_24_batch_normalization_36_batchnorm_readvariableop_2_resource:	?I
5sequential_24_dense_49_matmul_readvariableop_resource:
??1E
6sequential_24_dense_49_biasadd_readvariableop_resource:	?1U
Fsequential_24_batch_normalization_37_batchnorm_readvariableop_resource:	?1Y
Jsequential_24_batch_normalization_37_batchnorm_mul_readvariableop_resource:	?1W
Hsequential_24_batch_normalization_37_batchnorm_readvariableop_1_resource:	?1W
Hsequential_24_batch_normalization_37_batchnorm_readvariableop_2_resource:	?1Q
6sequential_24_conv2d_48_conv2d_readvariableop_resource:?@E
7sequential_24_conv2d_48_biasadd_readvariableop_resource:@J
<sequential_24_batch_normalization_38_readvariableop_resource:@L
>sequential_24_batch_normalization_38_readvariableop_1_resource:@[
Msequential_24_batch_normalization_38_fusedbatchnormv3_readvariableop_resource:@]
Osequential_24_batch_normalization_38_fusedbatchnormv3_readvariableop_1_resource:@P
6sequential_24_conv2d_49_conv2d_readvariableop_resource:@E
7sequential_24_conv2d_49_biasadd_readvariableop_resource:
identity??=sequential_24/batch_normalization_36/batchnorm/ReadVariableOp??sequential_24/batch_normalization_36/batchnorm/ReadVariableOp_1??sequential_24/batch_normalization_36/batchnorm/ReadVariableOp_2?Asequential_24/batch_normalization_36/batchnorm/mul/ReadVariableOp?=sequential_24/batch_normalization_37/batchnorm/ReadVariableOp??sequential_24/batch_normalization_37/batchnorm/ReadVariableOp_1??sequential_24/batch_normalization_37/batchnorm/ReadVariableOp_2?Asequential_24/batch_normalization_37/batchnorm/mul/ReadVariableOp?Dsequential_24/batch_normalization_38/FusedBatchNormV3/ReadVariableOp?Fsequential_24/batch_normalization_38/FusedBatchNormV3/ReadVariableOp_1?3sequential_24/batch_normalization_38/ReadVariableOp?5sequential_24/batch_normalization_38/ReadVariableOp_1?.sequential_24/conv2d_48/BiasAdd/ReadVariableOp?-sequential_24/conv2d_48/Conv2D/ReadVariableOp?.sequential_24/conv2d_49/BiasAdd/ReadVariableOp?-sequential_24/conv2d_49/Conv2D/ReadVariableOp?-sequential_24/dense_48/BiasAdd/ReadVariableOp?,sequential_24/dense_48/MatMul/ReadVariableOp?-sequential_24/dense_49/BiasAdd/ReadVariableOp?,sequential_24/dense_49/MatMul/ReadVariableOp?
,sequential_24/dense_48/MatMul/ReadVariableOpReadVariableOp5sequential_24_dense_48_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02.
,sequential_24/dense_48/MatMul/ReadVariableOp?
sequential_24/dense_48/MatMulMatMuldense_48_input4sequential_24/dense_48/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_24/dense_48/MatMul?
-sequential_24/dense_48/BiasAdd/ReadVariableOpReadVariableOp6sequential_24_dense_48_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_24/dense_48/BiasAdd/ReadVariableOp?
sequential_24/dense_48/BiasAddBiasAdd'sequential_24/dense_48/MatMul:product:05sequential_24/dense_48/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_24/dense_48/BiasAdd?
=sequential_24/batch_normalization_36/batchnorm/ReadVariableOpReadVariableOpFsequential_24_batch_normalization_36_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=sequential_24/batch_normalization_36/batchnorm/ReadVariableOp?
4sequential_24/batch_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_24/batch_normalization_36/batchnorm/add/y?
2sequential_24/batch_normalization_36/batchnorm/addAddV2Esequential_24/batch_normalization_36/batchnorm/ReadVariableOp:value:0=sequential_24/batch_normalization_36/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?24
2sequential_24/batch_normalization_36/batchnorm/add?
4sequential_24/batch_normalization_36/batchnorm/RsqrtRsqrt6sequential_24/batch_normalization_36/batchnorm/add:z:0*
T0*
_output_shapes	
:?26
4sequential_24/batch_normalization_36/batchnorm/Rsqrt?
Asequential_24/batch_normalization_36/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_24_batch_normalization_36_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Asequential_24/batch_normalization_36/batchnorm/mul/ReadVariableOp?
2sequential_24/batch_normalization_36/batchnorm/mulMul8sequential_24/batch_normalization_36/batchnorm/Rsqrt:y:0Isequential_24/batch_normalization_36/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?24
2sequential_24/batch_normalization_36/batchnorm/mul?
4sequential_24/batch_normalization_36/batchnorm/mul_1Mul'sequential_24/dense_48/BiasAdd:output:06sequential_24/batch_normalization_36/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????26
4sequential_24/batch_normalization_36/batchnorm/mul_1?
?sequential_24/batch_normalization_36/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_24_batch_normalization_36_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?sequential_24/batch_normalization_36/batchnorm/ReadVariableOp_1?
4sequential_24/batch_normalization_36/batchnorm/mul_2MulGsequential_24/batch_normalization_36/batchnorm/ReadVariableOp_1:value:06sequential_24/batch_normalization_36/batchnorm/mul:z:0*
T0*
_output_shapes	
:?26
4sequential_24/batch_normalization_36/batchnorm/mul_2?
?sequential_24/batch_normalization_36/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_24_batch_normalization_36_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02A
?sequential_24/batch_normalization_36/batchnorm/ReadVariableOp_2?
2sequential_24/batch_normalization_36/batchnorm/subSubGsequential_24/batch_normalization_36/batchnorm/ReadVariableOp_2:value:08sequential_24/batch_normalization_36/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?24
2sequential_24/batch_normalization_36/batchnorm/sub?
4sequential_24/batch_normalization_36/batchnorm/add_1AddV28sequential_24/batch_normalization_36/batchnorm/mul_1:z:06sequential_24/batch_normalization_36/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????26
4sequential_24/batch_normalization_36/batchnorm/add_1?
 sequential_24/activation_24/ReluRelu8sequential_24/batch_normalization_36/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2"
 sequential_24/activation_24/Relu?
,sequential_24/dense_49/MatMul/ReadVariableOpReadVariableOp5sequential_24_dense_49_matmul_readvariableop_resource* 
_output_shapes
:
??1*
dtype02.
,sequential_24/dense_49/MatMul/ReadVariableOp?
sequential_24/dense_49/MatMulMatMul.sequential_24/activation_24/Relu:activations:04sequential_24/dense_49/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
sequential_24/dense_49/MatMul?
-sequential_24/dense_49/BiasAdd/ReadVariableOpReadVariableOp6sequential_24_dense_49_biasadd_readvariableop_resource*
_output_shapes	
:?1*
dtype02/
-sequential_24/dense_49/BiasAdd/ReadVariableOp?
sequential_24/dense_49/BiasAddBiasAdd'sequential_24/dense_49/MatMul:product:05sequential_24/dense_49/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12 
sequential_24/dense_49/BiasAdd?
=sequential_24/batch_normalization_37/batchnorm/ReadVariableOpReadVariableOpFsequential_24_batch_normalization_37_batchnorm_readvariableop_resource*
_output_shapes	
:?1*
dtype02?
=sequential_24/batch_normalization_37/batchnorm/ReadVariableOp?
4sequential_24/batch_normalization_37/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_24/batch_normalization_37/batchnorm/add/y?
2sequential_24/batch_normalization_37/batchnorm/addAddV2Esequential_24/batch_normalization_37/batchnorm/ReadVariableOp:value:0=sequential_24/batch_normalization_37/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?124
2sequential_24/batch_normalization_37/batchnorm/add?
4sequential_24/batch_normalization_37/batchnorm/RsqrtRsqrt6sequential_24/batch_normalization_37/batchnorm/add:z:0*
T0*
_output_shapes	
:?126
4sequential_24/batch_normalization_37/batchnorm/Rsqrt?
Asequential_24/batch_normalization_37/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_24_batch_normalization_37_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?1*
dtype02C
Asequential_24/batch_normalization_37/batchnorm/mul/ReadVariableOp?
2sequential_24/batch_normalization_37/batchnorm/mulMul8sequential_24/batch_normalization_37/batchnorm/Rsqrt:y:0Isequential_24/batch_normalization_37/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?124
2sequential_24/batch_normalization_37/batchnorm/mul?
4sequential_24/batch_normalization_37/batchnorm/mul_1Mul'sequential_24/dense_49/BiasAdd:output:06sequential_24/batch_normalization_37/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????126
4sequential_24/batch_normalization_37/batchnorm/mul_1?
?sequential_24/batch_normalization_37/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_24_batch_normalization_37_batchnorm_readvariableop_1_resource*
_output_shapes	
:?1*
dtype02A
?sequential_24/batch_normalization_37/batchnorm/ReadVariableOp_1?
4sequential_24/batch_normalization_37/batchnorm/mul_2MulGsequential_24/batch_normalization_37/batchnorm/ReadVariableOp_1:value:06sequential_24/batch_normalization_37/batchnorm/mul:z:0*
T0*
_output_shapes	
:?126
4sequential_24/batch_normalization_37/batchnorm/mul_2?
?sequential_24/batch_normalization_37/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_24_batch_normalization_37_batchnorm_readvariableop_2_resource*
_output_shapes	
:?1*
dtype02A
?sequential_24/batch_normalization_37/batchnorm/ReadVariableOp_2?
2sequential_24/batch_normalization_37/batchnorm/subSubGsequential_24/batch_normalization_37/batchnorm/ReadVariableOp_2:value:08sequential_24/batch_normalization_37/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?124
2sequential_24/batch_normalization_37/batchnorm/sub?
4sequential_24/batch_normalization_37/batchnorm/add_1AddV28sequential_24/batch_normalization_37/batchnorm/mul_1:z:06sequential_24/batch_normalization_37/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????126
4sequential_24/batch_normalization_37/batchnorm/add_1?
 sequential_24/activation_25/ReluRelu8sequential_24/batch_normalization_37/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????12"
 sequential_24/activation_25/Relu?
sequential_24/reshape_12/ShapeShape.sequential_24/activation_25/Relu:activations:0*
T0*
_output_shapes
:2 
sequential_24/reshape_12/Shape?
,sequential_24/reshape_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_24/reshape_12/strided_slice/stack?
.sequential_24/reshape_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_24/reshape_12/strided_slice/stack_1?
.sequential_24/reshape_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_24/reshape_12/strided_slice/stack_2?
&sequential_24/reshape_12/strided_sliceStridedSlice'sequential_24/reshape_12/Shape:output:05sequential_24/reshape_12/strided_slice/stack:output:07sequential_24/reshape_12/strided_slice/stack_1:output:07sequential_24/reshape_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_24/reshape_12/strided_slice?
(sequential_24/reshape_12/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_24/reshape_12/Reshape/shape/1?
(sequential_24/reshape_12/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_24/reshape_12/Reshape/shape/2?
(sequential_24/reshape_12/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2*
(sequential_24/reshape_12/Reshape/shape/3?
&sequential_24/reshape_12/Reshape/shapePack/sequential_24/reshape_12/strided_slice:output:01sequential_24/reshape_12/Reshape/shape/1:output:01sequential_24/reshape_12/Reshape/shape/2:output:01sequential_24/reshape_12/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_24/reshape_12/Reshape/shape?
 sequential_24/reshape_12/ReshapeReshape.sequential_24/activation_25/Relu:activations:0/sequential_24/reshape_12/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2"
 sequential_24/reshape_12/Reshape?
$sequential_24/up_sampling2d_24/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_24/up_sampling2d_24/Const?
&sequential_24/up_sampling2d_24/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&sequential_24/up_sampling2d_24/Const_1?
"sequential_24/up_sampling2d_24/mulMul-sequential_24/up_sampling2d_24/Const:output:0/sequential_24/up_sampling2d_24/Const_1:output:0*
T0*
_output_shapes
:2$
"sequential_24/up_sampling2d_24/mul?
;sequential_24/up_sampling2d_24/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_24/reshape_12/Reshape:output:0&sequential_24/up_sampling2d_24/mul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(2=
;sequential_24/up_sampling2d_24/resize/ResizeNearestNeighbor?
-sequential_24/conv2d_48/Conv2D/ReadVariableOpReadVariableOp6sequential_24_conv2d_48_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02/
-sequential_24/conv2d_48/Conv2D/ReadVariableOp?
sequential_24/conv2d_48/Conv2DConv2DLsequential_24/up_sampling2d_24/resize/ResizeNearestNeighbor:resized_images:05sequential_24/conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2 
sequential_24/conv2d_48/Conv2D?
.sequential_24/conv2d_48/BiasAdd/ReadVariableOpReadVariableOp7sequential_24_conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_24/conv2d_48/BiasAdd/ReadVariableOp?
sequential_24/conv2d_48/BiasAddBiasAdd'sequential_24/conv2d_48/Conv2D:output:06sequential_24/conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2!
sequential_24/conv2d_48/BiasAdd?
3sequential_24/batch_normalization_38/ReadVariableOpReadVariableOp<sequential_24_batch_normalization_38_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_24/batch_normalization_38/ReadVariableOp?
5sequential_24/batch_normalization_38/ReadVariableOp_1ReadVariableOp>sequential_24_batch_normalization_38_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_24/batch_normalization_38/ReadVariableOp_1?
Dsequential_24/batch_normalization_38/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_24_batch_normalization_38_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_24/batch_normalization_38/FusedBatchNormV3/ReadVariableOp?
Fsequential_24/batch_normalization_38/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_24_batch_normalization_38_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_24/batch_normalization_38/FusedBatchNormV3/ReadVariableOp_1?
5sequential_24/batch_normalization_38/FusedBatchNormV3FusedBatchNormV3(sequential_24/conv2d_48/BiasAdd:output:0;sequential_24/batch_normalization_38/ReadVariableOp:value:0=sequential_24/batch_normalization_38/ReadVariableOp_1:value:0Lsequential_24/batch_normalization_38/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_24/batch_normalization_38/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5sequential_24/batch_normalization_38/FusedBatchNormV3?
&sequential_24/leaky_re_lu_48/LeakyRelu	LeakyRelu9sequential_24/batch_normalization_38/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@2(
&sequential_24/leaky_re_lu_48/LeakyRelu?
$sequential_24/up_sampling2d_25/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_24/up_sampling2d_25/Const?
&sequential_24/up_sampling2d_25/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&sequential_24/up_sampling2d_25/Const_1?
"sequential_24/up_sampling2d_25/mulMul-sequential_24/up_sampling2d_25/Const:output:0/sequential_24/up_sampling2d_25/Const_1:output:0*
T0*
_output_shapes
:2$
"sequential_24/up_sampling2d_25/mul?
;sequential_24/up_sampling2d_25/resize/ResizeNearestNeighborResizeNearestNeighbor4sequential_24/leaky_re_lu_48/LeakyRelu:activations:0&sequential_24/up_sampling2d_25/mul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(2=
;sequential_24/up_sampling2d_25/resize/ResizeNearestNeighbor?
-sequential_24/conv2d_49/Conv2D/ReadVariableOpReadVariableOp6sequential_24_conv2d_49_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02/
-sequential_24/conv2d_49/Conv2D/ReadVariableOp?
sequential_24/conv2d_49/Conv2DConv2DLsequential_24/up_sampling2d_25/resize/ResizeNearestNeighbor:resized_images:05sequential_24/conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2 
sequential_24/conv2d_49/Conv2D?
.sequential_24/conv2d_49/BiasAdd/ReadVariableOpReadVariableOp7sequential_24_conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_24/conv2d_49/BiasAdd/ReadVariableOp?
sequential_24/conv2d_49/BiasAddBiasAdd'sequential_24/conv2d_49/Conv2D:output:06sequential_24/conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2!
sequential_24/conv2d_49/BiasAdd?
sequential_24/conv2d_49/TanhTanh(sequential_24/conv2d_49/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
sequential_24/conv2d_49/Tanh?

IdentityIdentity sequential_24/conv2d_49/Tanh:y:0>^sequential_24/batch_normalization_36/batchnorm/ReadVariableOp@^sequential_24/batch_normalization_36/batchnorm/ReadVariableOp_1@^sequential_24/batch_normalization_36/batchnorm/ReadVariableOp_2B^sequential_24/batch_normalization_36/batchnorm/mul/ReadVariableOp>^sequential_24/batch_normalization_37/batchnorm/ReadVariableOp@^sequential_24/batch_normalization_37/batchnorm/ReadVariableOp_1@^sequential_24/batch_normalization_37/batchnorm/ReadVariableOp_2B^sequential_24/batch_normalization_37/batchnorm/mul/ReadVariableOpE^sequential_24/batch_normalization_38/FusedBatchNormV3/ReadVariableOpG^sequential_24/batch_normalization_38/FusedBatchNormV3/ReadVariableOp_14^sequential_24/batch_normalization_38/ReadVariableOp6^sequential_24/batch_normalization_38/ReadVariableOp_1/^sequential_24/conv2d_48/BiasAdd/ReadVariableOp.^sequential_24/conv2d_48/Conv2D/ReadVariableOp/^sequential_24/conv2d_49/BiasAdd/ReadVariableOp.^sequential_24/conv2d_49/Conv2D/ReadVariableOp.^sequential_24/dense_48/BiasAdd/ReadVariableOp-^sequential_24/dense_48/MatMul/ReadVariableOp.^sequential_24/dense_49/BiasAdd/ReadVariableOp-^sequential_24/dense_49/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2~
=sequential_24/batch_normalization_36/batchnorm/ReadVariableOp=sequential_24/batch_normalization_36/batchnorm/ReadVariableOp2?
?sequential_24/batch_normalization_36/batchnorm/ReadVariableOp_1?sequential_24/batch_normalization_36/batchnorm/ReadVariableOp_12?
?sequential_24/batch_normalization_36/batchnorm/ReadVariableOp_2?sequential_24/batch_normalization_36/batchnorm/ReadVariableOp_22?
Asequential_24/batch_normalization_36/batchnorm/mul/ReadVariableOpAsequential_24/batch_normalization_36/batchnorm/mul/ReadVariableOp2~
=sequential_24/batch_normalization_37/batchnorm/ReadVariableOp=sequential_24/batch_normalization_37/batchnorm/ReadVariableOp2?
?sequential_24/batch_normalization_37/batchnorm/ReadVariableOp_1?sequential_24/batch_normalization_37/batchnorm/ReadVariableOp_12?
?sequential_24/batch_normalization_37/batchnorm/ReadVariableOp_2?sequential_24/batch_normalization_37/batchnorm/ReadVariableOp_22?
Asequential_24/batch_normalization_37/batchnorm/mul/ReadVariableOpAsequential_24/batch_normalization_37/batchnorm/mul/ReadVariableOp2?
Dsequential_24/batch_normalization_38/FusedBatchNormV3/ReadVariableOpDsequential_24/batch_normalization_38/FusedBatchNormV3/ReadVariableOp2?
Fsequential_24/batch_normalization_38/FusedBatchNormV3/ReadVariableOp_1Fsequential_24/batch_normalization_38/FusedBatchNormV3/ReadVariableOp_12j
3sequential_24/batch_normalization_38/ReadVariableOp3sequential_24/batch_normalization_38/ReadVariableOp2n
5sequential_24/batch_normalization_38/ReadVariableOp_15sequential_24/batch_normalization_38/ReadVariableOp_12`
.sequential_24/conv2d_48/BiasAdd/ReadVariableOp.sequential_24/conv2d_48/BiasAdd/ReadVariableOp2^
-sequential_24/conv2d_48/Conv2D/ReadVariableOp-sequential_24/conv2d_48/Conv2D/ReadVariableOp2`
.sequential_24/conv2d_49/BiasAdd/ReadVariableOp.sequential_24/conv2d_49/BiasAdd/ReadVariableOp2^
-sequential_24/conv2d_49/Conv2D/ReadVariableOp-sequential_24/conv2d_49/Conv2D/ReadVariableOp2^
-sequential_24/dense_48/BiasAdd/ReadVariableOp-sequential_24/dense_48/BiasAdd/ReadVariableOp2\
,sequential_24/dense_48/MatMul/ReadVariableOp,sequential_24/dense_48/MatMul/ReadVariableOp2^
-sequential_24/dense_49/BiasAdd/ReadVariableOp-sequential_24/dense_49/BiasAdd/ReadVariableOp2\
,sequential_24/dense_49/MatMul/ReadVariableOp,sequential_24/dense_49/MatMul/ReadVariableOp:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_48_input
?
?
F__inference_conv2d_49_layer_call_and_return_conditional_losses_2253581

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
?*
?
S__inference_batch_normalization_37_layer_call_and_return_conditional_losses_2253207

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
J__inference_activation_24_layer_call_and_return_conditional_losses_2253486

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
?
f
J__inference_activation_25_layer_call_and_return_conditional_losses_2253518

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
?
K
/__inference_activation_25_layer_call_fn_2254571

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
J__inference_activation_25_layer_call_and_return_conditional_losses_22535182
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
?
c
G__inference_reshape_12_layer_call_and_return_conditional_losses_2254595

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
?
?
S__inference_batch_normalization_37_layer_call_and_return_conditional_losses_2253147

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
?
E__inference_dense_48_layer_call_and_return_conditional_losses_2254377

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
?
%__inference_signature_wrapper_2254048
dense_48_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_48_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_22529612
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
_user_specified_namedense_48_input
?
g
K__inference_leaky_re_lu_48_layer_call_and_return_conditional_losses_2254686

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
8__inference_batch_normalization_36_layer_call_fn_2254390

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
S__inference_batch_normalization_36_layer_call_and_return_conditional_losses_22529852
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
J__inference_sequential_24_layer_call_and_return_conditional_losses_2253588

inputs#
dense_48_2253467:	d?
dense_48_2253469:	?-
batch_normalization_36_2253472:	?-
batch_normalization_36_2253474:	?-
batch_normalization_36_2253476:	?-
batch_normalization_36_2253478:	?$
dense_49_2253499:
??1
dense_49_2253501:	?1-
batch_normalization_37_2253504:	?1-
batch_normalization_37_2253506:	?1-
batch_normalization_37_2253508:	?1-
batch_normalization_37_2253510:	?1,
conv2d_48_2253548:?@
conv2d_48_2253550:@,
batch_normalization_38_2253553:@,
batch_normalization_38_2253555:@,
batch_normalization_38_2253557:@,
batch_normalization_38_2253559:@+
conv2d_49_2253582:@
conv2d_49_2253584:
identity??.batch_normalization_36/StatefulPartitionedCall?.batch_normalization_37/StatefulPartitionedCall?.batch_normalization_38/StatefulPartitionedCall?!conv2d_48/StatefulPartitionedCall?!conv2d_49/StatefulPartitionedCall? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCallinputsdense_48_2253467dense_48_2253469*
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
E__inference_dense_48_layer_call_and_return_conditional_losses_22534662"
 dense_48/StatefulPartitionedCall?
.batch_normalization_36/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0batch_normalization_36_2253472batch_normalization_36_2253474batch_normalization_36_2253476batch_normalization_36_2253478*
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
S__inference_batch_normalization_36_layer_call_and_return_conditional_losses_225298520
.batch_normalization_36/StatefulPartitionedCall?
activation_24/PartitionedCallPartitionedCall7batch_normalization_36/StatefulPartitionedCall:output:0*
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
J__inference_activation_24_layer_call_and_return_conditional_losses_22534862
activation_24/PartitionedCall?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0dense_49_2253499dense_49_2253501*
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
E__inference_dense_49_layer_call_and_return_conditional_losses_22534982"
 dense_49/StatefulPartitionedCall?
.batch_normalization_37/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0batch_normalization_37_2253504batch_normalization_37_2253506batch_normalization_37_2253508batch_normalization_37_2253510*
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
S__inference_batch_normalization_37_layer_call_and_return_conditional_losses_225314720
.batch_normalization_37/StatefulPartitionedCall?
activation_25/PartitionedCallPartitionedCall7batch_normalization_37/StatefulPartitionedCall:output:0*
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
J__inference_activation_25_layer_call_and_return_conditional_losses_22535182
activation_25/PartitionedCall?
reshape_12/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
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
G__inference_reshape_12_layer_call_and_return_conditional_losses_22535342
reshape_12/PartitionedCall?
 up_sampling2d_24/PartitionedCallPartitionedCall#reshape_12/PartitionedCall:output:0*
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
M__inference_up_sampling2d_24_layer_call_and_return_conditional_losses_22532982"
 up_sampling2d_24/PartitionedCall?
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_24/PartitionedCall:output:0conv2d_48_2253548conv2d_48_2253550*
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
F__inference_conv2d_48_layer_call_and_return_conditional_losses_22535472#
!conv2d_48/StatefulPartitionedCall?
.batch_normalization_38/StatefulPartitionedCallStatefulPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0batch_normalization_38_2253553batch_normalization_38_2253555batch_normalization_38_2253557batch_normalization_38_2253559*
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
S__inference_batch_normalization_38_layer_call_and_return_conditional_losses_225332620
.batch_normalization_38/StatefulPartitionedCall?
leaky_re_lu_48/PartitionedCallPartitionedCall7batch_normalization_38/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_48_layer_call_and_return_conditional_losses_22535672 
leaky_re_lu_48/PartitionedCall?
 up_sampling2d_25/PartitionedCallPartitionedCall'leaky_re_lu_48/PartitionedCall:output:0*
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
M__inference_up_sampling2d_25_layer_call_and_return_conditional_losses_22534432"
 up_sampling2d_25/PartitionedCall?
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_25/PartitionedCall:output:0conv2d_49_2253582conv2d_49_2253584*
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
F__inference_conv2d_49_layer_call_and_return_conditional_losses_22535812#
!conv2d_49/StatefulPartitionedCall?
IdentityIdentity*conv2d_49/StatefulPartitionedCall:output:0/^batch_normalization_36/StatefulPartitionedCall/^batch_normalization_37/StatefulPartitionedCall/^batch_normalization_38/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_36/StatefulPartitionedCall.batch_normalization_36/StatefulPartitionedCall2`
.batch_normalization_37/StatefulPartitionedCall.batch_normalization_37/StatefulPartitionedCall2`
.batch_normalization_38/StatefulPartitionedCall.batch_normalization_38/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
N
2__inference_up_sampling2d_24_layer_call_fn_2253304

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
M__inference_up_sampling2d_24_layer_call_and_return_conditional_losses_22532982
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
?Y
?
#__inference__traced_restore_2254859
file_prefix3
 assignvariableop_dense_48_kernel:	d?/
 assignvariableop_1_dense_48_bias:	?>
/assignvariableop_2_batch_normalization_36_gamma:	?=
.assignvariableop_3_batch_normalization_36_beta:	?D
5assignvariableop_4_batch_normalization_36_moving_mean:	?H
9assignvariableop_5_batch_normalization_36_moving_variance:	?6
"assignvariableop_6_dense_49_kernel:
??1/
 assignvariableop_7_dense_49_bias:	?1>
/assignvariableop_8_batch_normalization_37_gamma:	?1=
.assignvariableop_9_batch_normalization_37_beta:	?1E
6assignvariableop_10_batch_normalization_37_moving_mean:	?1I
:assignvariableop_11_batch_normalization_37_moving_variance:	?1?
$assignvariableop_12_conv2d_48_kernel:?@0
"assignvariableop_13_conv2d_48_bias:@>
0assignvariableop_14_batch_normalization_38_gamma:@=
/assignvariableop_15_batch_normalization_38_beta:@D
6assignvariableop_16_batch_normalization_38_moving_mean:@H
:assignvariableop_17_batch_normalization_38_moving_variance:@>
$assignvariableop_18_conv2d_49_kernel:@0
"assignvariableop_19_conv2d_49_bias:
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
AssignVariableOpAssignVariableOp assignvariableop_dense_48_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_48_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_36_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_36_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_36_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_36_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_49_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_49_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_37_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_37_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_37_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_37_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_48_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_48_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_38_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_38_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_38_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_38_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_49_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_49_biasIdentity_19:output:0"/device:CPU:0*
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
?
?
S__inference_batch_normalization_38_layer_call_and_return_conditional_losses_2254676

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
?
?
*__inference_dense_49_layer_call_fn_2254476

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
E__inference_dense_49_layer_call_and_return_conditional_losses_22534982
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
?
?
/__inference_sequential_24_layer_call_fn_2254093

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
J__inference_sequential_24_layer_call_and_return_conditional_losses_22535882
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
?
F__inference_conv2d_48_layer_call_and_return_conditional_losses_2254614

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
?
?
8__inference_batch_normalization_37_layer_call_fn_2254512

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
S__inference_batch_normalization_37_layer_call_and_return_conditional_losses_22532072
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
+__inference_conv2d_49_layer_call_fn_2254695

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
F__inference_conv2d_49_layer_call_and_return_conditional_losses_22535812
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
S__inference_batch_normalization_36_layer_call_and_return_conditional_losses_2254423

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
??
?
J__inference_sequential_24_layer_call_and_return_conditional_losses_2254358

inputs:
'dense_48_matmul_readvariableop_resource:	d?7
(dense_48_biasadd_readvariableop_resource:	?M
>batch_normalization_36_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_36_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_36_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_36_batchnorm_readvariableop_resource:	?;
'dense_49_matmul_readvariableop_resource:
??17
(dense_49_biasadd_readvariableop_resource:	?1M
>batch_normalization_37_assignmovingavg_readvariableop_resource:	?1O
@batch_normalization_37_assignmovingavg_1_readvariableop_resource:	?1K
<batch_normalization_37_batchnorm_mul_readvariableop_resource:	?1G
8batch_normalization_37_batchnorm_readvariableop_resource:	?1C
(conv2d_48_conv2d_readvariableop_resource:?@7
)conv2d_48_biasadd_readvariableop_resource:@<
.batch_normalization_38_readvariableop_resource:@>
0batch_normalization_38_readvariableop_1_resource:@M
?batch_normalization_38_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_38_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_49_conv2d_readvariableop_resource:@7
)conv2d_49_biasadd_readvariableop_resource:
identity??&batch_normalization_36/AssignMovingAvg?5batch_normalization_36/AssignMovingAvg/ReadVariableOp?(batch_normalization_36/AssignMovingAvg_1?7batch_normalization_36/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_36/batchnorm/ReadVariableOp?3batch_normalization_36/batchnorm/mul/ReadVariableOp?&batch_normalization_37/AssignMovingAvg?5batch_normalization_37/AssignMovingAvg/ReadVariableOp?(batch_normalization_37/AssignMovingAvg_1?7batch_normalization_37/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_37/batchnorm/ReadVariableOp?3batch_normalization_37/batchnorm/mul/ReadVariableOp?%batch_normalization_38/AssignNewValue?'batch_normalization_38/AssignNewValue_1?6batch_normalization_38/FusedBatchNormV3/ReadVariableOp?8batch_normalization_38/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_38/ReadVariableOp?'batch_normalization_38/ReadVariableOp_1? conv2d_48/BiasAdd/ReadVariableOp?conv2d_48/Conv2D/ReadVariableOp? conv2d_49/BiasAdd/ReadVariableOp?conv2d_49/Conv2D/ReadVariableOp?dense_48/BiasAdd/ReadVariableOp?dense_48/MatMul/ReadVariableOp?dense_49/BiasAdd/ReadVariableOp?dense_49/MatMul/ReadVariableOp?
dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02 
dense_48/MatMul/ReadVariableOp?
dense_48/MatMulMatMulinputs&dense_48/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_48/MatMul?
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_48/BiasAdd/ReadVariableOp?
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_48/BiasAdd?
5batch_normalization_36/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_36/moments/mean/reduction_indices?
#batch_normalization_36/moments/meanMeandense_48/BiasAdd:output:0>batch_normalization_36/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_36/moments/mean?
+batch_normalization_36/moments/StopGradientStopGradient,batch_normalization_36/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_36/moments/StopGradient?
0batch_normalization_36/moments/SquaredDifferenceSquaredDifferencedense_48/BiasAdd:output:04batch_normalization_36/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_36/moments/SquaredDifference?
9batch_normalization_36/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_36/moments/variance/reduction_indices?
'batch_normalization_36/moments/varianceMean4batch_normalization_36/moments/SquaredDifference:z:0Bbatch_normalization_36/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_36/moments/variance?
&batch_normalization_36/moments/SqueezeSqueeze,batch_normalization_36/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_36/moments/Squeeze?
(batch_normalization_36/moments/Squeeze_1Squeeze0batch_normalization_36/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_36/moments/Squeeze_1?
,batch_normalization_36/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2.
,batch_normalization_36/AssignMovingAvg/decay?
5batch_normalization_36/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_36_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_36/AssignMovingAvg/ReadVariableOp?
*batch_normalization_36/AssignMovingAvg/subSub=batch_normalization_36/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_36/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_36/AssignMovingAvg/sub?
*batch_normalization_36/AssignMovingAvg/mulMul.batch_normalization_36/AssignMovingAvg/sub:z:05batch_normalization_36/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_36/AssignMovingAvg/mul?
&batch_normalization_36/AssignMovingAvgAssignSubVariableOp>batch_normalization_36_assignmovingavg_readvariableop_resource.batch_normalization_36/AssignMovingAvg/mul:z:06^batch_normalization_36/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_36/AssignMovingAvg?
.batch_normalization_36/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>20
.batch_normalization_36/AssignMovingAvg_1/decay?
7batch_normalization_36/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_36_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_36/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_36/AssignMovingAvg_1/subSub?batch_normalization_36/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_36/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_36/AssignMovingAvg_1/sub?
,batch_normalization_36/AssignMovingAvg_1/mulMul0batch_normalization_36/AssignMovingAvg_1/sub:z:07batch_normalization_36/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_36/AssignMovingAvg_1/mul?
(batch_normalization_36/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_36_assignmovingavg_1_readvariableop_resource0batch_normalization_36/AssignMovingAvg_1/mul:z:08^batch_normalization_36/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_36/AssignMovingAvg_1?
&batch_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_36/batchnorm/add/y?
$batch_normalization_36/batchnorm/addAddV21batch_normalization_36/moments/Squeeze_1:output:0/batch_normalization_36/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_36/batchnorm/add?
&batch_normalization_36/batchnorm/RsqrtRsqrt(batch_normalization_36/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_36/batchnorm/Rsqrt?
3batch_normalization_36/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_36_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_36/batchnorm/mul/ReadVariableOp?
$batch_normalization_36/batchnorm/mulMul*batch_normalization_36/batchnorm/Rsqrt:y:0;batch_normalization_36/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_36/batchnorm/mul?
&batch_normalization_36/batchnorm/mul_1Muldense_48/BiasAdd:output:0(batch_normalization_36/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_36/batchnorm/mul_1?
&batch_normalization_36/batchnorm/mul_2Mul/batch_normalization_36/moments/Squeeze:output:0(batch_normalization_36/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_36/batchnorm/mul_2?
/batch_normalization_36/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_36_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_36/batchnorm/ReadVariableOp?
$batch_normalization_36/batchnorm/subSub7batch_normalization_36/batchnorm/ReadVariableOp:value:0*batch_normalization_36/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_36/batchnorm/sub?
&batch_normalization_36/batchnorm/add_1AddV2*batch_normalization_36/batchnorm/mul_1:z:0(batch_normalization_36/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_36/batchnorm/add_1?
activation_24/ReluRelu*batch_normalization_36/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_24/Relu?
dense_49/MatMul/ReadVariableOpReadVariableOp'dense_49_matmul_readvariableop_resource* 
_output_shapes
:
??1*
dtype02 
dense_49/MatMul/ReadVariableOp?
dense_49/MatMulMatMul activation_24/Relu:activations:0&dense_49/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
dense_49/MatMul?
dense_49/BiasAdd/ReadVariableOpReadVariableOp(dense_49_biasadd_readvariableop_resource*
_output_shapes	
:?1*
dtype02!
dense_49/BiasAdd/ReadVariableOp?
dense_49/BiasAddBiasAdddense_49/MatMul:product:0'dense_49/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
dense_49/BiasAdd?
5batch_normalization_37/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_37/moments/mean/reduction_indices?
#batch_normalization_37/moments/meanMeandense_49/BiasAdd:output:0>batch_normalization_37/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?1*
	keep_dims(2%
#batch_normalization_37/moments/mean?
+batch_normalization_37/moments/StopGradientStopGradient,batch_normalization_37/moments/mean:output:0*
T0*
_output_shapes
:	?12-
+batch_normalization_37/moments/StopGradient?
0batch_normalization_37/moments/SquaredDifferenceSquaredDifferencedense_49/BiasAdd:output:04batch_normalization_37/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????122
0batch_normalization_37/moments/SquaredDifference?
9batch_normalization_37/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_37/moments/variance/reduction_indices?
'batch_normalization_37/moments/varianceMean4batch_normalization_37/moments/SquaredDifference:z:0Bbatch_normalization_37/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?1*
	keep_dims(2)
'batch_normalization_37/moments/variance?
&batch_normalization_37/moments/SqueezeSqueeze,batch_normalization_37/moments/mean:output:0*
T0*
_output_shapes	
:?1*
squeeze_dims
 2(
&batch_normalization_37/moments/Squeeze?
(batch_normalization_37/moments/Squeeze_1Squeeze0batch_normalization_37/moments/variance:output:0*
T0*
_output_shapes	
:?1*
squeeze_dims
 2*
(batch_normalization_37/moments/Squeeze_1?
,batch_normalization_37/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2.
,batch_normalization_37/AssignMovingAvg/decay?
5batch_normalization_37/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_37_assignmovingavg_readvariableop_resource*
_output_shapes	
:?1*
dtype027
5batch_normalization_37/AssignMovingAvg/ReadVariableOp?
*batch_normalization_37/AssignMovingAvg/subSub=batch_normalization_37/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_37/moments/Squeeze:output:0*
T0*
_output_shapes	
:?12,
*batch_normalization_37/AssignMovingAvg/sub?
*batch_normalization_37/AssignMovingAvg/mulMul.batch_normalization_37/AssignMovingAvg/sub:z:05batch_normalization_37/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?12,
*batch_normalization_37/AssignMovingAvg/mul?
&batch_normalization_37/AssignMovingAvgAssignSubVariableOp>batch_normalization_37_assignmovingavg_readvariableop_resource.batch_normalization_37/AssignMovingAvg/mul:z:06^batch_normalization_37/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_37/AssignMovingAvg?
.batch_normalization_37/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>20
.batch_normalization_37/AssignMovingAvg_1/decay?
7batch_normalization_37/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_37_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?1*
dtype029
7batch_normalization_37/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_37/AssignMovingAvg_1/subSub?batch_normalization_37/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_37/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?12.
,batch_normalization_37/AssignMovingAvg_1/sub?
,batch_normalization_37/AssignMovingAvg_1/mulMul0batch_normalization_37/AssignMovingAvg_1/sub:z:07batch_normalization_37/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?12.
,batch_normalization_37/AssignMovingAvg_1/mul?
(batch_normalization_37/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_37_assignmovingavg_1_readvariableop_resource0batch_normalization_37/AssignMovingAvg_1/mul:z:08^batch_normalization_37/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_37/AssignMovingAvg_1?
&batch_normalization_37/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_37/batchnorm/add/y?
$batch_normalization_37/batchnorm/addAddV21batch_normalization_37/moments/Squeeze_1:output:0/batch_normalization_37/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?12&
$batch_normalization_37/batchnorm/add?
&batch_normalization_37/batchnorm/RsqrtRsqrt(batch_normalization_37/batchnorm/add:z:0*
T0*
_output_shapes	
:?12(
&batch_normalization_37/batchnorm/Rsqrt?
3batch_normalization_37/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_37_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?1*
dtype025
3batch_normalization_37/batchnorm/mul/ReadVariableOp?
$batch_normalization_37/batchnorm/mulMul*batch_normalization_37/batchnorm/Rsqrt:y:0;batch_normalization_37/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?12&
$batch_normalization_37/batchnorm/mul?
&batch_normalization_37/batchnorm/mul_1Muldense_49/BiasAdd:output:0(batch_normalization_37/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????12(
&batch_normalization_37/batchnorm/mul_1?
&batch_normalization_37/batchnorm/mul_2Mul/batch_normalization_37/moments/Squeeze:output:0(batch_normalization_37/batchnorm/mul:z:0*
T0*
_output_shapes	
:?12(
&batch_normalization_37/batchnorm/mul_2?
/batch_normalization_37/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_37_batchnorm_readvariableop_resource*
_output_shapes	
:?1*
dtype021
/batch_normalization_37/batchnorm/ReadVariableOp?
$batch_normalization_37/batchnorm/subSub7batch_normalization_37/batchnorm/ReadVariableOp:value:0*batch_normalization_37/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?12&
$batch_normalization_37/batchnorm/sub?
&batch_normalization_37/batchnorm/add_1AddV2*batch_normalization_37/batchnorm/mul_1:z:0(batch_normalization_37/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????12(
&batch_normalization_37/batchnorm/add_1?
activation_25/ReluRelu*batch_normalization_37/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????12
activation_25/Relut
reshape_12/ShapeShape activation_25/Relu:activations:0*
T0*
_output_shapes
:2
reshape_12/Shape?
reshape_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_12/strided_slice/stack?
 reshape_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_12/strided_slice/stack_1?
 reshape_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_12/strided_slice/stack_2?
reshape_12/strided_sliceStridedSlicereshape_12/Shape:output:0'reshape_12/strided_slice/stack:output:0)reshape_12/strided_slice/stack_1:output:0)reshape_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_12/strided_slicez
reshape_12/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_12/Reshape/shape/1z
reshape_12/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_12/Reshape/shape/2{
reshape_12/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_12/Reshape/shape/3?
reshape_12/Reshape/shapePack!reshape_12/strided_slice:output:0#reshape_12/Reshape/shape/1:output:0#reshape_12/Reshape/shape/2:output:0#reshape_12/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_12/Reshape/shape?
reshape_12/ReshapeReshape activation_25/Relu:activations:0!reshape_12/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_12/Reshape?
up_sampling2d_24/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_24/Const?
up_sampling2d_24/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_24/Const_1?
up_sampling2d_24/mulMulup_sampling2d_24/Const:output:0!up_sampling2d_24/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_24/mul?
-up_sampling2d_24/resize/ResizeNearestNeighborResizeNearestNeighborreshape_12/Reshape:output:0up_sampling2d_24/mul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(2/
-up_sampling2d_24/resize/ResizeNearestNeighbor?
conv2d_48/Conv2D/ReadVariableOpReadVariableOp(conv2d_48_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02!
conv2d_48/Conv2D/ReadVariableOp?
conv2d_48/Conv2DConv2D>up_sampling2d_24/resize/ResizeNearestNeighbor:resized_images:0'conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_48/Conv2D?
 conv2d_48/BiasAdd/ReadVariableOpReadVariableOp)conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_48/BiasAdd/ReadVariableOp?
conv2d_48/BiasAddBiasAddconv2d_48/Conv2D:output:0(conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_48/BiasAdd?
%batch_normalization_38/ReadVariableOpReadVariableOp.batch_normalization_38_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_38/ReadVariableOp?
'batch_normalization_38/ReadVariableOp_1ReadVariableOp0batch_normalization_38_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_38/ReadVariableOp_1?
6batch_normalization_38/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_38_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_38/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_38/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_38_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_38/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_38/FusedBatchNormV3FusedBatchNormV3conv2d_48/BiasAdd:output:0-batch_normalization_38/ReadVariableOp:value:0/batch_normalization_38/ReadVariableOp_1:value:0>batch_normalization_38/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_38/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%??L>2)
'batch_normalization_38/FusedBatchNormV3?
%batch_normalization_38/AssignNewValueAssignVariableOp?batch_normalization_38_fusedbatchnormv3_readvariableop_resource4batch_normalization_38/FusedBatchNormV3:batch_mean:07^batch_normalization_38/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_38/AssignNewValue?
'batch_normalization_38/AssignNewValue_1AssignVariableOpAbatch_normalization_38_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_38/FusedBatchNormV3:batch_variance:09^batch_normalization_38/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_38/AssignNewValue_1?
leaky_re_lu_48/LeakyRelu	LeakyRelu+batch_normalization_38/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@2
leaky_re_lu_48/LeakyRelu?
up_sampling2d_25/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_25/Const?
up_sampling2d_25/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_25/Const_1?
up_sampling2d_25/mulMulup_sampling2d_25/Const:output:0!up_sampling2d_25/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_25/mul?
-up_sampling2d_25/resize/ResizeNearestNeighborResizeNearestNeighbor&leaky_re_lu_48/LeakyRelu:activations:0up_sampling2d_25/mul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(2/
-up_sampling2d_25/resize/ResizeNearestNeighbor?
conv2d_49/Conv2D/ReadVariableOpReadVariableOp(conv2d_49_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_49/Conv2D/ReadVariableOp?
conv2d_49/Conv2DConv2D>up_sampling2d_25/resize/ResizeNearestNeighbor:resized_images:0'conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_49/Conv2D?
 conv2d_49/BiasAdd/ReadVariableOpReadVariableOp)conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_49/BiasAdd/ReadVariableOp?
conv2d_49/BiasAddBiasAddconv2d_49/Conv2D:output:0(conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_49/BiasAdd~
conv2d_49/TanhTanhconv2d_49/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_49/Tanh?	
IdentityIdentityconv2d_49/Tanh:y:0'^batch_normalization_36/AssignMovingAvg6^batch_normalization_36/AssignMovingAvg/ReadVariableOp)^batch_normalization_36/AssignMovingAvg_18^batch_normalization_36/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_36/batchnorm/ReadVariableOp4^batch_normalization_36/batchnorm/mul/ReadVariableOp'^batch_normalization_37/AssignMovingAvg6^batch_normalization_37/AssignMovingAvg/ReadVariableOp)^batch_normalization_37/AssignMovingAvg_18^batch_normalization_37/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_37/batchnorm/ReadVariableOp4^batch_normalization_37/batchnorm/mul/ReadVariableOp&^batch_normalization_38/AssignNewValue(^batch_normalization_38/AssignNewValue_17^batch_normalization_38/FusedBatchNormV3/ReadVariableOp9^batch_normalization_38/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_38/ReadVariableOp(^batch_normalization_38/ReadVariableOp_1!^conv2d_48/BiasAdd/ReadVariableOp ^conv2d_48/Conv2D/ReadVariableOp!^conv2d_49/BiasAdd/ReadVariableOp ^conv2d_49/Conv2D/ReadVariableOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp ^dense_49/BiasAdd/ReadVariableOp^dense_49/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_36/AssignMovingAvg&batch_normalization_36/AssignMovingAvg2n
5batch_normalization_36/AssignMovingAvg/ReadVariableOp5batch_normalization_36/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_36/AssignMovingAvg_1(batch_normalization_36/AssignMovingAvg_12r
7batch_normalization_36/AssignMovingAvg_1/ReadVariableOp7batch_normalization_36/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_36/batchnorm/ReadVariableOp/batch_normalization_36/batchnorm/ReadVariableOp2j
3batch_normalization_36/batchnorm/mul/ReadVariableOp3batch_normalization_36/batchnorm/mul/ReadVariableOp2P
&batch_normalization_37/AssignMovingAvg&batch_normalization_37/AssignMovingAvg2n
5batch_normalization_37/AssignMovingAvg/ReadVariableOp5batch_normalization_37/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_37/AssignMovingAvg_1(batch_normalization_37/AssignMovingAvg_12r
7batch_normalization_37/AssignMovingAvg_1/ReadVariableOp7batch_normalization_37/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_37/batchnorm/ReadVariableOp/batch_normalization_37/batchnorm/ReadVariableOp2j
3batch_normalization_37/batchnorm/mul/ReadVariableOp3batch_normalization_37/batchnorm/mul/ReadVariableOp2N
%batch_normalization_38/AssignNewValue%batch_normalization_38/AssignNewValue2R
'batch_normalization_38/AssignNewValue_1'batch_normalization_38/AssignNewValue_12p
6batch_normalization_38/FusedBatchNormV3/ReadVariableOp6batch_normalization_38/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_38/FusedBatchNormV3/ReadVariableOp_18batch_normalization_38/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_38/ReadVariableOp%batch_normalization_38/ReadVariableOp2R
'batch_normalization_38/ReadVariableOp_1'batch_normalization_38/ReadVariableOp_12D
 conv2d_48/BiasAdd/ReadVariableOp conv2d_48/BiasAdd/ReadVariableOp2B
conv2d_48/Conv2D/ReadVariableOpconv2d_48/Conv2D/ReadVariableOp2D
 conv2d_49/BiasAdd/ReadVariableOp conv2d_49/BiasAdd/ReadVariableOp2B
conv2d_49/Conv2D/ReadVariableOpconv2d_49/Conv2D/ReadVariableOp2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp2B
dense_49/BiasAdd/ReadVariableOpdense_49/BiasAdd/ReadVariableOp2@
dense_49/MatMul/ReadVariableOpdense_49/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
K
/__inference_activation_24_layer_call_fn_2254462

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
J__inference_activation_24_layer_call_and_return_conditional_losses_22534862
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
?
L
0__inference_leaky_re_lu_48_layer_call_fn_2254681

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
K__inference_leaky_re_lu_48_layer_call_and_return_conditional_losses_22535672
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
?
/__inference_sequential_24_layer_call_fn_2254138

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
J__inference_sequential_24_layer_call_and_return_conditional_losses_22537992
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
?*
?
S__inference_batch_normalization_36_layer_call_and_return_conditional_losses_2254457

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
?
F__inference_conv2d_49_layer_call_and_return_conditional_losses_2254706

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
?
?
S__inference_batch_normalization_37_layer_call_and_return_conditional_losses_2254532

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
??
?
J__inference_sequential_24_layer_call_and_return_conditional_losses_2254234

inputs:
'dense_48_matmul_readvariableop_resource:	d?7
(dense_48_biasadd_readvariableop_resource:	?G
8batch_normalization_36_batchnorm_readvariableop_resource:	?K
<batch_normalization_36_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_36_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_36_batchnorm_readvariableop_2_resource:	?;
'dense_49_matmul_readvariableop_resource:
??17
(dense_49_biasadd_readvariableop_resource:	?1G
8batch_normalization_37_batchnorm_readvariableop_resource:	?1K
<batch_normalization_37_batchnorm_mul_readvariableop_resource:	?1I
:batch_normalization_37_batchnorm_readvariableop_1_resource:	?1I
:batch_normalization_37_batchnorm_readvariableop_2_resource:	?1C
(conv2d_48_conv2d_readvariableop_resource:?@7
)conv2d_48_biasadd_readvariableop_resource:@<
.batch_normalization_38_readvariableop_resource:@>
0batch_normalization_38_readvariableop_1_resource:@M
?batch_normalization_38_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_38_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_49_conv2d_readvariableop_resource:@7
)conv2d_49_biasadd_readvariableop_resource:
identity??/batch_normalization_36/batchnorm/ReadVariableOp?1batch_normalization_36/batchnorm/ReadVariableOp_1?1batch_normalization_36/batchnorm/ReadVariableOp_2?3batch_normalization_36/batchnorm/mul/ReadVariableOp?/batch_normalization_37/batchnorm/ReadVariableOp?1batch_normalization_37/batchnorm/ReadVariableOp_1?1batch_normalization_37/batchnorm/ReadVariableOp_2?3batch_normalization_37/batchnorm/mul/ReadVariableOp?6batch_normalization_38/FusedBatchNormV3/ReadVariableOp?8batch_normalization_38/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_38/ReadVariableOp?'batch_normalization_38/ReadVariableOp_1? conv2d_48/BiasAdd/ReadVariableOp?conv2d_48/Conv2D/ReadVariableOp? conv2d_49/BiasAdd/ReadVariableOp?conv2d_49/Conv2D/ReadVariableOp?dense_48/BiasAdd/ReadVariableOp?dense_48/MatMul/ReadVariableOp?dense_49/BiasAdd/ReadVariableOp?dense_49/MatMul/ReadVariableOp?
dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02 
dense_48/MatMul/ReadVariableOp?
dense_48/MatMulMatMulinputs&dense_48/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_48/MatMul?
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_48/BiasAdd/ReadVariableOp?
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_48/BiasAdd?
/batch_normalization_36/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_36_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_36/batchnorm/ReadVariableOp?
&batch_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_36/batchnorm/add/y?
$batch_normalization_36/batchnorm/addAddV27batch_normalization_36/batchnorm/ReadVariableOp:value:0/batch_normalization_36/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_36/batchnorm/add?
&batch_normalization_36/batchnorm/RsqrtRsqrt(batch_normalization_36/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_36/batchnorm/Rsqrt?
3batch_normalization_36/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_36_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_36/batchnorm/mul/ReadVariableOp?
$batch_normalization_36/batchnorm/mulMul*batch_normalization_36/batchnorm/Rsqrt:y:0;batch_normalization_36/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_36/batchnorm/mul?
&batch_normalization_36/batchnorm/mul_1Muldense_48/BiasAdd:output:0(batch_normalization_36/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_36/batchnorm/mul_1?
1batch_normalization_36/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_36_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_36/batchnorm/ReadVariableOp_1?
&batch_normalization_36/batchnorm/mul_2Mul9batch_normalization_36/batchnorm/ReadVariableOp_1:value:0(batch_normalization_36/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_36/batchnorm/mul_2?
1batch_normalization_36/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_36_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_36/batchnorm/ReadVariableOp_2?
$batch_normalization_36/batchnorm/subSub9batch_normalization_36/batchnorm/ReadVariableOp_2:value:0*batch_normalization_36/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_36/batchnorm/sub?
&batch_normalization_36/batchnorm/add_1AddV2*batch_normalization_36/batchnorm/mul_1:z:0(batch_normalization_36/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_36/batchnorm/add_1?
activation_24/ReluRelu*batch_normalization_36/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_24/Relu?
dense_49/MatMul/ReadVariableOpReadVariableOp'dense_49_matmul_readvariableop_resource* 
_output_shapes
:
??1*
dtype02 
dense_49/MatMul/ReadVariableOp?
dense_49/MatMulMatMul activation_24/Relu:activations:0&dense_49/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
dense_49/MatMul?
dense_49/BiasAdd/ReadVariableOpReadVariableOp(dense_49_biasadd_readvariableop_resource*
_output_shapes	
:?1*
dtype02!
dense_49/BiasAdd/ReadVariableOp?
dense_49/BiasAddBiasAdddense_49/MatMul:product:0'dense_49/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
dense_49/BiasAdd?
/batch_normalization_37/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_37_batchnorm_readvariableop_resource*
_output_shapes	
:?1*
dtype021
/batch_normalization_37/batchnorm/ReadVariableOp?
&batch_normalization_37/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_37/batchnorm/add/y?
$batch_normalization_37/batchnorm/addAddV27batch_normalization_37/batchnorm/ReadVariableOp:value:0/batch_normalization_37/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?12&
$batch_normalization_37/batchnorm/add?
&batch_normalization_37/batchnorm/RsqrtRsqrt(batch_normalization_37/batchnorm/add:z:0*
T0*
_output_shapes	
:?12(
&batch_normalization_37/batchnorm/Rsqrt?
3batch_normalization_37/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_37_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?1*
dtype025
3batch_normalization_37/batchnorm/mul/ReadVariableOp?
$batch_normalization_37/batchnorm/mulMul*batch_normalization_37/batchnorm/Rsqrt:y:0;batch_normalization_37/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?12&
$batch_normalization_37/batchnorm/mul?
&batch_normalization_37/batchnorm/mul_1Muldense_49/BiasAdd:output:0(batch_normalization_37/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????12(
&batch_normalization_37/batchnorm/mul_1?
1batch_normalization_37/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_37_batchnorm_readvariableop_1_resource*
_output_shapes	
:?1*
dtype023
1batch_normalization_37/batchnorm/ReadVariableOp_1?
&batch_normalization_37/batchnorm/mul_2Mul9batch_normalization_37/batchnorm/ReadVariableOp_1:value:0(batch_normalization_37/batchnorm/mul:z:0*
T0*
_output_shapes	
:?12(
&batch_normalization_37/batchnorm/mul_2?
1batch_normalization_37/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_37_batchnorm_readvariableop_2_resource*
_output_shapes	
:?1*
dtype023
1batch_normalization_37/batchnorm/ReadVariableOp_2?
$batch_normalization_37/batchnorm/subSub9batch_normalization_37/batchnorm/ReadVariableOp_2:value:0*batch_normalization_37/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?12&
$batch_normalization_37/batchnorm/sub?
&batch_normalization_37/batchnorm/add_1AddV2*batch_normalization_37/batchnorm/mul_1:z:0(batch_normalization_37/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????12(
&batch_normalization_37/batchnorm/add_1?
activation_25/ReluRelu*batch_normalization_37/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????12
activation_25/Relut
reshape_12/ShapeShape activation_25/Relu:activations:0*
T0*
_output_shapes
:2
reshape_12/Shape?
reshape_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_12/strided_slice/stack?
 reshape_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_12/strided_slice/stack_1?
 reshape_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_12/strided_slice/stack_2?
reshape_12/strided_sliceStridedSlicereshape_12/Shape:output:0'reshape_12/strided_slice/stack:output:0)reshape_12/strided_slice/stack_1:output:0)reshape_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_12/strided_slicez
reshape_12/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_12/Reshape/shape/1z
reshape_12/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_12/Reshape/shape/2{
reshape_12/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_12/Reshape/shape/3?
reshape_12/Reshape/shapePack!reshape_12/strided_slice:output:0#reshape_12/Reshape/shape/1:output:0#reshape_12/Reshape/shape/2:output:0#reshape_12/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_12/Reshape/shape?
reshape_12/ReshapeReshape activation_25/Relu:activations:0!reshape_12/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_12/Reshape?
up_sampling2d_24/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_24/Const?
up_sampling2d_24/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_24/Const_1?
up_sampling2d_24/mulMulup_sampling2d_24/Const:output:0!up_sampling2d_24/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_24/mul?
-up_sampling2d_24/resize/ResizeNearestNeighborResizeNearestNeighborreshape_12/Reshape:output:0up_sampling2d_24/mul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(2/
-up_sampling2d_24/resize/ResizeNearestNeighbor?
conv2d_48/Conv2D/ReadVariableOpReadVariableOp(conv2d_48_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02!
conv2d_48/Conv2D/ReadVariableOp?
conv2d_48/Conv2DConv2D>up_sampling2d_24/resize/ResizeNearestNeighbor:resized_images:0'conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_48/Conv2D?
 conv2d_48/BiasAdd/ReadVariableOpReadVariableOp)conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_48/BiasAdd/ReadVariableOp?
conv2d_48/BiasAddBiasAddconv2d_48/Conv2D:output:0(conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_48/BiasAdd?
%batch_normalization_38/ReadVariableOpReadVariableOp.batch_normalization_38_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_38/ReadVariableOp?
'batch_normalization_38/ReadVariableOp_1ReadVariableOp0batch_normalization_38_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_38/ReadVariableOp_1?
6batch_normalization_38/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_38_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_38/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_38/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_38_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_38/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_38/FusedBatchNormV3FusedBatchNormV3conv2d_48/BiasAdd:output:0-batch_normalization_38/ReadVariableOp:value:0/batch_normalization_38/ReadVariableOp_1:value:0>batch_normalization_38/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_38/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_38/FusedBatchNormV3?
leaky_re_lu_48/LeakyRelu	LeakyRelu+batch_normalization_38/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@2
leaky_re_lu_48/LeakyRelu?
up_sampling2d_25/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_25/Const?
up_sampling2d_25/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_25/Const_1?
up_sampling2d_25/mulMulup_sampling2d_25/Const:output:0!up_sampling2d_25/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_25/mul?
-up_sampling2d_25/resize/ResizeNearestNeighborResizeNearestNeighbor&leaky_re_lu_48/LeakyRelu:activations:0up_sampling2d_25/mul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(2/
-up_sampling2d_25/resize/ResizeNearestNeighbor?
conv2d_49/Conv2D/ReadVariableOpReadVariableOp(conv2d_49_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_49/Conv2D/ReadVariableOp?
conv2d_49/Conv2DConv2D>up_sampling2d_25/resize/ResizeNearestNeighbor:resized_images:0'conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_49/Conv2D?
 conv2d_49/BiasAdd/ReadVariableOpReadVariableOp)conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_49/BiasAdd/ReadVariableOp?
conv2d_49/BiasAddBiasAddconv2d_49/Conv2D:output:0(conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_49/BiasAdd~
conv2d_49/TanhTanhconv2d_49/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_49/Tanh?
IdentityIdentityconv2d_49/Tanh:y:00^batch_normalization_36/batchnorm/ReadVariableOp2^batch_normalization_36/batchnorm/ReadVariableOp_12^batch_normalization_36/batchnorm/ReadVariableOp_24^batch_normalization_36/batchnorm/mul/ReadVariableOp0^batch_normalization_37/batchnorm/ReadVariableOp2^batch_normalization_37/batchnorm/ReadVariableOp_12^batch_normalization_37/batchnorm/ReadVariableOp_24^batch_normalization_37/batchnorm/mul/ReadVariableOp7^batch_normalization_38/FusedBatchNormV3/ReadVariableOp9^batch_normalization_38/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_38/ReadVariableOp(^batch_normalization_38/ReadVariableOp_1!^conv2d_48/BiasAdd/ReadVariableOp ^conv2d_48/Conv2D/ReadVariableOp!^conv2d_49/BiasAdd/ReadVariableOp ^conv2d_49/Conv2D/ReadVariableOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp ^dense_49/BiasAdd/ReadVariableOp^dense_49/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_36/batchnorm/ReadVariableOp/batch_normalization_36/batchnorm/ReadVariableOp2f
1batch_normalization_36/batchnorm/ReadVariableOp_11batch_normalization_36/batchnorm/ReadVariableOp_12f
1batch_normalization_36/batchnorm/ReadVariableOp_21batch_normalization_36/batchnorm/ReadVariableOp_22j
3batch_normalization_36/batchnorm/mul/ReadVariableOp3batch_normalization_36/batchnorm/mul/ReadVariableOp2b
/batch_normalization_37/batchnorm/ReadVariableOp/batch_normalization_37/batchnorm/ReadVariableOp2f
1batch_normalization_37/batchnorm/ReadVariableOp_11batch_normalization_37/batchnorm/ReadVariableOp_12f
1batch_normalization_37/batchnorm/ReadVariableOp_21batch_normalization_37/batchnorm/ReadVariableOp_22j
3batch_normalization_37/batchnorm/mul/ReadVariableOp3batch_normalization_37/batchnorm/mul/ReadVariableOp2p
6batch_normalization_38/FusedBatchNormV3/ReadVariableOp6batch_normalization_38/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_38/FusedBatchNormV3/ReadVariableOp_18batch_normalization_38/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_38/ReadVariableOp%batch_normalization_38/ReadVariableOp2R
'batch_normalization_38/ReadVariableOp_1'batch_normalization_38/ReadVariableOp_12D
 conv2d_48/BiasAdd/ReadVariableOp conv2d_48/BiasAdd/ReadVariableOp2B
conv2d_48/Conv2D/ReadVariableOpconv2d_48/Conv2D/ReadVariableOp2D
 conv2d_49/BiasAdd/ReadVariableOp conv2d_49/BiasAdd/ReadVariableOp2B
conv2d_49/Conv2D/ReadVariableOpconv2d_49/Conv2D/ReadVariableOp2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp2B
dense_49/BiasAdd/ReadVariableOpdense_49/BiasAdd/ReadVariableOp2@
dense_49/MatMul/ReadVariableOpdense_49/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?	
J__inference_sequential_24_layer_call_and_return_conditional_losses_2253944
dense_48_input#
dense_48_2253890:	d?
dense_48_2253892:	?-
batch_normalization_36_2253895:	?-
batch_normalization_36_2253897:	?-
batch_normalization_36_2253899:	?-
batch_normalization_36_2253901:	?$
dense_49_2253905:
??1
dense_49_2253907:	?1-
batch_normalization_37_2253910:	?1-
batch_normalization_37_2253912:	?1-
batch_normalization_37_2253914:	?1-
batch_normalization_37_2253916:	?1,
conv2d_48_2253922:?@
conv2d_48_2253924:@,
batch_normalization_38_2253927:@,
batch_normalization_38_2253929:@,
batch_normalization_38_2253931:@,
batch_normalization_38_2253933:@+
conv2d_49_2253938:@
conv2d_49_2253940:
identity??.batch_normalization_36/StatefulPartitionedCall?.batch_normalization_37/StatefulPartitionedCall?.batch_normalization_38/StatefulPartitionedCall?!conv2d_48/StatefulPartitionedCall?!conv2d_49/StatefulPartitionedCall? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall?
 dense_48/StatefulPartitionedCallStatefulPartitionedCalldense_48_inputdense_48_2253890dense_48_2253892*
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
E__inference_dense_48_layer_call_and_return_conditional_losses_22534662"
 dense_48/StatefulPartitionedCall?
.batch_normalization_36/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0batch_normalization_36_2253895batch_normalization_36_2253897batch_normalization_36_2253899batch_normalization_36_2253901*
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
S__inference_batch_normalization_36_layer_call_and_return_conditional_losses_225298520
.batch_normalization_36/StatefulPartitionedCall?
activation_24/PartitionedCallPartitionedCall7batch_normalization_36/StatefulPartitionedCall:output:0*
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
J__inference_activation_24_layer_call_and_return_conditional_losses_22534862
activation_24/PartitionedCall?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall&activation_24/PartitionedCall:output:0dense_49_2253905dense_49_2253907*
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
E__inference_dense_49_layer_call_and_return_conditional_losses_22534982"
 dense_49/StatefulPartitionedCall?
.batch_normalization_37/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0batch_normalization_37_2253910batch_normalization_37_2253912batch_normalization_37_2253914batch_normalization_37_2253916*
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
S__inference_batch_normalization_37_layer_call_and_return_conditional_losses_225314720
.batch_normalization_37/StatefulPartitionedCall?
activation_25/PartitionedCallPartitionedCall7batch_normalization_37/StatefulPartitionedCall:output:0*
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
J__inference_activation_25_layer_call_and_return_conditional_losses_22535182
activation_25/PartitionedCall?
reshape_12/PartitionedCallPartitionedCall&activation_25/PartitionedCall:output:0*
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
G__inference_reshape_12_layer_call_and_return_conditional_losses_22535342
reshape_12/PartitionedCall?
 up_sampling2d_24/PartitionedCallPartitionedCall#reshape_12/PartitionedCall:output:0*
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
M__inference_up_sampling2d_24_layer_call_and_return_conditional_losses_22532982"
 up_sampling2d_24/PartitionedCall?
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_24/PartitionedCall:output:0conv2d_48_2253922conv2d_48_2253924*
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
F__inference_conv2d_48_layer_call_and_return_conditional_losses_22535472#
!conv2d_48/StatefulPartitionedCall?
.batch_normalization_38/StatefulPartitionedCallStatefulPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0batch_normalization_38_2253927batch_normalization_38_2253929batch_normalization_38_2253931batch_normalization_38_2253933*
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
S__inference_batch_normalization_38_layer_call_and_return_conditional_losses_225332620
.batch_normalization_38/StatefulPartitionedCall?
leaky_re_lu_48/PartitionedCallPartitionedCall7batch_normalization_38/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_48_layer_call_and_return_conditional_losses_22535672 
leaky_re_lu_48/PartitionedCall?
 up_sampling2d_25/PartitionedCallPartitionedCall'leaky_re_lu_48/PartitionedCall:output:0*
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
M__inference_up_sampling2d_25_layer_call_and_return_conditional_losses_22534432"
 up_sampling2d_25/PartitionedCall?
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_25/PartitionedCall:output:0conv2d_49_2253938conv2d_49_2253940*
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
F__inference_conv2d_49_layer_call_and_return_conditional_losses_22535812#
!conv2d_49/StatefulPartitionedCall?
IdentityIdentity*conv2d_49/StatefulPartitionedCall:output:0/^batch_normalization_36/StatefulPartitionedCall/^batch_normalization_37/StatefulPartitionedCall/^batch_normalization_38/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_36/StatefulPartitionedCall.batch_normalization_36/StatefulPartitionedCall2`
.batch_normalization_37/StatefulPartitionedCall.batch_normalization_37/StatefulPartitionedCall2`
.batch_normalization_38/StatefulPartitionedCall.batch_normalization_38/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_48_input
?*
?
S__inference_batch_normalization_37_layer_call_and_return_conditional_losses_2254566

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
?
N
2__inference_up_sampling2d_25_layer_call_fn_2253449

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
M__inference_up_sampling2d_25_layer_call_and_return_conditional_losses_22534432
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
?
?
S__inference_batch_normalization_38_layer_call_and_return_conditional_losses_2253326

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
?
?
S__inference_batch_normalization_38_layer_call_and_return_conditional_losses_2253370

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
?
?
S__inference_batch_normalization_38_layer_call_and_return_conditional_losses_2254658

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
E__inference_dense_49_layer_call_and_return_conditional_losses_2253498

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
?
?
/__inference_sequential_24_layer_call_fn_2253631
dense_48_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_48_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
J__inference_sequential_24_layer_call_and_return_conditional_losses_22535882
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
_user_specified_namedense_48_input
?
?
+__inference_conv2d_48_layer_call_fn_2254604

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
F__inference_conv2d_48_layer_call_and_return_conditional_losses_22535472
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
?
g
K__inference_leaky_re_lu_48_layer_call_and_return_conditional_losses_2253567

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
?*
?
S__inference_batch_normalization_36_layer_call_and_return_conditional_losses_2253045

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
dense_48_input7
 serving_default_dense_48_input:0?????????dE
	conv2d_498
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
_tf_keras_sequential?_{"name": "sequential_24", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_24", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_48_input"}}, {"class_name": "Dense", "config": {"name": "dense_48", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_36", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_24", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_49", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 6272, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_37", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_25", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Reshape", "config": {"name": "reshape_12", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_24", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_48", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_38", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_48", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_25", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_49", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 100]}, "float32", "dense_48_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_24", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_48_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_48", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_36", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8}, {"class_name": "Activation", "config": {"name": "activation_24", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 9}, {"class_name": "Dense", "config": {"name": "dense_49", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 6272, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_37", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 14}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 16}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 17}, {"class_name": "Activation", "config": {"name": "activation_25", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 18}, {"class_name": "Reshape", "config": {"name": "reshape_12", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}, "shared_object_id": 19}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_24", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "shared_object_id": 20}, {"class_name": "Conv2D", "config": {"name": "conv2d_48", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_38", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 25}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 27}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 28}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_48", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 29}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_25", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "shared_object_id": 30}, {"class_name": "Conv2D", "config": {"name": "conv2d_49", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 33}]}}}
?	

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_48", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_48", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
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
_tf_keras_layer?{"name": "batch_normalization_36", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_36", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 1024}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?
"	variables
#regularization_losses
$trainable_variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_24", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 9}
?	

&kernel
'bias
(	variables
)regularization_losses
*trainable_variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_49", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_49", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 6272, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
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
_tf_keras_layer?{"name": "batch_normalization_37", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_37", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 14}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 16}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 6272}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6272]}}
?
5	variables
6regularization_losses
7trainable_variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_25", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 18}
?
9	variables
:regularization_losses
;trainable_variables
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "reshape_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape_12", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}, "shared_object_id": 19}
?
=	variables
>regularization_losses
?trainable_variables
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "up_sampling2d_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_24", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 39}}
?


Akernel
Bbias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_48", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_48", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 128]}}
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
_tf_keras_layer?{"name": "batch_normalization_38", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_38", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 25}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 27}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 64]}}
?
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_48", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_48", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 29}
?
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "up_sampling2d_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_25", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "shared_object_id": 30, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 42}}
?


Xkernel
Ybias
Z	variables
[regularization_losses
\trainable_variables
]	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_49", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_49", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 33, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 43}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
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
": 	d?2dense_48/kernel
:?2dense_48/bias
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
+:)?2batch_normalization_36/gamma
*:(?2batch_normalization_36/beta
3:1? (2"batch_normalization_36/moving_mean
7:5? (2&batch_normalization_36/moving_variance
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
??12dense_49/kernel
:?12dense_49/bias
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
+:)?12batch_normalization_37/gamma
*:(?12batch_normalization_37/beta
3:1?1 (2"batch_normalization_37/moving_mean
7:5?1 (2&batch_normalization_37/moving_variance
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
+:)?@2conv2d_48/kernel
:@2conv2d_48/bias
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
*:(@2batch_normalization_38/gamma
):'@2batch_normalization_38/beta
2:0@ (2"batch_normalization_38/moving_mean
6:4@ (2&batch_normalization_38/moving_variance
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
*:(@2conv2d_49/kernel
:2conv2d_49/bias
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
/__inference_sequential_24_layer_call_fn_2253631
/__inference_sequential_24_layer_call_fn_2254093
/__inference_sequential_24_layer_call_fn_2254138
/__inference_sequential_24_layer_call_fn_2253887?
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
"__inference__wrapped_model_2252961?
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
dense_48_input?????????d
?2?
J__inference_sequential_24_layer_call_and_return_conditional_losses_2254234
J__inference_sequential_24_layer_call_and_return_conditional_losses_2254358
J__inference_sequential_24_layer_call_and_return_conditional_losses_2253944
J__inference_sequential_24_layer_call_and_return_conditional_losses_2254001?
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
*__inference_dense_48_layer_call_fn_2254367?
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
E__inference_dense_48_layer_call_and_return_conditional_losses_2254377?
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
8__inference_batch_normalization_36_layer_call_fn_2254390
8__inference_batch_normalization_36_layer_call_fn_2254403?
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
S__inference_batch_normalization_36_layer_call_and_return_conditional_losses_2254423
S__inference_batch_normalization_36_layer_call_and_return_conditional_losses_2254457?
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
/__inference_activation_24_layer_call_fn_2254462?
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
J__inference_activation_24_layer_call_and_return_conditional_losses_2254467?
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
*__inference_dense_49_layer_call_fn_2254476?
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
E__inference_dense_49_layer_call_and_return_conditional_losses_2254486?
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
8__inference_batch_normalization_37_layer_call_fn_2254499
8__inference_batch_normalization_37_layer_call_fn_2254512?
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
S__inference_batch_normalization_37_layer_call_and_return_conditional_losses_2254532
S__inference_batch_normalization_37_layer_call_and_return_conditional_losses_2254566?
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
/__inference_activation_25_layer_call_fn_2254571?
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
J__inference_activation_25_layer_call_and_return_conditional_losses_2254576?
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
,__inference_reshape_12_layer_call_fn_2254581?
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
G__inference_reshape_12_layer_call_and_return_conditional_losses_2254595?
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
2__inference_up_sampling2d_24_layer_call_fn_2253304?
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
M__inference_up_sampling2d_24_layer_call_and_return_conditional_losses_2253298?
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
+__inference_conv2d_48_layer_call_fn_2254604?
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
F__inference_conv2d_48_layer_call_and_return_conditional_losses_2254614?
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
8__inference_batch_normalization_38_layer_call_fn_2254627
8__inference_batch_normalization_38_layer_call_fn_2254640?
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
S__inference_batch_normalization_38_layer_call_and_return_conditional_losses_2254658
S__inference_batch_normalization_38_layer_call_and_return_conditional_losses_2254676?
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
0__inference_leaky_re_lu_48_layer_call_fn_2254681?
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
K__inference_leaky_re_lu_48_layer_call_and_return_conditional_losses_2254686?
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
2__inference_up_sampling2d_25_layer_call_fn_2253449?
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
M__inference_up_sampling2d_25_layer_call_and_return_conditional_losses_2253443?
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
+__inference_conv2d_49_layer_call_fn_2254695?
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
F__inference_conv2d_49_layer_call_and_return_conditional_losses_2254706?
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
%__inference_signature_wrapper_2254048dense_48_input"?
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
"__inference__wrapped_model_2252961?&'0-/.ABHIJKXY7?4
-?*
(?%
dense_48_input?????????d
? "=?:
8
	conv2d_49+?(
	conv2d_49??????????
J__inference_activation_24_layer_call_and_return_conditional_losses_2254467Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
/__inference_activation_24_layer_call_fn_2254462M0?-
&?#
!?
inputs??????????
? "????????????
J__inference_activation_25_layer_call_and_return_conditional_losses_2254576Z0?-
&?#
!?
inputs??????????1
? "&?#
?
0??????????1
? ?
/__inference_activation_25_layer_call_fn_2254571M0?-
&?#
!?
inputs??????????1
? "???????????1?
S__inference_batch_normalization_36_layer_call_and_return_conditional_losses_2254423d4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
S__inference_batch_normalization_36_layer_call_and_return_conditional_losses_2254457d4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
8__inference_batch_normalization_36_layer_call_fn_2254390W4?1
*?'
!?
inputs??????????
p 
? "????????????
8__inference_batch_normalization_36_layer_call_fn_2254403W4?1
*?'
!?
inputs??????????
p
? "????????????
S__inference_batch_normalization_37_layer_call_and_return_conditional_losses_2254532d0-/.4?1
*?'
!?
inputs??????????1
p 
? "&?#
?
0??????????1
? ?
S__inference_batch_normalization_37_layer_call_and_return_conditional_losses_2254566d/0-.4?1
*?'
!?
inputs??????????1
p
? "&?#
?
0??????????1
? ?
8__inference_batch_normalization_37_layer_call_fn_2254499W0-/.4?1
*?'
!?
inputs??????????1
p 
? "???????????1?
8__inference_batch_normalization_37_layer_call_fn_2254512W/0-.4?1
*?'
!?
inputs??????????1
p
? "???????????1?
S__inference_batch_normalization_38_layer_call_and_return_conditional_losses_2254658?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_38_layer_call_and_return_conditional_losses_2254676?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
8__inference_batch_normalization_38_layer_call_fn_2254627?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
8__inference_batch_normalization_38_layer_call_fn_2254640?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
F__inference_conv2d_48_layer_call_and_return_conditional_losses_2254614?ABJ?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
+__inference_conv2d_48_layer_call_fn_2254604?ABJ?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
F__inference_conv2d_49_layer_call_and_return_conditional_losses_2254706?XYI?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????
? ?
+__inference_conv2d_49_layer_call_fn_2254695?XYI?F
??<
:?7
inputs+???????????????????????????@
? "2?/+????????????????????????????
E__inference_dense_48_layer_call_and_return_conditional_losses_2254377]/?,
%?"
 ?
inputs?????????d
? "&?#
?
0??????????
? ~
*__inference_dense_48_layer_call_fn_2254367P/?,
%?"
 ?
inputs?????????d
? "????????????
E__inference_dense_49_layer_call_and_return_conditional_losses_2254486^&'0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????1
? 
*__inference_dense_49_layer_call_fn_2254476Q&'0?-
&?#
!?
inputs??????????
? "???????????1?
K__inference_leaky_re_lu_48_layer_call_and_return_conditional_losses_2254686?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
0__inference_leaky_re_lu_48_layer_call_fn_2254681I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
G__inference_reshape_12_layer_call_and_return_conditional_losses_2254595b0?-
&?#
!?
inputs??????????1
? ".?+
$?!
0??????????
? ?
,__inference_reshape_12_layer_call_fn_2254581U0?-
&?#
!?
inputs??????????1
? "!????????????
J__inference_sequential_24_layer_call_and_return_conditional_losses_2253944?&'0-/.ABHIJKXY??<
5?2
(?%
dense_48_input?????????d
p 

 
? "??<
5?2
0+???????????????????????????
? ?
J__inference_sequential_24_layer_call_and_return_conditional_losses_2254001?&'/0-.ABHIJKXY??<
5?2
(?%
dense_48_input?????????d
p

 
? "??<
5?2
0+???????????????????????????
? ?
J__inference_sequential_24_layer_call_and_return_conditional_losses_2254234~&'0-/.ABHIJKXY7?4
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
J__inference_sequential_24_layer_call_and_return_conditional_losses_2254358~&'/0-.ABHIJKXY7?4
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
/__inference_sequential_24_layer_call_fn_2253631?&'0-/.ABHIJKXY??<
5?2
(?%
dense_48_input?????????d
p 

 
? "2?/+????????????????????????????
/__inference_sequential_24_layer_call_fn_2253887?&'/0-.ABHIJKXY??<
5?2
(?%
dense_48_input?????????d
p

 
? "2?/+????????????????????????????
/__inference_sequential_24_layer_call_fn_2254093?&'0-/.ABHIJKXY7?4
-?*
 ?
inputs?????????d
p 

 
? "2?/+????????????????????????????
/__inference_sequential_24_layer_call_fn_2254138?&'/0-.ABHIJKXY7?4
-?*
 ?
inputs?????????d
p

 
? "2?/+????????????????????????????
%__inference_signature_wrapper_2254048?&'0-/.ABHIJKXYI?F
? 
??<
:
dense_48_input(?%
dense_48_input?????????d"=?:
8
	conv2d_49+?(
	conv2d_49??????????
M__inference_up_sampling2d_24_layer_call_and_return_conditional_losses_2253298?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_up_sampling2d_24_layer_call_fn_2253304?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_up_sampling2d_25_layer_call_and_return_conditional_losses_2253443?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_up_sampling2d_25_layer_call_fn_2253449?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84????????????????????????????????????