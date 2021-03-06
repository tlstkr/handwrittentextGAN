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
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d?* 
shared_namedense_56/kernel
t
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel*
_output_shapes
:	d?*
dtype0
s
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_56/bias
l
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_42/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_42/gamma
?
0batch_normalization_42/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_42/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_42/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_42/beta
?
/batch_normalization_42/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_42/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_42/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_42/moving_mean
?
6batch_normalization_42/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_42/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_42/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_42/moving_variance
?
:batch_normalization_42/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_42/moving_variance*
_output_shapes	
:?*
dtype0
|
dense_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??1* 
shared_namedense_57/kernel
u
#dense_57/kernel/Read/ReadVariableOpReadVariableOpdense_57/kernel* 
_output_shapes
:
??1*
dtype0
s
dense_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*
shared_namedense_57/bias
l
!dense_57/bias/Read/ReadVariableOpReadVariableOpdense_57/bias*
_output_shapes	
:?1*
dtype0
?
batch_normalization_43/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*-
shared_namebatch_normalization_43/gamma
?
0batch_normalization_43/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_43/gamma*
_output_shapes	
:?1*
dtype0
?
batch_normalization_43/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*,
shared_namebatch_normalization_43/beta
?
/batch_normalization_43/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_43/beta*
_output_shapes	
:?1*
dtype0
?
"batch_normalization_43/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*3
shared_name$"batch_normalization_43/moving_mean
?
6batch_normalization_43/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_43/moving_mean*
_output_shapes	
:?1*
dtype0
?
&batch_normalization_43/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?1*7
shared_name(&batch_normalization_43/moving_variance
?
:batch_normalization_43/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_43/moving_variance*
_output_shapes	
:?1*
dtype0
?
conv2d_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*!
shared_nameconv2d_56/kernel
~
$conv2d_56/kernel/Read/ReadVariableOpReadVariableOpconv2d_56/kernel*'
_output_shapes
:?@*
dtype0
t
conv2d_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_56/bias
m
"conv2d_56/bias/Read/ReadVariableOpReadVariableOpconv2d_56/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_44/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_44/gamma
?
0batch_normalization_44/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_44/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_44/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_44/beta
?
/batch_normalization_44/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_44/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_44/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_44/moving_mean
?
6batch_normalization_44/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_44/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_44/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_44/moving_variance
?
:batch_normalization_44/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_44/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_57/kernel
}
$conv2d_57/kernel/Read/ReadVariableOpReadVariableOpconv2d_57/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_57/bias
m
"conv2d_57/bias/Read/ReadVariableOpReadVariableOpconv2d_57/bias*
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
VARIABLE_VALUEdense_56/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_56/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_42/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_42/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_42/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_42/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEdense_57/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_57/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_43/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_43/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_43/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_43/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEconv2d_56/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_56/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEbatch_normalization_44/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_44/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_44/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_44/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

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
VARIABLE_VALUEconv2d_57/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_57/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
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
serving_default_dense_56_inputPlaceholder*'
_output_shapes
:?????????d*
dtype0*
shape:?????????d
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_56_inputdense_56/kerneldense_56/bias&batch_normalization_42/moving_variancebatch_normalization_42/gamma"batch_normalization_42/moving_meanbatch_normalization_42/betadense_57/kerneldense_57/bias&batch_normalization_43/moving_variancebatch_normalization_43/gamma"batch_normalization_43/moving_meanbatch_normalization_43/betaconv2d_56/kernelconv2d_56/biasbatch_normalization_44/gammabatch_normalization_44/beta"batch_normalization_44/moving_mean&batch_normalization_44/moving_varianceconv2d_57/kernelconv2d_57/bias* 
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
%__inference_signature_wrapper_2599660
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_56/kernel/Read/ReadVariableOp!dense_56/bias/Read/ReadVariableOp0batch_normalization_42/gamma/Read/ReadVariableOp/batch_normalization_42/beta/Read/ReadVariableOp6batch_normalization_42/moving_mean/Read/ReadVariableOp:batch_normalization_42/moving_variance/Read/ReadVariableOp#dense_57/kernel/Read/ReadVariableOp!dense_57/bias/Read/ReadVariableOp0batch_normalization_43/gamma/Read/ReadVariableOp/batch_normalization_43/beta/Read/ReadVariableOp6batch_normalization_43/moving_mean/Read/ReadVariableOp:batch_normalization_43/moving_variance/Read/ReadVariableOp$conv2d_56/kernel/Read/ReadVariableOp"conv2d_56/bias/Read/ReadVariableOp0batch_normalization_44/gamma/Read/ReadVariableOp/batch_normalization_44/beta/Read/ReadVariableOp6batch_normalization_44/moving_mean/Read/ReadVariableOp:batch_normalization_44/moving_variance/Read/ReadVariableOp$conv2d_57/kernel/Read/ReadVariableOp"conv2d_57/bias/Read/ReadVariableOpConst*!
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
 __inference__traced_save_2600401
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_56/kerneldense_56/biasbatch_normalization_42/gammabatch_normalization_42/beta"batch_normalization_42/moving_mean&batch_normalization_42/moving_variancedense_57/kerneldense_57/biasbatch_normalization_43/gammabatch_normalization_43/beta"batch_normalization_43/moving_mean&batch_normalization_43/moving_varianceconv2d_56/kernelconv2d_56/biasbatch_normalization_44/gammabatch_normalization_44/beta"batch_normalization_44/moving_mean&batch_normalization_44/moving_varianceconv2d_57/kernelconv2d_57/bias* 
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
#__inference__traced_restore_2600471??
?C
?	
J__inference_sequential_28_layer_call_and_return_conditional_losses_2599613
dense_56_input#
dense_56_2599559:	d?
dense_56_2599561:	?-
batch_normalization_42_2599564:	?-
batch_normalization_42_2599566:	?-
batch_normalization_42_2599568:	?-
batch_normalization_42_2599570:	?$
dense_57_2599574:
??1
dense_57_2599576:	?1-
batch_normalization_43_2599579:	?1-
batch_normalization_43_2599581:	?1-
batch_normalization_43_2599583:	?1-
batch_normalization_43_2599585:	?1,
conv2d_56_2599591:?@
conv2d_56_2599593:@,
batch_normalization_44_2599596:@,
batch_normalization_44_2599598:@,
batch_normalization_44_2599600:@,
batch_normalization_44_2599602:@+
conv2d_57_2599607:@
conv2d_57_2599609:
identity??.batch_normalization_42/StatefulPartitionedCall?.batch_normalization_43/StatefulPartitionedCall?.batch_normalization_44/StatefulPartitionedCall?!conv2d_56/StatefulPartitionedCall?!conv2d_57/StatefulPartitionedCall? dense_56/StatefulPartitionedCall? dense_57/StatefulPartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCalldense_56_inputdense_56_2599559dense_56_2599561*
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
E__inference_dense_56_layer_call_and_return_conditional_losses_25990782"
 dense_56/StatefulPartitionedCall?
.batch_normalization_42/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0batch_normalization_42_2599564batch_normalization_42_2599566batch_normalization_42_2599568batch_normalization_42_2599570*
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
S__inference_batch_normalization_42_layer_call_and_return_conditional_losses_259865720
.batch_normalization_42/StatefulPartitionedCall?
activation_28/PartitionedCallPartitionedCall7batch_normalization_42/StatefulPartitionedCall:output:0*
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
J__inference_activation_28_layer_call_and_return_conditional_losses_25990982
activation_28/PartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall&activation_28/PartitionedCall:output:0dense_57_2599574dense_57_2599576*
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
E__inference_dense_57_layer_call_and_return_conditional_losses_25991102"
 dense_57/StatefulPartitionedCall?
.batch_normalization_43/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0batch_normalization_43_2599579batch_normalization_43_2599581batch_normalization_43_2599583batch_normalization_43_2599585*
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
S__inference_batch_normalization_43_layer_call_and_return_conditional_losses_259881920
.batch_normalization_43/StatefulPartitionedCall?
activation_29/PartitionedCallPartitionedCall7batch_normalization_43/StatefulPartitionedCall:output:0*
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
J__inference_activation_29_layer_call_and_return_conditional_losses_25991302
activation_29/PartitionedCall?
reshape_14/PartitionedCallPartitionedCall&activation_29/PartitionedCall:output:0*
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
G__inference_reshape_14_layer_call_and_return_conditional_losses_25991462
reshape_14/PartitionedCall?
 up_sampling2d_28/PartitionedCallPartitionedCall#reshape_14/PartitionedCall:output:0*
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
M__inference_up_sampling2d_28_layer_call_and_return_conditional_losses_25989102"
 up_sampling2d_28/PartitionedCall?
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_28/PartitionedCall:output:0conv2d_56_2599591conv2d_56_2599593*
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
F__inference_conv2d_56_layer_call_and_return_conditional_losses_25991592#
!conv2d_56/StatefulPartitionedCall?
.batch_normalization_44/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0batch_normalization_44_2599596batch_normalization_44_2599598batch_normalization_44_2599600batch_normalization_44_2599602*
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
S__inference_batch_normalization_44_layer_call_and_return_conditional_losses_259898220
.batch_normalization_44/StatefulPartitionedCall?
leaky_re_lu_56/PartitionedCallPartitionedCall7batch_normalization_44/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_25991792 
leaky_re_lu_56/PartitionedCall?
 up_sampling2d_29/PartitionedCallPartitionedCall'leaky_re_lu_56/PartitionedCall:output:0*
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
M__inference_up_sampling2d_29_layer_call_and_return_conditional_losses_25990552"
 up_sampling2d_29/PartitionedCall?
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_29/PartitionedCall:output:0conv2d_57_2599607conv2d_57_2599609*
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
F__inference_conv2d_57_layer_call_and_return_conditional_losses_25991932#
!conv2d_57/StatefulPartitionedCall?
IdentityIdentity*conv2d_57/StatefulPartitionedCall:output:0/^batch_normalization_42/StatefulPartitionedCall/^batch_normalization_43/StatefulPartitionedCall/^batch_normalization_44/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_42/StatefulPartitionedCall.batch_normalization_42/StatefulPartitionedCall2`
.batch_normalization_43/StatefulPartitionedCall.batch_normalization_43/StatefulPartitionedCall2`
.batch_normalization_44/StatefulPartitionedCall.batch_normalization_44/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_56_input
?4
?	
 __inference__traced_save_2600401
file_prefix.
*savev2_dense_56_kernel_read_readvariableop,
(savev2_dense_56_bias_read_readvariableop;
7savev2_batch_normalization_42_gamma_read_readvariableop:
6savev2_batch_normalization_42_beta_read_readvariableopA
=savev2_batch_normalization_42_moving_mean_read_readvariableopE
Asavev2_batch_normalization_42_moving_variance_read_readvariableop.
*savev2_dense_57_kernel_read_readvariableop,
(savev2_dense_57_bias_read_readvariableop;
7savev2_batch_normalization_43_gamma_read_readvariableop:
6savev2_batch_normalization_43_beta_read_readvariableopA
=savev2_batch_normalization_43_moving_mean_read_readvariableopE
Asavev2_batch_normalization_43_moving_variance_read_readvariableop/
+savev2_conv2d_56_kernel_read_readvariableop-
)savev2_conv2d_56_bias_read_readvariableop;
7savev2_batch_normalization_44_gamma_read_readvariableop:
6savev2_batch_normalization_44_beta_read_readvariableopA
=savev2_batch_normalization_44_moving_mean_read_readvariableopE
Asavev2_batch_normalization_44_moving_variance_read_readvariableop/
+savev2_conv2d_57_kernel_read_readvariableop-
)savev2_conv2d_57_bias_read_readvariableop
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

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_56_kernel_read_readvariableop(savev2_dense_56_bias_read_readvariableop7savev2_batch_normalization_42_gamma_read_readvariableop6savev2_batch_normalization_42_beta_read_readvariableop=savev2_batch_normalization_42_moving_mean_read_readvariableopAsavev2_batch_normalization_42_moving_variance_read_readvariableop*savev2_dense_57_kernel_read_readvariableop(savev2_dense_57_bias_read_readvariableop7savev2_batch_normalization_43_gamma_read_readvariableop6savev2_batch_normalization_43_beta_read_readvariableop=savev2_batch_normalization_43_moving_mean_read_readvariableopAsavev2_batch_normalization_43_moving_variance_read_readvariableop+savev2_conv2d_56_kernel_read_readvariableop)savev2_conv2d_56_bias_read_readvariableop7savev2_batch_normalization_44_gamma_read_readvariableop6savev2_batch_normalization_44_beta_read_readvariableop=savev2_batch_normalization_44_moving_mean_read_readvariableopAsavev2_batch_normalization_44_moving_variance_read_readvariableop+savev2_conv2d_57_kernel_read_readvariableop)savev2_conv2d_57_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
?
E__inference_dense_57_layer_call_and_return_conditional_losses_2599110

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
?
/__inference_sequential_28_layer_call_fn_2599499
dense_56_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_56_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
J__inference_sequential_28_layer_call_and_return_conditional_losses_25994112
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
_user_specified_namedense_56_input
?
?
%__inference_signature_wrapper_2599660
dense_56_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_56_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
"__inference__wrapped_model_25985732
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
_user_specified_namedense_56_input
?C
?	
J__inference_sequential_28_layer_call_and_return_conditional_losses_2599411

inputs#
dense_56_2599357:	d?
dense_56_2599359:	?-
batch_normalization_42_2599362:	?-
batch_normalization_42_2599364:	?-
batch_normalization_42_2599366:	?-
batch_normalization_42_2599368:	?$
dense_57_2599372:
??1
dense_57_2599374:	?1-
batch_normalization_43_2599377:	?1-
batch_normalization_43_2599379:	?1-
batch_normalization_43_2599381:	?1-
batch_normalization_43_2599383:	?1,
conv2d_56_2599389:?@
conv2d_56_2599391:@,
batch_normalization_44_2599394:@,
batch_normalization_44_2599396:@,
batch_normalization_44_2599398:@,
batch_normalization_44_2599400:@+
conv2d_57_2599405:@
conv2d_57_2599407:
identity??.batch_normalization_42/StatefulPartitionedCall?.batch_normalization_43/StatefulPartitionedCall?.batch_normalization_44/StatefulPartitionedCall?!conv2d_56/StatefulPartitionedCall?!conv2d_57/StatefulPartitionedCall? dense_56/StatefulPartitionedCall? dense_57/StatefulPartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCallinputsdense_56_2599357dense_56_2599359*
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
E__inference_dense_56_layer_call_and_return_conditional_losses_25990782"
 dense_56/StatefulPartitionedCall?
.batch_normalization_42/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0batch_normalization_42_2599362batch_normalization_42_2599364batch_normalization_42_2599366batch_normalization_42_2599368*
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
S__inference_batch_normalization_42_layer_call_and_return_conditional_losses_259865720
.batch_normalization_42/StatefulPartitionedCall?
activation_28/PartitionedCallPartitionedCall7batch_normalization_42/StatefulPartitionedCall:output:0*
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
J__inference_activation_28_layer_call_and_return_conditional_losses_25990982
activation_28/PartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall&activation_28/PartitionedCall:output:0dense_57_2599372dense_57_2599374*
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
E__inference_dense_57_layer_call_and_return_conditional_losses_25991102"
 dense_57/StatefulPartitionedCall?
.batch_normalization_43/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0batch_normalization_43_2599377batch_normalization_43_2599379batch_normalization_43_2599381batch_normalization_43_2599383*
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
S__inference_batch_normalization_43_layer_call_and_return_conditional_losses_259881920
.batch_normalization_43/StatefulPartitionedCall?
activation_29/PartitionedCallPartitionedCall7batch_normalization_43/StatefulPartitionedCall:output:0*
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
J__inference_activation_29_layer_call_and_return_conditional_losses_25991302
activation_29/PartitionedCall?
reshape_14/PartitionedCallPartitionedCall&activation_29/PartitionedCall:output:0*
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
G__inference_reshape_14_layer_call_and_return_conditional_losses_25991462
reshape_14/PartitionedCall?
 up_sampling2d_28/PartitionedCallPartitionedCall#reshape_14/PartitionedCall:output:0*
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
M__inference_up_sampling2d_28_layer_call_and_return_conditional_losses_25989102"
 up_sampling2d_28/PartitionedCall?
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_28/PartitionedCall:output:0conv2d_56_2599389conv2d_56_2599391*
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
F__inference_conv2d_56_layer_call_and_return_conditional_losses_25991592#
!conv2d_56/StatefulPartitionedCall?
.batch_normalization_44/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0batch_normalization_44_2599394batch_normalization_44_2599396batch_normalization_44_2599398batch_normalization_44_2599400*
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
S__inference_batch_normalization_44_layer_call_and_return_conditional_losses_259898220
.batch_normalization_44/StatefulPartitionedCall?
leaky_re_lu_56/PartitionedCallPartitionedCall7batch_normalization_44/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_25991792 
leaky_re_lu_56/PartitionedCall?
 up_sampling2d_29/PartitionedCallPartitionedCall'leaky_re_lu_56/PartitionedCall:output:0*
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
M__inference_up_sampling2d_29_layer_call_and_return_conditional_losses_25990552"
 up_sampling2d_29/PartitionedCall?
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_29/PartitionedCall:output:0conv2d_57_2599405conv2d_57_2599407*
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
F__inference_conv2d_57_layer_call_and_return_conditional_losses_25991932#
!conv2d_57/StatefulPartitionedCall?
IdentityIdentity*conv2d_57/StatefulPartitionedCall:output:0/^batch_normalization_42/StatefulPartitionedCall/^batch_normalization_43/StatefulPartitionedCall/^batch_normalization_44/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_42/StatefulPartitionedCall.batch_normalization_42/StatefulPartitionedCall2`
.batch_normalization_43/StatefulPartitionedCall.batch_normalization_43/StatefulPartitionedCall2`
.batch_normalization_44/StatefulPartitionedCall.batch_normalization_44/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_44_layer_call_and_return_conditional_losses_2600288

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
8__inference_batch_normalization_44_layer_call_fn_2600239

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
S__inference_batch_normalization_44_layer_call_and_return_conditional_losses_25989382
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
F__inference_conv2d_57_layer_call_and_return_conditional_losses_2599193

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
S__inference_batch_normalization_42_layer_call_and_return_conditional_losses_2598597

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
J__inference_sequential_28_layer_call_and_return_conditional_losses_2599200

inputs#
dense_56_2599079:	d?
dense_56_2599081:	?-
batch_normalization_42_2599084:	?-
batch_normalization_42_2599086:	?-
batch_normalization_42_2599088:	?-
batch_normalization_42_2599090:	?$
dense_57_2599111:
??1
dense_57_2599113:	?1-
batch_normalization_43_2599116:	?1-
batch_normalization_43_2599118:	?1-
batch_normalization_43_2599120:	?1-
batch_normalization_43_2599122:	?1,
conv2d_56_2599160:?@
conv2d_56_2599162:@,
batch_normalization_44_2599165:@,
batch_normalization_44_2599167:@,
batch_normalization_44_2599169:@,
batch_normalization_44_2599171:@+
conv2d_57_2599194:@
conv2d_57_2599196:
identity??.batch_normalization_42/StatefulPartitionedCall?.batch_normalization_43/StatefulPartitionedCall?.batch_normalization_44/StatefulPartitionedCall?!conv2d_56/StatefulPartitionedCall?!conv2d_57/StatefulPartitionedCall? dense_56/StatefulPartitionedCall? dense_57/StatefulPartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCallinputsdense_56_2599079dense_56_2599081*
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
E__inference_dense_56_layer_call_and_return_conditional_losses_25990782"
 dense_56/StatefulPartitionedCall?
.batch_normalization_42/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0batch_normalization_42_2599084batch_normalization_42_2599086batch_normalization_42_2599088batch_normalization_42_2599090*
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
S__inference_batch_normalization_42_layer_call_and_return_conditional_losses_259859720
.batch_normalization_42/StatefulPartitionedCall?
activation_28/PartitionedCallPartitionedCall7batch_normalization_42/StatefulPartitionedCall:output:0*
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
J__inference_activation_28_layer_call_and_return_conditional_losses_25990982
activation_28/PartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall&activation_28/PartitionedCall:output:0dense_57_2599111dense_57_2599113*
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
E__inference_dense_57_layer_call_and_return_conditional_losses_25991102"
 dense_57/StatefulPartitionedCall?
.batch_normalization_43/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0batch_normalization_43_2599116batch_normalization_43_2599118batch_normalization_43_2599120batch_normalization_43_2599122*
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
S__inference_batch_normalization_43_layer_call_and_return_conditional_losses_259875920
.batch_normalization_43/StatefulPartitionedCall?
activation_29/PartitionedCallPartitionedCall7batch_normalization_43/StatefulPartitionedCall:output:0*
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
J__inference_activation_29_layer_call_and_return_conditional_losses_25991302
activation_29/PartitionedCall?
reshape_14/PartitionedCallPartitionedCall&activation_29/PartitionedCall:output:0*
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
G__inference_reshape_14_layer_call_and_return_conditional_losses_25991462
reshape_14/PartitionedCall?
 up_sampling2d_28/PartitionedCallPartitionedCall#reshape_14/PartitionedCall:output:0*
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
M__inference_up_sampling2d_28_layer_call_and_return_conditional_losses_25989102"
 up_sampling2d_28/PartitionedCall?
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_28/PartitionedCall:output:0conv2d_56_2599160conv2d_56_2599162*
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
F__inference_conv2d_56_layer_call_and_return_conditional_losses_25991592#
!conv2d_56/StatefulPartitionedCall?
.batch_normalization_44/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0batch_normalization_44_2599165batch_normalization_44_2599167batch_normalization_44_2599169batch_normalization_44_2599171*
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
S__inference_batch_normalization_44_layer_call_and_return_conditional_losses_259893820
.batch_normalization_44/StatefulPartitionedCall?
leaky_re_lu_56/PartitionedCallPartitionedCall7batch_normalization_44/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_25991792 
leaky_re_lu_56/PartitionedCall?
 up_sampling2d_29/PartitionedCallPartitionedCall'leaky_re_lu_56/PartitionedCall:output:0*
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
M__inference_up_sampling2d_29_layer_call_and_return_conditional_losses_25990552"
 up_sampling2d_29/PartitionedCall?
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_29/PartitionedCall:output:0conv2d_57_2599194conv2d_57_2599196*
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
F__inference_conv2d_57_layer_call_and_return_conditional_losses_25991932#
!conv2d_57/StatefulPartitionedCall?
IdentityIdentity*conv2d_57/StatefulPartitionedCall:output:0/^batch_normalization_42/StatefulPartitionedCall/^batch_normalization_43/StatefulPartitionedCall/^batch_normalization_44/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_42/StatefulPartitionedCall.batch_normalization_42/StatefulPartitionedCall2`
.batch_normalization_43/StatefulPartitionedCall.batch_normalization_43/StatefulPartitionedCall2`
.batch_normalization_44/StatefulPartitionedCall.batch_normalization_44/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
i
M__inference_up_sampling2d_28_layer_call_and_return_conditional_losses_2598910

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
c
G__inference_reshape_14_layer_call_and_return_conditional_losses_2600207

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
J__inference_sequential_28_layer_call_and_return_conditional_losses_2599556
dense_56_input#
dense_56_2599502:	d?
dense_56_2599504:	?-
batch_normalization_42_2599507:	?-
batch_normalization_42_2599509:	?-
batch_normalization_42_2599511:	?-
batch_normalization_42_2599513:	?$
dense_57_2599517:
??1
dense_57_2599519:	?1-
batch_normalization_43_2599522:	?1-
batch_normalization_43_2599524:	?1-
batch_normalization_43_2599526:	?1-
batch_normalization_43_2599528:	?1,
conv2d_56_2599534:?@
conv2d_56_2599536:@,
batch_normalization_44_2599539:@,
batch_normalization_44_2599541:@,
batch_normalization_44_2599543:@,
batch_normalization_44_2599545:@+
conv2d_57_2599550:@
conv2d_57_2599552:
identity??.batch_normalization_42/StatefulPartitionedCall?.batch_normalization_43/StatefulPartitionedCall?.batch_normalization_44/StatefulPartitionedCall?!conv2d_56/StatefulPartitionedCall?!conv2d_57/StatefulPartitionedCall? dense_56/StatefulPartitionedCall? dense_57/StatefulPartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCalldense_56_inputdense_56_2599502dense_56_2599504*
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
E__inference_dense_56_layer_call_and_return_conditional_losses_25990782"
 dense_56/StatefulPartitionedCall?
.batch_normalization_42/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0batch_normalization_42_2599507batch_normalization_42_2599509batch_normalization_42_2599511batch_normalization_42_2599513*
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
S__inference_batch_normalization_42_layer_call_and_return_conditional_losses_259859720
.batch_normalization_42/StatefulPartitionedCall?
activation_28/PartitionedCallPartitionedCall7batch_normalization_42/StatefulPartitionedCall:output:0*
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
J__inference_activation_28_layer_call_and_return_conditional_losses_25990982
activation_28/PartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall&activation_28/PartitionedCall:output:0dense_57_2599517dense_57_2599519*
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
E__inference_dense_57_layer_call_and_return_conditional_losses_25991102"
 dense_57/StatefulPartitionedCall?
.batch_normalization_43/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0batch_normalization_43_2599522batch_normalization_43_2599524batch_normalization_43_2599526batch_normalization_43_2599528*
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
S__inference_batch_normalization_43_layer_call_and_return_conditional_losses_259875920
.batch_normalization_43/StatefulPartitionedCall?
activation_29/PartitionedCallPartitionedCall7batch_normalization_43/StatefulPartitionedCall:output:0*
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
J__inference_activation_29_layer_call_and_return_conditional_losses_25991302
activation_29/PartitionedCall?
reshape_14/PartitionedCallPartitionedCall&activation_29/PartitionedCall:output:0*
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
G__inference_reshape_14_layer_call_and_return_conditional_losses_25991462
reshape_14/PartitionedCall?
 up_sampling2d_28/PartitionedCallPartitionedCall#reshape_14/PartitionedCall:output:0*
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
M__inference_up_sampling2d_28_layer_call_and_return_conditional_losses_25989102"
 up_sampling2d_28/PartitionedCall?
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_28/PartitionedCall:output:0conv2d_56_2599534conv2d_56_2599536*
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
F__inference_conv2d_56_layer_call_and_return_conditional_losses_25991592#
!conv2d_56/StatefulPartitionedCall?
.batch_normalization_44/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0batch_normalization_44_2599539batch_normalization_44_2599541batch_normalization_44_2599543batch_normalization_44_2599545*
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
S__inference_batch_normalization_44_layer_call_and_return_conditional_losses_259893820
.batch_normalization_44/StatefulPartitionedCall?
leaky_re_lu_56/PartitionedCallPartitionedCall7batch_normalization_44/StatefulPartitionedCall:output:0*
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
K__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_25991792 
leaky_re_lu_56/PartitionedCall?
 up_sampling2d_29/PartitionedCallPartitionedCall'leaky_re_lu_56/PartitionedCall:output:0*
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
M__inference_up_sampling2d_29_layer_call_and_return_conditional_losses_25990552"
 up_sampling2d_29/PartitionedCall?
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_29/PartitionedCall:output:0conv2d_57_2599550conv2d_57_2599552*
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
F__inference_conv2d_57_layer_call_and_return_conditional_losses_25991932#
!conv2d_57/StatefulPartitionedCall?
IdentityIdentity*conv2d_57/StatefulPartitionedCall:output:0/^batch_normalization_42/StatefulPartitionedCall/^batch_normalization_43/StatefulPartitionedCall/^batch_normalization_44/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_42/StatefulPartitionedCall.batch_normalization_42/StatefulPartitionedCall2`
.batch_normalization_43/StatefulPartitionedCall.batch_normalization_43/StatefulPartitionedCall2`
.batch_normalization_44/StatefulPartitionedCall.batch_normalization_44/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_56_input
?
?
8__inference_batch_normalization_44_layer_call_fn_2600252

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
S__inference_batch_normalization_44_layer_call_and_return_conditional_losses_25989822
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
?
K
/__inference_activation_29_layer_call_fn_2600183

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
J__inference_activation_29_layer_call_and_return_conditional_losses_25991302
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
?
?
+__inference_conv2d_57_layer_call_fn_2600307

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
F__inference_conv2d_57_layer_call_and_return_conditional_losses_25991932
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
+__inference_conv2d_56_layer_call_fn_2600216

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
F__inference_conv2d_56_layer_call_and_return_conditional_losses_25991592
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
c
G__inference_reshape_14_layer_call_and_return_conditional_losses_2599146

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
?
g
K__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_2599179

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
i
M__inference_up_sampling2d_29_layer_call_and_return_conditional_losses_2599055

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
?
?
S__inference_batch_normalization_44_layer_call_and_return_conditional_losses_2598938

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
?
F__inference_conv2d_56_layer_call_and_return_conditional_losses_2600226

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
8__inference_batch_normalization_43_layer_call_fn_2600111

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
S__inference_batch_normalization_43_layer_call_and_return_conditional_losses_25987592
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
?
?
/__inference_sequential_28_layer_call_fn_2599750

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
J__inference_sequential_28_layer_call_and_return_conditional_losses_25994112
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
?
E__inference_dense_57_layer_call_and_return_conditional_losses_2600098

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
?
?
S__inference_batch_normalization_42_layer_call_and_return_conditional_losses_2600035

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
L
0__inference_leaky_re_lu_56_layer_call_fn_2600293

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
K__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_25991792
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
?
N
2__inference_up_sampling2d_29_layer_call_fn_2599061

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
M__inference_up_sampling2d_29_layer_call_and_return_conditional_losses_25990552
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
?
H
,__inference_reshape_14_layer_call_fn_2600193

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
G__inference_reshape_14_layer_call_and_return_conditional_losses_25991462
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
?*
?
S__inference_batch_normalization_43_layer_call_and_return_conditional_losses_2598819

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
8__inference_batch_normalization_42_layer_call_fn_2600015

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
S__inference_batch_normalization_42_layer_call_and_return_conditional_losses_25986572
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
?
E__inference_dense_56_layer_call_and_return_conditional_losses_2599989

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
?
?
/__inference_sequential_28_layer_call_fn_2599243
dense_56_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_56_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
J__inference_sequential_28_layer_call_and_return_conditional_losses_25992002
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
_user_specified_namedense_56_input
?
f
J__inference_activation_28_layer_call_and_return_conditional_losses_2599098

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
?
?
8__inference_batch_normalization_43_layer_call_fn_2600124

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
S__inference_batch_normalization_43_layer_call_and_return_conditional_losses_25988192
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
??
?
"__inference__wrapped_model_2598573
dense_56_inputH
5sequential_28_dense_56_matmul_readvariableop_resource:	d?E
6sequential_28_dense_56_biasadd_readvariableop_resource:	?U
Fsequential_28_batch_normalization_42_batchnorm_readvariableop_resource:	?Y
Jsequential_28_batch_normalization_42_batchnorm_mul_readvariableop_resource:	?W
Hsequential_28_batch_normalization_42_batchnorm_readvariableop_1_resource:	?W
Hsequential_28_batch_normalization_42_batchnorm_readvariableop_2_resource:	?I
5sequential_28_dense_57_matmul_readvariableop_resource:
??1E
6sequential_28_dense_57_biasadd_readvariableop_resource:	?1U
Fsequential_28_batch_normalization_43_batchnorm_readvariableop_resource:	?1Y
Jsequential_28_batch_normalization_43_batchnorm_mul_readvariableop_resource:	?1W
Hsequential_28_batch_normalization_43_batchnorm_readvariableop_1_resource:	?1W
Hsequential_28_batch_normalization_43_batchnorm_readvariableop_2_resource:	?1Q
6sequential_28_conv2d_56_conv2d_readvariableop_resource:?@E
7sequential_28_conv2d_56_biasadd_readvariableop_resource:@J
<sequential_28_batch_normalization_44_readvariableop_resource:@L
>sequential_28_batch_normalization_44_readvariableop_1_resource:@[
Msequential_28_batch_normalization_44_fusedbatchnormv3_readvariableop_resource:@]
Osequential_28_batch_normalization_44_fusedbatchnormv3_readvariableop_1_resource:@P
6sequential_28_conv2d_57_conv2d_readvariableop_resource:@E
7sequential_28_conv2d_57_biasadd_readvariableop_resource:
identity??=sequential_28/batch_normalization_42/batchnorm/ReadVariableOp??sequential_28/batch_normalization_42/batchnorm/ReadVariableOp_1??sequential_28/batch_normalization_42/batchnorm/ReadVariableOp_2?Asequential_28/batch_normalization_42/batchnorm/mul/ReadVariableOp?=sequential_28/batch_normalization_43/batchnorm/ReadVariableOp??sequential_28/batch_normalization_43/batchnorm/ReadVariableOp_1??sequential_28/batch_normalization_43/batchnorm/ReadVariableOp_2?Asequential_28/batch_normalization_43/batchnorm/mul/ReadVariableOp?Dsequential_28/batch_normalization_44/FusedBatchNormV3/ReadVariableOp?Fsequential_28/batch_normalization_44/FusedBatchNormV3/ReadVariableOp_1?3sequential_28/batch_normalization_44/ReadVariableOp?5sequential_28/batch_normalization_44/ReadVariableOp_1?.sequential_28/conv2d_56/BiasAdd/ReadVariableOp?-sequential_28/conv2d_56/Conv2D/ReadVariableOp?.sequential_28/conv2d_57/BiasAdd/ReadVariableOp?-sequential_28/conv2d_57/Conv2D/ReadVariableOp?-sequential_28/dense_56/BiasAdd/ReadVariableOp?,sequential_28/dense_56/MatMul/ReadVariableOp?-sequential_28/dense_57/BiasAdd/ReadVariableOp?,sequential_28/dense_57/MatMul/ReadVariableOp?
,sequential_28/dense_56/MatMul/ReadVariableOpReadVariableOp5sequential_28_dense_56_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02.
,sequential_28/dense_56/MatMul/ReadVariableOp?
sequential_28/dense_56/MatMulMatMuldense_56_input4sequential_28/dense_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_28/dense_56/MatMul?
-sequential_28/dense_56/BiasAdd/ReadVariableOpReadVariableOp6sequential_28_dense_56_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_28/dense_56/BiasAdd/ReadVariableOp?
sequential_28/dense_56/BiasAddBiasAdd'sequential_28/dense_56/MatMul:product:05sequential_28/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_28/dense_56/BiasAdd?
=sequential_28/batch_normalization_42/batchnorm/ReadVariableOpReadVariableOpFsequential_28_batch_normalization_42_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=sequential_28/batch_normalization_42/batchnorm/ReadVariableOp?
4sequential_28/batch_normalization_42/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_28/batch_normalization_42/batchnorm/add/y?
2sequential_28/batch_normalization_42/batchnorm/addAddV2Esequential_28/batch_normalization_42/batchnorm/ReadVariableOp:value:0=sequential_28/batch_normalization_42/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?24
2sequential_28/batch_normalization_42/batchnorm/add?
4sequential_28/batch_normalization_42/batchnorm/RsqrtRsqrt6sequential_28/batch_normalization_42/batchnorm/add:z:0*
T0*
_output_shapes	
:?26
4sequential_28/batch_normalization_42/batchnorm/Rsqrt?
Asequential_28/batch_normalization_42/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_28_batch_normalization_42_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02C
Asequential_28/batch_normalization_42/batchnorm/mul/ReadVariableOp?
2sequential_28/batch_normalization_42/batchnorm/mulMul8sequential_28/batch_normalization_42/batchnorm/Rsqrt:y:0Isequential_28/batch_normalization_42/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?24
2sequential_28/batch_normalization_42/batchnorm/mul?
4sequential_28/batch_normalization_42/batchnorm/mul_1Mul'sequential_28/dense_56/BiasAdd:output:06sequential_28/batch_normalization_42/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????26
4sequential_28/batch_normalization_42/batchnorm/mul_1?
?sequential_28/batch_normalization_42/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_28_batch_normalization_42_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02A
?sequential_28/batch_normalization_42/batchnorm/ReadVariableOp_1?
4sequential_28/batch_normalization_42/batchnorm/mul_2MulGsequential_28/batch_normalization_42/batchnorm/ReadVariableOp_1:value:06sequential_28/batch_normalization_42/batchnorm/mul:z:0*
T0*
_output_shapes	
:?26
4sequential_28/batch_normalization_42/batchnorm/mul_2?
?sequential_28/batch_normalization_42/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_28_batch_normalization_42_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02A
?sequential_28/batch_normalization_42/batchnorm/ReadVariableOp_2?
2sequential_28/batch_normalization_42/batchnorm/subSubGsequential_28/batch_normalization_42/batchnorm/ReadVariableOp_2:value:08sequential_28/batch_normalization_42/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?24
2sequential_28/batch_normalization_42/batchnorm/sub?
4sequential_28/batch_normalization_42/batchnorm/add_1AddV28sequential_28/batch_normalization_42/batchnorm/mul_1:z:06sequential_28/batch_normalization_42/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????26
4sequential_28/batch_normalization_42/batchnorm/add_1?
 sequential_28/activation_28/ReluRelu8sequential_28/batch_normalization_42/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2"
 sequential_28/activation_28/Relu?
,sequential_28/dense_57/MatMul/ReadVariableOpReadVariableOp5sequential_28_dense_57_matmul_readvariableop_resource* 
_output_shapes
:
??1*
dtype02.
,sequential_28/dense_57/MatMul/ReadVariableOp?
sequential_28/dense_57/MatMulMatMul.sequential_28/activation_28/Relu:activations:04sequential_28/dense_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
sequential_28/dense_57/MatMul?
-sequential_28/dense_57/BiasAdd/ReadVariableOpReadVariableOp6sequential_28_dense_57_biasadd_readvariableop_resource*
_output_shapes	
:?1*
dtype02/
-sequential_28/dense_57/BiasAdd/ReadVariableOp?
sequential_28/dense_57/BiasAddBiasAdd'sequential_28/dense_57/MatMul:product:05sequential_28/dense_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12 
sequential_28/dense_57/BiasAdd?
=sequential_28/batch_normalization_43/batchnorm/ReadVariableOpReadVariableOpFsequential_28_batch_normalization_43_batchnorm_readvariableop_resource*
_output_shapes	
:?1*
dtype02?
=sequential_28/batch_normalization_43/batchnorm/ReadVariableOp?
4sequential_28/batch_normalization_43/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:26
4sequential_28/batch_normalization_43/batchnorm/add/y?
2sequential_28/batch_normalization_43/batchnorm/addAddV2Esequential_28/batch_normalization_43/batchnorm/ReadVariableOp:value:0=sequential_28/batch_normalization_43/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?124
2sequential_28/batch_normalization_43/batchnorm/add?
4sequential_28/batch_normalization_43/batchnorm/RsqrtRsqrt6sequential_28/batch_normalization_43/batchnorm/add:z:0*
T0*
_output_shapes	
:?126
4sequential_28/batch_normalization_43/batchnorm/Rsqrt?
Asequential_28/batch_normalization_43/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_28_batch_normalization_43_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?1*
dtype02C
Asequential_28/batch_normalization_43/batchnorm/mul/ReadVariableOp?
2sequential_28/batch_normalization_43/batchnorm/mulMul8sequential_28/batch_normalization_43/batchnorm/Rsqrt:y:0Isequential_28/batch_normalization_43/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?124
2sequential_28/batch_normalization_43/batchnorm/mul?
4sequential_28/batch_normalization_43/batchnorm/mul_1Mul'sequential_28/dense_57/BiasAdd:output:06sequential_28/batch_normalization_43/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????126
4sequential_28/batch_normalization_43/batchnorm/mul_1?
?sequential_28/batch_normalization_43/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_28_batch_normalization_43_batchnorm_readvariableop_1_resource*
_output_shapes	
:?1*
dtype02A
?sequential_28/batch_normalization_43/batchnorm/ReadVariableOp_1?
4sequential_28/batch_normalization_43/batchnorm/mul_2MulGsequential_28/batch_normalization_43/batchnorm/ReadVariableOp_1:value:06sequential_28/batch_normalization_43/batchnorm/mul:z:0*
T0*
_output_shapes	
:?126
4sequential_28/batch_normalization_43/batchnorm/mul_2?
?sequential_28/batch_normalization_43/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_28_batch_normalization_43_batchnorm_readvariableop_2_resource*
_output_shapes	
:?1*
dtype02A
?sequential_28/batch_normalization_43/batchnorm/ReadVariableOp_2?
2sequential_28/batch_normalization_43/batchnorm/subSubGsequential_28/batch_normalization_43/batchnorm/ReadVariableOp_2:value:08sequential_28/batch_normalization_43/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?124
2sequential_28/batch_normalization_43/batchnorm/sub?
4sequential_28/batch_normalization_43/batchnorm/add_1AddV28sequential_28/batch_normalization_43/batchnorm/mul_1:z:06sequential_28/batch_normalization_43/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????126
4sequential_28/batch_normalization_43/batchnorm/add_1?
 sequential_28/activation_29/ReluRelu8sequential_28/batch_normalization_43/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????12"
 sequential_28/activation_29/Relu?
sequential_28/reshape_14/ShapeShape.sequential_28/activation_29/Relu:activations:0*
T0*
_output_shapes
:2 
sequential_28/reshape_14/Shape?
,sequential_28/reshape_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_28/reshape_14/strided_slice/stack?
.sequential_28/reshape_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_28/reshape_14/strided_slice/stack_1?
.sequential_28/reshape_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_28/reshape_14/strided_slice/stack_2?
&sequential_28/reshape_14/strided_sliceStridedSlice'sequential_28/reshape_14/Shape:output:05sequential_28/reshape_14/strided_slice/stack:output:07sequential_28/reshape_14/strided_slice/stack_1:output:07sequential_28/reshape_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_28/reshape_14/strided_slice?
(sequential_28/reshape_14/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_28/reshape_14/Reshape/shape/1?
(sequential_28/reshape_14/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_28/reshape_14/Reshape/shape/2?
(sequential_28/reshape_14/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2*
(sequential_28/reshape_14/Reshape/shape/3?
&sequential_28/reshape_14/Reshape/shapePack/sequential_28/reshape_14/strided_slice:output:01sequential_28/reshape_14/Reshape/shape/1:output:01sequential_28/reshape_14/Reshape/shape/2:output:01sequential_28/reshape_14/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_28/reshape_14/Reshape/shape?
 sequential_28/reshape_14/ReshapeReshape.sequential_28/activation_29/Relu:activations:0/sequential_28/reshape_14/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2"
 sequential_28/reshape_14/Reshape?
$sequential_28/up_sampling2d_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_28/up_sampling2d_28/Const?
&sequential_28/up_sampling2d_28/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&sequential_28/up_sampling2d_28/Const_1?
"sequential_28/up_sampling2d_28/mulMul-sequential_28/up_sampling2d_28/Const:output:0/sequential_28/up_sampling2d_28/Const_1:output:0*
T0*
_output_shapes
:2$
"sequential_28/up_sampling2d_28/mul?
;sequential_28/up_sampling2d_28/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_28/reshape_14/Reshape:output:0&sequential_28/up_sampling2d_28/mul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(2=
;sequential_28/up_sampling2d_28/resize/ResizeNearestNeighbor?
-sequential_28/conv2d_56/Conv2D/ReadVariableOpReadVariableOp6sequential_28_conv2d_56_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02/
-sequential_28/conv2d_56/Conv2D/ReadVariableOp?
sequential_28/conv2d_56/Conv2DConv2DLsequential_28/up_sampling2d_28/resize/ResizeNearestNeighbor:resized_images:05sequential_28/conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2 
sequential_28/conv2d_56/Conv2D?
.sequential_28/conv2d_56/BiasAdd/ReadVariableOpReadVariableOp7sequential_28_conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_28/conv2d_56/BiasAdd/ReadVariableOp?
sequential_28/conv2d_56/BiasAddBiasAdd'sequential_28/conv2d_56/Conv2D:output:06sequential_28/conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2!
sequential_28/conv2d_56/BiasAdd?
3sequential_28/batch_normalization_44/ReadVariableOpReadVariableOp<sequential_28_batch_normalization_44_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_28/batch_normalization_44/ReadVariableOp?
5sequential_28/batch_normalization_44/ReadVariableOp_1ReadVariableOp>sequential_28_batch_normalization_44_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_28/batch_normalization_44/ReadVariableOp_1?
Dsequential_28/batch_normalization_44/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_28_batch_normalization_44_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_28/batch_normalization_44/FusedBatchNormV3/ReadVariableOp?
Fsequential_28/batch_normalization_44/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_28_batch_normalization_44_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_28/batch_normalization_44/FusedBatchNormV3/ReadVariableOp_1?
5sequential_28/batch_normalization_44/FusedBatchNormV3FusedBatchNormV3(sequential_28/conv2d_56/BiasAdd:output:0;sequential_28/batch_normalization_44/ReadVariableOp:value:0=sequential_28/batch_normalization_44/ReadVariableOp_1:value:0Lsequential_28/batch_normalization_44/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_28/batch_normalization_44/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 27
5sequential_28/batch_normalization_44/FusedBatchNormV3?
&sequential_28/leaky_re_lu_56/LeakyRelu	LeakyRelu9sequential_28/batch_normalization_44/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@2(
&sequential_28/leaky_re_lu_56/LeakyRelu?
$sequential_28/up_sampling2d_29/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_28/up_sampling2d_29/Const?
&sequential_28/up_sampling2d_29/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&sequential_28/up_sampling2d_29/Const_1?
"sequential_28/up_sampling2d_29/mulMul-sequential_28/up_sampling2d_29/Const:output:0/sequential_28/up_sampling2d_29/Const_1:output:0*
T0*
_output_shapes
:2$
"sequential_28/up_sampling2d_29/mul?
;sequential_28/up_sampling2d_29/resize/ResizeNearestNeighborResizeNearestNeighbor4sequential_28/leaky_re_lu_56/LeakyRelu:activations:0&sequential_28/up_sampling2d_29/mul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(2=
;sequential_28/up_sampling2d_29/resize/ResizeNearestNeighbor?
-sequential_28/conv2d_57/Conv2D/ReadVariableOpReadVariableOp6sequential_28_conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02/
-sequential_28/conv2d_57/Conv2D/ReadVariableOp?
sequential_28/conv2d_57/Conv2DConv2DLsequential_28/up_sampling2d_29/resize/ResizeNearestNeighbor:resized_images:05sequential_28/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2 
sequential_28/conv2d_57/Conv2D?
.sequential_28/conv2d_57/BiasAdd/ReadVariableOpReadVariableOp7sequential_28_conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_28/conv2d_57/BiasAdd/ReadVariableOp?
sequential_28/conv2d_57/BiasAddBiasAdd'sequential_28/conv2d_57/Conv2D:output:06sequential_28/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2!
sequential_28/conv2d_57/BiasAdd?
sequential_28/conv2d_57/TanhTanh(sequential_28/conv2d_57/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
sequential_28/conv2d_57/Tanh?

IdentityIdentity sequential_28/conv2d_57/Tanh:y:0>^sequential_28/batch_normalization_42/batchnorm/ReadVariableOp@^sequential_28/batch_normalization_42/batchnorm/ReadVariableOp_1@^sequential_28/batch_normalization_42/batchnorm/ReadVariableOp_2B^sequential_28/batch_normalization_42/batchnorm/mul/ReadVariableOp>^sequential_28/batch_normalization_43/batchnorm/ReadVariableOp@^sequential_28/batch_normalization_43/batchnorm/ReadVariableOp_1@^sequential_28/batch_normalization_43/batchnorm/ReadVariableOp_2B^sequential_28/batch_normalization_43/batchnorm/mul/ReadVariableOpE^sequential_28/batch_normalization_44/FusedBatchNormV3/ReadVariableOpG^sequential_28/batch_normalization_44/FusedBatchNormV3/ReadVariableOp_14^sequential_28/batch_normalization_44/ReadVariableOp6^sequential_28/batch_normalization_44/ReadVariableOp_1/^sequential_28/conv2d_56/BiasAdd/ReadVariableOp.^sequential_28/conv2d_56/Conv2D/ReadVariableOp/^sequential_28/conv2d_57/BiasAdd/ReadVariableOp.^sequential_28/conv2d_57/Conv2D/ReadVariableOp.^sequential_28/dense_56/BiasAdd/ReadVariableOp-^sequential_28/dense_56/MatMul/ReadVariableOp.^sequential_28/dense_57/BiasAdd/ReadVariableOp-^sequential_28/dense_57/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2~
=sequential_28/batch_normalization_42/batchnorm/ReadVariableOp=sequential_28/batch_normalization_42/batchnorm/ReadVariableOp2?
?sequential_28/batch_normalization_42/batchnorm/ReadVariableOp_1?sequential_28/batch_normalization_42/batchnorm/ReadVariableOp_12?
?sequential_28/batch_normalization_42/batchnorm/ReadVariableOp_2?sequential_28/batch_normalization_42/batchnorm/ReadVariableOp_22?
Asequential_28/batch_normalization_42/batchnorm/mul/ReadVariableOpAsequential_28/batch_normalization_42/batchnorm/mul/ReadVariableOp2~
=sequential_28/batch_normalization_43/batchnorm/ReadVariableOp=sequential_28/batch_normalization_43/batchnorm/ReadVariableOp2?
?sequential_28/batch_normalization_43/batchnorm/ReadVariableOp_1?sequential_28/batch_normalization_43/batchnorm/ReadVariableOp_12?
?sequential_28/batch_normalization_43/batchnorm/ReadVariableOp_2?sequential_28/batch_normalization_43/batchnorm/ReadVariableOp_22?
Asequential_28/batch_normalization_43/batchnorm/mul/ReadVariableOpAsequential_28/batch_normalization_43/batchnorm/mul/ReadVariableOp2?
Dsequential_28/batch_normalization_44/FusedBatchNormV3/ReadVariableOpDsequential_28/batch_normalization_44/FusedBatchNormV3/ReadVariableOp2?
Fsequential_28/batch_normalization_44/FusedBatchNormV3/ReadVariableOp_1Fsequential_28/batch_normalization_44/FusedBatchNormV3/ReadVariableOp_12j
3sequential_28/batch_normalization_44/ReadVariableOp3sequential_28/batch_normalization_44/ReadVariableOp2n
5sequential_28/batch_normalization_44/ReadVariableOp_15sequential_28/batch_normalization_44/ReadVariableOp_12`
.sequential_28/conv2d_56/BiasAdd/ReadVariableOp.sequential_28/conv2d_56/BiasAdd/ReadVariableOp2^
-sequential_28/conv2d_56/Conv2D/ReadVariableOp-sequential_28/conv2d_56/Conv2D/ReadVariableOp2`
.sequential_28/conv2d_57/BiasAdd/ReadVariableOp.sequential_28/conv2d_57/BiasAdd/ReadVariableOp2^
-sequential_28/conv2d_57/Conv2D/ReadVariableOp-sequential_28/conv2d_57/Conv2D/ReadVariableOp2^
-sequential_28/dense_56/BiasAdd/ReadVariableOp-sequential_28/dense_56/BiasAdd/ReadVariableOp2\
,sequential_28/dense_56/MatMul/ReadVariableOp,sequential_28/dense_56/MatMul/ReadVariableOp2^
-sequential_28/dense_57/BiasAdd/ReadVariableOp-sequential_28/dense_57/BiasAdd/ReadVariableOp2\
,sequential_28/dense_57/MatMul/ReadVariableOp,sequential_28/dense_57/MatMul/ReadVariableOp:W S
'
_output_shapes
:?????????d
(
_user_specified_namedense_56_input
?Y
?
#__inference__traced_restore_2600471
file_prefix3
 assignvariableop_dense_56_kernel:	d?/
 assignvariableop_1_dense_56_bias:	?>
/assignvariableop_2_batch_normalization_42_gamma:	?=
.assignvariableop_3_batch_normalization_42_beta:	?D
5assignvariableop_4_batch_normalization_42_moving_mean:	?H
9assignvariableop_5_batch_normalization_42_moving_variance:	?6
"assignvariableop_6_dense_57_kernel:
??1/
 assignvariableop_7_dense_57_bias:	?1>
/assignvariableop_8_batch_normalization_43_gamma:	?1=
.assignvariableop_9_batch_normalization_43_beta:	?1E
6assignvariableop_10_batch_normalization_43_moving_mean:	?1I
:assignvariableop_11_batch_normalization_43_moving_variance:	?1?
$assignvariableop_12_conv2d_56_kernel:?@0
"assignvariableop_13_conv2d_56_bias:@>
0assignvariableop_14_batch_normalization_44_gamma:@=
/assignvariableop_15_batch_normalization_44_beta:@D
6assignvariableop_16_batch_normalization_44_moving_mean:@H
:assignvariableop_17_batch_normalization_44_moving_variance:@>
$assignvariableop_18_conv2d_57_kernel:@0
"assignvariableop_19_conv2d_57_bias:
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
AssignVariableOpAssignVariableOp assignvariableop_dense_56_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_56_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_42_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_42_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_42_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_42_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_57_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_57_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_43_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_43_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_43_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_43_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_56_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_56_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_44_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_44_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_44_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_44_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_57_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_57_biasIdentity_19:output:0"/device:CPU:0*
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
?
N
2__inference_up_sampling2d_28_layer_call_fn_2598916

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
M__inference_up_sampling2d_28_layer_call_and_return_conditional_losses_25989102
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
?
f
J__inference_activation_29_layer_call_and_return_conditional_losses_2600188

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
?
F__inference_conv2d_57_layer_call_and_return_conditional_losses_2600318

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
E__inference_dense_56_layer_call_and_return_conditional_losses_2599078

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
?*
?
S__inference_batch_normalization_42_layer_call_and_return_conditional_losses_2598657

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
S__inference_batch_normalization_43_layer_call_and_return_conditional_losses_2598759

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
*__inference_dense_56_layer_call_fn_2599979

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
E__inference_dense_56_layer_call_and_return_conditional_losses_25990782
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
?
/__inference_sequential_28_layer_call_fn_2599705

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
J__inference_sequential_28_layer_call_and_return_conditional_losses_25992002
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
S__inference_batch_normalization_44_layer_call_and_return_conditional_losses_2600270

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
??
?
J__inference_sequential_28_layer_call_and_return_conditional_losses_2599970

inputs:
'dense_56_matmul_readvariableop_resource:	d?7
(dense_56_biasadd_readvariableop_resource:	?M
>batch_normalization_42_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_42_assignmovingavg_1_readvariableop_resource:	?K
<batch_normalization_42_batchnorm_mul_readvariableop_resource:	?G
8batch_normalization_42_batchnorm_readvariableop_resource:	?;
'dense_57_matmul_readvariableop_resource:
??17
(dense_57_biasadd_readvariableop_resource:	?1M
>batch_normalization_43_assignmovingavg_readvariableop_resource:	?1O
@batch_normalization_43_assignmovingavg_1_readvariableop_resource:	?1K
<batch_normalization_43_batchnorm_mul_readvariableop_resource:	?1G
8batch_normalization_43_batchnorm_readvariableop_resource:	?1C
(conv2d_56_conv2d_readvariableop_resource:?@7
)conv2d_56_biasadd_readvariableop_resource:@<
.batch_normalization_44_readvariableop_resource:@>
0batch_normalization_44_readvariableop_1_resource:@M
?batch_normalization_44_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_44_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_57_conv2d_readvariableop_resource:@7
)conv2d_57_biasadd_readvariableop_resource:
identity??&batch_normalization_42/AssignMovingAvg?5batch_normalization_42/AssignMovingAvg/ReadVariableOp?(batch_normalization_42/AssignMovingAvg_1?7batch_normalization_42/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_42/batchnorm/ReadVariableOp?3batch_normalization_42/batchnorm/mul/ReadVariableOp?&batch_normalization_43/AssignMovingAvg?5batch_normalization_43/AssignMovingAvg/ReadVariableOp?(batch_normalization_43/AssignMovingAvg_1?7batch_normalization_43/AssignMovingAvg_1/ReadVariableOp?/batch_normalization_43/batchnorm/ReadVariableOp?3batch_normalization_43/batchnorm/mul/ReadVariableOp?%batch_normalization_44/AssignNewValue?'batch_normalization_44/AssignNewValue_1?6batch_normalization_44/FusedBatchNormV3/ReadVariableOp?8batch_normalization_44/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_44/ReadVariableOp?'batch_normalization_44/ReadVariableOp_1? conv2d_56/BiasAdd/ReadVariableOp?conv2d_56/Conv2D/ReadVariableOp? conv2d_57/BiasAdd/ReadVariableOp?conv2d_57/Conv2D/ReadVariableOp?dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?dense_57/BiasAdd/ReadVariableOp?dense_57/MatMul/ReadVariableOp?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02 
dense_56/MatMul/ReadVariableOp?
dense_56/MatMulMatMulinputs&dense_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_56/MatMul?
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_56/BiasAdd/ReadVariableOp?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_56/BiasAdd?
5batch_normalization_42/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_42/moments/mean/reduction_indices?
#batch_normalization_42/moments/meanMeandense_56/BiasAdd:output:0>batch_normalization_42/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2%
#batch_normalization_42/moments/mean?
+batch_normalization_42/moments/StopGradientStopGradient,batch_normalization_42/moments/mean:output:0*
T0*
_output_shapes
:	?2-
+batch_normalization_42/moments/StopGradient?
0batch_normalization_42/moments/SquaredDifferenceSquaredDifferencedense_56/BiasAdd:output:04batch_normalization_42/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????22
0batch_normalization_42/moments/SquaredDifference?
9batch_normalization_42/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_42/moments/variance/reduction_indices?
'batch_normalization_42/moments/varianceMean4batch_normalization_42/moments/SquaredDifference:z:0Bbatch_normalization_42/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2)
'batch_normalization_42/moments/variance?
&batch_normalization_42/moments/SqueezeSqueeze,batch_normalization_42/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2(
&batch_normalization_42/moments/Squeeze?
(batch_normalization_42/moments/Squeeze_1Squeeze0batch_normalization_42/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2*
(batch_normalization_42/moments/Squeeze_1?
,batch_normalization_42/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2.
,batch_normalization_42/AssignMovingAvg/decay?
5batch_normalization_42/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_42_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_42/AssignMovingAvg/ReadVariableOp?
*batch_normalization_42/AssignMovingAvg/subSub=batch_normalization_42/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_42/moments/Squeeze:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_42/AssignMovingAvg/sub?
*batch_normalization_42/AssignMovingAvg/mulMul.batch_normalization_42/AssignMovingAvg/sub:z:05batch_normalization_42/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?2,
*batch_normalization_42/AssignMovingAvg/mul?
&batch_normalization_42/AssignMovingAvgAssignSubVariableOp>batch_normalization_42_assignmovingavg_readvariableop_resource.batch_normalization_42/AssignMovingAvg/mul:z:06^batch_normalization_42/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_42/AssignMovingAvg?
.batch_normalization_42/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>20
.batch_normalization_42/AssignMovingAvg_1/decay?
7batch_normalization_42/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_42_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_42/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_42/AssignMovingAvg_1/subSub?batch_normalization_42/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_42/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_42/AssignMovingAvg_1/sub?
,batch_normalization_42/AssignMovingAvg_1/mulMul0batch_normalization_42/AssignMovingAvg_1/sub:z:07batch_normalization_42/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?2.
,batch_normalization_42/AssignMovingAvg_1/mul?
(batch_normalization_42/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_42_assignmovingavg_1_readvariableop_resource0batch_normalization_42/AssignMovingAvg_1/mul:z:08^batch_normalization_42/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_42/AssignMovingAvg_1?
&batch_normalization_42/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_42/batchnorm/add/y?
$batch_normalization_42/batchnorm/addAddV21batch_normalization_42/moments/Squeeze_1:output:0/batch_normalization_42/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_42/batchnorm/add?
&batch_normalization_42/batchnorm/RsqrtRsqrt(batch_normalization_42/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_42/batchnorm/Rsqrt?
3batch_normalization_42/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_42_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_42/batchnorm/mul/ReadVariableOp?
$batch_normalization_42/batchnorm/mulMul*batch_normalization_42/batchnorm/Rsqrt:y:0;batch_normalization_42/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_42/batchnorm/mul?
&batch_normalization_42/batchnorm/mul_1Muldense_56/BiasAdd:output:0(batch_normalization_42/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_42/batchnorm/mul_1?
&batch_normalization_42/batchnorm/mul_2Mul/batch_normalization_42/moments/Squeeze:output:0(batch_normalization_42/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_42/batchnorm/mul_2?
/batch_normalization_42/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_42_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_42/batchnorm/ReadVariableOp?
$batch_normalization_42/batchnorm/subSub7batch_normalization_42/batchnorm/ReadVariableOp:value:0*batch_normalization_42/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_42/batchnorm/sub?
&batch_normalization_42/batchnorm/add_1AddV2*batch_normalization_42/batchnorm/mul_1:z:0(batch_normalization_42/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_42/batchnorm/add_1?
activation_28/ReluRelu*batch_normalization_42/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_28/Relu?
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource* 
_output_shapes
:
??1*
dtype02 
dense_57/MatMul/ReadVariableOp?
dense_57/MatMulMatMul activation_28/Relu:activations:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
dense_57/MatMul?
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes	
:?1*
dtype02!
dense_57/BiasAdd/ReadVariableOp?
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
dense_57/BiasAdd?
5batch_normalization_43/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_43/moments/mean/reduction_indices?
#batch_normalization_43/moments/meanMeandense_57/BiasAdd:output:0>batch_normalization_43/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?1*
	keep_dims(2%
#batch_normalization_43/moments/mean?
+batch_normalization_43/moments/StopGradientStopGradient,batch_normalization_43/moments/mean:output:0*
T0*
_output_shapes
:	?12-
+batch_normalization_43/moments/StopGradient?
0batch_normalization_43/moments/SquaredDifferenceSquaredDifferencedense_57/BiasAdd:output:04batch_normalization_43/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????122
0batch_normalization_43/moments/SquaredDifference?
9batch_normalization_43/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_43/moments/variance/reduction_indices?
'batch_normalization_43/moments/varianceMean4batch_normalization_43/moments/SquaredDifference:z:0Bbatch_normalization_43/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?1*
	keep_dims(2)
'batch_normalization_43/moments/variance?
&batch_normalization_43/moments/SqueezeSqueeze,batch_normalization_43/moments/mean:output:0*
T0*
_output_shapes	
:?1*
squeeze_dims
 2(
&batch_normalization_43/moments/Squeeze?
(batch_normalization_43/moments/Squeeze_1Squeeze0batch_normalization_43/moments/variance:output:0*
T0*
_output_shapes	
:?1*
squeeze_dims
 2*
(batch_normalization_43/moments/Squeeze_1?
,batch_normalization_43/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2.
,batch_normalization_43/AssignMovingAvg/decay?
5batch_normalization_43/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_43_assignmovingavg_readvariableop_resource*
_output_shapes	
:?1*
dtype027
5batch_normalization_43/AssignMovingAvg/ReadVariableOp?
*batch_normalization_43/AssignMovingAvg/subSub=batch_normalization_43/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_43/moments/Squeeze:output:0*
T0*
_output_shapes	
:?12,
*batch_normalization_43/AssignMovingAvg/sub?
*batch_normalization_43/AssignMovingAvg/mulMul.batch_normalization_43/AssignMovingAvg/sub:z:05batch_normalization_43/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?12,
*batch_normalization_43/AssignMovingAvg/mul?
&batch_normalization_43/AssignMovingAvgAssignSubVariableOp>batch_normalization_43_assignmovingavg_readvariableop_resource.batch_normalization_43/AssignMovingAvg/mul:z:06^batch_normalization_43/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02(
&batch_normalization_43/AssignMovingAvg?
.batch_normalization_43/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *??L>20
.batch_normalization_43/AssignMovingAvg_1/decay?
7batch_normalization_43/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_43_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?1*
dtype029
7batch_normalization_43/AssignMovingAvg_1/ReadVariableOp?
,batch_normalization_43/AssignMovingAvg_1/subSub?batch_normalization_43/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_43/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?12.
,batch_normalization_43/AssignMovingAvg_1/sub?
,batch_normalization_43/AssignMovingAvg_1/mulMul0batch_normalization_43/AssignMovingAvg_1/sub:z:07batch_normalization_43/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?12.
,batch_normalization_43/AssignMovingAvg_1/mul?
(batch_normalization_43/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_43_assignmovingavg_1_readvariableop_resource0batch_normalization_43/AssignMovingAvg_1/mul:z:08^batch_normalization_43/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02*
(batch_normalization_43/AssignMovingAvg_1?
&batch_normalization_43/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_43/batchnorm/add/y?
$batch_normalization_43/batchnorm/addAddV21batch_normalization_43/moments/Squeeze_1:output:0/batch_normalization_43/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?12&
$batch_normalization_43/batchnorm/add?
&batch_normalization_43/batchnorm/RsqrtRsqrt(batch_normalization_43/batchnorm/add:z:0*
T0*
_output_shapes	
:?12(
&batch_normalization_43/batchnorm/Rsqrt?
3batch_normalization_43/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_43_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?1*
dtype025
3batch_normalization_43/batchnorm/mul/ReadVariableOp?
$batch_normalization_43/batchnorm/mulMul*batch_normalization_43/batchnorm/Rsqrt:y:0;batch_normalization_43/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?12&
$batch_normalization_43/batchnorm/mul?
&batch_normalization_43/batchnorm/mul_1Muldense_57/BiasAdd:output:0(batch_normalization_43/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????12(
&batch_normalization_43/batchnorm/mul_1?
&batch_normalization_43/batchnorm/mul_2Mul/batch_normalization_43/moments/Squeeze:output:0(batch_normalization_43/batchnorm/mul:z:0*
T0*
_output_shapes	
:?12(
&batch_normalization_43/batchnorm/mul_2?
/batch_normalization_43/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_43_batchnorm_readvariableop_resource*
_output_shapes	
:?1*
dtype021
/batch_normalization_43/batchnorm/ReadVariableOp?
$batch_normalization_43/batchnorm/subSub7batch_normalization_43/batchnorm/ReadVariableOp:value:0*batch_normalization_43/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?12&
$batch_normalization_43/batchnorm/sub?
&batch_normalization_43/batchnorm/add_1AddV2*batch_normalization_43/batchnorm/mul_1:z:0(batch_normalization_43/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????12(
&batch_normalization_43/batchnorm/add_1?
activation_29/ReluRelu*batch_normalization_43/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????12
activation_29/Relut
reshape_14/ShapeShape activation_29/Relu:activations:0*
T0*
_output_shapes
:2
reshape_14/Shape?
reshape_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_14/strided_slice/stack?
 reshape_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_14/strided_slice/stack_1?
 reshape_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_14/strided_slice/stack_2?
reshape_14/strided_sliceStridedSlicereshape_14/Shape:output:0'reshape_14/strided_slice/stack:output:0)reshape_14/strided_slice/stack_1:output:0)reshape_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_14/strided_slicez
reshape_14/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_14/Reshape/shape/1z
reshape_14/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_14/Reshape/shape/2{
reshape_14/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_14/Reshape/shape/3?
reshape_14/Reshape/shapePack!reshape_14/strided_slice:output:0#reshape_14/Reshape/shape/1:output:0#reshape_14/Reshape/shape/2:output:0#reshape_14/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_14/Reshape/shape?
reshape_14/ReshapeReshape activation_29/Relu:activations:0!reshape_14/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_14/Reshape?
up_sampling2d_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_28/Const?
up_sampling2d_28/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_28/Const_1?
up_sampling2d_28/mulMulup_sampling2d_28/Const:output:0!up_sampling2d_28/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_28/mul?
-up_sampling2d_28/resize/ResizeNearestNeighborResizeNearestNeighborreshape_14/Reshape:output:0up_sampling2d_28/mul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(2/
-up_sampling2d_28/resize/ResizeNearestNeighbor?
conv2d_56/Conv2D/ReadVariableOpReadVariableOp(conv2d_56_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02!
conv2d_56/Conv2D/ReadVariableOp?
conv2d_56/Conv2DConv2D>up_sampling2d_28/resize/ResizeNearestNeighbor:resized_images:0'conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_56/Conv2D?
 conv2d_56/BiasAdd/ReadVariableOpReadVariableOp)conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_56/BiasAdd/ReadVariableOp?
conv2d_56/BiasAddBiasAddconv2d_56/Conv2D:output:0(conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_56/BiasAdd?
%batch_normalization_44/ReadVariableOpReadVariableOp.batch_normalization_44_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_44/ReadVariableOp?
'batch_normalization_44/ReadVariableOp_1ReadVariableOp0batch_normalization_44_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_44/ReadVariableOp_1?
6batch_normalization_44/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_44_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_44/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_44/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_44_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_44/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_44/FusedBatchNormV3FusedBatchNormV3conv2d_56/BiasAdd:output:0-batch_normalization_44/ReadVariableOp:value:0/batch_normalization_44/ReadVariableOp_1:value:0>batch_normalization_44/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_44/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%??L>2)
'batch_normalization_44/FusedBatchNormV3?
%batch_normalization_44/AssignNewValueAssignVariableOp?batch_normalization_44_fusedbatchnormv3_readvariableop_resource4batch_normalization_44/FusedBatchNormV3:batch_mean:07^batch_normalization_44/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_44/AssignNewValue?
'batch_normalization_44/AssignNewValue_1AssignVariableOpAbatch_normalization_44_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_44/FusedBatchNormV3:batch_variance:09^batch_normalization_44/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_44/AssignNewValue_1?
leaky_re_lu_56/LeakyRelu	LeakyRelu+batch_normalization_44/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@2
leaky_re_lu_56/LeakyRelu?
up_sampling2d_29/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_29/Const?
up_sampling2d_29/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_29/Const_1?
up_sampling2d_29/mulMulup_sampling2d_29/Const:output:0!up_sampling2d_29/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_29/mul?
-up_sampling2d_29/resize/ResizeNearestNeighborResizeNearestNeighbor&leaky_re_lu_56/LeakyRelu:activations:0up_sampling2d_29/mul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(2/
-up_sampling2d_29/resize/ResizeNearestNeighbor?
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_57/Conv2D/ReadVariableOp?
conv2d_57/Conv2DConv2D>up_sampling2d_29/resize/ResizeNearestNeighbor:resized_images:0'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_57/Conv2D?
 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_57/BiasAdd/ReadVariableOp?
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_57/BiasAdd~
conv2d_57/TanhTanhconv2d_57/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_57/Tanh?	
IdentityIdentityconv2d_57/Tanh:y:0'^batch_normalization_42/AssignMovingAvg6^batch_normalization_42/AssignMovingAvg/ReadVariableOp)^batch_normalization_42/AssignMovingAvg_18^batch_normalization_42/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_42/batchnorm/ReadVariableOp4^batch_normalization_42/batchnorm/mul/ReadVariableOp'^batch_normalization_43/AssignMovingAvg6^batch_normalization_43/AssignMovingAvg/ReadVariableOp)^batch_normalization_43/AssignMovingAvg_18^batch_normalization_43/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_43/batchnorm/ReadVariableOp4^batch_normalization_43/batchnorm/mul/ReadVariableOp&^batch_normalization_44/AssignNewValue(^batch_normalization_44/AssignNewValue_17^batch_normalization_44/FusedBatchNormV3/ReadVariableOp9^batch_normalization_44/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_44/ReadVariableOp(^batch_normalization_44/ReadVariableOp_1!^conv2d_56/BiasAdd/ReadVariableOp ^conv2d_56/Conv2D/ReadVariableOp!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_42/AssignMovingAvg&batch_normalization_42/AssignMovingAvg2n
5batch_normalization_42/AssignMovingAvg/ReadVariableOp5batch_normalization_42/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_42/AssignMovingAvg_1(batch_normalization_42/AssignMovingAvg_12r
7batch_normalization_42/AssignMovingAvg_1/ReadVariableOp7batch_normalization_42/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_42/batchnorm/ReadVariableOp/batch_normalization_42/batchnorm/ReadVariableOp2j
3batch_normalization_42/batchnorm/mul/ReadVariableOp3batch_normalization_42/batchnorm/mul/ReadVariableOp2P
&batch_normalization_43/AssignMovingAvg&batch_normalization_43/AssignMovingAvg2n
5batch_normalization_43/AssignMovingAvg/ReadVariableOp5batch_normalization_43/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_43/AssignMovingAvg_1(batch_normalization_43/AssignMovingAvg_12r
7batch_normalization_43/AssignMovingAvg_1/ReadVariableOp7batch_normalization_43/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_43/batchnorm/ReadVariableOp/batch_normalization_43/batchnorm/ReadVariableOp2j
3batch_normalization_43/batchnorm/mul/ReadVariableOp3batch_normalization_43/batchnorm/mul/ReadVariableOp2N
%batch_normalization_44/AssignNewValue%batch_normalization_44/AssignNewValue2R
'batch_normalization_44/AssignNewValue_1'batch_normalization_44/AssignNewValue_12p
6batch_normalization_44/FusedBatchNormV3/ReadVariableOp6batch_normalization_44/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_44/FusedBatchNormV3/ReadVariableOp_18batch_normalization_44/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_44/ReadVariableOp%batch_normalization_44/ReadVariableOp2R
'batch_normalization_44/ReadVariableOp_1'batch_normalization_44/ReadVariableOp_12D
 conv2d_56/BiasAdd/ReadVariableOp conv2d_56/BiasAdd/ReadVariableOp2B
conv2d_56/Conv2D/ReadVariableOpconv2d_56/Conv2D/ReadVariableOp2D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
J__inference_sequential_28_layer_call_and_return_conditional_losses_2599846

inputs:
'dense_56_matmul_readvariableop_resource:	d?7
(dense_56_biasadd_readvariableop_resource:	?G
8batch_normalization_42_batchnorm_readvariableop_resource:	?K
<batch_normalization_42_batchnorm_mul_readvariableop_resource:	?I
:batch_normalization_42_batchnorm_readvariableop_1_resource:	?I
:batch_normalization_42_batchnorm_readvariableop_2_resource:	?;
'dense_57_matmul_readvariableop_resource:
??17
(dense_57_biasadd_readvariableop_resource:	?1G
8batch_normalization_43_batchnorm_readvariableop_resource:	?1K
<batch_normalization_43_batchnorm_mul_readvariableop_resource:	?1I
:batch_normalization_43_batchnorm_readvariableop_1_resource:	?1I
:batch_normalization_43_batchnorm_readvariableop_2_resource:	?1C
(conv2d_56_conv2d_readvariableop_resource:?@7
)conv2d_56_biasadd_readvariableop_resource:@<
.batch_normalization_44_readvariableop_resource:@>
0batch_normalization_44_readvariableop_1_resource:@M
?batch_normalization_44_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_44_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_57_conv2d_readvariableop_resource:@7
)conv2d_57_biasadd_readvariableop_resource:
identity??/batch_normalization_42/batchnorm/ReadVariableOp?1batch_normalization_42/batchnorm/ReadVariableOp_1?1batch_normalization_42/batchnorm/ReadVariableOp_2?3batch_normalization_42/batchnorm/mul/ReadVariableOp?/batch_normalization_43/batchnorm/ReadVariableOp?1batch_normalization_43/batchnorm/ReadVariableOp_1?1batch_normalization_43/batchnorm/ReadVariableOp_2?3batch_normalization_43/batchnorm/mul/ReadVariableOp?6batch_normalization_44/FusedBatchNormV3/ReadVariableOp?8batch_normalization_44/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_44/ReadVariableOp?'batch_normalization_44/ReadVariableOp_1? conv2d_56/BiasAdd/ReadVariableOp?conv2d_56/Conv2D/ReadVariableOp? conv2d_57/BiasAdd/ReadVariableOp?conv2d_57/Conv2D/ReadVariableOp?dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?dense_57/BiasAdd/ReadVariableOp?dense_57/MatMul/ReadVariableOp?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes
:	d?*
dtype02 
dense_56/MatMul/ReadVariableOp?
dense_56/MatMulMatMulinputs&dense_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_56/MatMul?
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_56/BiasAdd/ReadVariableOp?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_56/BiasAdd?
/batch_normalization_42/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_42_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype021
/batch_normalization_42/batchnorm/ReadVariableOp?
&batch_normalization_42/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_42/batchnorm/add/y?
$batch_normalization_42/batchnorm/addAddV27batch_normalization_42/batchnorm/ReadVariableOp:value:0/batch_normalization_42/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2&
$batch_normalization_42/batchnorm/add?
&batch_normalization_42/batchnorm/RsqrtRsqrt(batch_normalization_42/batchnorm/add:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_42/batchnorm/Rsqrt?
3batch_normalization_42/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_42_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype025
3batch_normalization_42/batchnorm/mul/ReadVariableOp?
$batch_normalization_42/batchnorm/mulMul*batch_normalization_42/batchnorm/Rsqrt:y:0;batch_normalization_42/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2&
$batch_normalization_42/batchnorm/mul?
&batch_normalization_42/batchnorm/mul_1Muldense_56/BiasAdd:output:0(batch_normalization_42/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_42/batchnorm/mul_1?
1batch_normalization_42/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_42_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_42/batchnorm/ReadVariableOp_1?
&batch_normalization_42/batchnorm/mul_2Mul9batch_normalization_42/batchnorm/ReadVariableOp_1:value:0(batch_normalization_42/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2(
&batch_normalization_42/batchnorm/mul_2?
1batch_normalization_42/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_42_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype023
1batch_normalization_42/batchnorm/ReadVariableOp_2?
$batch_normalization_42/batchnorm/subSub9batch_normalization_42/batchnorm/ReadVariableOp_2:value:0*batch_normalization_42/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2&
$batch_normalization_42/batchnorm/sub?
&batch_normalization_42/batchnorm/add_1AddV2*batch_normalization_42/batchnorm/mul_1:z:0(batch_normalization_42/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2(
&batch_normalization_42/batchnorm/add_1?
activation_28/ReluRelu*batch_normalization_42/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2
activation_28/Relu?
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource* 
_output_shapes
:
??1*
dtype02 
dense_57/MatMul/ReadVariableOp?
dense_57/MatMulMatMul activation_28/Relu:activations:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
dense_57/MatMul?
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes	
:?1*
dtype02!
dense_57/BiasAdd/ReadVariableOp?
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????12
dense_57/BiasAdd?
/batch_normalization_43/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_43_batchnorm_readvariableop_resource*
_output_shapes	
:?1*
dtype021
/batch_normalization_43/batchnorm/ReadVariableOp?
&batch_normalization_43/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2(
&batch_normalization_43/batchnorm/add/y?
$batch_normalization_43/batchnorm/addAddV27batch_normalization_43/batchnorm/ReadVariableOp:value:0/batch_normalization_43/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?12&
$batch_normalization_43/batchnorm/add?
&batch_normalization_43/batchnorm/RsqrtRsqrt(batch_normalization_43/batchnorm/add:z:0*
T0*
_output_shapes	
:?12(
&batch_normalization_43/batchnorm/Rsqrt?
3batch_normalization_43/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_43_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?1*
dtype025
3batch_normalization_43/batchnorm/mul/ReadVariableOp?
$batch_normalization_43/batchnorm/mulMul*batch_normalization_43/batchnorm/Rsqrt:y:0;batch_normalization_43/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?12&
$batch_normalization_43/batchnorm/mul?
&batch_normalization_43/batchnorm/mul_1Muldense_57/BiasAdd:output:0(batch_normalization_43/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????12(
&batch_normalization_43/batchnorm/mul_1?
1batch_normalization_43/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_43_batchnorm_readvariableop_1_resource*
_output_shapes	
:?1*
dtype023
1batch_normalization_43/batchnorm/ReadVariableOp_1?
&batch_normalization_43/batchnorm/mul_2Mul9batch_normalization_43/batchnorm/ReadVariableOp_1:value:0(batch_normalization_43/batchnorm/mul:z:0*
T0*
_output_shapes	
:?12(
&batch_normalization_43/batchnorm/mul_2?
1batch_normalization_43/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_43_batchnorm_readvariableop_2_resource*
_output_shapes	
:?1*
dtype023
1batch_normalization_43/batchnorm/ReadVariableOp_2?
$batch_normalization_43/batchnorm/subSub9batch_normalization_43/batchnorm/ReadVariableOp_2:value:0*batch_normalization_43/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?12&
$batch_normalization_43/batchnorm/sub?
&batch_normalization_43/batchnorm/add_1AddV2*batch_normalization_43/batchnorm/mul_1:z:0(batch_normalization_43/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????12(
&batch_normalization_43/batchnorm/add_1?
activation_29/ReluRelu*batch_normalization_43/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????12
activation_29/Relut
reshape_14/ShapeShape activation_29/Relu:activations:0*
T0*
_output_shapes
:2
reshape_14/Shape?
reshape_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_14/strided_slice/stack?
 reshape_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_14/strided_slice/stack_1?
 reshape_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_14/strided_slice/stack_2?
reshape_14/strided_sliceStridedSlicereshape_14/Shape:output:0'reshape_14/strided_slice/stack:output:0)reshape_14/strided_slice/stack_1:output:0)reshape_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_14/strided_slicez
reshape_14/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_14/Reshape/shape/1z
reshape_14/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_14/Reshape/shape/2{
reshape_14/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_14/Reshape/shape/3?
reshape_14/Reshape/shapePack!reshape_14/strided_slice:output:0#reshape_14/Reshape/shape/1:output:0#reshape_14/Reshape/shape/2:output:0#reshape_14/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_14/Reshape/shape?
reshape_14/ReshapeReshape activation_29/Relu:activations:0!reshape_14/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????2
reshape_14/Reshape?
up_sampling2d_28/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_28/Const?
up_sampling2d_28/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_28/Const_1?
up_sampling2d_28/mulMulup_sampling2d_28/Const:output:0!up_sampling2d_28/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_28/mul?
-up_sampling2d_28/resize/ResizeNearestNeighborResizeNearestNeighborreshape_14/Reshape:output:0up_sampling2d_28/mul:z:0*
T0*0
_output_shapes
:??????????*
half_pixel_centers(2/
-up_sampling2d_28/resize/ResizeNearestNeighbor?
conv2d_56/Conv2D/ReadVariableOpReadVariableOp(conv2d_56_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02!
conv2d_56/Conv2D/ReadVariableOp?
conv2d_56/Conv2DConv2D>up_sampling2d_28/resize/ResizeNearestNeighbor:resized_images:0'conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_56/Conv2D?
 conv2d_56/BiasAdd/ReadVariableOpReadVariableOp)conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_56/BiasAdd/ReadVariableOp?
conv2d_56/BiasAddBiasAddconv2d_56/Conv2D:output:0(conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_56/BiasAdd?
%batch_normalization_44/ReadVariableOpReadVariableOp.batch_normalization_44_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_44/ReadVariableOp?
'batch_normalization_44/ReadVariableOp_1ReadVariableOp0batch_normalization_44_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_44/ReadVariableOp_1?
6batch_normalization_44/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_44_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_44/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_44/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_44_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_44/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_44/FusedBatchNormV3FusedBatchNormV3conv2d_56/BiasAdd:output:0-batch_normalization_44/ReadVariableOp:value:0/batch_normalization_44/ReadVariableOp_1:value:0>batch_normalization_44/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_44/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_44/FusedBatchNormV3?
leaky_re_lu_56/LeakyRelu	LeakyRelu+batch_normalization_44/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@2
leaky_re_lu_56/LeakyRelu?
up_sampling2d_29/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_29/Const?
up_sampling2d_29/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_29/Const_1?
up_sampling2d_29/mulMulup_sampling2d_29/Const:output:0!up_sampling2d_29/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_29/mul?
-up_sampling2d_29/resize/ResizeNearestNeighborResizeNearestNeighbor&leaky_re_lu_56/LeakyRelu:activations:0up_sampling2d_29/mul:z:0*
T0*/
_output_shapes
:?????????@*
half_pixel_centers(2/
-up_sampling2d_29/resize/ResizeNearestNeighbor?
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_57/Conv2D/ReadVariableOp?
conv2d_57/Conv2DConv2D>up_sampling2d_29/resize/ResizeNearestNeighbor:resized_images:0'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_57/Conv2D?
 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_57/BiasAdd/ReadVariableOp?
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_57/BiasAdd~
conv2d_57/TanhTanhconv2d_57/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_57/Tanh?
IdentityIdentityconv2d_57/Tanh:y:00^batch_normalization_42/batchnorm/ReadVariableOp2^batch_normalization_42/batchnorm/ReadVariableOp_12^batch_normalization_42/batchnorm/ReadVariableOp_24^batch_normalization_42/batchnorm/mul/ReadVariableOp0^batch_normalization_43/batchnorm/ReadVariableOp2^batch_normalization_43/batchnorm/ReadVariableOp_12^batch_normalization_43/batchnorm/ReadVariableOp_24^batch_normalization_43/batchnorm/mul/ReadVariableOp7^batch_normalization_44/FusedBatchNormV3/ReadVariableOp9^batch_normalization_44/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_44/ReadVariableOp(^batch_normalization_44/ReadVariableOp_1!^conv2d_56/BiasAdd/ReadVariableOp ^conv2d_56/Conv2D/ReadVariableOp!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:?????????d: : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_42/batchnorm/ReadVariableOp/batch_normalization_42/batchnorm/ReadVariableOp2f
1batch_normalization_42/batchnorm/ReadVariableOp_11batch_normalization_42/batchnorm/ReadVariableOp_12f
1batch_normalization_42/batchnorm/ReadVariableOp_21batch_normalization_42/batchnorm/ReadVariableOp_22j
3batch_normalization_42/batchnorm/mul/ReadVariableOp3batch_normalization_42/batchnorm/mul/ReadVariableOp2b
/batch_normalization_43/batchnorm/ReadVariableOp/batch_normalization_43/batchnorm/ReadVariableOp2f
1batch_normalization_43/batchnorm/ReadVariableOp_11batch_normalization_43/batchnorm/ReadVariableOp_12f
1batch_normalization_43/batchnorm/ReadVariableOp_21batch_normalization_43/batchnorm/ReadVariableOp_22j
3batch_normalization_43/batchnorm/mul/ReadVariableOp3batch_normalization_43/batchnorm/mul/ReadVariableOp2p
6batch_normalization_44/FusedBatchNormV3/ReadVariableOp6batch_normalization_44/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_44/FusedBatchNormV3/ReadVariableOp_18batch_normalization_44/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_44/ReadVariableOp%batch_normalization_44/ReadVariableOp2R
'batch_normalization_44/ReadVariableOp_1'batch_normalization_44/ReadVariableOp_12D
 conv2d_56/BiasAdd/ReadVariableOp conv2d_56/BiasAdd/ReadVariableOp2B
conv2d_56/Conv2D/ReadVariableOpconv2d_56/Conv2D/ReadVariableOp2D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_2600298

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
?
?
*__inference_dense_57_layer_call_fn_2600088

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
E__inference_dense_57_layer_call_and_return_conditional_losses_25991102
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
?
K
/__inference_activation_28_layer_call_fn_2600074

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
J__inference_activation_28_layer_call_and_return_conditional_losses_25990982
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
?
f
J__inference_activation_29_layer_call_and_return_conditional_losses_2599130

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
?
?
S__inference_batch_normalization_43_layer_call_and_return_conditional_losses_2600144

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
?*
?
S__inference_batch_normalization_43_layer_call_and_return_conditional_losses_2600178

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
?
F__inference_conv2d_56_layer_call_and_return_conditional_losses_2599159

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
?*
?
S__inference_batch_normalization_42_layer_call_and_return_conditional_losses_2600069

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
?
?
S__inference_batch_normalization_44_layer_call_and_return_conditional_losses_2598982

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
?
f
J__inference_activation_28_layer_call_and_return_conditional_losses_2600079

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
?
?
8__inference_batch_normalization_42_layer_call_fn_2600002

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
S__inference_batch_normalization_42_layer_call_and_return_conditional_losses_25985972
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
dense_56_input7
 serving_default_dense_56_input:0?????????dE
	conv2d_578
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
_tf_keras_sequential?_{"name": "sequential_28", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_28", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_56_input"}}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_42", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_28", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 6272, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_43", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_29", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Reshape", "config": {"name": "reshape_14", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_28", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_56", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_44", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_56", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_29", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_57", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 100]}, "float32", "dense_56_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_28", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_56_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_42", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8}, {"class_name": "Activation", "config": {"name": "activation_28", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 9}, {"class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 6272, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_43", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 14}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 16}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 17}, {"class_name": "Activation", "config": {"name": "activation_29", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 18}, {"class_name": "Reshape", "config": {"name": "reshape_14", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}, "shared_object_id": 19}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_28", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "shared_object_id": 20}, {"class_name": "Conv2D", "config": {"name": "conv2d_56", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_44", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 25}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 27}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 28}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_56", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 29}, {"class_name": "UpSampling2D", "config": {"name": "up_sampling2d_29", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "shared_object_id": 30}, {"class_name": "Conv2D", "config": {"name": "conv2d_57", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 33}]}}}
?	

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_56", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
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
_tf_keras_layer?{"name": "batch_normalization_42", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_42", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 1024}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?
"	variables
#regularization_losses
$trainable_variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_28", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 9}
?	

&kernel
'bias
(	variables
)regularization_losses
*trainable_variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_57", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 6272, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
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
_tf_keras_layer?{"name": "batch_normalization_43", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_43", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 14}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 16}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 6272}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6272]}}
?
5	variables
6regularization_losses
7trainable_variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_29", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 18}
?
9	variables
:regularization_losses
;trainable_variables
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "reshape_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape_14", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [7, 7, 128]}}, "shared_object_id": 19}
?
=	variables
>regularization_losses
?trainable_variables
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "up_sampling2d_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_28", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 39}}
?


Akernel
Bbias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_56", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_56", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 128]}}
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
_tf_keras_layer?{"name": "batch_normalization_44", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_44", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.8, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 25}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 27}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 64]}}
?
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_56", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_56", "trainable": true, "dtype": "float32", "alpha": 0.20000000298023224}, "shared_object_id": 29}
?
T	variables
Uregularization_losses
Vtrainable_variables
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "up_sampling2d_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "UpSampling2D", "config": {"name": "up_sampling2d_29", "trainable": true, "dtype": "float32", "size": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last", "interpolation": "nearest"}, "shared_object_id": 30, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 42}}
?


Xkernel
Ybias
Z	variables
[regularization_losses
\trainable_variables
]	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_57", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_57", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0, "stddev": 0.02, "seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 33, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 43}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 64]}}
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
": 	d?2dense_56/kernel
:?2dense_56/bias
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
+:)?2batch_normalization_42/gamma
*:(?2batch_normalization_42/beta
3:1? (2"batch_normalization_42/moving_mean
7:5? (2&batch_normalization_42/moving_variance
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
??12dense_57/kernel
:?12dense_57/bias
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
+:)?12batch_normalization_43/gamma
*:(?12batch_normalization_43/beta
3:1?1 (2"batch_normalization_43/moving_mean
7:5?1 (2&batch_normalization_43/moving_variance
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
+:)?@2conv2d_56/kernel
:@2conv2d_56/bias
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
*:(@2batch_normalization_44/gamma
):'@2batch_normalization_44/beta
2:0@ (2"batch_normalization_44/moving_mean
6:4@ (2&batch_normalization_44/moving_variance
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
*:(@2conv2d_57/kernel
:2conv2d_57/bias
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
/__inference_sequential_28_layer_call_fn_2599243
/__inference_sequential_28_layer_call_fn_2599705
/__inference_sequential_28_layer_call_fn_2599750
/__inference_sequential_28_layer_call_fn_2599499?
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
"__inference__wrapped_model_2598573?
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
dense_56_input?????????d
?2?
J__inference_sequential_28_layer_call_and_return_conditional_losses_2599846
J__inference_sequential_28_layer_call_and_return_conditional_losses_2599970
J__inference_sequential_28_layer_call_and_return_conditional_losses_2599556
J__inference_sequential_28_layer_call_and_return_conditional_losses_2599613?
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
*__inference_dense_56_layer_call_fn_2599979?
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
E__inference_dense_56_layer_call_and_return_conditional_losses_2599989?
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
8__inference_batch_normalization_42_layer_call_fn_2600002
8__inference_batch_normalization_42_layer_call_fn_2600015?
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
S__inference_batch_normalization_42_layer_call_and_return_conditional_losses_2600035
S__inference_batch_normalization_42_layer_call_and_return_conditional_losses_2600069?
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
/__inference_activation_28_layer_call_fn_2600074?
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
J__inference_activation_28_layer_call_and_return_conditional_losses_2600079?
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
*__inference_dense_57_layer_call_fn_2600088?
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
E__inference_dense_57_layer_call_and_return_conditional_losses_2600098?
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
8__inference_batch_normalization_43_layer_call_fn_2600111
8__inference_batch_normalization_43_layer_call_fn_2600124?
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
S__inference_batch_normalization_43_layer_call_and_return_conditional_losses_2600144
S__inference_batch_normalization_43_layer_call_and_return_conditional_losses_2600178?
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
/__inference_activation_29_layer_call_fn_2600183?
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
J__inference_activation_29_layer_call_and_return_conditional_losses_2600188?
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
,__inference_reshape_14_layer_call_fn_2600193?
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
G__inference_reshape_14_layer_call_and_return_conditional_losses_2600207?
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
2__inference_up_sampling2d_28_layer_call_fn_2598916?
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
M__inference_up_sampling2d_28_layer_call_and_return_conditional_losses_2598910?
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
+__inference_conv2d_56_layer_call_fn_2600216?
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
F__inference_conv2d_56_layer_call_and_return_conditional_losses_2600226?
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
8__inference_batch_normalization_44_layer_call_fn_2600239
8__inference_batch_normalization_44_layer_call_fn_2600252?
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
S__inference_batch_normalization_44_layer_call_and_return_conditional_losses_2600270
S__inference_batch_normalization_44_layer_call_and_return_conditional_losses_2600288?
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
0__inference_leaky_re_lu_56_layer_call_fn_2600293?
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
K__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_2600298?
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
2__inference_up_sampling2d_29_layer_call_fn_2599061?
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
M__inference_up_sampling2d_29_layer_call_and_return_conditional_losses_2599055?
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
+__inference_conv2d_57_layer_call_fn_2600307?
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
F__inference_conv2d_57_layer_call_and_return_conditional_losses_2600318?
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
%__inference_signature_wrapper_2599660dense_56_input"?
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
"__inference__wrapped_model_2598573?&'0-/.ABHIJKXY7?4
-?*
(?%
dense_56_input?????????d
? "=?:
8
	conv2d_57+?(
	conv2d_57??????????
J__inference_activation_28_layer_call_and_return_conditional_losses_2600079Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
/__inference_activation_28_layer_call_fn_2600074M0?-
&?#
!?
inputs??????????
? "????????????
J__inference_activation_29_layer_call_and_return_conditional_losses_2600188Z0?-
&?#
!?
inputs??????????1
? "&?#
?
0??????????1
? ?
/__inference_activation_29_layer_call_fn_2600183M0?-
&?#
!?
inputs??????????1
? "???????????1?
S__inference_batch_normalization_42_layer_call_and_return_conditional_losses_2600035d4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
S__inference_batch_normalization_42_layer_call_and_return_conditional_losses_2600069d4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
8__inference_batch_normalization_42_layer_call_fn_2600002W4?1
*?'
!?
inputs??????????
p 
? "????????????
8__inference_batch_normalization_42_layer_call_fn_2600015W4?1
*?'
!?
inputs??????????
p
? "????????????
S__inference_batch_normalization_43_layer_call_and_return_conditional_losses_2600144d0-/.4?1
*?'
!?
inputs??????????1
p 
? "&?#
?
0??????????1
? ?
S__inference_batch_normalization_43_layer_call_and_return_conditional_losses_2600178d/0-.4?1
*?'
!?
inputs??????????1
p
? "&?#
?
0??????????1
? ?
8__inference_batch_normalization_43_layer_call_fn_2600111W0-/.4?1
*?'
!?
inputs??????????1
p 
? "???????????1?
8__inference_batch_normalization_43_layer_call_fn_2600124W/0-.4?1
*?'
!?
inputs??????????1
p
? "???????????1?
S__inference_batch_normalization_44_layer_call_and_return_conditional_losses_2600270?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_44_layer_call_and_return_conditional_losses_2600288?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
8__inference_batch_normalization_44_layer_call_fn_2600239?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
8__inference_batch_normalization_44_layer_call_fn_2600252?HIJKM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
F__inference_conv2d_56_layer_call_and_return_conditional_losses_2600226?ABJ?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
+__inference_conv2d_56_layer_call_fn_2600216?ABJ?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
F__inference_conv2d_57_layer_call_and_return_conditional_losses_2600318?XYI?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????
? ?
+__inference_conv2d_57_layer_call_fn_2600307?XYI?F
??<
:?7
inputs+???????????????????????????@
? "2?/+????????????????????????????
E__inference_dense_56_layer_call_and_return_conditional_losses_2599989]/?,
%?"
 ?
inputs?????????d
? "&?#
?
0??????????
? ~
*__inference_dense_56_layer_call_fn_2599979P/?,
%?"
 ?
inputs?????????d
? "????????????
E__inference_dense_57_layer_call_and_return_conditional_losses_2600098^&'0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????1
? 
*__inference_dense_57_layer_call_fn_2600088Q&'0?-
&?#
!?
inputs??????????
? "???????????1?
K__inference_leaky_re_lu_56_layer_call_and_return_conditional_losses_2600298?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
0__inference_leaky_re_lu_56_layer_call_fn_2600293I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
G__inference_reshape_14_layer_call_and_return_conditional_losses_2600207b0?-
&?#
!?
inputs??????????1
? ".?+
$?!
0??????????
? ?
,__inference_reshape_14_layer_call_fn_2600193U0?-
&?#
!?
inputs??????????1
? "!????????????
J__inference_sequential_28_layer_call_and_return_conditional_losses_2599556?&'0-/.ABHIJKXY??<
5?2
(?%
dense_56_input?????????d
p 

 
? "??<
5?2
0+???????????????????????????
? ?
J__inference_sequential_28_layer_call_and_return_conditional_losses_2599613?&'/0-.ABHIJKXY??<
5?2
(?%
dense_56_input?????????d
p

 
? "??<
5?2
0+???????????????????????????
? ?
J__inference_sequential_28_layer_call_and_return_conditional_losses_2599846~&'0-/.ABHIJKXY7?4
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
J__inference_sequential_28_layer_call_and_return_conditional_losses_2599970~&'/0-.ABHIJKXY7?4
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
/__inference_sequential_28_layer_call_fn_2599243?&'0-/.ABHIJKXY??<
5?2
(?%
dense_56_input?????????d
p 

 
? "2?/+????????????????????????????
/__inference_sequential_28_layer_call_fn_2599499?&'/0-.ABHIJKXY??<
5?2
(?%
dense_56_input?????????d
p

 
? "2?/+????????????????????????????
/__inference_sequential_28_layer_call_fn_2599705?&'0-/.ABHIJKXY7?4
-?*
 ?
inputs?????????d
p 

 
? "2?/+????????????????????????????
/__inference_sequential_28_layer_call_fn_2599750?&'/0-.ABHIJKXY7?4
-?*
 ?
inputs?????????d
p

 
? "2?/+????????????????????????????
%__inference_signature_wrapper_2599660?&'0-/.ABHIJKXYI?F
? 
??<
:
dense_56_input(?%
dense_56_input?????????d"=?:
8
	conv2d_57+?(
	conv2d_57??????????
M__inference_up_sampling2d_28_layer_call_and_return_conditional_losses_2598910?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_up_sampling2d_28_layer_call_fn_2598916?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_up_sampling2d_29_layer_call_and_return_conditional_losses_2599055?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_up_sampling2d_29_layer_call_fn_2599061?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84????????????????????????????????????