??<
??
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
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
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
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??/
?
conv2d_transpose_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`**
shared_nameconv2d_transpose_6/kernel
?
-conv2d_transpose_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_6/kernel*&
_output_shapes
:`*
dtype0
?
conv2d_transpose_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_6/bias

+conv2d_transpose_6/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_6/bias*
_output_shapes
:*
dtype0
?
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
?
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_2/gamma
?
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_2/beta
?
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
: *
dtype0
?
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
?
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_3/gamma
?
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_3/beta
?
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
:@*
dtype0
?
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?* 
shared_nameconv2d_3/kernel
|
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*'
_output_shapes
:@?*
dtype0
?
batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_4/gamma
?
/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_4/beta
?
.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes	
:?*
dtype0
?
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2d_4/kernel
}
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*(
_output_shapes
:??*
dtype0
?
batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_5/gamma
?
/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_5/beta
?
.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes	
:?*
dtype0
?
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2d_5/kernel
}
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*(
_output_shapes
:??*
dtype0
?
batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_6/gamma
?
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_6/beta
?
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??**
shared_nameconv2d_transpose_1/kernel
?
-conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*(
_output_shapes
:??*
dtype0
?
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_7/gamma
?
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_7/beta
?
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??**
shared_nameconv2d_transpose_2/kernel
?
-conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*(
_output_shapes
:??*
dtype0
?
batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_8/gamma
?
/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_8/beta
?
.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??**
shared_nameconv2d_transpose_3/kernel
?
-conv2d_transpose_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/kernel*(
_output_shapes
:??*
dtype0
?
batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_9/gamma
?
/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_9/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_9/beta
?
.batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_9/beta*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?**
shared_nameconv2d_transpose_4/kernel
?
-conv2d_transpose_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_4/kernel*'
_output_shapes
:@?*
dtype0
?
batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_10/gamma
?
0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_10/beta
?
/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*
_output_shapes
:@*
dtype0
?
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_2/moving_mean
?
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
: *
dtype0
?
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_2/moving_variance
?
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
: *
dtype0
?
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_3/moving_mean
?
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:@*
dtype0
?
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_3/moving_variance
?
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:@*
dtype0
?
!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_4/moving_mean
?
5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_4/moving_variance
?
9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes	
:?*
dtype0
?
!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_5/moving_mean
?
5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_5/moving_variance
?
9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes	
:?*
dtype0
?
!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_6/moving_mean
?
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_6/moving_variance
?
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes	
:?*
dtype0
?
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_7/moving_mean
?
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_7/moving_variance
?
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes	
:?*
dtype0
?
!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_8/moving_mean
?
5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_8/moving_variance
?
9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes	
:?*
dtype0
?
!batch_normalization_9/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_9/moving_mean
?
5batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_9/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_9/moving_variance
?
9batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
_output_shapes	
:?*
dtype0
?
"batch_normalization_10/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_10/moving_mean
?
6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_10/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_10/moving_variance
?
:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes
:@*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ʥ
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer-7
	layer_with_weights-6
	layer-8

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer-13
layer_with_weights-9
layer-14
trainable_variables
	variables
regularization_losses
	keras_api

signatures

_init_input_shape
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
trainable_variables
	variables
regularization_losses
	keras_api
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
 trainable_variables
!	variables
"regularization_losses
#	keras_api
?
$layer_with_weights-0
$layer-0
%layer_with_weights-1
%layer-1
&layer-2
'trainable_variables
(	variables
)regularization_losses
*	keras_api
?
+layer_with_weights-0
+layer-0
,layer_with_weights-1
,layer-1
-layer-2
.trainable_variables
/	variables
0regularization_losses
1	keras_api
?
2layer_with_weights-0
2layer-0
3layer_with_weights-1
3layer-1
4layer-2
5trainable_variables
6	variables
7regularization_losses
8	keras_api
?
9layer_with_weights-0
9layer-0
:layer_with_weights-1
:layer-1
;layer-2
<trainable_variables
=	variables
>regularization_losses
?	keras_api
R
@trainable_variables
A	variables
Bregularization_losses
C	keras_api
?
Dlayer_with_weights-0
Dlayer-0
Elayer_with_weights-1
Elayer-1
Flayer-2
Gtrainable_variables
H	variables
Iregularization_losses
J	keras_api
R
Ktrainable_variables
L	variables
Mregularization_losses
N	keras_api
?
Olayer_with_weights-0
Olayer-0
Player_with_weights-1
Player-1
Qlayer-2
Rtrainable_variables
S	variables
Tregularization_losses
U	keras_api
R
Vtrainable_variables
W	variables
Xregularization_losses
Y	keras_api
?
Zlayer_with_weights-0
Zlayer-0
[layer_with_weights-1
[layer-1
\layer-2
]trainable_variables
^	variables
_regularization_losses
`	keras_api
R
atrainable_variables
b	variables
cregularization_losses
d	keras_api
h

ekernel
fbias
gtrainable_variables
h	variables
iregularization_losses
j	keras_api
?
k0
l1
m2
n3
o4
p5
q6
r7
s8
t9
u10
v11
w12
x13
y14
z15
{16
|17
}18
~19
20
?21
?22
?23
?24
?25
?26
e27
f28
?
k0
l1
m2
?3
?4
n5
o6
p7
?8
?9
q10
r11
s12
?13
?14
t15
u16
v17
?18
?19
w20
x21
y22
?23
?24
z25
{26
|27
?28
?29
}30
~31
32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
e45
f46
 
?
?layers
?layer_metrics
trainable_variables
	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
regularization_losses
 
 
b

kkernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?
	?axis
	lgamma
mbeta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api

k0
l1
m2
%
k0
l1
m2
?3
?4
 
?
?layers
?layer_metrics
trainable_variables
	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
regularization_losses
b

nkernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?
	?axis
	ogamma
pbeta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api

n0
o1
p2
%
n0
o1
p2
?3
?4
 
?
?layers
?layer_metrics
 trainable_variables
!	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
"regularization_losses
b

qkernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?
	?axis
	rgamma
sbeta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api

q0
r1
s2
%
q0
r1
s2
?3
?4
 
?
?layers
?layer_metrics
'trainable_variables
(	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
)regularization_losses
b

tkernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?
	?axis
	ugamma
vbeta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api

t0
u1
v2
%
t0
u1
v2
?3
?4
 
?
?layers
?layer_metrics
.trainable_variables
/	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
0regularization_losses
b

wkernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?
	?axis
	xgamma
ybeta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api

w0
x1
y2
%
w0
x1
y2
?3
?4
 
?
?layers
?layer_metrics
5trainable_variables
6	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
7regularization_losses
b

zkernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?
	?axis
	{gamma
|beta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api

z0
{1
|2
%
z0
{1
|2
?3
?4
 
?
?layers
?layer_metrics
<trainable_variables
=	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
>regularization_losses
 
 
 
?
?layers
?layer_metrics
@trainable_variables
A	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
Bregularization_losses
b

}kernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?
	?axis
	~gamma
beta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api

}0
~1
2
%
}0
~1
2
?3
?4
 
?
?layers
?layer_metrics
Gtrainable_variables
H	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
Iregularization_losses
 
 
 
?
?layers
?layer_metrics
Ktrainable_variables
L	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
Mregularization_losses
c
?kernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api

?0
?1
?2
(
?0
?1
?2
?3
?4
 
?
?layers
?layer_metrics
Rtrainable_variables
S	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
Tregularization_losses
 
 
 
?
?layers
?layer_metrics
Vtrainable_variables
W	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
Xregularization_losses
c
?kernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
V
?trainable_variables
?	variables
?regularization_losses
?	keras_api

?0
?1
?2
(
?0
?1
?2
?3
?4
 
?
?layers
?layer_metrics
]trainable_variables
^	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
_regularization_losses
 
 
 
?
?layers
?layer_metrics
atrainable_variables
b	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
cregularization_losses
ec
VARIABLE_VALUEconv2d_transpose_6/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv2d_transpose_6/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

e0
f1

e0
f1
 
?
?layers
?layer_metrics
gtrainable_variables
h	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
iregularization_losses
US
VARIABLE_VALUEconv2d_1/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_2/gamma0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbatch_normalization_2/beta0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_2/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_3/gamma0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbatch_normalization_3/beta0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_3/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_4/gamma0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEbatch_normalization_4/beta0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_4/kernel0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization_5/gamma1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_5/beta1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_5/kernel1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization_6/gamma1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_6/beta1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_1/kernel1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization_7/gamma1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_7/beta1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_2/kernel1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization_8/gamma1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_8/beta1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_3/kernel1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization_9/gamma1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEbatch_normalization_9/beta1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_4/kernel1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEbatch_normalization_10/gamma1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization_10/beta1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!batch_normalization_2/moving_mean&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%batch_normalization_2/moving_variance&variables/4/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!batch_normalization_3/moving_mean&variables/8/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%batch_normalization_3/moving_variance&variables/9/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_4/moving_mean'variables/13/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_4/moving_variance'variables/14/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_5/moving_mean'variables/18/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_5/moving_variance'variables/19/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_6/moving_mean'variables/23/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_6/moving_variance'variables/24/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_7/moving_mean'variables/28/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_7/moving_variance'variables/29/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_8/moving_mean'variables/33/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_8/moving_variance'variables/34/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_9/moving_mean'variables/38/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_9/moving_variance'variables/39/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"batch_normalization_10/moving_mean'variables/43/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE&batch_normalization_10/moving_variance'variables/44/.ATTRIBUTES/VARIABLE_VALUE
n
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
13
14
 
 
?
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?16
?17
 

k0

k0
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 

l0
m1

l0
m1
?2
?3
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 
 
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses

0
1
2
 
 

?0
?1
 

n0

n0
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 

o0
p1

o0
p1
?2
?3
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 
 
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses

0
1
2
 
 

?0
?1
 

q0

q0
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 

r0
s1

r0
s1
?2
?3
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 
 
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses

$0
%1
&2
 
 

?0
?1
 

t0

t0
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 

u0
v1

u0
v1
?2
?3
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 
 
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses

+0
,1
-2
 
 

?0
?1
 

w0

w0
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 

x0
y1

x0
y1
?2
?3
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 
 
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses

20
31
42
 
 

?0
?1
 

z0

z0
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 

{0
|1

{0
|1
?2
?3
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 
 
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses

90
:1
;2
 
 

?0
?1
 
 
 
 
 
 

}0

}0
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 

~0
1

~0
1
?2
?3
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 
 
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses

D0
E1
F2
 
 

?0
?1
 
 
 
 
 
 

?0

?0
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 

?0
?1
 
?0
?1
?2
?3
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 
 
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses

O0
P1
Q2
 
 

?0
?1
 
 
 
 
 
 

?0

?0
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 

?0
?1
 
?0
?1
?2
?3
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
 
 
 
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses

Z0
[1
\2
 
 

?0
?1
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

?0
?1
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

?0
?1
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

?0
?1
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

?0
?1
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

?0
?1
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

?0
?1
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

?0
?1
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

?0
?1
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

?0
?1
 
 
 
 
 
 
?
serving_default_input_1Placeholder*/
_output_shapes
:?????????@@*
dtype0*$
shape:?????????@@
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d_1/kernelbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_2/kernelbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_3/kernelbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_varianceconv2d_4/kernelbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_varianceconv2d_5/kernelbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_transpose_1/kernelbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_transpose_2/kernelbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv2d_transpose_3/kernelbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_varianceconv2d_transpose_4/kernelbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv2d_transpose_6/kernelconv2d_transpose_6/bias*;
Tin4
220*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*Q
_read_only_resource_inputs3
1/	
 !"#$%&'()*+,-./*-
config_proto

CPU

GPU 2J 8? *0
f+R)
'__inference_signature_wrapper_289601238
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename-conv2d_transpose_6/kernel/Read/ReadVariableOp+conv2d_transpose_6/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp/batch_normalization_4/gamma/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp/batch_normalization_5/gamma/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp-conv2d_transpose_1/kernel/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp-conv2d_transpose_2/kernel/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp-conv2d_transpose_3/kernel/Read/ReadVariableOp/batch_normalization_9/gamma/Read/ReadVariableOp.batch_normalization_9/beta/Read/ReadVariableOp-conv2d_transpose_4/kernel/Read/ReadVariableOp0batch_normalization_10/gamma/Read/ReadVariableOp/batch_normalization_10/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp5batch_normalization_9/moving_mean/Read/ReadVariableOp9batch_normalization_9/moving_variance/Read/ReadVariableOp6batch_normalization_10/moving_mean/Read/ReadVariableOp:batch_normalization_10/moving_variance/Read/ReadVariableOpConst*<
Tin5
321*
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
GPU 2J 8? *+
f&R$
"__inference__traced_save_289603942
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_transpose_6/kernelconv2d_transpose_6/biasconv2d_1/kernelbatch_normalization_2/gammabatch_normalization_2/betaconv2d_2/kernelbatch_normalization_3/gammabatch_normalization_3/betaconv2d_3/kernelbatch_normalization_4/gammabatch_normalization_4/betaconv2d_4/kernelbatch_normalization_5/gammabatch_normalization_5/betaconv2d_5/kernelbatch_normalization_6/gammabatch_normalization_6/betaconv2d_transpose_1/kernelbatch_normalization_7/gammabatch_normalization_7/betaconv2d_transpose_2/kernelbatch_normalization_8/gammabatch_normalization_8/betaconv2d_transpose_3/kernelbatch_normalization_9/gammabatch_normalization_9/betaconv2d_transpose_4/kernelbatch_normalization_10/gammabatch_normalization_10/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variance!batch_normalization_3/moving_mean%batch_normalization_3/moving_variance!batch_normalization_4/moving_mean%batch_normalization_4/moving_variance!batch_normalization_5/moving_mean%batch_normalization_5/moving_variance!batch_normalization_6/moving_mean%batch_normalization_6/moving_variance!batch_normalization_7/moving_mean%batch_normalization_7/moving_variance!batch_normalization_8/moving_mean%batch_normalization_8/moving_variance!batch_normalization_9/moving_mean%batch_normalization_9/moving_variance"batch_normalization_10/moving_mean&batch_normalization_10/moving_variance*;
Tin4
220*
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
GPU 2J 8? *.
f)R'
%__inference__traced_restore_289604093??,
?
G
+__inference_re_lu_3_layer_call_fn_289603706

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_3_layer_call_and_return_conditional_losses_2895997612
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
x
L__inference_concatenate_1_layer_call_and_return_conditional_losses_289602518
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,????????????????????????????:??????????:l h
B
_output_shapes0
.:,????????????????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_289597459

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
G__inference_conv2d_1_layer_call_and_return_conditional_losses_289597368

inputs8
conv2d_readvariableop_resource: 
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
K__inference_sequential_6_layer_call_and_return_conditional_losses_289598791

inputs.
conv2d_5_289598753:??.
batch_normalization_6_289598774:	?.
batch_normalization_6_289598776:	?.
batch_normalization_6_289598778:	?.
batch_normalization_6_289598780:	?
identity??-batch_normalization_6/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_5_289598753*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_5_layer_call_and_return_conditional_losses_2895987522"
 conv2d_5/StatefulPartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_6_289598774batch_normalization_6_289598776batch_normalization_6_289598778batch_normalization_6_289598780*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_2895987732/
-batch_normalization_6/StatefulPartitionedCall?
leaky_re_lu_5/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_2895987882
leaky_re_lu_5/PartitionedCall?
IdentityIdentity&leaky_re_lu_5/PartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_289599677

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_3_layer_call_and_return_conditional_losses_289597920
conv2d_2_input,
conv2d_2_289597906: @-
batch_normalization_3_289597909:@-
batch_normalization_3_289597911:@-
batch_normalization_3_289597913:@-
batch_normalization_3_289597915:@
identity??-batch_normalization_3/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallconv2d_2_inputconv2d_2_289597906*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_2_layer_call_and_return_conditional_losses_2895977142"
 conv2d_2/StatefulPartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_3_289597909batch_normalization_3_289597911batch_normalization_3_289597913batch_normalization_3_289597915*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2895978052/
-batch_normalization_3/StatefulPartitionedCall?
leaky_re_lu_2/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_2895977502
leaky_re_lu_2/PartitionedCall?
IdentityIdentity&leaky_re_lu_2/PartitionedCall:output:0.^batch_normalization_3/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????   : : : : : 2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall:_ [
/
_output_shapes
:?????????   
(
_user_specified_nameconv2d_2_input
?
?
G__inference_conv2d_2_layer_call_and_return_conditional_losses_289602905

inputs8
conv2d_readvariableop_resource: @
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????   : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?#
?
K__inference_sequential_4_layer_call_and_return_conditional_losses_289602120

inputsB
'conv2d_3_conv2d_readvariableop_resource:@?<
-batch_normalization_4_readvariableop_resource:	?>
/batch_normalization_4_readvariableop_1_resource:	?M
>batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	?
identity??$batch_normalization_4/AssignNewValue?&batch_normalization_4/AssignNewValue_1?5batch_normalization_4/FusedBatchNormV3/ReadVariableOp?7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_4/ReadVariableOp?&batch_normalization_4/ReadVariableOp_1?conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2DConv2Dinputs&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_3/Conv2D?
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_4/ReadVariableOp?
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_4/ReadVariableOp_1?
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3conv2d_3/Conv2D:output:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_4/FusedBatchNormV3?
$batch_normalization_4/AssignNewValueAssignVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource3batch_normalization_4/FusedBatchNormV3:batch_mean:06^batch_normalization_4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_4/AssignNewValue?
&batch_normalization_4/AssignNewValue_1AssignVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_4/FusedBatchNormV3:batch_variance:08^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_4/AssignNewValue_1?
leaky_re_lu_3/LeakyRelu	LeakyRelu*batch_normalization_4/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_3/LeakyRelu?
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0%^batch_normalization_4/AssignNewValue'^batch_normalization_4/AssignNewValue_16^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1^conv2d_3/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@: : : : : 2L
$batch_normalization_4/AssignNewValue$batch_normalization_4/AssignNewValue2P
&batch_normalization_4/AssignNewValue_1&batch_normalization_4/AssignNewValue_12n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_289603280

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_7_layer_call_and_return_conditional_losses_289599265
conv2d_transpose_1_input8
conv2d_transpose_1_289599251:??.
batch_normalization_7_289599254:	?.
batch_normalization_7_289599256:	?.
batch_normalization_7_289599258:	?.
batch_normalization_7_289599260:	?
identity??-batch_normalization_7/StatefulPartitionedCall?*conv2d_transpose_1/StatefulPartitionedCall?
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_1_inputconv2d_transpose_1_289599251*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_2895989892,
*conv2d_transpose_1/StatefulPartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_7_289599254batch_normalization_7_289599256batch_normalization_7_289599258batch_normalization_7_289599260*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2895990632/
-batch_normalization_7/StatefulPartitionedCall?
re_lu_1/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_1_layer_call_and_return_conditional_losses_2895991472
re_lu_1/PartitionedCall?
IdentityIdentity re_lu_1/PartitionedCall:output:0.^batch_normalization_7/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall:j f
0
_output_shapes
:??????????
2
_user_specified_nameconv2d_transpose_1_input
?
v
J__inference_concatenate_layer_call_and_return_conditional_losses_289602405
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,????????????????????????????:??????????:l h
B
_output_shapes0
.:,????????????????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_289603410

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
1__inference_sequential_10_layer_call_fn_289600084
conv2d_transpose_4_input"
unknown:@?
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_sequential_10_layer_call_and_return_conditional_losses_2896000712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
0
_output_shapes
:??????????
2
_user_specified_nameconv2d_transpose_4_input
?
?
G__inference_conv2d_4_layer_call_and_return_conditional_losses_289598406

inputs:
conv2d_readvariableop_resource:??
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
L__inference_sequential_10_layer_call_and_return_conditional_losses_289600169
conv2d_transpose_4_input7
conv2d_transpose_4_289600155:@?.
 batch_normalization_10_289600158:@.
 batch_normalization_10_289600160:@.
 batch_normalization_10_289600162:@.
 batch_normalization_10_289600164:@
identity??.batch_normalization_10/StatefulPartitionedCall?*conv2d_transpose_4/StatefulPartitionedCall?
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_4_inputconv2d_transpose_4_289600155*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_2895999102,
*conv2d_transpose_4/StatefulPartitionedCall?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0 batch_normalization_10_289600158 batch_normalization_10_289600160 batch_normalization_10_289600162 batch_normalization_10_289600164*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_28959994020
.batch_normalization_10/StatefulPartitionedCall?
re_lu_4/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_4_layer_call_and_return_conditional_losses_2896000682
re_lu_4/PartitionedCall?
IdentityIdentity re_lu_4/PartitionedCall:output:0/^batch_normalization_10/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall:j f
0
_output_shapes
:??????????
2
_user_specified_nameconv2d_transpose_4_input
?
?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_289597389

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
? 
?
Q__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_289599603

inputsD
(conv2d_transpose_readvariableop_resource:??
identity??conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
conv2d_transpose?
IdentityIdentityconv2d_transpose:output:0 ^conv2d_transpose/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_289602800

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
K__inference_sequential_5_layer_call_and_return_conditional_losses_289598445

inputs.
conv2d_4_289598407:??.
batch_normalization_5_289598428:	?.
batch_normalization_5_289598430:	?.
batch_normalization_5_289598432:	?.
batch_normalization_5_289598434:	?
identity??-batch_normalization_5/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4_289598407*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_4_layer_call_and_return_conditional_losses_2895984062"
 conv2d_4/StatefulPartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_5_289598428batch_normalization_5_289598430batch_normalization_5_289598432batch_normalization_5_289598434*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2895984272/
-batch_normalization_5/StatefulPartitionedCall?
leaky_re_lu_4/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_2895984422
leaky_re_lu_4/PartitionedCall?
IdentityIdentity&leaky_re_lu_4/PartitionedCall:output:0.^batch_normalization_5/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_5_layer_call_fn_289602224

inputs#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_5_layer_call_and_return_conditional_losses_2895985502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_6_layer_call_fn_289603454

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_2895986782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_289598442

inputs
identitym
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:??????????*
alpha%???>2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_4_layer_call_fn_289602135

inputs"
unknown:@?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_4_layer_call_and_return_conditional_losses_2895980992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
K__inference_sequential_9_layer_call_and_return_conditional_losses_289599879
conv2d_transpose_3_input8
conv2d_transpose_3_289599865:??.
batch_normalization_9_289599868:	?.
batch_normalization_9_289599870:	?.
batch_normalization_9_289599872:	?.
batch_normalization_9_289599874:	?
identity??-batch_normalization_9/StatefulPartitionedCall?*conv2d_transpose_3/StatefulPartitionedCall?
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_3_inputconv2d_transpose_3_289599865*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_2895996032,
*conv2d_transpose_3/StatefulPartitionedCall?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0batch_normalization_9_289599868batch_normalization_9_289599870batch_normalization_9_289599872batch_normalization_9_289599874*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2895996772/
-batch_normalization_9/StatefulPartitionedCall?
re_lu_3/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_3_layer_call_and_return_conditional_losses_2895997612
re_lu_3/PartitionedCall?
IdentityIdentity re_lu_3/PartitionedCall:output:0.^batch_normalization_9/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall:j f
0
_output_shapes
:??????????
2
_user_specified_nameconv2d_transpose_3_input
?#
?
K__inference_sequential_5_layer_call_and_return_conditional_losses_289602194

inputsC
'conv2d_4_conv2d_readvariableop_resource:??<
-batch_normalization_5_readvariableop_resource:	?>
/batch_normalization_5_readvariableop_1_resource:	?M
>batch_normalization_5_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:	?
identity??$batch_normalization_5/AssignNewValue?&batch_normalization_5/AssignNewValue_1?5batch_normalization_5/FusedBatchNormV3/ReadVariableOp?7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_5/ReadVariableOp?&batch_normalization_5/ReadVariableOp_1?conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_4/Conv2D?
$batch_normalization_5/ReadVariableOpReadVariableOp-batch_normalization_5_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_5/ReadVariableOp?
&batch_normalization_5/ReadVariableOp_1ReadVariableOp/batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_5/ReadVariableOp_1?
5batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_5/FusedBatchNormV3FusedBatchNormV3conv2d_4/Conv2D:output:0,batch_normalization_5/ReadVariableOp:value:0.batch_normalization_5/ReadVariableOp_1:value:0=batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_5/FusedBatchNormV3?
$batch_normalization_5/AssignNewValueAssignVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource3batch_normalization_5/FusedBatchNormV3:batch_mean:06^batch_normalization_5/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_5/AssignNewValue?
&batch_normalization_5/AssignNewValue_1AssignVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_5/FusedBatchNormV3:batch_variance:08^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_5/AssignNewValue_1?
leaky_re_lu_4/LeakyRelu	LeakyRelu*batch_normalization_5/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_4/LeakyRelu?
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0%^batch_normalization_5/AssignNewValue'^batch_normalization_5/AssignNewValue_16^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_1^conv2d_4/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2L
$batch_normalization_5/AssignNewValue$batch_normalization_5/AssignNewValue2P
&batch_normalization_5/AssignNewValue_1&batch_normalization_5/AssignNewValue_12n
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp5batch_normalization_5/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_17batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_5/ReadVariableOp$batch_normalization_5/ReadVariableOp2P
&batch_normalization_5/ReadVariableOp_1&batch_normalization_5/ReadVariableOp_12@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_6_layer_call_and_return_conditional_losses_289598896

inputs.
conv2d_5_289598882:??.
batch_normalization_6_289598885:	?.
batch_normalization_6_289598887:	?.
batch_normalization_6_289598889:	?.
batch_normalization_6_289598891:	?
identity??-batch_normalization_6/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_5_289598882*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_5_layer_call_and_return_conditional_losses_2895987522"
 conv2d_5/StatefulPartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_6_289598885batch_normalization_6_289598887batch_normalization_6_289598889batch_normalization_6_289598891*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_2895988432/
-batch_normalization_6/StatefulPartitionedCall?
leaky_re_lu_5/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_2895987882
leaky_re_lu_5/PartitionedCall?
IdentityIdentity&leaky_re_lu_5/PartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_289597735

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
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_289603132

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_289597294

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
)__inference_model_layer_call_fn_289601928

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: #
	unknown_4: @
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@$
	unknown_9:@?

unknown_10:	?

unknown_11:	?

unknown_12:	?

unknown_13:	?&

unknown_14:??

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?&

unknown_19:??

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?&

unknown_24:??

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?&

unknown_34:??

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:	?%

unknown_39:@?

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@$

unknown_44:`

unknown_45:
identity??StatefulPartitionedCall?
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
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45*;
Tin4
220*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*?
_read_only_resource_inputs!
 !$%&)*+./*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_layer_call_and_return_conditional_losses_2896007172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:?????????@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?Z
?
D__inference_model_layer_call_and_return_conditional_losses_289600379

inputs0
sequential_2_289600238: $
sequential_2_289600240: $
sequential_2_289600242: $
sequential_2_289600244: $
sequential_2_289600246: 0
sequential_3_289600249: @$
sequential_3_289600251:@$
sequential_3_289600253:@$
sequential_3_289600255:@$
sequential_3_289600257:@1
sequential_4_289600260:@?%
sequential_4_289600262:	?%
sequential_4_289600264:	?%
sequential_4_289600266:	?%
sequential_4_289600268:	?2
sequential_5_289600271:??%
sequential_5_289600273:	?%
sequential_5_289600275:	?%
sequential_5_289600277:	?%
sequential_5_289600279:	?2
sequential_6_289600282:??%
sequential_6_289600284:	?%
sequential_6_289600286:	?%
sequential_6_289600288:	?%
sequential_6_289600290:	?2
sequential_7_289600293:??%
sequential_7_289600295:	?%
sequential_7_289600297:	?%
sequential_7_289600299:	?%
sequential_7_289600301:	?2
sequential_8_289600313:??%
sequential_8_289600315:	?%
sequential_8_289600317:	?%
sequential_8_289600319:	?%
sequential_8_289600321:	?2
sequential_9_289600333:??%
sequential_9_289600335:	?%
sequential_9_289600337:	?%
sequential_9_289600339:	?%
sequential_9_289600341:	?2
sequential_10_289600353:@?%
sequential_10_289600355:@%
sequential_10_289600357:@%
sequential_10_289600359:@%
sequential_10_289600361:@6
conv2d_transpose_6_289600373:`*
conv2d_transpose_6_289600375:
identity??*conv2d_transpose_6/StatefulPartitionedCall?%sequential_10/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?$sequential_3/StatefulPartitionedCall?$sequential_4/StatefulPartitionedCall?$sequential_5/StatefulPartitionedCall?$sequential_6/StatefulPartitionedCall?$sequential_7/StatefulPartitionedCall?$sequential_8/StatefulPartitionedCall?$sequential_9/StatefulPartitionedCall?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallinputssequential_2_289600238sequential_2_289600240sequential_2_289600242sequential_2_289600244sequential_2_289600246*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_2_layer_call_and_return_conditional_losses_2895974072&
$sequential_2/StatefulPartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0sequential_3_289600249sequential_3_289600251sequential_3_289600253sequential_3_289600255sequential_3_289600257*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_3_layer_call_and_return_conditional_losses_2895977532&
$sequential_3/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0sequential_4_289600260sequential_4_289600262sequential_4_289600264sequential_4_289600266sequential_4_289600268*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_4_layer_call_and_return_conditional_losses_2895980992&
$sequential_4/StatefulPartitionedCall?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0sequential_5_289600271sequential_5_289600273sequential_5_289600275sequential_5_289600277sequential_5_289600279*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_5_layer_call_and_return_conditional_losses_2895984452&
$sequential_5/StatefulPartitionedCall?
$sequential_6/StatefulPartitionedCallStatefulPartitionedCall-sequential_5/StatefulPartitionedCall:output:0sequential_6_289600282sequential_6_289600284sequential_6_289600286sequential_6_289600288sequential_6_289600290*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_6_layer_call_and_return_conditional_losses_2895987912&
$sequential_6/StatefulPartitionedCall?
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall-sequential_6/StatefulPartitionedCall:output:0sequential_7_289600293sequential_7_289600295sequential_7_289600297sequential_7_289600299sequential_7_289600301*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_7_layer_call_and_return_conditional_losses_2895991502&
$sequential_7/StatefulPartitionedCall?
concatenate/PartitionedCallPartitionedCall-sequential_7/StatefulPartitionedCall:output:0-sequential_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_layer_call_and_return_conditional_losses_2896003112
concatenate/PartitionedCall?
$sequential_8/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0sequential_8_289600313sequential_8_289600315sequential_8_289600317sequential_8_289600319sequential_8_289600321*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_8_layer_call_and_return_conditional_losses_2895994572&
$sequential_8/StatefulPartitionedCall?
concatenate_1/PartitionedCallPartitionedCall-sequential_8/StatefulPartitionedCall:output:0-sequential_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_concatenate_1_layer_call_and_return_conditional_losses_2896003312
concatenate_1/PartitionedCall?
$sequential_9/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0sequential_9_289600333sequential_9_289600335sequential_9_289600337sequential_9_289600339sequential_9_289600341*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_9_layer_call_and_return_conditional_losses_2895997642&
$sequential_9/StatefulPartitionedCall?
concatenate_2/PartitionedCallPartitionedCall-sequential_9/StatefulPartitionedCall:output:0-sequential_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_concatenate_2_layer_call_and_return_conditional_losses_2896003512
concatenate_2/PartitionedCall?
%sequential_10/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0sequential_10_289600353sequential_10_289600355sequential_10_289600357sequential_10_289600359sequential_10_289600361*
Tin

2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_sequential_10_layer_call_and_return_conditional_losses_2896000712'
%sequential_10/StatefulPartitionedCall?
concatenate_3/PartitionedCallPartitionedCall.sequential_10/StatefulPartitionedCall:output:0-sequential_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  `* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_concatenate_3_layer_call_and_return_conditional_losses_2896003712
concatenate_3/PartitionedCall?
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0conv2d_transpose_6_289600373conv2d_transpose_6_289600375*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_2896002212,
*conv2d_transpose_6/StatefulPartitionedCall?
IdentityIdentity3conv2d_transpose_6/StatefulPartitionedCall:output:0+^conv2d_transpose_6/StatefulPartitionedCall&^sequential_10/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall%^sequential_6/StatefulPartitionedCall%^sequential_7/StatefulPartitionedCall%^sequential_8/StatefulPartitionedCall%^sequential_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:?????????@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall2L
$sequential_6/StatefulPartitionedCall$sequential_6/StatefulPartitionedCall2L
$sequential_7/StatefulPartitionedCall$sequential_7/StatefulPartitionedCall2L
$sequential_8/StatefulPartitionedCall$sequential_8/StatefulPartitionedCall2L
$sequential_9/StatefulPartitionedCall$sequential_9/StatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_8_layer_call_fn_289603624

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2895993702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_leaky_re_lu_5_layer_call_fn_289603490

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_2895987882
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_289603485

inputs
identitym
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:??????????*
alpha%???>2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_289603078

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_289597250

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_289597942

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?1
?
K__inference_sequential_8_layer_call_and_return_conditional_losses_289602446

inputsW
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource:??<
-batch_normalization_8_readvariableop_resource:	?>
/batch_normalization_8_readvariableop_1_resource:	?M
>batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	?
identity??5batch_normalization_8/FusedBatchNormV3/ReadVariableOp?7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_8/ReadVariableOp?&batch_normalization_8/ReadVariableOp_1?2conv2d_transpose_2/conv2d_transpose/ReadVariableOpj
conv2d_transpose_2/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_transpose_2/Shape?
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_2/strided_slice/stack?
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_2/strided_slice/stack_1?
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_2/strided_slice/stack_2?
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_2/strided_slicez
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_2/stack/1z
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_2/stack/2{
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_2/stack/3?
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_2/stack?
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_2/strided_slice_1/stack?
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_2/strided_slice_1/stack_1?
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_2/strided_slice_1/stack_2?
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_2/strided_slice_1?
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype024
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#conv2d_transpose_2/conv2d_transpose?
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_8/ReadVariableOp?
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_8/ReadVariableOp_1?
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3,conv2d_transpose_2/conv2d_transpose:output:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_8/FusedBatchNormV3?
re_lu_2/ReluRelu*batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
re_lu_2/Relu?
IdentityIdentityre_lu_2/Relu:activations:06^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_13^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
6__inference_conv2d_transpose_6_layer_call_fn_289600231

inputs!
unknown:`
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
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_2896002212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????`: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
? 
?
Q__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_289598989

inputsD
(conv2d_transpose_readvariableop_resource:??
identity??conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
conv2d_transpose?
IdentityIdentityconv2d_transpose:output:0 ^conv2d_transpose/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_8_layer_call_and_return_conditional_losses_289599510

inputs8
conv2d_transpose_2_289599496:??.
batch_normalization_8_289599499:	?.
batch_normalization_8_289599501:	?.
batch_normalization_8_289599503:	?.
batch_normalization_8_289599505:	?
identity??-batch_normalization_8/StatefulPartitionedCall?*conv2d_transpose_2/StatefulPartitionedCall?
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_2_289599496*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_2895992962,
*conv2d_transpose_2/StatefulPartitionedCall?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_8_289599499batch_normalization_8_289599501batch_normalization_8_289599503batch_normalization_8_289599505*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2895993702/
-batch_normalization_8/StatefulPartitionedCall?
re_lu_2/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_2_layer_call_and_return_conditional_losses_2895994542
re_lu_2/PartitionedCall?
IdentityIdentity re_lu_2/PartitionedCall:output:0.^batch_normalization_8/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_4_layer_call_and_return_conditional_losses_289598249
conv2d_3_input-
conv2d_3_289598235:@?.
batch_normalization_4_289598238:	?.
batch_normalization_4_289598240:	?.
batch_normalization_4_289598242:	?.
batch_normalization_4_289598244:	?
identity??-batch_normalization_4/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputconv2d_3_289598235*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_3_layer_call_and_return_conditional_losses_2895980602"
 conv2d_3/StatefulPartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_4_289598238batch_normalization_4_289598240batch_normalization_4_289598242batch_normalization_4_289598244*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2895980812/
-batch_normalization_4/StatefulPartitionedCall?
leaky_re_lu_3/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_2895980962
leaky_re_lu_3/PartitionedCall?
IdentityIdentity&leaky_re_lu_3/PartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@: : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall:_ [
/
_output_shapes
:?????????@
(
_user_specified_nameconv2d_3_input
?
?
'__inference_signature_wrapper_289601238
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: #
	unknown_4: @
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@$
	unknown_9:@?

unknown_10:	?

unknown_11:	?

unknown_12:	?

unknown_13:	?&

unknown_14:??

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?&

unknown_19:??

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?&

unknown_24:??

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?&

unknown_34:??

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:	?%

unknown_39:@?

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@$

unknown_44:`

unknown_45:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45*;
Tin4
220*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*Q
_read_only_resource_inputs3
1/	
 !"#$%&'()*+,-./*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference__wrapped_model_2895972282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:?????????@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????@@
!
_user_specified_name	input_1
?
?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_289602930

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
?
?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_289602966

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
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_5_layer_call_fn_289603319

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2895984272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_8_layer_call_fn_289603611

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2895993262
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_6_layer_call_fn_289603441

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_2895986342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_3_layer_call_and_return_conditional_losses_289598060

inputs9
conv2d_readvariableop_resource:@?
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_289603598

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
6__inference_conv2d_transpose_1_layer_call_fn_289598997

inputs#
unknown:??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_2895989892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
G
+__inference_re_lu_1_layer_call_fn_289603562

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_1_layer_call_and_return_conditional_losses_2895991472
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
0__inference_sequential_8_layer_call_fn_289599538
conv2d_transpose_2_input#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_8_layer_call_and_return_conditional_losses_2895995102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
0
_output_shapes
:??????????
2
_user_specified_nameconv2d_transpose_2_input
?
?
K__inference_sequential_2_layer_call_and_return_conditional_losses_289601950

inputsA
'conv2d_1_conv2d_readvariableop_resource: ;
-batch_normalization_2_readvariableop_resource: =
/batch_normalization_2_readvariableop_1_resource: L
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource: 
identity??5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_2/ReadVariableOp?&batch_normalization_2/ReadVariableOp_1?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_1/Conv2D?
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
: *
dtype02&
$batch_normalization_2/ReadVariableOp?
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&batch_normalization_2/ReadVariableOp_1?
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_1/Conv2D:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( 2(
&batch_normalization_2/FusedBatchNormV3?
leaky_re_lu_1/LeakyRelu	LeakyRelu*batch_normalization_2/FusedBatchNormV3:y:0*/
_output_shapes
:?????????   *
alpha%???>2
leaky_re_lu_1/LeakyRelu?
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@@: : : : : 2n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?Y
?
D__inference_model_layer_call_and_return_conditional_losses_289600717

inputs0
sequential_2_289600608: $
sequential_2_289600610: $
sequential_2_289600612: $
sequential_2_289600614: $
sequential_2_289600616: 0
sequential_3_289600619: @$
sequential_3_289600621:@$
sequential_3_289600623:@$
sequential_3_289600625:@$
sequential_3_289600627:@1
sequential_4_289600630:@?%
sequential_4_289600632:	?%
sequential_4_289600634:	?%
sequential_4_289600636:	?%
sequential_4_289600638:	?2
sequential_5_289600641:??%
sequential_5_289600643:	?%
sequential_5_289600645:	?%
sequential_5_289600647:	?%
sequential_5_289600649:	?2
sequential_6_289600652:??%
sequential_6_289600654:	?%
sequential_6_289600656:	?%
sequential_6_289600658:	?%
sequential_6_289600660:	?2
sequential_7_289600663:??%
sequential_7_289600665:	?%
sequential_7_289600667:	?%
sequential_7_289600669:	?%
sequential_7_289600671:	?2
sequential_8_289600675:??%
sequential_8_289600677:	?%
sequential_8_289600679:	?%
sequential_8_289600681:	?%
sequential_8_289600683:	?2
sequential_9_289600687:??%
sequential_9_289600689:	?%
sequential_9_289600691:	?%
sequential_9_289600693:	?%
sequential_9_289600695:	?2
sequential_10_289600699:@?%
sequential_10_289600701:@%
sequential_10_289600703:@%
sequential_10_289600705:@%
sequential_10_289600707:@6
conv2d_transpose_6_289600711:`*
conv2d_transpose_6_289600713:
identity??*conv2d_transpose_6/StatefulPartitionedCall?%sequential_10/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?$sequential_3/StatefulPartitionedCall?$sequential_4/StatefulPartitionedCall?$sequential_5/StatefulPartitionedCall?$sequential_6/StatefulPartitionedCall?$sequential_7/StatefulPartitionedCall?$sequential_8/StatefulPartitionedCall?$sequential_9/StatefulPartitionedCall?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallinputssequential_2_289600608sequential_2_289600610sequential_2_289600612sequential_2_289600614sequential_2_289600616*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_2_layer_call_and_return_conditional_losses_2895975122&
$sequential_2/StatefulPartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0sequential_3_289600619sequential_3_289600621sequential_3_289600623sequential_3_289600625sequential_3_289600627*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_3_layer_call_and_return_conditional_losses_2895978582&
$sequential_3/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0sequential_4_289600630sequential_4_289600632sequential_4_289600634sequential_4_289600636sequential_4_289600638*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_4_layer_call_and_return_conditional_losses_2895982042&
$sequential_4/StatefulPartitionedCall?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0sequential_5_289600641sequential_5_289600643sequential_5_289600645sequential_5_289600647sequential_5_289600649*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_5_layer_call_and_return_conditional_losses_2895985502&
$sequential_5/StatefulPartitionedCall?
$sequential_6/StatefulPartitionedCallStatefulPartitionedCall-sequential_5/StatefulPartitionedCall:output:0sequential_6_289600652sequential_6_289600654sequential_6_289600656sequential_6_289600658sequential_6_289600660*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_6_layer_call_and_return_conditional_losses_2895988962&
$sequential_6/StatefulPartitionedCall?
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall-sequential_6/StatefulPartitionedCall:output:0sequential_7_289600663sequential_7_289600665sequential_7_289600667sequential_7_289600669sequential_7_289600671*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_7_layer_call_and_return_conditional_losses_2895992032&
$sequential_7/StatefulPartitionedCall?
concatenate/PartitionedCallPartitionedCall-sequential_7/StatefulPartitionedCall:output:0-sequential_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_layer_call_and_return_conditional_losses_2896003112
concatenate/PartitionedCall?
$sequential_8/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0sequential_8_289600675sequential_8_289600677sequential_8_289600679sequential_8_289600681sequential_8_289600683*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_8_layer_call_and_return_conditional_losses_2895995102&
$sequential_8/StatefulPartitionedCall?
concatenate_1/PartitionedCallPartitionedCall-sequential_8/StatefulPartitionedCall:output:0-sequential_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_concatenate_1_layer_call_and_return_conditional_losses_2896003312
concatenate_1/PartitionedCall?
$sequential_9/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0sequential_9_289600687sequential_9_289600689sequential_9_289600691sequential_9_289600693sequential_9_289600695*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_9_layer_call_and_return_conditional_losses_2895998172&
$sequential_9/StatefulPartitionedCall?
concatenate_2/PartitionedCallPartitionedCall-sequential_9/StatefulPartitionedCall:output:0-sequential_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_concatenate_2_layer_call_and_return_conditional_losses_2896003512
concatenate_2/PartitionedCall?
%sequential_10/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0sequential_10_289600699sequential_10_289600701sequential_10_289600703sequential_10_289600705sequential_10_289600707*
Tin

2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_sequential_10_layer_call_and_return_conditional_losses_2896001242'
%sequential_10/StatefulPartitionedCall?
concatenate_3/PartitionedCallPartitionedCall.sequential_10/StatefulPartitionedCall:output:0-sequential_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  `* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_concatenate_3_layer_call_and_return_conditional_losses_2896003712
concatenate_3/PartitionedCall?
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0conv2d_transpose_6_289600711conv2d_transpose_6_289600713*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_2896002212,
*conv2d_transpose_6/StatefulPartitionedCall?
IdentityIdentity3conv2d_transpose_6/StatefulPartitionedCall:output:0+^conv2d_transpose_6/StatefulPartitionedCall&^sequential_10/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall%^sequential_6/StatefulPartitionedCall%^sequential_7/StatefulPartitionedCall%^sequential_8/StatefulPartitionedCall%^sequential_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:?????????@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall2L
$sequential_6/StatefulPartitionedCall$sequential_6/StatefulPartitionedCall2L
$sequential_7/StatefulPartitionedCall$sequential_7/StatefulPartitionedCall2L
$sequential_8/StatefulPartitionedCall$sequential_8/StatefulPartitionedCall2L
$sequential_9/StatefulPartitionedCall$sequential_9/StatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?1
?
K__inference_sequential_7_layer_call_and_return_conditional_losses_289602333

inputsW
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??<
-batch_normalization_7_readvariableop_resource:	?>
/batch_normalization_7_readvariableop_1_resource:	?M
>batch_normalization_7_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:	?
identity??5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_7/ReadVariableOp?&batch_normalization_7/ReadVariableOp_1?2conv2d_transpose_1/conv2d_transpose/ReadVariableOpj
conv2d_transpose_1/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_transpose_1/Shape?
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_1/strided_slice/stack?
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_1?
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_2?
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_1/strided_slicez
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_1/stack/1z
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_1/stack/2{
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_1/stack/3?
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_1/stack?
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_1/strided_slice_1/stack?
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_1?
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_2?
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_1/strided_slice_1?
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype024
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#conv2d_transpose_1/conv2d_transpose?
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_7/ReadVariableOp?
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_7/ReadVariableOp_1?
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3,conv2d_transpose_1/conv2d_transpose:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_7/FusedBatchNormV3?
re_lu_1/ReluRelu*batch_normalization_7/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
re_lu_1/Relu?
IdentityIdentityre_lu_1/Relu:activations:06^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_13^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_6_layer_call_and_return_conditional_losses_289602246

inputsC
'conv2d_5_conv2d_readvariableop_resource:??<
-batch_normalization_6_readvariableop_resource:	?>
/batch_normalization_6_readvariableop_1_resource:	?M
>batch_normalization_6_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:	?
identity??5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_6/ReadVariableOp?&batch_normalization_6/ReadVariableOp_1?conv2d_5/Conv2D/ReadVariableOp?
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_5/Conv2D/ReadVariableOp?
conv2d_5/Conv2DConv2Dinputs&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_5/Conv2D?
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_6/ReadVariableOp?
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_6/ReadVariableOp_1?
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3conv2d_5/Conv2D:output:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_6/FusedBatchNormV3?
leaky_re_lu_5/LeakyRelu	LeakyRelu*batch_normalization_6/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_5/LeakyRelu?
IdentityIdentity%leaky_re_lu_5/LeakyRelu:activations:06^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1^conv2d_5/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
0__inference_sequential_9_layer_call_fn_289599845
conv2d_transpose_3_input#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_9_layer_call_and_return_conditional_losses_2895998172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
0
_output_shapes
:??????????
2
_user_specified_nameconv2d_transpose_3_input
?
?
K__inference_sequential_6_layer_call_and_return_conditional_losses_289598941
conv2d_5_input.
conv2d_5_289598927:??.
batch_normalization_6_289598930:	?.
batch_normalization_6_289598932:	?.
batch_normalization_6_289598934:	?.
batch_normalization_6_289598936:	?
identity??-batch_normalization_6/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallconv2d_5_inputconv2d_5_289598927*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_5_layer_call_and_return_conditional_losses_2895987522"
 conv2d_5/StatefulPartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_6_289598930batch_normalization_6_289598932batch_normalization_6_289598934batch_normalization_6_289598936*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_2895987732/
-batch_normalization_6/StatefulPartitionedCall?
leaky_re_lu_5/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_2895987882
leaky_re_lu_5/PartitionedCall?
IdentityIdentity&leaky_re_lu_5/PartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall:` \
0
_output_shapes
:??????????
(
_user_specified_nameconv2d_5_input
?
?
0__inference_sequential_7_layer_call_fn_289602398

inputs#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_7_layer_call_and_return_conditional_losses_2895992032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_3_layer_call_fn_289602061

inputs!
unknown: @
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_3_layer_call_and_return_conditional_losses_2895977532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????   : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
6__inference_conv2d_transpose_3_layer_call_fn_289599611

inputs#
unknown:??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_2895996032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
??
?=
D__inference_model_layer_call_and_return_conditional_losses_289601730

inputsN
4sequential_2_conv2d_1_conv2d_readvariableop_resource: H
:sequential_2_batch_normalization_2_readvariableop_resource: J
<sequential_2_batch_normalization_2_readvariableop_1_resource: Y
Ksequential_2_batch_normalization_2_fusedbatchnormv3_readvariableop_resource: [
Msequential_2_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource: N
4sequential_3_conv2d_2_conv2d_readvariableop_resource: @H
:sequential_3_batch_normalization_3_readvariableop_resource:@J
<sequential_3_batch_normalization_3_readvariableop_1_resource:@Y
Ksequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:@[
Msequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:@O
4sequential_4_conv2d_3_conv2d_readvariableop_resource:@?I
:sequential_4_batch_normalization_4_readvariableop_resource:	?K
<sequential_4_batch_normalization_4_readvariableop_1_resource:	?Z
Ksequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	?\
Msequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	?P
4sequential_5_conv2d_4_conv2d_readvariableop_resource:??I
:sequential_5_batch_normalization_5_readvariableop_resource:	?K
<sequential_5_batch_normalization_5_readvariableop_1_resource:	?Z
Ksequential_5_batch_normalization_5_fusedbatchnormv3_readvariableop_resource:	?\
Msequential_5_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:	?P
4sequential_6_conv2d_5_conv2d_readvariableop_resource:??I
:sequential_6_batch_normalization_6_readvariableop_resource:	?K
<sequential_6_batch_normalization_6_readvariableop_1_resource:	?Z
Ksequential_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource:	?\
Msequential_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:	?d
Hsequential_7_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??I
:sequential_7_batch_normalization_7_readvariableop_resource:	?K
<sequential_7_batch_normalization_7_readvariableop_1_resource:	?Z
Ksequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:	?\
Msequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:	?d
Hsequential_8_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:??I
:sequential_8_batch_normalization_8_readvariableop_resource:	?K
<sequential_8_batch_normalization_8_readvariableop_1_resource:	?Z
Ksequential_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	?\
Msequential_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	?d
Hsequential_9_conv2d_transpose_3_conv2d_transpose_readvariableop_resource:??I
:sequential_9_batch_normalization_9_readvariableop_resource:	?K
<sequential_9_batch_normalization_9_readvariableop_1_resource:	?Z
Ksequential_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource:	?\
Msequential_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource:	?d
Isequential_10_conv2d_transpose_4_conv2d_transpose_readvariableop_resource:@?J
<sequential_10_batch_normalization_10_readvariableop_resource:@L
>sequential_10_batch_normalization_10_readvariableop_1_resource:@[
Msequential_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resource:@]
Osequential_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource:@U
;conv2d_transpose_6_conv2d_transpose_readvariableop_resource:`@
2conv2d_transpose_6_biasadd_readvariableop_resource:
identity??)conv2d_transpose_6/BiasAdd/ReadVariableOp?2conv2d_transpose_6/conv2d_transpose/ReadVariableOp?3sequential_10/batch_normalization_10/AssignNewValue?5sequential_10/batch_normalization_10/AssignNewValue_1?Dsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?Fsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?3sequential_10/batch_normalization_10/ReadVariableOp?5sequential_10/batch_normalization_10/ReadVariableOp_1?@sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?1sequential_2/batch_normalization_2/AssignNewValue?3sequential_2/batch_normalization_2/AssignNewValue_1?Bsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?Dsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?1sequential_2/batch_normalization_2/ReadVariableOp?3sequential_2/batch_normalization_2/ReadVariableOp_1?+sequential_2/conv2d_1/Conv2D/ReadVariableOp?1sequential_3/batch_normalization_3/AssignNewValue?3sequential_3/batch_normalization_3/AssignNewValue_1?Bsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?Dsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?1sequential_3/batch_normalization_3/ReadVariableOp?3sequential_3/batch_normalization_3/ReadVariableOp_1?+sequential_3/conv2d_2/Conv2D/ReadVariableOp?1sequential_4/batch_normalization_4/AssignNewValue?3sequential_4/batch_normalization_4/AssignNewValue_1?Bsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp?Dsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?1sequential_4/batch_normalization_4/ReadVariableOp?3sequential_4/batch_normalization_4/ReadVariableOp_1?+sequential_4/conv2d_3/Conv2D/ReadVariableOp?1sequential_5/batch_normalization_5/AssignNewValue?3sequential_5/batch_normalization_5/AssignNewValue_1?Bsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp?Dsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?1sequential_5/batch_normalization_5/ReadVariableOp?3sequential_5/batch_normalization_5/ReadVariableOp_1?+sequential_5/conv2d_4/Conv2D/ReadVariableOp?1sequential_6/batch_normalization_6/AssignNewValue?3sequential_6/batch_normalization_6/AssignNewValue_1?Bsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?Dsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?1sequential_6/batch_normalization_6/ReadVariableOp?3sequential_6/batch_normalization_6/ReadVariableOp_1?+sequential_6/conv2d_5/Conv2D/ReadVariableOp?1sequential_7/batch_normalization_7/AssignNewValue?3sequential_7/batch_normalization_7/AssignNewValue_1?Bsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Dsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?1sequential_7/batch_normalization_7/ReadVariableOp?3sequential_7/batch_normalization_7/ReadVariableOp_1??sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?1sequential_8/batch_normalization_8/AssignNewValue?3sequential_8/batch_normalization_8/AssignNewValue_1?Bsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?Dsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?1sequential_8/batch_normalization_8/ReadVariableOp?3sequential_8/batch_normalization_8/ReadVariableOp_1??sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?1sequential_9/batch_normalization_9/AssignNewValue?3sequential_9/batch_normalization_9/AssignNewValue_1?Bsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?Dsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?1sequential_9/batch_normalization_9/ReadVariableOp?3sequential_9/batch_normalization_9/ReadVariableOp_1??sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
+sequential_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_2/conv2d_1/Conv2D/ReadVariableOp?
sequential_2/conv2d_1/Conv2DConv2Dinputs3sequential_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
sequential_2/conv2d_1/Conv2D?
1sequential_2/batch_normalization_2/ReadVariableOpReadVariableOp:sequential_2_batch_normalization_2_readvariableop_resource*
_output_shapes
: *
dtype023
1sequential_2/batch_normalization_2/ReadVariableOp?
3sequential_2/batch_normalization_2/ReadVariableOp_1ReadVariableOp<sequential_2_batch_normalization_2_readvariableop_1_resource*
_output_shapes
: *
dtype025
3sequential_2/batch_normalization_2/ReadVariableOp_1?
Bsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_2_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02D
Bsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
Dsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_2_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02F
Dsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
3sequential_2/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3%sequential_2/conv2d_1/Conv2D:output:09sequential_2/batch_normalization_2/ReadVariableOp:value:0;sequential_2/batch_normalization_2/ReadVariableOp_1:value:0Jsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<25
3sequential_2/batch_normalization_2/FusedBatchNormV3?
1sequential_2/batch_normalization_2/AssignNewValueAssignVariableOpKsequential_2_batch_normalization_2_fusedbatchnormv3_readvariableop_resource@sequential_2/batch_normalization_2/FusedBatchNormV3:batch_mean:0C^sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype023
1sequential_2/batch_normalization_2/AssignNewValue?
3sequential_2/batch_normalization_2/AssignNewValue_1AssignVariableOpMsequential_2_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resourceDsequential_2/batch_normalization_2/FusedBatchNormV3:batch_variance:0E^sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype025
3sequential_2/batch_normalization_2/AssignNewValue_1?
$sequential_2/leaky_re_lu_1/LeakyRelu	LeakyRelu7sequential_2/batch_normalization_2/FusedBatchNormV3:y:0*/
_output_shapes
:?????????   *
alpha%???>2&
$sequential_2/leaky_re_lu_1/LeakyRelu?
+sequential_3/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02-
+sequential_3/conv2d_2/Conv2D/ReadVariableOp?
sequential_3/conv2d_2/Conv2DConv2D2sequential_2/leaky_re_lu_1/LeakyRelu:activations:03sequential_3/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
sequential_3/conv2d_2/Conv2D?
1sequential_3/batch_normalization_3/ReadVariableOpReadVariableOp:sequential_3_batch_normalization_3_readvariableop_resource*
_output_shapes
:@*
dtype023
1sequential_3/batch_normalization_3/ReadVariableOp?
3sequential_3/batch_normalization_3/ReadVariableOp_1ReadVariableOp<sequential_3_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:@*
dtype025
3sequential_3/batch_normalization_3/ReadVariableOp_1?
Bsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02D
Bsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?
Dsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02F
Dsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?
3sequential_3/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3%sequential_3/conv2d_2/Conv2D:output:09sequential_3/batch_normalization_3/ReadVariableOp:value:0;sequential_3/batch_normalization_3/ReadVariableOp_1:value:0Jsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<25
3sequential_3/batch_normalization_3/FusedBatchNormV3?
1sequential_3/batch_normalization_3/AssignNewValueAssignVariableOpKsequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_resource@sequential_3/batch_normalization_3/FusedBatchNormV3:batch_mean:0C^sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype023
1sequential_3/batch_normalization_3/AssignNewValue?
3sequential_3/batch_normalization_3/AssignNewValue_1AssignVariableOpMsequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resourceDsequential_3/batch_normalization_3/FusedBatchNormV3:batch_variance:0E^sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype025
3sequential_3/batch_normalization_3/AssignNewValue_1?
$sequential_3/leaky_re_lu_2/LeakyRelu	LeakyRelu7sequential_3/batch_normalization_3/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>2&
$sequential_3/leaky_re_lu_2/LeakyRelu?
+sequential_4/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4sequential_4_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02-
+sequential_4/conv2d_3/Conv2D/ReadVariableOp?
sequential_4/conv2d_3/Conv2DConv2D2sequential_3/leaky_re_lu_2/LeakyRelu:activations:03sequential_4/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_4/conv2d_3/Conv2D?
1sequential_4/batch_normalization_4/ReadVariableOpReadVariableOp:sequential_4_batch_normalization_4_readvariableop_resource*
_output_shapes	
:?*
dtype023
1sequential_4/batch_normalization_4/ReadVariableOp?
3sequential_4/batch_normalization_4/ReadVariableOp_1ReadVariableOp<sequential_4_batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3sequential_4/batch_normalization_4/ReadVariableOp_1?
Bsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp?
Dsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?
3sequential_4/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3%sequential_4/conv2d_3/Conv2D:output:09sequential_4/batch_normalization_4/ReadVariableOp:value:0;sequential_4/batch_normalization_4/ReadVariableOp_1:value:0Jsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<25
3sequential_4/batch_normalization_4/FusedBatchNormV3?
1sequential_4/batch_normalization_4/AssignNewValueAssignVariableOpKsequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_resource@sequential_4/batch_normalization_4/FusedBatchNormV3:batch_mean:0C^sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype023
1sequential_4/batch_normalization_4/AssignNewValue?
3sequential_4/batch_normalization_4/AssignNewValue_1AssignVariableOpMsequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resourceDsequential_4/batch_normalization_4/FusedBatchNormV3:batch_variance:0E^sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype025
3sequential_4/batch_normalization_4/AssignNewValue_1?
$sequential_4/leaky_re_lu_3/LeakyRelu	LeakyRelu7sequential_4/batch_normalization_4/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2&
$sequential_4/leaky_re_lu_3/LeakyRelu?
+sequential_5/conv2d_4/Conv2D/ReadVariableOpReadVariableOp4sequential_5_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+sequential_5/conv2d_4/Conv2D/ReadVariableOp?
sequential_5/conv2d_4/Conv2DConv2D2sequential_4/leaky_re_lu_3/LeakyRelu:activations:03sequential_5/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_5/conv2d_4/Conv2D?
1sequential_5/batch_normalization_5/ReadVariableOpReadVariableOp:sequential_5_batch_normalization_5_readvariableop_resource*
_output_shapes	
:?*
dtype023
1sequential_5/batch_normalization_5/ReadVariableOp?
3sequential_5/batch_normalization_5/ReadVariableOp_1ReadVariableOp<sequential_5_batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3sequential_5/batch_normalization_5/ReadVariableOp_1?
Bsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_5_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp?
Dsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_5_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?
3sequential_5/batch_normalization_5/FusedBatchNormV3FusedBatchNormV3%sequential_5/conv2d_4/Conv2D:output:09sequential_5/batch_normalization_5/ReadVariableOp:value:0;sequential_5/batch_normalization_5/ReadVariableOp_1:value:0Jsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<25
3sequential_5/batch_normalization_5/FusedBatchNormV3?
1sequential_5/batch_normalization_5/AssignNewValueAssignVariableOpKsequential_5_batch_normalization_5_fusedbatchnormv3_readvariableop_resource@sequential_5/batch_normalization_5/FusedBatchNormV3:batch_mean:0C^sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype023
1sequential_5/batch_normalization_5/AssignNewValue?
3sequential_5/batch_normalization_5/AssignNewValue_1AssignVariableOpMsequential_5_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resourceDsequential_5/batch_normalization_5/FusedBatchNormV3:batch_variance:0E^sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype025
3sequential_5/batch_normalization_5/AssignNewValue_1?
$sequential_5/leaky_re_lu_4/LeakyRelu	LeakyRelu7sequential_5/batch_normalization_5/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2&
$sequential_5/leaky_re_lu_4/LeakyRelu?
+sequential_6/conv2d_5/Conv2D/ReadVariableOpReadVariableOp4sequential_6_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+sequential_6/conv2d_5/Conv2D/ReadVariableOp?
sequential_6/conv2d_5/Conv2DConv2D2sequential_5/leaky_re_lu_4/LeakyRelu:activations:03sequential_6/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_6/conv2d_5/Conv2D?
1sequential_6/batch_normalization_6/ReadVariableOpReadVariableOp:sequential_6_batch_normalization_6_readvariableop_resource*
_output_shapes	
:?*
dtype023
1sequential_6/batch_normalization_6/ReadVariableOp?
3sequential_6/batch_normalization_6/ReadVariableOp_1ReadVariableOp<sequential_6_batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3sequential_6/batch_normalization_6/ReadVariableOp_1?
Bsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
Dsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
3sequential_6/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3%sequential_6/conv2d_5/Conv2D:output:09sequential_6/batch_normalization_6/ReadVariableOp:value:0;sequential_6/batch_normalization_6/ReadVariableOp_1:value:0Jsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<25
3sequential_6/batch_normalization_6/FusedBatchNormV3?
1sequential_6/batch_normalization_6/AssignNewValueAssignVariableOpKsequential_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource@sequential_6/batch_normalization_6/FusedBatchNormV3:batch_mean:0C^sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype023
1sequential_6/batch_normalization_6/AssignNewValue?
3sequential_6/batch_normalization_6/AssignNewValue_1AssignVariableOpMsequential_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resourceDsequential_6/batch_normalization_6/FusedBatchNormV3:batch_variance:0E^sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype025
3sequential_6/batch_normalization_6/AssignNewValue_1?
$sequential_6/leaky_re_lu_5/LeakyRelu	LeakyRelu7sequential_6/batch_normalization_6/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2&
$sequential_6/leaky_re_lu_5/LeakyRelu?
%sequential_7/conv2d_transpose_1/ShapeShape2sequential_6/leaky_re_lu_5/LeakyRelu:activations:0*
T0*
_output_shapes
:2'
%sequential_7/conv2d_transpose_1/Shape?
3sequential_7/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_7/conv2d_transpose_1/strided_slice/stack?
5sequential_7/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_7/conv2d_transpose_1/strided_slice/stack_1?
5sequential_7/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_7/conv2d_transpose_1/strided_slice/stack_2?
-sequential_7/conv2d_transpose_1/strided_sliceStridedSlice.sequential_7/conv2d_transpose_1/Shape:output:0<sequential_7/conv2d_transpose_1/strided_slice/stack:output:0>sequential_7/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_7/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_7/conv2d_transpose_1/strided_slice?
'sequential_7/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_7/conv2d_transpose_1/stack/1?
'sequential_7/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_7/conv2d_transpose_1/stack/2?
'sequential_7/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_7/conv2d_transpose_1/stack/3?
%sequential_7/conv2d_transpose_1/stackPack6sequential_7/conv2d_transpose_1/strided_slice:output:00sequential_7/conv2d_transpose_1/stack/1:output:00sequential_7/conv2d_transpose_1/stack/2:output:00sequential_7/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_7/conv2d_transpose_1/stack?
5sequential_7/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_7/conv2d_transpose_1/strided_slice_1/stack?
7sequential_7/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_7/conv2d_transpose_1/strided_slice_1/stack_1?
7sequential_7/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_7/conv2d_transpose_1/strided_slice_1/stack_2?
/sequential_7/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_7/conv2d_transpose_1/stack:output:0>sequential_7/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_7/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_7/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_7/conv2d_transpose_1/strided_slice_1?
?sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_7_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02A
?sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?
0sequential_7/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_7/conv2d_transpose_1/stack:output:0Gsequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:02sequential_6/leaky_re_lu_5/LeakyRelu:activations:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
22
0sequential_7/conv2d_transpose_1/conv2d_transpose?
1sequential_7/batch_normalization_7/ReadVariableOpReadVariableOp:sequential_7_batch_normalization_7_readvariableop_resource*
_output_shapes	
:?*
dtype023
1sequential_7/batch_normalization_7/ReadVariableOp?
3sequential_7/batch_normalization_7/ReadVariableOp_1ReadVariableOp<sequential_7_batch_normalization_7_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3sequential_7/batch_normalization_7/ReadVariableOp_1?
Bsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
Dsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
3sequential_7/batch_normalization_7/FusedBatchNormV3FusedBatchNormV39sequential_7/conv2d_transpose_1/conv2d_transpose:output:09sequential_7/batch_normalization_7/ReadVariableOp:value:0;sequential_7/batch_normalization_7/ReadVariableOp_1:value:0Jsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<25
3sequential_7/batch_normalization_7/FusedBatchNormV3?
1sequential_7/batch_normalization_7/AssignNewValueAssignVariableOpKsequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource@sequential_7/batch_normalization_7/FusedBatchNormV3:batch_mean:0C^sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype023
1sequential_7/batch_normalization_7/AssignNewValue?
3sequential_7/batch_normalization_7/AssignNewValue_1AssignVariableOpMsequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resourceDsequential_7/batch_normalization_7/FusedBatchNormV3:batch_variance:0E^sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype025
3sequential_7/batch_normalization_7/AssignNewValue_1?
sequential_7/re_lu_1/ReluRelu7sequential_7/batch_normalization_7/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
sequential_7/re_lu_1/Relut
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis?
concatenate/concatConcatV2'sequential_7/re_lu_1/Relu:activations:02sequential_5/leaky_re_lu_4/LeakyRelu:activations:0 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
concatenate/concat?
%sequential_8/conv2d_transpose_2/ShapeShapeconcatenate/concat:output:0*
T0*
_output_shapes
:2'
%sequential_8/conv2d_transpose_2/Shape?
3sequential_8/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_8/conv2d_transpose_2/strided_slice/stack?
5sequential_8/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_8/conv2d_transpose_2/strided_slice/stack_1?
5sequential_8/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_8/conv2d_transpose_2/strided_slice/stack_2?
-sequential_8/conv2d_transpose_2/strided_sliceStridedSlice.sequential_8/conv2d_transpose_2/Shape:output:0<sequential_8/conv2d_transpose_2/strided_slice/stack:output:0>sequential_8/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_8/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_8/conv2d_transpose_2/strided_slice?
'sequential_8/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_8/conv2d_transpose_2/stack/1?
'sequential_8/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_8/conv2d_transpose_2/stack/2?
'sequential_8/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_8/conv2d_transpose_2/stack/3?
%sequential_8/conv2d_transpose_2/stackPack6sequential_8/conv2d_transpose_2/strided_slice:output:00sequential_8/conv2d_transpose_2/stack/1:output:00sequential_8/conv2d_transpose_2/stack/2:output:00sequential_8/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_8/conv2d_transpose_2/stack?
5sequential_8/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_8/conv2d_transpose_2/strided_slice_1/stack?
7sequential_8/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_8/conv2d_transpose_2/strided_slice_1/stack_1?
7sequential_8/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_8/conv2d_transpose_2/strided_slice_1/stack_2?
/sequential_8/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_8/conv2d_transpose_2/stack:output:0>sequential_8/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_8/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_8/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_8/conv2d_transpose_2/strided_slice_1?
?sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_8_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02A
?sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?
0sequential_8/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_8/conv2d_transpose_2/stack:output:0Gsequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0concatenate/concat:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
22
0sequential_8/conv2d_transpose_2/conv2d_transpose?
1sequential_8/batch_normalization_8/ReadVariableOpReadVariableOp:sequential_8_batch_normalization_8_readvariableop_resource*
_output_shapes	
:?*
dtype023
1sequential_8/batch_normalization_8/ReadVariableOp?
3sequential_8/batch_normalization_8/ReadVariableOp_1ReadVariableOp<sequential_8_batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3sequential_8/batch_normalization_8/ReadVariableOp_1?
Bsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?
Dsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?
3sequential_8/batch_normalization_8/FusedBatchNormV3FusedBatchNormV39sequential_8/conv2d_transpose_2/conv2d_transpose:output:09sequential_8/batch_normalization_8/ReadVariableOp:value:0;sequential_8/batch_normalization_8/ReadVariableOp_1:value:0Jsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<25
3sequential_8/batch_normalization_8/FusedBatchNormV3?
1sequential_8/batch_normalization_8/AssignNewValueAssignVariableOpKsequential_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource@sequential_8/batch_normalization_8/FusedBatchNormV3:batch_mean:0C^sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype023
1sequential_8/batch_normalization_8/AssignNewValue?
3sequential_8/batch_normalization_8/AssignNewValue_1AssignVariableOpMsequential_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resourceDsequential_8/batch_normalization_8/FusedBatchNormV3:batch_variance:0E^sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype025
3sequential_8/batch_normalization_8/AssignNewValue_1?
sequential_8/re_lu_2/ReluRelu7sequential_8/batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
sequential_8/re_lu_2/Relux
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis?
concatenate_1/concatConcatV2'sequential_8/re_lu_2/Relu:activations:02sequential_4/leaky_re_lu_3/LeakyRelu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
concatenate_1/concat?
%sequential_9/conv2d_transpose_3/ShapeShapeconcatenate_1/concat:output:0*
T0*
_output_shapes
:2'
%sequential_9/conv2d_transpose_3/Shape?
3sequential_9/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_9/conv2d_transpose_3/strided_slice/stack?
5sequential_9/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_9/conv2d_transpose_3/strided_slice/stack_1?
5sequential_9/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_9/conv2d_transpose_3/strided_slice/stack_2?
-sequential_9/conv2d_transpose_3/strided_sliceStridedSlice.sequential_9/conv2d_transpose_3/Shape:output:0<sequential_9/conv2d_transpose_3/strided_slice/stack:output:0>sequential_9/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_9/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_9/conv2d_transpose_3/strided_slice?
'sequential_9/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_9/conv2d_transpose_3/stack/1?
'sequential_9/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_9/conv2d_transpose_3/stack/2?
'sequential_9/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_9/conv2d_transpose_3/stack/3?
%sequential_9/conv2d_transpose_3/stackPack6sequential_9/conv2d_transpose_3/strided_slice:output:00sequential_9/conv2d_transpose_3/stack/1:output:00sequential_9/conv2d_transpose_3/stack/2:output:00sequential_9/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_9/conv2d_transpose_3/stack?
5sequential_9/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_9/conv2d_transpose_3/strided_slice_1/stack?
7sequential_9/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_9/conv2d_transpose_3/strided_slice_1/stack_1?
7sequential_9/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_9/conv2d_transpose_3/strided_slice_1/stack_2?
/sequential_9/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_9/conv2d_transpose_3/stack:output:0>sequential_9/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_9/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_9/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_9/conv2d_transpose_3/strided_slice_1?
?sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_9_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02A
?sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
0sequential_9/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_9/conv2d_transpose_3/stack:output:0Gsequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0concatenate_1/concat:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
22
0sequential_9/conv2d_transpose_3/conv2d_transpose?
1sequential_9/batch_normalization_9/ReadVariableOpReadVariableOp:sequential_9_batch_normalization_9_readvariableop_resource*
_output_shapes	
:?*
dtype023
1sequential_9/batch_normalization_9/ReadVariableOp?
3sequential_9/batch_normalization_9/ReadVariableOp_1ReadVariableOp<sequential_9_batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3sequential_9/batch_normalization_9/ReadVariableOp_1?
Bsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?
Dsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?
3sequential_9/batch_normalization_9/FusedBatchNormV3FusedBatchNormV39sequential_9/conv2d_transpose_3/conv2d_transpose:output:09sequential_9/batch_normalization_9/ReadVariableOp:value:0;sequential_9/batch_normalization_9/ReadVariableOp_1:value:0Jsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<25
3sequential_9/batch_normalization_9/FusedBatchNormV3?
1sequential_9/batch_normalization_9/AssignNewValueAssignVariableOpKsequential_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource@sequential_9/batch_normalization_9/FusedBatchNormV3:batch_mean:0C^sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype023
1sequential_9/batch_normalization_9/AssignNewValue?
3sequential_9/batch_normalization_9/AssignNewValue_1AssignVariableOpMsequential_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resourceDsequential_9/batch_normalization_9/FusedBatchNormV3:batch_variance:0E^sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype025
3sequential_9/batch_normalization_9/AssignNewValue_1?
sequential_9/re_lu_3/ReluRelu7sequential_9/batch_normalization_9/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
sequential_9/re_lu_3/Relux
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_2/concat/axis?
concatenate_2/concatConcatV2'sequential_9/re_lu_3/Relu:activations:02sequential_3/leaky_re_lu_2/LeakyRelu:activations:0"concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
concatenate_2/concat?
&sequential_10/conv2d_transpose_4/ShapeShapeconcatenate_2/concat:output:0*
T0*
_output_shapes
:2(
&sequential_10/conv2d_transpose_4/Shape?
4sequential_10/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_10/conv2d_transpose_4/strided_slice/stack?
6sequential_10/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_10/conv2d_transpose_4/strided_slice/stack_1?
6sequential_10/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_10/conv2d_transpose_4/strided_slice/stack_2?
.sequential_10/conv2d_transpose_4/strided_sliceStridedSlice/sequential_10/conv2d_transpose_4/Shape:output:0=sequential_10/conv2d_transpose_4/strided_slice/stack:output:0?sequential_10/conv2d_transpose_4/strided_slice/stack_1:output:0?sequential_10/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_10/conv2d_transpose_4/strided_slice?
(sequential_10/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_10/conv2d_transpose_4/stack/1?
(sequential_10/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_10/conv2d_transpose_4/stack/2?
(sequential_10/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_10/conv2d_transpose_4/stack/3?
&sequential_10/conv2d_transpose_4/stackPack7sequential_10/conv2d_transpose_4/strided_slice:output:01sequential_10/conv2d_transpose_4/stack/1:output:01sequential_10/conv2d_transpose_4/stack/2:output:01sequential_10/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_10/conv2d_transpose_4/stack?
6sequential_10/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_10/conv2d_transpose_4/strided_slice_1/stack?
8sequential_10/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_10/conv2d_transpose_4/strided_slice_1/stack_1?
8sequential_10/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_10/conv2d_transpose_4/strided_slice_1/stack_2?
0sequential_10/conv2d_transpose_4/strided_slice_1StridedSlice/sequential_10/conv2d_transpose_4/stack:output:0?sequential_10/conv2d_transpose_4/strided_slice_1/stack:output:0Asequential_10/conv2d_transpose_4/strided_slice_1/stack_1:output:0Asequential_10/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_10/conv2d_transpose_4/strided_slice_1?
@sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_10_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02B
@sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?
1sequential_10/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput/sequential_10/conv2d_transpose_4/stack:output:0Hsequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0concatenate_2/concat:output:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
23
1sequential_10/conv2d_transpose_4/conv2d_transpose?
3sequential_10/batch_normalization_10/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_10_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_10/batch_normalization_10/ReadVariableOp?
5sequential_10/batch_normalization_10/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_10_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_10/batch_normalization_10/ReadVariableOp_1?
Dsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?
Fsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?
5sequential_10/batch_normalization_10/FusedBatchNormV3FusedBatchNormV3:sequential_10/conv2d_transpose_4/conv2d_transpose:output:0;sequential_10/batch_normalization_10/ReadVariableOp:value:0=sequential_10/batch_normalization_10/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  @:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<27
5sequential_10/batch_normalization_10/FusedBatchNormV3?
3sequential_10/batch_normalization_10/AssignNewValueAssignVariableOpMsequential_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resourceBsequential_10/batch_normalization_10/FusedBatchNormV3:batch_mean:0E^sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype025
3sequential_10/batch_normalization_10/AssignNewValue?
5sequential_10/batch_normalization_10/AssignNewValue_1AssignVariableOpOsequential_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resourceFsequential_10/batch_normalization_10/FusedBatchNormV3:batch_variance:0G^sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype027
5sequential_10/batch_normalization_10/AssignNewValue_1?
sequential_10/re_lu_4/ReluRelu9sequential_10/batch_normalization_10/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????  @2
sequential_10/re_lu_4/Relux
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_3/concat/axis?
concatenate_3/concatConcatV2(sequential_10/re_lu_4/Relu:activations:02sequential_2/leaky_re_lu_1/LeakyRelu:activations:0"concatenate_3/concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????  `2
concatenate_3/concat?
conv2d_transpose_6/ShapeShapeconcatenate_3/concat:output:0*
T0*
_output_shapes
:2
conv2d_transpose_6/Shape?
&conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_6/strided_slice/stack?
(conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_6/strided_slice/stack_1?
(conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_6/strided_slice/stack_2?
 conv2d_transpose_6/strided_sliceStridedSlice!conv2d_transpose_6/Shape:output:0/conv2d_transpose_6/strided_slice/stack:output:01conv2d_transpose_6/strided_slice/stack_1:output:01conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_6/strided_slicez
conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_6/stack/1z
conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_6/stack/2z
conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_6/stack/3?
conv2d_transpose_6/stackPack)conv2d_transpose_6/strided_slice:output:0#conv2d_transpose_6/stack/1:output:0#conv2d_transpose_6/stack/2:output:0#conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_6/stack?
(conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_6/strided_slice_1/stack?
*conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_6/strided_slice_1/stack_1?
*conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_6/strided_slice_1/stack_2?
"conv2d_transpose_6/strided_slice_1StridedSlice!conv2d_transpose_6/stack:output:01conv2d_transpose_6/strided_slice_1/stack:output:03conv2d_transpose_6/strided_slice_1/stack_1:output:03conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_6/strided_slice_1?
2conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_6_conv2d_transpose_readvariableop_resource*&
_output_shapes
:`*
dtype024
2conv2d_transpose_6/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_6/conv2d_transposeConv2DBackpropInput!conv2d_transpose_6/stack:output:0:conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:0concatenate_3/concat:output:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2%
#conv2d_transpose_6/conv2d_transpose?
)conv2d_transpose_6/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)conv2d_transpose_6/BiasAdd/ReadVariableOp?
conv2d_transpose_6/BiasAddBiasAdd,conv2d_transpose_6/conv2d_transpose:output:01conv2d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@2
conv2d_transpose_6/BiasAdd?
conv2d_transpose_6/TanhTanh#conv2d_transpose_6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@2
conv2d_transpose_6/Tanh?
IdentityIdentityconv2d_transpose_6/Tanh:y:0*^conv2d_transpose_6/BiasAdd/ReadVariableOp3^conv2d_transpose_6/conv2d_transpose/ReadVariableOp4^sequential_10/batch_normalization_10/AssignNewValue6^sequential_10/batch_normalization_10/AssignNewValue_1E^sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_10/ReadVariableOp6^sequential_10/batch_normalization_10/ReadVariableOp_1A^sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2^sequential_2/batch_normalization_2/AssignNewValue4^sequential_2/batch_normalization_2/AssignNewValue_1C^sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpE^sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12^sequential_2/batch_normalization_2/ReadVariableOp4^sequential_2/batch_normalization_2/ReadVariableOp_1,^sequential_2/conv2d_1/Conv2D/ReadVariableOp2^sequential_3/batch_normalization_3/AssignNewValue4^sequential_3/batch_normalization_3/AssignNewValue_1C^sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpE^sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12^sequential_3/batch_normalization_3/ReadVariableOp4^sequential_3/batch_normalization_3/ReadVariableOp_1,^sequential_3/conv2d_2/Conv2D/ReadVariableOp2^sequential_4/batch_normalization_4/AssignNewValue4^sequential_4/batch_normalization_4/AssignNewValue_1C^sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpE^sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12^sequential_4/batch_normalization_4/ReadVariableOp4^sequential_4/batch_normalization_4/ReadVariableOp_1,^sequential_4/conv2d_3/Conv2D/ReadVariableOp2^sequential_5/batch_normalization_5/AssignNewValue4^sequential_5/batch_normalization_5/AssignNewValue_1C^sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpE^sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12^sequential_5/batch_normalization_5/ReadVariableOp4^sequential_5/batch_normalization_5/ReadVariableOp_1,^sequential_5/conv2d_4/Conv2D/ReadVariableOp2^sequential_6/batch_normalization_6/AssignNewValue4^sequential_6/batch_normalization_6/AssignNewValue_1C^sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpE^sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12^sequential_6/batch_normalization_6/ReadVariableOp4^sequential_6/batch_normalization_6/ReadVariableOp_1,^sequential_6/conv2d_5/Conv2D/ReadVariableOp2^sequential_7/batch_normalization_7/AssignNewValue4^sequential_7/batch_normalization_7/AssignNewValue_1C^sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpE^sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12^sequential_7/batch_normalization_7/ReadVariableOp4^sequential_7/batch_normalization_7/ReadVariableOp_1@^sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2^sequential_8/batch_normalization_8/AssignNewValue4^sequential_8/batch_normalization_8/AssignNewValue_1C^sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpE^sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12^sequential_8/batch_normalization_8/ReadVariableOp4^sequential_8/batch_normalization_8/ReadVariableOp_1@^sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2^sequential_9/batch_normalization_9/AssignNewValue4^sequential_9/batch_normalization_9/AssignNewValue_1C^sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpE^sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12^sequential_9/batch_normalization_9/ReadVariableOp4^sequential_9/batch_normalization_9/ReadVariableOp_1@^sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:?????????@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)conv2d_transpose_6/BiasAdd/ReadVariableOp)conv2d_transpose_6/BiasAdd/ReadVariableOp2h
2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2j
3sequential_10/batch_normalization_10/AssignNewValue3sequential_10/batch_normalization_10/AssignNewValue2n
5sequential_10/batch_normalization_10/AssignNewValue_15sequential_10/batch_normalization_10/AssignNewValue_12?
Dsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2?
Fsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_10/ReadVariableOp3sequential_10/batch_normalization_10/ReadVariableOp2n
5sequential_10/batch_normalization_10/ReadVariableOp_15sequential_10/batch_normalization_10/ReadVariableOp_12?
@sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOp@sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2f
1sequential_2/batch_normalization_2/AssignNewValue1sequential_2/batch_normalization_2/AssignNewValue2j
3sequential_2/batch_normalization_2/AssignNewValue_13sequential_2/batch_normalization_2/AssignNewValue_12?
Bsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpBsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2?
Dsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Dsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12f
1sequential_2/batch_normalization_2/ReadVariableOp1sequential_2/batch_normalization_2/ReadVariableOp2j
3sequential_2/batch_normalization_2/ReadVariableOp_13sequential_2/batch_normalization_2/ReadVariableOp_12Z
+sequential_2/conv2d_1/Conv2D/ReadVariableOp+sequential_2/conv2d_1/Conv2D/ReadVariableOp2f
1sequential_3/batch_normalization_3/AssignNewValue1sequential_3/batch_normalization_3/AssignNewValue2j
3sequential_3/batch_normalization_3/AssignNewValue_13sequential_3/batch_normalization_3/AssignNewValue_12?
Bsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpBsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2?
Dsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Dsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12f
1sequential_3/batch_normalization_3/ReadVariableOp1sequential_3/batch_normalization_3/ReadVariableOp2j
3sequential_3/batch_normalization_3/ReadVariableOp_13sequential_3/batch_normalization_3/ReadVariableOp_12Z
+sequential_3/conv2d_2/Conv2D/ReadVariableOp+sequential_3/conv2d_2/Conv2D/ReadVariableOp2f
1sequential_4/batch_normalization_4/AssignNewValue1sequential_4/batch_normalization_4/AssignNewValue2j
3sequential_4/batch_normalization_4/AssignNewValue_13sequential_4/batch_normalization_4/AssignNewValue_12?
Bsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpBsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2?
Dsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Dsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12f
1sequential_4/batch_normalization_4/ReadVariableOp1sequential_4/batch_normalization_4/ReadVariableOp2j
3sequential_4/batch_normalization_4/ReadVariableOp_13sequential_4/batch_normalization_4/ReadVariableOp_12Z
+sequential_4/conv2d_3/Conv2D/ReadVariableOp+sequential_4/conv2d_3/Conv2D/ReadVariableOp2f
1sequential_5/batch_normalization_5/AssignNewValue1sequential_5/batch_normalization_5/AssignNewValue2j
3sequential_5/batch_normalization_5/AssignNewValue_13sequential_5/batch_normalization_5/AssignNewValue_12?
Bsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpBsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp2?
Dsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1Dsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12f
1sequential_5/batch_normalization_5/ReadVariableOp1sequential_5/batch_normalization_5/ReadVariableOp2j
3sequential_5/batch_normalization_5/ReadVariableOp_13sequential_5/batch_normalization_5/ReadVariableOp_12Z
+sequential_5/conv2d_4/Conv2D/ReadVariableOp+sequential_5/conv2d_4/Conv2D/ReadVariableOp2f
1sequential_6/batch_normalization_6/AssignNewValue1sequential_6/batch_normalization_6/AssignNewValue2j
3sequential_6/batch_normalization_6/AssignNewValue_13sequential_6/batch_normalization_6/AssignNewValue_12?
Bsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpBsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2?
Dsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Dsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12f
1sequential_6/batch_normalization_6/ReadVariableOp1sequential_6/batch_normalization_6/ReadVariableOp2j
3sequential_6/batch_normalization_6/ReadVariableOp_13sequential_6/batch_normalization_6/ReadVariableOp_12Z
+sequential_6/conv2d_5/Conv2D/ReadVariableOp+sequential_6/conv2d_5/Conv2D/ReadVariableOp2f
1sequential_7/batch_normalization_7/AssignNewValue1sequential_7/batch_normalization_7/AssignNewValue2j
3sequential_7/batch_normalization_7/AssignNewValue_13sequential_7/batch_normalization_7/AssignNewValue_12?
Bsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpBsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Dsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Dsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12f
1sequential_7/batch_normalization_7/ReadVariableOp1sequential_7/batch_normalization_7/ReadVariableOp2j
3sequential_7/batch_normalization_7/ReadVariableOp_13sequential_7/batch_normalization_7/ReadVariableOp_12?
?sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2f
1sequential_8/batch_normalization_8/AssignNewValue1sequential_8/batch_normalization_8/AssignNewValue2j
3sequential_8/batch_normalization_8/AssignNewValue_13sequential_8/batch_normalization_8/AssignNewValue_12?
Bsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpBsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2?
Dsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Dsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12f
1sequential_8/batch_normalization_8/ReadVariableOp1sequential_8/batch_normalization_8/ReadVariableOp2j
3sequential_8/batch_normalization_8/ReadVariableOp_13sequential_8/batch_normalization_8/ReadVariableOp_12?
?sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2f
1sequential_9/batch_normalization_9/AssignNewValue1sequential_9/batch_normalization_9/AssignNewValue2j
3sequential_9/batch_normalization_9/AssignNewValue_13sequential_9/batch_normalization_9/AssignNewValue_12?
Bsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpBsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp2?
Dsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Dsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12f
1sequential_9/batch_normalization_9/ReadVariableOp1sequential_9/batch_normalization_9/ReadVariableOp2j
3sequential_9/batch_normalization_9/ReadVariableOp_13sequential_9/batch_normalization_9/ReadVariableOp_12?
?sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
L__inference_sequential_10_layer_call_and_return_conditional_losses_289600071

inputs7
conv2d_transpose_4_289600051:@?.
 batch_normalization_10_289600054:@.
 batch_normalization_10_289600056:@.
 batch_normalization_10_289600058:@.
 batch_normalization_10_289600060:@
identity??.batch_normalization_10/StatefulPartitionedCall?*conv2d_transpose_4/StatefulPartitionedCall?
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_4_289600051*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_2895999102,
*conv2d_transpose_4/StatefulPartitionedCall?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0 batch_normalization_10_289600054 batch_normalization_10_289600056 batch_normalization_10_289600058 batch_normalization_10_289600060*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_28959994020
.batch_normalization_10/StatefulPartitionedCall?
re_lu_4/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_4_layer_call_and_return_conditional_losses_2896000682
re_lu_4/PartitionedCall?
IdentityIdentity re_lu_4/PartitionedCall:output:0/^batch_normalization_10/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_conv2d_3_layer_call_fn_289603060

inputs"
unknown:@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_3_layer_call_and_return_conditional_losses_2895980602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_289602782

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?#
?
K__inference_sequential_2_layer_call_and_return_conditional_losses_289601972

inputsA
'conv2d_1_conv2d_readvariableop_resource: ;
-batch_normalization_2_readvariableop_resource: =
/batch_normalization_2_readvariableop_1_resource: L
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource: 
identity??$batch_normalization_2/AssignNewValue?&batch_normalization_2/AssignNewValue_1?5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_2/ReadVariableOp?&batch_normalization_2/ReadVariableOp_1?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
conv2d_1/Conv2D?
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
: *
dtype02&
$batch_normalization_2/ReadVariableOp?
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&batch_normalization_2/ReadVariableOp_1?
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3conv2d_1/Conv2D:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_2/FusedBatchNormV3?
$batch_normalization_2/AssignNewValueAssignVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource3batch_normalization_2/FusedBatchNormV3:batch_mean:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_2/AssignNewValue?
&batch_normalization_2/AssignNewValue_1AssignVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_2/FusedBatchNormV3:batch_variance:08^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_2/AssignNewValue_1?
leaky_re_lu_1/LeakyRelu	LeakyRelu*batch_normalization_2/FusedBatchNormV3:y:0*/
_output_shapes
:?????????   *
alpha%???>2
leaky_re_lu_1/LeakyRelu?
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0%^batch_normalization_2/AssignNewValue'^batch_normalization_2/AssignNewValue_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@@: : : : : 2L
$batch_normalization_2/AssignNewValue$batch_normalization_2/AssignNewValue2P
&batch_normalization_2/AssignNewValue_1&batch_normalization_2/AssignNewValue_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_289599019

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_289598427

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
0__inference_sequential_9_layer_call_fn_289599777
conv2d_transpose_3_input#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_9_layer_call_and_return_conditional_losses_2895997642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
0
_output_shapes
:??????????
2
_user_specified_nameconv2d_transpose_3_input
?
]
1__inference_concatenate_2_layer_call_fn_289602637
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_concatenate_2_layer_call_and_return_conditional_losses_2896003512
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:,????????????????????????????:?????????@:l h
B
_output_shapes0
.:,????????????????????????????
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????@
"
_user_specified_name
inputs/1
?
?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_289598497

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_289603526

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
ߥ
?6
D__inference_model_layer_call_and_return_conditional_losses_289601484

inputsN
4sequential_2_conv2d_1_conv2d_readvariableop_resource: H
:sequential_2_batch_normalization_2_readvariableop_resource: J
<sequential_2_batch_normalization_2_readvariableop_1_resource: Y
Ksequential_2_batch_normalization_2_fusedbatchnormv3_readvariableop_resource: [
Msequential_2_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource: N
4sequential_3_conv2d_2_conv2d_readvariableop_resource: @H
:sequential_3_batch_normalization_3_readvariableop_resource:@J
<sequential_3_batch_normalization_3_readvariableop_1_resource:@Y
Ksequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:@[
Msequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:@O
4sequential_4_conv2d_3_conv2d_readvariableop_resource:@?I
:sequential_4_batch_normalization_4_readvariableop_resource:	?K
<sequential_4_batch_normalization_4_readvariableop_1_resource:	?Z
Ksequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	?\
Msequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	?P
4sequential_5_conv2d_4_conv2d_readvariableop_resource:??I
:sequential_5_batch_normalization_5_readvariableop_resource:	?K
<sequential_5_batch_normalization_5_readvariableop_1_resource:	?Z
Ksequential_5_batch_normalization_5_fusedbatchnormv3_readvariableop_resource:	?\
Msequential_5_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:	?P
4sequential_6_conv2d_5_conv2d_readvariableop_resource:??I
:sequential_6_batch_normalization_6_readvariableop_resource:	?K
<sequential_6_batch_normalization_6_readvariableop_1_resource:	?Z
Ksequential_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource:	?\
Msequential_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:	?d
Hsequential_7_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??I
:sequential_7_batch_normalization_7_readvariableop_resource:	?K
<sequential_7_batch_normalization_7_readvariableop_1_resource:	?Z
Ksequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:	?\
Msequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:	?d
Hsequential_8_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:??I
:sequential_8_batch_normalization_8_readvariableop_resource:	?K
<sequential_8_batch_normalization_8_readvariableop_1_resource:	?Z
Ksequential_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	?\
Msequential_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	?d
Hsequential_9_conv2d_transpose_3_conv2d_transpose_readvariableop_resource:??I
:sequential_9_batch_normalization_9_readvariableop_resource:	?K
<sequential_9_batch_normalization_9_readvariableop_1_resource:	?Z
Ksequential_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource:	?\
Msequential_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource:	?d
Isequential_10_conv2d_transpose_4_conv2d_transpose_readvariableop_resource:@?J
<sequential_10_batch_normalization_10_readvariableop_resource:@L
>sequential_10_batch_normalization_10_readvariableop_1_resource:@[
Msequential_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resource:@]
Osequential_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource:@U
;conv2d_transpose_6_conv2d_transpose_readvariableop_resource:`@
2conv2d_transpose_6_biasadd_readvariableop_resource:
identity??)conv2d_transpose_6/BiasAdd/ReadVariableOp?2conv2d_transpose_6/conv2d_transpose/ReadVariableOp?Dsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?Fsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?3sequential_10/batch_normalization_10/ReadVariableOp?5sequential_10/batch_normalization_10/ReadVariableOp_1?@sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?Bsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?Dsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?1sequential_2/batch_normalization_2/ReadVariableOp?3sequential_2/batch_normalization_2/ReadVariableOp_1?+sequential_2/conv2d_1/Conv2D/ReadVariableOp?Bsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?Dsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?1sequential_3/batch_normalization_3/ReadVariableOp?3sequential_3/batch_normalization_3/ReadVariableOp_1?+sequential_3/conv2d_2/Conv2D/ReadVariableOp?Bsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp?Dsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?1sequential_4/batch_normalization_4/ReadVariableOp?3sequential_4/batch_normalization_4/ReadVariableOp_1?+sequential_4/conv2d_3/Conv2D/ReadVariableOp?Bsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp?Dsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?1sequential_5/batch_normalization_5/ReadVariableOp?3sequential_5/batch_normalization_5/ReadVariableOp_1?+sequential_5/conv2d_4/Conv2D/ReadVariableOp?Bsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?Dsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?1sequential_6/batch_normalization_6/ReadVariableOp?3sequential_6/batch_normalization_6/ReadVariableOp_1?+sequential_6/conv2d_5/Conv2D/ReadVariableOp?Bsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Dsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?1sequential_7/batch_normalization_7/ReadVariableOp?3sequential_7/batch_normalization_7/ReadVariableOp_1??sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?Bsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?Dsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?1sequential_8/batch_normalization_8/ReadVariableOp?3sequential_8/batch_normalization_8/ReadVariableOp_1??sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?Bsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?Dsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?1sequential_9/batch_normalization_9/ReadVariableOp?3sequential_9/batch_normalization_9/ReadVariableOp_1??sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
+sequential_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOp4sequential_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_2/conv2d_1/Conv2D/ReadVariableOp?
sequential_2/conv2d_1/Conv2DConv2Dinputs3sequential_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
sequential_2/conv2d_1/Conv2D?
1sequential_2/batch_normalization_2/ReadVariableOpReadVariableOp:sequential_2_batch_normalization_2_readvariableop_resource*
_output_shapes
: *
dtype023
1sequential_2/batch_normalization_2/ReadVariableOp?
3sequential_2/batch_normalization_2/ReadVariableOp_1ReadVariableOp<sequential_2_batch_normalization_2_readvariableop_1_resource*
_output_shapes
: *
dtype025
3sequential_2/batch_normalization_2/ReadVariableOp_1?
Bsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_2_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02D
Bsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
Dsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_2_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02F
Dsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
3sequential_2/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3%sequential_2/conv2d_1/Conv2D:output:09sequential_2/batch_normalization_2/ReadVariableOp:value:0;sequential_2/batch_normalization_2/ReadVariableOp_1:value:0Jsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( 25
3sequential_2/batch_normalization_2/FusedBatchNormV3?
$sequential_2/leaky_re_lu_1/LeakyRelu	LeakyRelu7sequential_2/batch_normalization_2/FusedBatchNormV3:y:0*/
_output_shapes
:?????????   *
alpha%???>2&
$sequential_2/leaky_re_lu_1/LeakyRelu?
+sequential_3/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02-
+sequential_3/conv2d_2/Conv2D/ReadVariableOp?
sequential_3/conv2d_2/Conv2DConv2D2sequential_2/leaky_re_lu_1/LeakyRelu:activations:03sequential_3/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
sequential_3/conv2d_2/Conv2D?
1sequential_3/batch_normalization_3/ReadVariableOpReadVariableOp:sequential_3_batch_normalization_3_readvariableop_resource*
_output_shapes
:@*
dtype023
1sequential_3/batch_normalization_3/ReadVariableOp?
3sequential_3/batch_normalization_3/ReadVariableOp_1ReadVariableOp<sequential_3_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:@*
dtype025
3sequential_3/batch_normalization_3/ReadVariableOp_1?
Bsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02D
Bsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?
Dsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02F
Dsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?
3sequential_3/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3%sequential_3/conv2d_2/Conv2D:output:09sequential_3/batch_normalization_3/ReadVariableOp:value:0;sequential_3/batch_normalization_3/ReadVariableOp_1:value:0Jsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 25
3sequential_3/batch_normalization_3/FusedBatchNormV3?
$sequential_3/leaky_re_lu_2/LeakyRelu	LeakyRelu7sequential_3/batch_normalization_3/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>2&
$sequential_3/leaky_re_lu_2/LeakyRelu?
+sequential_4/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4sequential_4_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02-
+sequential_4/conv2d_3/Conv2D/ReadVariableOp?
sequential_4/conv2d_3/Conv2DConv2D2sequential_3/leaky_re_lu_2/LeakyRelu:activations:03sequential_4/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_4/conv2d_3/Conv2D?
1sequential_4/batch_normalization_4/ReadVariableOpReadVariableOp:sequential_4_batch_normalization_4_readvariableop_resource*
_output_shapes	
:?*
dtype023
1sequential_4/batch_normalization_4/ReadVariableOp?
3sequential_4/batch_normalization_4/ReadVariableOp_1ReadVariableOp<sequential_4_batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3sequential_4/batch_normalization_4/ReadVariableOp_1?
Bsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp?
Dsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?
3sequential_4/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3%sequential_4/conv2d_3/Conv2D:output:09sequential_4/batch_normalization_4/ReadVariableOp:value:0;sequential_4/batch_normalization_4/ReadVariableOp_1:value:0Jsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3sequential_4/batch_normalization_4/FusedBatchNormV3?
$sequential_4/leaky_re_lu_3/LeakyRelu	LeakyRelu7sequential_4/batch_normalization_4/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2&
$sequential_4/leaky_re_lu_3/LeakyRelu?
+sequential_5/conv2d_4/Conv2D/ReadVariableOpReadVariableOp4sequential_5_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+sequential_5/conv2d_4/Conv2D/ReadVariableOp?
sequential_5/conv2d_4/Conv2DConv2D2sequential_4/leaky_re_lu_3/LeakyRelu:activations:03sequential_5/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_5/conv2d_4/Conv2D?
1sequential_5/batch_normalization_5/ReadVariableOpReadVariableOp:sequential_5_batch_normalization_5_readvariableop_resource*
_output_shapes	
:?*
dtype023
1sequential_5/batch_normalization_5/ReadVariableOp?
3sequential_5/batch_normalization_5/ReadVariableOp_1ReadVariableOp<sequential_5_batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3sequential_5/batch_normalization_5/ReadVariableOp_1?
Bsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_5_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp?
Dsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_5_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?
3sequential_5/batch_normalization_5/FusedBatchNormV3FusedBatchNormV3%sequential_5/conv2d_4/Conv2D:output:09sequential_5/batch_normalization_5/ReadVariableOp:value:0;sequential_5/batch_normalization_5/ReadVariableOp_1:value:0Jsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3sequential_5/batch_normalization_5/FusedBatchNormV3?
$sequential_5/leaky_re_lu_4/LeakyRelu	LeakyRelu7sequential_5/batch_normalization_5/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2&
$sequential_5/leaky_re_lu_4/LeakyRelu?
+sequential_6/conv2d_5/Conv2D/ReadVariableOpReadVariableOp4sequential_6_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02-
+sequential_6/conv2d_5/Conv2D/ReadVariableOp?
sequential_6/conv2d_5/Conv2DConv2D2sequential_5/leaky_re_lu_4/LeakyRelu:activations:03sequential_6/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_6/conv2d_5/Conv2D?
1sequential_6/batch_normalization_6/ReadVariableOpReadVariableOp:sequential_6_batch_normalization_6_readvariableop_resource*
_output_shapes	
:?*
dtype023
1sequential_6/batch_normalization_6/ReadVariableOp?
3sequential_6/batch_normalization_6/ReadVariableOp_1ReadVariableOp<sequential_6_batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3sequential_6/batch_normalization_6/ReadVariableOp_1?
Bsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
Dsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
3sequential_6/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3%sequential_6/conv2d_5/Conv2D:output:09sequential_6/batch_normalization_6/ReadVariableOp:value:0;sequential_6/batch_normalization_6/ReadVariableOp_1:value:0Jsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3sequential_6/batch_normalization_6/FusedBatchNormV3?
$sequential_6/leaky_re_lu_5/LeakyRelu	LeakyRelu7sequential_6/batch_normalization_6/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2&
$sequential_6/leaky_re_lu_5/LeakyRelu?
%sequential_7/conv2d_transpose_1/ShapeShape2sequential_6/leaky_re_lu_5/LeakyRelu:activations:0*
T0*
_output_shapes
:2'
%sequential_7/conv2d_transpose_1/Shape?
3sequential_7/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_7/conv2d_transpose_1/strided_slice/stack?
5sequential_7/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_7/conv2d_transpose_1/strided_slice/stack_1?
5sequential_7/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_7/conv2d_transpose_1/strided_slice/stack_2?
-sequential_7/conv2d_transpose_1/strided_sliceStridedSlice.sequential_7/conv2d_transpose_1/Shape:output:0<sequential_7/conv2d_transpose_1/strided_slice/stack:output:0>sequential_7/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_7/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_7/conv2d_transpose_1/strided_slice?
'sequential_7/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_7/conv2d_transpose_1/stack/1?
'sequential_7/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_7/conv2d_transpose_1/stack/2?
'sequential_7/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_7/conv2d_transpose_1/stack/3?
%sequential_7/conv2d_transpose_1/stackPack6sequential_7/conv2d_transpose_1/strided_slice:output:00sequential_7/conv2d_transpose_1/stack/1:output:00sequential_7/conv2d_transpose_1/stack/2:output:00sequential_7/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_7/conv2d_transpose_1/stack?
5sequential_7/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_7/conv2d_transpose_1/strided_slice_1/stack?
7sequential_7/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_7/conv2d_transpose_1/strided_slice_1/stack_1?
7sequential_7/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_7/conv2d_transpose_1/strided_slice_1/stack_2?
/sequential_7/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_7/conv2d_transpose_1/stack:output:0>sequential_7/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_7/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_7/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_7/conv2d_transpose_1/strided_slice_1?
?sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_7_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02A
?sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?
0sequential_7/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_7/conv2d_transpose_1/stack:output:0Gsequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:02sequential_6/leaky_re_lu_5/LeakyRelu:activations:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
22
0sequential_7/conv2d_transpose_1/conv2d_transpose?
1sequential_7/batch_normalization_7/ReadVariableOpReadVariableOp:sequential_7_batch_normalization_7_readvariableop_resource*
_output_shapes	
:?*
dtype023
1sequential_7/batch_normalization_7/ReadVariableOp?
3sequential_7/batch_normalization_7/ReadVariableOp_1ReadVariableOp<sequential_7_batch_normalization_7_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3sequential_7/batch_normalization_7/ReadVariableOp_1?
Bsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
Dsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
3sequential_7/batch_normalization_7/FusedBatchNormV3FusedBatchNormV39sequential_7/conv2d_transpose_1/conv2d_transpose:output:09sequential_7/batch_normalization_7/ReadVariableOp:value:0;sequential_7/batch_normalization_7/ReadVariableOp_1:value:0Jsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3sequential_7/batch_normalization_7/FusedBatchNormV3?
sequential_7/re_lu_1/ReluRelu7sequential_7/batch_normalization_7/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
sequential_7/re_lu_1/Relut
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis?
concatenate/concatConcatV2'sequential_7/re_lu_1/Relu:activations:02sequential_5/leaky_re_lu_4/LeakyRelu:activations:0 concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
concatenate/concat?
%sequential_8/conv2d_transpose_2/ShapeShapeconcatenate/concat:output:0*
T0*
_output_shapes
:2'
%sequential_8/conv2d_transpose_2/Shape?
3sequential_8/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_8/conv2d_transpose_2/strided_slice/stack?
5sequential_8/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_8/conv2d_transpose_2/strided_slice/stack_1?
5sequential_8/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_8/conv2d_transpose_2/strided_slice/stack_2?
-sequential_8/conv2d_transpose_2/strided_sliceStridedSlice.sequential_8/conv2d_transpose_2/Shape:output:0<sequential_8/conv2d_transpose_2/strided_slice/stack:output:0>sequential_8/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_8/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_8/conv2d_transpose_2/strided_slice?
'sequential_8/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_8/conv2d_transpose_2/stack/1?
'sequential_8/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_8/conv2d_transpose_2/stack/2?
'sequential_8/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_8/conv2d_transpose_2/stack/3?
%sequential_8/conv2d_transpose_2/stackPack6sequential_8/conv2d_transpose_2/strided_slice:output:00sequential_8/conv2d_transpose_2/stack/1:output:00sequential_8/conv2d_transpose_2/stack/2:output:00sequential_8/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_8/conv2d_transpose_2/stack?
5sequential_8/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_8/conv2d_transpose_2/strided_slice_1/stack?
7sequential_8/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_8/conv2d_transpose_2/strided_slice_1/stack_1?
7sequential_8/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_8/conv2d_transpose_2/strided_slice_1/stack_2?
/sequential_8/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_8/conv2d_transpose_2/stack:output:0>sequential_8/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_8/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_8/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_8/conv2d_transpose_2/strided_slice_1?
?sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_8_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02A
?sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?
0sequential_8/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_8/conv2d_transpose_2/stack:output:0Gsequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0concatenate/concat:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
22
0sequential_8/conv2d_transpose_2/conv2d_transpose?
1sequential_8/batch_normalization_8/ReadVariableOpReadVariableOp:sequential_8_batch_normalization_8_readvariableop_resource*
_output_shapes	
:?*
dtype023
1sequential_8/batch_normalization_8/ReadVariableOp?
3sequential_8/batch_normalization_8/ReadVariableOp_1ReadVariableOp<sequential_8_batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3sequential_8/batch_normalization_8/ReadVariableOp_1?
Bsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?
Dsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?
3sequential_8/batch_normalization_8/FusedBatchNormV3FusedBatchNormV39sequential_8/conv2d_transpose_2/conv2d_transpose:output:09sequential_8/batch_normalization_8/ReadVariableOp:value:0;sequential_8/batch_normalization_8/ReadVariableOp_1:value:0Jsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3sequential_8/batch_normalization_8/FusedBatchNormV3?
sequential_8/re_lu_2/ReluRelu7sequential_8/batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
sequential_8/re_lu_2/Relux
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis?
concatenate_1/concatConcatV2'sequential_8/re_lu_2/Relu:activations:02sequential_4/leaky_re_lu_3/LeakyRelu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
concatenate_1/concat?
%sequential_9/conv2d_transpose_3/ShapeShapeconcatenate_1/concat:output:0*
T0*
_output_shapes
:2'
%sequential_9/conv2d_transpose_3/Shape?
3sequential_9/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_9/conv2d_transpose_3/strided_slice/stack?
5sequential_9/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_9/conv2d_transpose_3/strided_slice/stack_1?
5sequential_9/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_9/conv2d_transpose_3/strided_slice/stack_2?
-sequential_9/conv2d_transpose_3/strided_sliceStridedSlice.sequential_9/conv2d_transpose_3/Shape:output:0<sequential_9/conv2d_transpose_3/strided_slice/stack:output:0>sequential_9/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_9/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_9/conv2d_transpose_3/strided_slice?
'sequential_9/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_9/conv2d_transpose_3/stack/1?
'sequential_9/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_9/conv2d_transpose_3/stack/2?
'sequential_9/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_9/conv2d_transpose_3/stack/3?
%sequential_9/conv2d_transpose_3/stackPack6sequential_9/conv2d_transpose_3/strided_slice:output:00sequential_9/conv2d_transpose_3/stack/1:output:00sequential_9/conv2d_transpose_3/stack/2:output:00sequential_9/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_9/conv2d_transpose_3/stack?
5sequential_9/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_9/conv2d_transpose_3/strided_slice_1/stack?
7sequential_9/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_9/conv2d_transpose_3/strided_slice_1/stack_1?
7sequential_9/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_9/conv2d_transpose_3/strided_slice_1/stack_2?
/sequential_9/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_9/conv2d_transpose_3/stack:output:0>sequential_9/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_9/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_9/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_9/conv2d_transpose_3/strided_slice_1?
?sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_9_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02A
?sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
0sequential_9/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_9/conv2d_transpose_3/stack:output:0Gsequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0concatenate_1/concat:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
22
0sequential_9/conv2d_transpose_3/conv2d_transpose?
1sequential_9/batch_normalization_9/ReadVariableOpReadVariableOp:sequential_9_batch_normalization_9_readvariableop_resource*
_output_shapes	
:?*
dtype023
1sequential_9/batch_normalization_9/ReadVariableOp?
3sequential_9/batch_normalization_9/ReadVariableOp_1ReadVariableOp<sequential_9_batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3sequential_9/batch_normalization_9/ReadVariableOp_1?
Bsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?
Dsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?
3sequential_9/batch_normalization_9/FusedBatchNormV3FusedBatchNormV39sequential_9/conv2d_transpose_3/conv2d_transpose:output:09sequential_9/batch_normalization_9/ReadVariableOp:value:0;sequential_9/batch_normalization_9/ReadVariableOp_1:value:0Jsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3sequential_9/batch_normalization_9/FusedBatchNormV3?
sequential_9/re_lu_3/ReluRelu7sequential_9/batch_normalization_9/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
sequential_9/re_lu_3/Relux
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_2/concat/axis?
concatenate_2/concatConcatV2'sequential_9/re_lu_3/Relu:activations:02sequential_3/leaky_re_lu_2/LeakyRelu:activations:0"concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
concatenate_2/concat?
&sequential_10/conv2d_transpose_4/ShapeShapeconcatenate_2/concat:output:0*
T0*
_output_shapes
:2(
&sequential_10/conv2d_transpose_4/Shape?
4sequential_10/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_10/conv2d_transpose_4/strided_slice/stack?
6sequential_10/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_10/conv2d_transpose_4/strided_slice/stack_1?
6sequential_10/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_10/conv2d_transpose_4/strided_slice/stack_2?
.sequential_10/conv2d_transpose_4/strided_sliceStridedSlice/sequential_10/conv2d_transpose_4/Shape:output:0=sequential_10/conv2d_transpose_4/strided_slice/stack:output:0?sequential_10/conv2d_transpose_4/strided_slice/stack_1:output:0?sequential_10/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_10/conv2d_transpose_4/strided_slice?
(sequential_10/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_10/conv2d_transpose_4/stack/1?
(sequential_10/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_10/conv2d_transpose_4/stack/2?
(sequential_10/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2*
(sequential_10/conv2d_transpose_4/stack/3?
&sequential_10/conv2d_transpose_4/stackPack7sequential_10/conv2d_transpose_4/strided_slice:output:01sequential_10/conv2d_transpose_4/stack/1:output:01sequential_10/conv2d_transpose_4/stack/2:output:01sequential_10/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_10/conv2d_transpose_4/stack?
6sequential_10/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_10/conv2d_transpose_4/strided_slice_1/stack?
8sequential_10/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_10/conv2d_transpose_4/strided_slice_1/stack_1?
8sequential_10/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_10/conv2d_transpose_4/strided_slice_1/stack_2?
0sequential_10/conv2d_transpose_4/strided_slice_1StridedSlice/sequential_10/conv2d_transpose_4/stack:output:0?sequential_10/conv2d_transpose_4/strided_slice_1/stack:output:0Asequential_10/conv2d_transpose_4/strided_slice_1/stack_1:output:0Asequential_10/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_10/conv2d_transpose_4/strided_slice_1?
@sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpIsequential_10_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02B
@sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?
1sequential_10/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput/sequential_10/conv2d_transpose_4/stack:output:0Hsequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0concatenate_2/concat:output:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
23
1sequential_10/conv2d_transpose_4/conv2d_transpose?
3sequential_10/batch_normalization_10/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_10_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_10/batch_normalization_10/ReadVariableOp?
5sequential_10/batch_normalization_10/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_10_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5sequential_10/batch_normalization_10/ReadVariableOp_1?
Dsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?
Fsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?
5sequential_10/batch_normalization_10/FusedBatchNormV3FusedBatchNormV3:sequential_10/conv2d_transpose_4/conv2d_transpose:output:0;sequential_10/batch_normalization_10/ReadVariableOp:value:0=sequential_10/batch_normalization_10/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  @:@:@:@:@:*
epsilon%o?:*
is_training( 27
5sequential_10/batch_normalization_10/FusedBatchNormV3?
sequential_10/re_lu_4/ReluRelu9sequential_10/batch_normalization_10/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????  @2
sequential_10/re_lu_4/Relux
concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_3/concat/axis?
concatenate_3/concatConcatV2(sequential_10/re_lu_4/Relu:activations:02sequential_2/leaky_re_lu_1/LeakyRelu:activations:0"concatenate_3/concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????  `2
concatenate_3/concat?
conv2d_transpose_6/ShapeShapeconcatenate_3/concat:output:0*
T0*
_output_shapes
:2
conv2d_transpose_6/Shape?
&conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_6/strided_slice/stack?
(conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_6/strided_slice/stack_1?
(conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_6/strided_slice/stack_2?
 conv2d_transpose_6/strided_sliceStridedSlice!conv2d_transpose_6/Shape:output:0/conv2d_transpose_6/strided_slice/stack:output:01conv2d_transpose_6/strided_slice/stack_1:output:01conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_6/strided_slicez
conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_6/stack/1z
conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_6/stack/2z
conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_6/stack/3?
conv2d_transpose_6/stackPack)conv2d_transpose_6/strided_slice:output:0#conv2d_transpose_6/stack/1:output:0#conv2d_transpose_6/stack/2:output:0#conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_6/stack?
(conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_6/strided_slice_1/stack?
*conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_6/strided_slice_1/stack_1?
*conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_6/strided_slice_1/stack_2?
"conv2d_transpose_6/strided_slice_1StridedSlice!conv2d_transpose_6/stack:output:01conv2d_transpose_6/strided_slice_1/stack:output:03conv2d_transpose_6/strided_slice_1/stack_1:output:03conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_6/strided_slice_1?
2conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_6_conv2d_transpose_readvariableop_resource*&
_output_shapes
:`*
dtype024
2conv2d_transpose_6/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_6/conv2d_transposeConv2DBackpropInput!conv2d_transpose_6/stack:output:0:conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:0concatenate_3/concat:output:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2%
#conv2d_transpose_6/conv2d_transpose?
)conv2d_transpose_6/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)conv2d_transpose_6/BiasAdd/ReadVariableOp?
conv2d_transpose_6/BiasAddBiasAdd,conv2d_transpose_6/conv2d_transpose:output:01conv2d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@2
conv2d_transpose_6/BiasAdd?
conv2d_transpose_6/TanhTanh#conv2d_transpose_6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@2
conv2d_transpose_6/Tanh?
IdentityIdentityconv2d_transpose_6/Tanh:y:0*^conv2d_transpose_6/BiasAdd/ReadVariableOp3^conv2d_transpose_6/conv2d_transpose/ReadVariableOpE^sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_10/ReadVariableOp6^sequential_10/batch_normalization_10/ReadVariableOp_1A^sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOpC^sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpE^sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12^sequential_2/batch_normalization_2/ReadVariableOp4^sequential_2/batch_normalization_2/ReadVariableOp_1,^sequential_2/conv2d_1/Conv2D/ReadVariableOpC^sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpE^sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12^sequential_3/batch_normalization_3/ReadVariableOp4^sequential_3/batch_normalization_3/ReadVariableOp_1,^sequential_3/conv2d_2/Conv2D/ReadVariableOpC^sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpE^sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12^sequential_4/batch_normalization_4/ReadVariableOp4^sequential_4/batch_normalization_4/ReadVariableOp_1,^sequential_4/conv2d_3/Conv2D/ReadVariableOpC^sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpE^sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12^sequential_5/batch_normalization_5/ReadVariableOp4^sequential_5/batch_normalization_5/ReadVariableOp_1,^sequential_5/conv2d_4/Conv2D/ReadVariableOpC^sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpE^sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12^sequential_6/batch_normalization_6/ReadVariableOp4^sequential_6/batch_normalization_6/ReadVariableOp_1,^sequential_6/conv2d_5/Conv2D/ReadVariableOpC^sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpE^sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12^sequential_7/batch_normalization_7/ReadVariableOp4^sequential_7/batch_normalization_7/ReadVariableOp_1@^sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOpC^sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpE^sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12^sequential_8/batch_normalization_8/ReadVariableOp4^sequential_8/batch_normalization_8/ReadVariableOp_1@^sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOpC^sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpE^sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12^sequential_9/batch_normalization_9/ReadVariableOp4^sequential_9/batch_normalization_9/ReadVariableOp_1@^sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:?????????@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)conv2d_transpose_6/BiasAdd/ReadVariableOp)conv2d_transpose_6/BiasAdd/ReadVariableOp2h
2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2?
Dsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2?
Fsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_10/ReadVariableOp3sequential_10/batch_normalization_10/ReadVariableOp2n
5sequential_10/batch_normalization_10/ReadVariableOp_15sequential_10/batch_normalization_10/ReadVariableOp_12?
@sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOp@sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2?
Bsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpBsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2?
Dsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Dsequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12f
1sequential_2/batch_normalization_2/ReadVariableOp1sequential_2/batch_normalization_2/ReadVariableOp2j
3sequential_2/batch_normalization_2/ReadVariableOp_13sequential_2/batch_normalization_2/ReadVariableOp_12Z
+sequential_2/conv2d_1/Conv2D/ReadVariableOp+sequential_2/conv2d_1/Conv2D/ReadVariableOp2?
Bsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpBsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2?
Dsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Dsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12f
1sequential_3/batch_normalization_3/ReadVariableOp1sequential_3/batch_normalization_3/ReadVariableOp2j
3sequential_3/batch_normalization_3/ReadVariableOp_13sequential_3/batch_normalization_3/ReadVariableOp_12Z
+sequential_3/conv2d_2/Conv2D/ReadVariableOp+sequential_3/conv2d_2/Conv2D/ReadVariableOp2?
Bsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpBsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2?
Dsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Dsequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12f
1sequential_4/batch_normalization_4/ReadVariableOp1sequential_4/batch_normalization_4/ReadVariableOp2j
3sequential_4/batch_normalization_4/ReadVariableOp_13sequential_4/batch_normalization_4/ReadVariableOp_12Z
+sequential_4/conv2d_3/Conv2D/ReadVariableOp+sequential_4/conv2d_3/Conv2D/ReadVariableOp2?
Bsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpBsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp2?
Dsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1Dsequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12f
1sequential_5/batch_normalization_5/ReadVariableOp1sequential_5/batch_normalization_5/ReadVariableOp2j
3sequential_5/batch_normalization_5/ReadVariableOp_13sequential_5/batch_normalization_5/ReadVariableOp_12Z
+sequential_5/conv2d_4/Conv2D/ReadVariableOp+sequential_5/conv2d_4/Conv2D/ReadVariableOp2?
Bsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpBsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2?
Dsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Dsequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12f
1sequential_6/batch_normalization_6/ReadVariableOp1sequential_6/batch_normalization_6/ReadVariableOp2j
3sequential_6/batch_normalization_6/ReadVariableOp_13sequential_6/batch_normalization_6/ReadVariableOp_12Z
+sequential_6/conv2d_5/Conv2D/ReadVariableOp+sequential_6/conv2d_5/Conv2D/ReadVariableOp2?
Bsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpBsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Dsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Dsequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12f
1sequential_7/batch_normalization_7/ReadVariableOp1sequential_7/batch_normalization_7/ReadVariableOp2j
3sequential_7/batch_normalization_7/ReadVariableOp_13sequential_7/batch_normalization_7/ReadVariableOp_12?
?sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2?
Bsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpBsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2?
Dsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Dsequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12f
1sequential_8/batch_normalization_8/ReadVariableOp1sequential_8/batch_normalization_8/ReadVariableOp2j
3sequential_8/batch_normalization_8/ReadVariableOp_13sequential_8/batch_normalization_8/ReadVariableOp_12?
?sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2?
Bsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpBsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp2?
Dsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Dsequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12f
1sequential_9/batch_normalization_9/ReadVariableOp1sequential_9/batch_normalization_9/ReadVariableOp2j
3sequential_9/batch_normalization_9/ReadVariableOp_13sequential_9/batch_normalization_9/ReadVariableOp_12?
?sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_3_layer_call_fn_289603023

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
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2895977352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
K__inference_sequential_2_layer_call_and_return_conditional_losses_289597557
conv2d_1_input,
conv2d_1_289597543: -
batch_normalization_2_289597546: -
batch_normalization_2_289597548: -
batch_normalization_2_289597550: -
batch_normalization_2_289597552: 
identity??-batch_normalization_2/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallconv2d_1_inputconv2d_1_289597543*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_1_layer_call_and_return_conditional_losses_2895973682"
 conv2d_1/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_2_289597546batch_normalization_2_289597548batch_normalization_2_289597550batch_normalization_2_289597552*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_2895973892/
-batch_normalization_2/StatefulPartitionedCall?
leaky_re_lu_1/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_2895974042
leaky_re_lu_1/PartitionedCall?
IdentityIdentity&leaky_re_lu_1/PartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@@: : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall:_ [
/
_output_shapes
:?????????@@
(
_user_specified_nameconv2d_1_input
?
h
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_289598788

inputs
identitym
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:??????????*
alpha%???>2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
[
/__inference_concatenate_layer_call_fn_289602411
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_layer_call_and_return_conditional_losses_2896003112
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,????????????????????????????:??????????:l h
B
_output_shapes0
.:,????????????????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
?
9__inference_batch_normalization_7_layer_call_fn_289603539

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2895990192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_289598634

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_289603337

inputs
identitym
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:??????????*
alpha%???>2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_8_layer_call_and_return_conditional_losses_289599572
conv2d_transpose_2_input8
conv2d_transpose_2_289599558:??.
batch_normalization_8_289599561:	?.
batch_normalization_8_289599563:	?.
batch_normalization_8_289599565:	?.
batch_normalization_8_289599567:	?
identity??-batch_normalization_8/StatefulPartitionedCall?*conv2d_transpose_2/StatefulPartitionedCall?
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_2_inputconv2d_transpose_2_289599558*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_2895992962,
*conv2d_transpose_2/StatefulPartitionedCall?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_8_289599561batch_normalization_8_289599563batch_normalization_8_289599565batch_normalization_8_289599567*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2895993702/
-batch_normalization_8/StatefulPartitionedCall?
re_lu_2/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_2_layer_call_and_return_conditional_losses_2895994542
re_lu_2/PartitionedCall?
IdentityIdentity re_lu_2/PartitionedCall:output:0.^batch_normalization_8/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall:j f
0
_output_shapes
:??????????
2
_user_specified_nameconv2d_transpose_2_input
?
?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_289603262

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_4_layer_call_fn_289603158

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2895979862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_289602818

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_289603428

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?1
?
L__inference_sequential_10_layer_call_and_return_conditional_losses_289602672

inputsV
;conv2d_transpose_4_conv2d_transpose_readvariableop_resource:@?<
.batch_normalization_10_readvariableop_resource:@>
0batch_normalization_10_readvariableop_1_resource:@M
?batch_normalization_10_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource:@
identity??6batch_normalization_10/FusedBatchNormV3/ReadVariableOp?8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_10/ReadVariableOp?'batch_normalization_10/ReadVariableOp_1?2conv2d_transpose_4/conv2d_transpose/ReadVariableOpj
conv2d_transpose_4/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_transpose_4/Shape?
&conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_4/strided_slice/stack?
(conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_1?
(conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_2?
 conv2d_transpose_4/strided_sliceStridedSlice!conv2d_transpose_4/Shape:output:0/conv2d_transpose_4/strided_slice/stack:output:01conv2d_transpose_4/strided_slice/stack_1:output:01conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_4/strided_slicez
conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_4/stack/1z
conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_4/stack/2z
conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_4/stack/3?
conv2d_transpose_4/stackPack)conv2d_transpose_4/strided_slice:output:0#conv2d_transpose_4/stack/1:output:0#conv2d_transpose_4/stack/2:output:0#conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_4/stack?
(conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_4/strided_slice_1/stack?
*conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_1?
*conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_2?
"conv2d_transpose_4/strided_slice_1StridedSlice!conv2d_transpose_4/stack:output:01conv2d_transpose_4/strided_slice_1/stack:output:03conv2d_transpose_4/strided_slice_1/stack_1:output:03conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_4/strided_slice_1?
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_4_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype024
2conv2d_transpose_4/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_4/conv2d_transposeConv2DBackpropInput!conv2d_transpose_4/stack:output:0:conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2%
#conv2d_transpose_4/conv2d_transpose?
%batch_normalization_10/ReadVariableOpReadVariableOp.batch_normalization_10_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_10/ReadVariableOp?
'batch_normalization_10/ReadVariableOp_1ReadVariableOp0batch_normalization_10_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_10/ReadVariableOp_1?
6batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_10/FusedBatchNormV3FusedBatchNormV3,conv2d_transpose_4/conv2d_transpose:output:0-batch_normalization_10/ReadVariableOp:value:0/batch_normalization_10/ReadVariableOp_1:value:0>batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  @:@:@:@:@:*
epsilon%o?:*
is_training( 2)
'batch_normalization_10/FusedBatchNormV3?
re_lu_4/ReluRelu+batch_normalization_10/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????  @2
re_lu_4/Relu?
IdentityIdentityre_lu_4/Relu:activations:07^batch_normalization_10/FusedBatchNormV3/ReadVariableOp9^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_10/ReadVariableOp(^batch_normalization_10/ReadVariableOp_13^conv2d_transpose_4/conv2d_transpose/ReadVariableOp*
T0*/
_output_shapes
:?????????  @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2p
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp6batch_normalization_10/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_18batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_10/ReadVariableOp%batch_normalization_10/ReadVariableOp2R
'batch_normalization_10/ReadVariableOp_1'batch_normalization_10/ReadVariableOp_12h
2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2conv2d_transpose_4/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_7_layer_call_and_return_conditional_losses_289599203

inputs8
conv2d_transpose_1_289599189:??.
batch_normalization_7_289599192:	?.
batch_normalization_7_289599194:	?.
batch_normalization_7_289599196:	?.
batch_normalization_7_289599198:	?
identity??-batch_normalization_7/StatefulPartitionedCall?*conv2d_transpose_1/StatefulPartitionedCall?
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_1_289599189*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_2895989892,
*conv2d_transpose_1/StatefulPartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_7_289599192batch_normalization_7_289599194batch_normalization_7_289599196batch_normalization_7_289599198*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2895990632/
-batch_normalization_7/StatefulPartitionedCall?
re_lu_1/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_1_layer_call_and_return_conditional_losses_2895991472
re_lu_1/PartitionedCall?
IdentityIdentity re_lu_1/PartitionedCall:output:0.^batch_normalization_7/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_4_layer_call_fn_289602150

inputs"
unknown:@?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_4_layer_call_and_return_conditional_losses_2895982042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
K__inference_sequential_3_layer_call_and_return_conditional_losses_289597858

inputs,
conv2d_2_289597844: @-
batch_normalization_3_289597847:@-
batch_normalization_3_289597849:@-
batch_normalization_3_289597851:@-
batch_normalization_3_289597853:@
identity??-batch_normalization_3/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_289597844*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_2_layer_call_and_return_conditional_losses_2895977142"
 conv2d_2/StatefulPartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_3_289597847batch_normalization_3_289597849batch_normalization_3_289597851batch_normalization_3_289597853*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2895978052/
-batch_normalization_3/StatefulPartitionedCall?
leaky_re_lu_2/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_2895977502
leaky_re_lu_2/PartitionedCall?
IdentityIdentity&leaky_re_lu_2/PartitionedCall:output:0.^batch_normalization_3/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????   : : : : : 2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
??
?:
$__inference__wrapped_model_289597228
input_1T
:model_sequential_2_conv2d_1_conv2d_readvariableop_resource: N
@model_sequential_2_batch_normalization_2_readvariableop_resource: P
Bmodel_sequential_2_batch_normalization_2_readvariableop_1_resource: _
Qmodel_sequential_2_batch_normalization_2_fusedbatchnormv3_readvariableop_resource: a
Smodel_sequential_2_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource: T
:model_sequential_3_conv2d_2_conv2d_readvariableop_resource: @N
@model_sequential_3_batch_normalization_3_readvariableop_resource:@P
Bmodel_sequential_3_batch_normalization_3_readvariableop_1_resource:@_
Qmodel_sequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:@a
Smodel_sequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:@U
:model_sequential_4_conv2d_3_conv2d_readvariableop_resource:@?O
@model_sequential_4_batch_normalization_4_readvariableop_resource:	?Q
Bmodel_sequential_4_batch_normalization_4_readvariableop_1_resource:	?`
Qmodel_sequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	?b
Smodel_sequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	?V
:model_sequential_5_conv2d_4_conv2d_readvariableop_resource:??O
@model_sequential_5_batch_normalization_5_readvariableop_resource:	?Q
Bmodel_sequential_5_batch_normalization_5_readvariableop_1_resource:	?`
Qmodel_sequential_5_batch_normalization_5_fusedbatchnormv3_readvariableop_resource:	?b
Smodel_sequential_5_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:	?V
:model_sequential_6_conv2d_5_conv2d_readvariableop_resource:??O
@model_sequential_6_batch_normalization_6_readvariableop_resource:	?Q
Bmodel_sequential_6_batch_normalization_6_readvariableop_1_resource:	?`
Qmodel_sequential_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource:	?b
Smodel_sequential_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:	?j
Nmodel_sequential_7_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??O
@model_sequential_7_batch_normalization_7_readvariableop_resource:	?Q
Bmodel_sequential_7_batch_normalization_7_readvariableop_1_resource:	?`
Qmodel_sequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:	?b
Smodel_sequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:	?j
Nmodel_sequential_8_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:??O
@model_sequential_8_batch_normalization_8_readvariableop_resource:	?Q
Bmodel_sequential_8_batch_normalization_8_readvariableop_1_resource:	?`
Qmodel_sequential_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	?b
Smodel_sequential_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	?j
Nmodel_sequential_9_conv2d_transpose_3_conv2d_transpose_readvariableop_resource:??O
@model_sequential_9_batch_normalization_9_readvariableop_resource:	?Q
Bmodel_sequential_9_batch_normalization_9_readvariableop_1_resource:	?`
Qmodel_sequential_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource:	?b
Smodel_sequential_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource:	?j
Omodel_sequential_10_conv2d_transpose_4_conv2d_transpose_readvariableop_resource:@?P
Bmodel_sequential_10_batch_normalization_10_readvariableop_resource:@R
Dmodel_sequential_10_batch_normalization_10_readvariableop_1_resource:@a
Smodel_sequential_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resource:@c
Umodel_sequential_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource:@[
Amodel_conv2d_transpose_6_conv2d_transpose_readvariableop_resource:`F
8model_conv2d_transpose_6_biasadd_readvariableop_resource:
identity??/model/conv2d_transpose_6/BiasAdd/ReadVariableOp?8model/conv2d_transpose_6/conv2d_transpose/ReadVariableOp?Jmodel/sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?Lmodel/sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?9model/sequential_10/batch_normalization_10/ReadVariableOp?;model/sequential_10/batch_normalization_10/ReadVariableOp_1?Fmodel/sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?Hmodel/sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?Jmodel/sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?7model/sequential_2/batch_normalization_2/ReadVariableOp?9model/sequential_2/batch_normalization_2/ReadVariableOp_1?1model/sequential_2/conv2d_1/Conv2D/ReadVariableOp?Hmodel/sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?Jmodel/sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?7model/sequential_3/batch_normalization_3/ReadVariableOp?9model/sequential_3/batch_normalization_3/ReadVariableOp_1?1model/sequential_3/conv2d_2/Conv2D/ReadVariableOp?Hmodel/sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp?Jmodel/sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?7model/sequential_4/batch_normalization_4/ReadVariableOp?9model/sequential_4/batch_normalization_4/ReadVariableOp_1?1model/sequential_4/conv2d_3/Conv2D/ReadVariableOp?Hmodel/sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp?Jmodel/sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?7model/sequential_5/batch_normalization_5/ReadVariableOp?9model/sequential_5/batch_normalization_5/ReadVariableOp_1?1model/sequential_5/conv2d_4/Conv2D/ReadVariableOp?Hmodel/sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?Jmodel/sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?7model/sequential_6/batch_normalization_6/ReadVariableOp?9model/sequential_6/batch_normalization_6/ReadVariableOp_1?1model/sequential_6/conv2d_5/Conv2D/ReadVariableOp?Hmodel/sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?Jmodel/sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?7model/sequential_7/batch_normalization_7/ReadVariableOp?9model/sequential_7/batch_normalization_7/ReadVariableOp_1?Emodel/sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?Hmodel/sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?Jmodel/sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?7model/sequential_8/batch_normalization_8/ReadVariableOp?9model/sequential_8/batch_normalization_8/ReadVariableOp_1?Emodel/sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?Hmodel/sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?Jmodel/sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?7model/sequential_9/batch_normalization_9/ReadVariableOp?9model/sequential_9/batch_normalization_9/ReadVariableOp_1?Emodel/sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
1model/sequential_2/conv2d_1/Conv2D/ReadVariableOpReadVariableOp:model_sequential_2_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype023
1model/sequential_2/conv2d_1/Conv2D/ReadVariableOp?
"model/sequential_2/conv2d_1/Conv2DConv2Dinput_19model/sequential_2/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2$
"model/sequential_2/conv2d_1/Conv2D?
7model/sequential_2/batch_normalization_2/ReadVariableOpReadVariableOp@model_sequential_2_batch_normalization_2_readvariableop_resource*
_output_shapes
: *
dtype029
7model/sequential_2/batch_normalization_2/ReadVariableOp?
9model/sequential_2/batch_normalization_2/ReadVariableOp_1ReadVariableOpBmodel_sequential_2_batch_normalization_2_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9model/sequential_2/batch_normalization_2/ReadVariableOp_1?
Hmodel/sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodel_sequential_2_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02J
Hmodel/sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
Jmodel/sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodel_sequential_2_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02L
Jmodel/sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
9model/sequential_2/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3+model/sequential_2/conv2d_1/Conv2D:output:0?model/sequential_2/batch_normalization_2/ReadVariableOp:value:0Amodel/sequential_2/batch_normalization_2/ReadVariableOp_1:value:0Pmodel/sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Rmodel/sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
is_training( 2;
9model/sequential_2/batch_normalization_2/FusedBatchNormV3?
*model/sequential_2/leaky_re_lu_1/LeakyRelu	LeakyRelu=model/sequential_2/batch_normalization_2/FusedBatchNormV3:y:0*/
_output_shapes
:?????????   *
alpha%???>2,
*model/sequential_2/leaky_re_lu_1/LeakyRelu?
1model/sequential_3/conv2d_2/Conv2D/ReadVariableOpReadVariableOp:model_sequential_3_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype023
1model/sequential_3/conv2d_2/Conv2D/ReadVariableOp?
"model/sequential_3/conv2d_2/Conv2DConv2D8model/sequential_2/leaky_re_lu_1/LeakyRelu:activations:09model/sequential_3/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2$
"model/sequential_3/conv2d_2/Conv2D?
7model/sequential_3/batch_normalization_3/ReadVariableOpReadVariableOp@model_sequential_3_batch_normalization_3_readvariableop_resource*
_output_shapes
:@*
dtype029
7model/sequential_3/batch_normalization_3/ReadVariableOp?
9model/sequential_3/batch_normalization_3/ReadVariableOp_1ReadVariableOpBmodel_sequential_3_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9model/sequential_3/batch_normalization_3/ReadVariableOp_1?
Hmodel/sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodel_sequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02J
Hmodel/sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp?
Jmodel/sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodel_sequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02L
Jmodel/sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?
9model/sequential_3/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3+model/sequential_3/conv2d_2/Conv2D:output:0?model/sequential_3/batch_normalization_3/ReadVariableOp:value:0Amodel/sequential_3/batch_normalization_3/ReadVariableOp_1:value:0Pmodel/sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Rmodel/sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2;
9model/sequential_3/batch_normalization_3/FusedBatchNormV3?
*model/sequential_3/leaky_re_lu_2/LeakyRelu	LeakyRelu=model/sequential_3/batch_normalization_3/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>2,
*model/sequential_3/leaky_re_lu_2/LeakyRelu?
1model/sequential_4/conv2d_3/Conv2D/ReadVariableOpReadVariableOp:model_sequential_4_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype023
1model/sequential_4/conv2d_3/Conv2D/ReadVariableOp?
"model/sequential_4/conv2d_3/Conv2DConv2D8model/sequential_3/leaky_re_lu_2/LeakyRelu:activations:09model/sequential_4/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2$
"model/sequential_4/conv2d_3/Conv2D?
7model/sequential_4/batch_normalization_4/ReadVariableOpReadVariableOp@model_sequential_4_batch_normalization_4_readvariableop_resource*
_output_shapes	
:?*
dtype029
7model/sequential_4/batch_normalization_4/ReadVariableOp?
9model/sequential_4/batch_normalization_4/ReadVariableOp_1ReadVariableOpBmodel_sequential_4_batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9model/sequential_4/batch_normalization_4/ReadVariableOp_1?
Hmodel/sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodel_sequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodel/sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp?
Jmodel/sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodel_sequential_4_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodel/sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?
9model/sequential_4/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3+model/sequential_4/conv2d_3/Conv2D:output:0?model/sequential_4/batch_normalization_4/ReadVariableOp:value:0Amodel/sequential_4/batch_normalization_4/ReadVariableOp_1:value:0Pmodel/sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Rmodel/sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2;
9model/sequential_4/batch_normalization_4/FusedBatchNormV3?
*model/sequential_4/leaky_re_lu_3/LeakyRelu	LeakyRelu=model/sequential_4/batch_normalization_4/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2,
*model/sequential_4/leaky_re_lu_3/LeakyRelu?
1model/sequential_5/conv2d_4/Conv2D/ReadVariableOpReadVariableOp:model_sequential_5_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1model/sequential_5/conv2d_4/Conv2D/ReadVariableOp?
"model/sequential_5/conv2d_4/Conv2DConv2D8model/sequential_4/leaky_re_lu_3/LeakyRelu:activations:09model/sequential_5/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2$
"model/sequential_5/conv2d_4/Conv2D?
7model/sequential_5/batch_normalization_5/ReadVariableOpReadVariableOp@model_sequential_5_batch_normalization_5_readvariableop_resource*
_output_shapes	
:?*
dtype029
7model/sequential_5/batch_normalization_5/ReadVariableOp?
9model/sequential_5/batch_normalization_5/ReadVariableOp_1ReadVariableOpBmodel_sequential_5_batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9model/sequential_5/batch_normalization_5/ReadVariableOp_1?
Hmodel/sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodel_sequential_5_batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodel/sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp?
Jmodel/sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodel_sequential_5_batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodel/sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?
9model/sequential_5/batch_normalization_5/FusedBatchNormV3FusedBatchNormV3+model/sequential_5/conv2d_4/Conv2D:output:0?model/sequential_5/batch_normalization_5/ReadVariableOp:value:0Amodel/sequential_5/batch_normalization_5/ReadVariableOp_1:value:0Pmodel/sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0Rmodel/sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2;
9model/sequential_5/batch_normalization_5/FusedBatchNormV3?
*model/sequential_5/leaky_re_lu_4/LeakyRelu	LeakyRelu=model/sequential_5/batch_normalization_5/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2,
*model/sequential_5/leaky_re_lu_4/LeakyRelu?
1model/sequential_6/conv2d_5/Conv2D/ReadVariableOpReadVariableOp:model_sequential_6_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype023
1model/sequential_6/conv2d_5/Conv2D/ReadVariableOp?
"model/sequential_6/conv2d_5/Conv2DConv2D8model/sequential_5/leaky_re_lu_4/LeakyRelu:activations:09model/sequential_6/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2$
"model/sequential_6/conv2d_5/Conv2D?
7model/sequential_6/batch_normalization_6/ReadVariableOpReadVariableOp@model_sequential_6_batch_normalization_6_readvariableop_resource*
_output_shapes	
:?*
dtype029
7model/sequential_6/batch_normalization_6/ReadVariableOp?
9model/sequential_6/batch_normalization_6/ReadVariableOp_1ReadVariableOpBmodel_sequential_6_batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9model/sequential_6/batch_normalization_6/ReadVariableOp_1?
Hmodel/sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodel_sequential_6_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodel/sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
Jmodel/sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodel_sequential_6_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodel/sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
9model/sequential_6/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3+model/sequential_6/conv2d_5/Conv2D:output:0?model/sequential_6/batch_normalization_6/ReadVariableOp:value:0Amodel/sequential_6/batch_normalization_6/ReadVariableOp_1:value:0Pmodel/sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Rmodel/sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2;
9model/sequential_6/batch_normalization_6/FusedBatchNormV3?
*model/sequential_6/leaky_re_lu_5/LeakyRelu	LeakyRelu=model/sequential_6/batch_normalization_6/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2,
*model/sequential_6/leaky_re_lu_5/LeakyRelu?
+model/sequential_7/conv2d_transpose_1/ShapeShape8model/sequential_6/leaky_re_lu_5/LeakyRelu:activations:0*
T0*
_output_shapes
:2-
+model/sequential_7/conv2d_transpose_1/Shape?
9model/sequential_7/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9model/sequential_7/conv2d_transpose_1/strided_slice/stack?
;model/sequential_7/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;model/sequential_7/conv2d_transpose_1/strided_slice/stack_1?
;model/sequential_7/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;model/sequential_7/conv2d_transpose_1/strided_slice/stack_2?
3model/sequential_7/conv2d_transpose_1/strided_sliceStridedSlice4model/sequential_7/conv2d_transpose_1/Shape:output:0Bmodel/sequential_7/conv2d_transpose_1/strided_slice/stack:output:0Dmodel/sequential_7/conv2d_transpose_1/strided_slice/stack_1:output:0Dmodel/sequential_7/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3model/sequential_7/conv2d_transpose_1/strided_slice?
-model/sequential_7/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-model/sequential_7/conv2d_transpose_1/stack/1?
-model/sequential_7/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2/
-model/sequential_7/conv2d_transpose_1/stack/2?
-model/sequential_7/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2/
-model/sequential_7/conv2d_transpose_1/stack/3?
+model/sequential_7/conv2d_transpose_1/stackPack<model/sequential_7/conv2d_transpose_1/strided_slice:output:06model/sequential_7/conv2d_transpose_1/stack/1:output:06model/sequential_7/conv2d_transpose_1/stack/2:output:06model/sequential_7/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2-
+model/sequential_7/conv2d_transpose_1/stack?
;model/sequential_7/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;model/sequential_7/conv2d_transpose_1/strided_slice_1/stack?
=model/sequential_7/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=model/sequential_7/conv2d_transpose_1/strided_slice_1/stack_1?
=model/sequential_7/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=model/sequential_7/conv2d_transpose_1/strided_slice_1/stack_2?
5model/sequential_7/conv2d_transpose_1/strided_slice_1StridedSlice4model/sequential_7/conv2d_transpose_1/stack:output:0Dmodel/sequential_7/conv2d_transpose_1/strided_slice_1/stack:output:0Fmodel/sequential_7/conv2d_transpose_1/strided_slice_1/stack_1:output:0Fmodel/sequential_7/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5model/sequential_7/conv2d_transpose_1/strided_slice_1?
Emodel/sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpNmodel_sequential_7_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02G
Emodel/sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?
6model/sequential_7/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput4model/sequential_7/conv2d_transpose_1/stack:output:0Mmodel/sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:08model/sequential_6/leaky_re_lu_5/LeakyRelu:activations:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
28
6model/sequential_7/conv2d_transpose_1/conv2d_transpose?
7model/sequential_7/batch_normalization_7/ReadVariableOpReadVariableOp@model_sequential_7_batch_normalization_7_readvariableop_resource*
_output_shapes	
:?*
dtype029
7model/sequential_7/batch_normalization_7/ReadVariableOp?
9model/sequential_7/batch_normalization_7/ReadVariableOp_1ReadVariableOpBmodel_sequential_7_batch_normalization_7_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9model/sequential_7/batch_normalization_7/ReadVariableOp_1?
Hmodel/sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodel_sequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodel/sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
Jmodel/sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodel_sequential_7_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodel/sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
9model/sequential_7/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3?model/sequential_7/conv2d_transpose_1/conv2d_transpose:output:0?model/sequential_7/batch_normalization_7/ReadVariableOp:value:0Amodel/sequential_7/batch_normalization_7/ReadVariableOp_1:value:0Pmodel/sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Rmodel/sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2;
9model/sequential_7/batch_normalization_7/FusedBatchNormV3?
model/sequential_7/re_lu_1/ReluRelu=model/sequential_7/batch_normalization_7/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2!
model/sequential_7/re_lu_1/Relu?
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model/concatenate/concat/axis?
model/concatenate/concatConcatV2-model/sequential_7/re_lu_1/Relu:activations:08model/sequential_5/leaky_re_lu_4/LeakyRelu:activations:0&model/concatenate/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
model/concatenate/concat?
+model/sequential_8/conv2d_transpose_2/ShapeShape!model/concatenate/concat:output:0*
T0*
_output_shapes
:2-
+model/sequential_8/conv2d_transpose_2/Shape?
9model/sequential_8/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9model/sequential_8/conv2d_transpose_2/strided_slice/stack?
;model/sequential_8/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;model/sequential_8/conv2d_transpose_2/strided_slice/stack_1?
;model/sequential_8/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;model/sequential_8/conv2d_transpose_2/strided_slice/stack_2?
3model/sequential_8/conv2d_transpose_2/strided_sliceStridedSlice4model/sequential_8/conv2d_transpose_2/Shape:output:0Bmodel/sequential_8/conv2d_transpose_2/strided_slice/stack:output:0Dmodel/sequential_8/conv2d_transpose_2/strided_slice/stack_1:output:0Dmodel/sequential_8/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3model/sequential_8/conv2d_transpose_2/strided_slice?
-model/sequential_8/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-model/sequential_8/conv2d_transpose_2/stack/1?
-model/sequential_8/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2/
-model/sequential_8/conv2d_transpose_2/stack/2?
-model/sequential_8/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2/
-model/sequential_8/conv2d_transpose_2/stack/3?
+model/sequential_8/conv2d_transpose_2/stackPack<model/sequential_8/conv2d_transpose_2/strided_slice:output:06model/sequential_8/conv2d_transpose_2/stack/1:output:06model/sequential_8/conv2d_transpose_2/stack/2:output:06model/sequential_8/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2-
+model/sequential_8/conv2d_transpose_2/stack?
;model/sequential_8/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;model/sequential_8/conv2d_transpose_2/strided_slice_1/stack?
=model/sequential_8/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=model/sequential_8/conv2d_transpose_2/strided_slice_1/stack_1?
=model/sequential_8/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=model/sequential_8/conv2d_transpose_2/strided_slice_1/stack_2?
5model/sequential_8/conv2d_transpose_2/strided_slice_1StridedSlice4model/sequential_8/conv2d_transpose_2/stack:output:0Dmodel/sequential_8/conv2d_transpose_2/strided_slice_1/stack:output:0Fmodel/sequential_8/conv2d_transpose_2/strided_slice_1/stack_1:output:0Fmodel/sequential_8/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5model/sequential_8/conv2d_transpose_2/strided_slice_1?
Emodel/sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpNmodel_sequential_8_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02G
Emodel/sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?
6model/sequential_8/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput4model/sequential_8/conv2d_transpose_2/stack:output:0Mmodel/sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0!model/concatenate/concat:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
28
6model/sequential_8/conv2d_transpose_2/conv2d_transpose?
7model/sequential_8/batch_normalization_8/ReadVariableOpReadVariableOp@model_sequential_8_batch_normalization_8_readvariableop_resource*
_output_shapes	
:?*
dtype029
7model/sequential_8/batch_normalization_8/ReadVariableOp?
9model/sequential_8/batch_normalization_8/ReadVariableOp_1ReadVariableOpBmodel_sequential_8_batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9model/sequential_8/batch_normalization_8/ReadVariableOp_1?
Hmodel/sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodel_sequential_8_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodel/sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp?
Jmodel/sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodel_sequential_8_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodel/sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?
9model/sequential_8/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3?model/sequential_8/conv2d_transpose_2/conv2d_transpose:output:0?model/sequential_8/batch_normalization_8/ReadVariableOp:value:0Amodel/sequential_8/batch_normalization_8/ReadVariableOp_1:value:0Pmodel/sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Rmodel/sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2;
9model/sequential_8/batch_normalization_8/FusedBatchNormV3?
model/sequential_8/re_lu_2/ReluRelu=model/sequential_8/batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2!
model/sequential_8/re_lu_2/Relu?
model/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/concatenate_1/concat/axis?
model/concatenate_1/concatConcatV2-model/sequential_8/re_lu_2/Relu:activations:08model/sequential_4/leaky_re_lu_3/LeakyRelu:activations:0(model/concatenate_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
model/concatenate_1/concat?
+model/sequential_9/conv2d_transpose_3/ShapeShape#model/concatenate_1/concat:output:0*
T0*
_output_shapes
:2-
+model/sequential_9/conv2d_transpose_3/Shape?
9model/sequential_9/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9model/sequential_9/conv2d_transpose_3/strided_slice/stack?
;model/sequential_9/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;model/sequential_9/conv2d_transpose_3/strided_slice/stack_1?
;model/sequential_9/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;model/sequential_9/conv2d_transpose_3/strided_slice/stack_2?
3model/sequential_9/conv2d_transpose_3/strided_sliceStridedSlice4model/sequential_9/conv2d_transpose_3/Shape:output:0Bmodel/sequential_9/conv2d_transpose_3/strided_slice/stack:output:0Dmodel/sequential_9/conv2d_transpose_3/strided_slice/stack_1:output:0Dmodel/sequential_9/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3model/sequential_9/conv2d_transpose_3/strided_slice?
-model/sequential_9/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2/
-model/sequential_9/conv2d_transpose_3/stack/1?
-model/sequential_9/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2/
-model/sequential_9/conv2d_transpose_3/stack/2?
-model/sequential_9/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2/
-model/sequential_9/conv2d_transpose_3/stack/3?
+model/sequential_9/conv2d_transpose_3/stackPack<model/sequential_9/conv2d_transpose_3/strided_slice:output:06model/sequential_9/conv2d_transpose_3/stack/1:output:06model/sequential_9/conv2d_transpose_3/stack/2:output:06model/sequential_9/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2-
+model/sequential_9/conv2d_transpose_3/stack?
;model/sequential_9/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;model/sequential_9/conv2d_transpose_3/strided_slice_1/stack?
=model/sequential_9/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=model/sequential_9/conv2d_transpose_3/strided_slice_1/stack_1?
=model/sequential_9/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=model/sequential_9/conv2d_transpose_3/strided_slice_1/stack_2?
5model/sequential_9/conv2d_transpose_3/strided_slice_1StridedSlice4model/sequential_9/conv2d_transpose_3/stack:output:0Dmodel/sequential_9/conv2d_transpose_3/strided_slice_1/stack:output:0Fmodel/sequential_9/conv2d_transpose_3/strided_slice_1/stack_1:output:0Fmodel/sequential_9/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5model/sequential_9/conv2d_transpose_3/strided_slice_1?
Emodel/sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpNmodel_sequential_9_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02G
Emodel/sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
6model/sequential_9/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput4model/sequential_9/conv2d_transpose_3/stack:output:0Mmodel/sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0#model/concatenate_1/concat:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
28
6model/sequential_9/conv2d_transpose_3/conv2d_transpose?
7model/sequential_9/batch_normalization_9/ReadVariableOpReadVariableOp@model_sequential_9_batch_normalization_9_readvariableop_resource*
_output_shapes	
:?*
dtype029
7model/sequential_9/batch_normalization_9/ReadVariableOp?
9model/sequential_9/batch_normalization_9/ReadVariableOp_1ReadVariableOpBmodel_sequential_9_batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9model/sequential_9/batch_normalization_9/ReadVariableOp_1?
Hmodel/sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOpQmodel_sequential_9_batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02J
Hmodel/sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp?
Jmodel/sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpSmodel_sequential_9_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02L
Jmodel/sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?
9model/sequential_9/batch_normalization_9/FusedBatchNormV3FusedBatchNormV3?model/sequential_9/conv2d_transpose_3/conv2d_transpose:output:0?model/sequential_9/batch_normalization_9/ReadVariableOp:value:0Amodel/sequential_9/batch_normalization_9/ReadVariableOp_1:value:0Pmodel/sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0Rmodel/sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2;
9model/sequential_9/batch_normalization_9/FusedBatchNormV3?
model/sequential_9/re_lu_3/ReluRelu=model/sequential_9/batch_normalization_9/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2!
model/sequential_9/re_lu_3/Relu?
model/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/concatenate_2/concat/axis?
model/concatenate_2/concatConcatV2-model/sequential_9/re_lu_3/Relu:activations:08model/sequential_3/leaky_re_lu_2/LeakyRelu:activations:0(model/concatenate_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
model/concatenate_2/concat?
,model/sequential_10/conv2d_transpose_4/ShapeShape#model/concatenate_2/concat:output:0*
T0*
_output_shapes
:2.
,model/sequential_10/conv2d_transpose_4/Shape?
:model/sequential_10/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:model/sequential_10/conv2d_transpose_4/strided_slice/stack?
<model/sequential_10/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<model/sequential_10/conv2d_transpose_4/strided_slice/stack_1?
<model/sequential_10/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<model/sequential_10/conv2d_transpose_4/strided_slice/stack_2?
4model/sequential_10/conv2d_transpose_4/strided_sliceStridedSlice5model/sequential_10/conv2d_transpose_4/Shape:output:0Cmodel/sequential_10/conv2d_transpose_4/strided_slice/stack:output:0Emodel/sequential_10/conv2d_transpose_4/strided_slice/stack_1:output:0Emodel/sequential_10/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4model/sequential_10/conv2d_transpose_4/strided_slice?
.model/sequential_10/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 20
.model/sequential_10/conv2d_transpose_4/stack/1?
.model/sequential_10/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 20
.model/sequential_10/conv2d_transpose_4/stack/2?
.model/sequential_10/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@20
.model/sequential_10/conv2d_transpose_4/stack/3?
,model/sequential_10/conv2d_transpose_4/stackPack=model/sequential_10/conv2d_transpose_4/strided_slice:output:07model/sequential_10/conv2d_transpose_4/stack/1:output:07model/sequential_10/conv2d_transpose_4/stack/2:output:07model/sequential_10/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2.
,model/sequential_10/conv2d_transpose_4/stack?
<model/sequential_10/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<model/sequential_10/conv2d_transpose_4/strided_slice_1/stack?
>model/sequential_10/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>model/sequential_10/conv2d_transpose_4/strided_slice_1/stack_1?
>model/sequential_10/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>model/sequential_10/conv2d_transpose_4/strided_slice_1/stack_2?
6model/sequential_10/conv2d_transpose_4/strided_slice_1StridedSlice5model/sequential_10/conv2d_transpose_4/stack:output:0Emodel/sequential_10/conv2d_transpose_4/strided_slice_1/stack:output:0Gmodel/sequential_10/conv2d_transpose_4/strided_slice_1/stack_1:output:0Gmodel/sequential_10/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6model/sequential_10/conv2d_transpose_4/strided_slice_1?
Fmodel/sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpOmodel_sequential_10_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02H
Fmodel/sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?
7model/sequential_10/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput5model/sequential_10/conv2d_transpose_4/stack:output:0Nmodel/sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0#model/concatenate_2/concat:output:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
29
7model/sequential_10/conv2d_transpose_4/conv2d_transpose?
9model/sequential_10/batch_normalization_10/ReadVariableOpReadVariableOpBmodel_sequential_10_batch_normalization_10_readvariableop_resource*
_output_shapes
:@*
dtype02;
9model/sequential_10/batch_normalization_10/ReadVariableOp?
;model/sequential_10/batch_normalization_10/ReadVariableOp_1ReadVariableOpDmodel_sequential_10_batch_normalization_10_readvariableop_1_resource*
_output_shapes
:@*
dtype02=
;model/sequential_10/batch_normalization_10/ReadVariableOp_1?
Jmodel/sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOpSmodel_sequential_10_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02L
Jmodel/sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?
Lmodel/sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUmodel_sequential_10_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02N
Lmodel/sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?
;model/sequential_10/batch_normalization_10/FusedBatchNormV3FusedBatchNormV3@model/sequential_10/conv2d_transpose_4/conv2d_transpose:output:0Amodel/sequential_10/batch_normalization_10/ReadVariableOp:value:0Cmodel/sequential_10/batch_normalization_10/ReadVariableOp_1:value:0Rmodel/sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0Tmodel/sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  @:@:@:@:@:*
epsilon%o?:*
is_training( 2=
;model/sequential_10/batch_normalization_10/FusedBatchNormV3?
 model/sequential_10/re_lu_4/ReluRelu?model/sequential_10/batch_normalization_10/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????  @2"
 model/sequential_10/re_lu_4/Relu?
model/concatenate_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/concatenate_3/concat/axis?
model/concatenate_3/concatConcatV2.model/sequential_10/re_lu_4/Relu:activations:08model/sequential_2/leaky_re_lu_1/LeakyRelu:activations:0(model/concatenate_3/concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????  `2
model/concatenate_3/concat?
model/conv2d_transpose_6/ShapeShape#model/concatenate_3/concat:output:0*
T0*
_output_shapes
:2 
model/conv2d_transpose_6/Shape?
,model/conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,model/conv2d_transpose_6/strided_slice/stack?
.model/conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.model/conv2d_transpose_6/strided_slice/stack_1?
.model/conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.model/conv2d_transpose_6/strided_slice/stack_2?
&model/conv2d_transpose_6/strided_sliceStridedSlice'model/conv2d_transpose_6/Shape:output:05model/conv2d_transpose_6/strided_slice/stack:output:07model/conv2d_transpose_6/strided_slice/stack_1:output:07model/conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&model/conv2d_transpose_6/strided_slice?
 model/conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2"
 model/conv2d_transpose_6/stack/1?
 model/conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2"
 model/conv2d_transpose_6/stack/2?
 model/conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2"
 model/conv2d_transpose_6/stack/3?
model/conv2d_transpose_6/stackPack/model/conv2d_transpose_6/strided_slice:output:0)model/conv2d_transpose_6/stack/1:output:0)model/conv2d_transpose_6/stack/2:output:0)model/conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:2 
model/conv2d_transpose_6/stack?
.model/conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.model/conv2d_transpose_6/strided_slice_1/stack?
0model/conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0model/conv2d_transpose_6/strided_slice_1/stack_1?
0model/conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0model/conv2d_transpose_6/strided_slice_1/stack_2?
(model/conv2d_transpose_6/strided_slice_1StridedSlice'model/conv2d_transpose_6/stack:output:07model/conv2d_transpose_6/strided_slice_1/stack:output:09model/conv2d_transpose_6/strided_slice_1/stack_1:output:09model/conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(model/conv2d_transpose_6/strided_slice_1?
8model/conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOpAmodel_conv2d_transpose_6_conv2d_transpose_readvariableop_resource*&
_output_shapes
:`*
dtype02:
8model/conv2d_transpose_6/conv2d_transpose/ReadVariableOp?
)model/conv2d_transpose_6/conv2d_transposeConv2DBackpropInput'model/conv2d_transpose_6/stack:output:0@model/conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:0#model/concatenate_3/concat:output:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2+
)model/conv2d_transpose_6/conv2d_transpose?
/model/conv2d_transpose_6/BiasAdd/ReadVariableOpReadVariableOp8model_conv2d_transpose_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/model/conv2d_transpose_6/BiasAdd/ReadVariableOp?
 model/conv2d_transpose_6/BiasAddBiasAdd2model/conv2d_transpose_6/conv2d_transpose:output:07model/conv2d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@2"
 model/conv2d_transpose_6/BiasAdd?
model/conv2d_transpose_6/TanhTanh)model/conv2d_transpose_6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@2
model/conv2d_transpose_6/Tanh?
IdentityIdentity!model/conv2d_transpose_6/Tanh:y:00^model/conv2d_transpose_6/BiasAdd/ReadVariableOp9^model/conv2d_transpose_6/conv2d_transpose/ReadVariableOpK^model/sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpM^model/sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:^model/sequential_10/batch_normalization_10/ReadVariableOp<^model/sequential_10/batch_normalization_10/ReadVariableOp_1G^model/sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOpI^model/sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpK^model/sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_18^model/sequential_2/batch_normalization_2/ReadVariableOp:^model/sequential_2/batch_normalization_2/ReadVariableOp_12^model/sequential_2/conv2d_1/Conv2D/ReadVariableOpI^model/sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpK^model/sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_18^model/sequential_3/batch_normalization_3/ReadVariableOp:^model/sequential_3/batch_normalization_3/ReadVariableOp_12^model/sequential_3/conv2d_2/Conv2D/ReadVariableOpI^model/sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpK^model/sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_18^model/sequential_4/batch_normalization_4/ReadVariableOp:^model/sequential_4/batch_normalization_4/ReadVariableOp_12^model/sequential_4/conv2d_3/Conv2D/ReadVariableOpI^model/sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpK^model/sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_18^model/sequential_5/batch_normalization_5/ReadVariableOp:^model/sequential_5/batch_normalization_5/ReadVariableOp_12^model/sequential_5/conv2d_4/Conv2D/ReadVariableOpI^model/sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpK^model/sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_18^model/sequential_6/batch_normalization_6/ReadVariableOp:^model/sequential_6/batch_normalization_6/ReadVariableOp_12^model/sequential_6/conv2d_5/Conv2D/ReadVariableOpI^model/sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpK^model/sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_18^model/sequential_7/batch_normalization_7/ReadVariableOp:^model/sequential_7/batch_normalization_7/ReadVariableOp_1F^model/sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOpI^model/sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpK^model/sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_18^model/sequential_8/batch_normalization_8/ReadVariableOp:^model/sequential_8/batch_normalization_8/ReadVariableOp_1F^model/sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOpI^model/sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpK^model/sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_18^model/sequential_9/batch_normalization_9/ReadVariableOp:^model/sequential_9/batch_normalization_9/ReadVariableOp_1F^model/sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp*
T0*/
_output_shapes
:?????????@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:?????????@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/model/conv2d_transpose_6/BiasAdd/ReadVariableOp/model/conv2d_transpose_6/BiasAdd/ReadVariableOp2t
8model/conv2d_transpose_6/conv2d_transpose/ReadVariableOp8model/conv2d_transpose_6/conv2d_transpose/ReadVariableOp2?
Jmodel/sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOpJmodel/sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2?
Lmodel/sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Lmodel/sequential_10/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12v
9model/sequential_10/batch_normalization_10/ReadVariableOp9model/sequential_10/batch_normalization_10/ReadVariableOp2z
;model/sequential_10/batch_normalization_10/ReadVariableOp_1;model/sequential_10/batch_normalization_10/ReadVariableOp_12?
Fmodel/sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOpFmodel/sequential_10/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2?
Hmodel/sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOpHmodel/sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2?
Jmodel/sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Jmodel/sequential_2/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12r
7model/sequential_2/batch_normalization_2/ReadVariableOp7model/sequential_2/batch_normalization_2/ReadVariableOp2v
9model/sequential_2/batch_normalization_2/ReadVariableOp_19model/sequential_2/batch_normalization_2/ReadVariableOp_12f
1model/sequential_2/conv2d_1/Conv2D/ReadVariableOp1model/sequential_2/conv2d_1/Conv2D/ReadVariableOp2?
Hmodel/sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpHmodel/sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2?
Jmodel/sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Jmodel/sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12r
7model/sequential_3/batch_normalization_3/ReadVariableOp7model/sequential_3/batch_normalization_3/ReadVariableOp2v
9model/sequential_3/batch_normalization_3/ReadVariableOp_19model/sequential_3/batch_normalization_3/ReadVariableOp_12f
1model/sequential_3/conv2d_2/Conv2D/ReadVariableOp1model/sequential_3/conv2d_2/Conv2D/ReadVariableOp2?
Hmodel/sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOpHmodel/sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2?
Jmodel/sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Jmodel/sequential_4/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12r
7model/sequential_4/batch_normalization_4/ReadVariableOp7model/sequential_4/batch_normalization_4/ReadVariableOp2v
9model/sequential_4/batch_normalization_4/ReadVariableOp_19model/sequential_4/batch_normalization_4/ReadVariableOp_12f
1model/sequential_4/conv2d_3/Conv2D/ReadVariableOp1model/sequential_4/conv2d_3/Conv2D/ReadVariableOp2?
Hmodel/sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOpHmodel/sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp2?
Jmodel/sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1Jmodel/sequential_5/batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12r
7model/sequential_5/batch_normalization_5/ReadVariableOp7model/sequential_5/batch_normalization_5/ReadVariableOp2v
9model/sequential_5/batch_normalization_5/ReadVariableOp_19model/sequential_5/batch_normalization_5/ReadVariableOp_12f
1model/sequential_5/conv2d_4/Conv2D/ReadVariableOp1model/sequential_5/conv2d_4/Conv2D/ReadVariableOp2?
Hmodel/sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOpHmodel/sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2?
Jmodel/sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Jmodel/sequential_6/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12r
7model/sequential_6/batch_normalization_6/ReadVariableOp7model/sequential_6/batch_normalization_6/ReadVariableOp2v
9model/sequential_6/batch_normalization_6/ReadVariableOp_19model/sequential_6/batch_normalization_6/ReadVariableOp_12f
1model/sequential_6/conv2d_5/Conv2D/ReadVariableOp1model/sequential_6/conv2d_5/Conv2D/ReadVariableOp2?
Hmodel/sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOpHmodel/sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2?
Jmodel/sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Jmodel/sequential_7/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12r
7model/sequential_7/batch_normalization_7/ReadVariableOp7model/sequential_7/batch_normalization_7/ReadVariableOp2v
9model/sequential_7/batch_normalization_7/ReadVariableOp_19model/sequential_7/batch_normalization_7/ReadVariableOp_12?
Emodel/sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOpEmodel/sequential_7/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2?
Hmodel/sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOpHmodel/sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2?
Jmodel/sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Jmodel/sequential_8/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12r
7model/sequential_8/batch_normalization_8/ReadVariableOp7model/sequential_8/batch_normalization_8/ReadVariableOp2v
9model/sequential_8/batch_normalization_8/ReadVariableOp_19model/sequential_8/batch_normalization_8/ReadVariableOp_12?
Emodel/sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOpEmodel/sequential_8/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2?
Hmodel/sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOpHmodel/sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp2?
Jmodel/sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Jmodel/sequential_9/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12r
7model/sequential_9/batch_normalization_9/ReadVariableOp7model/sequential_9/batch_normalization_9/ReadVariableOp2v
9model/sequential_9/batch_normalization_9/ReadVariableOp_19model/sequential_9/batch_normalization_9/ReadVariableOp_12?
Emodel/sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOpEmodel/sequential_9/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:X T
/
_output_shapes
:?????????@@
!
_user_specified_name	input_1
?
?
0__inference_sequential_2_layer_call_fn_289597540
conv2d_1_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_2_layer_call_and_return_conditional_losses_2895975122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@@: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:?????????@@
(
_user_specified_nameconv2d_1_input
?
?
G__inference_conv2d_4_layer_call_and_return_conditional_losses_289603201

inputs:
conv2d_readvariableop_resource:??
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_3_layer_call_fn_289602997

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
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2895975962
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
?
?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_289603114

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_289598332

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?8
?
K__inference_sequential_8_layer_call_and_return_conditional_losses_289602481

inputsW
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource:??<
-batch_normalization_8_readvariableop_resource:	?>
/batch_normalization_8_readvariableop_1_resource:	?M
>batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	?
identity??$batch_normalization_8/AssignNewValue?&batch_normalization_8/AssignNewValue_1?5batch_normalization_8/FusedBatchNormV3/ReadVariableOp?7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_8/ReadVariableOp?&batch_normalization_8/ReadVariableOp_1?2conv2d_transpose_2/conv2d_transpose/ReadVariableOpj
conv2d_transpose_2/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_transpose_2/Shape?
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_2/strided_slice/stack?
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_2/strided_slice/stack_1?
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_2/strided_slice/stack_2?
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_2/strided_slicez
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_2/stack/1z
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_2/stack/2{
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_2/stack/3?
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_2/stack?
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_2/strided_slice_1/stack?
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_2/strided_slice_1/stack_1?
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_2/strided_slice_1/stack_2?
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_2/strided_slice_1?
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype024
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#conv2d_transpose_2/conv2d_transpose?
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_8/ReadVariableOp?
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_8/ReadVariableOp_1?
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3,conv2d_transpose_2/conv2d_transpose:output:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_8/FusedBatchNormV3?
$batch_normalization_8/AssignNewValueAssignVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource3batch_normalization_8/FusedBatchNormV3:batch_mean:06^batch_normalization_8/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_8/AssignNewValue?
&batch_normalization_8/AssignNewValue_1AssignVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_8/FusedBatchNormV3:batch_variance:08^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_8/AssignNewValue_1?
re_lu_2/ReluRelu*batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
re_lu_2/Relu?
IdentityIdentityre_lu_2/Relu:activations:0%^batch_normalization_8/AssignNewValue'^batch_normalization_8/AssignNewValue_16^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_13^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2L
$batch_normalization_8/AssignNewValue$batch_normalization_8/AssignNewValue2P
&batch_normalization_8/AssignNewValue_1&batch_normalization_8/AssignNewValue_12n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_289602948

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
exponential_avg_factor%
?#<2
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
9__inference_batch_normalization_6_layer_call_fn_289603480

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_2895988432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_289598288

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_model_layer_call_fn_289600913
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: #
	unknown_4: @
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@$
	unknown_9:@?

unknown_10:	?

unknown_11:	?

unknown_12:	?

unknown_13:	?&

unknown_14:??

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?&

unknown_19:??

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?&

unknown_24:??

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?&

unknown_34:??

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:	?%

unknown_39:@?

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@$

unknown_44:`

unknown_45:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45*;
Tin4
220*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*?
_read_only_resource_inputs!
 !$%&)*+./*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_layer_call_and_return_conditional_losses_2896007172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:?????????@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????@@
!
_user_specified_name	input_1
?
b
F__inference_re_lu_1_layer_call_and_return_conditional_losses_289603557

inputs
identityi
ReluReluinputs*
T0*B
_output_shapes0
.:,????????????????????????????2
Relu?
IdentityIdentityRelu:activations:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?Z
?
D__inference_model_layer_call_and_return_conditional_losses_289601137
input_10
sequential_2_289601028: $
sequential_2_289601030: $
sequential_2_289601032: $
sequential_2_289601034: $
sequential_2_289601036: 0
sequential_3_289601039: @$
sequential_3_289601041:@$
sequential_3_289601043:@$
sequential_3_289601045:@$
sequential_3_289601047:@1
sequential_4_289601050:@?%
sequential_4_289601052:	?%
sequential_4_289601054:	?%
sequential_4_289601056:	?%
sequential_4_289601058:	?2
sequential_5_289601061:??%
sequential_5_289601063:	?%
sequential_5_289601065:	?%
sequential_5_289601067:	?%
sequential_5_289601069:	?2
sequential_6_289601072:??%
sequential_6_289601074:	?%
sequential_6_289601076:	?%
sequential_6_289601078:	?%
sequential_6_289601080:	?2
sequential_7_289601083:??%
sequential_7_289601085:	?%
sequential_7_289601087:	?%
sequential_7_289601089:	?%
sequential_7_289601091:	?2
sequential_8_289601095:??%
sequential_8_289601097:	?%
sequential_8_289601099:	?%
sequential_8_289601101:	?%
sequential_8_289601103:	?2
sequential_9_289601107:??%
sequential_9_289601109:	?%
sequential_9_289601111:	?%
sequential_9_289601113:	?%
sequential_9_289601115:	?2
sequential_10_289601119:@?%
sequential_10_289601121:@%
sequential_10_289601123:@%
sequential_10_289601125:@%
sequential_10_289601127:@6
conv2d_transpose_6_289601131:`*
conv2d_transpose_6_289601133:
identity??*conv2d_transpose_6/StatefulPartitionedCall?%sequential_10/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?$sequential_3/StatefulPartitionedCall?$sequential_4/StatefulPartitionedCall?$sequential_5/StatefulPartitionedCall?$sequential_6/StatefulPartitionedCall?$sequential_7/StatefulPartitionedCall?$sequential_8/StatefulPartitionedCall?$sequential_9/StatefulPartitionedCall?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_2_289601028sequential_2_289601030sequential_2_289601032sequential_2_289601034sequential_2_289601036*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_2_layer_call_and_return_conditional_losses_2895975122&
$sequential_2/StatefulPartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0sequential_3_289601039sequential_3_289601041sequential_3_289601043sequential_3_289601045sequential_3_289601047*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_3_layer_call_and_return_conditional_losses_2895978582&
$sequential_3/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0sequential_4_289601050sequential_4_289601052sequential_4_289601054sequential_4_289601056sequential_4_289601058*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_4_layer_call_and_return_conditional_losses_2895982042&
$sequential_4/StatefulPartitionedCall?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0sequential_5_289601061sequential_5_289601063sequential_5_289601065sequential_5_289601067sequential_5_289601069*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_5_layer_call_and_return_conditional_losses_2895985502&
$sequential_5/StatefulPartitionedCall?
$sequential_6/StatefulPartitionedCallStatefulPartitionedCall-sequential_5/StatefulPartitionedCall:output:0sequential_6_289601072sequential_6_289601074sequential_6_289601076sequential_6_289601078sequential_6_289601080*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_6_layer_call_and_return_conditional_losses_2895988962&
$sequential_6/StatefulPartitionedCall?
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall-sequential_6/StatefulPartitionedCall:output:0sequential_7_289601083sequential_7_289601085sequential_7_289601087sequential_7_289601089sequential_7_289601091*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_7_layer_call_and_return_conditional_losses_2895992032&
$sequential_7/StatefulPartitionedCall?
concatenate/PartitionedCallPartitionedCall-sequential_7/StatefulPartitionedCall:output:0-sequential_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_layer_call_and_return_conditional_losses_2896003112
concatenate/PartitionedCall?
$sequential_8/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0sequential_8_289601095sequential_8_289601097sequential_8_289601099sequential_8_289601101sequential_8_289601103*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_8_layer_call_and_return_conditional_losses_2895995102&
$sequential_8/StatefulPartitionedCall?
concatenate_1/PartitionedCallPartitionedCall-sequential_8/StatefulPartitionedCall:output:0-sequential_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_concatenate_1_layer_call_and_return_conditional_losses_2896003312
concatenate_1/PartitionedCall?
$sequential_9/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0sequential_9_289601107sequential_9_289601109sequential_9_289601111sequential_9_289601113sequential_9_289601115*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_9_layer_call_and_return_conditional_losses_2895998172&
$sequential_9/StatefulPartitionedCall?
concatenate_2/PartitionedCallPartitionedCall-sequential_9/StatefulPartitionedCall:output:0-sequential_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_concatenate_2_layer_call_and_return_conditional_losses_2896003512
concatenate_2/PartitionedCall?
%sequential_10/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0sequential_10_289601119sequential_10_289601121sequential_10_289601123sequential_10_289601125sequential_10_289601127*
Tin

2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_sequential_10_layer_call_and_return_conditional_losses_2896001242'
%sequential_10/StatefulPartitionedCall?
concatenate_3/PartitionedCallPartitionedCall.sequential_10/StatefulPartitionedCall:output:0-sequential_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  `* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_concatenate_3_layer_call_and_return_conditional_losses_2896003712
concatenate_3/PartitionedCall?
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0conv2d_transpose_6_289601131conv2d_transpose_6_289601133*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_2896002212,
*conv2d_transpose_6/StatefulPartitionedCall?
IdentityIdentity3conv2d_transpose_6/StatefulPartitionedCall:output:0+^conv2d_transpose_6/StatefulPartitionedCall&^sequential_10/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall%^sequential_6/StatefulPartitionedCall%^sequential_7/StatefulPartitionedCall%^sequential_8/StatefulPartitionedCall%^sequential_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:?????????@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall2L
$sequential_6/StatefulPartitionedCall$sequential_6/StatefulPartitionedCall2L
$sequential_7/StatefulPartitionedCall$sequential_7/StatefulPartitionedCall2L
$sequential_8/StatefulPartitionedCall$sequential_8/StatefulPartitionedCall2L
$sequential_9/StatefulPartitionedCall$sequential_9/StatefulPartitionedCall:X T
/
_output_shapes
:?????????@@
!
_user_specified_name	input_1
?
h
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_289597404

inputs
identityl
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:?????????   *
alpha%???>2
	LeakyRelus
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_6_layer_call_fn_289603467

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_2895987732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_289603096

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_3_layer_call_fn_289603010

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
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2895976402
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
?
?
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_289599063

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?1
?
K__inference_sequential_9_layer_call_and_return_conditional_losses_289602559

inputsW
;conv2d_transpose_3_conv2d_transpose_readvariableop_resource:??<
-batch_normalization_9_readvariableop_resource:	?>
/batch_normalization_9_readvariableop_1_resource:	?M
>batch_normalization_9_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource:	?
identity??5batch_normalization_9/FusedBatchNormV3/ReadVariableOp?7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_9/ReadVariableOp?&batch_normalization_9/ReadVariableOp_1?2conv2d_transpose_3/conv2d_transpose/ReadVariableOpj
conv2d_transpose_3/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_transpose_3/Shape?
&conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_3/strided_slice/stack?
(conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_3/strided_slice/stack_1?
(conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_3/strided_slice/stack_2?
 conv2d_transpose_3/strided_sliceStridedSlice!conv2d_transpose_3/Shape:output:0/conv2d_transpose_3/strided_slice/stack:output:01conv2d_transpose_3/strided_slice/stack_1:output:01conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_3/strided_slicez
conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_3/stack/1z
conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_3/stack/2{
conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_3/stack/3?
conv2d_transpose_3/stackPack)conv2d_transpose_3/strided_slice:output:0#conv2d_transpose_3/stack/1:output:0#conv2d_transpose_3/stack/2:output:0#conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_3/stack?
(conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_3/strided_slice_1/stack?
*conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_3/strided_slice_1/stack_1?
*conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_3/strided_slice_1/stack_2?
"conv2d_transpose_3/strided_slice_1StridedSlice!conv2d_transpose_3/stack:output:01conv2d_transpose_3/strided_slice_1/stack:output:03conv2d_transpose_3/strided_slice_1/stack_1:output:03conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_3/strided_slice_1?
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_3_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype024
2conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_3/conv2d_transposeConv2DBackpropInput!conv2d_transpose_3/stack:output:0:conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#conv2d_transpose_3/conv2d_transpose?
$batch_normalization_9/ReadVariableOpReadVariableOp-batch_normalization_9_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_9/ReadVariableOp?
&batch_normalization_9/ReadVariableOp_1ReadVariableOp/batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_9/ReadVariableOp_1?
5batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_9/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_9/FusedBatchNormV3FusedBatchNormV3,conv2d_transpose_3/conv2d_transpose:output:0,batch_normalization_9/ReadVariableOp:value:0.batch_normalization_9/ReadVariableOp_1:value:0=batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_9/FusedBatchNormV3?
re_lu_3/ReluRelu*batch_normalization_9/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
re_lu_3/Relu?
IdentityIdentityre_lu_3/Relu:activations:06^batch_normalization_9/FusedBatchNormV3/ReadVariableOp8^batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_9/ReadVariableOp'^batch_normalization_9/ReadVariableOp_13^conv2d_transpose_3/conv2d_transpose/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2n
5batch_normalization_9/FusedBatchNormV3/ReadVariableOp5batch_normalization_9/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_17batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_9/ReadVariableOp$batch_normalization_9/ReadVariableOp2P
&batch_normalization_9/ReadVariableOp_1&batch_normalization_9/ReadVariableOp_12h
2conv2d_transpose_3/conv2d_transpose/ReadVariableOp2conv2d_transpose_3/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_289599940

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
9__inference_batch_normalization_5_layer_call_fn_289603306

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2895983322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?8
?
L__inference_sequential_10_layer_call_and_return_conditional_losses_289602707

inputsV
;conv2d_transpose_4_conv2d_transpose_readvariableop_resource:@?<
.batch_normalization_10_readvariableop_resource:@>
0batch_normalization_10_readvariableop_1_resource:@M
?batch_normalization_10_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource:@
identity??%batch_normalization_10/AssignNewValue?'batch_normalization_10/AssignNewValue_1?6batch_normalization_10/FusedBatchNormV3/ReadVariableOp?8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_10/ReadVariableOp?'batch_normalization_10/ReadVariableOp_1?2conv2d_transpose_4/conv2d_transpose/ReadVariableOpj
conv2d_transpose_4/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_transpose_4/Shape?
&conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_4/strided_slice/stack?
(conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_1?
(conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_2?
 conv2d_transpose_4/strided_sliceStridedSlice!conv2d_transpose_4/Shape:output:0/conv2d_transpose_4/strided_slice/stack:output:01conv2d_transpose_4/strided_slice/stack_1:output:01conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_4/strided_slicez
conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_4/stack/1z
conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_4/stack/2z
conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_4/stack/3?
conv2d_transpose_4/stackPack)conv2d_transpose_4/strided_slice:output:0#conv2d_transpose_4/stack/1:output:0#conv2d_transpose_4/stack/2:output:0#conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_4/stack?
(conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_4/strided_slice_1/stack?
*conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_1?
*conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_2?
"conv2d_transpose_4/strided_slice_1StridedSlice!conv2d_transpose_4/stack:output:01conv2d_transpose_4/strided_slice_1/stack:output:03conv2d_transpose_4/strided_slice_1/stack_1:output:03conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_4/strided_slice_1?
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_4_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype024
2conv2d_transpose_4/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_4/conv2d_transposeConv2DBackpropInput!conv2d_transpose_4/stack:output:0:conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2%
#conv2d_transpose_4/conv2d_transpose?
%batch_normalization_10/ReadVariableOpReadVariableOp.batch_normalization_10_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_10/ReadVariableOp?
'batch_normalization_10/ReadVariableOp_1ReadVariableOp0batch_normalization_10_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_10/ReadVariableOp_1?
6batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp?
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?
'batch_normalization_10/FusedBatchNormV3FusedBatchNormV3,conv2d_transpose_4/conv2d_transpose:output:0-batch_normalization_10/ReadVariableOp:value:0/batch_normalization_10/ReadVariableOp_1:value:0>batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????  @:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2)
'batch_normalization_10/FusedBatchNormV3?
%batch_normalization_10/AssignNewValueAssignVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource4batch_normalization_10/FusedBatchNormV3:batch_mean:07^batch_normalization_10/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_10/AssignNewValue?
'batch_normalization_10/AssignNewValue_1AssignVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_10/FusedBatchNormV3:batch_variance:09^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_10/AssignNewValue_1?
re_lu_4/ReluRelu+batch_normalization_10/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????  @2
re_lu_4/Relu?
IdentityIdentityre_lu_4/Relu:activations:0&^batch_normalization_10/AssignNewValue(^batch_normalization_10/AssignNewValue_17^batch_normalization_10/FusedBatchNormV3/ReadVariableOp9^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_10/ReadVariableOp(^batch_normalization_10/ReadVariableOp_13^conv2d_transpose_4/conv2d_transpose/ReadVariableOp*
T0*/
_output_shapes
:?????????  @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2N
%batch_normalization_10/AssignNewValue%batch_normalization_10/AssignNewValue2R
'batch_normalization_10/AssignNewValue_1'batch_normalization_10/AssignNewValue_12p
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp6batch_normalization_10/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_18batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_10/ReadVariableOp%batch_normalization_10/ReadVariableOp2R
'batch_normalization_10/ReadVariableOp_1'batch_normalization_10/ReadVariableOp_12h
2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2conv2d_transpose_4/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_re_lu_3_layer_call_and_return_conditional_losses_289603701

inputs
identityi
ReluReluinputs*
T0*B
_output_shapes0
.:,????????????????????????????2
Relu?
IdentityIdentityRelu:activations:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_8_layer_call_fn_289602511

inputs#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_8_layer_call_and_return_conditional_losses_2895995102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_6_layer_call_fn_289602283

inputs#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_6_layer_call_and_return_conditional_losses_2895987912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
1__inference_sequential_10_layer_call_fn_289602722

inputs"
unknown:@?
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_sequential_10_layer_call_and_return_conditional_losses_2896000712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_289598843

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_289598081

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_289598096

inputs
identitym
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:??????????*
alpha%???>2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_5_layer_call_and_return_conditional_losses_289598550

inputs.
conv2d_4_289598536:??.
batch_normalization_5_289598539:	?.
batch_normalization_5_289598541:	?.
batch_normalization_5_289598543:	?.
batch_normalization_5_289598545:	?
identity??-batch_normalization_5/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4_289598536*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_4_layer_call_and_return_conditional_losses_2895984062"
 conv2d_4/StatefulPartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_5_289598539batch_normalization_5_289598541batch_normalization_5_289598543batch_normalization_5_289598545*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2895984972/
-batch_normalization_5/StatefulPartitionedCall?
leaky_re_lu_4/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_2895984422
leaky_re_lu_4/PartitionedCall?
IdentityIdentity&leaky_re_lu_4/PartitionedCall:output:0.^batch_normalization_5/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_7_layer_call_and_return_conditional_losses_289599150

inputs8
conv2d_transpose_1_289599130:??.
batch_normalization_7_289599133:	?.
batch_normalization_7_289599135:	?.
batch_normalization_7_289599137:	?.
batch_normalization_7_289599139:	?
identity??-batch_normalization_7/StatefulPartitionedCall?*conv2d_transpose_1/StatefulPartitionedCall?
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_1_289599130*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_2895989892,
*conv2d_transpose_1/StatefulPartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_7_289599133batch_normalization_7_289599135batch_normalization_7_289599137batch_normalization_7_289599139*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2895990192/
-batch_normalization_7/StatefulPartitionedCall?
re_lu_1/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_1_layer_call_and_return_conditional_losses_2895991472
re_lu_1/PartitionedCall?
IdentityIdentity re_lu_1/PartitionedCall:output:0.^batch_normalization_7/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_7_layer_call_and_return_conditional_losses_289599248
conv2d_transpose_1_input8
conv2d_transpose_1_289599234:??.
batch_normalization_7_289599237:	?.
batch_normalization_7_289599239:	?.
batch_normalization_7_289599241:	?.
batch_normalization_7_289599243:	?
identity??-batch_normalization_7/StatefulPartitionedCall?*conv2d_transpose_1/StatefulPartitionedCall?
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_1_inputconv2d_transpose_1_289599234*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_2895989892,
*conv2d_transpose_1/StatefulPartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_7_289599237batch_normalization_7_289599239batch_normalization_7_289599241batch_normalization_7_289599243*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2895990192/
-batch_normalization_7/StatefulPartitionedCall?
re_lu_1/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_1_layer_call_and_return_conditional_losses_2895991472
re_lu_1/PartitionedCall?
IdentityIdentity re_lu_1/PartitionedCall:output:0.^batch_normalization_7/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall:j f
0
_output_shapes
:??????????
2
_user_specified_nameconv2d_transpose_1_input
?
M
1__inference_leaky_re_lu_1_layer_call_fn_289602898

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_2895974042
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
0__inference_sequential_3_layer_call_fn_289602076

inputs!
unknown: @
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_3_layer_call_and_return_conditional_losses_2895978582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????   : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_289603580

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_289602984

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
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_289603226

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_4_layer_call_and_return_conditional_losses_289598099

inputs-
conv2d_3_289598061:@?.
batch_normalization_4_289598082:	?.
batch_normalization_4_289598084:	?.
batch_normalization_4_289598086:	?.
batch_normalization_4_289598088:	?
identity??-batch_normalization_4/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3_289598061*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_3_layer_call_and_return_conditional_losses_2895980602"
 conv2d_3/StatefulPartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_4_289598082batch_normalization_4_289598084batch_normalization_4_289598086batch_normalization_4_289598088*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2895980812/
-batch_normalization_4/StatefulPartitionedCall?
leaky_re_lu_3/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_2895980962
leaky_re_lu_3/PartitionedCall?
IdentityIdentity&leaky_re_lu_3/PartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@: : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
G__inference_conv2d_3_layer_call_and_return_conditional_losses_289603053

inputs9
conv2d_readvariableop_resource:@?
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
0__inference_sequential_7_layer_call_fn_289602383

inputs#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_7_layer_call_and_return_conditional_losses_2895991502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_7_layer_call_fn_289603552

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2895990632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_289597805

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
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?a
?
"__inference__traced_save_289603942
file_prefix8
4savev2_conv2d_transpose_6_kernel_read_readvariableop6
2savev2_conv2d_transpose_6_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop:
6savev2_batch_normalization_4_gamma_read_readvariableop9
5savev2_batch_normalization_4_beta_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop:
6savev2_batch_normalization_5_gamma_read_readvariableop9
5savev2_batch_normalization_5_beta_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop:
6savev2_batch_normalization_6_gamma_read_readvariableop9
5savev2_batch_normalization_6_beta_read_readvariableop8
4savev2_conv2d_transpose_1_kernel_read_readvariableop:
6savev2_batch_normalization_7_gamma_read_readvariableop9
5savev2_batch_normalization_7_beta_read_readvariableop8
4savev2_conv2d_transpose_2_kernel_read_readvariableop:
6savev2_batch_normalization_8_gamma_read_readvariableop9
5savev2_batch_normalization_8_beta_read_readvariableop8
4savev2_conv2d_transpose_3_kernel_read_readvariableop:
6savev2_batch_normalization_9_gamma_read_readvariableop9
5savev2_batch_normalization_9_beta_read_readvariableop8
4savev2_conv2d_transpose_4_kernel_read_readvariableop;
7savev2_batch_normalization_10_gamma_read_readvariableop:
6savev2_batch_normalization_10_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableop@
<savev2_batch_normalization_4_moving_mean_read_readvariableopD
@savev2_batch_normalization_4_moving_variance_read_readvariableop@
<savev2_batch_normalization_5_moving_mean_read_readvariableopD
@savev2_batch_normalization_5_moving_variance_read_readvariableop@
<savev2_batch_normalization_6_moving_mean_read_readvariableopD
@savev2_batch_normalization_6_moving_variance_read_readvariableop@
<savev2_batch_normalization_7_moving_mean_read_readvariableopD
@savev2_batch_normalization_7_moving_variance_read_readvariableop@
<savev2_batch_normalization_8_moving_mean_read_readvariableopD
@savev2_batch_normalization_8_moving_variance_read_readvariableop@
<savev2_batch_normalization_9_moving_mean_read_readvariableopD
@savev2_batch_normalization_9_moving_variance_read_readvariableopA
=savev2_batch_normalization_10_moving_mean_read_readvariableopE
Asavev2_batch_normalization_10_moving_variance_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*?
value?B?0B6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:04savev2_conv2d_transpose_6_kernel_read_readvariableop2savev2_conv2d_transpose_6_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop6savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop6savev2_batch_normalization_4_gamma_read_readvariableop5savev2_batch_normalization_4_beta_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop6savev2_batch_normalization_5_gamma_read_readvariableop5savev2_batch_normalization_5_beta_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop6savev2_batch_normalization_6_gamma_read_readvariableop5savev2_batch_normalization_6_beta_read_readvariableop4savev2_conv2d_transpose_1_kernel_read_readvariableop6savev2_batch_normalization_7_gamma_read_readvariableop5savev2_batch_normalization_7_beta_read_readvariableop4savev2_conv2d_transpose_2_kernel_read_readvariableop6savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop4savev2_conv2d_transpose_3_kernel_read_readvariableop6savev2_batch_normalization_9_gamma_read_readvariableop5savev2_batch_normalization_9_beta_read_readvariableop4savev2_conv2d_transpose_4_kernel_read_readvariableop7savev2_batch_normalization_10_gamma_read_readvariableop6savev2_batch_normalization_10_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop<savev2_batch_normalization_4_moving_mean_read_readvariableop@savev2_batch_normalization_4_moving_variance_read_readvariableop<savev2_batch_normalization_5_moving_mean_read_readvariableop@savev2_batch_normalization_5_moving_variance_read_readvariableop<savev2_batch_normalization_6_moving_mean_read_readvariableop@savev2_batch_normalization_6_moving_variance_read_readvariableop<savev2_batch_normalization_7_moving_mean_read_readvariableop@savev2_batch_normalization_7_moving_variance_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableop<savev2_batch_normalization_9_moving_mean_read_readvariableop@savev2_batch_normalization_9_moving_variance_read_readvariableop=savev2_batch_normalization_10_moving_mean_read_readvariableopAsavev2_batch_normalization_10_moving_variance_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *>
dtypes4
2202
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :`:: : : : @:@:@:@?:?:?:??:?:?:??:?:?:??:?:?:??:?:?:??:?:?:@?:@:@: : :@:@:?:?:?:?:?:?:?:?:?:?:?:?:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:`: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@:-	)
'
_output_shapes
:@?:!


_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:-)
'
_output_shapes
:@?: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
: : 

_output_shapes
: :  

_output_shapes
:@: !

_output_shapes
:@:!"

_output_shapes	
:?:!#

_output_shapes	
:?:!$

_output_shapes	
:?:!%

_output_shapes	
:?:!&

_output_shapes	
:?:!'

_output_shapes	
:?:!(

_output_shapes	
:?:!)

_output_shapes	
:?:!*

_output_shapes	
:?:!+

_output_shapes	
:?:!,

_output_shapes	
:?:!-

_output_shapes	
:?: .

_output_shapes
:@: /

_output_shapes
:@:0

_output_shapes
: 
?
]
1__inference_concatenate_3_layer_call_fn_289602750
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  `* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_concatenate_3_layer_call_and_return_conditional_losses_2896003712
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????  `2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+???????????????????????????@:?????????   :k g
A
_output_shapes/
-:+???????????????????????????@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????   
"
_user_specified_name
inputs/1
? 
?
Q__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_289599910

inputsC
(conv2d_transpose_readvariableop_resource:@?
identity??conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
conv2d_transpose?
IdentityIdentityconv2d_transpose:output:0 ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_289597986

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
L__inference_sequential_10_layer_call_and_return_conditional_losses_289600124

inputs7
conv2d_transpose_4_289600110:@?.
 batch_normalization_10_289600113:@.
 batch_normalization_10_289600115:@.
 batch_normalization_10_289600117:@.
 batch_normalization_10_289600119:@
identity??.batch_normalization_10/StatefulPartitionedCall?*conv2d_transpose_4/StatefulPartitionedCall?
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_4_289600110*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_2895999102,
*conv2d_transpose_4/StatefulPartitionedCall?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0 batch_normalization_10_289600113 batch_normalization_10_289600115 batch_normalization_10_289600117 batch_normalization_10_289600119*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_28959998420
.batch_normalization_10/StatefulPartitionedCall?
re_lu_4/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_4_layer_call_and_return_conditional_losses_2896000682
re_lu_4/PartitionedCall?
IdentityIdentity re_lu_4/PartitionedCall:output:0/^batch_normalization_10/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_4_layer_call_and_return_conditional_losses_289598266
conv2d_3_input-
conv2d_3_289598252:@?.
batch_normalization_4_289598255:	?.
batch_normalization_4_289598257:	?.
batch_normalization_4_289598259:	?.
batch_normalization_4_289598261:	?
identity??-batch_normalization_4/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputconv2d_3_289598252*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_3_layer_call_and_return_conditional_losses_2895980602"
 conv2d_3/StatefulPartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_4_289598255batch_normalization_4_289598257batch_normalization_4_289598259batch_normalization_4_289598261*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2895981512/
-batch_normalization_4/StatefulPartitionedCall?
leaky_re_lu_3/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_2895980962
leaky_re_lu_3/PartitionedCall?
IdentityIdentity&leaky_re_lu_3/PartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@: : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall:_ [
/
_output_shapes
:?????????@
(
_user_specified_nameconv2d_3_input
?
?
9__inference_batch_normalization_4_layer_call_fn_289603171

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2895980812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_289603742

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
exponential_avg_factor%
?#<2
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
9__inference_batch_normalization_9_layer_call_fn_289603683

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2895996332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_3_layer_call_fn_289603036

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
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2895978052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
0__inference_sequential_5_layer_call_fn_289602209

inputs#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_5_layer_call_and_return_conditional_losses_2895984452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
? 
?
Q__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_289599296

inputsD
(conv2d_transpose_readvariableop_resource:??
identity??conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
conv2d_transpose?
IdentityIdentityconv2d_transpose:output:0 ^conv2d_transpose/ReadVariableOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_289599633

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_289599370

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_5_layer_call_and_return_conditional_losses_289602172

inputsC
'conv2d_4_conv2d_readvariableop_resource:??<
-batch_normalization_5_readvariableop_resource:	?>
/batch_normalization_5_readvariableop_1_resource:	?M
>batch_normalization_5_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource:	?
identity??5batch_normalization_5/FusedBatchNormV3/ReadVariableOp?7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_5/ReadVariableOp?&batch_normalization_5/ReadVariableOp_1?conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_4/Conv2D/ReadVariableOp?
conv2d_4/Conv2DConv2Dinputs&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_4/Conv2D?
$batch_normalization_5/ReadVariableOpReadVariableOp-batch_normalization_5_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_5/ReadVariableOp?
&batch_normalization_5/ReadVariableOp_1ReadVariableOp/batch_normalization_5_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_5/ReadVariableOp_1?
5batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_5_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_5_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_5/FusedBatchNormV3FusedBatchNormV3conv2d_4/Conv2D:output:0,batch_normalization_5/ReadVariableOp:value:0.batch_normalization_5/ReadVariableOp_1:value:0=batch_normalization_5/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_5/FusedBatchNormV3?
leaky_re_lu_4/LeakyRelu	LeakyRelu*batch_normalization_5/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_4/LeakyRelu?
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:06^batch_normalization_5/FusedBatchNormV3/ReadVariableOp8^batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_5/ReadVariableOp'^batch_normalization_5/ReadVariableOp_1^conv2d_4/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2n
5batch_normalization_5/FusedBatchNormV3/ReadVariableOp5batch_normalization_5/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_17batch_normalization_5/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_5/ReadVariableOp$batch_normalization_5/ReadVariableOp2P
&batch_normalization_5/ReadVariableOp_1&batch_normalization_5/ReadVariableOp_12@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_1_layer_call_and_return_conditional_losses_289602757

inputs8
conv2d_readvariableop_resource: 
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????   *
paddingSAME*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_4_layer_call_fn_289603184

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2895981512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
6__inference_conv2d_transpose_4_layer_call_fn_289599918

inputs"
unknown:@?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_2895999102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?8
?
K__inference_sequential_7_layer_call_and_return_conditional_losses_289602368

inputsW
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??<
-batch_normalization_7_readvariableop_resource:	?>
/batch_normalization_7_readvariableop_1_resource:	?M
>batch_normalization_7_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:	?
identity??$batch_normalization_7/AssignNewValue?&batch_normalization_7/AssignNewValue_1?5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_7/ReadVariableOp?&batch_normalization_7/ReadVariableOp_1?2conv2d_transpose_1/conv2d_transpose/ReadVariableOpj
conv2d_transpose_1/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_transpose_1/Shape?
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_1/strided_slice/stack?
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_1?
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_2?
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_1/strided_slicez
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_1/stack/1z
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_1/stack/2{
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_1/stack/3?
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_1/stack?
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_1/strided_slice_1/stack?
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_1?
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_2?
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_1/strided_slice_1?
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype024
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#conv2d_transpose_1/conv2d_transpose?
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_7/ReadVariableOp?
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_7/ReadVariableOp_1?
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3,conv2d_transpose_1/conv2d_transpose:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_7/FusedBatchNormV3?
$batch_normalization_7/AssignNewValueAssignVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource3batch_normalization_7/FusedBatchNormV3:batch_mean:06^batch_normalization_7/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_7/AssignNewValue?
&batch_normalization_7/AssignNewValue_1AssignVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_7/FusedBatchNormV3:batch_variance:08^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_7/AssignNewValue_1?
re_lu_1/ReluRelu*batch_normalization_7/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
re_lu_1/Relu?
IdentityIdentityre_lu_1/Relu:activations:0%^batch_normalization_7/AssignNewValue'^batch_normalization_7/AssignNewValue_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_13^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2L
$batch_normalization_7/AssignNewValue$batch_normalization_7/AssignNewValue2P
&batch_normalization_7/AssignNewValue_1&batch_normalization_7/AssignNewValue_12n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_2_layer_call_fn_289602849

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_2895972502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
0__inference_sequential_4_layer_call_fn_289598232
conv2d_3_input"
unknown:@?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_4_layer_call_and_return_conditional_losses_2895982042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:?????????@
(
_user_specified_nameconv2d_3_input
?
b
F__inference_re_lu_2_layer_call_and_return_conditional_losses_289603629

inputs
identityi
ReluReluinputs*
T0*B
_output_shapes0
.:,????????????????????????????2
Relu?
IdentityIdentityRelu:activations:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_2_layer_call_fn_289602002

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_2_layer_call_and_return_conditional_losses_2895975122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@@: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
6__inference_conv2d_transpose_2_layer_call_fn_289599304

inputs#
unknown:??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_2895992962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,????????????????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_2_layer_call_fn_289602888

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_2895974592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
K__inference_sequential_3_layer_call_and_return_conditional_losses_289602024

inputsA
'conv2d_2_conv2d_readvariableop_resource: @;
-batch_normalization_3_readvariableop_resource:@=
/batch_normalization_3_readvariableop_1_resource:@L
>batch_normalization_3_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:@
identity??5batch_normalization_3/FusedBatchNormV3/ReadVariableOp?7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_3/ReadVariableOp?&batch_normalization_3/ReadVariableOp_1?conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2Dinputs&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_2/Conv2D?
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_3/ReadVariableOp?
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_3/ReadVariableOp_1?
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_2/Conv2D:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2(
&batch_normalization_3/FusedBatchNormV3?
leaky_re_lu_2/LeakyRelu	LeakyRelu*batch_normalization_3/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>2
leaky_re_lu_2/LeakyRelu?
IdentityIdentity%leaky_re_lu_2/LeakyRelu:activations:06^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????   : : : : : 2n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_289603244

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_leaky_re_lu_2_layer_call_fn_289603046

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_2895977502
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
0__inference_sequential_7_layer_call_fn_289599163
conv2d_transpose_1_input#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_7_layer_call_and_return_conditional_losses_2895991502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
0
_output_shapes
:??????????
2
_user_specified_nameconv2d_transpose_1_input
?
M
1__inference_leaky_re_lu_4_layer_call_fn_289603342

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_2895984422
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_8_layer_call_and_return_conditional_losses_289599555
conv2d_transpose_2_input8
conv2d_transpose_2_289599541:??.
batch_normalization_8_289599544:	?.
batch_normalization_8_289599546:	?.
batch_normalization_8_289599548:	?.
batch_normalization_8_289599550:	?
identity??-batch_normalization_8/StatefulPartitionedCall?*conv2d_transpose_2/StatefulPartitionedCall?
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_2_inputconv2d_transpose_2_289599541*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_2895992962,
*conv2d_transpose_2/StatefulPartitionedCall?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_8_289599544batch_normalization_8_289599546batch_normalization_8_289599548batch_normalization_8_289599550*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2895993262/
-batch_normalization_8/StatefulPartitionedCall?
re_lu_2/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_2_layer_call_and_return_conditional_losses_2895994542
re_lu_2/PartitionedCall?
IdentityIdentity re_lu_2/PartitionedCall:output:0.^batch_normalization_8/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall:j f
0
_output_shapes
:??????????
2
_user_specified_nameconv2d_transpose_2_input
?
?
,__inference_conv2d_5_layer_call_fn_289603356

inputs#
unknown:??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_5_layer_call_and_return_conditional_losses_2895987522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?Z
?
D__inference_model_layer_call_and_return_conditional_losses_289601025
input_10
sequential_2_289600916: $
sequential_2_289600918: $
sequential_2_289600920: $
sequential_2_289600922: $
sequential_2_289600924: 0
sequential_3_289600927: @$
sequential_3_289600929:@$
sequential_3_289600931:@$
sequential_3_289600933:@$
sequential_3_289600935:@1
sequential_4_289600938:@?%
sequential_4_289600940:	?%
sequential_4_289600942:	?%
sequential_4_289600944:	?%
sequential_4_289600946:	?2
sequential_5_289600949:??%
sequential_5_289600951:	?%
sequential_5_289600953:	?%
sequential_5_289600955:	?%
sequential_5_289600957:	?2
sequential_6_289600960:??%
sequential_6_289600962:	?%
sequential_6_289600964:	?%
sequential_6_289600966:	?%
sequential_6_289600968:	?2
sequential_7_289600971:??%
sequential_7_289600973:	?%
sequential_7_289600975:	?%
sequential_7_289600977:	?%
sequential_7_289600979:	?2
sequential_8_289600983:??%
sequential_8_289600985:	?%
sequential_8_289600987:	?%
sequential_8_289600989:	?%
sequential_8_289600991:	?2
sequential_9_289600995:??%
sequential_9_289600997:	?%
sequential_9_289600999:	?%
sequential_9_289601001:	?%
sequential_9_289601003:	?2
sequential_10_289601007:@?%
sequential_10_289601009:@%
sequential_10_289601011:@%
sequential_10_289601013:@%
sequential_10_289601015:@6
conv2d_transpose_6_289601019:`*
conv2d_transpose_6_289601021:
identity??*conv2d_transpose_6/StatefulPartitionedCall?%sequential_10/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?$sequential_3/StatefulPartitionedCall?$sequential_4/StatefulPartitionedCall?$sequential_5/StatefulPartitionedCall?$sequential_6/StatefulPartitionedCall?$sequential_7/StatefulPartitionedCall?$sequential_8/StatefulPartitionedCall?$sequential_9/StatefulPartitionedCall?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_2_289600916sequential_2_289600918sequential_2_289600920sequential_2_289600922sequential_2_289600924*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_2_layer_call_and_return_conditional_losses_2895974072&
$sequential_2/StatefulPartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0sequential_3_289600927sequential_3_289600929sequential_3_289600931sequential_3_289600933sequential_3_289600935*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_3_layer_call_and_return_conditional_losses_2895977532&
$sequential_3/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0sequential_4_289600938sequential_4_289600940sequential_4_289600942sequential_4_289600944sequential_4_289600946*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_4_layer_call_and_return_conditional_losses_2895980992&
$sequential_4/StatefulPartitionedCall?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0sequential_5_289600949sequential_5_289600951sequential_5_289600953sequential_5_289600955sequential_5_289600957*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_5_layer_call_and_return_conditional_losses_2895984452&
$sequential_5/StatefulPartitionedCall?
$sequential_6/StatefulPartitionedCallStatefulPartitionedCall-sequential_5/StatefulPartitionedCall:output:0sequential_6_289600960sequential_6_289600962sequential_6_289600964sequential_6_289600966sequential_6_289600968*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_6_layer_call_and_return_conditional_losses_2895987912&
$sequential_6/StatefulPartitionedCall?
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall-sequential_6/StatefulPartitionedCall:output:0sequential_7_289600971sequential_7_289600973sequential_7_289600975sequential_7_289600977sequential_7_289600979*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_7_layer_call_and_return_conditional_losses_2895991502&
$sequential_7/StatefulPartitionedCall?
concatenate/PartitionedCallPartitionedCall-sequential_7/StatefulPartitionedCall:output:0-sequential_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenate_layer_call_and_return_conditional_losses_2896003112
concatenate/PartitionedCall?
$sequential_8/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0sequential_8_289600983sequential_8_289600985sequential_8_289600987sequential_8_289600989sequential_8_289600991*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_8_layer_call_and_return_conditional_losses_2895994572&
$sequential_8/StatefulPartitionedCall?
concatenate_1/PartitionedCallPartitionedCall-sequential_8/StatefulPartitionedCall:output:0-sequential_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_concatenate_1_layer_call_and_return_conditional_losses_2896003312
concatenate_1/PartitionedCall?
$sequential_9/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0sequential_9_289600995sequential_9_289600997sequential_9_289600999sequential_9_289601001sequential_9_289601003*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_9_layer_call_and_return_conditional_losses_2895997642&
$sequential_9/StatefulPartitionedCall?
concatenate_2/PartitionedCallPartitionedCall-sequential_9/StatefulPartitionedCall:output:0-sequential_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_concatenate_2_layer_call_and_return_conditional_losses_2896003512
concatenate_2/PartitionedCall?
%sequential_10/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0sequential_10_289601007sequential_10_289601009sequential_10_289601011sequential_10_289601013sequential_10_289601015*
Tin

2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_sequential_10_layer_call_and_return_conditional_losses_2896000712'
%sequential_10/StatefulPartitionedCall?
concatenate_3/PartitionedCallPartitionedCall.sequential_10/StatefulPartitionedCall:output:0-sequential_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  `* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_concatenate_3_layer_call_and_return_conditional_losses_2896003712
concatenate_3/PartitionedCall?
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0conv2d_transpose_6_289601019conv2d_transpose_6_289601021*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_2896002212,
*conv2d_transpose_6/StatefulPartitionedCall?
IdentityIdentity3conv2d_transpose_6/StatefulPartitionedCall:output:0+^conv2d_transpose_6/StatefulPartitionedCall&^sequential_10/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall%^sequential_3/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall%^sequential_5/StatefulPartitionedCall%^sequential_6/StatefulPartitionedCall%^sequential_7/StatefulPartitionedCall%^sequential_8/StatefulPartitionedCall%^sequential_9/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:?????????@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall2L
$sequential_3/StatefulPartitionedCall$sequential_3/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall2L
$sequential_6/StatefulPartitionedCall$sequential_6/StatefulPartitionedCall2L
$sequential_7/StatefulPartitionedCall$sequential_7/StatefulPartitionedCall2L
$sequential_8/StatefulPartitionedCall$sequential_8/StatefulPartitionedCall2L
$sequential_9/StatefulPartitionedCall$sequential_9/StatefulPartitionedCall:X T
/
_output_shapes
:?????????@@
!
_user_specified_name	input_1
?
t
J__inference_concatenate_layer_call_and_return_conditional_losses_289600311

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,????????????????????????????:??????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs:XT
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_re_lu_2_layer_call_and_return_conditional_losses_289599454

inputs
identityi
ReluReluinputs*
T0*B
_output_shapes0
.:,????????????????????????????2
Relu?
IdentityIdentityRelu:activations:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
0__inference_sequential_8_layer_call_fn_289599470
conv2d_transpose_2_input#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_8_layer_call_and_return_conditional_losses_2895994572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
0
_output_shapes
:??????????
2
_user_specified_nameconv2d_transpose_2_input
?
?
,__inference_conv2d_1_layer_call_fn_289602764

inputs!
unknown: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_1_layer_call_and_return_conditional_losses_2895973682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????@@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
G__inference_conv2d_5_layer_call_and_return_conditional_losses_289603349

inputs:
conv2d_readvariableop_resource:??
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_289603508

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_289598773

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_re_lu_4_layer_call_and_return_conditional_losses_289603773

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu?
IdentityIdentityRelu:activations:0*
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
?
?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_289598678

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_8_layer_call_and_return_conditional_losses_289599457

inputs8
conv2d_transpose_2_289599437:??.
batch_normalization_8_289599440:	?.
batch_normalization_8_289599442:	?.
batch_normalization_8_289599444:	?.
batch_normalization_8_289599446:	?
identity??-batch_normalization_8/StatefulPartitionedCall?*conv2d_transpose_2/StatefulPartitionedCall?
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_2_289599437*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_2895992962,
*conv2d_transpose_2/StatefulPartitionedCall?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_8_289599440batch_normalization_8_289599442batch_normalization_8_289599444batch_normalization_8_289599446*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2895993262/
-batch_normalization_8/StatefulPartitionedCall?
re_lu_2/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_2_layer_call_and_return_conditional_losses_2895994542
re_lu_2/PartitionedCall?
IdentityIdentity re_lu_2/PartitionedCall:output:0.^batch_normalization_8/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_2_layer_call_fn_289597420
conv2d_1_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_2_layer_call_and_return_conditional_losses_2895974072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@@: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:?????????@@
(
_user_specified_nameconv2d_1_input
?
?
0__inference_sequential_5_layer_call_fn_289598458
conv2d_4_input#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_5_layer_call_and_return_conditional_losses_2895984452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
0
_output_shapes
:??????????
(
_user_specified_nameconv2d_4_input
?
?
K__inference_sequential_2_layer_call_and_return_conditional_losses_289597407

inputs,
conv2d_1_289597369: -
batch_normalization_2_289597390: -
batch_normalization_2_289597392: -
batch_normalization_2_289597394: -
batch_normalization_2_289597396: 
identity??-batch_normalization_2/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1_289597369*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_1_layer_call_and_return_conditional_losses_2895973682"
 conv2d_1/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_2_289597390batch_normalization_2_289597392batch_normalization_2_289597394batch_normalization_2_289597396*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_2895973892/
-batch_normalization_2/StatefulPartitionedCall?
leaky_re_lu_1/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_2895974042
leaky_re_lu_1/PartitionedCall?
IdentityIdentity&leaky_re_lu_1/PartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@@: : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
h
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_289602893

inputs
identityl
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:?????????   *
alpha%???>2
	LeakyRelus
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????   :W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
0__inference_sequential_3_layer_call_fn_289597766
conv2d_2_input!
unknown: @
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_3_layer_call_and_return_conditional_losses_2895977532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????   : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:?????????   
(
_user_specified_nameconv2d_2_input
?
h
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_289597750

inputs
identityl
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:?????????@*
alpha%???>2
	LeakyRelus
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_model_layer_call_fn_289601829

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: #
	unknown_4: @
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@$
	unknown_9:@?

unknown_10:	?

unknown_11:	?

unknown_12:	?

unknown_13:	?&

unknown_14:??

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?&

unknown_19:??

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?&

unknown_24:??

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?&

unknown_34:??

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:	?%

unknown_39:@?

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@$

unknown_44:`

unknown_45:
identity??StatefulPartitionedCall?
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
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45*;
Tin4
220*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*Q
_read_only_resource_inputs3
1/	
 !"#$%&'()*+,-./*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_layer_call_and_return_conditional_losses_2896003792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:?????????@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
,__inference_conv2d_4_layer_call_fn_289603208

inputs#
unknown:??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_4_layer_call_and_return_conditional_losses_2895984062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_re_lu_3_layer_call_and_return_conditional_losses_289599761

inputs
identityi
ReluReluinputs*
T0*B
_output_shapes0
.:,????????????????????????????2
Relu?
IdentityIdentityRelu:activations:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_9_layer_call_fn_289602624

inputs#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_9_layer_call_and_return_conditional_losses_2895998172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_6_layer_call_fn_289598924
conv2d_5_input#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_6_layer_call_and_return_conditional_losses_2895988962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
0
_output_shapes
:??????????
(
_user_specified_nameconv2d_5_input
?
x
L__inference_concatenate_2_layer_call_and_return_conditional_losses_289602631
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:,????????????????????????????:?????????@:l h
B
_output_shapes0
.:,????????????????????????????
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????@
"
_user_specified_name
inputs/1
?
h
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_289603041

inputs
identityl
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:?????????@*
alpha%???>2
	LeakyRelus
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
G
+__inference_re_lu_4_layer_call_fn_289603778

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
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_4_layer_call_and_return_conditional_losses_2896000682
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
?
?
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_289603652

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_2_layer_call_and_return_conditional_losses_289597574
conv2d_1_input,
conv2d_1_289597560: -
batch_normalization_2_289597563: -
batch_normalization_2_289597565: -
batch_normalization_2_289597567: -
batch_normalization_2_289597569: 
identity??-batch_normalization_2/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallconv2d_1_inputconv2d_1_289597560*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_1_layer_call_and_return_conditional_losses_2895973682"
 conv2d_1/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_2_289597563batch_normalization_2_289597565batch_normalization_2_289597567batch_normalization_2_289597569*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_2895974592/
-batch_normalization_2/StatefulPartitionedCall?
leaky_re_lu_1/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_2895974042
leaky_re_lu_1/PartitionedCall?
IdentityIdentity&leaky_re_lu_1/PartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@@: : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall:_ [
/
_output_shapes
:?????????@@
(
_user_specified_nameconv2d_1_input
?8
?
K__inference_sequential_9_layer_call_and_return_conditional_losses_289602594

inputsW
;conv2d_transpose_3_conv2d_transpose_readvariableop_resource:??<
-batch_normalization_9_readvariableop_resource:	?>
/batch_normalization_9_readvariableop_1_resource:	?M
>batch_normalization_9_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource:	?
identity??$batch_normalization_9/AssignNewValue?&batch_normalization_9/AssignNewValue_1?5batch_normalization_9/FusedBatchNormV3/ReadVariableOp?7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_9/ReadVariableOp?&batch_normalization_9/ReadVariableOp_1?2conv2d_transpose_3/conv2d_transpose/ReadVariableOpj
conv2d_transpose_3/ShapeShapeinputs*
T0*
_output_shapes
:2
conv2d_transpose_3/Shape?
&conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_3/strided_slice/stack?
(conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_3/strided_slice/stack_1?
(conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_3/strided_slice/stack_2?
 conv2d_transpose_3/strided_sliceStridedSlice!conv2d_transpose_3/Shape:output:0/conv2d_transpose_3/strided_slice/stack:output:01conv2d_transpose_3/strided_slice/stack_1:output:01conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_3/strided_slicez
conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_3/stack/1z
conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_3/stack/2{
conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_3/stack/3?
conv2d_transpose_3/stackPack)conv2d_transpose_3/strided_slice:output:0#conv2d_transpose_3/stack/1:output:0#conv2d_transpose_3/stack/2:output:0#conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_3/stack?
(conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_3/strided_slice_1/stack?
*conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_3/strided_slice_1/stack_1?
*conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_3/strided_slice_1/stack_2?
"conv2d_transpose_3/strided_slice_1StridedSlice!conv2d_transpose_3/stack:output:01conv2d_transpose_3/strided_slice_1/stack:output:03conv2d_transpose_3/strided_slice_1/stack_1:output:03conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_3/strided_slice_1?
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_3_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype024
2conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_3/conv2d_transposeConv2DBackpropInput!conv2d_transpose_3/stack:output:0:conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2%
#conv2d_transpose_3/conv2d_transpose?
$batch_normalization_9/ReadVariableOpReadVariableOp-batch_normalization_9_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_9/ReadVariableOp?
&batch_normalization_9/ReadVariableOp_1ReadVariableOp/batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_9/ReadVariableOp_1?
5batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_9/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_9/FusedBatchNormV3FusedBatchNormV3,conv2d_transpose_3/conv2d_transpose:output:0,batch_normalization_9/ReadVariableOp:value:0.batch_normalization_9/ReadVariableOp_1:value:0=batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_9/FusedBatchNormV3?
$batch_normalization_9/AssignNewValueAssignVariableOp>batch_normalization_9_fusedbatchnormv3_readvariableop_resource3batch_normalization_9/FusedBatchNormV3:batch_mean:06^batch_normalization_9/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_9/AssignNewValue?
&batch_normalization_9/AssignNewValue_1AssignVariableOp@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_9/FusedBatchNormV3:batch_variance:08^batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_9/AssignNewValue_1?
re_lu_3/ReluRelu*batch_normalization_9/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????2
re_lu_3/Relu?
IdentityIdentityre_lu_3/Relu:activations:0%^batch_normalization_9/AssignNewValue'^batch_normalization_9/AssignNewValue_16^batch_normalization_9/FusedBatchNormV3/ReadVariableOp8^batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_9/ReadVariableOp'^batch_normalization_9/ReadVariableOp_13^conv2d_transpose_3/conv2d_transpose/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2L
$batch_normalization_9/AssignNewValue$batch_normalization_9/AssignNewValue2P
&batch_normalization_9/AssignNewValue_1&batch_normalization_9/AssignNewValue_12n
5batch_normalization_9/FusedBatchNormV3/ReadVariableOp5batch_normalization_9/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_17batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_9/ReadVariableOp$batch_normalization_9/ReadVariableOp2P
&batch_normalization_9/ReadVariableOp_1&batch_normalization_9/ReadVariableOp_12h
2conv2d_transpose_3/conv2d_transpose/ReadVariableOp2conv2d_transpose_3/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?!
%__inference__traced_restore_289604093
file_prefixD
*assignvariableop_conv2d_transpose_6_kernel:`8
*assignvariableop_1_conv2d_transpose_6_bias:<
"assignvariableop_2_conv2d_1_kernel: <
.assignvariableop_3_batch_normalization_2_gamma: ;
-assignvariableop_4_batch_normalization_2_beta: <
"assignvariableop_5_conv2d_2_kernel: @<
.assignvariableop_6_batch_normalization_3_gamma:@;
-assignvariableop_7_batch_normalization_3_beta:@=
"assignvariableop_8_conv2d_3_kernel:@?=
.assignvariableop_9_batch_normalization_4_gamma:	?=
.assignvariableop_10_batch_normalization_4_beta:	??
#assignvariableop_11_conv2d_4_kernel:??>
/assignvariableop_12_batch_normalization_5_gamma:	?=
.assignvariableop_13_batch_normalization_5_beta:	??
#assignvariableop_14_conv2d_5_kernel:??>
/assignvariableop_15_batch_normalization_6_gamma:	?=
.assignvariableop_16_batch_normalization_6_beta:	?I
-assignvariableop_17_conv2d_transpose_1_kernel:??>
/assignvariableop_18_batch_normalization_7_gamma:	?=
.assignvariableop_19_batch_normalization_7_beta:	?I
-assignvariableop_20_conv2d_transpose_2_kernel:??>
/assignvariableop_21_batch_normalization_8_gamma:	?=
.assignvariableop_22_batch_normalization_8_beta:	?I
-assignvariableop_23_conv2d_transpose_3_kernel:??>
/assignvariableop_24_batch_normalization_9_gamma:	?=
.assignvariableop_25_batch_normalization_9_beta:	?H
-assignvariableop_26_conv2d_transpose_4_kernel:@?>
0assignvariableop_27_batch_normalization_10_gamma:@=
/assignvariableop_28_batch_normalization_10_beta:@C
5assignvariableop_29_batch_normalization_2_moving_mean: G
9assignvariableop_30_batch_normalization_2_moving_variance: C
5assignvariableop_31_batch_normalization_3_moving_mean:@G
9assignvariableop_32_batch_normalization_3_moving_variance:@D
5assignvariableop_33_batch_normalization_4_moving_mean:	?H
9assignvariableop_34_batch_normalization_4_moving_variance:	?D
5assignvariableop_35_batch_normalization_5_moving_mean:	?H
9assignvariableop_36_batch_normalization_5_moving_variance:	?D
5assignvariableop_37_batch_normalization_6_moving_mean:	?H
9assignvariableop_38_batch_normalization_6_moving_variance:	?D
5assignvariableop_39_batch_normalization_7_moving_mean:	?H
9assignvariableop_40_batch_normalization_7_moving_variance:	?D
5assignvariableop_41_batch_normalization_8_moving_mean:	?H
9assignvariableop_42_batch_normalization_8_moving_variance:	?D
5assignvariableop_43_batch_normalization_9_moving_mean:	?H
9assignvariableop_44_batch_normalization_9_moving_variance:	?D
6assignvariableop_45_batch_normalization_10_moving_mean:@H
:assignvariableop_46_batch_normalization_10_moving_variance:@
identity_48??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*?
value?B?0B6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::*>
dtypes4
2202
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp*assignvariableop_conv2d_transpose_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp*assignvariableop_1_conv2d_transpose_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_2_gammaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp-assignvariableop_4_batch_normalization_2_betaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_2_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp.assignvariableop_6_batch_normalization_3_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp-assignvariableop_7_batch_normalization_3_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_4_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp.assignvariableop_10_batch_normalization_4_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv2d_4_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_batch_normalization_5_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp.assignvariableop_13_batch_normalization_5_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_conv2d_5_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_6_gammaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp.assignvariableop_16_batch_normalization_6_betaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp-assignvariableop_17_conv2d_transpose_1_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp/assignvariableop_18_batch_normalization_7_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp.assignvariableop_19_batch_normalization_7_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp-assignvariableop_20_conv2d_transpose_2_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_8_gammaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp.assignvariableop_22_batch_normalization_8_betaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp-assignvariableop_23_conv2d_transpose_3_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp/assignvariableop_24_batch_normalization_9_gammaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp.assignvariableop_25_batch_normalization_9_betaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp-assignvariableop_26_conv2d_transpose_4_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_10_gammaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp/assignvariableop_28_batch_normalization_10_betaIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp5assignvariableop_29_batch_normalization_2_moving_meanIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp9assignvariableop_30_batch_normalization_2_moving_varianceIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp5assignvariableop_31_batch_normalization_3_moving_meanIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp9assignvariableop_32_batch_normalization_3_moving_varianceIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp5assignvariableop_33_batch_normalization_4_moving_meanIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp9assignvariableop_34_batch_normalization_4_moving_varianceIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp5assignvariableop_35_batch_normalization_5_moving_meanIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp9assignvariableop_36_batch_normalization_5_moving_varianceIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp5assignvariableop_37_batch_normalization_6_moving_meanIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp9assignvariableop_38_batch_normalization_6_moving_varianceIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp5assignvariableop_39_batch_normalization_7_moving_meanIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp9assignvariableop_40_batch_normalization_7_moving_varianceIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp5assignvariableop_41_batch_normalization_8_moving_meanIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp9assignvariableop_42_batch_normalization_8_moving_varianceIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp5assignvariableop_43_batch_normalization_9_moving_meanIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp9assignvariableop_44_batch_normalization_9_moving_varianceIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp6assignvariableop_45_batch_normalization_10_moving_meanIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp:assignvariableop_46_batch_normalization_10_moving_varianceIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_469
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_47Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_47?
Identity_48IdentityIdentity_47:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_48"#
identity_48Identity_48:output:0*s
_input_shapesb
`: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_46AssignVariableOp_462(
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
?
b
F__inference_re_lu_1_layer_call_and_return_conditional_losses_289599147

inputs
identityi
ReluReluinputs*
T0*B
_output_shapes0
.:,????????????????????????????2
Relu?
IdentityIdentityRelu:activations:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_4_layer_call_and_return_conditional_losses_289602098

inputsB
'conv2d_3_conv2d_readvariableop_resource:@?<
-batch_normalization_4_readvariableop_resource:	?>
/batch_normalization_4_readvariableop_1_resource:	?M
>batch_normalization_4_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource:	?
identity??5batch_normalization_4/FusedBatchNormV3/ReadVariableOp?7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_4/ReadVariableOp?&batch_normalization_4/ReadVariableOp_1?conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2DConv2Dinputs&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_3/Conv2D?
$batch_normalization_4/ReadVariableOpReadVariableOp-batch_normalization_4_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_4/ReadVariableOp?
&batch_normalization_4/ReadVariableOp_1ReadVariableOp/batch_normalization_4_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_4/ReadVariableOp_1?
5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3conv2d_3/Conv2D:output:0,batch_normalization_4/ReadVariableOp:value:0.batch_normalization_4/ReadVariableOp_1:value:0=batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_4/FusedBatchNormV3?
leaky_re_lu_3/LeakyRelu	LeakyRelu*batch_normalization_4/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_3/LeakyRelu?
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:06^batch_normalization_4/FusedBatchNormV3/ReadVariableOp8^batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_4/ReadVariableOp'^batch_normalization_4/ReadVariableOp_1^conv2d_3/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@: : : : : 2n
5batch_normalization_4/FusedBatchNormV3/ReadVariableOp5batch_normalization_4/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_17batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2P
&batch_normalization_4/ReadVariableOp_1&batch_normalization_4/ReadVariableOp_12@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
K__inference_sequential_3_layer_call_and_return_conditional_losses_289597903
conv2d_2_input,
conv2d_2_289597889: @-
batch_normalization_3_289597892:@-
batch_normalization_3_289597894:@-
batch_normalization_3_289597896:@-
batch_normalization_3_289597898:@
identity??-batch_normalization_3/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallconv2d_2_inputconv2d_2_289597889*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_2_layer_call_and_return_conditional_losses_2895977142"
 conv2d_2/StatefulPartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_3_289597892batch_normalization_3_289597894batch_normalization_3_289597896batch_normalization_3_289597898*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2895977352/
-batch_normalization_3/StatefulPartitionedCall?
leaky_re_lu_2/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_2895977502
leaky_re_lu_2/PartitionedCall?
IdentityIdentity&leaky_re_lu_2/PartitionedCall:output:0.^batch_normalization_3/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????   : : : : : 2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall:_ [
/
_output_shapes
:?????????   
(
_user_specified_nameconv2d_2_input
?
b
F__inference_re_lu_4_layer_call_and_return_conditional_losses_289600068

inputs
identityh
ReluReluinputs*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu?
IdentityIdentityRelu:activations:0*
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
?
?
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_289603724

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
0__inference_sequential_2_layer_call_fn_289601987

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_2_layer_call_and_return_conditional_losses_2895974072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@@: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_2_layer_call_fn_289602875

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_2895973892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_2_layer_call_fn_289602862

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_2895972942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
G
+__inference_re_lu_2_layer_call_fn_289603634

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_2_layer_call_and_return_conditional_losses_2895994542
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,????????????????????????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?#
?
K__inference_sequential_3_layer_call_and_return_conditional_losses_289602046

inputsA
'conv2d_2_conv2d_readvariableop_resource: @;
-batch_normalization_3_readvariableop_resource:@=
/batch_normalization_3_readvariableop_1_resource:@L
>batch_normalization_3_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:@
identity??$batch_normalization_3/AssignNewValue?&batch_normalization_3/AssignNewValue_1?5batch_normalization_3/FusedBatchNormV3/ReadVariableOp?7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_3/ReadVariableOp?&batch_normalization_3/ReadVariableOp_1?conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2Dinputs&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
conv2d_2/Conv2D?
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_3/ReadVariableOp?
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_3/ReadVariableOp_1?
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3conv2d_2/Conv2D:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_3/FusedBatchNormV3?
$batch_normalization_3/AssignNewValueAssignVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource3batch_normalization_3/FusedBatchNormV3:batch_mean:06^batch_normalization_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_3/AssignNewValue?
&batch_normalization_3/AssignNewValue_1AssignVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_3/FusedBatchNormV3:batch_variance:08^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_3/AssignNewValue_1?
leaky_re_lu_2/LeakyRelu	LeakyRelu*batch_normalization_3/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
alpha%???>2
leaky_re_lu_2/LeakyRelu?
IdentityIdentity%leaky_re_lu_2/LeakyRelu:activations:0%^batch_normalization_3/AssignNewValue'^batch_normalization_3/AssignNewValue_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1^conv2d_2/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????   : : : : : 2L
$batch_normalization_3/AssignNewValue$batch_normalization_3/AssignNewValue2P
&batch_normalization_3/AssignNewValue_1&batch_normalization_3/AssignNewValue_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?#
?
K__inference_sequential_6_layer_call_and_return_conditional_losses_289602268

inputsC
'conv2d_5_conv2d_readvariableop_resource:??<
-batch_normalization_6_readvariableop_resource:	?>
/batch_normalization_6_readvariableop_1_resource:	?M
>batch_normalization_6_fusedbatchnormv3_readvariableop_resource:	?O
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource:	?
identity??$batch_normalization_6/AssignNewValue?&batch_normalization_6/AssignNewValue_1?5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_6/ReadVariableOp?&batch_normalization_6/ReadVariableOp_1?conv2d_5/Conv2D/ReadVariableOp?
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_5/Conv2D/ReadVariableOp?
conv2d_5/Conv2DConv2Dinputs&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_5/Conv2D?
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_6/ReadVariableOp?
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_6/ReadVariableOp_1?
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3conv2d_5/Conv2D:output:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_6/FusedBatchNormV3?
$batch_normalization_6/AssignNewValueAssignVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource3batch_normalization_6/FusedBatchNormV3:batch_mean:06^batch_normalization_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_6/AssignNewValue?
&batch_normalization_6/AssignNewValue_1AssignVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_6/FusedBatchNormV3:batch_variance:08^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_6/AssignNewValue_1?
leaky_re_lu_5/LeakyRelu	LeakyRelu*batch_normalization_6/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_5/LeakyRelu?
IdentityIdentity%leaky_re_lu_5/LeakyRelu:activations:0%^batch_normalization_6/AssignNewValue'^batch_normalization_6/AssignNewValue_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1^conv2d_5/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2L
$batch_normalization_6/AssignNewValue$batch_normalization_6/AssignNewValue2P
&batch_normalization_6/AssignNewValue_1&batch_normalization_6/AssignNewValue_12n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_6_layer_call_fn_289598804
conv2d_5_input#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_6_layer_call_and_return_conditional_losses_2895987912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
0
_output_shapes
:??????????
(
_user_specified_nameconv2d_5_input
?
?
0__inference_sequential_8_layer_call_fn_289602496

inputs#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_8_layer_call_and_return_conditional_losses_2895994572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_4_layer_call_and_return_conditional_losses_289598204

inputs-
conv2d_3_289598190:@?.
batch_normalization_4_289598193:	?.
batch_normalization_4_289598195:	?.
batch_normalization_4_289598197:	?.
batch_normalization_4_289598199:	?
identity??-batch_normalization_4/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3_289598190*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_3_layer_call_and_return_conditional_losses_2895980602"
 conv2d_3/StatefulPartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_4_289598193batch_normalization_4_289598195batch_normalization_4_289598197batch_normalization_4_289598199*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2895981512/
-batch_normalization_4/StatefulPartitionedCall?
leaky_re_lu_3/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_2895980962
leaky_re_lu_3/PartitionedCall?
IdentityIdentity&leaky_re_lu_3/PartitionedCall:output:0.^batch_normalization_4/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@: : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_model_layer_call_fn_289600476
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: #
	unknown_4: @
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@$
	unknown_9:@?

unknown_10:	?

unknown_11:	?

unknown_12:	?

unknown_13:	?&

unknown_14:??

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?&

unknown_19:??

unknown_20:	?

unknown_21:	?

unknown_22:	?

unknown_23:	?&

unknown_24:??

unknown_25:	?

unknown_26:	?

unknown_27:	?

unknown_28:	?&

unknown_29:??

unknown_30:	?

unknown_31:	?

unknown_32:	?

unknown_33:	?&

unknown_34:??

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:	?%

unknown_39:@?

unknown_40:@

unknown_41:@

unknown_42:@

unknown_43:@$

unknown_44:`

unknown_45:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45*;
Tin4
220*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*Q
_read_only_resource_inputs3
1/	
 !"#$%&'()*+,-./*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_layer_call_and_return_conditional_losses_2896003792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes{
y:?????????@@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????@@
!
_user_specified_name	input_1
?%
?
Q__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_289600221

inputsB
(conv2d_transpose_readvariableop_resource:`-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:`*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????`
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_289603374

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_289603392

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_289603670

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
v
L__inference_concatenate_1_layer_call_and_return_conditional_losses_289600331

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,????????????????????????????:??????????:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs:XT
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_289597596

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
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_289598151

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_289599984

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
exponential_avg_factor%
?#<2
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
1__inference_sequential_10_layer_call_fn_289602737

inputs"
unknown:@?
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_sequential_10_layer_call_and_return_conditional_losses_2896001242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_6_layer_call_and_return_conditional_losses_289598958
conv2d_5_input.
conv2d_5_289598944:??.
batch_normalization_6_289598947:	?.
batch_normalization_6_289598949:	?.
batch_normalization_6_289598951:	?.
batch_normalization_6_289598953:	?
identity??-batch_normalization_6/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallconv2d_5_inputconv2d_5_289598944*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_5_layer_call_and_return_conditional_losses_2895987522"
 conv2d_5/StatefulPartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_6_289598947batch_normalization_6_289598949batch_normalization_6_289598951batch_normalization_6_289598953*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_2895988432/
-batch_normalization_6/StatefulPartitionedCall?
leaky_re_lu_5/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_2895987882
leaky_re_lu_5/PartitionedCall?
IdentityIdentity&leaky_re_lu_5/PartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall:` \
0
_output_shapes
:??????????
(
_user_specified_nameconv2d_5_input
?
?
G__inference_conv2d_5_layer_call_and_return_conditional_losses_289598752

inputs:
conv2d_readvariableop_resource:??
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_4_layer_call_fn_289598112
conv2d_3_input"
unknown:@?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_4_layer_call_and_return_conditional_losses_2895980992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:?????????@
(
_user_specified_nameconv2d_3_input
?
?
:__inference_batch_normalization_10_layer_call_fn_289603755

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
*-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_2895999402
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
?
?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_289597640

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
exponential_avg_factor%
?#<2
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
0__inference_sequential_3_layer_call_fn_289597886
conv2d_2_input!
unknown: @
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_3_layer_call_and_return_conditional_losses_2895978582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????   : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:?????????   
(
_user_specified_nameconv2d_2_input
?
x
L__inference_concatenate_3_layer_call_and_return_conditional_losses_289602744
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????  `2
concatk
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:?????????  `2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+???????????????????????????@:?????????   :k g
A
_output_shapes/
-:+???????????????????????????@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????   
"
_user_specified_name
inputs/1
?
h
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_289603189

inputs
identitym
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:??????????*
alpha%???>2
	LeakyRelut
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_289602836

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????   : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
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
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????   : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
K__inference_sequential_9_layer_call_and_return_conditional_losses_289599817

inputs8
conv2d_transpose_3_289599803:??.
batch_normalization_9_289599806:	?.
batch_normalization_9_289599808:	?.
batch_normalization_9_289599810:	?.
batch_normalization_9_289599812:	?
identity??-batch_normalization_9/StatefulPartitionedCall?*conv2d_transpose_3/StatefulPartitionedCall?
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_3_289599803*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_2895996032,
*conv2d_transpose_3/StatefulPartitionedCall?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0batch_normalization_9_289599806batch_normalization_9_289599808batch_normalization_9_289599810batch_normalization_9_289599812*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2895996772/
-batch_normalization_9/StatefulPartitionedCall?
re_lu_3/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_3_layer_call_and_return_conditional_losses_2895997612
re_lu_3/PartitionedCall?
IdentityIdentity re_lu_3/PartitionedCall:output:0.^batch_normalization_9/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
0__inference_sequential_7_layer_call_fn_289599231
conv2d_transpose_1_input#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_7_layer_call_and_return_conditional_losses_2895992032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
0
_output_shapes
:??????????
2
_user_specified_nameconv2d_transpose_1_input
?
?
L__inference_sequential_10_layer_call_and_return_conditional_losses_289600186
conv2d_transpose_4_input7
conv2d_transpose_4_289600172:@?.
 batch_normalization_10_289600175:@.
 batch_normalization_10_289600177:@.
 batch_normalization_10_289600179:@.
 batch_normalization_10_289600181:@
identity??.batch_normalization_10/StatefulPartitionedCall?*conv2d_transpose_4/StatefulPartitionedCall?
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_4_inputconv2d_transpose_4_289600172*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_2895999102,
*conv2d_transpose_4/StatefulPartitionedCall?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0 batch_normalization_10_289600175 batch_normalization_10_289600177 batch_normalization_10_289600179 batch_normalization_10_289600181*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_28959998420
.batch_normalization_10/StatefulPartitionedCall?
re_lu_4/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_4_layer_call_and_return_conditional_losses_2896000682
re_lu_4/PartitionedCall?
IdentityIdentity re_lu_4/PartitionedCall:output:0/^batch_normalization_10/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall:j f
0
_output_shapes
:??????????
2
_user_specified_nameconv2d_transpose_4_input
?
?
9__inference_batch_normalization_4_layer_call_fn_289603145

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2895979422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
:__inference_batch_normalization_10_layer_call_fn_289603768

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
*-
config_proto

CPU

GPU 2J 8? *^
fYRW
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_2895999842
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
0__inference_sequential_6_layer_call_fn_289602298

inputs#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_6_layer_call_and_return_conditional_losses_2895988962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_2_layer_call_and_return_conditional_losses_289597512

inputs,
conv2d_1_289597498: -
batch_normalization_2_289597501: -
batch_normalization_2_289597503: -
batch_normalization_2_289597505: -
batch_normalization_2_289597507: 
identity??-batch_normalization_2/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1_289597498*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_1_layer_call_and_return_conditional_losses_2895973682"
 conv2d_1/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_2_289597501batch_normalization_2_289597503batch_normalization_2_289597505batch_normalization_2_289597507*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_2895974592/
-batch_normalization_2/StatefulPartitionedCall?
leaky_re_lu_1/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_2895974042
leaky_re_lu_1/PartitionedCall?
IdentityIdentity&leaky_re_lu_1/PartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????@@: : : : : 2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
K__inference_sequential_5_layer_call_and_return_conditional_losses_289598612
conv2d_4_input.
conv2d_4_289598598:??.
batch_normalization_5_289598601:	?.
batch_normalization_5_289598603:	?.
batch_normalization_5_289598605:	?.
batch_normalization_5_289598607:	?
identity??-batch_normalization_5/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallconv2d_4_inputconv2d_4_289598598*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_4_layer_call_and_return_conditional_losses_2895984062"
 conv2d_4/StatefulPartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_5_289598601batch_normalization_5_289598603batch_normalization_5_289598605batch_normalization_5_289598607*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2895984972/
-batch_normalization_5/StatefulPartitionedCall?
leaky_re_lu_4/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_2895984422
leaky_re_lu_4/PartitionedCall?
IdentityIdentity&leaky_re_lu_4/PartitionedCall:output:0.^batch_normalization_5/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:` \
0
_output_shapes
:??????????
(
_user_specified_nameconv2d_4_input
?
?
K__inference_sequential_5_layer_call_and_return_conditional_losses_289598595
conv2d_4_input.
conv2d_4_289598581:??.
batch_normalization_5_289598584:	?.
batch_normalization_5_289598586:	?.
batch_normalization_5_289598588:	?.
batch_normalization_5_289598590:	?
identity??-batch_normalization_5/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallconv2d_4_inputconv2d_4_289598581*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_4_layer_call_and_return_conditional_losses_2895984062"
 conv2d_4/StatefulPartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_5_289598584batch_normalization_5_289598586batch_normalization_5_289598588batch_normalization_5_289598590*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2895984272/
-batch_normalization_5/StatefulPartitionedCall?
leaky_re_lu_4/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_2895984422
leaky_re_lu_4/PartitionedCall?
IdentityIdentity&leaky_re_lu_4/PartitionedCall:output:0.^batch_normalization_5/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall:` \
0
_output_shapes
:??????????
(
_user_specified_nameconv2d_4_input
?
?
K__inference_sequential_3_layer_call_and_return_conditional_losses_289597753

inputs,
conv2d_2_289597715: @-
batch_normalization_3_289597736:@-
batch_normalization_3_289597738:@-
batch_normalization_3_289597740:@-
batch_normalization_3_289597742:@
identity??-batch_normalization_3/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_289597715*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_2_layer_call_and_return_conditional_losses_2895977142"
 conv2d_2/StatefulPartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_3_289597736batch_normalization_3_289597738batch_normalization_3_289597740batch_normalization_3_289597742*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2895977352/
-batch_normalization_3/StatefulPartitionedCall?
leaky_re_lu_2/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_2895977502
leaky_re_lu_2/PartitionedCall?
IdentityIdentity&leaky_re_lu_2/PartitionedCall:output:0.^batch_normalization_3/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????   : : : : : 2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_5_layer_call_fn_289603293

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2895982882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
1__inference_sequential_10_layer_call_fn_289600152
conv2d_transpose_4_input"
unknown:@?
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_sequential_10_layer_call_and_return_conditional_losses_2896001242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
0
_output_shapes
:??????????
2
_user_specified_nameconv2d_transpose_4_input
?
?
G__inference_conv2d_2_layer_call_and_return_conditional_losses_289597714

inputs8
conv2d_readvariableop_resource: @
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????   : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
]
1__inference_concatenate_1_layer_call_fn_289602524
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_concatenate_1_layer_call_and_return_conditional_losses_2896003312
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J:,????????????????????????????:??????????:l h
B
_output_shapes0
.:,????????????????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????
"
_user_specified_name
inputs/1
?
?
,__inference_conv2d_2_layer_call_fn_289602912

inputs!
unknown: @
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_2_layer_call_and_return_conditional_losses_2895977142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????   : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_289599326

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
v
L__inference_concatenate_2_layer_call_and_return_conditional_losses_289600351

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
concatl
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:,????????????????????????????:?????????@:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
K__inference_sequential_9_layer_call_and_return_conditional_losses_289599764

inputs8
conv2d_transpose_3_289599744:??.
batch_normalization_9_289599747:	?.
batch_normalization_9_289599749:	?.
batch_normalization_9_289599751:	?.
batch_normalization_9_289599753:	?
identity??-batch_normalization_9/StatefulPartitionedCall?*conv2d_transpose_3/StatefulPartitionedCall?
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_3_289599744*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_2895996032,
*conv2d_transpose_3/StatefulPartitionedCall?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0batch_normalization_9_289599747batch_normalization_9_289599749batch_normalization_9_289599751batch_normalization_9_289599753*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2895996332/
-batch_normalization_9/StatefulPartitionedCall?
re_lu_3/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_3_layer_call_and_return_conditional_losses_2895997612
re_lu_3/PartitionedCall?
IdentityIdentity re_lu_3/PartitionedCall:output:0.^batch_normalization_9/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_5_layer_call_fn_289598578
conv2d_4_input#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_5_layer_call_and_return_conditional_losses_2895985502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
0
_output_shapes
:??????????
(
_user_specified_nameconv2d_4_input
?
?
K__inference_sequential_9_layer_call_and_return_conditional_losses_289599862
conv2d_transpose_3_input8
conv2d_transpose_3_289599848:??.
batch_normalization_9_289599851:	?.
batch_normalization_9_289599853:	?.
batch_normalization_9_289599855:	?.
batch_normalization_9_289599857:	?
identity??-batch_normalization_9/StatefulPartitionedCall?*conv2d_transpose_3/StatefulPartitionedCall?
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_3_inputconv2d_transpose_3_289599848*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Z
fURS
Q__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_2895996032,
*conv2d_transpose_3/StatefulPartitionedCall?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0batch_normalization_9_289599851batch_normalization_9_289599853batch_normalization_9_289599855batch_normalization_9_289599857*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2895996332/
-batch_normalization_9/StatefulPartitionedCall?
re_lu_3/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_re_lu_3_layer_call_and_return_conditional_losses_2895997612
re_lu_3/PartitionedCall?
IdentityIdentity re_lu_3/PartitionedCall:output:0.^batch_normalization_9/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall:j f
0
_output_shapes
:??????????
2
_user_specified_nameconv2d_transpose_3_input
?
?
0__inference_sequential_9_layer_call_fn_289602609

inputs#
unknown:??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_9_layer_call_and_return_conditional_losses_2895997642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_leaky_re_lu_3_layer_call_fn_289603194

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_2895980962
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_5_layer_call_fn_289603332

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2895984972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
v
L__inference_concatenate_3_layer_call_and_return_conditional_losses_289600371

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:?????????  `2
concatk
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:?????????  `2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:+???????????????????????????@:?????????   :i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
9__inference_batch_normalization_9_layer_call_fn_289603696

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2895996772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_18
serving_default_input_1:0?????????@@N
conv2d_transpose_68
StatefulPartitionedCall:0?????????@@tensorflow/serving/predict:??
??
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer-7
	layer_with_weights-6
	layer-8

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer-13
layer_with_weights-9
layer-14
trainable_variables
	variables
regularization_losses
	keras_api

signatures
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"??
_tf_keras_network??{"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_1", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "name": "sequential_2", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_2_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_2", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "name": "sequential_3", "inbound_nodes": [[["sequential_2", 1, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_3_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_3", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "name": "sequential_4", "inbound_nodes": [[["sequential_3", 1, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_4_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "name": "sequential_5", "inbound_nodes": [[["sequential_4", 1, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 4, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_5_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_5", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "name": "sequential_6", "inbound_nodes": [[["sequential_5", 1, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2, 2, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_1_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_1", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}]}, "name": "sequential_7", "inbound_nodes": [[["sequential_6", 1, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["sequential_7", 1, 0, {}], ["sequential_5", 1, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 4, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_2_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_2", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_2", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}]}, "name": "sequential_8", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["sequential_8", 1, 0, {}], ["sequential_4", 1, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_9", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_3_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_3", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}]}, "name": "sequential_9", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_2", "inbound_nodes": [[["sequential_9", 1, 0, {}], ["sequential_3", 1, 0, {}]]]}, {"class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 192]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_4_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_4", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}]}, "name": "sequential_10", "inbound_nodes": [[["concatenate_2", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_3", "inbound_nodes": [[["sequential_10", 1, 0, {}], ["sequential_2", 1, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_6", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_6", "inbound_nodes": [[["concatenate_3", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["conv2d_transpose_6", 0, 0]]}, "shared_object_id": 107, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 64, 64, 1]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_1", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "name": "sequential_2", "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_2_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_2", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "name": "sequential_3", "inbound_nodes": [[["sequential_2", 1, 0, {}]]], "shared_object_id": 22}, {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_3_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_3", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "name": "sequential_4", "inbound_nodes": [[["sequential_3", 1, 0, {}]]], "shared_object_id": 33}, {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_4_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "name": "sequential_5", "inbound_nodes": [[["sequential_4", 1, 0, {}]]], "shared_object_id": 44}, {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 4, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_5_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_5", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "name": "sequential_6", "inbound_nodes": [[["sequential_5", 1, 0, {}]]], "shared_object_id": 55}, {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2, 2, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_1_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_1", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}]}, "name": "sequential_7", "inbound_nodes": [[["sequential_6", 1, 0, {}]]], "shared_object_id": 66}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["sequential_7", 1, 0, {}], ["sequential_5", 1, 0, {}]]], "shared_object_id": 67}, {"class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 4, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_2_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_2", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_2", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}]}, "name": "sequential_8", "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 78}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["sequential_8", 1, 0, {}], ["sequential_4", 1, 0, {}]]], "shared_object_id": 79}, {"class_name": "Sequential", "config": {"name": "sequential_9", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_3_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_3", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}]}, "name": "sequential_9", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 90}, {"class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_2", "inbound_nodes": [[["sequential_9", 1, 0, {}], ["sequential_3", 1, 0, {}]]], "shared_object_id": 91}, {"class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 192]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_4_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_4", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}]}, "name": "sequential_10", "inbound_nodes": [[["concatenate_2", 0, 0, {}]]], "shared_object_id": 102}, {"class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_3", "inbound_nodes": [[["sequential_10", 1, 0, {}], ["sequential_2", 1, 0, {}]]], "shared_object_id": 103}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_6", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}, "shared_object_id": 104}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 105}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_6", "inbound_nodes": [[["concatenate_3", 0, 0, {}]]], "shared_object_id": 106}], "input_layers": [["input_1", 0, 0]], "output_layers": [["conv2d_transpose_6", 0, 0]]}}}
?
_init_input_shape"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
?#
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
trainable_variables
	variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?!
_tf_keras_sequential?!{"name": "sequential_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_1", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 109}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 64, 64, 1]}, "float32", "conv2d_1_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}, "shared_object_id": 1}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 6}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 8}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 9}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_1", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 10}]}}}
?#
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
 trainable_variables
!	variables
"regularization_losses
#	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?!
_tf_keras_sequential?!{"name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_2_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_2", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "inbound_nodes": [[["sequential_2", 1, 0, {}]]], "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 110}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 32, 32, 32]}, "float32", "conv2d_2_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_2_input"}, "shared_object_id": 12}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 19}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 20}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_2", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 21}]}}}
?#
$layer_with_weights-0
$layer-0
%layer_with_weights-1
%layer-1
&layer-2
'trainable_variables
(	variables
)regularization_losses
*	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?!
_tf_keras_sequential?!{"name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_3_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_3", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "inbound_nodes": [[["sequential_3", 1, 0, {}]]], "shared_object_id": 33, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 111}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 16, 16, 64]}, "float32", "conv2d_3_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_3_input"}, "shared_object_id": 23}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 26}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 28}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 30}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 31}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_3", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 32}]}}}
?#
+layer_with_weights-0
+layer-0
,layer_with_weights-1
,layer-1
-layer-2
.trainable_variables
/	variables
0regularization_losses
1	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?!
_tf_keras_sequential?!{"name": "sequential_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_4_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "inbound_nodes": [[["sequential_4", 1, 0, {}]]], "shared_object_id": 44, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 112}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 128]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 8, 8, 128]}, "float32", "conv2d_4_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_4_input"}, "shared_object_id": 34}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 35}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 37}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 39}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 40}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 41}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 42}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 43}]}}}
?#
2layer_with_weights-0
2layer-0
3layer_with_weights-1
3layer-1
4layer-2
5trainable_variables
6	variables
7regularization_losses
8	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?!
_tf_keras_sequential?!{"name": "sequential_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 4, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_5_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_5", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "inbound_nodes": [[["sequential_5", 1, 0, {}]]], "shared_object_id": 55, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 113}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 4, 4, 128]}, "float32", "conv2d_5_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 4, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_5_input"}, "shared_object_id": 45}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 46}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 47}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 48}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 49}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 50}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 52}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 53}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_5", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 54}]}}}
?$
9layer_with_weights-0
9layer-0
:layer_with_weights-1
:layer-1
;layer-2
<trainable_variables
=	variables
>regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?"
_tf_keras_sequential?"{"name": "sequential_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2, 2, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_1_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_1", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}]}, "inbound_nodes": [[["sequential_6", 1, 0, {}]]], "shared_object_id": 66, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}, "shared_object_id": 114}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2, 2, 128]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 2, 2, 128]}, "float32", "conv2d_transpose_1_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2, 2, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_1_input"}, "shared_object_id": 56}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 57}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 58}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 59}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 60}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 61}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 62}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 63}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 64}, {"class_name": "ReLU", "config": {"name": "re_lu_1", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 65}]}}}
?
@trainable_variables
A	variables
Bregularization_losses
C	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["sequential_7", 1, 0, {}], ["sequential_5", 1, 0, {}]]], "shared_object_id": 67, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 4, 4, 128]}, {"class_name": "TensorShape", "items": [null, 4, 4, 128]}]}
?$
Dlayer_with_weights-0
Dlayer-0
Elayer_with_weights-1
Elayer-1
Flayer-2
Gtrainable_variables
H	variables
Iregularization_losses
J	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?"
_tf_keras_sequential?"{"name": "sequential_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 4, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_2_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_2", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_2", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}]}, "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 78, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}, "shared_object_id": 115}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 256]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 4, 4, 256]}, "float32", "conv2d_transpose_2_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 4, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_2_input"}, "shared_object_id": 68}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_2", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 69}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 70}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 71}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 72}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 73}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 74}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 75}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 76}, {"class_name": "ReLU", "config": {"name": "re_lu_2", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 77}]}}}
?
Ktrainable_variables
L	variables
Mregularization_losses
N	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "concatenate_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["sequential_8", 1, 0, {}], ["sequential_4", 1, 0, {}]]], "shared_object_id": 79, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 8, 8, 128]}, {"class_name": "TensorShape", "items": [null, 8, 8, 128]}]}
?$
Olayer_with_weights-0
Olayer-0
Player_with_weights-1
Player-1
Qlayer-2
Rtrainable_variables
S	variables
Tregularization_losses
U	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?"
_tf_keras_sequential?"{"name": "sequential_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_9", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_3_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_3", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}]}, "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 90, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}, "shared_object_id": 116}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 256]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 8, 8, 256]}, "float32", "conv2d_transpose_3_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_9", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_3_input"}, "shared_object_id": 80}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 81}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 82}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 83}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 84}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 85}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 86}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 87}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 88}, {"class_name": "ReLU", "config": {"name": "re_lu_3", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 89}]}}}
?
Vtrainable_variables
W	variables
Xregularization_losses
Y	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "concatenate_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["sequential_9", 1, 0, {}], ["sequential_3", 1, 0, {}]]], "shared_object_id": 91, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 16, 16, 128]}, {"class_name": "TensorShape", "items": [null, 16, 16, 64]}]}
?$
Zlayer_with_weights-0
Zlayer-0
[layer_with_weights-1
[layer-1
\layer-2
]trainable_variables
^	variables
_regularization_losses
`	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?#
_tf_keras_sequential?"{"name": "sequential_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 192]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_4_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_4", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}]}, "inbound_nodes": [[["concatenate_2", 0, 0, {}]]], "shared_object_id": 102, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 192}}, "shared_object_id": 117}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 192]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 16, 16, 192]}, "float32", "conv2d_transpose_4_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 192]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_4_input"}, "shared_object_id": 92}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 93}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 94}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 95}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 96}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 97}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 98}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 99}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 100}, {"class_name": "ReLU", "config": {"name": "re_lu_4", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 101}]}}}
?
atrainable_variables
b	variables
cregularization_losses
d	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "concatenate_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["sequential_10", 1, 0, {}], ["sequential_2", 1, 0, {}]]], "shared_object_id": 103, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 32, 32, 64]}, {"class_name": "TensorShape", "items": [null, 32, 32, 32]}]}
?

ekernel
fbias
gtrainable_variables
h	variables
iregularization_losses
j	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_layer?
{"name": "conv2d_transpose_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_6", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}, "shared_object_id": 104}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 105}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["concatenate_3", 0, 0, {}]]], "shared_object_id": 106, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 96}}, "shared_object_id": 118}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 96]}}
?
k0
l1
m2
n3
o4
p5
q6
r7
s8
t9
u10
v11
w12
x13
y14
z15
{16
|17
}18
~19
20
?21
?22
?23
?24
?25
?26
e27
f28"
trackable_list_wrapper
?
k0
l1
m2
?3
?4
n5
o6
p7
?8
?9
q10
r11
s12
?13
?14
t15
u16
v17
?18
?19
w20
x21
y22
?23
?24
z25
{26
|27
?28
?29
}30
~31
32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
e45
f46"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
trainable_variables
	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
?


kkernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 109}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 1]}}
?

	?axis
	lgamma
mbeta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 6}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 8}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}, "shared_object_id": 119}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "leaky_re_lu_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_1", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 10}
5
k0
l1
m2"
trackable_list_wrapper
E
k0
l1
m2
?3
?4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
trainable_variables
	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?


nkernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 110}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
?

	?axis
	ogamma
pbeta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 19}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 120}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "leaky_re_lu_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_2", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 21}
5
n0
o1
p2"
trackable_list_wrapper
E
n0
o1
p2
?3
?4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
 trainable_variables
!	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
"regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?


qkernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 111}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
?

	?axis
	rgamma
sbeta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 28}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 30}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 121}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 128]}}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "leaky_re_lu_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_3", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 32}
5
q0
r1
s2"
trackable_list_wrapper
E
q0
r1
s2
?3
?4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
'trainable_variables
(	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
)regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?


tkernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 35}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 37, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 112}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 128]}}
?

	?axis
	ugamma
vbeta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 39}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 40}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 41}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 42, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 122}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "leaky_re_lu_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 43}
5
t0
u1
v2"
trackable_list_wrapper
E
t0
u1
v2
?3
?4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
.trainable_variables
/	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
0regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?


wkernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 46}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 47}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 48, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 113}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?

	?axis
	xgamma
ybeta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 49}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 50}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 52}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 53, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 123}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2, 2, 128]}}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "leaky_re_lu_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_5", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 54}
5
w0
x1
y2"
trackable_list_wrapper
E
w0
x1
y2
?3
?4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
5trainable_variables
6	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
7regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

zkernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_transpose_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 57}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 58}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 59, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}, "shared_object_id": 114}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2, 2, 128]}}
?

	?axis
	{gamma
|beta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 60}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 61}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 62}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 63}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 64, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 124}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "re_lu_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_1", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 65}
5
z0
{1
|2"
trackable_list_wrapper
E
z0
{1
|2
?3
?4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
<trainable_variables
=	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
>regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
@trainable_variables
A	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
Bregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

}kernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_transpose_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_2", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 69}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 70}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 71, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}, "shared_object_id": 115}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 256]}}
?

	?axis
	~gamma
beta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 72}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 73}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 74}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 75}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 76, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 125}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 128]}}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "re_lu_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_2", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 77}
5
}0
~1
2"
trackable_list_wrapper
E
}0
~1
2
?3
?4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
Gtrainable_variables
H	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
Iregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
Ktrainable_variables
L	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
Mregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?kernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_transpose_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 81}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 82}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 83, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}, "shared_object_id": 116}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 256]}}
?

	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 84}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 85}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 86}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 87}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 88, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 126}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 128]}}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "re_lu_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_3", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 89}
8
?0
?1
?2"
trackable_list_wrapper
H
?0
?1
?2
?3
?4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
Rtrainable_variables
S	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
Tregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
Vtrainable_variables
W	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
Xregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?kernel
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_transpose_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 93}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 94}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 95, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 192}}, "shared_object_id": 117}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 192]}}
?

	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "batch_normalization_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 96}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 97}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 98}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 99}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 100, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 127}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 64]}}
?
?trainable_variables
?	variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "re_lu_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_4", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 101}
8
?0
?1
?2"
trackable_list_wrapper
H
?0
?1
?2
?3
?4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
]trainable_variables
^	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
atrainable_variables
b	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
cregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
3:1`2conv2d_transpose_6/kernel
%:#2conv2d_transpose_6/bias
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
gtrainable_variables
h	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
iregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_1/kernel
):' 2batch_normalization_2/gamma
(:& 2batch_normalization_2/beta
):' @2conv2d_2/kernel
):'@2batch_normalization_3/gamma
(:&@2batch_normalization_3/beta
*:(@?2conv2d_3/kernel
*:(?2batch_normalization_4/gamma
):'?2batch_normalization_4/beta
+:)??2conv2d_4/kernel
*:(?2batch_normalization_5/gamma
):'?2batch_normalization_5/beta
+:)??2conv2d_5/kernel
*:(?2batch_normalization_6/gamma
):'?2batch_normalization_6/beta
5:3??2conv2d_transpose_1/kernel
*:(?2batch_normalization_7/gamma
):'?2batch_normalization_7/beta
5:3??2conv2d_transpose_2/kernel
*:(?2batch_normalization_8/gamma
):'?2batch_normalization_8/beta
5:3??2conv2d_transpose_3/kernel
*:(?2batch_normalization_9/gamma
):'?2batch_normalization_9/beta
4:2@?2conv2d_transpose_4/kernel
*:(@2batch_normalization_10/gamma
):'@2batch_normalization_10/beta
1:/  (2!batch_normalization_2/moving_mean
5:3  (2%batch_normalization_2/moving_variance
1:/@ (2!batch_normalization_3/moving_mean
5:3@ (2%batch_normalization_3/moving_variance
2:0? (2!batch_normalization_4/moving_mean
6:4? (2%batch_normalization_4/moving_variance
2:0? (2!batch_normalization_5/moving_mean
6:4? (2%batch_normalization_5/moving_variance
2:0? (2!batch_normalization_6/moving_mean
6:4? (2%batch_normalization_6/moving_variance
2:0? (2!batch_normalization_7/moving_mean
6:4? (2%batch_normalization_7/moving_variance
2:0? (2!batch_normalization_8/moving_mean
6:4? (2%batch_normalization_8/moving_variance
2:0? (2!batch_normalization_9/moving_mean
6:4? (2%batch_normalization_9/moving_variance
2:0@ (2"batch_normalization_10/moving_mean
6:4@ (2&batch_normalization_10/moving_variance
?
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
13
14"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?16
?17"
trackable_list_wrapper
 "
trackable_list_wrapper
'
k0"
trackable_list_wrapper
'
k0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
>
l0
m1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5
0
1
2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
n0"
trackable_list_wrapper
'
n0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
>
o0
p1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5
0
1
2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
q0"
trackable_list_wrapper
'
q0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
>
r0
s1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5
$0
%1
&2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
t0"
trackable_list_wrapper
'
t0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
>
u0
v1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
w0"
trackable_list_wrapper
'
w0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
>
x0
y1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5
20
31
42"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
z0"
trackable_list_wrapper
'
z0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
>
{0
|1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5
90
:1
;2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
'
}0"
trackable_list_wrapper
'
}0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
>
~0
1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5
D0
E1
F2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
(
?0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5
O0
P1
Q2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
(
?0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?trainable_variables
?	variables
?metrics
?non_trainable_variables
 ?layer_regularization_losses
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
5
Z0
[1
\2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
?2?
$__inference__wrapped_model_289597228?
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
annotations? *.?+
)?&
input_1?????????@@
?2?
D__inference_model_layer_call_and_return_conditional_losses_289601484
D__inference_model_layer_call_and_return_conditional_losses_289601730
D__inference_model_layer_call_and_return_conditional_losses_289601025
D__inference_model_layer_call_and_return_conditional_losses_289601137?
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
?2?
)__inference_model_layer_call_fn_289600476
)__inference_model_layer_call_fn_289601829
)__inference_model_layer_call_fn_289601928
)__inference_model_layer_call_fn_289600913?
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
?2?
K__inference_sequential_2_layer_call_and_return_conditional_losses_289601950
K__inference_sequential_2_layer_call_and_return_conditional_losses_289601972
K__inference_sequential_2_layer_call_and_return_conditional_losses_289597557
K__inference_sequential_2_layer_call_and_return_conditional_losses_289597574?
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
?2?
0__inference_sequential_2_layer_call_fn_289597420
0__inference_sequential_2_layer_call_fn_289601987
0__inference_sequential_2_layer_call_fn_289602002
0__inference_sequential_2_layer_call_fn_289597540?
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
?2?
K__inference_sequential_3_layer_call_and_return_conditional_losses_289602024
K__inference_sequential_3_layer_call_and_return_conditional_losses_289602046
K__inference_sequential_3_layer_call_and_return_conditional_losses_289597903
K__inference_sequential_3_layer_call_and_return_conditional_losses_289597920?
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
?2?
0__inference_sequential_3_layer_call_fn_289597766
0__inference_sequential_3_layer_call_fn_289602061
0__inference_sequential_3_layer_call_fn_289602076
0__inference_sequential_3_layer_call_fn_289597886?
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
?2?
K__inference_sequential_4_layer_call_and_return_conditional_losses_289602098
K__inference_sequential_4_layer_call_and_return_conditional_losses_289602120
K__inference_sequential_4_layer_call_and_return_conditional_losses_289598249
K__inference_sequential_4_layer_call_and_return_conditional_losses_289598266?
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
?2?
0__inference_sequential_4_layer_call_fn_289598112
0__inference_sequential_4_layer_call_fn_289602135
0__inference_sequential_4_layer_call_fn_289602150
0__inference_sequential_4_layer_call_fn_289598232?
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
?2?
K__inference_sequential_5_layer_call_and_return_conditional_losses_289602172
K__inference_sequential_5_layer_call_and_return_conditional_losses_289602194
K__inference_sequential_5_layer_call_and_return_conditional_losses_289598595
K__inference_sequential_5_layer_call_and_return_conditional_losses_289598612?
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
?2?
0__inference_sequential_5_layer_call_fn_289598458
0__inference_sequential_5_layer_call_fn_289602209
0__inference_sequential_5_layer_call_fn_289602224
0__inference_sequential_5_layer_call_fn_289598578?
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
?2?
K__inference_sequential_6_layer_call_and_return_conditional_losses_289602246
K__inference_sequential_6_layer_call_and_return_conditional_losses_289602268
K__inference_sequential_6_layer_call_and_return_conditional_losses_289598941
K__inference_sequential_6_layer_call_and_return_conditional_losses_289598958?
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
?2?
0__inference_sequential_6_layer_call_fn_289598804
0__inference_sequential_6_layer_call_fn_289602283
0__inference_sequential_6_layer_call_fn_289602298
0__inference_sequential_6_layer_call_fn_289598924?
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
?2?
K__inference_sequential_7_layer_call_and_return_conditional_losses_289602333
K__inference_sequential_7_layer_call_and_return_conditional_losses_289602368
K__inference_sequential_7_layer_call_and_return_conditional_losses_289599248
K__inference_sequential_7_layer_call_and_return_conditional_losses_289599265?
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
?2?
0__inference_sequential_7_layer_call_fn_289599163
0__inference_sequential_7_layer_call_fn_289602383
0__inference_sequential_7_layer_call_fn_289602398
0__inference_sequential_7_layer_call_fn_289599231?
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
J__inference_concatenate_layer_call_and_return_conditional_losses_289602405?
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
/__inference_concatenate_layer_call_fn_289602411?
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
?2?
K__inference_sequential_8_layer_call_and_return_conditional_losses_289602446
K__inference_sequential_8_layer_call_and_return_conditional_losses_289602481
K__inference_sequential_8_layer_call_and_return_conditional_losses_289599555
K__inference_sequential_8_layer_call_and_return_conditional_losses_289599572?
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
?2?
0__inference_sequential_8_layer_call_fn_289599470
0__inference_sequential_8_layer_call_fn_289602496
0__inference_sequential_8_layer_call_fn_289602511
0__inference_sequential_8_layer_call_fn_289599538?
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
L__inference_concatenate_1_layer_call_and_return_conditional_losses_289602518?
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
1__inference_concatenate_1_layer_call_fn_289602524?
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
?2?
K__inference_sequential_9_layer_call_and_return_conditional_losses_289602559
K__inference_sequential_9_layer_call_and_return_conditional_losses_289602594
K__inference_sequential_9_layer_call_and_return_conditional_losses_289599862
K__inference_sequential_9_layer_call_and_return_conditional_losses_289599879?
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
?2?
0__inference_sequential_9_layer_call_fn_289599777
0__inference_sequential_9_layer_call_fn_289602609
0__inference_sequential_9_layer_call_fn_289602624
0__inference_sequential_9_layer_call_fn_289599845?
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
L__inference_concatenate_2_layer_call_and_return_conditional_losses_289602631?
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
1__inference_concatenate_2_layer_call_fn_289602637?
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
?2?
L__inference_sequential_10_layer_call_and_return_conditional_losses_289602672
L__inference_sequential_10_layer_call_and_return_conditional_losses_289602707
L__inference_sequential_10_layer_call_and_return_conditional_losses_289600169
L__inference_sequential_10_layer_call_and_return_conditional_losses_289600186?
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
?2?
1__inference_sequential_10_layer_call_fn_289600084
1__inference_sequential_10_layer_call_fn_289602722
1__inference_sequential_10_layer_call_fn_289602737
1__inference_sequential_10_layer_call_fn_289600152?
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
L__inference_concatenate_3_layer_call_and_return_conditional_losses_289602744?
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
1__inference_concatenate_3_layer_call_fn_289602750?
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
Q__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_289600221?
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
annotations? *7?4
2?/+???????????????????????????`
?2?
6__inference_conv2d_transpose_6_layer_call_fn_289600231?
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
annotations? *7?4
2?/+???????????????????????????`
?B?
'__inference_signature_wrapper_289601238input_1"?
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
 
?2?
G__inference_conv2d_1_layer_call_and_return_conditional_losses_289602757?
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
,__inference_conv2d_1_layer_call_fn_289602764?
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
?2?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_289602782
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_289602800
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_289602818
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_289602836?
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
?2?
9__inference_batch_normalization_2_layer_call_fn_289602849
9__inference_batch_normalization_2_layer_call_fn_289602862
9__inference_batch_normalization_2_layer_call_fn_289602875
9__inference_batch_normalization_2_layer_call_fn_289602888?
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
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_289602893?
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
1__inference_leaky_re_lu_1_layer_call_fn_289602898?
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
G__inference_conv2d_2_layer_call_and_return_conditional_losses_289602905?
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
,__inference_conv2d_2_layer_call_fn_289602912?
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
?2?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_289602930
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_289602948
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_289602966
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_289602984?
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
?2?
9__inference_batch_normalization_3_layer_call_fn_289602997
9__inference_batch_normalization_3_layer_call_fn_289603010
9__inference_batch_normalization_3_layer_call_fn_289603023
9__inference_batch_normalization_3_layer_call_fn_289603036?
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
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_289603041?
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
1__inference_leaky_re_lu_2_layer_call_fn_289603046?
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
G__inference_conv2d_3_layer_call_and_return_conditional_losses_289603053?
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
,__inference_conv2d_3_layer_call_fn_289603060?
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
?2?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_289603078
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_289603096
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_289603114
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_289603132?
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
?2?
9__inference_batch_normalization_4_layer_call_fn_289603145
9__inference_batch_normalization_4_layer_call_fn_289603158
9__inference_batch_normalization_4_layer_call_fn_289603171
9__inference_batch_normalization_4_layer_call_fn_289603184?
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
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_289603189?
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
1__inference_leaky_re_lu_3_layer_call_fn_289603194?
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
G__inference_conv2d_4_layer_call_and_return_conditional_losses_289603201?
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
,__inference_conv2d_4_layer_call_fn_289603208?
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
?2?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_289603226
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_289603244
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_289603262
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_289603280?
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
?2?
9__inference_batch_normalization_5_layer_call_fn_289603293
9__inference_batch_normalization_5_layer_call_fn_289603306
9__inference_batch_normalization_5_layer_call_fn_289603319
9__inference_batch_normalization_5_layer_call_fn_289603332?
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
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_289603337?
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
1__inference_leaky_re_lu_4_layer_call_fn_289603342?
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
G__inference_conv2d_5_layer_call_and_return_conditional_losses_289603349?
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
,__inference_conv2d_5_layer_call_fn_289603356?
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
?2?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_289603374
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_289603392
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_289603410
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_289603428?
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
?2?
9__inference_batch_normalization_6_layer_call_fn_289603441
9__inference_batch_normalization_6_layer_call_fn_289603454
9__inference_batch_normalization_6_layer_call_fn_289603467
9__inference_batch_normalization_6_layer_call_fn_289603480?
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
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_289603485?
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
1__inference_leaky_re_lu_5_layer_call_fn_289603490?
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
Q__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_289598989?
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
annotations? *8?5
3?0,????????????????????????????
?2?
6__inference_conv2d_transpose_1_layer_call_fn_289598997?
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
annotations? *8?5
3?0,????????????????????????????
?2?
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_289603508
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_289603526?
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
9__inference_batch_normalization_7_layer_call_fn_289603539
9__inference_batch_normalization_7_layer_call_fn_289603552?
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
F__inference_re_lu_1_layer_call_and_return_conditional_losses_289603557?
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
+__inference_re_lu_1_layer_call_fn_289603562?
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
Q__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_289599296?
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
annotations? *8?5
3?0,????????????????????????????
?2?
6__inference_conv2d_transpose_2_layer_call_fn_289599304?
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
annotations? *8?5
3?0,????????????????????????????
?2?
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_289603580
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_289603598?
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
9__inference_batch_normalization_8_layer_call_fn_289603611
9__inference_batch_normalization_8_layer_call_fn_289603624?
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
F__inference_re_lu_2_layer_call_and_return_conditional_losses_289603629?
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
+__inference_re_lu_2_layer_call_fn_289603634?
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
Q__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_289599603?
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
annotations? *8?5
3?0,????????????????????????????
?2?
6__inference_conv2d_transpose_3_layer_call_fn_289599611?
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
annotations? *8?5
3?0,????????????????????????????
?2?
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_289603652
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_289603670?
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
9__inference_batch_normalization_9_layer_call_fn_289603683
9__inference_batch_normalization_9_layer_call_fn_289603696?
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
F__inference_re_lu_3_layer_call_and_return_conditional_losses_289603701?
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
+__inference_re_lu_3_layer_call_fn_289603706?
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
Q__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_289599910?
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
annotations? *8?5
3?0,????????????????????????????
?2?
6__inference_conv2d_transpose_4_layer_call_fn_289599918?
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
annotations? *8?5
3?0,????????????????????????????
?2?
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_289603724
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_289603742?
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
:__inference_batch_normalization_10_layer_call_fn_289603755
:__inference_batch_normalization_10_layer_call_fn_289603768?
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
F__inference_re_lu_4_layer_call_and_return_conditional_losses_289603773?
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
+__inference_re_lu_4_layer_call_fn_289603778?
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
 ?
$__inference__wrapped_model_289597228?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef8?5
.?+
)?&
input_1?????????@@
? "O?L
J
conv2d_transpose_64?1
conv2d_transpose_6?????????@@?
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_289603724?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_289603742?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
:__inference_batch_normalization_10_layer_call_fn_289603755?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
:__inference_batch_normalization_10_layer_call_fn_289603768?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_289602782?lm??M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_289602800?lm??M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_289602818tlm??;?8
1?.
(?%
inputs?????????   
p 
? "-?*
#? 
0?????????   
? ?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_289602836tlm??;?8
1?.
(?%
inputs?????????   
p
? "-?*
#? 
0?????????   
? ?
9__inference_batch_normalization_2_layer_call_fn_289602849?lm??M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
9__inference_batch_normalization_2_layer_call_fn_289602862?lm??M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
9__inference_batch_normalization_2_layer_call_fn_289602875glm??;?8
1?.
(?%
inputs?????????   
p 
? " ??????????   ?
9__inference_batch_normalization_2_layer_call_fn_289602888glm??;?8
1?.
(?%
inputs?????????   
p
? " ??????????   ?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_289602930?op??M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_289602948?op??M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_289602966top??;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_289602984top??;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
9__inference_batch_normalization_3_layer_call_fn_289602997?op??M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
9__inference_batch_normalization_3_layer_call_fn_289603010?op??M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
9__inference_batch_normalization_3_layer_call_fn_289603023gop??;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
9__inference_batch_normalization_3_layer_call_fn_289603036gop??;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_289603078?rs??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_289603096?rs??N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_289603114vrs??<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_289603132vrs??<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_4_layer_call_fn_289603145?rs??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_4_layer_call_fn_289603158?rs??N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_4_layer_call_fn_289603171irs??<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_4_layer_call_fn_289603184irs??<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_289603226?uv??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_289603244?uv??N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_289603262vuv??<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_289603280vuv??<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_5_layer_call_fn_289603293?uv??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_5_layer_call_fn_289603306?uv??N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_5_layer_call_fn_289603319iuv??<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_5_layer_call_fn_289603332iuv??<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_289603374?xy??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_289603392?xy??N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_289603410vxy??<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_289603428vxy??<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_6_layer_call_fn_289603441?xy??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_6_layer_call_fn_289603454?xy??N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_6_layer_call_fn_289603467ixy??<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_6_layer_call_fn_289603480ixy??<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_289603508?{|??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_289603526?{|??N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
9__inference_batch_normalization_7_layer_call_fn_289603539?{|??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_7_layer_call_fn_289603552?{|??N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_289603580?~??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_289603598?~??N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
9__inference_batch_normalization_8_layer_call_fn_289603611?~??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_8_layer_call_fn_289603624?~??N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_289603652?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_289603670?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
9__inference_batch_normalization_9_layer_call_fn_289603683?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_9_layer_call_fn_289603696?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
L__inference_concatenate_1_layer_call_and_return_conditional_losses_289602518?~?{
t?q
o?l
=?:
inputs/0,????????????????????????????
+?(
inputs/1??????????
? ".?+
$?!
0??????????
? ?
1__inference_concatenate_1_layer_call_fn_289602524?~?{
t?q
o?l
=?:
inputs/0,????????????????????????????
+?(
inputs/1??????????
? "!????????????
L__inference_concatenate_2_layer_call_and_return_conditional_losses_289602631?}?z
s?p
n?k
=?:
inputs/0,????????????????????????????
*?'
inputs/1?????????@
? ".?+
$?!
0??????????
? ?
1__inference_concatenate_2_layer_call_fn_289602637?}?z
s?p
n?k
=?:
inputs/0,????????????????????????????
*?'
inputs/1?????????@
? "!????????????
L__inference_concatenate_3_layer_call_and_return_conditional_losses_289602744?|?y
r?o
m?j
<?9
inputs/0+???????????????????????????@
*?'
inputs/1?????????   
? "-?*
#? 
0?????????  `
? ?
1__inference_concatenate_3_layer_call_fn_289602750?|?y
r?o
m?j
<?9
inputs/0+???????????????????????????@
*?'
inputs/1?????????   
? " ??????????  `?
J__inference_concatenate_layer_call_and_return_conditional_losses_289602405?~?{
t?q
o?l
=?:
inputs/0,????????????????????????????
+?(
inputs/1??????????
? ".?+
$?!
0??????????
? ?
/__inference_concatenate_layer_call_fn_289602411?~?{
t?q
o?l
=?:
inputs/0,????????????????????????????
+?(
inputs/1??????????
? "!????????????
G__inference_conv2d_1_layer_call_and_return_conditional_losses_289602757kk7?4
-?*
(?%
inputs?????????@@
? "-?*
#? 
0?????????   
? ?
,__inference_conv2d_1_layer_call_fn_289602764^k7?4
-?*
(?%
inputs?????????@@
? " ??????????   ?
G__inference_conv2d_2_layer_call_and_return_conditional_losses_289602905kn7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????@
? ?
,__inference_conv2d_2_layer_call_fn_289602912^n7?4
-?*
(?%
inputs?????????   
? " ??????????@?
G__inference_conv2d_3_layer_call_and_return_conditional_losses_289603053lq7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_3_layer_call_fn_289603060_q7?4
-?*
(?%
inputs?????????@
? "!????????????
G__inference_conv2d_4_layer_call_and_return_conditional_losses_289603201mt8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_4_layer_call_fn_289603208`t8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_5_layer_call_and_return_conditional_losses_289603349mw8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_5_layer_call_fn_289603356`w8?5
.?+
)?&
inputs??????????
? "!????????????
Q__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_289598989?zJ?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
6__inference_conv2d_transpose_1_layer_call_fn_289598997?zJ?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
Q__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_289599296?}J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
6__inference_conv2d_transpose_2_layer_call_fn_289599304?}J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
Q__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_289599603??J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
6__inference_conv2d_transpose_3_layer_call_fn_289599611??J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
Q__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_289599910??J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
6__inference_conv2d_transpose_4_layer_call_fn_289599918??J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
Q__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_289600221?efI?F
??<
:?7
inputs+???????????????????????????`
? "??<
5?2
0+???????????????????????????
? ?
6__inference_conv2d_transpose_6_layer_call_fn_289600231?efI?F
??<
:?7
inputs+???????????????????????????`
? "2?/+????????????????????????????
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_289602893h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
1__inference_leaky_re_lu_1_layer_call_fn_289602898[7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_289603041h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
1__inference_leaky_re_lu_2_layer_call_fn_289603046[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_289603189j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
1__inference_leaky_re_lu_3_layer_call_fn_289603194]8?5
.?+
)?&
inputs??????????
? "!????????????
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_289603337j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
1__inference_leaky_re_lu_4_layer_call_fn_289603342]8?5
.?+
)?&
inputs??????????
? "!????????????
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_289603485j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
1__inference_leaky_re_lu_5_layer_call_fn_289603490]8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_model_layer_call_and_return_conditional_losses_289601025?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef@?=
6?3
)?&
input_1?????????@@
p 

 
? "??<
5?2
0+???????????????????????????
? ?
D__inference_model_layer_call_and_return_conditional_losses_289601137?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef@?=
6?3
)?&
input_1?????????@@
p

 
? "??<
5?2
0+???????????????????????????
? ?
D__inference_model_layer_call_and_return_conditional_losses_289601484?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef??<
5?2
(?%
inputs?????????@@
p 

 
? "-?*
#? 
0?????????@@
? ?
D__inference_model_layer_call_and_return_conditional_losses_289601730?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef??<
5?2
(?%
inputs?????????@@
p

 
? "-?*
#? 
0?????????@@
? ?
)__inference_model_layer_call_fn_289600476?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef@?=
6?3
)?&
input_1?????????@@
p 

 
? "2?/+????????????????????????????
)__inference_model_layer_call_fn_289600913?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef@?=
6?3
)?&
input_1?????????@@
p

 
? "2?/+????????????????????????????
)__inference_model_layer_call_fn_289601829?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef??<
5?2
(?%
inputs?????????@@
p 

 
? "2?/+????????????????????????????
)__inference_model_layer_call_fn_289601928?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef??<
5?2
(?%
inputs?????????@@
p

 
? "2?/+????????????????????????????
F__inference_re_lu_1_layer_call_and_return_conditional_losses_289603557?J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
+__inference_re_lu_1_layer_call_fn_289603562?J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
F__inference_re_lu_2_layer_call_and_return_conditional_losses_289603629?J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
+__inference_re_lu_2_layer_call_fn_289603634?J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
F__inference_re_lu_3_layer_call_and_return_conditional_losses_289603701?J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
+__inference_re_lu_3_layer_call_fn_289603706?J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
F__inference_re_lu_4_layer_call_and_return_conditional_losses_289603773?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
+__inference_re_lu_4_layer_call_fn_289603778I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
L__inference_sequential_10_layer_call_and_return_conditional_losses_289600169?
?????R?O
H?E
;?8
conv2d_transpose_4_input??????????
p 

 
? "??<
5?2
0+???????????????????????????@
? ?
L__inference_sequential_10_layer_call_and_return_conditional_losses_289600186?
?????R?O
H?E
;?8
conv2d_transpose_4_input??????????
p

 
? "??<
5?2
0+???????????????????????????@
? ?
L__inference_sequential_10_layer_call_and_return_conditional_losses_289602672}
?????@?=
6?3
)?&
inputs??????????
p 

 
? "-?*
#? 
0?????????  @
? ?
L__inference_sequential_10_layer_call_and_return_conditional_losses_289602707}
?????@?=
6?3
)?&
inputs??????????
p

 
? "-?*
#? 
0?????????  @
? ?
1__inference_sequential_10_layer_call_fn_289600084?
?????R?O
H?E
;?8
conv2d_transpose_4_input??????????
p 

 
? "2?/+???????????????????????????@?
1__inference_sequential_10_layer_call_fn_289600152?
?????R?O
H?E
;?8
conv2d_transpose_4_input??????????
p

 
? "2?/+???????????????????????????@?
1__inference_sequential_10_layer_call_fn_289602722?
?????@?=
6?3
)?&
inputs??????????
p 

 
? "2?/+???????????????????????????@?
1__inference_sequential_10_layer_call_fn_289602737?
?????@?=
6?3
)?&
inputs??????????
p

 
? "2?/+???????????????????????????@?
K__inference_sequential_2_layer_call_and_return_conditional_losses_289597557?klm??G?D
=?:
0?-
conv2d_1_input?????????@@
p 

 
? "-?*
#? 
0?????????   
? ?
K__inference_sequential_2_layer_call_and_return_conditional_losses_289597574?klm??G?D
=?:
0?-
conv2d_1_input?????????@@
p

 
? "-?*
#? 
0?????????   
? ?
K__inference_sequential_2_layer_call_and_return_conditional_losses_289601950yklm????<
5?2
(?%
inputs?????????@@
p 

 
? "-?*
#? 
0?????????   
? ?
K__inference_sequential_2_layer_call_and_return_conditional_losses_289601972yklm????<
5?2
(?%
inputs?????????@@
p

 
? "-?*
#? 
0?????????   
? ?
0__inference_sequential_2_layer_call_fn_289597420tklm??G?D
=?:
0?-
conv2d_1_input?????????@@
p 

 
? " ??????????   ?
0__inference_sequential_2_layer_call_fn_289597540tklm??G?D
=?:
0?-
conv2d_1_input?????????@@
p

 
? " ??????????   ?
0__inference_sequential_2_layer_call_fn_289601987lklm????<
5?2
(?%
inputs?????????@@
p 

 
? " ??????????   ?
0__inference_sequential_2_layer_call_fn_289602002lklm????<
5?2
(?%
inputs?????????@@
p

 
? " ??????????   ?
K__inference_sequential_3_layer_call_and_return_conditional_losses_289597903?nop??G?D
=?:
0?-
conv2d_2_input?????????   
p 

 
? "-?*
#? 
0?????????@
? ?
K__inference_sequential_3_layer_call_and_return_conditional_losses_289597920?nop??G?D
=?:
0?-
conv2d_2_input?????????   
p

 
? "-?*
#? 
0?????????@
? ?
K__inference_sequential_3_layer_call_and_return_conditional_losses_289602024ynop????<
5?2
(?%
inputs?????????   
p 

 
? "-?*
#? 
0?????????@
? ?
K__inference_sequential_3_layer_call_and_return_conditional_losses_289602046ynop????<
5?2
(?%
inputs?????????   
p

 
? "-?*
#? 
0?????????@
? ?
0__inference_sequential_3_layer_call_fn_289597766tnop??G?D
=?:
0?-
conv2d_2_input?????????   
p 

 
? " ??????????@?
0__inference_sequential_3_layer_call_fn_289597886tnop??G?D
=?:
0?-
conv2d_2_input?????????   
p

 
? " ??????????@?
0__inference_sequential_3_layer_call_fn_289602061lnop????<
5?2
(?%
inputs?????????   
p 

 
? " ??????????@?
0__inference_sequential_3_layer_call_fn_289602076lnop????<
5?2
(?%
inputs?????????   
p

 
? " ??????????@?
K__inference_sequential_4_layer_call_and_return_conditional_losses_289598249?qrs??G?D
=?:
0?-
conv2d_3_input?????????@
p 

 
? ".?+
$?!
0??????????
? ?
K__inference_sequential_4_layer_call_and_return_conditional_losses_289598266?qrs??G?D
=?:
0?-
conv2d_3_input?????????@
p

 
? ".?+
$?!
0??????????
? ?
K__inference_sequential_4_layer_call_and_return_conditional_losses_289602098zqrs????<
5?2
(?%
inputs?????????@
p 

 
? ".?+
$?!
0??????????
? ?
K__inference_sequential_4_layer_call_and_return_conditional_losses_289602120zqrs????<
5?2
(?%
inputs?????????@
p

 
? ".?+
$?!
0??????????
? ?
0__inference_sequential_4_layer_call_fn_289598112uqrs??G?D
=?:
0?-
conv2d_3_input?????????@
p 

 
? "!????????????
0__inference_sequential_4_layer_call_fn_289598232uqrs??G?D
=?:
0?-
conv2d_3_input?????????@
p

 
? "!????????????
0__inference_sequential_4_layer_call_fn_289602135mqrs????<
5?2
(?%
inputs?????????@
p 

 
? "!????????????
0__inference_sequential_4_layer_call_fn_289602150mqrs????<
5?2
(?%
inputs?????????@
p

 
? "!????????????
K__inference_sequential_5_layer_call_and_return_conditional_losses_289598595?tuv??H?E
>?;
1?.
conv2d_4_input??????????
p 

 
? ".?+
$?!
0??????????
? ?
K__inference_sequential_5_layer_call_and_return_conditional_losses_289598612?tuv??H?E
>?;
1?.
conv2d_4_input??????????
p

 
? ".?+
$?!
0??????????
? ?
K__inference_sequential_5_layer_call_and_return_conditional_losses_289602172{tuv??@?=
6?3
)?&
inputs??????????
p 

 
? ".?+
$?!
0??????????
? ?
K__inference_sequential_5_layer_call_and_return_conditional_losses_289602194{tuv??@?=
6?3
)?&
inputs??????????
p

 
? ".?+
$?!
0??????????
? ?
0__inference_sequential_5_layer_call_fn_289598458vtuv??H?E
>?;
1?.
conv2d_4_input??????????
p 

 
? "!????????????
0__inference_sequential_5_layer_call_fn_289598578vtuv??H?E
>?;
1?.
conv2d_4_input??????????
p

 
? "!????????????
0__inference_sequential_5_layer_call_fn_289602209ntuv??@?=
6?3
)?&
inputs??????????
p 

 
? "!????????????
0__inference_sequential_5_layer_call_fn_289602224ntuv??@?=
6?3
)?&
inputs??????????
p

 
? "!????????????
K__inference_sequential_6_layer_call_and_return_conditional_losses_289598941?wxy??H?E
>?;
1?.
conv2d_5_input??????????
p 

 
? ".?+
$?!
0??????????
? ?
K__inference_sequential_6_layer_call_and_return_conditional_losses_289598958?wxy??H?E
>?;
1?.
conv2d_5_input??????????
p

 
? ".?+
$?!
0??????????
? ?
K__inference_sequential_6_layer_call_and_return_conditional_losses_289602246{wxy??@?=
6?3
)?&
inputs??????????
p 

 
? ".?+
$?!
0??????????
? ?
K__inference_sequential_6_layer_call_and_return_conditional_losses_289602268{wxy??@?=
6?3
)?&
inputs??????????
p

 
? ".?+
$?!
0??????????
? ?
0__inference_sequential_6_layer_call_fn_289598804vwxy??H?E
>?;
1?.
conv2d_5_input??????????
p 

 
? "!????????????
0__inference_sequential_6_layer_call_fn_289598924vwxy??H?E
>?;
1?.
conv2d_5_input??????????
p

 
? "!????????????
0__inference_sequential_6_layer_call_fn_289602283nwxy??@?=
6?3
)?&
inputs??????????
p 

 
? "!????????????
0__inference_sequential_6_layer_call_fn_289602298nwxy??@?=
6?3
)?&
inputs??????????
p

 
? "!????????????
K__inference_sequential_7_layer_call_and_return_conditional_losses_289599248?z{|??R?O
H?E
;?8
conv2d_transpose_1_input??????????
p 

 
? "@?=
6?3
0,????????????????????????????
? ?
K__inference_sequential_7_layer_call_and_return_conditional_losses_289599265?z{|??R?O
H?E
;?8
conv2d_transpose_1_input??????????
p

 
? "@?=
6?3
0,????????????????????????????
? ?
K__inference_sequential_7_layer_call_and_return_conditional_losses_289602333{z{|??@?=
6?3
)?&
inputs??????????
p 

 
? ".?+
$?!
0??????????
? ?
K__inference_sequential_7_layer_call_and_return_conditional_losses_289602368{z{|??@?=
6?3
)?&
inputs??????????
p

 
? ".?+
$?!
0??????????
? ?
0__inference_sequential_7_layer_call_fn_289599163?z{|??R?O
H?E
;?8
conv2d_transpose_1_input??????????
p 

 
? "3?0,?????????????????????????????
0__inference_sequential_7_layer_call_fn_289599231?z{|??R?O
H?E
;?8
conv2d_transpose_1_input??????????
p

 
? "3?0,?????????????????????????????
0__inference_sequential_7_layer_call_fn_289602383?z{|??@?=
6?3
)?&
inputs??????????
p 

 
? "3?0,?????????????????????????????
0__inference_sequential_7_layer_call_fn_289602398?z{|??@?=
6?3
)?&
inputs??????????
p

 
? "3?0,?????????????????????????????
K__inference_sequential_8_layer_call_and_return_conditional_losses_289599555?}~??R?O
H?E
;?8
conv2d_transpose_2_input??????????
p 

 
? "@?=
6?3
0,????????????????????????????
? ?
K__inference_sequential_8_layer_call_and_return_conditional_losses_289599572?}~??R?O
H?E
;?8
conv2d_transpose_2_input??????????
p

 
? "@?=
6?3
0,????????????????????????????
? ?
K__inference_sequential_8_layer_call_and_return_conditional_losses_289602446{}~??@?=
6?3
)?&
inputs??????????
p 

 
? ".?+
$?!
0??????????
? ?
K__inference_sequential_8_layer_call_and_return_conditional_losses_289602481{}~??@?=
6?3
)?&
inputs??????????
p

 
? ".?+
$?!
0??????????
? ?
0__inference_sequential_8_layer_call_fn_289599470?}~??R?O
H?E
;?8
conv2d_transpose_2_input??????????
p 

 
? "3?0,?????????????????????????????
0__inference_sequential_8_layer_call_fn_289599538?}~??R?O
H?E
;?8
conv2d_transpose_2_input??????????
p

 
? "3?0,?????????????????????????????
0__inference_sequential_8_layer_call_fn_289602496?}~??@?=
6?3
)?&
inputs??????????
p 

 
? "3?0,?????????????????????????????
0__inference_sequential_8_layer_call_fn_289602511?}~??@?=
6?3
)?&
inputs??????????
p

 
? "3?0,?????????????????????????????
K__inference_sequential_9_layer_call_and_return_conditional_losses_289599862?
?????R?O
H?E
;?8
conv2d_transpose_3_input??????????
p 

 
? "@?=
6?3
0,????????????????????????????
? ?
K__inference_sequential_9_layer_call_and_return_conditional_losses_289599879?
?????R?O
H?E
;?8
conv2d_transpose_3_input??????????
p

 
? "@?=
6?3
0,????????????????????????????
? ?
K__inference_sequential_9_layer_call_and_return_conditional_losses_289602559~
?????@?=
6?3
)?&
inputs??????????
p 

 
? ".?+
$?!
0??????????
? ?
K__inference_sequential_9_layer_call_and_return_conditional_losses_289602594~
?????@?=
6?3
)?&
inputs??????????
p

 
? ".?+
$?!
0??????????
? ?
0__inference_sequential_9_layer_call_fn_289599777?
?????R?O
H?E
;?8
conv2d_transpose_3_input??????????
p 

 
? "3?0,?????????????????????????????
0__inference_sequential_9_layer_call_fn_289599845?
?????R?O
H?E
;?8
conv2d_transpose_3_input??????????
p

 
? "3?0,?????????????????????????????
0__inference_sequential_9_layer_call_fn_289602609?
?????@?=
6?3
)?&
inputs??????????
p 

 
? "3?0,?????????????????????????????
0__inference_sequential_9_layer_call_fn_289602624?
?????@?=
6?3
)?&
inputs??????????
p

 
? "3?0,?????????????????????????????
'__inference_signature_wrapper_289601238?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????efC?@
? 
9?6
4
input_1)?&
input_1?????????@@"O?L
J
conv2d_transpose_64?1
conv2d_transpose_6?????????@@