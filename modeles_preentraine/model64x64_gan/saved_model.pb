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
regularization_losses
trainable_variables
	variables
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
regularization_losses
trainable_variables
	variables
	keras_api
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
 regularization_losses
!trainable_variables
"	variables
#	keras_api
?
$layer_with_weights-0
$layer-0
%layer_with_weights-1
%layer-1
&layer-2
'regularization_losses
(trainable_variables
)	variables
*	keras_api
?
+layer_with_weights-0
+layer-0
,layer_with_weights-1
,layer-1
-layer-2
.regularization_losses
/trainable_variables
0	variables
1	keras_api
?
2layer_with_weights-0
2layer-0
3layer_with_weights-1
3layer-1
4layer-2
5regularization_losses
6trainable_variables
7	variables
8	keras_api
?
9layer_with_weights-0
9layer-0
:layer_with_weights-1
:layer-1
;layer-2
<regularization_losses
=trainable_variables
>	variables
?	keras_api
R
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
?
Dlayer_with_weights-0
Dlayer-0
Elayer_with_weights-1
Elayer-1
Flayer-2
Gregularization_losses
Htrainable_variables
I	variables
J	keras_api
R
Kregularization_losses
Ltrainable_variables
M	variables
N	keras_api
?
Olayer_with_weights-0
Olayer-0
Player_with_weights-1
Player-1
Qlayer-2
Rregularization_losses
Strainable_variables
T	variables
U	keras_api
R
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
?
Zlayer_with_weights-0
Zlayer-0
[layer_with_weights-1
[layer-1
\layer-2
]regularization_losses
^trainable_variables
_	variables
`	keras_api
R
aregularization_losses
btrainable_variables
c	variables
d	keras_api
h

ekernel
fbias
gregularization_losses
htrainable_variables
i	variables
j	keras_api
 
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
regularization_losses
trainable_variables
?layers
	variables
 
 
b

kkernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
	?axis
	lgamma
mbeta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
regularization_losses
trainable_variables
?layers
	variables
b

nkernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
	?axis
	ogamma
pbeta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
 regularization_losses
!trainable_variables
?layers
"	variables
b

qkernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
	?axis
	rgamma
sbeta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
'regularization_losses
(trainable_variables
?layers
)	variables
b

tkernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
	?axis
	ugamma
vbeta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
.regularization_losses
/trainable_variables
?layers
0	variables
b

wkernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
	?axis
	xgamma
ybeta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
5regularization_losses
6trainable_variables
?layers
7	variables
b

zkernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
	?axis
	{gamma
|beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
<regularization_losses
=trainable_variables
?layers
>	variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
@regularization_losses
Atrainable_variables
?layers
B	variables
b

}kernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
	?axis
	~gamma
beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Gregularization_losses
Htrainable_variables
?layers
I	variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Kregularization_losses
Ltrainable_variables
?layers
M	variables
c
?kernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Rregularization_losses
Strainable_variables
?layers
T	variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Vregularization_losses
Wtrainable_variables
?layers
X	variables
c
?kernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
 
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
]regularization_losses
^trainable_variables
?layers
_	variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
aregularization_losses
btrainable_variables
?layers
c	variables
ec
VARIABLE_VALUEconv2d_transpose_6/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv2d_transpose_6/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
 

e0
f1

e0
f1
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
gregularization_losses
htrainable_variables
?layers
i	variables
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
 
 
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

k0

k0
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 

l0
m1

l0
m1
?2
?3
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables

?0
?1
 
 
 

0
1
2
 

n0

n0
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 

o0
p1

o0
p1
?2
?3
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables

?0
?1
 
 
 

0
1
2
 

q0

q0
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 

r0
s1

r0
s1
?2
?3
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables

?0
?1
 
 
 

$0
%1
&2
 

t0

t0
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 

u0
v1

u0
v1
?2
?3
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables

?0
?1
 
 
 

+0
,1
-2
 

w0

w0
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 

x0
y1

x0
y1
?2
?3
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables

?0
?1
 
 
 

20
31
42
 

z0

z0
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 

{0
|1

{0
|1
?2
?3
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables

?0
?1
 
 
 

90
:1
;2
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 

~0
1

~0
1
?2
?3
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables

?0
?1
 
 
 

D0
E1
F2
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 

?0
?1
 
?0
?1
?2
?3
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables

?0
?1
 
 
 

O0
P1
Q2
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 

?0
?1
 
?0
?1
?2
?3
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
 
 
 
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables

?0
?1
 
 
 

Z0
[1
\2
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
'__inference_signature_wrapper_281541202
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
"__inference__traced_save_281543906
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
%__inference__traced_restore_281544057??,
?
h
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_281543454

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
?
M
1__inference_leaky_re_lu_3_layer_call_fn_281543153

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
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_2815380602
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
9__inference_batch_normalization_7_layer_call_fn_281543480

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
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2815390272
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
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_281538406

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
?
G
+__inference_re_lu_3_layer_call_fn_281543665

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
F__inference_re_lu_3_layer_call_and_return_conditional_losses_2815397252
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
?
?
K__inference_sequential_4_layer_call_and_return_conditional_losses_281538213
conv2d_3_input-
conv2d_3_281538199:@?.
batch_normalization_4_281538202:	?.
batch_normalization_4_281538204:	?.
batch_normalization_4_281538206:	?.
batch_normalization_4_281538208:	?
identity??-batch_normalization_4/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputconv2d_3_281538199*
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
G__inference_conv2d_3_layer_call_and_return_conditional_losses_2815380242"
 conv2d_3/StatefulPartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_4_281538202batch_normalization_4_281538204batch_normalization_4_281538206batch_normalization_4_281538208*
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
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2815380452/
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
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_2815380602
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
?
?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_281537769

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
?
?
9__inference_batch_normalization_4_layer_call_fn_281543076

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
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2815381152
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
?
?
K__inference_sequential_4_layer_call_and_return_conditional_losses_281538230
conv2d_3_input-
conv2d_3_281538216:@?.
batch_normalization_4_281538219:	?.
batch_normalization_4_281538221:	?.
batch_normalization_4_281538223:	?.
batch_normalization_4_281538225:	?
identity??-batch_normalization_4/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputconv2d_3_281538216*
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
G__inference_conv2d_3_layer_call_and_return_conditional_losses_2815380242"
 conv2d_3/StatefulPartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_4_281538219batch_normalization_4_281538221batch_normalization_4_281538223batch_normalization_4_281538225*
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
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2815381152/
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
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_2815380602
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
? 
?
Q__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_281539567

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
?
?
0__inference_sequential_3_layer_call_fn_281537850
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
K__inference_sequential_3_layer_call_and_return_conditional_losses_2815378222
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
?
?
0__inference_sequential_2_layer_call_fn_281541922

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
K__inference_sequential_2_layer_call_and_return_conditional_losses_2815374762
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
?
?
K__inference_sequential_5_layer_call_and_return_conditional_losses_281542166

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
?
?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_281542852

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
?
x
L__inference_concatenate_2_layer_call_and_return_conditional_losses_281542601
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
?
?
,__inference_conv2d_4_layer_call_fn_281543165

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
G__inference_conv2d_4_layer_call_and_return_conditional_losses_2815383702
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
?
?
K__inference_sequential_8_layer_call_and_return_conditional_losses_281539519
conv2d_transpose_2_input8
conv2d_transpose_2_281539505:??.
batch_normalization_8_281539508:	?.
batch_normalization_8_281539510:	?.
batch_normalization_8_281539512:	?.
batch_normalization_8_281539514:	?
identity??-batch_normalization_8/StatefulPartitionedCall?*conv2d_transpose_2/StatefulPartitionedCall?
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_2_inputconv2d_transpose_2_281539505*
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
Q__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_2815392602,
*conv2d_transpose_2/StatefulPartitionedCall?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_8_281539508batch_normalization_8_281539510batch_normalization_8_281539512batch_normalization_8_281539514*
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
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2815392902/
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
F__inference_re_lu_2_layer_call_and_return_conditional_losses_2815394182
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
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_281538045

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
?
?
K__inference_sequential_5_layer_call_and_return_conditional_losses_281538576
conv2d_4_input.
conv2d_4_281538562:??.
batch_normalization_5_281538565:	?.
batch_normalization_5_281538567:	?.
batch_normalization_5_281538569:	?.
batch_normalization_5_281538571:	?
identity??-batch_normalization_5/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallconv2d_4_inputconv2d_4_281538562*
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
G__inference_conv2d_4_layer_call_and_return_conditional_losses_2815383702"
 conv2d_4/StatefulPartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_5_281538565batch_normalization_5_281538567batch_normalization_5_281538569batch_normalization_5_281538571*
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
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2815384612/
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
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_2815384062
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
?
h
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_281543306

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
0__inference_sequential_3_layer_call_fn_281537730
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
K__inference_sequential_3_layer_call_and_return_conditional_losses_2815377172
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
?
?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_281537560

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
Q__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_281539260

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
??
?!
%__inference__traced_restore_281544057
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
?
v
J__inference_concatenate_layer_call_and_return_conditional_losses_281542375
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
?
?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_281538642

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
9__inference_batch_normalization_8_layer_call_fn_281543552

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
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2815393342
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
??
?:
$__inference__wrapped_model_281537192
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
?
?
K__inference_sequential_2_layer_call_and_return_conditional_losses_281537521
conv2d_1_input,
conv2d_1_281537507: -
batch_normalization_2_281537510: -
batch_normalization_2_281537512: -
batch_normalization_2_281537514: -
batch_normalization_2_281537516: 
identity??-batch_normalization_2/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallconv2d_1_inputconv2d_1_281537507*
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
G__inference_conv2d_1_layer_call_and_return_conditional_losses_2815373322"
 conv2d_1/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_2_281537510batch_normalization_2_281537512batch_normalization_2_281537514batch_normalization_2_281537516*
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
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_2815373532/
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
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_2815373682
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
?1
?
K__inference_sequential_8_layer_call_and_return_conditional_losses_281542440

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
9__inference_batch_normalization_6_layer_call_fn_281543359

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
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_2815387372
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
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_281539334

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
x
L__inference_concatenate_1_layer_call_and_return_conditional_losses_281542488
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
?
?
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_281538983

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
?
?
9__inference_batch_normalization_7_layer_call_fn_281543467

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
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2815389832
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
9__inference_batch_normalization_2_layer_call_fn_281542741

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
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_2815372142
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
?
?
K__inference_sequential_9_layer_call_and_return_conditional_losses_281539728

inputs8
conv2d_transpose_3_281539708:??.
batch_normalization_9_281539711:	?.
batch_normalization_9_281539713:	?.
batch_normalization_9_281539715:	?.
batch_normalization_9_281539717:	?
identity??-batch_normalization_9/StatefulPartitionedCall?*conv2d_transpose_3/StatefulPartitionedCall?
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_3_281539708*
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
Q__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_2815395672,
*conv2d_transpose_3/StatefulPartitionedCall?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0batch_normalization_9_281539711batch_normalization_9_281539713batch_normalization_9_281539715batch_normalization_9_281539717*
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
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2815395972/
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
F__inference_re_lu_3_layer_call_and_return_conditional_losses_2815397252
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
9__inference_batch_normalization_9_layer_call_fn_281543611

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
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2815395972
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
9__inference_batch_normalization_3_layer_call_fn_281542928

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
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2815377692
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
0__inference_sequential_9_layer_call_fn_281542503

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
K__inference_sequential_9_layer_call_and_return_conditional_losses_2815397282
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
?#
?
K__inference_sequential_2_layer_call_and_return_conditional_losses_281541966

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
?
G
+__inference_re_lu_4_layer_call_fn_281543737

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
F__inference_re_lu_4_layer_call_and_return_conditional_losses_2815400322
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
?
?
K__inference_sequential_9_layer_call_and_return_conditional_losses_281539843
conv2d_transpose_3_input8
conv2d_transpose_3_281539829:??.
batch_normalization_9_281539832:	?.
batch_normalization_9_281539834:	?.
batch_normalization_9_281539836:	?.
batch_normalization_9_281539838:	?
identity??-batch_normalization_9/StatefulPartitionedCall?*conv2d_transpose_3/StatefulPartitionedCall?
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_3_inputconv2d_transpose_3_281539829*
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
Q__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_2815395672,
*conv2d_transpose_3/StatefulPartitionedCall?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0batch_normalization_9_281539832batch_normalization_9_281539834batch_normalization_9_281539836batch_normalization_9_281539838*
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
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2815396412/
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
F__inference_re_lu_3_layer_call_and_return_conditional_losses_2815397252
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
9__inference_batch_normalization_4_layer_call_fn_281543063

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
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2815380452
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
9__inference_batch_normalization_5_layer_call_fn_281543224

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
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2815384612
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
?8
?
K__inference_sequential_7_layer_call_and_return_conditional_losses_281542362

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
?
b
F__inference_re_lu_1_layer_call_and_return_conditional_losses_281543526

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
?
?
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_281539641

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
?%
?
Q__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_281540185

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
?
?
K__inference_sequential_7_layer_call_and_return_conditional_losses_281539229
conv2d_transpose_1_input8
conv2d_transpose_1_281539215:??.
batch_normalization_7_281539218:	?.
batch_normalization_7_281539220:	?.
batch_normalization_7_281539222:	?.
batch_normalization_7_281539224:	?
identity??-batch_normalization_7/StatefulPartitionedCall?*conv2d_transpose_1/StatefulPartitionedCall?
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_1_inputconv2d_transpose_1_281539215*
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
Q__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_2815389532,
*conv2d_transpose_1/StatefulPartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_7_281539218batch_normalization_7_281539220batch_normalization_7_281539222batch_normalization_7_281539224*
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
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2815390272/
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
F__inference_re_lu_1_layer_call_and_return_conditional_losses_2815391112
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
?	
?
0__inference_sequential_9_layer_call_fn_281539809
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
K__inference_sequential_9_layer_call_and_return_conditional_losses_2815397812
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
?
?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_281542834

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
?
?
,__inference_conv2d_3_layer_call_fn_281543017

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
G__inference_conv2d_3_layer_call_and_return_conditional_losses_2815380242
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
?
?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_281538391

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
?
?
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_281543660

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
?
?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_281542798

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
?
?
0__inference_sequential_7_layer_call_fn_281542277

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
K__inference_sequential_7_layer_call_and_return_conditional_losses_2815391142
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
0__inference_sequential_6_layer_call_fn_281542203

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
K__inference_sequential_6_layer_call_and_return_conditional_losses_2815387552
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
?
?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_281538296

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
G
+__inference_re_lu_1_layer_call_fn_281543521

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
F__inference_re_lu_1_layer_call_and_return_conditional_losses_2815391112
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
?
b
F__inference_re_lu_1_layer_call_and_return_conditional_losses_281539111

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
?
?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_281543130

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
?
?
:__inference_batch_normalization_10_layer_call_fn_281543696

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
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_2815399482
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
?
?
K__inference_sequential_3_layer_call_and_return_conditional_losses_281537717

inputs,
conv2d_2_281537679: @-
batch_normalization_3_281537700:@-
batch_normalization_3_281537702:@-
batch_normalization_3_281537704:@-
batch_normalization_3_281537706:@
identity??-batch_normalization_3/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_281537679*
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
G__inference_conv2d_2_layer_call_and_return_conditional_losses_2815376782"
 conv2d_2/StatefulPartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_3_281537700batch_normalization_3_281537702batch_normalization_3_281537704batch_normalization_3_281537706*
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
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2815376992/
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
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_2815377142
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
?
h
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_281537368

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
9__inference_batch_normalization_3_layer_call_fn_281542915

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
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2815376992
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
0__inference_sequential_2_layer_call_fn_281537384
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
K__inference_sequential_2_layer_call_and_return_conditional_losses_2815373712
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
G__inference_conv2d_4_layer_call_and_return_conditional_losses_281538370

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
?
[
/__inference_concatenate_layer_call_fn_281542368
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
J__inference_concatenate_layer_call_and_return_conditional_losses_2815402752
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
?
?
K__inference_sequential_6_layer_call_and_return_conditional_losses_281538755

inputs.
conv2d_5_281538717:??.
batch_normalization_6_281538738:	?.
batch_normalization_6_281538740:	?.
batch_normalization_6_281538742:	?.
batch_normalization_6_281538744:	?
identity??-batch_normalization_6/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_5_281538717*
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
G__inference_conv2d_5_layer_call_and_return_conditional_losses_2815387162"
 conv2d_5/StatefulPartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_6_281538738batch_normalization_6_281538740batch_normalization_6_281538742batch_normalization_6_281538744*
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
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_2815387372/
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
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_2815387522
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
?
]
1__inference_concatenate_1_layer_call_fn_281542481
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
L__inference_concatenate_1_layer_call_and_return_conditional_losses_2815402952
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
?
b
F__inference_re_lu_4_layer_call_and_return_conditional_losses_281543742

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
?	
?
0__inference_sequential_9_layer_call_fn_281539741
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
K__inference_sequential_9_layer_call_and_return_conditional_losses_2815397282
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
?
?
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_281543714

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
K__inference_sequential_7_layer_call_and_return_conditional_losses_281539114

inputs8
conv2d_transpose_1_281539094:??.
batch_normalization_7_281539097:	?.
batch_normalization_7_281539099:	?.
batch_normalization_7_281539101:	?.
batch_normalization_7_281539103:	?
identity??-batch_normalization_7/StatefulPartitionedCall?*conv2d_transpose_1/StatefulPartitionedCall?
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_1_281539094*
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
Q__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_2815389532,
*conv2d_transpose_1/StatefulPartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_7_281539097batch_normalization_7_281539099batch_normalization_7_281539101batch_normalization_7_281539103*
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
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2815389832/
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
F__inference_re_lu_1_layer_call_and_return_conditional_losses_2815391112
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
?
b
F__inference_re_lu_3_layer_call_and_return_conditional_losses_281543670

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
9__inference_batch_normalization_3_layer_call_fn_281542902

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
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2815376042
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
?a
?
"__inference__traced_save_281543906
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
?
?
0__inference_sequential_5_layer_call_fn_281538422
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
K__inference_sequential_5_layer_call_and_return_conditional_losses_2815384092
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
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_281538807

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
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_281542982

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
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_281537604

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
0__inference_sequential_4_layer_call_fn_281542055

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
K__inference_sequential_4_layer_call_and_return_conditional_losses_2815380632
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
?
?
0__inference_sequential_7_layer_call_fn_281542292

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
K__inference_sequential_7_layer_call_and_return_conditional_losses_2815391672
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
? 
?
Q__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_281538953

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
?Z
?
D__inference_model_layer_call_and_return_conditional_losses_281541101
input_10
sequential_2_281540992: $
sequential_2_281540994: $
sequential_2_281540996: $
sequential_2_281540998: $
sequential_2_281541000: 0
sequential_3_281541003: @$
sequential_3_281541005:@$
sequential_3_281541007:@$
sequential_3_281541009:@$
sequential_3_281541011:@1
sequential_4_281541014:@?%
sequential_4_281541016:	?%
sequential_4_281541018:	?%
sequential_4_281541020:	?%
sequential_4_281541022:	?2
sequential_5_281541025:??%
sequential_5_281541027:	?%
sequential_5_281541029:	?%
sequential_5_281541031:	?%
sequential_5_281541033:	?2
sequential_6_281541036:??%
sequential_6_281541038:	?%
sequential_6_281541040:	?%
sequential_6_281541042:	?%
sequential_6_281541044:	?2
sequential_7_281541047:??%
sequential_7_281541049:	?%
sequential_7_281541051:	?%
sequential_7_281541053:	?%
sequential_7_281541055:	?2
sequential_8_281541059:??%
sequential_8_281541061:	?%
sequential_8_281541063:	?%
sequential_8_281541065:	?%
sequential_8_281541067:	?2
sequential_9_281541071:??%
sequential_9_281541073:	?%
sequential_9_281541075:	?%
sequential_9_281541077:	?%
sequential_9_281541079:	?2
sequential_10_281541083:@?%
sequential_10_281541085:@%
sequential_10_281541087:@%
sequential_10_281541089:@%
sequential_10_281541091:@6
conv2d_transpose_6_281541095:`*
conv2d_transpose_6_281541097:
identity??*conv2d_transpose_6/StatefulPartitionedCall?%sequential_10/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?$sequential_3/StatefulPartitionedCall?$sequential_4/StatefulPartitionedCall?$sequential_5/StatefulPartitionedCall?$sequential_6/StatefulPartitionedCall?$sequential_7/StatefulPartitionedCall?$sequential_8/StatefulPartitionedCall?$sequential_9/StatefulPartitionedCall?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_2_281540992sequential_2_281540994sequential_2_281540996sequential_2_281540998sequential_2_281541000*
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
K__inference_sequential_2_layer_call_and_return_conditional_losses_2815374762&
$sequential_2/StatefulPartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0sequential_3_281541003sequential_3_281541005sequential_3_281541007sequential_3_281541009sequential_3_281541011*
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
K__inference_sequential_3_layer_call_and_return_conditional_losses_2815378222&
$sequential_3/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0sequential_4_281541014sequential_4_281541016sequential_4_281541018sequential_4_281541020sequential_4_281541022*
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
K__inference_sequential_4_layer_call_and_return_conditional_losses_2815381682&
$sequential_4/StatefulPartitionedCall?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0sequential_5_281541025sequential_5_281541027sequential_5_281541029sequential_5_281541031sequential_5_281541033*
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
K__inference_sequential_5_layer_call_and_return_conditional_losses_2815385142&
$sequential_5/StatefulPartitionedCall?
$sequential_6/StatefulPartitionedCallStatefulPartitionedCall-sequential_5/StatefulPartitionedCall:output:0sequential_6_281541036sequential_6_281541038sequential_6_281541040sequential_6_281541042sequential_6_281541044*
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
K__inference_sequential_6_layer_call_and_return_conditional_losses_2815388602&
$sequential_6/StatefulPartitionedCall?
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall-sequential_6/StatefulPartitionedCall:output:0sequential_7_281541047sequential_7_281541049sequential_7_281541051sequential_7_281541053sequential_7_281541055*
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
K__inference_sequential_7_layer_call_and_return_conditional_losses_2815391672&
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
J__inference_concatenate_layer_call_and_return_conditional_losses_2815402752
concatenate/PartitionedCall?
$sequential_8/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0sequential_8_281541059sequential_8_281541061sequential_8_281541063sequential_8_281541065sequential_8_281541067*
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
K__inference_sequential_8_layer_call_and_return_conditional_losses_2815394742&
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
L__inference_concatenate_1_layer_call_and_return_conditional_losses_2815402952
concatenate_1/PartitionedCall?
$sequential_9/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0sequential_9_281541071sequential_9_281541073sequential_9_281541075sequential_9_281541077sequential_9_281541079*
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
K__inference_sequential_9_layer_call_and_return_conditional_losses_2815397812&
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
L__inference_concatenate_2_layer_call_and_return_conditional_losses_2815403152
concatenate_2/PartitionedCall?
%sequential_10/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0sequential_10_281541083sequential_10_281541085sequential_10_281541087sequential_10_281541089sequential_10_281541091*
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
L__inference_sequential_10_layer_call_and_return_conditional_losses_2815400882'
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
L__inference_concatenate_3_layer_call_and_return_conditional_losses_2815403352
concatenate_3/PartitionedCall?
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0conv2d_transpose_6_281541095conv2d_transpose_6_281541097*
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
Q__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_2815401852,
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
?	
?
1__inference_sequential_10_layer_call_fn_281540116
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
L__inference_sequential_10_layer_call_and_return_conditional_losses_2815400882
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
?
?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_281537950

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
K__inference_sequential_9_layer_call_and_return_conditional_losses_281539781

inputs8
conv2d_transpose_3_281539767:??.
batch_normalization_9_281539770:	?.
batch_normalization_9_281539772:	?.
batch_normalization_9_281539774:	?.
batch_normalization_9_281539776:	?
identity??-batch_normalization_9/StatefulPartitionedCall?*conv2d_transpose_3/StatefulPartitionedCall?
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_3_281539767*
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
Q__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_2815395672,
*conv2d_transpose_3/StatefulPartitionedCall?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0batch_normalization_9_281539770batch_normalization_9_281539772batch_normalization_9_281539774batch_normalization_9_281539776*
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
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2815396412/
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
F__inference_re_lu_3_layer_call_and_return_conditional_losses_2815397252
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
?
?
G__inference_conv2d_3_layer_call_and_return_conditional_losses_281543024

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
K__inference_sequential_8_layer_call_and_return_conditional_losses_281539536
conv2d_transpose_2_input8
conv2d_transpose_2_281539522:??.
batch_normalization_8_281539525:	?.
batch_normalization_8_281539527:	?.
batch_normalization_8_281539529:	?.
batch_normalization_8_281539531:	?
identity??-batch_normalization_8/StatefulPartitionedCall?*conv2d_transpose_2/StatefulPartitionedCall?
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_2_inputconv2d_transpose_2_281539522*
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
Q__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_2815392602,
*conv2d_transpose_2/StatefulPartitionedCall?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_8_281539525batch_normalization_8_281539527batch_normalization_8_281539529batch_normalization_8_281539531*
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
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2815393342/
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
F__inference_re_lu_2_layer_call_and_return_conditional_losses_2815394182
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
?
G
+__inference_re_lu_2_layer_call_fn_281543593

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
F__inference_re_lu_2_layer_call_and_return_conditional_losses_2815394182
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
?
?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_281537699

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
:__inference_batch_normalization_10_layer_call_fn_281543683

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
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_2815399042
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
?
?
K__inference_sequential_5_layer_call_and_return_conditional_losses_281538559
conv2d_4_input.
conv2d_4_281538545:??.
batch_normalization_5_281538548:	?.
batch_normalization_5_281538550:	?.
batch_normalization_5_281538552:	?.
batch_normalization_5_281538554:	?
identity??-batch_normalization_5/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallconv2d_4_inputconv2d_4_281538545*
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
G__inference_conv2d_4_layer_call_and_return_conditional_losses_2815383702"
 conv2d_4/StatefulPartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_5_281538548batch_normalization_5_281538550batch_normalization_5_281538552batch_normalization_5_281538554*
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
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2815383912/
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
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_2815384062
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
K__inference_sequential_6_layer_call_and_return_conditional_losses_281538905
conv2d_5_input.
conv2d_5_281538891:??.
batch_normalization_6_281538894:	?.
batch_normalization_6_281538896:	?.
batch_normalization_6_281538898:	?.
batch_normalization_6_281538900:	?
identity??-batch_normalization_6/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallconv2d_5_inputconv2d_5_281538891*
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
G__inference_conv2d_5_layer_call_and_return_conditional_losses_2815387162"
 conv2d_5/StatefulPartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_6_281538894batch_normalization_6_281538896batch_normalization_6_281538898batch_normalization_6_281538900*
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
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_2815387372/
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
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_2815387522
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
?
?
K__inference_sequential_6_layer_call_and_return_conditional_losses_281542240

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
?8
?
L__inference_sequential_10_layer_call_and_return_conditional_losses_281542701

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
?
?
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_281539290

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
?
M
1__inference_leaky_re_lu_5_layer_call_fn_281543449

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
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_2815387522
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
?
?
0__inference_sequential_4_layer_call_fn_281542070

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
K__inference_sequential_4_layer_call_and_return_conditional_losses_2815381682
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
?
?
9__inference_batch_normalization_4_layer_call_fn_281543050

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
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2815379502
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
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_281543642

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
?
?
0__inference_sequential_4_layer_call_fn_281538076
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
K__inference_sequential_4_layer_call_and_return_conditional_losses_2815380632
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
?
?
K__inference_sequential_2_layer_call_and_return_conditional_losses_281537538
conv2d_1_input,
conv2d_1_281537524: -
batch_normalization_2_281537527: -
batch_normalization_2_281537529: -
batch_normalization_2_281537531: -
batch_normalization_2_281537533: 
identity??-batch_normalization_2/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallconv2d_1_inputconv2d_1_281537524*
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
G__inference_conv2d_1_layer_call_and_return_conditional_losses_2815373322"
 conv2d_1/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_2_281537527batch_normalization_2_281537529batch_normalization_2_281537531batch_normalization_2_281537533*
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
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_2815374232/
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
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_2815373682
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
?
?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_281538461

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
?
?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_281537214

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
?
?
6__inference_conv2d_transpose_6_layer_call_fn_281540195

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
Q__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_2815401852
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
?
?
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_281543498

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
x
L__inference_concatenate_3_layer_call_and_return_conditional_losses_281542714
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
?
?
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_281543516

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
0__inference_sequential_3_layer_call_fn_281541996

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
K__inference_sequential_3_layer_call_and_return_conditional_losses_2815378222
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
?
?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_281543426

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
?
t
J__inference_concatenate_layer_call_and_return_conditional_losses_281540275

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
?8
?
K__inference_sequential_9_layer_call_and_return_conditional_losses_281542588

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
?
h
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_281543158

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
?
?
9__inference_batch_normalization_5_layer_call_fn_281543198

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
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2815382962
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
0__inference_sequential_5_layer_call_fn_281538542
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
K__inference_sequential_5_layer_call_and_return_conditional_losses_2815385142
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
?
?
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_281539904

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
?
?
K__inference_sequential_4_layer_call_and_return_conditional_losses_281538168

inputs-
conv2d_3_281538154:@?.
batch_normalization_4_281538157:	?.
batch_normalization_4_281538159:	?.
batch_normalization_4_281538161:	?.
batch_normalization_4_281538163:	?
identity??-batch_normalization_4/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3_281538154*
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
G__inference_conv2d_3_layer_call_and_return_conditional_losses_2815380242"
 conv2d_3/StatefulPartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_4_281538157batch_normalization_4_281538159batch_normalization_4_281538161batch_normalization_4_281538163*
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
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2815381152/
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
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_2815380602
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
)__inference_model_layer_call_fn_281540440
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
D__inference_model_layer_call_and_return_conditional_losses_2815403432
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
?#
?
K__inference_sequential_4_layer_call_and_return_conditional_losses_281542114

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
?
?
G__inference_conv2d_3_layer_call_and_return_conditional_losses_281538024

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
?
?
'__inference_signature_wrapper_281541202
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
$__inference__wrapped_model_2815371922
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
?
h
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_281537714

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
?1
?
K__inference_sequential_7_layer_call_and_return_conditional_losses_281542327

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
?
?
0__inference_sequential_8_layer_call_fn_281542405

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
K__inference_sequential_8_layer_call_and_return_conditional_losses_2815394742
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
K__inference_sequential_4_layer_call_and_return_conditional_losses_281538063

inputs-
conv2d_3_281538025:@?.
batch_normalization_4_281538046:	?.
batch_normalization_4_281538048:	?.
batch_normalization_4_281538050:	?.
batch_normalization_4_281538052:	?
identity??-batch_normalization_4/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3_281538025*
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
G__inference_conv2d_3_layer_call_and_return_conditional_losses_2815380242"
 conv2d_3/StatefulPartitionedCall?
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_4_281538046batch_normalization_4_281538048batch_normalization_4_281538050batch_normalization_4_281538052*
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
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2815380452/
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
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_2815380602
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
?	
?
0__inference_sequential_7_layer_call_fn_281539127
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
K__inference_sequential_7_layer_call_and_return_conditional_losses_2815391142
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
?	
?
0__inference_sequential_7_layer_call_fn_281539195
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
K__inference_sequential_7_layer_call_and_return_conditional_losses_2815391672
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
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_281543260

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
6__inference_conv2d_transpose_4_layer_call_fn_281539882

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
Q__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_2815398742
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
?
?
0__inference_sequential_8_layer_call_fn_281542390

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
K__inference_sequential_8_layer_call_and_return_conditional_losses_2815394212
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
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_281537423

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
?
h
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_281538060

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
?
?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_281538737

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
?
?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_281543112

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
9__inference_batch_normalization_5_layer_call_fn_281543185

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
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2815382522
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
?
?
L__inference_sequential_10_layer_call_and_return_conditional_losses_281540150
conv2d_transpose_4_input7
conv2d_transpose_4_281540136:@?.
 batch_normalization_10_281540139:@.
 batch_normalization_10_281540141:@.
 batch_normalization_10_281540143:@.
 batch_normalization_10_281540145:@
identity??.batch_normalization_10/StatefulPartitionedCall?*conv2d_transpose_4/StatefulPartitionedCall?
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_4_inputconv2d_transpose_4_281540136*
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
Q__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_2815398742,
*conv2d_transpose_4/StatefulPartitionedCall?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0 batch_normalization_10_281540139 batch_normalization_10_281540141 batch_normalization_10_281540143 batch_normalization_10_281540145*
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
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_28153994820
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
F__inference_re_lu_4_layer_call_and_return_conditional_losses_2815400322
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
?
?
K__inference_sequential_3_layer_call_and_return_conditional_losses_281537822

inputs,
conv2d_2_281537808: @-
batch_normalization_3_281537811:@-
batch_normalization_3_281537813:@-
batch_normalization_3_281537815:@-
batch_normalization_3_281537817:@
identity??-batch_normalization_3/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_281537808*
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
G__inference_conv2d_2_layer_call_and_return_conditional_losses_2815376782"
 conv2d_2/StatefulPartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_3_281537811batch_normalization_3_281537813batch_normalization_3_281537815batch_normalization_3_281537817*
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
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2815377692/
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
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_2815377142
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
?
?
G__inference_conv2d_1_layer_call_and_return_conditional_losses_281542728

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
?8
?
K__inference_sequential_8_layer_call_and_return_conditional_losses_281542475

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
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_281542816

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
?
?
1__inference_sequential_10_layer_call_fn_281542616

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
L__inference_sequential_10_layer_call_and_return_conditional_losses_2815400352
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
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_281543148

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
?
?
K__inference_sequential_2_layer_call_and_return_conditional_losses_281537371

inputs,
conv2d_1_281537333: -
batch_normalization_2_281537354: -
batch_normalization_2_281537356: -
batch_normalization_2_281537358: -
batch_normalization_2_281537360: 
identity??-batch_normalization_2/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1_281537333*
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
G__inference_conv2d_1_layer_call_and_return_conditional_losses_2815373322"
 conv2d_1/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_2_281537354batch_normalization_2_281537356batch_normalization_2_281537358batch_normalization_2_281537360*
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
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_2815373532/
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
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_2815373682
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
?
M
1__inference_leaky_re_lu_1_layer_call_fn_281542857

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
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_2815373682
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
9__inference_batch_normalization_4_layer_call_fn_281543037

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
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_2815379062
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
G__inference_conv2d_1_layer_call_and_return_conditional_losses_281537332

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
?
?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_281543296

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
?
?
9__inference_batch_normalization_6_layer_call_fn_281543372

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
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_2815388072
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
?
?
G__inference_conv2d_5_layer_call_and_return_conditional_losses_281538716

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
?
h
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_281538752

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
?
?
9__inference_batch_normalization_9_layer_call_fn_281543624

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
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2815396412
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
G__inference_conv2d_4_layer_call_and_return_conditional_losses_281543172

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
?#
?
K__inference_sequential_6_layer_call_and_return_conditional_losses_281542262

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
?
?
K__inference_sequential_2_layer_call_and_return_conditional_losses_281541944

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
?
?
0__inference_sequential_6_layer_call_fn_281538888
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
K__inference_sequential_6_layer_call_and_return_conditional_losses_2815388602
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
?
]
1__inference_concatenate_3_layer_call_fn_281542707
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
L__inference_concatenate_3_layer_call_and_return_conditional_losses_2815403352
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
?
?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_281542964

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
0__inference_sequential_2_layer_call_fn_281537504
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
K__inference_sequential_2_layer_call_and_return_conditional_losses_2815374762
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
?
?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_281543278

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
?
?
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_281543570

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
K__inference_sequential_5_layer_call_and_return_conditional_losses_281538514

inputs.
conv2d_4_281538500:??.
batch_normalization_5_281538503:	?.
batch_normalization_5_281538505:	?.
batch_normalization_5_281538507:	?.
batch_normalization_5_281538509:	?
identity??-batch_normalization_5/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4_281538500*
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
G__inference_conv2d_4_layer_call_and_return_conditional_losses_2815383702"
 conv2d_4/StatefulPartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_5_281538503batch_normalization_5_281538505batch_normalization_5_281538507batch_normalization_5_281538509*
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
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2815384612/
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
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_2815384062
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
?
?
K__inference_sequential_3_layer_call_and_return_conditional_losses_281537867
conv2d_2_input,
conv2d_2_281537853: @-
batch_normalization_3_281537856:@-
batch_normalization_3_281537858:@-
batch_normalization_3_281537860:@-
batch_normalization_3_281537862:@
identity??-batch_normalization_3/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallconv2d_2_inputconv2d_2_281537853*
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
G__inference_conv2d_2_layer_call_and_return_conditional_losses_2815376782"
 conv2d_2/StatefulPartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_3_281537856batch_normalization_3_281537858batch_normalization_3_281537860batch_normalization_3_281537862*
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
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2815376992/
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
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_2815377142
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
?1
?
K__inference_sequential_9_layer_call_and_return_conditional_losses_281542553

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
?
?
9__inference_batch_normalization_2_layer_call_fn_281542754

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
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_2815372582
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
?	
?
0__inference_sequential_8_layer_call_fn_281539502
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
K__inference_sequential_8_layer_call_and_return_conditional_losses_2815394742
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
?
?
K__inference_sequential_9_layer_call_and_return_conditional_losses_281539826
conv2d_transpose_3_input8
conv2d_transpose_3_281539812:??.
batch_normalization_9_281539815:	?.
batch_normalization_9_281539817:	?.
batch_normalization_9_281539819:	?.
batch_normalization_9_281539821:	?
identity??-batch_normalization_9/StatefulPartitionedCall?*conv2d_transpose_3/StatefulPartitionedCall?
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_3_inputconv2d_transpose_3_281539812*
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
Q__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_2815395672,
*conv2d_transpose_3/StatefulPartitionedCall?
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0batch_normalization_9_281539815batch_normalization_9_281539817batch_normalization_9_281539819batch_normalization_9_281539821*
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
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_2815395972/
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
F__inference_re_lu_3_layer_call_and_return_conditional_losses_2815397252
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
?
?
G__inference_conv2d_2_layer_call_and_return_conditional_losses_281542876

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
?
?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_281537258

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
?
?
0__inference_sequential_5_layer_call_fn_281542144

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
K__inference_sequential_5_layer_call_and_return_conditional_losses_2815385142
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
?
?
,__inference_conv2d_1_layer_call_fn_281542721

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
G__inference_conv2d_1_layer_call_and_return_conditional_losses_2815373322
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
,__inference_conv2d_2_layer_call_fn_281542869

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
G__inference_conv2d_2_layer_call_and_return_conditional_losses_2815376782
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
?
?
6__inference_conv2d_transpose_3_layer_call_fn_281539575

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
Q__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_2815395672
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
? 
?
Q__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_281539874

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
?Z
?
D__inference_model_layer_call_and_return_conditional_losses_281540989
input_10
sequential_2_281540880: $
sequential_2_281540882: $
sequential_2_281540884: $
sequential_2_281540886: $
sequential_2_281540888: 0
sequential_3_281540891: @$
sequential_3_281540893:@$
sequential_3_281540895:@$
sequential_3_281540897:@$
sequential_3_281540899:@1
sequential_4_281540902:@?%
sequential_4_281540904:	?%
sequential_4_281540906:	?%
sequential_4_281540908:	?%
sequential_4_281540910:	?2
sequential_5_281540913:??%
sequential_5_281540915:	?%
sequential_5_281540917:	?%
sequential_5_281540919:	?%
sequential_5_281540921:	?2
sequential_6_281540924:??%
sequential_6_281540926:	?%
sequential_6_281540928:	?%
sequential_6_281540930:	?%
sequential_6_281540932:	?2
sequential_7_281540935:??%
sequential_7_281540937:	?%
sequential_7_281540939:	?%
sequential_7_281540941:	?%
sequential_7_281540943:	?2
sequential_8_281540947:??%
sequential_8_281540949:	?%
sequential_8_281540951:	?%
sequential_8_281540953:	?%
sequential_8_281540955:	?2
sequential_9_281540959:??%
sequential_9_281540961:	?%
sequential_9_281540963:	?%
sequential_9_281540965:	?%
sequential_9_281540967:	?2
sequential_10_281540971:@?%
sequential_10_281540973:@%
sequential_10_281540975:@%
sequential_10_281540977:@%
sequential_10_281540979:@6
conv2d_transpose_6_281540983:`*
conv2d_transpose_6_281540985:
identity??*conv2d_transpose_6/StatefulPartitionedCall?%sequential_10/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?$sequential_3/StatefulPartitionedCall?$sequential_4/StatefulPartitionedCall?$sequential_5/StatefulPartitionedCall?$sequential_6/StatefulPartitionedCall?$sequential_7/StatefulPartitionedCall?$sequential_8/StatefulPartitionedCall?$sequential_9/StatefulPartitionedCall?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_2_281540880sequential_2_281540882sequential_2_281540884sequential_2_281540886sequential_2_281540888*
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
K__inference_sequential_2_layer_call_and_return_conditional_losses_2815373712&
$sequential_2/StatefulPartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0sequential_3_281540891sequential_3_281540893sequential_3_281540895sequential_3_281540897sequential_3_281540899*
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
K__inference_sequential_3_layer_call_and_return_conditional_losses_2815377172&
$sequential_3/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0sequential_4_281540902sequential_4_281540904sequential_4_281540906sequential_4_281540908sequential_4_281540910*
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
K__inference_sequential_4_layer_call_and_return_conditional_losses_2815380632&
$sequential_4/StatefulPartitionedCall?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0sequential_5_281540913sequential_5_281540915sequential_5_281540917sequential_5_281540919sequential_5_281540921*
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
K__inference_sequential_5_layer_call_and_return_conditional_losses_2815384092&
$sequential_5/StatefulPartitionedCall?
$sequential_6/StatefulPartitionedCallStatefulPartitionedCall-sequential_5/StatefulPartitionedCall:output:0sequential_6_281540924sequential_6_281540926sequential_6_281540928sequential_6_281540930sequential_6_281540932*
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
K__inference_sequential_6_layer_call_and_return_conditional_losses_2815387552&
$sequential_6/StatefulPartitionedCall?
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall-sequential_6/StatefulPartitionedCall:output:0sequential_7_281540935sequential_7_281540937sequential_7_281540939sequential_7_281540941sequential_7_281540943*
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
K__inference_sequential_7_layer_call_and_return_conditional_losses_2815391142&
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
J__inference_concatenate_layer_call_and_return_conditional_losses_2815402752
concatenate/PartitionedCall?
$sequential_8/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0sequential_8_281540947sequential_8_281540949sequential_8_281540951sequential_8_281540953sequential_8_281540955*
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
K__inference_sequential_8_layer_call_and_return_conditional_losses_2815394212&
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
L__inference_concatenate_1_layer_call_and_return_conditional_losses_2815402952
concatenate_1/PartitionedCall?
$sequential_9/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0sequential_9_281540959sequential_9_281540961sequential_9_281540963sequential_9_281540965sequential_9_281540967*
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
K__inference_sequential_9_layer_call_and_return_conditional_losses_2815397282&
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
L__inference_concatenate_2_layer_call_and_return_conditional_losses_2815403152
concatenate_2/PartitionedCall?
%sequential_10/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0sequential_10_281540971sequential_10_281540973sequential_10_281540975sequential_10_281540977sequential_10_281540979*
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
L__inference_sequential_10_layer_call_and_return_conditional_losses_2815400352'
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
L__inference_concatenate_3_layer_call_and_return_conditional_losses_2815403352
concatenate_3/PartitionedCall?
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0conv2d_transpose_6_281540983conv2d_transpose_6_281540985*
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
Q__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_2815401852,
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
?
?
9__inference_batch_normalization_6_layer_call_fn_281543346

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
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_2815386422
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
K__inference_sequential_6_layer_call_and_return_conditional_losses_281538922
conv2d_5_input.
conv2d_5_281538908:??.
batch_normalization_6_281538911:	?.
batch_normalization_6_281538913:	?.
batch_normalization_6_281538915:	?.
batch_normalization_6_281538917:	?
identity??-batch_normalization_6/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallconv2d_5_inputconv2d_5_281538908*
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
G__inference_conv2d_5_layer_call_and_return_conditional_losses_2815387162"
 conv2d_5/StatefulPartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_6_281538911batch_normalization_6_281538913batch_normalization_6_281538915batch_normalization_6_281538917*
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
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_2815388072/
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
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_2815387522
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
?
?
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_281539948

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
9__inference_batch_normalization_8_layer_call_fn_281543539

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
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2815392902
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
?
v
L__inference_concatenate_3_layer_call_and_return_conditional_losses_281540335

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
?
?
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_281539597

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
K__inference_sequential_2_layer_call_and_return_conditional_losses_281537476

inputs,
conv2d_1_281537462: -
batch_normalization_2_281537465: -
batch_normalization_2_281537467: -
batch_normalization_2_281537469: -
batch_normalization_2_281537471: 
identity??-batch_normalization_2/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1_281537462*
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
G__inference_conv2d_1_layer_call_and_return_conditional_losses_2815373322"
 conv2d_1/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_2_281537465batch_normalization_2_281537467batch_normalization_2_281537469batch_normalization_2_281537471*
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
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_2815374232/
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
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_2815373682
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
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_281542862

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
6__inference_conv2d_transpose_2_layer_call_fn_281539268

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
Q__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_2815392602
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
?
?
)__inference_model_layer_call_fn_281541400

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
D__inference_model_layer_call_and_return_conditional_losses_2815406812
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
?
?
K__inference_sequential_3_layer_call_and_return_conditional_losses_281537884
conv2d_2_input,
conv2d_2_281537870: @-
batch_normalization_3_281537873:@-
batch_normalization_3_281537875:@-
batch_normalization_3_281537877:@-
batch_normalization_3_281537879:@
identity??-batch_normalization_3/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallconv2d_2_inputconv2d_2_281537870*
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
G__inference_conv2d_2_layer_call_and_return_conditional_losses_2815376782"
 conv2d_2/StatefulPartitionedCall?
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_3_281537873batch_normalization_3_281537875batch_normalization_3_281537877batch_normalization_3_281537879*
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
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2815377692/
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
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_2815377142
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
?
?
K__inference_sequential_8_layer_call_and_return_conditional_losses_281539421

inputs8
conv2d_transpose_2_281539401:??.
batch_normalization_8_281539404:	?.
batch_normalization_8_281539406:	?.
batch_normalization_8_281539408:	?.
batch_normalization_8_281539410:	?
identity??-batch_normalization_8/StatefulPartitionedCall?*conv2d_transpose_2/StatefulPartitionedCall?
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_2_281539401*
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
Q__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_2815392602,
*conv2d_transpose_2/StatefulPartitionedCall?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_8_281539404batch_normalization_8_281539406batch_normalization_8_281539408batch_normalization_8_281539410*
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
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2815392902/
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
F__inference_re_lu_2_layer_call_and_return_conditional_losses_2815394182
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
?
?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_281543242

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
?Y
?
D__inference_model_layer_call_and_return_conditional_losses_281540681

inputs0
sequential_2_281540572: $
sequential_2_281540574: $
sequential_2_281540576: $
sequential_2_281540578: $
sequential_2_281540580: 0
sequential_3_281540583: @$
sequential_3_281540585:@$
sequential_3_281540587:@$
sequential_3_281540589:@$
sequential_3_281540591:@1
sequential_4_281540594:@?%
sequential_4_281540596:	?%
sequential_4_281540598:	?%
sequential_4_281540600:	?%
sequential_4_281540602:	?2
sequential_5_281540605:??%
sequential_5_281540607:	?%
sequential_5_281540609:	?%
sequential_5_281540611:	?%
sequential_5_281540613:	?2
sequential_6_281540616:??%
sequential_6_281540618:	?%
sequential_6_281540620:	?%
sequential_6_281540622:	?%
sequential_6_281540624:	?2
sequential_7_281540627:??%
sequential_7_281540629:	?%
sequential_7_281540631:	?%
sequential_7_281540633:	?%
sequential_7_281540635:	?2
sequential_8_281540639:??%
sequential_8_281540641:	?%
sequential_8_281540643:	?%
sequential_8_281540645:	?%
sequential_8_281540647:	?2
sequential_9_281540651:??%
sequential_9_281540653:	?%
sequential_9_281540655:	?%
sequential_9_281540657:	?%
sequential_9_281540659:	?2
sequential_10_281540663:@?%
sequential_10_281540665:@%
sequential_10_281540667:@%
sequential_10_281540669:@%
sequential_10_281540671:@6
conv2d_transpose_6_281540675:`*
conv2d_transpose_6_281540677:
identity??*conv2d_transpose_6/StatefulPartitionedCall?%sequential_10/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?$sequential_3/StatefulPartitionedCall?$sequential_4/StatefulPartitionedCall?$sequential_5/StatefulPartitionedCall?$sequential_6/StatefulPartitionedCall?$sequential_7/StatefulPartitionedCall?$sequential_8/StatefulPartitionedCall?$sequential_9/StatefulPartitionedCall?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallinputssequential_2_281540572sequential_2_281540574sequential_2_281540576sequential_2_281540578sequential_2_281540580*
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
K__inference_sequential_2_layer_call_and_return_conditional_losses_2815374762&
$sequential_2/StatefulPartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0sequential_3_281540583sequential_3_281540585sequential_3_281540587sequential_3_281540589sequential_3_281540591*
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
K__inference_sequential_3_layer_call_and_return_conditional_losses_2815378222&
$sequential_3/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0sequential_4_281540594sequential_4_281540596sequential_4_281540598sequential_4_281540600sequential_4_281540602*
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
K__inference_sequential_4_layer_call_and_return_conditional_losses_2815381682&
$sequential_4/StatefulPartitionedCall?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0sequential_5_281540605sequential_5_281540607sequential_5_281540609sequential_5_281540611sequential_5_281540613*
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
K__inference_sequential_5_layer_call_and_return_conditional_losses_2815385142&
$sequential_5/StatefulPartitionedCall?
$sequential_6/StatefulPartitionedCallStatefulPartitionedCall-sequential_5/StatefulPartitionedCall:output:0sequential_6_281540616sequential_6_281540618sequential_6_281540620sequential_6_281540622sequential_6_281540624*
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
K__inference_sequential_6_layer_call_and_return_conditional_losses_2815388602&
$sequential_6/StatefulPartitionedCall?
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall-sequential_6/StatefulPartitionedCall:output:0sequential_7_281540627sequential_7_281540629sequential_7_281540631sequential_7_281540633sequential_7_281540635*
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
K__inference_sequential_7_layer_call_and_return_conditional_losses_2815391672&
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
J__inference_concatenate_layer_call_and_return_conditional_losses_2815402752
concatenate/PartitionedCall?
$sequential_8/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0sequential_8_281540639sequential_8_281540641sequential_8_281540643sequential_8_281540645sequential_8_281540647*
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
K__inference_sequential_8_layer_call_and_return_conditional_losses_2815394742&
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
L__inference_concatenate_1_layer_call_and_return_conditional_losses_2815402952
concatenate_1/PartitionedCall?
$sequential_9/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0sequential_9_281540651sequential_9_281540653sequential_9_281540655sequential_9_281540657sequential_9_281540659*
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
K__inference_sequential_9_layer_call_and_return_conditional_losses_2815397812&
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
L__inference_concatenate_2_layer_call_and_return_conditional_losses_2815403152
concatenate_2/PartitionedCall?
%sequential_10/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0sequential_10_281540663sequential_10_281540665sequential_10_281540667sequential_10_281540669sequential_10_281540671*
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
L__inference_sequential_10_layer_call_and_return_conditional_losses_2815400882'
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
L__inference_concatenate_3_layer_call_and_return_conditional_losses_2815403352
concatenate_3/PartitionedCall?
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0conv2d_transpose_6_281540675conv2d_transpose_6_281540677*
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
Q__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_2815401852,
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
?
h
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_281543010

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
?
?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_281543444

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
?
?
0__inference_sequential_2_layer_call_fn_281541907

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
K__inference_sequential_2_layer_call_and_return_conditional_losses_2815373712
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
?
b
F__inference_re_lu_4_layer_call_and_return_conditional_losses_281540032

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
?
?
K__inference_sequential_3_layer_call_and_return_conditional_losses_281542018

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
L__inference_sequential_10_layer_call_and_return_conditional_losses_281540088

inputs7
conv2d_transpose_4_281540074:@?.
 batch_normalization_10_281540077:@.
 batch_normalization_10_281540079:@.
 batch_normalization_10_281540081:@.
 batch_normalization_10_281540083:@
identity??.batch_normalization_10/StatefulPartitionedCall?*conv2d_transpose_4/StatefulPartitionedCall?
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_4_281540074*
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
Q__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_2815398742,
*conv2d_transpose_4/StatefulPartitionedCall?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0 batch_normalization_10_281540077 batch_normalization_10_281540079 batch_normalization_10_281540081 batch_normalization_10_281540083*
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
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_28153994820
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
F__inference_re_lu_4_layer_call_and_return_conditional_losses_2815400322
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
?
?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_281543408

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
L__inference_concatenate_2_layer_call_and_return_conditional_losses_281540315

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
?1
?
L__inference_sequential_10_layer_call_and_return_conditional_losses_281542666

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
?Z
?
D__inference_model_layer_call_and_return_conditional_losses_281540343

inputs0
sequential_2_281540202: $
sequential_2_281540204: $
sequential_2_281540206: $
sequential_2_281540208: $
sequential_2_281540210: 0
sequential_3_281540213: @$
sequential_3_281540215:@$
sequential_3_281540217:@$
sequential_3_281540219:@$
sequential_3_281540221:@1
sequential_4_281540224:@?%
sequential_4_281540226:	?%
sequential_4_281540228:	?%
sequential_4_281540230:	?%
sequential_4_281540232:	?2
sequential_5_281540235:??%
sequential_5_281540237:	?%
sequential_5_281540239:	?%
sequential_5_281540241:	?%
sequential_5_281540243:	?2
sequential_6_281540246:??%
sequential_6_281540248:	?%
sequential_6_281540250:	?%
sequential_6_281540252:	?%
sequential_6_281540254:	?2
sequential_7_281540257:??%
sequential_7_281540259:	?%
sequential_7_281540261:	?%
sequential_7_281540263:	?%
sequential_7_281540265:	?2
sequential_8_281540277:??%
sequential_8_281540279:	?%
sequential_8_281540281:	?%
sequential_8_281540283:	?%
sequential_8_281540285:	?2
sequential_9_281540297:??%
sequential_9_281540299:	?%
sequential_9_281540301:	?%
sequential_9_281540303:	?%
sequential_9_281540305:	?2
sequential_10_281540317:@?%
sequential_10_281540319:@%
sequential_10_281540321:@%
sequential_10_281540323:@%
sequential_10_281540325:@6
conv2d_transpose_6_281540337:`*
conv2d_transpose_6_281540339:
identity??*conv2d_transpose_6/StatefulPartitionedCall?%sequential_10/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?$sequential_3/StatefulPartitionedCall?$sequential_4/StatefulPartitionedCall?$sequential_5/StatefulPartitionedCall?$sequential_6/StatefulPartitionedCall?$sequential_7/StatefulPartitionedCall?$sequential_8/StatefulPartitionedCall?$sequential_9/StatefulPartitionedCall?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallinputssequential_2_281540202sequential_2_281540204sequential_2_281540206sequential_2_281540208sequential_2_281540210*
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
K__inference_sequential_2_layer_call_and_return_conditional_losses_2815373712&
$sequential_2/StatefulPartitionedCall?
$sequential_3/StatefulPartitionedCallStatefulPartitionedCall-sequential_2/StatefulPartitionedCall:output:0sequential_3_281540213sequential_3_281540215sequential_3_281540217sequential_3_281540219sequential_3_281540221*
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
K__inference_sequential_3_layer_call_and_return_conditional_losses_2815377172&
$sequential_3/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall-sequential_3/StatefulPartitionedCall:output:0sequential_4_281540224sequential_4_281540226sequential_4_281540228sequential_4_281540230sequential_4_281540232*
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
K__inference_sequential_4_layer_call_and_return_conditional_losses_2815380632&
$sequential_4/StatefulPartitionedCall?
$sequential_5/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0sequential_5_281540235sequential_5_281540237sequential_5_281540239sequential_5_281540241sequential_5_281540243*
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
K__inference_sequential_5_layer_call_and_return_conditional_losses_2815384092&
$sequential_5/StatefulPartitionedCall?
$sequential_6/StatefulPartitionedCallStatefulPartitionedCall-sequential_5/StatefulPartitionedCall:output:0sequential_6_281540246sequential_6_281540248sequential_6_281540250sequential_6_281540252sequential_6_281540254*
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
K__inference_sequential_6_layer_call_and_return_conditional_losses_2815387552&
$sequential_6/StatefulPartitionedCall?
$sequential_7/StatefulPartitionedCallStatefulPartitionedCall-sequential_6/StatefulPartitionedCall:output:0sequential_7_281540257sequential_7_281540259sequential_7_281540261sequential_7_281540263sequential_7_281540265*
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
K__inference_sequential_7_layer_call_and_return_conditional_losses_2815391142&
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
J__inference_concatenate_layer_call_and_return_conditional_losses_2815402752
concatenate/PartitionedCall?
$sequential_8/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0sequential_8_281540277sequential_8_281540279sequential_8_281540281sequential_8_281540283sequential_8_281540285*
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
K__inference_sequential_8_layer_call_and_return_conditional_losses_2815394212&
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
L__inference_concatenate_1_layer_call_and_return_conditional_losses_2815402952
concatenate_1/PartitionedCall?
$sequential_9/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0sequential_9_281540297sequential_9_281540299sequential_9_281540301sequential_9_281540303sequential_9_281540305*
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
K__inference_sequential_9_layer_call_and_return_conditional_losses_2815397282&
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
L__inference_concatenate_2_layer_call_and_return_conditional_losses_2815403152
concatenate_2/PartitionedCall?
%sequential_10/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0sequential_10_281540317sequential_10_281540319sequential_10_281540321sequential_10_281540323sequential_10_281540325*
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
L__inference_sequential_10_layer_call_and_return_conditional_losses_2815400352'
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
L__inference_concatenate_3_layer_call_and_return_conditional_losses_2815403352
concatenate_3/PartitionedCall?
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall&concatenate_3/PartitionedCall:output:0conv2d_transpose_6_281540337conv2d_transpose_6_281540339*
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
Q__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_2815401852,
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
?
?
K__inference_sequential_4_layer_call_and_return_conditional_losses_281542092

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
?
?
0__inference_sequential_4_layer_call_fn_281538196
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
K__inference_sequential_4_layer_call_and_return_conditional_losses_2815381682
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
?	
?
1__inference_sequential_10_layer_call_fn_281540048
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
L__inference_sequential_10_layer_call_and_return_conditional_losses_2815400352
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
?
?
9__inference_batch_normalization_2_layer_call_fn_281542780

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
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_2815374232
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
?
?
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_281543732

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
9__inference_batch_normalization_6_layer_call_fn_281543333

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
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_2815385982
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
ߥ
?6
D__inference_model_layer_call_and_return_conditional_losses_281541646

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
?
b
F__inference_re_lu_3_layer_call_and_return_conditional_losses_281539725

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
?
b
F__inference_re_lu_2_layer_call_and_return_conditional_losses_281539418

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
?
?
L__inference_sequential_10_layer_call_and_return_conditional_losses_281540035

inputs7
conv2d_transpose_4_281540015:@?.
 batch_normalization_10_281540018:@.
 batch_normalization_10_281540020:@.
 batch_normalization_10_281540022:@.
 batch_normalization_10_281540024:@
identity??.batch_normalization_10/StatefulPartitionedCall?*conv2d_transpose_4/StatefulPartitionedCall?
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_4_281540015*
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
Q__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_2815398742,
*conv2d_transpose_4/StatefulPartitionedCall?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0 batch_normalization_10_281540018 batch_normalization_10_281540020 batch_normalization_10_281540022 batch_normalization_10_281540024*
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
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_28153990420
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
F__inference_re_lu_4_layer_call_and_return_conditional_losses_2815400322
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
?
?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_281538115

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
?
?
9__inference_batch_normalization_3_layer_call_fn_281542889

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
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_2815375602
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
9__inference_batch_normalization_5_layer_call_fn_281543211

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
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2815383912
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
?
?
K__inference_sequential_8_layer_call_and_return_conditional_losses_281539474

inputs8
conv2d_transpose_2_281539460:??.
batch_normalization_8_281539463:	?.
batch_normalization_8_281539465:	?.
batch_normalization_8_281539467:	?.
batch_normalization_8_281539469:	?
identity??-batch_normalization_8/StatefulPartitionedCall?*conv2d_transpose_2/StatefulPartitionedCall?
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_2_281539460*
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
Q__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_2815392602,
*conv2d_transpose_2/StatefulPartitionedCall?
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_8_281539463batch_normalization_8_281539465batch_normalization_8_281539467batch_normalization_8_281539469*
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
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_2815393342/
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
F__inference_re_lu_2_layer_call_and_return_conditional_losses_2815394182
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
0__inference_sequential_9_layer_call_fn_281542518

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
K__inference_sequential_9_layer_call_and_return_conditional_losses_2815397812
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
?
?
,__inference_conv2d_5_layer_call_fn_281543313

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
G__inference_conv2d_5_layer_call_and_return_conditional_losses_2815387162
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
?
?
0__inference_sequential_3_layer_call_fn_281541981

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
K__inference_sequential_3_layer_call_and_return_conditional_losses_2815377172
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
1__inference_sequential_10_layer_call_fn_281542631

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
L__inference_sequential_10_layer_call_and_return_conditional_losses_2815400882
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
?
?
)__inference_model_layer_call_fn_281540877
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
D__inference_model_layer_call_and_return_conditional_losses_2815406812
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
?
?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_281538252

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
?
?
0__inference_sequential_6_layer_call_fn_281538768
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
K__inference_sequential_6_layer_call_and_return_conditional_losses_2815387552
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
?
?
K__inference_sequential_6_layer_call_and_return_conditional_losses_281538860

inputs.
conv2d_5_281538846:??.
batch_normalization_6_281538849:	?.
batch_normalization_6_281538851:	?.
batch_normalization_6_281538853:	?.
batch_normalization_6_281538855:	?
identity??-batch_normalization_6/StatefulPartitionedCall? conv2d_5/StatefulPartitionedCall?
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_5_281538846*
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
G__inference_conv2d_5_layer_call_and_return_conditional_losses_2815387162"
 conv2d_5/StatefulPartitionedCall?
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0batch_normalization_6_281538849batch_normalization_6_281538851batch_normalization_6_281538853batch_normalization_6_281538855*
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
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_2815388072/
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
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_2815387522
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
?
b
F__inference_re_lu_2_layer_call_and_return_conditional_losses_281543598

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
?
?
K__inference_sequential_7_layer_call_and_return_conditional_losses_281539167

inputs8
conv2d_transpose_1_281539153:??.
batch_normalization_7_281539156:	?.
batch_normalization_7_281539158:	?.
batch_normalization_7_281539160:	?.
batch_normalization_7_281539162:	?
identity??-batch_normalization_7/StatefulPartitionedCall?*conv2d_transpose_1/StatefulPartitionedCall?
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_transpose_1_281539153*
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
Q__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_2815389532,
*conv2d_transpose_1/StatefulPartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_7_281539156batch_normalization_7_281539158batch_normalization_7_281539160batch_normalization_7_281539162*
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
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2815390272/
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
F__inference_re_lu_1_layer_call_and_return_conditional_losses_2815391112
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
?
?
K__inference_sequential_5_layer_call_and_return_conditional_losses_281538409

inputs.
conv2d_4_281538371:??.
batch_normalization_5_281538392:	?.
batch_normalization_5_281538394:	?.
batch_normalization_5_281538396:	?.
batch_normalization_5_281538398:	?
identity??-batch_normalization_5/StatefulPartitionedCall? conv2d_4/StatefulPartitionedCall?
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_4_281538371*
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
G__inference_conv2d_4_layer_call_and_return_conditional_losses_2815383702"
 conv2d_4/StatefulPartitionedCall?
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_5_281538392batch_normalization_5_281538394batch_normalization_5_281538396batch_normalization_5_281538398*
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
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_2815383912/
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
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_2815384062
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
?
?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_281538598

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
?#
?
K__inference_sequential_3_layer_call_and_return_conditional_losses_281542040

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
?
?
G__inference_conv2d_2_layer_call_and_return_conditional_losses_281537678

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
?
?
0__inference_sequential_5_layer_call_fn_281542129

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
K__inference_sequential_5_layer_call_and_return_conditional_losses_2815384092
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
?
?
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_281539027

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
0__inference_sequential_6_layer_call_fn_281542218

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
K__inference_sequential_6_layer_call_and_return_conditional_losses_2815388602
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
9__inference_batch_normalization_2_layer_call_fn_281542767

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
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_2815373532
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
??
?=
D__inference_model_layer_call_and_return_conditional_losses_281541892

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
?#
?
K__inference_sequential_5_layer_call_and_return_conditional_losses_281542188

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
?
?
L__inference_sequential_10_layer_call_and_return_conditional_losses_281540133
conv2d_transpose_4_input7
conv2d_transpose_4_281540119:@?.
 batch_normalization_10_281540122:@.
 batch_normalization_10_281540124:@.
 batch_normalization_10_281540126:@.
 batch_normalization_10_281540128:@
identity??.batch_normalization_10/StatefulPartitionedCall?*conv2d_transpose_4/StatefulPartitionedCall?
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_4_inputconv2d_transpose_4_281540119*
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
Q__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_2815398742,
*conv2d_transpose_4/StatefulPartitionedCall?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_4/StatefulPartitionedCall:output:0 batch_normalization_10_281540122 batch_normalization_10_281540124 batch_normalization_10_281540126 batch_normalization_10_281540128*
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
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_28153990420
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
F__inference_re_lu_4_layer_call_and_return_conditional_losses_2815400322
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
?
?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_281542946

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
6__inference_conv2d_transpose_1_layer_call_fn_281538961

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
Q__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_2815389532
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
?
?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_281537906

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
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_281543588

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
1__inference_leaky_re_lu_2_layer_call_fn_281543005

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
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_2815377142
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
?
?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_281537353

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
?
?
G__inference_conv2d_5_layer_call_and_return_conditional_losses_281543320

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
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_281543390

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
?
]
1__inference_concatenate_2_layer_call_fn_281542594
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
L__inference_concatenate_2_layer_call_and_return_conditional_losses_2815403152
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
K__inference_sequential_7_layer_call_and_return_conditional_losses_281539212
conv2d_transpose_1_input8
conv2d_transpose_1_281539198:??.
batch_normalization_7_281539201:	?.
batch_normalization_7_281539203:	?.
batch_normalization_7_281539205:	?.
batch_normalization_7_281539207:	?
identity??-batch_normalization_7/StatefulPartitionedCall?*conv2d_transpose_1/StatefulPartitionedCall?
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCallconv2d_transpose_1_inputconv2d_transpose_1_281539198*
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
Q__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_2815389532,
*conv2d_transpose_1/StatefulPartitionedCall?
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_7_281539201batch_normalization_7_281539203batch_normalization_7_281539205batch_normalization_7_281539207*
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
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_2815389832/
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
F__inference_re_lu_1_layer_call_and_return_conditional_losses_2815391112
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
?	
?
0__inference_sequential_8_layer_call_fn_281539434
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
K__inference_sequential_8_layer_call_and_return_conditional_losses_2815394212
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
?
v
L__inference_concatenate_1_layer_call_and_return_conditional_losses_281540295

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
?
?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_281543000

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
?
M
1__inference_leaky_re_lu_4_layer_call_fn_281543301

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
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_2815384062
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
?
?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_281543094

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
)__inference_model_layer_call_fn_281541301

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
D__inference_model_layer_call_and_return_conditional_losses_2815403432
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
regularization_losses
trainable_variables
	variables
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"??
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
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?!
_tf_keras_sequential?!{"name": "sequential_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_1", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 109}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 64, 64, 1]}, "float32", "conv2d_1_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_1_input"}, "shared_object_id": 1}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 6}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 8}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 9}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_1", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 10}]}}}
?#
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
 regularization_losses
!trainable_variables
"	variables
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?!
_tf_keras_sequential?!{"name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_2_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_2", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "inbound_nodes": [[["sequential_2", 1, 0, {}]]], "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 110}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 32, 32, 32]}, "float32", "conv2d_2_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_2_input"}, "shared_object_id": 12}, {"class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 19}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 20}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_2", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 21}]}}}
?#
$layer_with_weights-0
$layer-0
%layer_with_weights-1
%layer-1
&layer-2
'regularization_losses
(trainable_variables
)	variables
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?!
_tf_keras_sequential?!{"name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_3_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_3", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "inbound_nodes": [[["sequential_3", 1, 0, {}]]], "shared_object_id": 33, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 111}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 16, 16, 64]}, "float32", "conv2d_3_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 64]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_3_input"}, "shared_object_id": 23}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 26}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 28}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 30}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 31}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_3", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 32}]}}}
?#
+layer_with_weights-0
+layer-0
,layer_with_weights-1
,layer-1
-layer-2
.regularization_losses
/trainable_variables
0	variables
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?!
_tf_keras_sequential?!{"name": "sequential_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_4_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "inbound_nodes": [[["sequential_4", 1, 0, {}]]], "shared_object_id": 44, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 112}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 128]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 8, 8, 128]}, "float32", "conv2d_4_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_4_input"}, "shared_object_id": 34}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 35}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 37}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 39}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 40}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 41}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 42}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 43}]}}}
?#
2layer_with_weights-0
2layer-0
3layer_with_weights-1
3layer-1
4layer-2
5regularization_losses
6trainable_variables
7	variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?!
_tf_keras_sequential?!{"name": "sequential_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 4, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_5_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_5", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}]}, "inbound_nodes": [[["sequential_5", 1, 0, {}]]], "shared_object_id": 55, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 113}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 4, 4, 128]}, "float32", "conv2d_5_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_6", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 4, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_5_input"}, "shared_object_id": 45}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 46}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 47}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 48}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 49}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 50}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 52}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 53}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_5", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 54}]}}}
?$
9layer_with_weights-0
9layer-0
:layer_with_weights-1
:layer-1
;layer-2
<regularization_losses
=trainable_variables
>	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?"
_tf_keras_sequential?"{"name": "sequential_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2, 2, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_1_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_1", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}]}, "inbound_nodes": [[["sequential_6", 1, 0, {}]]], "shared_object_id": 66, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}, "shared_object_id": 114}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2, 2, 128]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 2, 2, 128]}, "float32", "conv2d_transpose_1_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2, 2, 128]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_1_input"}, "shared_object_id": 56}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 57}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 58}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 59}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 60}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 61}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 62}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 63}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 64}, {"class_name": "ReLU", "config": {"name": "re_lu_1", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 65}]}}}
?
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["sequential_7", 1, 0, {}], ["sequential_5", 1, 0, {}]]], "shared_object_id": 67, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 4, 4, 128]}, {"class_name": "TensorShape", "items": [null, 4, 4, 128]}]}
?$
Dlayer_with_weights-0
Dlayer-0
Elayer_with_weights-1
Elayer-1
Flayer-2
Gregularization_losses
Htrainable_variables
I	variables
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?"
_tf_keras_sequential?"{"name": "sequential_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 4, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_2_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_2", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_2", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}]}, "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 78, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}, "shared_object_id": 115}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 256]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 4, 4, 256]}, "float32", "conv2d_transpose_2_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4, 4, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_2_input"}, "shared_object_id": 68}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_2", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 69}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 70}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 71}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 72}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 73}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 74}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 75}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 76}, {"class_name": "ReLU", "config": {"name": "re_lu_2", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 77}]}}}
?
Kregularization_losses
Ltrainable_variables
M	variables
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "concatenate_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["sequential_8", 1, 0, {}], ["sequential_4", 1, 0, {}]]], "shared_object_id": 79, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 8, 8, 128]}, {"class_name": "TensorShape", "items": [null, 8, 8, 128]}]}
?$
Olayer_with_weights-0
Olayer-0
Player_with_weights-1
Player-1
Qlayer-2
Rregularization_losses
Strainable_variables
T	variables
U	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?"
_tf_keras_sequential?"{"name": "sequential_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_9", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_3_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_3", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}]}, "inbound_nodes": [[["concatenate_1", 0, 0, {}]]], "shared_object_id": 90, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}, "shared_object_id": 116}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 256]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 8, 8, 256]}, "float32", "conv2d_transpose_3_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_9", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8, 8, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_3_input"}, "shared_object_id": 80}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 81}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 82}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 83}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 84}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 85}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 86}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 87}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 88}, {"class_name": "ReLU", "config": {"name": "re_lu_3", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 89}]}}}
?
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "concatenate_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_2", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["sequential_9", 1, 0, {}], ["sequential_3", 1, 0, {}]]], "shared_object_id": 91, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 16, 16, 128]}, {"class_name": "TensorShape", "items": [null, 16, 16, 64]}]}
?$
Zlayer_with_weights-0
Zlayer-0
[layer_with_weights-1
[layer-1
\layer-2
]regularization_losses
^trainable_variables
_	variables
`	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?#
_tf_keras_sequential?"{"name": "sequential_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 192]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_4_input"}}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_4", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}]}, "inbound_nodes": [[["concatenate_2", 0, 0, {}]]], "shared_object_id": 102, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 192}}, "shared_object_id": 117}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 192]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 16, 16, 192]}, "float32", "conv2d_transpose_4_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 16, 16, 192]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_transpose_4_input"}, "shared_object_id": 92}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 93}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 94}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 95}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 96}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 97}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 98}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 99}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 100}, {"class_name": "ReLU", "config": {"name": "re_lu_4", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 101}]}}}
?
aregularization_losses
btrainable_variables
c	variables
d	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "concatenate_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate_3", "trainable": true, "dtype": "float32", "axis": -1}, "inbound_nodes": [[["sequential_10", 1, 0, {}], ["sequential_2", 1, 0, {}]]], "shared_object_id": 103, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 32, 32, 64]}, {"class_name": "TensorShape", "items": [null, 32, 32, 32]}]}
?

ekernel
fbias
gregularization_losses
htrainable_variables
i	variables
j	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?
{"name": "conv2d_transpose_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_6", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "RandomNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}, "shared_object_id": 104}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 105}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["concatenate_3", 0, 0, {}]]], "shared_object_id": 106, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 96}}, "shared_object_id": 118}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 96]}}
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
regularization_losses
trainable_variables
?layers
	variables
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
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 109}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 1]}}
?

	?axis
	lgamma
mbeta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 6}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 8}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}, "shared_object_id": 119}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_1", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 10}
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
regularization_losses
trainable_variables
?layers
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?


nkernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 110}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
?

	?axis
	ogamma
pbeta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 19}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 120}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_2", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 21}
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
 regularization_losses
!trainable_variables
?layers
"	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?


qkernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 111}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
?

	?axis
	rgamma
sbeta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_4", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 28}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 30}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 121}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 128]}}
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_3", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 32}
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
'regularization_losses
(trainable_variables
?layers
)	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?


tkernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 35}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 36}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 37, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 112}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 128]}}
?

	?axis
	ugamma
vbeta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_5", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 39}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 40}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 41}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 42, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 122}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_4", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 43}
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
.regularization_losses
/trainable_variables
?layers
0	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?


wkernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 46}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 47}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 48, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 113}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?

	?axis
	xgamma
ybeta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 49}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 50}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 52}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 53, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 123}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2, 2, 128]}}
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "leaky_re_lu_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_5", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 54}
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
5regularization_losses
6trainable_variables
?layers
7	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

zkernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_transpose_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_1", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 57}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 58}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 59, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}, "shared_object_id": 114}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2, 2, 128]}}
?

	?axis
	{gamma
|beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 60}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 61}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 62}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 63}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 64, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 124}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 128]}}
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "re_lu_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_1", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 65}
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
<regularization_losses
=trainable_variables
?layers
>	variables
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
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
@regularization_losses
Atrainable_variables
?layers
B	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

}kernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_transpose_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_2", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 69}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 70}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 71, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}, "shared_object_id": 115}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4, 4, 256]}}
?

	?axis
	~gamma
beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 72}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 73}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 74}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 75}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 76, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 125}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 128]}}
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "re_lu_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_2", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 77}
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Gregularization_losses
Htrainable_variables
?layers
I	variables
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
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Kregularization_losses
Ltrainable_variables
?layers
M	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?kernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_transpose_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_3", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 81}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 82}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 83, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}, "shared_object_id": 116}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 256]}}
?

	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 84}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 85}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 86}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 87}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 88, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 126}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 128]}}
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "re_lu_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_3", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 89}
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Rregularization_losses
Strainable_variables
?layers
T	variables
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
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Vregularization_losses
Wtrainable_variables
?layers
X	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?kernel
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_transpose_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 93}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 94}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "shared_object_id": 95, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 192}}, "shared_object_id": 117}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 192]}}
?

	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "batch_normalization_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 96}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 97}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 98}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 99}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 100, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 127}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 64]}}
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "re_lu_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_4", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 101}
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
]regularization_losses
^trainable_variables
?layers
_	variables
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
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
aregularization_losses
btrainable_variables
?layers
c	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
3:1`2conv2d_transpose_6/kernel
%:#2conv2d_transpose_6/bias
 "
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
gregularization_losses
htrainable_variables
?layers
i	variables
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
'
k0"
trackable_list_wrapper
'
k0"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
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
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
'
n0"
trackable_list_wrapper
'
n0"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
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
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
'
q0"
trackable_list_wrapper
'
q0"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
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
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
$0
%1
&2"
trackable_list_wrapper
 "
trackable_list_wrapper
'
t0"
trackable_list_wrapper
'
t0"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
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
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
'
w0"
trackable_list_wrapper
'
w0"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
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
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
20
31
42"
trackable_list_wrapper
 "
trackable_list_wrapper
'
z0"
trackable_list_wrapper
'
z0"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
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
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
90
:1
;2"
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
'
}0"
trackable_list_wrapper
'
}0"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
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
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
D0
E1
F2"
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
(
?0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
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
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
O0
P1
Q2"
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
(
?0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
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
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?trainable_variables
?layers
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
Z0
[1
\2"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
?2?
)__inference_model_layer_call_fn_281540440
)__inference_model_layer_call_fn_281541301
)__inference_model_layer_call_fn_281541400
)__inference_model_layer_call_fn_281540877?
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
D__inference_model_layer_call_and_return_conditional_losses_281541646
D__inference_model_layer_call_and_return_conditional_losses_281541892
D__inference_model_layer_call_and_return_conditional_losses_281540989
D__inference_model_layer_call_and_return_conditional_losses_281541101?
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
$__inference__wrapped_model_281537192?
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
0__inference_sequential_2_layer_call_fn_281537384
0__inference_sequential_2_layer_call_fn_281541907
0__inference_sequential_2_layer_call_fn_281541922
0__inference_sequential_2_layer_call_fn_281537504?
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
K__inference_sequential_2_layer_call_and_return_conditional_losses_281541944
K__inference_sequential_2_layer_call_and_return_conditional_losses_281541966
K__inference_sequential_2_layer_call_and_return_conditional_losses_281537521
K__inference_sequential_2_layer_call_and_return_conditional_losses_281537538?
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
0__inference_sequential_3_layer_call_fn_281537730
0__inference_sequential_3_layer_call_fn_281541981
0__inference_sequential_3_layer_call_fn_281541996
0__inference_sequential_3_layer_call_fn_281537850?
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
K__inference_sequential_3_layer_call_and_return_conditional_losses_281542018
K__inference_sequential_3_layer_call_and_return_conditional_losses_281542040
K__inference_sequential_3_layer_call_and_return_conditional_losses_281537867
K__inference_sequential_3_layer_call_and_return_conditional_losses_281537884?
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
0__inference_sequential_4_layer_call_fn_281538076
0__inference_sequential_4_layer_call_fn_281542055
0__inference_sequential_4_layer_call_fn_281542070
0__inference_sequential_4_layer_call_fn_281538196?
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
K__inference_sequential_4_layer_call_and_return_conditional_losses_281542092
K__inference_sequential_4_layer_call_and_return_conditional_losses_281542114
K__inference_sequential_4_layer_call_and_return_conditional_losses_281538213
K__inference_sequential_4_layer_call_and_return_conditional_losses_281538230?
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
0__inference_sequential_5_layer_call_fn_281538422
0__inference_sequential_5_layer_call_fn_281542129
0__inference_sequential_5_layer_call_fn_281542144
0__inference_sequential_5_layer_call_fn_281538542?
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
K__inference_sequential_5_layer_call_and_return_conditional_losses_281542166
K__inference_sequential_5_layer_call_and_return_conditional_losses_281542188
K__inference_sequential_5_layer_call_and_return_conditional_losses_281538559
K__inference_sequential_5_layer_call_and_return_conditional_losses_281538576?
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
0__inference_sequential_6_layer_call_fn_281538768
0__inference_sequential_6_layer_call_fn_281542203
0__inference_sequential_6_layer_call_fn_281542218
0__inference_sequential_6_layer_call_fn_281538888?
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
K__inference_sequential_6_layer_call_and_return_conditional_losses_281542240
K__inference_sequential_6_layer_call_and_return_conditional_losses_281542262
K__inference_sequential_6_layer_call_and_return_conditional_losses_281538905
K__inference_sequential_6_layer_call_and_return_conditional_losses_281538922?
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
0__inference_sequential_7_layer_call_fn_281539127
0__inference_sequential_7_layer_call_fn_281542277
0__inference_sequential_7_layer_call_fn_281542292
0__inference_sequential_7_layer_call_fn_281539195?
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
K__inference_sequential_7_layer_call_and_return_conditional_losses_281542327
K__inference_sequential_7_layer_call_and_return_conditional_losses_281542362
K__inference_sequential_7_layer_call_and_return_conditional_losses_281539212
K__inference_sequential_7_layer_call_and_return_conditional_losses_281539229?
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
/__inference_concatenate_layer_call_fn_281542368?
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
J__inference_concatenate_layer_call_and_return_conditional_losses_281542375?
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
0__inference_sequential_8_layer_call_fn_281539434
0__inference_sequential_8_layer_call_fn_281542390
0__inference_sequential_8_layer_call_fn_281542405
0__inference_sequential_8_layer_call_fn_281539502?
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
K__inference_sequential_8_layer_call_and_return_conditional_losses_281542440
K__inference_sequential_8_layer_call_and_return_conditional_losses_281542475
K__inference_sequential_8_layer_call_and_return_conditional_losses_281539519
K__inference_sequential_8_layer_call_and_return_conditional_losses_281539536?
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
1__inference_concatenate_1_layer_call_fn_281542481?
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
L__inference_concatenate_1_layer_call_and_return_conditional_losses_281542488?
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
0__inference_sequential_9_layer_call_fn_281539741
0__inference_sequential_9_layer_call_fn_281542503
0__inference_sequential_9_layer_call_fn_281542518
0__inference_sequential_9_layer_call_fn_281539809?
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
K__inference_sequential_9_layer_call_and_return_conditional_losses_281542553
K__inference_sequential_9_layer_call_and_return_conditional_losses_281542588
K__inference_sequential_9_layer_call_and_return_conditional_losses_281539826
K__inference_sequential_9_layer_call_and_return_conditional_losses_281539843?
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
1__inference_concatenate_2_layer_call_fn_281542594?
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
L__inference_concatenate_2_layer_call_and_return_conditional_losses_281542601?
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
1__inference_sequential_10_layer_call_fn_281540048
1__inference_sequential_10_layer_call_fn_281542616
1__inference_sequential_10_layer_call_fn_281542631
1__inference_sequential_10_layer_call_fn_281540116?
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
L__inference_sequential_10_layer_call_and_return_conditional_losses_281542666
L__inference_sequential_10_layer_call_and_return_conditional_losses_281542701
L__inference_sequential_10_layer_call_and_return_conditional_losses_281540133
L__inference_sequential_10_layer_call_and_return_conditional_losses_281540150?
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
1__inference_concatenate_3_layer_call_fn_281542707?
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
L__inference_concatenate_3_layer_call_and_return_conditional_losses_281542714?
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
6__inference_conv2d_transpose_6_layer_call_fn_281540195?
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
Q__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_281540185?
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
'__inference_signature_wrapper_281541202input_1"?
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
,__inference_conv2d_1_layer_call_fn_281542721?
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
G__inference_conv2d_1_layer_call_and_return_conditional_losses_281542728?
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
9__inference_batch_normalization_2_layer_call_fn_281542741
9__inference_batch_normalization_2_layer_call_fn_281542754
9__inference_batch_normalization_2_layer_call_fn_281542767
9__inference_batch_normalization_2_layer_call_fn_281542780?
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
?2?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_281542798
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_281542816
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_281542834
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_281542852?
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
1__inference_leaky_re_lu_1_layer_call_fn_281542857?
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
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_281542862?
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
,__inference_conv2d_2_layer_call_fn_281542869?
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
G__inference_conv2d_2_layer_call_and_return_conditional_losses_281542876?
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
9__inference_batch_normalization_3_layer_call_fn_281542889
9__inference_batch_normalization_3_layer_call_fn_281542902
9__inference_batch_normalization_3_layer_call_fn_281542915
9__inference_batch_normalization_3_layer_call_fn_281542928?
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
?2?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_281542946
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_281542964
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_281542982
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_281543000?
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
1__inference_leaky_re_lu_2_layer_call_fn_281543005?
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
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_281543010?
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
,__inference_conv2d_3_layer_call_fn_281543017?
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
G__inference_conv2d_3_layer_call_and_return_conditional_losses_281543024?
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
9__inference_batch_normalization_4_layer_call_fn_281543037
9__inference_batch_normalization_4_layer_call_fn_281543050
9__inference_batch_normalization_4_layer_call_fn_281543063
9__inference_batch_normalization_4_layer_call_fn_281543076?
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
?2?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_281543094
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_281543112
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_281543130
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_281543148?
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
1__inference_leaky_re_lu_3_layer_call_fn_281543153?
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
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_281543158?
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
,__inference_conv2d_4_layer_call_fn_281543165?
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
G__inference_conv2d_4_layer_call_and_return_conditional_losses_281543172?
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
9__inference_batch_normalization_5_layer_call_fn_281543185
9__inference_batch_normalization_5_layer_call_fn_281543198
9__inference_batch_normalization_5_layer_call_fn_281543211
9__inference_batch_normalization_5_layer_call_fn_281543224?
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
?2?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_281543242
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_281543260
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_281543278
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_281543296?
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
1__inference_leaky_re_lu_4_layer_call_fn_281543301?
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
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_281543306?
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
,__inference_conv2d_5_layer_call_fn_281543313?
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
G__inference_conv2d_5_layer_call_and_return_conditional_losses_281543320?
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
9__inference_batch_normalization_6_layer_call_fn_281543333
9__inference_batch_normalization_6_layer_call_fn_281543346
9__inference_batch_normalization_6_layer_call_fn_281543359
9__inference_batch_normalization_6_layer_call_fn_281543372?
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
?2?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_281543390
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_281543408
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_281543426
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_281543444?
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
1__inference_leaky_re_lu_5_layer_call_fn_281543449?
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
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_281543454?
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
6__inference_conv2d_transpose_1_layer_call_fn_281538961?
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
Q__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_281538953?
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
9__inference_batch_normalization_7_layer_call_fn_281543467
9__inference_batch_normalization_7_layer_call_fn_281543480?
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
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_281543498
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_281543516?
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
+__inference_re_lu_1_layer_call_fn_281543521?
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
F__inference_re_lu_1_layer_call_and_return_conditional_losses_281543526?
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
6__inference_conv2d_transpose_2_layer_call_fn_281539268?
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
Q__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_281539260?
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
9__inference_batch_normalization_8_layer_call_fn_281543539
9__inference_batch_normalization_8_layer_call_fn_281543552?
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
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_281543570
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_281543588?
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
+__inference_re_lu_2_layer_call_fn_281543593?
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
F__inference_re_lu_2_layer_call_and_return_conditional_losses_281543598?
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
6__inference_conv2d_transpose_3_layer_call_fn_281539575?
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
Q__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_281539567?
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
9__inference_batch_normalization_9_layer_call_fn_281543611
9__inference_batch_normalization_9_layer_call_fn_281543624?
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
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_281543642
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_281543660?
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
+__inference_re_lu_3_layer_call_fn_281543665?
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
F__inference_re_lu_3_layer_call_and_return_conditional_losses_281543670?
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
6__inference_conv2d_transpose_4_layer_call_fn_281539882?
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
Q__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_281539874?
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
:__inference_batch_normalization_10_layer_call_fn_281543683
:__inference_batch_normalization_10_layer_call_fn_281543696?
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
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_281543714
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_281543732?
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
+__inference_re_lu_4_layer_call_fn_281543737?
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
F__inference_re_lu_4_layer_call_and_return_conditional_losses_281543742?
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
$__inference__wrapped_model_281537192?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef8?5
.?+
)?&
input_1?????????@@
? "O?L
J
conv2d_transpose_64?1
conv2d_transpose_6?????????@@?
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_281543714?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
U__inference_batch_normalization_10_layer_call_and_return_conditional_losses_281543732?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
:__inference_batch_normalization_10_layer_call_fn_281543683?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
:__inference_batch_normalization_10_layer_call_fn_281543696?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_281542798?lm??M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_281542816?lm??M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_281542834tlm??;?8
1?.
(?%
inputs?????????   
p 
? "-?*
#? 
0?????????   
? ?
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_281542852tlm??;?8
1?.
(?%
inputs?????????   
p
? "-?*
#? 
0?????????   
? ?
9__inference_batch_normalization_2_layer_call_fn_281542741?lm??M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
9__inference_batch_normalization_2_layer_call_fn_281542754?lm??M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
9__inference_batch_normalization_2_layer_call_fn_281542767glm??;?8
1?.
(?%
inputs?????????   
p 
? " ??????????   ?
9__inference_batch_normalization_2_layer_call_fn_281542780glm??;?8
1?.
(?%
inputs?????????   
p
? " ??????????   ?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_281542946?op??M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_281542964?op??M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_281542982top??;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
T__inference_batch_normalization_3_layer_call_and_return_conditional_losses_281543000top??;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
9__inference_batch_normalization_3_layer_call_fn_281542889?op??M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
9__inference_batch_normalization_3_layer_call_fn_281542902?op??M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
9__inference_batch_normalization_3_layer_call_fn_281542915gop??;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
9__inference_batch_normalization_3_layer_call_fn_281542928gop??;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_281543094?rs??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_281543112?rs??N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_281543130vrs??<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_4_layer_call_and_return_conditional_losses_281543148vrs??<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_4_layer_call_fn_281543037?rs??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_4_layer_call_fn_281543050?rs??N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_4_layer_call_fn_281543063irs??<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_4_layer_call_fn_281543076irs??<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_281543242?uv??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_281543260?uv??N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_281543278vuv??<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_5_layer_call_and_return_conditional_losses_281543296vuv??<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_5_layer_call_fn_281543185?uv??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_5_layer_call_fn_281543198?uv??N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_5_layer_call_fn_281543211iuv??<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_5_layer_call_fn_281543224iuv??<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_281543390?xy??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_281543408?xy??N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_281543426vxy??<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
T__inference_batch_normalization_6_layer_call_and_return_conditional_losses_281543444vxy??<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
9__inference_batch_normalization_6_layer_call_fn_281543333?xy??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_6_layer_call_fn_281543346?xy??N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
9__inference_batch_normalization_6_layer_call_fn_281543359ixy??<?9
2?/
)?&
inputs??????????
p 
? "!????????????
9__inference_batch_normalization_6_layer_call_fn_281543372ixy??<?9
2?/
)?&
inputs??????????
p
? "!????????????
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_281543498?{|??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_7_layer_call_and_return_conditional_losses_281543516?{|??N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
9__inference_batch_normalization_7_layer_call_fn_281543467?{|??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_7_layer_call_fn_281543480?{|??N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_281543570?~??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_8_layer_call_and_return_conditional_losses_281543588?~??N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
9__inference_batch_normalization_8_layer_call_fn_281543539?~??N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_8_layer_call_fn_281543552?~??N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_281543642?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
T__inference_batch_normalization_9_layer_call_and_return_conditional_losses_281543660?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
9__inference_batch_normalization_9_layer_call_fn_281543611?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
9__inference_batch_normalization_9_layer_call_fn_281543624?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
L__inference_concatenate_1_layer_call_and_return_conditional_losses_281542488?~?{
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
1__inference_concatenate_1_layer_call_fn_281542481?~?{
t?q
o?l
=?:
inputs/0,????????????????????????????
+?(
inputs/1??????????
? "!????????????
L__inference_concatenate_2_layer_call_and_return_conditional_losses_281542601?}?z
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
1__inference_concatenate_2_layer_call_fn_281542594?}?z
s?p
n?k
=?:
inputs/0,????????????????????????????
*?'
inputs/1?????????@
? "!????????????
L__inference_concatenate_3_layer_call_and_return_conditional_losses_281542714?|?y
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
1__inference_concatenate_3_layer_call_fn_281542707?|?y
r?o
m?j
<?9
inputs/0+???????????????????????????@
*?'
inputs/1?????????   
? " ??????????  `?
J__inference_concatenate_layer_call_and_return_conditional_losses_281542375?~?{
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
/__inference_concatenate_layer_call_fn_281542368?~?{
t?q
o?l
=?:
inputs/0,????????????????????????????
+?(
inputs/1??????????
? "!????????????
G__inference_conv2d_1_layer_call_and_return_conditional_losses_281542728kk7?4
-?*
(?%
inputs?????????@@
? "-?*
#? 
0?????????   
? ?
,__inference_conv2d_1_layer_call_fn_281542721^k7?4
-?*
(?%
inputs?????????@@
? " ??????????   ?
G__inference_conv2d_2_layer_call_and_return_conditional_losses_281542876kn7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????@
? ?
,__inference_conv2d_2_layer_call_fn_281542869^n7?4
-?*
(?%
inputs?????????   
? " ??????????@?
G__inference_conv2d_3_layer_call_and_return_conditional_losses_281543024lq7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_3_layer_call_fn_281543017_q7?4
-?*
(?%
inputs?????????@
? "!????????????
G__inference_conv2d_4_layer_call_and_return_conditional_losses_281543172mt8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_4_layer_call_fn_281543165`t8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_conv2d_5_layer_call_and_return_conditional_losses_281543320mw8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_conv2d_5_layer_call_fn_281543313`w8?5
.?+
)?&
inputs??????????
? "!????????????
Q__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_281538953?zJ?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
6__inference_conv2d_transpose_1_layer_call_fn_281538961?zJ?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
Q__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_281539260?}J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
6__inference_conv2d_transpose_2_layer_call_fn_281539268?}J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
Q__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_281539567??J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
6__inference_conv2d_transpose_3_layer_call_fn_281539575??J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
Q__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_281539874??J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
6__inference_conv2d_transpose_4_layer_call_fn_281539882??J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
Q__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_281540185?efI?F
??<
:?7
inputs+???????????????????????????`
? "??<
5?2
0+???????????????????????????
? ?
6__inference_conv2d_transpose_6_layer_call_fn_281540195?efI?F
??<
:?7
inputs+???????????????????????????`
? "2?/+????????????????????????????
L__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_281542862h7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????   
? ?
1__inference_leaky_re_lu_1_layer_call_fn_281542857[7?4
-?*
(?%
inputs?????????   
? " ??????????   ?
L__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_281543010h7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
1__inference_leaky_re_lu_2_layer_call_fn_281543005[7?4
-?*
(?%
inputs?????????@
? " ??????????@?
L__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_281543158j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
1__inference_leaky_re_lu_3_layer_call_fn_281543153]8?5
.?+
)?&
inputs??????????
? "!????????????
L__inference_leaky_re_lu_4_layer_call_and_return_conditional_losses_281543306j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
1__inference_leaky_re_lu_4_layer_call_fn_281543301]8?5
.?+
)?&
inputs??????????
? "!????????????
L__inference_leaky_re_lu_5_layer_call_and_return_conditional_losses_281543454j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
1__inference_leaky_re_lu_5_layer_call_fn_281543449]8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_model_layer_call_and_return_conditional_losses_281540989?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef@?=
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
D__inference_model_layer_call_and_return_conditional_losses_281541101?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef@?=
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
D__inference_model_layer_call_and_return_conditional_losses_281541646?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef??<
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
D__inference_model_layer_call_and_return_conditional_losses_281541892?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef??<
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
)__inference_model_layer_call_fn_281540440?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef@?=
6?3
)?&
input_1?????????@@
p 

 
? "2?/+????????????????????????????
)__inference_model_layer_call_fn_281540877?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef@?=
6?3
)?&
input_1?????????@@
p

 
? "2?/+????????????????????????????
)__inference_model_layer_call_fn_281541301?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef??<
5?2
(?%
inputs?????????@@
p 

 
? "2?/+????????????????????????????
)__inference_model_layer_call_fn_281541400?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????ef??<
5?2
(?%
inputs?????????@@
p

 
? "2?/+????????????????????????????
F__inference_re_lu_1_layer_call_and_return_conditional_losses_281543526?J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
+__inference_re_lu_1_layer_call_fn_281543521?J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
F__inference_re_lu_2_layer_call_and_return_conditional_losses_281543598?J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
+__inference_re_lu_2_layer_call_fn_281543593?J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
F__inference_re_lu_3_layer_call_and_return_conditional_losses_281543670?J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
+__inference_re_lu_3_layer_call_fn_281543665?J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
F__inference_re_lu_4_layer_call_and_return_conditional_losses_281543742?I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+???????????????????????????@
? ?
+__inference_re_lu_4_layer_call_fn_281543737I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+???????????????????????????@?
L__inference_sequential_10_layer_call_and_return_conditional_losses_281540133?
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
L__inference_sequential_10_layer_call_and_return_conditional_losses_281540150?
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
L__inference_sequential_10_layer_call_and_return_conditional_losses_281542666}
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
L__inference_sequential_10_layer_call_and_return_conditional_losses_281542701}
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
1__inference_sequential_10_layer_call_fn_281540048?
?????R?O
H?E
;?8
conv2d_transpose_4_input??????????
p 

 
? "2?/+???????????????????????????@?
1__inference_sequential_10_layer_call_fn_281540116?
?????R?O
H?E
;?8
conv2d_transpose_4_input??????????
p

 
? "2?/+???????????????????????????@?
1__inference_sequential_10_layer_call_fn_281542616?
?????@?=
6?3
)?&
inputs??????????
p 

 
? "2?/+???????????????????????????@?
1__inference_sequential_10_layer_call_fn_281542631?
?????@?=
6?3
)?&
inputs??????????
p

 
? "2?/+???????????????????????????@?
K__inference_sequential_2_layer_call_and_return_conditional_losses_281537521?klm??G?D
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
K__inference_sequential_2_layer_call_and_return_conditional_losses_281537538?klm??G?D
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
K__inference_sequential_2_layer_call_and_return_conditional_losses_281541944yklm????<
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
K__inference_sequential_2_layer_call_and_return_conditional_losses_281541966yklm????<
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
0__inference_sequential_2_layer_call_fn_281537384tklm??G?D
=?:
0?-
conv2d_1_input?????????@@
p 

 
? " ??????????   ?
0__inference_sequential_2_layer_call_fn_281537504tklm??G?D
=?:
0?-
conv2d_1_input?????????@@
p

 
? " ??????????   ?
0__inference_sequential_2_layer_call_fn_281541907lklm????<
5?2
(?%
inputs?????????@@
p 

 
? " ??????????   ?
0__inference_sequential_2_layer_call_fn_281541922lklm????<
5?2
(?%
inputs?????????@@
p

 
? " ??????????   ?
K__inference_sequential_3_layer_call_and_return_conditional_losses_281537867?nop??G?D
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
K__inference_sequential_3_layer_call_and_return_conditional_losses_281537884?nop??G?D
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
K__inference_sequential_3_layer_call_and_return_conditional_losses_281542018ynop????<
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
K__inference_sequential_3_layer_call_and_return_conditional_losses_281542040ynop????<
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
0__inference_sequential_3_layer_call_fn_281537730tnop??G?D
=?:
0?-
conv2d_2_input?????????   
p 

 
? " ??????????@?
0__inference_sequential_3_layer_call_fn_281537850tnop??G?D
=?:
0?-
conv2d_2_input?????????   
p

 
? " ??????????@?
0__inference_sequential_3_layer_call_fn_281541981lnop????<
5?2
(?%
inputs?????????   
p 

 
? " ??????????@?
0__inference_sequential_3_layer_call_fn_281541996lnop????<
5?2
(?%
inputs?????????   
p

 
? " ??????????@?
K__inference_sequential_4_layer_call_and_return_conditional_losses_281538213?qrs??G?D
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
K__inference_sequential_4_layer_call_and_return_conditional_losses_281538230?qrs??G?D
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
K__inference_sequential_4_layer_call_and_return_conditional_losses_281542092zqrs????<
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
K__inference_sequential_4_layer_call_and_return_conditional_losses_281542114zqrs????<
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
0__inference_sequential_4_layer_call_fn_281538076uqrs??G?D
=?:
0?-
conv2d_3_input?????????@
p 

 
? "!????????????
0__inference_sequential_4_layer_call_fn_281538196uqrs??G?D
=?:
0?-
conv2d_3_input?????????@
p

 
? "!????????????
0__inference_sequential_4_layer_call_fn_281542055mqrs????<
5?2
(?%
inputs?????????@
p 

 
? "!????????????
0__inference_sequential_4_layer_call_fn_281542070mqrs????<
5?2
(?%
inputs?????????@
p

 
? "!????????????
K__inference_sequential_5_layer_call_and_return_conditional_losses_281538559?tuv??H?E
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
K__inference_sequential_5_layer_call_and_return_conditional_losses_281538576?tuv??H?E
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
K__inference_sequential_5_layer_call_and_return_conditional_losses_281542166{tuv??@?=
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
K__inference_sequential_5_layer_call_and_return_conditional_losses_281542188{tuv??@?=
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
0__inference_sequential_5_layer_call_fn_281538422vtuv??H?E
>?;
1?.
conv2d_4_input??????????
p 

 
? "!????????????
0__inference_sequential_5_layer_call_fn_281538542vtuv??H?E
>?;
1?.
conv2d_4_input??????????
p

 
? "!????????????
0__inference_sequential_5_layer_call_fn_281542129ntuv??@?=
6?3
)?&
inputs??????????
p 

 
? "!????????????
0__inference_sequential_5_layer_call_fn_281542144ntuv??@?=
6?3
)?&
inputs??????????
p

 
? "!????????????
K__inference_sequential_6_layer_call_and_return_conditional_losses_281538905?wxy??H?E
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
K__inference_sequential_6_layer_call_and_return_conditional_losses_281538922?wxy??H?E
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
K__inference_sequential_6_layer_call_and_return_conditional_losses_281542240{wxy??@?=
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
K__inference_sequential_6_layer_call_and_return_conditional_losses_281542262{wxy??@?=
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
0__inference_sequential_6_layer_call_fn_281538768vwxy??H?E
>?;
1?.
conv2d_5_input??????????
p 

 
? "!????????????
0__inference_sequential_6_layer_call_fn_281538888vwxy??H?E
>?;
1?.
conv2d_5_input??????????
p

 
? "!????????????
0__inference_sequential_6_layer_call_fn_281542203nwxy??@?=
6?3
)?&
inputs??????????
p 

 
? "!????????????
0__inference_sequential_6_layer_call_fn_281542218nwxy??@?=
6?3
)?&
inputs??????????
p

 
? "!????????????
K__inference_sequential_7_layer_call_and_return_conditional_losses_281539212?z{|??R?O
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
K__inference_sequential_7_layer_call_and_return_conditional_losses_281539229?z{|??R?O
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
K__inference_sequential_7_layer_call_and_return_conditional_losses_281542327{z{|??@?=
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
K__inference_sequential_7_layer_call_and_return_conditional_losses_281542362{z{|??@?=
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
0__inference_sequential_7_layer_call_fn_281539127?z{|??R?O
H?E
;?8
conv2d_transpose_1_input??????????
p 

 
? "3?0,?????????????????????????????
0__inference_sequential_7_layer_call_fn_281539195?z{|??R?O
H?E
;?8
conv2d_transpose_1_input??????????
p

 
? "3?0,?????????????????????????????
0__inference_sequential_7_layer_call_fn_281542277?z{|??@?=
6?3
)?&
inputs??????????
p 

 
? "3?0,?????????????????????????????
0__inference_sequential_7_layer_call_fn_281542292?z{|??@?=
6?3
)?&
inputs??????????
p

 
? "3?0,?????????????????????????????
K__inference_sequential_8_layer_call_and_return_conditional_losses_281539519?}~??R?O
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
K__inference_sequential_8_layer_call_and_return_conditional_losses_281539536?}~??R?O
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
K__inference_sequential_8_layer_call_and_return_conditional_losses_281542440{}~??@?=
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
K__inference_sequential_8_layer_call_and_return_conditional_losses_281542475{}~??@?=
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
0__inference_sequential_8_layer_call_fn_281539434?}~??R?O
H?E
;?8
conv2d_transpose_2_input??????????
p 

 
? "3?0,?????????????????????????????
0__inference_sequential_8_layer_call_fn_281539502?}~??R?O
H?E
;?8
conv2d_transpose_2_input??????????
p

 
? "3?0,?????????????????????????????
0__inference_sequential_8_layer_call_fn_281542390?}~??@?=
6?3
)?&
inputs??????????
p 

 
? "3?0,?????????????????????????????
0__inference_sequential_8_layer_call_fn_281542405?}~??@?=
6?3
)?&
inputs??????????
p

 
? "3?0,?????????????????????????????
K__inference_sequential_9_layer_call_and_return_conditional_losses_281539826?
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
K__inference_sequential_9_layer_call_and_return_conditional_losses_281539843?
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
K__inference_sequential_9_layer_call_and_return_conditional_losses_281542553~
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
K__inference_sequential_9_layer_call_and_return_conditional_losses_281542588~
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
0__inference_sequential_9_layer_call_fn_281539741?
?????R?O
H?E
;?8
conv2d_transpose_3_input??????????
p 

 
? "3?0,?????????????????????????????
0__inference_sequential_9_layer_call_fn_281539809?
?????R?O
H?E
;?8
conv2d_transpose_3_input??????????
p

 
? "3?0,?????????????????????????????
0__inference_sequential_9_layer_call_fn_281542503?
?????@?=
6?3
)?&
inputs??????????
p 

 
? "3?0,?????????????????????????????
0__inference_sequential_9_layer_call_fn_281542518?
?????@?=
6?3
)?&
inputs??????????
p

 
? "3?0,?????????????????????????????
'__inference_signature_wrapper_281541202?Gklm??nop??qrs??tuv??wxy??z{|??}~????????????efC?@
? 
9?6
4
input_1)?&
input_1?????????@@"O?L
J
conv2d_transpose_64?1
conv2d_transpose_6?????????@@