??
??
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
?
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
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??

~
conv2D/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2D/kernel
w
!conv2D/kernel/Read/ReadVariableOpReadVariableOpconv2D/kernel*&
_output_shapes
: *
dtype0
n
conv2D/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2D/bias
g
conv2D/bias/Read/ReadVariableOpReadVariableOpconv2D/bias*
_output_shapes
: *
dtype0
?
conv2D_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2D_2/kernel
{
#conv2D_2/kernel/Read/ReadVariableOpReadVariableOpconv2D_2/kernel*&
_output_shapes
: @*
dtype0
r
conv2D_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2D_2/bias
k
!conv2D_2/bias/Read/ReadVariableOpReadVariableOpconv2D_2/bias*
_output_shapes
:@*
dtype0
?
conv2D_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?* 
shared_nameconv2D_3/kernel
|
#conv2D_3/kernel/Read/ReadVariableOpReadVariableOpconv2D_3/kernel*'
_output_shapes
:@?*
dtype0
s
conv2D_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2D_3/bias
l
!conv2D_3/bias/Read/ReadVariableOpReadVariableOpconv2D_3/bias*
_output_shapes	
:?*
dtype0
?
dense_hidden/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?@?*$
shared_namedense_hidden/kernel
}
'dense_hidden/kernel/Read/ReadVariableOpReadVariableOpdense_hidden/kernel* 
_output_shapes
:
?@?*
dtype0
{
dense_hidden/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_namedense_hidden/bias
t
%dense_hidden/bias/Read/ReadVariableOpReadVariableOpdense_hidden/bias*
_output_shapes	
:?*
dtype0
?
dense_hidden_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_namedense_hidden_2/kernel
?
)dense_hidden_2/kernel/Read/ReadVariableOpReadVariableOpdense_hidden_2/kernel* 
_output_shapes
:
??*
dtype0

dense_hidden_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_namedense_hidden_2/bias
x
'dense_hidden_2/bias/Read/ReadVariableOpReadVariableOpdense_hidden_2/bias*
_output_shapes	
:?*
dtype0
u
ouput/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_nameouput/kernel
n
 ouput/kernel/Read/ReadVariableOpReadVariableOpouput/kernel*
_output_shapes
:	?*
dtype0
l

ouput/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
ouput/bias
e
ouput/bias/Read/ReadVariableOpReadVariableOp
ouput/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
?
Adam/conv2D/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2D/kernel/m
?
(Adam/conv2D/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2D/kernel/m*&
_output_shapes
: *
dtype0
|
Adam/conv2D/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2D/bias/m
u
&Adam/conv2D/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2D/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2D_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2D_2/kernel/m
?
*Adam/conv2D_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2D_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2D_2/bias/m
y
(Adam/conv2D_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2D_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*'
shared_nameAdam/conv2D_3/kernel/m
?
*Adam/conv2D_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_3/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2D_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2D_3/bias/m
z
(Adam/conv2D_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_3/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_hidden/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?@?*+
shared_nameAdam/dense_hidden/kernel/m
?
.Adam/dense_hidden/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_hidden/kernel/m* 
_output_shapes
:
?@?*
dtype0
?
Adam/dense_hidden/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/dense_hidden/bias/m
?
,Adam/dense_hidden/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_hidden/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_hidden_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/dense_hidden_2/kernel/m
?
0Adam/dense_hidden_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_hidden_2/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_hidden_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/dense_hidden_2/bias/m
?
.Adam/dense_hidden_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_hidden_2/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/ouput/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*$
shared_nameAdam/ouput/kernel/m
|
'Adam/ouput/kernel/m/Read/ReadVariableOpReadVariableOpAdam/ouput/kernel/m*
_output_shapes
:	?*
dtype0
z
Adam/ouput/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/ouput/bias/m
s
%Adam/ouput/bias/m/Read/ReadVariableOpReadVariableOpAdam/ouput/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2D/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2D/kernel/v
?
(Adam/conv2D/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2D/kernel/v*&
_output_shapes
: *
dtype0
|
Adam/conv2D/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2D/bias/v
u
&Adam/conv2D/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2D/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2D_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2D_2/kernel/v
?
*Adam/conv2D_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2D_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2D_2/bias/v
y
(Adam/conv2D_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2D_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*'
shared_nameAdam/conv2D_3/kernel/v
?
*Adam/conv2D_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_3/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2D_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2D_3/bias/v
z
(Adam/conv2D_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_3/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_hidden/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?@?*+
shared_nameAdam/dense_hidden/kernel/v
?
.Adam/dense_hidden/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_hidden/kernel/v* 
_output_shapes
:
?@?*
dtype0
?
Adam/dense_hidden/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/dense_hidden/bias/v
?
,Adam/dense_hidden/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_hidden/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_hidden_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameAdam/dense_hidden_2/kernel/v
?
0Adam/dense_hidden_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_hidden_2/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_hidden_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/dense_hidden_2/bias/v
?
.Adam/dense_hidden_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_hidden_2/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/ouput/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*$
shared_nameAdam/ouput/kernel/v
|
'Adam/ouput/kernel/v/Read/ReadVariableOpReadVariableOpAdam/ouput/kernel/v*
_output_shapes
:	?*
dtype0
z
Adam/ouput/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/ouput/bias/v
s
%Adam/ouput/bias/v/Read/ReadVariableOpReadVariableOpAdam/ouput/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?W
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?W
value?WB?W B?W
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
x

activation

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
x

activation

kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
R
$regularization_losses
%trainable_variables
&	variables
'	keras_api
x
(
activation

)kernel
*bias
+regularization_losses
,trainable_variables
-	variables
.	keras_api
R
/regularization_losses
0trainable_variables
1	variables
2	keras_api
R
3regularization_losses
4trainable_variables
5	variables
6	keras_api
R
7regularization_losses
8trainable_variables
9	variables
:	keras_api
x
;
activation

<kernel
=bias
>regularization_losses
?trainable_variables
@	variables
A	keras_api
x
B
activation

Ckernel
Dbias
Eregularization_losses
Ftrainable_variables
G	variables
H	keras_api
h

Ikernel
Jbias
Kregularization_losses
Ltrainable_variables
M	variables
N	keras_api
?
Oiter

Pbeta_1

Qbeta_2
	Rdecay
Slearning_ratem?m?m?m?)m?*m?<m?=m?Cm?Dm?Im?Jm?v?v?v?v?)v?*v?<v?=v?Cv?Dv?Iv?Jv?
 
V
0
1
2
3
)4
*5
<6
=7
C8
D9
I10
J11
V
0
1
2
3
)4
*5
<6
=7
C8
D9
I10
J11
?

Tlayers
regularization_losses
Ulayer_regularization_losses
trainable_variables
	variables
Vnon_trainable_variables
Wlayer_metrics
Xmetrics
 
R
Yregularization_losses
Ztrainable_variables
[	variables
\	keras_api
YW
VARIABLE_VALUEconv2D/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2D/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?

]layers
regularization_losses
^layer_regularization_losses
trainable_variables
	variables
_non_trainable_variables
`layer_metrics
ametrics
 
 
 
?

blayers
regularization_losses
clayer_regularization_losses
trainable_variables
	variables
dnon_trainable_variables
elayer_metrics
fmetrics
R
gregularization_losses
htrainable_variables
i	variables
j	keras_api
[Y
VARIABLE_VALUEconv2D_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2D_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?

klayers
 regularization_losses
llayer_regularization_losses
!trainable_variables
"	variables
mnon_trainable_variables
nlayer_metrics
ometrics
 
 
 
?

players
$regularization_losses
qlayer_regularization_losses
%trainable_variables
&	variables
rnon_trainable_variables
slayer_metrics
tmetrics
R
uregularization_losses
vtrainable_variables
w	variables
x	keras_api
[Y
VARIABLE_VALUEconv2D_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2D_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

)0
*1

)0
*1
?

ylayers
+regularization_losses
zlayer_regularization_losses
,trainable_variables
-	variables
{non_trainable_variables
|layer_metrics
}metrics
 
 
 
?

~layers
/regularization_losses
layer_regularization_losses
0trainable_variables
1	variables
?non_trainable_variables
?layer_metrics
?metrics
 
 
 
?
?layers
3regularization_losses
 ?layer_regularization_losses
4trainable_variables
5	variables
?non_trainable_variables
?layer_metrics
?metrics
 
 
 
?
?layers
7regularization_losses
 ?layer_regularization_losses
8trainable_variables
9	variables
?non_trainable_variables
?layer_metrics
?metrics
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
_]
VARIABLE_VALUEdense_hidden/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEdense_hidden/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

<0
=1
?
?layers
>regularization_losses
 ?layer_regularization_losses
?trainable_variables
@	variables
?non_trainable_variables
?layer_metrics
?metrics
V
?regularization_losses
?trainable_variables
?	variables
?	keras_api
a_
VARIABLE_VALUEdense_hidden_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEdense_hidden_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

C0
D1

C0
D1
?
?layers
Eregularization_losses
 ?layer_regularization_losses
Ftrainable_variables
G	variables
?non_trainable_variables
?layer_metrics
?metrics
XV
VARIABLE_VALUEouput/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
ouput/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

I0
J1

I0
J1
?
?layers
Kregularization_losses
 ?layer_regularization_losses
Ltrainable_variables
M	variables
?non_trainable_variables
?layer_metrics
?metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
N
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
 
 
 

?0
?1
 
 
 
?
?layers
Yregularization_losses
 ?layer_regularization_losses
Ztrainable_variables
[	variables
?non_trainable_variables
?layer_metrics
?metrics

0
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
?layers
gregularization_losses
 ?layer_regularization_losses
htrainable_variables
i	variables
?non_trainable_variables
?layer_metrics
?metrics

0
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
?layers
uregularization_losses
 ?layer_regularization_losses
vtrainable_variables
w	variables
?non_trainable_variables
?layer_metrics
?metrics

(0
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
?
?layers
?regularization_losses
 ?layer_regularization_losses
?trainable_variables
?	variables
?non_trainable_variables
?layer_metrics
?metrics

;0
 
 
 
 
 
 
 
?
?layers
?regularization_losses
 ?layer_regularization_losses
?trainable_variables
?	variables
?non_trainable_variables
?layer_metrics
?metrics

B0
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
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
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
|z
VARIABLE_VALUEAdam/conv2D/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2D/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2D_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2D_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2D_3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2D_3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense_hidden/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_hidden/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense_hidden_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/dense_hidden_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/ouput/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ouput/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2D/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2D/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2D_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2D_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2D_3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2D_3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense_hidden/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_hidden/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense_hidden_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/dense_hidden_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/ouput/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/ouput/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_inputPlaceholder*/
_output_shapes
:?????????@@*
dtype0*$
shape:?????????@@
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv2D/kernelconv2D/biasconv2D_2/kernelconv2D_2/biasconv2D_3/kernelconv2D_3/biasdense_hidden/kerneldense_hidden/biasdense_hidden_2/kerneldense_hidden_2/biasouput/kernel
ouput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_18071
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2D/kernel/Read/ReadVariableOpconv2D/bias/Read/ReadVariableOp#conv2D_2/kernel/Read/ReadVariableOp!conv2D_2/bias/Read/ReadVariableOp#conv2D_3/kernel/Read/ReadVariableOp!conv2D_3/bias/Read/ReadVariableOp'dense_hidden/kernel/Read/ReadVariableOp%dense_hidden/bias/Read/ReadVariableOp)dense_hidden_2/kernel/Read/ReadVariableOp'dense_hidden_2/bias/Read/ReadVariableOp ouput/kernel/Read/ReadVariableOpouput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/conv2D/kernel/m/Read/ReadVariableOp&Adam/conv2D/bias/m/Read/ReadVariableOp*Adam/conv2D_2/kernel/m/Read/ReadVariableOp(Adam/conv2D_2/bias/m/Read/ReadVariableOp*Adam/conv2D_3/kernel/m/Read/ReadVariableOp(Adam/conv2D_3/bias/m/Read/ReadVariableOp.Adam/dense_hidden/kernel/m/Read/ReadVariableOp,Adam/dense_hidden/bias/m/Read/ReadVariableOp0Adam/dense_hidden_2/kernel/m/Read/ReadVariableOp.Adam/dense_hidden_2/bias/m/Read/ReadVariableOp'Adam/ouput/kernel/m/Read/ReadVariableOp%Adam/ouput/bias/m/Read/ReadVariableOp(Adam/conv2D/kernel/v/Read/ReadVariableOp&Adam/conv2D/bias/v/Read/ReadVariableOp*Adam/conv2D_2/kernel/v/Read/ReadVariableOp(Adam/conv2D_2/bias/v/Read/ReadVariableOp*Adam/conv2D_3/kernel/v/Read/ReadVariableOp(Adam/conv2D_3/bias/v/Read/ReadVariableOp.Adam/dense_hidden/kernel/v/Read/ReadVariableOp,Adam/dense_hidden/bias/v/Read/ReadVariableOp0Adam/dense_hidden_2/kernel/v/Read/ReadVariableOp.Adam/dense_hidden_2/bias/v/Read/ReadVariableOp'Adam/ouput/kernel/v/Read/ReadVariableOp%Adam/ouput/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_18616
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2D/kernelconv2D/biasconv2D_2/kernelconv2D_2/biasconv2D_3/kernelconv2D_3/biasdense_hidden/kerneldense_hidden/biasdense_hidden_2/kerneldense_hidden_2/biasouput/kernel
ouput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2D/kernel/mAdam/conv2D/bias/mAdam/conv2D_2/kernel/mAdam/conv2D_2/bias/mAdam/conv2D_3/kernel/mAdam/conv2D_3/bias/mAdam/dense_hidden/kernel/mAdam/dense_hidden/bias/mAdam/dense_hidden_2/kernel/mAdam/dense_hidden_2/bias/mAdam/ouput/kernel/mAdam/ouput/bias/mAdam/conv2D/kernel/vAdam/conv2D/bias/vAdam/conv2D_2/kernel/vAdam/conv2D_2/bias/vAdam/conv2D_3/kernel/vAdam/conv2D_3/bias/vAdam/dense_hidden/kernel/vAdam/dense_hidden/bias/vAdam/dense_hidden_2/kernel/vAdam/dense_hidden_2/bias/vAdam/ouput/kernel/vAdam/ouput/bias/v*9
Tin2
02.*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_18761??	
?
E
)__inference_pooling_2_layer_call_fn_18320

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
GPU 2J 8? *M
fHRF
D__inference_pooling_2_layer_call_and_return_conditional_losses_176072
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  @:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
?
C__inference_conv2D_2_layer_call_and_return_conditional_losses_18291

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
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
T0*/
_output_shapes
:?????????  @2	
BiasAdd?
leaky_re_lu_1/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????  @*
alpha%???>2
leaky_re_lu_1/LeakyRelu?
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????  @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
^
B__inference_pooling_layer_call_and_return_conditional_losses_18265

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
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
`
D__inference_pooling_3_layer_call_and_return_conditional_losses_17543

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
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
E
)__inference_dropout_3_layer_call_fn_18382

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
GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_176372
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
?
?
4__inference_cnn_13_drop_out_0.25_layer_call_fn_18240

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?
	unknown_5:
?@?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_179002
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
`
D__inference_pooling_2_layer_call_and_return_conditional_losses_18305

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
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
?3
?
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_18034	
input&
conv2d_17998: 
conv2d_18000: (
conv2d_2_18004: @
conv2d_2_18006:@)
conv2d_3_18010:@?
conv2d_3_18012:	?&
dense_hidden_18018:
?@?!
dense_hidden_18020:	?(
dense_hidden_2_18023:
??#
dense_hidden_2_18025:	?
ouput_18028:	?
ouput_18030:
identity??conv2D/StatefulPartitionedCall? conv2D_2/StatefulPartitionedCall? conv2D_3/StatefulPartitionedCall?$dense_hidden/StatefulPartitionedCall?&dense_hidden_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?ouput/StatefulPartitionedCall?
conv2D/StatefulPartitionedCallStatefulPartitionedCallinputconv2d_17998conv2d_18000*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv2D_layer_call_and_return_conditional_losses_175742 
conv2D/StatefulPartitionedCall?
pooling/PartitionedCallPartitionedCall'conv2D/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *K
fFRD
B__inference_pooling_layer_call_and_return_conditional_losses_175842
pooling/PartitionedCall?
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall pooling/PartitionedCall:output:0conv2d_2_18004conv2d_2_18006*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2D_2_layer_call_and_return_conditional_losses_175972"
 conv2D_2/StatefulPartitionedCall?
pooling_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_pooling_2_layer_call_and_return_conditional_losses_176072
pooling_2/PartitionedCall?
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0conv2d_3_18010conv2d_3_18012*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2D_3_layer_call_and_return_conditional_losses_176202"
 conv2D_3/StatefulPartitionedCall?
pooling_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_pooling_3_layer_call_and_return_conditional_losses_176302
pooling_3/PartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_3/PartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_177822#
!dropout_3/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_176452
flatten/PartitionedCall?
$dense_hidden/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_hidden_18018dense_hidden_18020*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_hidden_layer_call_and_return_conditional_losses_176582&
$dense_hidden/StatefulPartitionedCall?
&dense_hidden_2/StatefulPartitionedCallStatefulPartitionedCall-dense_hidden/StatefulPartitionedCall:output:0dense_hidden_2_18023dense_hidden_2_18025*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_176752(
&dense_hidden_2/StatefulPartitionedCall?
ouput/StatefulPartitionedCallStatefulPartitionedCall/dense_hidden_2/StatefulPartitionedCall:output:0ouput_18028ouput_18030*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_ouput_layer_call_and_return_conditional_losses_176922
ouput/StatefulPartitionedCall?
IdentityIdentity&ouput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv2D/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall%^dense_hidden/StatefulPartitionedCall'^dense_hidden_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^ouput/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 2@
conv2D/StatefulPartitionedCallconv2D/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2L
$dense_hidden/StatefulPartitionedCall$dense_hidden/StatefulPartitionedCall2P
&dense_hidden_2/StatefulPartitionedCall&dense_hidden_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2>
ouput/StatefulPartitionedCallouput/StatefulPartitionedCall:V R
/
_output_shapes
:?????????@@

_user_specified_nameinput
?
`
D__inference_pooling_3_layer_call_and_return_conditional_losses_18350

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_18377

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
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
?
?
G__inference_dense_hidden_layer_call_and_return_conditional_losses_18409

inputs2
matmul_readvariableop_resource:
?@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?@?*
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
leaky_re_lu_3/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_3/LeakyRelu?
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
%__inference_ouput_layer_call_fn_18458

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_ouput_layer_call_and_return_conditional_losses_176922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_17675

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_4/LeakyRelu?
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_17645

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????@2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_pooling_layer_call_and_return_conditional_losses_17499

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
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
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_17637

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
.__inference_dense_hidden_2_layer_call_fn_18438

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_176752
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_17782

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
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
?R
?	
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_18182

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@B
'conv2d_3_conv2d_readvariableop_resource:@?7
(conv2d_3_biasadd_readvariableop_resource:	??
+dense_hidden_matmul_readvariableop_resource:
?@?;
,dense_hidden_biasadd_readvariableop_resource:	?A
-dense_hidden_2_matmul_readvariableop_resource:
??=
.dense_hidden_2_biasadd_readvariableop_resource:	?7
$ouput_matmul_readvariableop_resource:	?3
%ouput_biasadd_readvariableop_resource:
identity??conv2D/BiasAdd/ReadVariableOp?conv2D/Conv2D/ReadVariableOp?conv2D_2/BiasAdd/ReadVariableOp?conv2D_2/Conv2D/ReadVariableOp?conv2D_3/BiasAdd/ReadVariableOp?conv2D_3/Conv2D/ReadVariableOp?#dense_hidden/BiasAdd/ReadVariableOp?"dense_hidden/MatMul/ReadVariableOp?%dense_hidden_2/BiasAdd/ReadVariableOp?$dense_hidden_2/MatMul/ReadVariableOp?ouput/BiasAdd/ReadVariableOp?ouput/MatMul/ReadVariableOp?
conv2D/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2D/Conv2D/ReadVariableOp?
conv2D/Conv2DConv2Dinputs$conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2
conv2D/Conv2D?
conv2D/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2D/BiasAdd/ReadVariableOp?
conv2D/BiasAddBiasAddconv2D/Conv2D:output:0%conv2D/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2
conv2D/BiasAdd?
conv2D/leaky_re_lu/LeakyRelu	LeakyReluconv2D/BiasAdd:output:0*/
_output_shapes
:?????????@@ *
alpha%???>2
conv2D/leaky_re_lu/LeakyRelu?
pooling/MaxPoolMaxPool*conv2D/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
2
pooling/MaxPool?
conv2D_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2D_2/Conv2D/ReadVariableOp?
conv2D_2/Conv2DConv2Dpooling/MaxPool:output:0&conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2
conv2D_2/Conv2D?
conv2D_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2D_2/BiasAdd/ReadVariableOp?
conv2D_2/BiasAddBiasAddconv2D_2/Conv2D:output:0'conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2
conv2D_2/BiasAdd?
 conv2D_2/leaky_re_lu_1/LeakyRelu	LeakyReluconv2D_2/BiasAdd:output:0*/
_output_shapes
:?????????  @*
alpha%???>2"
 conv2D_2/leaky_re_lu_1/LeakyRelu?
pooling_2/MaxPoolMaxPool.conv2D_2/leaky_re_lu_1/LeakyRelu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
pooling_2/MaxPool?
conv2D_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2D_3/Conv2D/ReadVariableOp?
conv2D_3/Conv2DConv2Dpooling_2/MaxPool:output:0&conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2D_3/Conv2D?
conv2D_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2D_3/BiasAdd/ReadVariableOp?
conv2D_3/BiasAddBiasAddconv2D_3/Conv2D:output:0'conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2D_3/BiasAdd?
 conv2D_3/leaky_re_lu_2/LeakyRelu	LeakyReluconv2D_3/BiasAdd:output:0*0
_output_shapes
:??????????*
alpha%???>2"
 conv2D_3/leaky_re_lu_2/LeakyRelu?
pooling_3/MaxPoolMaxPool.conv2D_3/leaky_re_lu_2/LeakyRelu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
pooling_3/MaxPoolw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_3/dropout/Const?
dropout_3/dropout/MulMulpooling_3/MaxPool:output:0 dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_3/dropout/Mul|
dropout_3/dropout/ShapeShapepooling_3/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_3/dropout/random_uniform/RandomUniform?
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?>2"
 dropout_3/dropout/GreaterEqual/y?
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_3/dropout/GreaterEqual?
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_3/dropout/Cast?
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_3/dropout/Mul_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2
flatten/Const?
flatten/ReshapeReshapedropout_3/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????@2
flatten/Reshape?
"dense_hidden/MatMul/ReadVariableOpReadVariableOp+dense_hidden_matmul_readvariableop_resource* 
_output_shapes
:
?@?*
dtype02$
"dense_hidden/MatMul/ReadVariableOp?
dense_hidden/MatMulMatMulflatten/Reshape:output:0*dense_hidden/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_hidden/MatMul?
#dense_hidden/BiasAdd/ReadVariableOpReadVariableOp,dense_hidden_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#dense_hidden/BiasAdd/ReadVariableOp?
dense_hidden/BiasAddBiasAdddense_hidden/MatMul:product:0+dense_hidden/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_hidden/BiasAdd?
$dense_hidden/leaky_re_lu_3/LeakyRelu	LeakyReludense_hidden/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>2&
$dense_hidden/leaky_re_lu_3/LeakyRelu?
$dense_hidden_2/MatMul/ReadVariableOpReadVariableOp-dense_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$dense_hidden_2/MatMul/ReadVariableOp?
dense_hidden_2/MatMulMatMul2dense_hidden/leaky_re_lu_3/LeakyRelu:activations:0,dense_hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_hidden_2/MatMul?
%dense_hidden_2/BiasAdd/ReadVariableOpReadVariableOp.dense_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%dense_hidden_2/BiasAdd/ReadVariableOp?
dense_hidden_2/BiasAddBiasAdddense_hidden_2/MatMul:product:0-dense_hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_hidden_2/BiasAdd?
&dense_hidden_2/leaky_re_lu_4/LeakyRelu	LeakyReludense_hidden_2/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>2(
&dense_hidden_2/leaky_re_lu_4/LeakyRelu?
ouput/MatMul/ReadVariableOpReadVariableOp$ouput_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
ouput/MatMul/ReadVariableOp?
ouput/MatMulMatMul4dense_hidden_2/leaky_re_lu_4/LeakyRelu:activations:0#ouput/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ouput/MatMul?
ouput/BiasAdd/ReadVariableOpReadVariableOp%ouput_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
ouput/BiasAdd/ReadVariableOp?
ouput/BiasAddBiasAddouput/MatMul:product:0$ouput/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ouput/BiasAdds
ouput/SigmoidSigmoidouput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
ouput/Sigmoidl
IdentityIdentityouput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv2D/BiasAdd/ReadVariableOp^conv2D/Conv2D/ReadVariableOp ^conv2D_2/BiasAdd/ReadVariableOp^conv2D_2/Conv2D/ReadVariableOp ^conv2D_3/BiasAdd/ReadVariableOp^conv2D_3/Conv2D/ReadVariableOp$^dense_hidden/BiasAdd/ReadVariableOp#^dense_hidden/MatMul/ReadVariableOp&^dense_hidden_2/BiasAdd/ReadVariableOp%^dense_hidden_2/MatMul/ReadVariableOp^ouput/BiasAdd/ReadVariableOp^ouput/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 2>
conv2D/BiasAdd/ReadVariableOpconv2D/BiasAdd/ReadVariableOp2<
conv2D/Conv2D/ReadVariableOpconv2D/Conv2D/ReadVariableOp2B
conv2D_2/BiasAdd/ReadVariableOpconv2D_2/BiasAdd/ReadVariableOp2@
conv2D_2/Conv2D/ReadVariableOpconv2D_2/Conv2D/ReadVariableOp2B
conv2D_3/BiasAdd/ReadVariableOpconv2D_3/BiasAdd/ReadVariableOp2@
conv2D_3/Conv2D/ReadVariableOpconv2D_3/Conv2D/ReadVariableOp2J
#dense_hidden/BiasAdd/ReadVariableOp#dense_hidden/BiasAdd/ReadVariableOp2H
"dense_hidden/MatMul/ReadVariableOp"dense_hidden/MatMul/ReadVariableOp2N
%dense_hidden_2/BiasAdd/ReadVariableOp%dense_hidden_2/BiasAdd/ReadVariableOp2L
$dense_hidden_2/MatMul/ReadVariableOp$dense_hidden_2/MatMul/ReadVariableOp2<
ouput/BiasAdd/ReadVariableOpouput/BiasAdd/ReadVariableOp2:
ouput/MatMul/ReadVariableOpouput/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
C
'__inference_pooling_layer_call_fn_18275

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
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_pooling_layer_call_and_return_conditional_losses_174992
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
?1
?
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_17995	
input&
conv2d_17959: 
conv2d_17961: (
conv2d_2_17965: @
conv2d_2_17967:@)
conv2d_3_17971:@?
conv2d_3_17973:	?&
dense_hidden_17979:
?@?!
dense_hidden_17981:	?(
dense_hidden_2_17984:
??#
dense_hidden_2_17986:	?
ouput_17989:	?
ouput_17991:
identity??conv2D/StatefulPartitionedCall? conv2D_2/StatefulPartitionedCall? conv2D_3/StatefulPartitionedCall?$dense_hidden/StatefulPartitionedCall?&dense_hidden_2/StatefulPartitionedCall?ouput/StatefulPartitionedCall?
conv2D/StatefulPartitionedCallStatefulPartitionedCallinputconv2d_17959conv2d_17961*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv2D_layer_call_and_return_conditional_losses_175742 
conv2D/StatefulPartitionedCall?
pooling/PartitionedCallPartitionedCall'conv2D/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *K
fFRD
B__inference_pooling_layer_call_and_return_conditional_losses_175842
pooling/PartitionedCall?
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall pooling/PartitionedCall:output:0conv2d_2_17965conv2d_2_17967*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2D_2_layer_call_and_return_conditional_losses_175972"
 conv2D_2/StatefulPartitionedCall?
pooling_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_pooling_2_layer_call_and_return_conditional_losses_176072
pooling_2/PartitionedCall?
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0conv2d_3_17971conv2d_3_17973*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2D_3_layer_call_and_return_conditional_losses_176202"
 conv2D_3/StatefulPartitionedCall?
pooling_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_pooling_3_layer_call_and_return_conditional_losses_176302
pooling_3/PartitionedCall?
dropout_3/PartitionedCallPartitionedCall"pooling_3/PartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_176372
dropout_3/PartitionedCall?
flatten/PartitionedCallPartitionedCall"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_176452
flatten/PartitionedCall?
$dense_hidden/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_hidden_17979dense_hidden_17981*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_hidden_layer_call_and_return_conditional_losses_176582&
$dense_hidden/StatefulPartitionedCall?
&dense_hidden_2/StatefulPartitionedCallStatefulPartitionedCall-dense_hidden/StatefulPartitionedCall:output:0dense_hidden_2_17984dense_hidden_2_17986*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_176752(
&dense_hidden_2/StatefulPartitionedCall?
ouput/StatefulPartitionedCallStatefulPartitionedCall/dense_hidden_2/StatefulPartitionedCall:output:0ouput_17989ouput_17991*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_ouput_layer_call_and_return_conditional_losses_176922
ouput/StatefulPartitionedCall?
IdentityIdentity&ouput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv2D/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall%^dense_hidden/StatefulPartitionedCall'^dense_hidden_2/StatefulPartitionedCall^ouput/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 2@
conv2D/StatefulPartitionedCallconv2D/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2L
$dense_hidden/StatefulPartitionedCall$dense_hidden/StatefulPartitionedCall2P
&dense_hidden_2/StatefulPartitionedCall&dense_hidden_2/StatefulPartitionedCall2>
ouput/StatefulPartitionedCallouput/StatefulPartitionedCall:V R
/
_output_shapes
:?????????@@

_user_specified_nameinput
?
E
)__inference_pooling_2_layer_call_fn_18315

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
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_pooling_2_layer_call_and_return_conditional_losses_175212
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
E
)__inference_pooling_3_layer_call_fn_18360

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
GPU 2J 8? *M
fHRF
D__inference_pooling_3_layer_call_and_return_conditional_losses_176302
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
A__inference_conv2D_layer_call_and_return_conditional_losses_17574

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2	
BiasAdd?
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????@@ *
alpha%???>2
leaky_re_lu/LeakyRelu?
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
`
D__inference_pooling_2_layer_call_and_return_conditional_losses_17521

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
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
?
b
)__inference_dropout_3_layer_call_fn_18387

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
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
GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_177822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_conv2D_2_layer_call_and_return_conditional_losses_17597

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
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
T0*/
_output_shapes
:?????????  @2	
BiasAdd?
leaky_re_lu_1/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????  @*
alpha%???>2
leaky_re_lu_1/LeakyRelu?
IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????  @2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?e
?
 __inference__wrapped_model_17490	
inputT
:cnn_13_drop_out_0_25_conv2d_conv2d_readvariableop_resource: I
;cnn_13_drop_out_0_25_conv2d_biasadd_readvariableop_resource: V
<cnn_13_drop_out_0_25_conv2d_2_conv2d_readvariableop_resource: @K
=cnn_13_drop_out_0_25_conv2d_2_biasadd_readvariableop_resource:@W
<cnn_13_drop_out_0_25_conv2d_3_conv2d_readvariableop_resource:@?L
=cnn_13_drop_out_0_25_conv2d_3_biasadd_readvariableop_resource:	?T
@cnn_13_drop_out_0_25_dense_hidden_matmul_readvariableop_resource:
?@?P
Acnn_13_drop_out_0_25_dense_hidden_biasadd_readvariableop_resource:	?V
Bcnn_13_drop_out_0_25_dense_hidden_2_matmul_readvariableop_resource:
??R
Ccnn_13_drop_out_0_25_dense_hidden_2_biasadd_readvariableop_resource:	?L
9cnn_13_drop_out_0_25_ouput_matmul_readvariableop_resource:	?H
:cnn_13_drop_out_0_25_ouput_biasadd_readvariableop_resource:
identity??2cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp?1cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp?4cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp?3cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp?4cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp?3cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp?8cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp?7cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp?:cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp?9cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp?1cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp?0cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp?
1cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOpReadVariableOp:cnn_13_drop_out_0_25_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype023
1cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp?
"cnn_13_drop_out_0.25/conv2D/Conv2DConv2Dinput9cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2$
"cnn_13_drop_out_0.25/conv2D/Conv2D?
2cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOpReadVariableOp;cnn_13_drop_out_0_25_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype024
2cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp?
#cnn_13_drop_out_0.25/conv2D/BiasAddBiasAdd+cnn_13_drop_out_0.25/conv2D/Conv2D:output:0:cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2%
#cnn_13_drop_out_0.25/conv2D/BiasAdd?
1cnn_13_drop_out_0.25/conv2D/leaky_re_lu/LeakyRelu	LeakyRelu,cnn_13_drop_out_0.25/conv2D/BiasAdd:output:0*/
_output_shapes
:?????????@@ *
alpha%???>23
1cnn_13_drop_out_0.25/conv2D/leaky_re_lu/LeakyRelu?
$cnn_13_drop_out_0.25/pooling/MaxPoolMaxPool?cnn_13_drop_out_0.25/conv2D/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
2&
$cnn_13_drop_out_0.25/pooling/MaxPool?
3cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOpReadVariableOp<cnn_13_drop_out_0_25_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp?
$cnn_13_drop_out_0.25/conv2D_2/Conv2DConv2D-cnn_13_drop_out_0.25/pooling/MaxPool:output:0;cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2&
$cnn_13_drop_out_0.25/conv2D_2/Conv2D?
4cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOpReadVariableOp=cnn_13_drop_out_0_25_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype026
4cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp?
%cnn_13_drop_out_0.25/conv2D_2/BiasAddBiasAdd-cnn_13_drop_out_0.25/conv2D_2/Conv2D:output:0<cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2'
%cnn_13_drop_out_0.25/conv2D_2/BiasAdd?
5cnn_13_drop_out_0.25/conv2D_2/leaky_re_lu_1/LeakyRelu	LeakyRelu.cnn_13_drop_out_0.25/conv2D_2/BiasAdd:output:0*/
_output_shapes
:?????????  @*
alpha%???>27
5cnn_13_drop_out_0.25/conv2D_2/leaky_re_lu_1/LeakyRelu?
&cnn_13_drop_out_0.25/pooling_2/MaxPoolMaxPoolCcnn_13_drop_out_0.25/conv2D_2/leaky_re_lu_1/LeakyRelu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&cnn_13_drop_out_0.25/pooling_2/MaxPool?
3cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOpReadVariableOp<cnn_13_drop_out_0_25_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp?
$cnn_13_drop_out_0.25/conv2D_3/Conv2DConv2D/cnn_13_drop_out_0.25/pooling_2/MaxPool:output:0;cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$cnn_13_drop_out_0.25/conv2D_3/Conv2D?
4cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOpReadVariableOp=cnn_13_drop_out_0_25_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp?
%cnn_13_drop_out_0.25/conv2D_3/BiasAddBiasAdd-cnn_13_drop_out_0.25/conv2D_3/Conv2D:output:0<cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2'
%cnn_13_drop_out_0.25/conv2D_3/BiasAdd?
5cnn_13_drop_out_0.25/conv2D_3/leaky_re_lu_2/LeakyRelu	LeakyRelu.cnn_13_drop_out_0.25/conv2D_3/BiasAdd:output:0*0
_output_shapes
:??????????*
alpha%???>27
5cnn_13_drop_out_0.25/conv2D_3/leaky_re_lu_2/LeakyRelu?
&cnn_13_drop_out_0.25/pooling_3/MaxPoolMaxPoolCcnn_13_drop_out_0.25/conv2D_3/leaky_re_lu_2/LeakyRelu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2(
&cnn_13_drop_out_0.25/pooling_3/MaxPool?
'cnn_13_drop_out_0.25/dropout_3/IdentityIdentity/cnn_13_drop_out_0.25/pooling_3/MaxPool:output:0*
T0*0
_output_shapes
:??????????2)
'cnn_13_drop_out_0.25/dropout_3/Identity?
"cnn_13_drop_out_0.25/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2$
"cnn_13_drop_out_0.25/flatten/Const?
$cnn_13_drop_out_0.25/flatten/ReshapeReshape0cnn_13_drop_out_0.25/dropout_3/Identity:output:0+cnn_13_drop_out_0.25/flatten/Const:output:0*
T0*(
_output_shapes
:??????????@2&
$cnn_13_drop_out_0.25/flatten/Reshape?
7cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOpReadVariableOp@cnn_13_drop_out_0_25_dense_hidden_matmul_readvariableop_resource* 
_output_shapes
:
?@?*
dtype029
7cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp?
(cnn_13_drop_out_0.25/dense_hidden/MatMulMatMul-cnn_13_drop_out_0.25/flatten/Reshape:output:0?cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(cnn_13_drop_out_0.25/dense_hidden/MatMul?
8cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOpReadVariableOpAcnn_13_drop_out_0_25_dense_hidden_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp?
)cnn_13_drop_out_0.25/dense_hidden/BiasAddBiasAdd2cnn_13_drop_out_0.25/dense_hidden/MatMul:product:0@cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)cnn_13_drop_out_0.25/dense_hidden/BiasAdd?
9cnn_13_drop_out_0.25/dense_hidden/leaky_re_lu_3/LeakyRelu	LeakyRelu2cnn_13_drop_out_0.25/dense_hidden/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>2;
9cnn_13_drop_out_0.25/dense_hidden/leaky_re_lu_3/LeakyRelu?
9cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOpReadVariableOpBcnn_13_drop_out_0_25_dense_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02;
9cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp?
*cnn_13_drop_out_0.25/dense_hidden_2/MatMulMatMulGcnn_13_drop_out_0.25/dense_hidden/leaky_re_lu_3/LeakyRelu:activations:0Acnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*cnn_13_drop_out_0.25/dense_hidden_2/MatMul?
:cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOpReadVariableOpCcnn_13_drop_out_0_25_dense_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp?
+cnn_13_drop_out_0.25/dense_hidden_2/BiasAddBiasAdd4cnn_13_drop_out_0.25/dense_hidden_2/MatMul:product:0Bcnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd?
;cnn_13_drop_out_0.25/dense_hidden_2/leaky_re_lu_4/LeakyRelu	LeakyRelu4cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>2=
;cnn_13_drop_out_0.25/dense_hidden_2/leaky_re_lu_4/LeakyRelu?
0cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOpReadVariableOp9cnn_13_drop_out_0_25_ouput_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype022
0cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp?
!cnn_13_drop_out_0.25/ouput/MatMulMatMulIcnn_13_drop_out_0.25/dense_hidden_2/leaky_re_lu_4/LeakyRelu:activations:08cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2#
!cnn_13_drop_out_0.25/ouput/MatMul?
1cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOpReadVariableOp:cnn_13_drop_out_0_25_ouput_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp?
"cnn_13_drop_out_0.25/ouput/BiasAddBiasAdd+cnn_13_drop_out_0.25/ouput/MatMul:product:09cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"cnn_13_drop_out_0.25/ouput/BiasAdd?
"cnn_13_drop_out_0.25/ouput/SigmoidSigmoid+cnn_13_drop_out_0.25/ouput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2$
"cnn_13_drop_out_0.25/ouput/Sigmoid?
IdentityIdentity&cnn_13_drop_out_0.25/ouput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp3^cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp2^cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp5^cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp4^cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp5^cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp4^cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp9^cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp8^cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp;^cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp:^cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp2^cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp1^cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 2h
2cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp2cnn_13_drop_out_0.25/conv2D/BiasAdd/ReadVariableOp2f
1cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp1cnn_13_drop_out_0.25/conv2D/Conv2D/ReadVariableOp2l
4cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp4cnn_13_drop_out_0.25/conv2D_2/BiasAdd/ReadVariableOp2j
3cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp3cnn_13_drop_out_0.25/conv2D_2/Conv2D/ReadVariableOp2l
4cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp4cnn_13_drop_out_0.25/conv2D_3/BiasAdd/ReadVariableOp2j
3cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp3cnn_13_drop_out_0.25/conv2D_3/Conv2D/ReadVariableOp2t
8cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp8cnn_13_drop_out_0.25/dense_hidden/BiasAdd/ReadVariableOp2r
7cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp7cnn_13_drop_out_0.25/dense_hidden/MatMul/ReadVariableOp2x
:cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp:cnn_13_drop_out_0.25/dense_hidden_2/BiasAdd/ReadVariableOp2v
9cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp9cnn_13_drop_out_0.25/dense_hidden_2/MatMul/ReadVariableOp2f
1cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp1cnn_13_drop_out_0.25/ouput/BiasAdd/ReadVariableOp2d
0cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp0cnn_13_drop_out_0.25/ouput/MatMul/ReadVariableOp:V R
/
_output_shapes
:?????????@@

_user_specified_nameinput
?
?
&__inference_conv2D_layer_call_fn_18260

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv2D_layer_call_and_return_conditional_losses_175742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?^
?
__inference__traced_save_18616
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop2
.savev2_dense_hidden_kernel_read_readvariableop0
,savev2_dense_hidden_bias_read_readvariableop4
0savev2_dense_hidden_2_kernel_read_readvariableop2
.savev2_dense_hidden_2_bias_read_readvariableop+
'savev2_ouput_kernel_read_readvariableop)
%savev2_ouput_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableop9
5savev2_adam_dense_hidden_kernel_m_read_readvariableop7
3savev2_adam_dense_hidden_bias_m_read_readvariableop;
7savev2_adam_dense_hidden_2_kernel_m_read_readvariableop9
5savev2_adam_dense_hidden_2_bias_m_read_readvariableop2
.savev2_adam_ouput_kernel_m_read_readvariableop0
,savev2_adam_ouput_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableop9
5savev2_adam_dense_hidden_kernel_v_read_readvariableop7
3savev2_adam_dense_hidden_bias_v_read_readvariableop;
7savev2_adam_dense_hidden_2_kernel_v_read_readvariableop9
5savev2_adam_dense_hidden_2_bias_v_read_readvariableop2
.savev2_adam_ouput_kernel_v_read_readvariableop0
,savev2_adam_ouput_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*?
value?B?.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop.savev2_dense_hidden_kernel_read_readvariableop,savev2_dense_hidden_bias_read_readvariableop0savev2_dense_hidden_2_kernel_read_readvariableop.savev2_dense_hidden_2_bias_read_readvariableop'savev2_ouput_kernel_read_readvariableop%savev2_ouput_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop5savev2_adam_dense_hidden_kernel_m_read_readvariableop3savev2_adam_dense_hidden_bias_m_read_readvariableop7savev2_adam_dense_hidden_2_kernel_m_read_readvariableop5savev2_adam_dense_hidden_2_bias_m_read_readvariableop.savev2_adam_ouput_kernel_m_read_readvariableop,savev2_adam_ouput_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop5savev2_adam_dense_hidden_kernel_v_read_readvariableop3savev2_adam_dense_hidden_bias_v_read_readvariableop7savev2_adam_dense_hidden_2_kernel_v_read_readvariableop5savev2_adam_dense_hidden_2_bias_v_read_readvariableop.savev2_adam_ouput_kernel_v_read_readvariableop,savev2_adam_ouput_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	2
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

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : @:@:@?:?:
?@?:?:
??:?:	?:: : : : : : : : : : : : @:@:@?:?:
?@?:?:
??:?:	?:: : : @:@:@?:?:
?@?:?:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:&"
 
_output_shapes
:
?@?:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:&"
 
_output_shapes
:
?@?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:% !

_output_shapes
:	?: !

_output_shapes
::,"(
&
_output_shapes
: : #

_output_shapes
: :,$(
&
_output_shapes
: @: %

_output_shapes
:@:-&)
'
_output_shapes
:@?:!'

_output_shapes	
:?:&("
 
_output_shapes
:
?@?:!)

_output_shapes	
:?:&*"
 
_output_shapes
:
??:!+

_output_shapes	
:?:%,!

_output_shapes
:	?: -

_output_shapes
::.

_output_shapes
: 
?
C
'__inference_pooling_layer_call_fn_18280

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
GPU 2J 8? *K
fFRD
B__inference_pooling_layer_call_and_return_conditional_losses_175842
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@ :W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?
?
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_18429

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
leaky_re_lu_4/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_4/LeakyRelu?
IdentityIdentity%leaky_re_lu_4/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
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
?
E
)__inference_pooling_3_layer_call_fn_18355

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
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_pooling_3_layer_call_and_return_conditional_losses_175432
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
?
?
(__inference_conv2D_2_layer_call_fn_18300

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2D_2_layer_call_and_return_conditional_losses_175972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  @2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????   : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_18071	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?
	unknown_5:
?@?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_174902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????@@

_user_specified_nameinput
?
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_18365

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_pooling_layer_call_and_return_conditional_losses_17584

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@ :W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?
?
C__inference_conv2D_3_layer_call_and_return_conditional_losses_17620

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd?
leaky_re_lu_2/LeakyRelu	LeakyReluBiasAdd:output:0*0
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_2/LeakyRelu?
IdentityIdentity%leaky_re_lu_2/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
!__inference__traced_restore_18761
file_prefix8
assignvariableop_conv2d_kernel: ,
assignvariableop_1_conv2d_bias: <
"assignvariableop_2_conv2d_2_kernel: @.
 assignvariableop_3_conv2d_2_bias:@=
"assignvariableop_4_conv2d_3_kernel:@?/
 assignvariableop_5_conv2d_3_bias:	?:
&assignvariableop_6_dense_hidden_kernel:
?@?3
$assignvariableop_7_dense_hidden_bias:	?<
(assignvariableop_8_dense_hidden_2_kernel:
??5
&assignvariableop_9_dense_hidden_2_bias:	?3
 assignvariableop_10_ouput_kernel:	?,
assignvariableop_11_ouput_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: B
(assignvariableop_21_adam_conv2d_kernel_m: 4
&assignvariableop_22_adam_conv2d_bias_m: D
*assignvariableop_23_adam_conv2d_2_kernel_m: @6
(assignvariableop_24_adam_conv2d_2_bias_m:@E
*assignvariableop_25_adam_conv2d_3_kernel_m:@?7
(assignvariableop_26_adam_conv2d_3_bias_m:	?B
.assignvariableop_27_adam_dense_hidden_kernel_m:
?@?;
,assignvariableop_28_adam_dense_hidden_bias_m:	?D
0assignvariableop_29_adam_dense_hidden_2_kernel_m:
??=
.assignvariableop_30_adam_dense_hidden_2_bias_m:	?:
'assignvariableop_31_adam_ouput_kernel_m:	?3
%assignvariableop_32_adam_ouput_bias_m:B
(assignvariableop_33_adam_conv2d_kernel_v: 4
&assignvariableop_34_adam_conv2d_bias_v: D
*assignvariableop_35_adam_conv2d_2_kernel_v: @6
(assignvariableop_36_adam_conv2d_2_bias_v:@E
*assignvariableop_37_adam_conv2d_3_kernel_v:@?7
(assignvariableop_38_adam_conv2d_3_bias_v:	?B
.assignvariableop_39_adam_dense_hidden_kernel_v:
?@?;
,assignvariableop_40_adam_dense_hidden_bias_v:	?D
0assignvariableop_41_adam_dense_hidden_2_kernel_v:
??=
.assignvariableop_42_adam_dense_hidden_2_bias_v:	?:
'assignvariableop_43_adam_ouput_kernel_v:	?3
%assignvariableop_44_adam_ouput_bias_v:
identity_46??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*?
value?B?.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp&assignvariableop_6_dense_hidden_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp$assignvariableop_7_dense_hidden_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp(assignvariableop_8_dense_hidden_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp&assignvariableop_9_dense_hidden_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp assignvariableop_10_ouput_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_ouput_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_conv2d_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_conv2d_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv2d_2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv2d_2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_3_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv2d_3_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp.assignvariableop_27_adam_dense_hidden_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp,assignvariableop_28_adam_dense_hidden_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp0assignvariableop_29_adam_dense_hidden_2_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp.assignvariableop_30_adam_dense_hidden_2_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_ouput_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp%assignvariableop_32_adam_ouput_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_conv2d_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_conv2d_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_2_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv2d_2_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_conv2d_3_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_conv2d_3_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp.assignvariableop_39_adam_dense_hidden_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp,assignvariableop_40_adam_dense_hidden_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp0assignvariableop_41_adam_dense_hidden_2_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp.assignvariableop_42_adam_dense_hidden_2_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_ouput_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp%assignvariableop_44_adam_ouput_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_449
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_45f
Identity_46IdentityIdentity_45:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_46?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_46Identity_46:output:0*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_44AssignVariableOp_442(
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
G__inference_dense_hidden_layer_call_and_return_conditional_losses_17658

inputs2
matmul_readvariableop_resource:
?@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?@?*
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
leaky_re_lu_3/LeakyRelu	LeakyReluBiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_3/LeakyRelu?
IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
(__inference_conv2D_3_layer_call_fn_18340

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2D_3_layer_call_and_return_conditional_losses_176202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
`
D__inference_pooling_3_layer_call_and_return_conditional_losses_17630

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?3
?
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_17900

inputs&
conv2d_17864: 
conv2d_17866: (
conv2d_2_17870: @
conv2d_2_17872:@)
conv2d_3_17876:@?
conv2d_3_17878:	?&
dense_hidden_17884:
?@?!
dense_hidden_17886:	?(
dense_hidden_2_17889:
??#
dense_hidden_2_17891:	?
ouput_17894:	?
ouput_17896:
identity??conv2D/StatefulPartitionedCall? conv2D_2/StatefulPartitionedCall? conv2D_3/StatefulPartitionedCall?$dense_hidden/StatefulPartitionedCall?&dense_hidden_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?ouput/StatefulPartitionedCall?
conv2D/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_17864conv2d_17866*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv2D_layer_call_and_return_conditional_losses_175742 
conv2D/StatefulPartitionedCall?
pooling/PartitionedCallPartitionedCall'conv2D/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *K
fFRD
B__inference_pooling_layer_call_and_return_conditional_losses_175842
pooling/PartitionedCall?
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall pooling/PartitionedCall:output:0conv2d_2_17870conv2d_2_17872*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2D_2_layer_call_and_return_conditional_losses_175972"
 conv2D_2/StatefulPartitionedCall?
pooling_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_pooling_2_layer_call_and_return_conditional_losses_176072
pooling_2/PartitionedCall?
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0conv2d_3_17876conv2d_3_17878*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2D_3_layer_call_and_return_conditional_losses_176202"
 conv2D_3/StatefulPartitionedCall?
pooling_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_pooling_3_layer_call_and_return_conditional_losses_176302
pooling_3/PartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_3/PartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_177822#
!dropout_3/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_176452
flatten/PartitionedCall?
$dense_hidden/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_hidden_17884dense_hidden_17886*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_hidden_layer_call_and_return_conditional_losses_176582&
$dense_hidden/StatefulPartitionedCall?
&dense_hidden_2/StatefulPartitionedCallStatefulPartitionedCall-dense_hidden/StatefulPartitionedCall:output:0dense_hidden_2_17889dense_hidden_2_17891*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_176752(
&dense_hidden_2/StatefulPartitionedCall?
ouput/StatefulPartitionedCallStatefulPartitionedCall/dense_hidden_2/StatefulPartitionedCall:output:0ouput_17894ouput_17896*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_ouput_layer_call_and_return_conditional_losses_176922
ouput/StatefulPartitionedCall?
IdentityIdentity&ouput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv2D/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall%^dense_hidden/StatefulPartitionedCall'^dense_hidden_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^ouput/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 2@
conv2D/StatefulPartitionedCallconv2D/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2L
$dense_hidden/StatefulPartitionedCall$dense_hidden/StatefulPartitionedCall2P
&dense_hidden_2/StatefulPartitionedCall&dense_hidden_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2>
ouput/StatefulPartitionedCallouput/StatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
`
D__inference_pooling_2_layer_call_and_return_conditional_losses_17607

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  @:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_18393

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????@2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
D__inference_pooling_3_layer_call_and_return_conditional_losses_18345

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
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
?
4__inference_cnn_13_drop_out_0.25_layer_call_fn_17956	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?
	unknown_5:
?@?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_179002
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????@@

_user_specified_nameinput
?
?
@__inference_ouput_layer_call_and_return_conditional_losses_18449

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
4__inference_cnn_13_drop_out_0.25_layer_call_fn_17726	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?
	unknown_5:
?@?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_176992
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????@@

_user_specified_nameinput
?
?
@__inference_ouput_layer_call_and_return_conditional_losses_17692

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
C
'__inference_flatten_layer_call_fn_18398

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
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_176452
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
A__inference_conv2D_layer_call_and_return_conditional_losses_18251

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2	
BiasAdd?
leaky_re_lu/LeakyRelu	LeakyReluBiasAdd:output:0*/
_output_shapes
:?????????@@ *
alpha%???>2
leaky_re_lu/LeakyRelu?
IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
^
B__inference_pooling_layer_call_and_return_conditional_losses_18270

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????   2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@ :W S
/
_output_shapes
:?????????@@ 
 
_user_specified_nameinputs
?
?
4__inference_cnn_13_drop_out_0.25_layer_call_fn_18211

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?
	unknown_5:
?@?
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_176992
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?1
?
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_17699

inputs&
conv2d_17575: 
conv2d_17577: (
conv2d_2_17598: @
conv2d_2_17600:@)
conv2d_3_17621:@?
conv2d_3_17623:	?&
dense_hidden_17659:
?@?!
dense_hidden_17661:	?(
dense_hidden_2_17676:
??#
dense_hidden_2_17678:	?
ouput_17693:	?
ouput_17695:
identity??conv2D/StatefulPartitionedCall? conv2D_2/StatefulPartitionedCall? conv2D_3/StatefulPartitionedCall?$dense_hidden/StatefulPartitionedCall?&dense_hidden_2/StatefulPartitionedCall?ouput/StatefulPartitionedCall?
conv2D/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_17575conv2d_17577*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_conv2D_layer_call_and_return_conditional_losses_175742 
conv2D/StatefulPartitionedCall?
pooling/PartitionedCallPartitionedCall'conv2D/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *K
fFRD
B__inference_pooling_layer_call_and_return_conditional_losses_175842
pooling/PartitionedCall?
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall pooling/PartitionedCall:output:0conv2d_2_17598conv2d_2_17600*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2D_2_layer_call_and_return_conditional_losses_175972"
 conv2D_2/StatefulPartitionedCall?
pooling_2/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_pooling_2_layer_call_and_return_conditional_losses_176072
pooling_2/PartitionedCall?
 conv2D_3/StatefulPartitionedCallStatefulPartitionedCall"pooling_2/PartitionedCall:output:0conv2d_3_17621conv2d_3_17623*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2D_3_layer_call_and_return_conditional_losses_176202"
 conv2D_3/StatefulPartitionedCall?
pooling_3/PartitionedCallPartitionedCall)conv2D_3/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_pooling_3_layer_call_and_return_conditional_losses_176302
pooling_3/PartitionedCall?
dropout_3/PartitionedCallPartitionedCall"pooling_3/PartitionedCall:output:0*
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
GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_176372
dropout_3/PartitionedCall?
flatten/PartitionedCallPartitionedCall"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_176452
flatten/PartitionedCall?
$dense_hidden/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_hidden_17659dense_hidden_17661*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_hidden_layer_call_and_return_conditional_losses_176582&
$dense_hidden/StatefulPartitionedCall?
&dense_hidden_2/StatefulPartitionedCallStatefulPartitionedCall-dense_hidden/StatefulPartitionedCall:output:0dense_hidden_2_17676dense_hidden_2_17678*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_176752(
&dense_hidden_2/StatefulPartitionedCall?
ouput/StatefulPartitionedCallStatefulPartitionedCall/dense_hidden_2/StatefulPartitionedCall:output:0ouput_17693ouput_17695*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_ouput_layer_call_and_return_conditional_losses_176922
ouput/StatefulPartitionedCall?
IdentityIdentity&ouput/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv2D/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall!^conv2D_3/StatefulPartitionedCall%^dense_hidden/StatefulPartitionedCall'^dense_hidden_2/StatefulPartitionedCall^ouput/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 2@
conv2D/StatefulPartitionedCallconv2D/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2D
 conv2D_3/StatefulPartitionedCall conv2D_3/StatefulPartitionedCall2L
$dense_hidden/StatefulPartitionedCall$dense_hidden/StatefulPartitionedCall2P
&dense_hidden_2/StatefulPartitionedCall&dense_hidden_2/StatefulPartitionedCall2>
ouput/StatefulPartitionedCallouput/StatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
,__inference_dense_hidden_layer_call_fn_18418

inputs
unknown:
?@?
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
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_hidden_layer_call_and_return_conditional_losses_176582
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
C__inference_conv2D_3_layer_call_and_return_conditional_losses_18331

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdd?
leaky_re_lu_2/LeakyRelu	LeakyReluBiasAdd:output:0*0
_output_shapes
:??????????*
alpha%???>2
leaky_re_lu_2/LeakyRelu?
IdentityIdentity%leaky_re_lu_2/LeakyRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?H
?	
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_18123

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@B
'conv2d_3_conv2d_readvariableop_resource:@?7
(conv2d_3_biasadd_readvariableop_resource:	??
+dense_hidden_matmul_readvariableop_resource:
?@?;
,dense_hidden_biasadd_readvariableop_resource:	?A
-dense_hidden_2_matmul_readvariableop_resource:
??=
.dense_hidden_2_biasadd_readvariableop_resource:	?7
$ouput_matmul_readvariableop_resource:	?3
%ouput_biasadd_readvariableop_resource:
identity??conv2D/BiasAdd/ReadVariableOp?conv2D/Conv2D/ReadVariableOp?conv2D_2/BiasAdd/ReadVariableOp?conv2D_2/Conv2D/ReadVariableOp?conv2D_3/BiasAdd/ReadVariableOp?conv2D_3/Conv2D/ReadVariableOp?#dense_hidden/BiasAdd/ReadVariableOp?"dense_hidden/MatMul/ReadVariableOp?%dense_hidden_2/BiasAdd/ReadVariableOp?$dense_hidden_2/MatMul/ReadVariableOp?ouput/BiasAdd/ReadVariableOp?ouput/MatMul/ReadVariableOp?
conv2D/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2D/Conv2D/ReadVariableOp?
conv2D/Conv2DConv2Dinputs$conv2D/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2
conv2D/Conv2D?
conv2D/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2D/BiasAdd/ReadVariableOp?
conv2D/BiasAddBiasAddconv2D/Conv2D:output:0%conv2D/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2
conv2D/BiasAdd?
conv2D/leaky_re_lu/LeakyRelu	LeakyReluconv2D/BiasAdd:output:0*/
_output_shapes
:?????????@@ *
alpha%???>2
conv2D/leaky_re_lu/LeakyRelu?
pooling/MaxPoolMaxPool*conv2D/leaky_re_lu/LeakyRelu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
2
pooling/MaxPool?
conv2D_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2D_2/Conv2D/ReadVariableOp?
conv2D_2/Conv2DConv2Dpooling/MaxPool:output:0&conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
2
conv2D_2/Conv2D?
conv2D_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2D_2/BiasAdd/ReadVariableOp?
conv2D_2/BiasAddBiasAddconv2D_2/Conv2D:output:0'conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @2
conv2D_2/BiasAdd?
 conv2D_2/leaky_re_lu_1/LeakyRelu	LeakyReluconv2D_2/BiasAdd:output:0*/
_output_shapes
:?????????  @*
alpha%???>2"
 conv2D_2/leaky_re_lu_1/LeakyRelu?
pooling_2/MaxPoolMaxPool.conv2D_2/leaky_re_lu_1/LeakyRelu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
pooling_2/MaxPool?
conv2D_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2D_3/Conv2D/ReadVariableOp?
conv2D_3/Conv2DConv2Dpooling_2/MaxPool:output:0&conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2D_3/Conv2D?
conv2D_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2D_3/BiasAdd/ReadVariableOp?
conv2D_3/BiasAddBiasAddconv2D_3/Conv2D:output:0'conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2D_3/BiasAdd?
 conv2D_3/leaky_re_lu_2/LeakyRelu	LeakyReluconv2D_3/BiasAdd:output:0*0
_output_shapes
:??????????*
alpha%???>2"
 conv2D_3/leaky_re_lu_2/LeakyRelu?
pooling_3/MaxPoolMaxPool.conv2D_3/leaky_re_lu_2/LeakyRelu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
pooling_3/MaxPool?
dropout_3/IdentityIdentitypooling_3/MaxPool:output:0*
T0*0
_output_shapes
:??????????2
dropout_3/Identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2
flatten/Const?
flatten/ReshapeReshapedropout_3/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????@2
flatten/Reshape?
"dense_hidden/MatMul/ReadVariableOpReadVariableOp+dense_hidden_matmul_readvariableop_resource* 
_output_shapes
:
?@?*
dtype02$
"dense_hidden/MatMul/ReadVariableOp?
dense_hidden/MatMulMatMulflatten/Reshape:output:0*dense_hidden/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_hidden/MatMul?
#dense_hidden/BiasAdd/ReadVariableOpReadVariableOp,dense_hidden_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#dense_hidden/BiasAdd/ReadVariableOp?
dense_hidden/BiasAddBiasAdddense_hidden/MatMul:product:0+dense_hidden/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_hidden/BiasAdd?
$dense_hidden/leaky_re_lu_3/LeakyRelu	LeakyReludense_hidden/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>2&
$dense_hidden/leaky_re_lu_3/LeakyRelu?
$dense_hidden_2/MatMul/ReadVariableOpReadVariableOp-dense_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$dense_hidden_2/MatMul/ReadVariableOp?
dense_hidden_2/MatMulMatMul2dense_hidden/leaky_re_lu_3/LeakyRelu:activations:0,dense_hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_hidden_2/MatMul?
%dense_hidden_2/BiasAdd/ReadVariableOpReadVariableOp.dense_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02'
%dense_hidden_2/BiasAdd/ReadVariableOp?
dense_hidden_2/BiasAddBiasAdddense_hidden_2/MatMul:product:0-dense_hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_hidden_2/BiasAdd?
&dense_hidden_2/leaky_re_lu_4/LeakyRelu	LeakyReludense_hidden_2/BiasAdd:output:0*(
_output_shapes
:??????????*
alpha%???>2(
&dense_hidden_2/leaky_re_lu_4/LeakyRelu?
ouput/MatMul/ReadVariableOpReadVariableOp$ouput_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
ouput/MatMul/ReadVariableOp?
ouput/MatMulMatMul4dense_hidden_2/leaky_re_lu_4/LeakyRelu:activations:0#ouput/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ouput/MatMul?
ouput/BiasAdd/ReadVariableOpReadVariableOp%ouput_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
ouput/BiasAdd/ReadVariableOp?
ouput/BiasAddBiasAddouput/MatMul:product:0$ouput/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ouput/BiasAdds
ouput/SigmoidSigmoidouput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
ouput/Sigmoidl
IdentityIdentityouput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^conv2D/BiasAdd/ReadVariableOp^conv2D/Conv2D/ReadVariableOp ^conv2D_2/BiasAdd/ReadVariableOp^conv2D_2/Conv2D/ReadVariableOp ^conv2D_3/BiasAdd/ReadVariableOp^conv2D_3/Conv2D/ReadVariableOp$^dense_hidden/BiasAdd/ReadVariableOp#^dense_hidden/MatMul/ReadVariableOp&^dense_hidden_2/BiasAdd/ReadVariableOp%^dense_hidden_2/MatMul/ReadVariableOp^ouput/BiasAdd/ReadVariableOp^ouput/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????@@: : : : : : : : : : : : 2>
conv2D/BiasAdd/ReadVariableOpconv2D/BiasAdd/ReadVariableOp2<
conv2D/Conv2D/ReadVariableOpconv2D/Conv2D/ReadVariableOp2B
conv2D_2/BiasAdd/ReadVariableOpconv2D_2/BiasAdd/ReadVariableOp2@
conv2D_2/Conv2D/ReadVariableOpconv2D_2/Conv2D/ReadVariableOp2B
conv2D_3/BiasAdd/ReadVariableOpconv2D_3/BiasAdd/ReadVariableOp2@
conv2D_3/Conv2D/ReadVariableOpconv2D_3/Conv2D/ReadVariableOp2J
#dense_hidden/BiasAdd/ReadVariableOp#dense_hidden/BiasAdd/ReadVariableOp2H
"dense_hidden/MatMul/ReadVariableOp"dense_hidden/MatMul/ReadVariableOp2N
%dense_hidden_2/BiasAdd/ReadVariableOp%dense_hidden_2/BiasAdd/ReadVariableOp2L
$dense_hidden_2/MatMul/ReadVariableOp$dense_hidden_2/MatMul/ReadVariableOp2<
ouput/BiasAdd/ReadVariableOpouput/BiasAdd/ReadVariableOp2:
ouput/MatMul/ReadVariableOpouput/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
`
D__inference_pooling_2_layer_call_and_return_conditional_losses_18310

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  @:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
input6
serving_default_input:0?????????@@9
ouput0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"
_tf_keras_sequential
?

activation

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
regularization_losses
trainable_variables
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

activation

kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
$regularization_losses
%trainable_variables
&	variables
'	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
(
activation

)kernel
*bias
+regularization_losses
,trainable_variables
-	variables
.	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
/regularization_losses
0trainable_variables
1	variables
2	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
3regularization_losses
4trainable_variables
5	variables
6	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
7regularization_losses
8trainable_variables
9	variables
:	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
;
activation

<kernel
=bias
>regularization_losses
?trainable_variables
@	variables
A	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
B
activation

Ckernel
Dbias
Eregularization_losses
Ftrainable_variables
G	variables
H	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

Ikernel
Jbias
Kregularization_losses
Ltrainable_variables
M	variables
N	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Oiter

Pbeta_1

Qbeta_2
	Rdecay
Slearning_ratem?m?m?m?)m?*m?<m?=m?Cm?Dm?Im?Jm?v?v?v?v?)v?*v?<v?=v?Cv?Dv?Iv?Jv?"
	optimizer
 "
trackable_list_wrapper
v
0
1
2
3
)4
*5
<6
=7
C8
D9
I10
J11"
trackable_list_wrapper
v
0
1
2
3
)4
*5
<6
=7
C8
D9
I10
J11"
trackable_list_wrapper
?

Tlayers
regularization_losses
Ulayer_regularization_losses
trainable_variables
	variables
Vnon_trainable_variables
Wlayer_metrics
Xmetrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
Yregularization_losses
Ztrainable_variables
[	variables
\	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
':% 2conv2D/kernel
: 2conv2D/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

]layers
regularization_losses
^layer_regularization_losses
trainable_variables
	variables
_non_trainable_variables
`layer_metrics
ametrics
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

blayers
regularization_losses
clayer_regularization_losses
trainable_variables
	variables
dnon_trainable_variables
elayer_metrics
fmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
gregularization_losses
htrainable_variables
i	variables
j	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
):' @2conv2D_2/kernel
:@2conv2D_2/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

klayers
 regularization_losses
llayer_regularization_losses
!trainable_variables
"	variables
mnon_trainable_variables
nlayer_metrics
ometrics
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

players
$regularization_losses
qlayer_regularization_losses
%trainable_variables
&	variables
rnon_trainable_variables
slayer_metrics
tmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
uregularization_losses
vtrainable_variables
w	variables
x	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
*:(@?2conv2D_3/kernel
:?2conv2D_3/bias
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
?

ylayers
+regularization_losses
zlayer_regularization_losses
,trainable_variables
-	variables
{non_trainable_variables
|layer_metrics
}metrics
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

~layers
/regularization_losses
layer_regularization_losses
0trainable_variables
1	variables
?non_trainable_variables
?layer_metrics
?metrics
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
?layers
3regularization_losses
 ?layer_regularization_losses
4trainable_variables
5	variables
?non_trainable_variables
?layer_metrics
?metrics
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
?layers
7regularization_losses
 ?layer_regularization_losses
8trainable_variables
9	variables
?non_trainable_variables
?layer_metrics
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
':%
?@?2dense_hidden/kernel
 :?2dense_hidden/bias
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
?
?layers
>regularization_losses
 ?layer_regularization_losses
?trainable_variables
@	variables
?non_trainable_variables
?layer_metrics
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?regularization_losses
?trainable_variables
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
):'
??2dense_hidden_2/kernel
": ?2dense_hidden_2/bias
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
?
?layers
Eregularization_losses
 ?layer_regularization_losses
Ftrainable_variables
G	variables
?non_trainable_variables
?layer_metrics
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	?2ouput/kernel
:2
ouput/bias
 "
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
?
?layers
Kregularization_losses
 ?layer_regularization_losses
Ltrainable_variables
M	variables
?non_trainable_variables
?layer_metrics
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
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
10"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
Yregularization_losses
 ?layer_regularization_losses
Ztrainable_variables
[	variables
?non_trainable_variables
?layer_metrics
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
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
?
?layers
gregularization_losses
 ?layer_regularization_losses
htrainable_variables
i	variables
?non_trainable_variables
?layer_metrics
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
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
?
?layers
uregularization_losses
 ?layer_regularization_losses
vtrainable_variables
w	variables
?non_trainable_variables
?layer_metrics
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
(0"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?regularization_losses
 ?layer_regularization_losses
?trainable_variables
?	variables
?non_trainable_variables
?layer_metrics
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
;0"
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
?
?layers
?regularization_losses
 ?layer_regularization_losses
?trainable_variables
?	variables
?non_trainable_variables
?layer_metrics
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
B0"
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
,:* 2Adam/conv2D/kernel/m
: 2Adam/conv2D/bias/m
.:, @2Adam/conv2D_2/kernel/m
 :@2Adam/conv2D_2/bias/m
/:-@?2Adam/conv2D_3/kernel/m
!:?2Adam/conv2D_3/bias/m
,:*
?@?2Adam/dense_hidden/kernel/m
%:#?2Adam/dense_hidden/bias/m
.:,
??2Adam/dense_hidden_2/kernel/m
':%?2Adam/dense_hidden_2/bias/m
$:"	?2Adam/ouput/kernel/m
:2Adam/ouput/bias/m
,:* 2Adam/conv2D/kernel/v
: 2Adam/conv2D/bias/v
.:, @2Adam/conv2D_2/kernel/v
 :@2Adam/conv2D_2/bias/v
/:-@?2Adam/conv2D_3/kernel/v
!:?2Adam/conv2D_3/bias/v
,:*
?@?2Adam/dense_hidden/kernel/v
%:#?2Adam/dense_hidden/bias/v
.:,
??2Adam/dense_hidden_2/kernel/v
':%?2Adam/dense_hidden_2/bias/v
$:"	?2Adam/ouput/kernel/v
:2Adam/ouput/bias/v
?2?
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_18123
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_18182
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_17995
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_18034?
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
?B?
 __inference__wrapped_model_17490input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
4__inference_cnn_13_drop_out_0.25_layer_call_fn_17726
4__inference_cnn_13_drop_out_0.25_layer_call_fn_18211
4__inference_cnn_13_drop_out_0.25_layer_call_fn_18240
4__inference_cnn_13_drop_out_0.25_layer_call_fn_17956?
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
A__inference_conv2D_layer_call_and_return_conditional_losses_18251?
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
&__inference_conv2D_layer_call_fn_18260?
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
B__inference_pooling_layer_call_and_return_conditional_losses_18265
B__inference_pooling_layer_call_and_return_conditional_losses_18270?
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
'__inference_pooling_layer_call_fn_18275
'__inference_pooling_layer_call_fn_18280?
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
C__inference_conv2D_2_layer_call_and_return_conditional_losses_18291?
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
(__inference_conv2D_2_layer_call_fn_18300?
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
D__inference_pooling_2_layer_call_and_return_conditional_losses_18305
D__inference_pooling_2_layer_call_and_return_conditional_losses_18310?
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
)__inference_pooling_2_layer_call_fn_18315
)__inference_pooling_2_layer_call_fn_18320?
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
C__inference_conv2D_3_layer_call_and_return_conditional_losses_18331?
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
(__inference_conv2D_3_layer_call_fn_18340?
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
D__inference_pooling_3_layer_call_and_return_conditional_losses_18345
D__inference_pooling_3_layer_call_and_return_conditional_losses_18350?
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
)__inference_pooling_3_layer_call_fn_18355
)__inference_pooling_3_layer_call_fn_18360?
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
D__inference_dropout_3_layer_call_and_return_conditional_losses_18365
D__inference_dropout_3_layer_call_and_return_conditional_losses_18377?
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
)__inference_dropout_3_layer_call_fn_18382
)__inference_dropout_3_layer_call_fn_18387?
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
B__inference_flatten_layer_call_and_return_conditional_losses_18393?
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
'__inference_flatten_layer_call_fn_18398?
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
G__inference_dense_hidden_layer_call_and_return_conditional_losses_18409?
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
,__inference_dense_hidden_layer_call_fn_18418?
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
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_18429?
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
.__inference_dense_hidden_2_layer_call_fn_18438?
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
@__inference_ouput_layer_call_and_return_conditional_losses_18449?
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
%__inference_ouput_layer_call_fn_18458?
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
#__inference_signature_wrapper_18071input"?
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
 __inference__wrapped_model_17490u)*<=CDIJ6?3
,?)
'?$
input?????????@@
? "-?*
(
ouput?
ouput??????????
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_17995u)*<=CDIJ>?;
4?1
'?$
input?????????@@
p 

 
? "%?"
?
0?????????
? ?
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_18034u)*<=CDIJ>?;
4?1
'?$
input?????????@@
p

 
? "%?"
?
0?????????
? ?
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_18123v)*<=CDIJ??<
5?2
(?%
inputs?????????@@
p 

 
? "%?"
?
0?????????
? ?
O__inference_cnn_13_drop_out_0.25_layer_call_and_return_conditional_losses_18182v)*<=CDIJ??<
5?2
(?%
inputs?????????@@
p

 
? "%?"
?
0?????????
? ?
4__inference_cnn_13_drop_out_0.25_layer_call_fn_17726h)*<=CDIJ>?;
4?1
'?$
input?????????@@
p 

 
? "???????????
4__inference_cnn_13_drop_out_0.25_layer_call_fn_17956h)*<=CDIJ>?;
4?1
'?$
input?????????@@
p

 
? "???????????
4__inference_cnn_13_drop_out_0.25_layer_call_fn_18211i)*<=CDIJ??<
5?2
(?%
inputs?????????@@
p 

 
? "???????????
4__inference_cnn_13_drop_out_0.25_layer_call_fn_18240i)*<=CDIJ??<
5?2
(?%
inputs?????????@@
p

 
? "???????????
C__inference_conv2D_2_layer_call_and_return_conditional_losses_18291l7?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0?????????  @
? ?
(__inference_conv2D_2_layer_call_fn_18300_7?4
-?*
(?%
inputs?????????   
? " ??????????  @?
C__inference_conv2D_3_layer_call_and_return_conditional_losses_18331m)*7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
(__inference_conv2D_3_layer_call_fn_18340`)*7?4
-?*
(?%
inputs?????????@
? "!????????????
A__inference_conv2D_layer_call_and_return_conditional_losses_18251l7?4
-?*
(?%
inputs?????????@@
? "-?*
#? 
0?????????@@ 
? ?
&__inference_conv2D_layer_call_fn_18260_7?4
-?*
(?%
inputs?????????@@
? " ??????????@@ ?
I__inference_dense_hidden_2_layer_call_and_return_conditional_losses_18429^CD0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
.__inference_dense_hidden_2_layer_call_fn_18438QCD0?-
&?#
!?
inputs??????????
? "????????????
G__inference_dense_hidden_layer_call_and_return_conditional_losses_18409^<=0?-
&?#
!?
inputs??????????@
? "&?#
?
0??????????
? ?
,__inference_dense_hidden_layer_call_fn_18418Q<=0?-
&?#
!?
inputs??????????@
? "????????????
D__inference_dropout_3_layer_call_and_return_conditional_losses_18365n<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
D__inference_dropout_3_layer_call_and_return_conditional_losses_18377n<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
)__inference_dropout_3_layer_call_fn_18382a<?9
2?/
)?&
inputs??????????
p 
? "!????????????
)__inference_dropout_3_layer_call_fn_18387a<?9
2?/
)?&
inputs??????????
p
? "!????????????
B__inference_flatten_layer_call_and_return_conditional_losses_18393b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????@
? ?
'__inference_flatten_layer_call_fn_18398U8?5
.?+
)?&
inputs??????????
? "???????????@?
@__inference_ouput_layer_call_and_return_conditional_losses_18449]IJ0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? y
%__inference_ouput_layer_call_fn_18458PIJ0?-
&?#
!?
inputs??????????
? "???????????
D__inference_pooling_2_layer_call_and_return_conditional_losses_18305?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
D__inference_pooling_2_layer_call_and_return_conditional_losses_18310h7?4
-?*
(?%
inputs?????????  @
? "-?*
#? 
0?????????@
? ?
)__inference_pooling_2_layer_call_fn_18315?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
)__inference_pooling_2_layer_call_fn_18320[7?4
-?*
(?%
inputs?????????  @
? " ??????????@?
D__inference_pooling_3_layer_call_and_return_conditional_losses_18345?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
D__inference_pooling_3_layer_call_and_return_conditional_losses_18350j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
)__inference_pooling_3_layer_call_fn_18355?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
)__inference_pooling_3_layer_call_fn_18360]8?5
.?+
)?&
inputs??????????
? "!????????????
B__inference_pooling_layer_call_and_return_conditional_losses_18265?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
B__inference_pooling_layer_call_and_return_conditional_losses_18270h7?4
-?*
(?%
inputs?????????@@ 
? "-?*
#? 
0?????????   
? ?
'__inference_pooling_layer_call_fn_18275?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
'__inference_pooling_layer_call_fn_18280[7?4
-?*
(?%
inputs?????????@@ 
? " ??????????   ?
#__inference_signature_wrapper_18071~)*<=CDIJ??<
? 
5?2
0
input'?$
input?????????@@"-?*
(
ouput?
ouput?????????