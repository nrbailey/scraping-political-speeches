??
?-?,
:
Add
x"T
y"T
z"T"
Ttype:
2	
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
?
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0?????????"
value_indexint(0?????????"+

vocab_sizeint?????????(0?????????"
	delimiterstring	"
offsetint ?
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
2
LookupTableSizeV2
table_handle
size	?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
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
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
?
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
?
SparseSegmentSqrtN	
data"T
indices"Tidx
segment_ids"Tsegmentids
output"T"
Ttype:
2"
Tidxtype0:
2	"
Tsegmentidstype0:
2	
?
StatelessIf
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
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
c
StringSplit	
input
	delimiter
indices	

values	
shape	"

skip_emptybool(
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
9
VarIsInitializedOp
resource
is_initialized
?
E
Where

input"T	
index	"%
Ttype0
:
2	
"serve*2.8.22v2.8.2-0-g2ea19cbb5758??

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
value	B	 R 
?
global_stepVarHandleOp*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: *
shared_nameglobal_step
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 
_
global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
o
input_example_tensorPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
U
ParseExample/ConstConst*
_output_shapes
: *
dtype0*
valueB 
d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB 
j
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
: *
dtype0*
valueB 
w
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:*
dtype0*
valueBBsentence
j
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB 
?
ParseExample/ParseExampleV2ParseExampleV2input_example_tensor!ParseExample/ParseExampleV2/names'ParseExample/ParseExampleV2/sparse_keys&ParseExample/ParseExampleV2/dense_keys'ParseExample/ParseExampleV2/ragged_keysParseExample/Const*
Tdense
2*'
_output_shapes
:?????????*
dense_shapes
:*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 
g
module/tokenPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
m
module/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"?? ?   
W
module/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
r
module/zerosFillmodule/zeros/shape_as_tensormodule/zeros/Const*
T0*!
_output_shapes
:˷;?
?
;module/embeddings/part_0/PartitionedInitializer/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB"        
?
:module/embeddings/part_0/PartitionedInitializer/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB"?? ?   
?
5module/embeddings/part_0/PartitionedInitializer/SliceSlicemodule/zeros;module/embeddings/part_0/PartitionedInitializer/Slice/begin:module/embeddings/part_0/PartitionedInitializer/Slice/size*
Index0*
T0*!
_output_shapes
:˷;?
?
module/embeddings/part_0VarHandleOp*
_output_shapes
: *
dtype0*
shape:˷;?*)
shared_namemodule/embeddings/part_0
?
9module/embeddings/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpmodule/embeddings/part_0*
_output_shapes
: 
?
module/embeddings/part_0/AssignAssignVariableOpmodule/embeddings/part_05module/embeddings/part_0/PartitionedInitializer/Slice*+
_class!
loc:@module/embeddings/part_0*
dtype0
?
,module/embeddings/part_0/Read/ReadVariableOpReadVariableOpmodule/embeddings/part_0*+
_class!
loc:@module/embeddings/part_0*!
_output_shapes
:˷;?*
dtype0
`
module/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
v
module/ExpandDims
ExpandDimsmodule/tokenmodule/ExpandDims/dim*
T0*'
_output_shapes
:?????????
j
)module/DenseToSparseTensor/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
?
#module/DenseToSparseTensor/NotEqualNotEqualmodule/ExpandDims)module/DenseToSparseTensor/ignore_value/x*
T0*'
_output_shapes
:?????????
y
"module/DenseToSparseTensor/indicesWhere#module/DenseToSparseTensor/NotEqual*'
_output_shapes
:?????????
?
!module/DenseToSparseTensor/valuesGatherNdmodule/ExpandDims"module/DenseToSparseTensor/indices*
Tindices0	*
Tparams0*#
_output_shapes
:?????????
w
&module/DenseToSparseTensor/dense_shapeShapemodule/ExpandDims*
T0*
_output_shapes
:*
out_type0	
W
module/tokenize/ConstConst*
_output_shapes
: *
dtype0*
value	B B 
?
module/tokenize/StringSplitStringSplitmodule/tokenmodule/tokenize/Const*<
_output_shapes*
(:?????????:?????????:
a
 module/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0*
valueB B 
?
.module/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsmodule/tokenize/StringSplitmodule/tokenize/StringSplit:1module/tokenize/StringSplit:2 module/SparseFillEmptyRows/Const*
T0*T
_output_shapesB
@:?????????:?????????:?????????:?????????
}
module/IdentityIdentity.module/SparseFillEmptyRows/SparseFillEmptyRows*
T0	*'
_output_shapes
:?????????
}
module/Identity_1Identity0module/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0*#
_output_shapes
:?????????
a
module/Identity_2Identitymodule/tokenize/StringSplit:2*
T0	*
_output_shapes
:
^
module/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 
e

module/MaxMaxmodule/Identitymodule/Max/reduction_indices*
T0	*
_output_shapes
:
N
module/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
`
module/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
X
module/ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
m
module/ones_likeFillmodule/ones_like/Shapemodule/ones_like/Const*
T0	*
_output_shapes
:
T

module/AddAdd
module/Maxmodule/ones_like*
T0	*
_output_shapes
:
X
module/MaximumMaximummodule/Const
module/Add*
T0	*
_output_shapes
:
?
!module/string_to_index/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*B
shared_name31module/hash_table_/tmp/tmpAmEwJw/tokens.txt_-2_-1*
value_dtype0	
r
'module/string_to_index/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
;module/string_to_index/hash_table/table_init/asset_filepathConst*
_output_shapes
: *
dtype0*^
valueUBS BM/tmp/tfhub_modules/32f2b2259e1cc8ca58c876921748361283e73997/assets/tokens.txt
?
,module/string_to_index/hash_table/table_initInitializeTableFromTextFileV2!module/string_to_index/hash_table;module/string_to_index/hash_table/table_init/asset_filepath*
	key_index?????????*
value_index?????????
?
)module/string_to_index_Lookup/hash_bucketStringToHashBucketFastmodule/Identity_1*#
_output_shapes
:?????????*
num_buckets?
?
/module/string_to_index_Lookup/hash_table_LookupLookupTableFindV2!module/string_to_index/hash_tablemodule/Identity_1'module/string_to_index/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
}
-module/string_to_index_Lookup/hash_table_SizeLookupTableSizeV2!module/string_to_index/hash_table*
_output_shapes
: 
?
!module/string_to_index_Lookup/AddAdd)module/string_to_index_Lookup/hash_bucket-module/string_to_index_Lookup/hash_table_Size*
T0	*#
_output_shapes
:?????????
?
&module/string_to_index_Lookup/NotEqualNotEqual/module/string_to_index_Lookup/hash_table_Lookup'module/string_to_index/hash_table/Const*
T0	*#
_output_shapes
:?????????
?
module/string_to_index_LookupSelect&module/string_to_index_Lookup/NotEqual/module/string_to_index_Lookup/hash_table_Lookup!module/string_to_index_Lookup/Add*
T0	*#
_output_shapes
:?????????
?
2module/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
?
4module/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
?
4module/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
?
,module/embedding_lookup_sparse/strided_sliceStridedSlicemodule/Identity2module/embedding_lookup_sparse/strided_slice/stack4module/embedding_lookup_sparse/strided_slice/stack_14module/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask
?
#module/embedding_lookup_sparse/CastCast,module/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:?????????
?
%module/embedding_lookup_sparse/UniqueUniquemodule/string_to_index_Lookup*
T0	*2
_output_shapes 
:?????????:?????????
?
Cmodule/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOpmodule/embeddings/part_0*!
_output_shapes
:˷;?*
dtype0
?
8module/embedding_lookup_sparse/embedding_lookup/IdentityIdentityCmodule/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
T0*!
_output_shapes
:˷;?
?
/module/embedding_lookup_sparse/embedding_lookupResourceGathermodule/embeddings/part_0%module/embedding_lookup_sparse/Unique*
Tindices0	*V
_classL
JHloc:@module/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*(
_output_shapes
:??????????*
dtype0
?
:module/embedding_lookup_sparse/embedding_lookup/Identity_1Identity/module/embedding_lookup_sparse/embedding_lookup*
T0*V
_classL
JHloc:@module/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*(
_output_shapes
:??????????
?
module/embedding_lookup_sparseSparseSegmentSqrtN:module/embedding_lookup_sparse/embedding_lookup/Identity_1'module/embedding_lookup_sparse/Unique:1#module/embedding_lookup_sparse/Cast*
T0*(
_output_shapes
:??????????
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
t
save/Read/ReadVariableOpReadVariableOpmodule/embeddings/part_0*!
_output_shapes
:˷;?*
dtype0
_
save/IdentityIdentitysave/Read/ReadVariableOp*
T0*!
_output_shapes
:˷;?
e
save/Identity_1Identitysave/Identity"/device:CPU:0*
T0*!
_output_shapes
:˷;?

save/SaveV2/tensor_namesConst*
_output_shapes
:*
dtype0*3
value*B(Bglobal_stepBmodule/embeddings
?
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*0
value'B%B B973771 128 0,973771:0,128
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step/Read/ReadVariableOpsave/Identity_1*
dtypes
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(Bglobal_stepBmodule/embeddings
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*0
value'B%B B973771 128 0,973771:0,128
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*%
_output_shapes
::˷;?*
dtypes
2	
N
save/Identity_2Identitysave/RestoreV2*
T0	*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpglobal_stepsave/Identity_2*
dtype0	
Y
save/Identity_3Identitysave/RestoreV2:1*
T0*!
_output_shapes
:˷;?
c
save/AssignVariableOp_1AssignVariableOpmodule/embeddings/part_0save/Identity_3*
dtype0
J
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1
?
checkpoint_initializer/prefixConst"/device:CPU:0*
_output_shapes
: *
dtype0*`
valueWBU BO/tmp/tfhub_modules/32f2b2259e1cc8ca58c876921748361283e73997/variables/variables
?
#checkpoint_initializer/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB
embeddings
?
'checkpoint_initializer/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*.
value%B#B973771 128 0,973771:0,128
?
checkpoint_initializer	RestoreV2checkpoint_initializer/prefix#checkpoint_initializer/tensor_names'checkpoint_initializer/shape_and_slices"/device:CPU:0*!
_output_shapes
:˷;?*
dtypes
2
X
IdentityIdentitycheckpoint_initializer*
T0*!
_output_shapes
:˷;?
U
AssignVariableOpAssignVariableOpmodule/embeddings/part_0Identity*
dtype0
[
save_1/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
_output_shapes
: *
dtype0*
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
_output_shapes
: *
dtype0*
shape: 

save_1/StaticRegexFullMatchStaticRegexFullMatchsave_1/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
c
save_1/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
h
save_1/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
?
save_1/SelectSelectsave_1/StaticRegexFullMatchsave_1/Const_1save_1/Const_2"/device:CPU:**
T0*
_output_shapes
: 
l
save_1/StringJoin
StringJoinsave_1/Constsave_1/Select"/device:CPU:**
N*
_output_shapes
: 
S
save_1/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
?
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
?
save_1/Read/ReadVariableOpReadVariableOpmodule/embeddings/part_0"/device:CPU:0*!
_output_shapes
:˷;?*
dtype0
r
save_1/IdentityIdentitysave_1/Read/ReadVariableOp"/device:CPU:0*
T0*!
_output_shapes
:˷;?
i
save_1/Identity_1Identitysave_1/Identity"/device:CPU:0*
T0*!
_output_shapes
:˷;?
|
save_1/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB
embeddings
?
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*.
value%B#B973771 128 0,973771:0,128
?
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicessave_1/Identity_1"/device:CPU:0*
dtypes
2
?
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
?
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
{
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0
?
save_1/Identity_2Identitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB
embeddings
?
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*.
value%B#B973771 128 0,973771:0,128
?
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*!
_output_shapes
:˷;?*
dtypes
2
[
save_1/Identity_3Identitysave_1/RestoreV2*
T0*!
_output_shapes
:˷;?
e
save_1/AssignVariableOpAssignVariableOpmodule/embeddings/part_0save_1/Identity_3*
dtype0
6
save_1/restore_shardNoOp^save_1/AssignVariableOp
1
save_1/restore_allNoOp^save_1/restore_shard
?
Xdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
Rdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/ReshapeReshapeParseExample/ParseExampleV2Xdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/Reshape/shape*
T0*#
_output_shapes
:?????????
?
ednn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/tokenPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
udnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"?? ?   
?
kdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
ednn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/zerosFilludnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/zeros/shape_as_tensorkdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/zeros/Const*
T0*!
_output_shapes
:˷;?
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embeddings/part_0/PartitionedInitializer/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB"        
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embeddings/part_0/PartitionedInitializer/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB"?? ?   
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embeddings/part_0/PartitionedInitializer/SliceSliceednn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/zeros?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embeddings/part_0/PartitionedInitializer/Slice/begin?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embeddings/part_0/PartitionedInitializer/Slice/size*
Index0*
T0*!
_output_shapes
:˷;?
?
qdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embeddings/part_0Placeholder*!
_output_shapes
:˷;?*
dtype0*
shape:˷;?
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embeddings/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpmodule/embeddings/part_0*
_output_shapes
: 
?
xdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embeddings/part_0/AssignAssignVariableOpmodule/embeddings/part_0?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embeddings/part_0/PartitionedInitializer/Slice*+
_class!
loc:@module/embeddings/part_0*
dtype0
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embeddings/part_0/Read/ReadVariableOpReadVariableOpmodule/embeddings/part_0*+
_class!
loc:@module/embeddings/part_0*!
_output_shapes
:˷;?*
dtype0
?
ndnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
jdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/ExpandDims
ExpandDimsRdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/Reshapendnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/ExpandDims/dim*
T0*'
_output_shapes
:?????????
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/DenseToSparseTensor/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
?
|dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/DenseToSparseTensor/NotEqualNotEqualjdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/ExpandDims?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/DenseToSparseTensor/ignore_value/x*
T0*'
_output_shapes
:?????????
?
{dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/DenseToSparseTensor/indicesWhere|dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/DenseToSparseTensor/NotEqual*'
_output_shapes
:?????????
?
zdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/DenseToSparseTensor/valuesGatherNdjdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/ExpandDims{dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/DenseToSparseTensor/indices*
Tindices0	*
Tparams0*#
_output_shapes
:?????????
?
dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/DenseToSparseTensor/dense_shapeShapejdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/ExpandDims*
T0*
_output_shapes
:*
out_type0	
?
ndnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/tokenize/ConstConst*
_output_shapes
: *
dtype0*
value	B B 
?
tdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/tokenize/StringSplitStringSplitRdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/Reshapendnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/tokenize/Const*<
_output_shapes*
(:?????????:?????????:
?
ydnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0*
valueB B 
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowstdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/tokenize/StringSplitvdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/tokenize/StringSplit:1vdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/tokenize/StringSplit:2ydnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/SparseFillEmptyRows/Const*
T0*T
_output_shapesB
@:?????????:?????????:?????????:?????????
?
hdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/IdentityIdentity?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/SparseFillEmptyRows/SparseFillEmptyRows*
T0	*'
_output_shapes
:?????????
?
jdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/Identity_1Identity?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0*#
_output_shapes
:?????????
?
jdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/Identity_2Identityvdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/tokenize/StringSplit:2*
T0	*
_output_shapes
:
?
udnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 
?
cdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/MaxMaxhdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/Identityudnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/Max/reduction_indices*
T0	*
_output_shapes
:
?
ednn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?
odnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
?
odnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/ones_like/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
?
idnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/ones_likeFillodnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/ones_like/Shapeodnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/ones_like/Const*
T0	*
_output_shapes
:
?
cdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/AddAddcdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/Maxidnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/ones_like*
T0	*
_output_shapes
:
?
gdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/MaximumMaximumednn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/Constcdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/Add*
T0	*
_output_shapes
:
?
zdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index/hash_tablePlaceholder*
_output_shapes
:*
dtype0
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index/hash_table/table_init/asset_filepathConst*
_output_shapes
: *
dtype0*^
valueUBS BM/tmp/tfhub_modules/32f2b2259e1cc8ca58c876921748361283e73997/assets/tokens.txt
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index/hash_table/table_initInitializeTableFromTextFileV2!module/string_to_index/hash_table?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index/hash_table/table_init/asset_filepath*
	key_index?????????*
value_index?????????
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index_Lookup/hash_bucketStringToHashBucketFastjdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/Identity_1*#
_output_shapes
:?????????*
num_buckets?
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index_Lookup/hash_table_LookupLookupTableFindV2!module/string_to_index/hash_tablejdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/Identity_1?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:?????????
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index_Lookup/hash_table_SizeLookupTableSizeV2!module/string_to_index/hash_table*
_output_shapes
: 
?
zdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index_Lookup/AddAdd?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index_Lookup/hash_bucket?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index_Lookup/hash_table_Size*
T0	*#
_output_shapes
:?????????
?
dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index_Lookup/NotEqualNotEqual?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index_Lookup/hash_table_Lookup?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index/hash_table/Const*
T0	*#
_output_shapes
:?????????
?
vdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index_LookupSelectdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index_Lookup/NotEqual?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index_Lookup/hash_table_Lookupzdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index_Lookup/Add*
T0	*#
_output_shapes
:?????????
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/strided_sliceStridedSlicehdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/Identity?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/strided_slice/stack?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/strided_slice/stack_1?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask
?
|dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/CastCast?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:?????????
?
~dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/UniqueUniquevdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index_Lookup*
T0	*2
_output_shapes 
:?????????:?????????
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOpReadVariableOpmodule/embeddings/part_0*!
_output_shapes
:˷;?*
dtype0
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/embedding_lookup/IdentityIdentity?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*
T0*!
_output_shapes
:˷;?
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/embedding_lookupResourceGathermodule/embeddings/part_0~dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/Unique*
Tindices0	*?
_class?
??loc:@dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*(
_output_shapes
:??????????*
dtype0
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/embedding_lookup/Identity_1Identity?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/embedding_lookup*
T0*?
_class?
??loc:@dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/embedding_lookup/Read/ReadVariableOp*(
_output_shapes
:??????????
?
wdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparseSparseSegmentSqrtN?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/embedding_lookup/Identity_1?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/Unique:1|dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse/Cast*
T0*(
_output_shapes
:??????????
?
Pdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/ShapeShapewdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparse*
T0*
_output_shapes
:
?
^dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?
`dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?
`dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
Xdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/strided_sliceStridedSlicePdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/Shape^dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/strided_slice/stack`dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/strided_slice/stack_1`dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
?
\dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?
?
Zdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/Reshape_1/shapePackXdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/strided_slice\dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/Reshape_1/shape/1*
N*
T0*
_output_shapes
:
?
Tdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/Reshape_1Reshapewdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/embedding_lookup_sparseZdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/Reshape_1/shape*
T0*(
_output_shapes
:??????????
?
<dnn/input_from_feature_columns/input_layer/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
8dnn/input_from_feature_columns/input_layer/concat/concatIdentityTdnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/Reshape_1*
T0*(
_output_shapes
:??????????
?
9dnn/hiddenlayer_0/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
:*
dtype0*
valueB"?   ?  
?
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
valueB
 *?.Ƚ
?
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
valueB
 *?.?=
?
Adnn/hiddenlayer_0/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_0/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel* 
_output_shapes
:
??*
dtype0
?
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: 
?
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_0/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel* 
_output_shapes
:
??
?
3dnn/hiddenlayer_0/kernel/Initializer/random_uniformAddV27dnn/hiddenlayer_0/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel* 
_output_shapes
:
??
?
dnn/hiddenlayer_0/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
shape:
??*)
shared_namednn/hiddenlayer_0/kernel
?
9dnn/hiddenlayer_0/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel*
_output_shapes
: 
?
dnn/hiddenlayer_0/kernel/AssignAssignVariableOpdnn/hiddenlayer_0/kernel3dnn/hiddenlayer_0/kernel/Initializer/random_uniform*
dtype0
?
,dnn/hiddenlayer_0/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel* 
_output_shapes
:
??*
dtype0
?
(dnn/hiddenlayer_0/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_0/bias*
_output_shapes	
:?*
dtype0*
valueB?*    
?
dnn/hiddenlayer_0/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_0/bias*
_output_shapes
: *
dtype0*
shape:?*'
shared_namednn/hiddenlayer_0/bias
}
7dnn/hiddenlayer_0/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias*
_output_shapes
: 
?
dnn/hiddenlayer_0/bias/AssignAssignVariableOpdnn/hiddenlayer_0/bias(dnn/hiddenlayer_0/bias/Initializer/zeros*
dtype0
~
*dnn/hiddenlayer_0/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias*
_output_shapes	
:?*
dtype0
?
'dnn/hiddenlayer_0/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel* 
_output_shapes
:
??*
dtype0
?
dnn/hiddenlayer_0/MatMulMatMul8dnn/input_from_feature_columns/input_layer/concat/concat'dnn/hiddenlayer_0/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????
|
(dnn/hiddenlayer_0/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias*
_output_shapes	
:?*
dtype0
?
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMul(dnn/hiddenlayer_0/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:??????????
l
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*(
_output_shapes
:??????????
g
dnn/zero_fraction/SizeSizednn/hiddenlayer_0/Relu*
T0*
_output_shapes
: *
out_type0	
c
dnn/zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????
?
dnn/zero_fraction/LessEqual	LessEqualdnn/zero_fraction/Sizednn/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction/condStatelessIfdnn/zero_fraction/LessEqualdnn/hiddenlayer_0/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *4
else_branch%R#
!dnn_zero_fraction_cond_false_2637*
output_shapes
: : : : : : *3
then_branch$R"
 dnn_zero_fraction_cond_true_2636
d
dnn/zero_fraction/cond/IdentityIdentitydnn/zero_fraction/cond*
T0	*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_1Identitydnn/zero_fraction/cond:1*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_2Identitydnn/zero_fraction/cond:2*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_3Identitydnn/zero_fraction/cond:3*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_4Identitydnn/zero_fraction/cond:4*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_5Identitydnn/zero_fraction/cond:5*
T0*
_output_shapes
: 
?
(dnn/zero_fraction/counts_to_fraction/subSubdnn/zero_fraction/Sizednn/zero_fraction/cond/Identity*
T0	*
_output_shapes
: 
?
)dnn/zero_fraction/counts_to_fraction/CastCast(dnn/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
{
+dnn/zero_fraction/counts_to_fraction/Cast_1Castdnn/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
?
,dnn/zero_fraction/counts_to_fraction/truedivRealDiv)dnn/zero_fraction/counts_to_fraction/Cast+dnn/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
u
dnn/zero_fraction/fractionIdentity,dnn/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
.dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_0/fraction_of_zero_values
?
)dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_0/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_0/activation
?
dnn/hiddenlayer_0/activationHistogramSummary dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: 
?
9dnn/hiddenlayer_1/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
:*
dtype0*
valueB"?  d   
?
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *??̽
?
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *???=
?
Adnn/hiddenlayer_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_1/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
:	?d*
dtype0
?
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: 
?
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_1/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
:	?d
?
3dnn/hiddenlayer_1/kernel/Initializer/random_uniformAddV27dnn/hiddenlayer_1/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
:	?d
?
dnn/hiddenlayer_1/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
shape:	?d*)
shared_namednn/hiddenlayer_1/kernel
?
9dnn/hiddenlayer_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/kernel*
_output_shapes
: 
?
dnn/hiddenlayer_1/kernel/AssignAssignVariableOpdnn/hiddenlayer_1/kernel3dnn/hiddenlayer_1/kernel/Initializer/random_uniform*
dtype0
?
,dnn/hiddenlayer_1/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel*
_output_shapes
:	?d*
dtype0
?
(dnn/hiddenlayer_1/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_1/bias*
_output_shapes
:d*
dtype0*
valueBd*    
?
dnn/hiddenlayer_1/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_1/bias*
_output_shapes
: *
dtype0*
shape:d*'
shared_namednn/hiddenlayer_1/bias
}
7dnn/hiddenlayer_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/bias*
_output_shapes
: 
?
dnn/hiddenlayer_1/bias/AssignAssignVariableOpdnn/hiddenlayer_1/bias(dnn/hiddenlayer_1/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_1/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias*
_output_shapes
:d*
dtype0
?
'dnn/hiddenlayer_1/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel*
_output_shapes
:	?d*
dtype0
?
dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Relu'dnn/hiddenlayer_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d
{
(dnn/hiddenlayer_1/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias*
_output_shapes
:d*
dtype0
?
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMul(dnn/hiddenlayer_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????d
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:?????????d
i
dnn/zero_fraction_1/SizeSizednn/hiddenlayer_1/Relu*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_1/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????
?
dnn/zero_fraction_1/LessEqual	LessEqualdnn/zero_fraction_1/Sizednn/zero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_1/condStatelessIfdnn/zero_fraction_1/LessEqualdnn/hiddenlayer_1/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *6
else_branch'R%
#dnn_zero_fraction_1_cond_false_2707*
output_shapes
: : : : : : *5
then_branch&R$
"dnn_zero_fraction_1_cond_true_2706
h
!dnn/zero_fraction_1/cond/IdentityIdentitydnn/zero_fraction_1/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_1Identitydnn/zero_fraction_1/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_2Identitydnn/zero_fraction_1/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_3Identitydnn/zero_fraction_1/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_4Identitydnn/zero_fraction_1/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_5Identitydnn/zero_fraction_1/cond:5*
T0*
_output_shapes
: 
?
*dnn/zero_fraction_1/counts_to_fraction/subSubdnn/zero_fraction_1/Size!dnn/zero_fraction_1/cond/Identity*
T0	*
_output_shapes
: 
?
+dnn/zero_fraction_1/counts_to_fraction/CastCast*dnn/zero_fraction_1/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_1/counts_to_fraction/Cast_1Castdnn/zero_fraction_1/Size*

DstT0*

SrcT0	*
_output_shapes
: 
?
.dnn/zero_fraction_1/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_1/counts_to_fraction/Cast-dnn/zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_1/fractionIdentity.dnn/zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
.dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_1/fraction_of_zero_values
?
)dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_1/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_1/activation
?
dnn/hiddenlayer_1/activationHistogramSummary dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
_output_shapes
: 
?
2dnn/logits/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
:*
dtype0*
valueB"d      
?
0dnn/logits/kernel/Initializer/random_uniform/minConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
valueB
 *<?y?
?
0dnn/logits/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
valueB
 *<?y>
?
:dnn/logits/kernel/Initializer/random_uniform/RandomUniformRandomUniform2dnn/logits/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:d*
dtype0
?
0dnn/logits/kernel/Initializer/random_uniform/subSub0dnn/logits/kernel/Initializer/random_uniform/max0dnn/logits/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: 
?
0dnn/logits/kernel/Initializer/random_uniform/mulMul:dnn/logits/kernel/Initializer/random_uniform/RandomUniform0dnn/logits/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:d
?
,dnn/logits/kernel/Initializer/random_uniformAddV20dnn/logits/kernel/Initializer/random_uniform/mul0dnn/logits/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:d
?
dnn/logits/kernelVarHandleOp*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
shape
:d*"
shared_namednn/logits/kernel
s
2dnn/logits/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel*
_output_shapes
: 
z
dnn/logits/kernel/AssignAssignVariableOpdnn/logits/kernel,dnn/logits/kernel/Initializer/random_uniform*
dtype0
w
%dnn/logits/kernel/Read/ReadVariableOpReadVariableOpdnn/logits/kernel*
_output_shapes

:d*
dtype0
?
!dnn/logits/bias/Initializer/zerosConst*"
_class
loc:@dnn/logits/bias*
_output_shapes
:*
dtype0*
valueB*    
?
dnn/logits/biasVarHandleOp*"
_class
loc:@dnn/logits/bias*
_output_shapes
: *
dtype0*
shape:* 
shared_namednn/logits/bias
o
0dnn/logits/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias*
_output_shapes
: 
k
dnn/logits/bias/AssignAssignVariableOpdnn/logits/bias!dnn/logits/bias/Initializer/zeros*
dtype0
o
#dnn/logits/bias/Read/ReadVariableOpReadVariableOpdnn/logits/bias*
_output_shapes
:*
dtype0
r
 dnn/logits/MatMul/ReadVariableOpReadVariableOpdnn/logits/kernel*
_output_shapes

:d*
dtype0
?
dnn/logits/MatMulMatMuldnn/hiddenlayer_1/Relu dnn/logits/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
m
!dnn/logits/BiasAdd/ReadVariableOpReadVariableOpdnn/logits/bias*
_output_shapes
:*
dtype0
?
dnn/logits/BiasAddBiasAdddnn/logits/MatMul!dnn/logits/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????
e
dnn/zero_fraction_2/SizeSizednn/logits/BiasAdd*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_2/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 R????
?
dnn/zero_fraction_2/LessEqual	LessEqualdnn/zero_fraction_2/Sizednn/zero_fraction_2/LessEqual/y*
T0	*
_output_shapes
: 
?
dnn/zero_fraction_2/condStatelessIfdnn/zero_fraction_2/LessEqualdnn/logits/BiasAdd*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *6
else_branch'R%
#dnn_zero_fraction_2_cond_false_2776*
output_shapes
: : : : : : *5
then_branch&R$
"dnn_zero_fraction_2_cond_true_2775
h
!dnn/zero_fraction_2/cond/IdentityIdentitydnn/zero_fraction_2/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_1Identitydnn/zero_fraction_2/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_2Identitydnn/zero_fraction_2/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_3Identitydnn/zero_fraction_2/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_4Identitydnn/zero_fraction_2/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_5Identitydnn/zero_fraction_2/cond:5*
T0*
_output_shapes
: 
?
*dnn/zero_fraction_2/counts_to_fraction/subSubdnn/zero_fraction_2/Size!dnn/zero_fraction_2/cond/Identity*
T0	*
_output_shapes
: 
?
+dnn/zero_fraction_2/counts_to_fraction/CastCast*dnn/zero_fraction_2/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_2/counts_to_fraction/Cast_1Castdnn/zero_fraction_2/Size*

DstT0*

SrcT0	*
_output_shapes
: 
?
.dnn/zero_fraction_2/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_2/counts_to_fraction/Cast-dnn/zero_fraction_2/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_2/fractionIdentity.dnn/zero_fraction_2/counts_to_fraction/truediv*
T0*
_output_shapes
: 
?
'dnn/logits/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*3
value*B( B"dnn/logits/fraction_of_zero_values
?
"dnn/logits/fraction_of_zero_valuesScalarSummary'dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_2/fraction*
T0*
_output_shapes
: 
o
dnn/logits/activation/tagConst*
_output_shapes
: *
dtype0*&
valueB Bdnn/logits/activation
p
dnn/logits/activationHistogramSummarydnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: 
S
head/logits/ShapeShapednn/logits/BiasAdd*
T0*
_output_shapes
:
g
%head/logits/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
W
Ohead/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
H
@head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp

initNoOp
F
init_all_tablesNoOp-^module/string_to_index/hash_table/table_init

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
[
save_2/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
_output_shapes
: *
dtype0*
shape: 
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
_output_shapes
: *
dtype0*
shape: 

save_2/StaticRegexFullMatchStaticRegexFullMatchsave_2/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
c
save_2/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
h
save_2/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
?
save_2/SelectSelectsave_2/StaticRegexFullMatchsave_2/Const_1save_2/Const_2"/device:CPU:**
T0*
_output_shapes
: 
l
save_2/StringJoin
StringJoinsave_2/Constsave_2/Select"/device:CPU:**
N*
_output_shapes
: 
S
save_2/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
m
save_2/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
?
save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards"/device:CPU:0*
_output_shapes
: 
?
save_2/Read/ReadVariableOpReadVariableOpmodule/embeddings/part_0"/device:CPU:0*!
_output_shapes
:˷;?*
dtype0
r
save_2/IdentityIdentitysave_2/Read/ReadVariableOp"/device:CPU:0*
T0*!
_output_shapes
:˷;?
i
save_2/Identity_1Identitysave_2/Identity"/device:CPU:0*
T0*!
_output_shapes
:˷;?
?
save_2/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_stepBmodule/embeddings
?
save_2/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*<
value3B1B B B B B B B B973771 128 0,973771:0,128
?
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slices*dnn/hiddenlayer_0/bias/Read/ReadVariableOp,dnn/hiddenlayer_0/kernel/Read/ReadVariableOp*dnn/hiddenlayer_1/bias/Read/ReadVariableOp,dnn/hiddenlayer_1/kernel/Read/ReadVariableOp#dnn/logits/bias/Read/ReadVariableOp%dnn/logits/kernel/Read/ReadVariableOpglobal_step/Read/ReadVariableOpsave_2/Identity_1"/device:CPU:0*
dtypes

2	
?
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_2/ShardedFilename*
_output_shapes
: 
?
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
{
save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const"/device:CPU:0
?
save_2/Identity_2Identitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
?
save_2/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?Bdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_stepBmodule/embeddings
?
!save_2/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*<
value3B1B B B B B B B B973771 128 0,973771:0,128
?
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices"/device:CPU:0*=
_output_shapes+
)::::::::˷;?*
dtypes

2	
R
save_2/Identity_3Identitysave_2/RestoreV2*
T0*
_output_shapes
:
c
save_2/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/biassave_2/Identity_3*
dtype0
T
save_2/Identity_4Identitysave_2/RestoreV2:1*
T0*
_output_shapes
:
g
save_2/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernelsave_2/Identity_4*
dtype0
T
save_2/Identity_5Identitysave_2/RestoreV2:2*
T0*
_output_shapes
:
e
save_2/AssignVariableOp_2AssignVariableOpdnn/hiddenlayer_1/biassave_2/Identity_5*
dtype0
T
save_2/Identity_6Identitysave_2/RestoreV2:3*
T0*
_output_shapes
:
g
save_2/AssignVariableOp_3AssignVariableOpdnn/hiddenlayer_1/kernelsave_2/Identity_6*
dtype0
T
save_2/Identity_7Identitysave_2/RestoreV2:4*
T0*
_output_shapes
:
^
save_2/AssignVariableOp_4AssignVariableOpdnn/logits/biassave_2/Identity_7*
dtype0
T
save_2/Identity_8Identitysave_2/RestoreV2:5*
T0*
_output_shapes
:
`
save_2/AssignVariableOp_5AssignVariableOpdnn/logits/kernelsave_2/Identity_8*
dtype0
T
save_2/Identity_9Identitysave_2/RestoreV2:6*
T0	*
_output_shapes
:
Z
save_2/AssignVariableOp_6AssignVariableOpglobal_stepsave_2/Identity_9*
dtype0	
^
save_2/Identity_10Identitysave_2/RestoreV2:7*
T0*!
_output_shapes
:˷;?
h
save_2/AssignVariableOp_7AssignVariableOpmodule/embeddings/part_0save_2/Identity_10*
dtype0
?
save_2/restore_shardNoOp^save_2/AssignVariableOp^save_2/AssignVariableOp_1^save_2/AssignVariableOp_2^save_2/AssignVariableOp_3^save_2/AssignVariableOp_4^save_2/AssignVariableOp_5^save_2/AssignVariableOp_6^save_2/AssignVariableOp_7
1
save_2/restore_allNoOp^save_2/restore_shard?[
?
?
#dnn_zero_fraction_2_cond_false_2776-
)count_nonzero_notequal_dnn_logits_biasadd
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual)count_nonzero_notequal_dnn_logits_biasaddcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:?????????d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: ?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: :????
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: :????
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: :????
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: :???4
OptionalNoneOptionalNone*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:?????????:- )
'
_output_shapes
:?????????
?
?
#dnn_zero_fraction_1_cond_false_27071
-count_nonzero_notequal_dnn_hiddenlayer_1_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_1_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????dw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:?????????dd
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: ?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: :????
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: :????
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: :????
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: :???4
OptionalNoneOptionalNone*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:?????????d:- )
'
_output_shapes
:?????????d
?
?
!dnn_zero_fraction_cond_false_26371
-count_nonzero_notequal_dnn_hiddenlayer_0_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneX
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_0_relucount_nonzero/zeros:output:0*
T0*(
_output_shapes
:??????????x
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*(
_output_shapes
:??????????d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: ?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: :????
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: :????
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: :????
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: :???4
OptionalNoneOptionalNone*
_output_shapes
: "C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*'
_input_shapes
:??????????:. *
(
_output_shapes
:??????????
?
?
"dnn_zero_fraction_1_cond_true_27061
-count_nonzero_notequal_dnn_hiddenlayer_1_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_1_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????dw
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????dd
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: :????
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: :????
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: :????
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: :????
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: :???"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:?????????d:- )
'
_output_shapes
:?????????d
?
?
 dnn_zero_fraction_cond_true_26361
-count_nonzero_notequal_dnn_hiddenlayer_0_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_0_relucount_nonzero/zeros:output:0*
T0*(
_output_shapes
:??????????x
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: :????
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: :????
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: :????
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: :????
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: :???"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*'
_input_shapes
:??????????:. *
(
_output_shapes
:??????????
?
?
"dnn_zero_fraction_2_cond_true_2775-
)count_nonzero_notequal_dnn_logits_biasadd
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4X
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
count_nonzero/NotEqualNotEqual)count_nonzero_notequal_dnn_logits_biasaddcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:?????????w
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????d
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       y
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: b
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: :????
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: :????
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: :????
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: :????
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: :???"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:?????????:- )
'
_output_shapes
:?????????"D
save_2/Const:0save_2/Identity_2:0save_2/restore_all (5 @F8"?
asset_filepaths?
?
=module/string_to_index/hash_table/table_init/asset_filepath:0
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index/hash_table/table_init/asset_filepath:0"~
global_stepom
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H"?
saved_model_assets?*?
|
+type.googleapis.com/tensorflow.AssetFileDefM
?
=module/string_to_index/hash_table/table_init/asset_filepath:0
tokens.txt
?
+type.googleapis.com/tensorflow.AssetFileDef?
?
?dnn/input_from_feature_columns/input_layer/sentence_hub_module_embedding_1/module_apply_default/string_to_index/hash_table/table_init/asset_filepath:0
tokens.txt"%
saved_model_main_op


group_deps"?
	summaries?
?
+dnn/hiddenlayer_0/fraction_of_zero_values:0
dnn/hiddenlayer_0/activation:0
+dnn/hiddenlayer_1/fraction_of_zero_values:0
dnn/hiddenlayer_1/activation:0
$dnn/logits/fraction_of_zero_values:0
dnn/logits/activation:0"E
table_initializer0
.
,module/string_to_index/hash_table/table_init"?
trainable_variables??
?
dnn/hiddenlayer_0/kernel:0dnn/hiddenlayer_0/kernel/Assign.dnn/hiddenlayer_0/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_0/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_0/bias:0dnn/hiddenlayer_0/bias/Assign,dnn/hiddenlayer_0/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_0/bias/Initializer/zeros:08
?
dnn/hiddenlayer_1/kernel:0dnn/hiddenlayer_1/kernel/Assign.dnn/hiddenlayer_1/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_1/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_1/bias:0dnn/hiddenlayer_1/bias/Assign,dnn/hiddenlayer_1/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_1/bias/Initializer/zeros:08
?
dnn/logits/kernel:0dnn/logits/kernel/Assign'dnn/logits/kernel/Read/ReadVariableOp:0(2.dnn/logits/kernel/Initializer/random_uniform:08
{
dnn/logits/bias:0dnn/logits/bias/Assign%dnn/logits/bias/Read/ReadVariableOp:0(2#dnn/logits/bias/Initializer/zeros:08"?	
	variables?	?	
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H
?
module/embeddings/part_0:0AssignVariableOp.module/embeddings/part_0/Read/ReadVariableOp:0"%
module/embeddings˷;?  "˷;?(2checkpoint_initializer:0
?
dnn/hiddenlayer_0/kernel:0dnn/hiddenlayer_0/kernel/Assign.dnn/hiddenlayer_0/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_0/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_0/bias:0dnn/hiddenlayer_0/bias/Assign,dnn/hiddenlayer_0/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_0/bias/Initializer/zeros:08
?
dnn/hiddenlayer_1/kernel:0dnn/hiddenlayer_1/kernel/Assign.dnn/hiddenlayer_1/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_1/kernel/Initializer/random_uniform:08
?
dnn/hiddenlayer_1/bias:0dnn/hiddenlayer_1/bias/Assign,dnn/hiddenlayer_1/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_1/bias/Initializer/zeros:08
?
dnn/logits/kernel:0dnn/logits/kernel/Assign'dnn/logits/kernel/Read/ReadVariableOp:0(2.dnn/logits/kernel/Initializer/random_uniform:08
{
dnn/logits/bias:0dnn/logits/bias/Assign%dnn/logits/bias/Read/ReadVariableOp:0(2#dnn/logits/bias/Initializer/zeros:08*?
predict?
5
examples)
input_example_tensor:0?????????:
predictions+
dnn/logits/BiasAdd:0?????????tensorflow/serving/predict*?

regression?
3
inputs)
input_example_tensor:0?????????6
outputs+
dnn/logits/BiasAdd:0?????????tensorflow/serving/regress*?
serving_default?
3
inputs)
input_example_tensor:0?????????6
outputs+
dnn/logits/BiasAdd:0?????????tensorflow/serving/regress