       £K"	  | eÖAbrain.Event:2|![ĢB      TĀ	æ| eÖA"æ
o
truncated_normal/shapeConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
i
truncated_normal/meanConst"/device:CPU:0*
dtype0*
valueB
 *    *
_output_shapes
: 
k
truncated_normal/stddevConst"/device:CPU:0*
dtype0*
valueB
 *  ?*
_output_shapes
: 
„
 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape"/device:CPU:0*
dtype0*
seed2 *

seed *
T0*
_output_shapes
:

truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev"/device:CPU:0*
T0*
_output_shapes
:
x
truncated_normalAddtruncated_normal/multruncated_normal/mean"/device:CPU:0*
T0*
_output_shapes
:

Variable
VariableV2"/device:CPU:0*
dtype0*
shape:*
	container *
shared_name *
_output_shapes
:
Æ
Variable/AssignAssignVariabletruncated_normal"/device:CPU:0*
validate_shape(*
_class
loc:@Variable*
use_locking(*
T0*
_output_shapes
:
t
Variable/readIdentityVariable"/device:CPU:0*
_class
loc:@Variable*
T0*
_output_shapes
:
q
truncated_normal_1/shapeConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
k
truncated_normal_1/meanConst"/device:CPU:0*
dtype0*
valueB
 *    *
_output_shapes
: 
m
truncated_normal_1/stddevConst"/device:CPU:0*
dtype0*
valueB
 *  ?*
_output_shapes
: 
©
"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape"/device:CPU:0*
dtype0*
seed2 *

seed *
T0*
_output_shapes
:

truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev"/device:CPU:0*
T0*
_output_shapes
:
~
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean"/device:CPU:0*
T0*
_output_shapes
:


Variable_1
VariableV2"/device:CPU:0*
dtype0*
shape:*
	container *
shared_name *
_output_shapes
:
·
Variable_1/AssignAssign
Variable_1truncated_normal_1"/device:CPU:0*
validate_shape(*
_class
loc:@Variable_1*
use_locking(*
T0*
_output_shapes
:
z
Variable_1/readIdentity
Variable_1"/device:CPU:0*
_class
loc:@Variable_1*
T0*
_output_shapes
:
^
addAddVariable/readVariable_1/read"/device:CPU:0*
T0*
_output_shapes
:
a
ConstConst"/device:CPU:0*
dtype0*
valueB*  ČB*
_output_shapes
:
J
subSubaddConst"/device:CPU:0*
T0*
_output_shapes
:
I
SquareSquaresub"/device:CPU:0*
T0*
_output_shapes
:
`
Const_1Const"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
j
MeanMeanSquareConst_1"/device:CPU:0*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
a
gradients/ShapeConst"/device:CPU:0*
dtype0*
valueB *
_output_shapes
: 
c
gradients/ConstConst"/device:CPU:0*
dtype0*
valueB
 *  ?*
_output_shapes
: 
h
gradients/FillFillgradients/Shapegradients/Const"/device:CPU:0*
T0*
_output_shapes
: 
z
!gradients/Mean_grad/Reshape/shapeConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape"/device:CPU:0*
_output_shapes
:*
T0*
Tshape0
{
"gradients/Mean_grad/Tile/multiplesConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
§
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshape"gradients/Mean_grad/Tile/multiples"/device:CPU:0*

Tmultiples0*
T0*
_output_shapes
:
r
gradients/Mean_grad/ShapeConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
m
gradients/Mean_grad/Shape_1Const"/device:CPU:0*
dtype0*
valueB *
_output_shapes
: 
r
gradients/Mean_grad/ConstConst"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
£
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shapegradients/Mean_grad/Const"/device:CPU:0*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
t
gradients/Mean_grad/Const_1Const"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
©
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_1gradients/Mean_grad/Const_1"/device:CPU:0*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
n
gradients/Mean_grad/Maximum/yConst"/device:CPU:0*
dtype0*
value	B :*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y"/device:CPU:0*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum"/device:CPU:0*
T0*
_output_shapes
: 
}
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv"/device:CPU:0*

DstT0*

SrcT0*
_output_shapes
: 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast"/device:CPU:0*
T0*
_output_shapes
:

gradients/Square_grad/mul/xConst^gradients/Mean_grad/truediv"/device:CPU:0*
dtype0*
valueB
 *   @*
_output_shapes
: 
v
gradients/Square_grad/mulMulgradients/Square_grad/mul/xsub"/device:CPU:0*
T0*
_output_shapes
:

gradients/Square_grad/mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/mul"/device:CPU:0*
T0*
_output_shapes
:
q
gradients/sub_grad/ShapeConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
s
gradients/sub_grad/Shape_1Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
Ć
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1"/device:CPU:0*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
³
gradients/sub_grad/SumSumgradients/Square_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape"/device:CPU:0*
_output_shapes
:*
T0*
Tshape0
·
gradients/sub_grad/Sum_1Sumgradients/Square_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
i
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1"/device:CPU:0*
T0*
_output_shapes
:

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1"/device:CPU:0*
_output_shapes
:*
T0*
Tshape0
v
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1"/device:CPU:0
Ü
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps"/device:CPU:0*-
_class#
!loc:@gradients/sub_grad/Reshape*
T0*
_output_shapes
:
ā
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps"/device:CPU:0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
T0*
_output_shapes
:
q
gradients/add_grad/ShapeConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
s
gradients/add_grad/Shape_1Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
Ć
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1"/device:CPU:0*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ć
gradients/add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/add_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape"/device:CPU:0*
_output_shapes
:*
T0*
Tshape0
Ē
gradients/add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/add_grad/BroadcastGradientArgs:1"/device:CPU:0*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1"/device:CPU:0*
_output_shapes
:*
T0*
Tshape0
v
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1"/device:CPU:0
Ü
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps"/device:CPU:0*-
_class#
!loc:@gradients/add_grad/Reshape*
T0*
_output_shapes
:
ā
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps"/device:CPU:0*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
T0*
_output_shapes
:
q
GradientDescent/learning_rateConst"/device:CPU:0*
dtype0*
valueB
 *·Ń8*
_output_shapes
: 

4GradientDescent/update_Variable/ApplyGradientDescentApplyGradientDescentVariableGradientDescent/learning_rate+gradients/add_grad/tuple/control_dependency"/device:CPU:0*
_class
loc:@Variable*
use_locking( *
T0*
_output_shapes
:

6GradientDescent/update_Variable_1/ApplyGradientDescentApplyGradientDescent
Variable_1GradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1"/device:CPU:0*
_class
loc:@Variable_1*
use_locking( *
T0*
_output_shapes
:

GradientDescentNoOp5^GradientDescent/update_Variable/ApplyGradientDescent7^GradientDescent/update_Variable_1/ApplyGradientDescent"/device:CPU:0
Ø
4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedVariable"/device:CPU:0*
dtype0*
_class
loc:@Variable*
_output_shapes
: 
®
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitialized
Variable_1"/device:CPU:0*
dtype0*
_class
loc:@Variable_1*
_output_shapes
: 
Ō
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_1*
N*
T0
*
_output_shapes
:*

axis 
y
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack*
_output_shapes
:

$report_uninitialized_variables/ConstConst*
dtype0*)
value BBVariableB
Variable_1*
_output_shapes
:
{
1report_uninitialized_variables/boolean_mask/ShapeConst*
dtype0*
valueB:*
_output_shapes
:

?report_uninitialized_variables/boolean_mask/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ł
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 

Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
õ
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
}
3report_uninitialized_variables/boolean_mask/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
į
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
Æ
;report_uninitialized_variables/boolean_mask/concat/values_0Pack0report_uninitialized_variables/boolean_mask/Prod*
N*
T0*
_output_shapes
:*

axis 
y
7report_uninitialized_variables/boolean_mask/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
«
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/concat/values_0;report_uninitialized_variables/boolean_mask/strided_slice_17report_uninitialized_variables/boolean_mask/concat/axis*
N*

Tidx0*
_output_shapes
:*
T0
Ė
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat*
_output_shapes
:*
T0*
Tshape0

;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst*
dtype0*
valueB:
’’’’’’’’’*
_output_shapes
:
Ū
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape*
_output_shapes
:*
T0
*
Tshape0

1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1*'
_output_shapes
:’’’’’’’’’
¶
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where*
squeeze_dims
*
T0	*#
_output_shapes
:’’’’’’’’’

2report_uninitialized_variables/boolean_mask/GatherGather3report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:’’’’’’’’’
A
initNoOp^Variable/Assign^Variable_1/Assign"/device:CPU:0

init_1NoOp

init_all_tablesNoOp
-

group_depsNoOp^init_1^init_all_tables
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
u
save/SaveV2/tensor_namesConst*
dtype0*)
value BBVariableB
Variable_1*
_output_shapes
:
g
save/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B *
_output_shapes
:

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable
Variable_1*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
T0*
_output_shapes
: 
{
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
valueBBVariable*
_output_shapes
:
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
©
save/AssignAssignVariablesave/RestoreV2"/device:CPU:0*
validate_shape(*
_class
loc:@Variable*
use_locking(*
T0*
_output_shapes
:

save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
valueBB
Variable_1*
_output_shapes
:
y
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:
„
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
±
save/Assign_1Assign
Variable_1save/RestoreV2_1"/device:CPU:0*
validate_shape(*
_class
loc:@Variable_1*
use_locking(*
T0*
_output_shapes
:
E
save/restore_allNoOp^save/Assign^save/Assign_1"/device:CPU:0"ISz1qP      õK`Ķ	ŚĀ| eÖAJä 
ļŅ
9
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	

Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype


LogicalNot
x

y

:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
<
Mul
x"T
y"T
z"T"
Ttype:
2	
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
0
Square
x"T
y"T"
Ttype:
	2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
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
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 

Where	
input
	
index	*1.2.12v1.2.0-5-g435cdfcæ
o
truncated_normal/shapeConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
i
truncated_normal/meanConst"/device:CPU:0*
dtype0*
valueB
 *    *
_output_shapes
: 
k
truncated_normal/stddevConst"/device:CPU:0*
dtype0*
valueB
 *  ?*
_output_shapes
: 
„
 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape"/device:CPU:0*
dtype0*
seed2 *

seed *
T0*
_output_shapes
:

truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev"/device:CPU:0*
T0*
_output_shapes
:
x
truncated_normalAddtruncated_normal/multruncated_normal/mean"/device:CPU:0*
T0*
_output_shapes
:

Variable
VariableV2"/device:CPU:0*
dtype0*
shape:*
shared_name *
	container *
_output_shapes
:
Æ
Variable/AssignAssignVariabletruncated_normal"/device:CPU:0*
validate_shape(*
_class
loc:@Variable*
use_locking(*
T0*
_output_shapes
:
t
Variable/readIdentityVariable"/device:CPU:0*
_class
loc:@Variable*
T0*
_output_shapes
:
q
truncated_normal_1/shapeConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
k
truncated_normal_1/meanConst"/device:CPU:0*
dtype0*
valueB
 *    *
_output_shapes
: 
m
truncated_normal_1/stddevConst"/device:CPU:0*
dtype0*
valueB
 *  ?*
_output_shapes
: 
©
"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape"/device:CPU:0*
dtype0*
seed2 *

seed *
T0*
_output_shapes
:

truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev"/device:CPU:0*
T0*
_output_shapes
:
~
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean"/device:CPU:0*
T0*
_output_shapes
:


Variable_1
VariableV2"/device:CPU:0*
dtype0*
shape:*
shared_name *
	container *
_output_shapes
:
·
Variable_1/AssignAssign
Variable_1truncated_normal_1"/device:CPU:0*
validate_shape(*
_class
loc:@Variable_1*
use_locking(*
T0*
_output_shapes
:
z
Variable_1/readIdentity
Variable_1"/device:CPU:0*
_class
loc:@Variable_1*
T0*
_output_shapes
:
^
addAddVariable/readVariable_1/read"/device:CPU:0*
T0*
_output_shapes
:
a
ConstConst"/device:CPU:0*
dtype0*
valueB*  ČB*
_output_shapes
:
J
subSubaddConst"/device:CPU:0*
T0*
_output_shapes
:
I
SquareSquaresub"/device:CPU:0*
T0*
_output_shapes
:
`
Const_1Const"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
j
MeanMeanSquareConst_1"/device:CPU:0*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
a
gradients/ShapeConst"/device:CPU:0*
dtype0*
valueB *
_output_shapes
: 
c
gradients/ConstConst"/device:CPU:0*
dtype0*
valueB
 *  ?*
_output_shapes
: 
h
gradients/FillFillgradients/Shapegradients/Const"/device:CPU:0*
T0*
_output_shapes
: 
z
!gradients/Mean_grad/Reshape/shapeConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape"/device:CPU:0*
Tshape0*
T0*
_output_shapes
:
{
"gradients/Mean_grad/Tile/multiplesConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
§
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshape"gradients/Mean_grad/Tile/multiples"/device:CPU:0*

Tmultiples0*
T0*
_output_shapes
:
r
gradients/Mean_grad/ShapeConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
m
gradients/Mean_grad/Shape_1Const"/device:CPU:0*
dtype0*
valueB *
_output_shapes
: 
r
gradients/Mean_grad/ConstConst"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
£
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shapegradients/Mean_grad/Const"/device:CPU:0*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
t
gradients/Mean_grad/Const_1Const"/device:CPU:0*
dtype0*
valueB: *
_output_shapes
:
©
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_1gradients/Mean_grad/Const_1"/device:CPU:0*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
n
gradients/Mean_grad/Maximum/yConst"/device:CPU:0*
dtype0*
value	B :*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y"/device:CPU:0*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum"/device:CPU:0*
T0*
_output_shapes
: 
}
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv"/device:CPU:0*

DstT0*

SrcT0*
_output_shapes
: 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast"/device:CPU:0*
T0*
_output_shapes
:

gradients/Square_grad/mul/xConst^gradients/Mean_grad/truediv"/device:CPU:0*
dtype0*
valueB
 *   @*
_output_shapes
: 
v
gradients/Square_grad/mulMulgradients/Square_grad/mul/xsub"/device:CPU:0*
T0*
_output_shapes
:

gradients/Square_grad/mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/mul"/device:CPU:0*
T0*
_output_shapes
:
q
gradients/sub_grad/ShapeConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
s
gradients/sub_grad/Shape_1Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
Ć
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1"/device:CPU:0*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
³
gradients/sub_grad/SumSumgradients/Square_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs"/device:CPU:0*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape"/device:CPU:0*
Tshape0*
T0*
_output_shapes
:
·
gradients/sub_grad/Sum_1Sumgradients/Square_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1"/device:CPU:0*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
i
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1"/device:CPU:0*
T0*
_output_shapes
:

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1"/device:CPU:0*
Tshape0*
T0*
_output_shapes
:
v
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1"/device:CPU:0
Ü
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps"/device:CPU:0*-
_class#
!loc:@gradients/sub_grad/Reshape*
T0*
_output_shapes
:
ā
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps"/device:CPU:0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
T0*
_output_shapes
:
q
gradients/add_grad/ShapeConst"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
s
gradients/add_grad/Shape_1Const"/device:CPU:0*
dtype0*
valueB:*
_output_shapes
:
Ć
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1"/device:CPU:0*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ć
gradients/add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/add_grad/BroadcastGradientArgs"/device:CPU:0*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape"/device:CPU:0*
Tshape0*
T0*
_output_shapes
:
Ē
gradients/add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/add_grad/BroadcastGradientArgs:1"/device:CPU:0*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1"/device:CPU:0*
Tshape0*
T0*
_output_shapes
:
v
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1"/device:CPU:0
Ü
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps"/device:CPU:0*-
_class#
!loc:@gradients/add_grad/Reshape*
T0*
_output_shapes
:
ā
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps"/device:CPU:0*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
T0*
_output_shapes
:
q
GradientDescent/learning_rateConst"/device:CPU:0*
dtype0*
valueB
 *·Ń8*
_output_shapes
: 

4GradientDescent/update_Variable/ApplyGradientDescentApplyGradientDescentVariableGradientDescent/learning_rate+gradients/add_grad/tuple/control_dependency"/device:CPU:0*
_class
loc:@Variable*
use_locking( *
T0*
_output_shapes
:

6GradientDescent/update_Variable_1/ApplyGradientDescentApplyGradientDescent
Variable_1GradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1"/device:CPU:0*
_class
loc:@Variable_1*
use_locking( *
T0*
_output_shapes
:

GradientDescentNoOp5^GradientDescent/update_Variable/ApplyGradientDescent7^GradientDescent/update_Variable_1/ApplyGradientDescent"/device:CPU:0
Ø
4report_uninitialized_variables/IsVariableInitializedIsVariableInitializedVariable"/device:CPU:0*
dtype0*
_class
loc:@Variable*
_output_shapes
: 
®
6report_uninitialized_variables/IsVariableInitialized_1IsVariableInitialized
Variable_1"/device:CPU:0*
dtype0*
_class
loc:@Variable_1*
_output_shapes
: 
Ō
$report_uninitialized_variables/stackPack4report_uninitialized_variables/IsVariableInitialized6report_uninitialized_variables/IsVariableInitialized_1*
_output_shapes
:*

axis *
T0
*
N
y
)report_uninitialized_variables/LogicalNot
LogicalNot$report_uninitialized_variables/stack*
_output_shapes
:

$report_uninitialized_variables/ConstConst*
dtype0*)
value BBVariableB
Variable_1*
_output_shapes
:
{
1report_uninitialized_variables/boolean_mask/ShapeConst*
dtype0*
valueB:*
_output_shapes
:

?report_uninitialized_variables/boolean_mask/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ł
9report_uninitialized_variables/boolean_mask/strided_sliceStridedSlice1report_uninitialized_variables/boolean_mask/Shape?report_uninitialized_variables/boolean_mask/strided_slice/stackAreport_uninitialized_variables/boolean_mask/strided_slice/stack_1Areport_uninitialized_variables/boolean_mask/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask 

Breport_uninitialized_variables/boolean_mask/Prod/reduction_indicesConst*
dtype0*
valueB: *
_output_shapes
:
õ
0report_uninitialized_variables/boolean_mask/ProdProd9report_uninitialized_variables/boolean_mask/strided_sliceBreport_uninitialized_variables/boolean_mask/Prod/reduction_indices*

Tidx0*
T0*
	keep_dims( *
_output_shapes
: 
}
3report_uninitialized_variables/boolean_mask/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:

Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:

Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
į
;report_uninitialized_variables/boolean_mask/strided_slice_1StridedSlice3report_uninitialized_variables/boolean_mask/Shape_1Areport_uninitialized_variables/boolean_mask/strided_slice_1/stackCreport_uninitialized_variables/boolean_mask/strided_slice_1/stack_1Creport_uninitialized_variables/boolean_mask/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
Æ
;report_uninitialized_variables/boolean_mask/concat/values_0Pack0report_uninitialized_variables/boolean_mask/Prod*
_output_shapes
:*

axis *
T0*
N
y
7report_uninitialized_variables/boolean_mask/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
«
2report_uninitialized_variables/boolean_mask/concatConcatV2;report_uninitialized_variables/boolean_mask/concat/values_0;report_uninitialized_variables/boolean_mask/strided_slice_17report_uninitialized_variables/boolean_mask/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
Ė
3report_uninitialized_variables/boolean_mask/ReshapeReshape$report_uninitialized_variables/Const2report_uninitialized_variables/boolean_mask/concat*
Tshape0*
T0*
_output_shapes
:

;report_uninitialized_variables/boolean_mask/Reshape_1/shapeConst*
dtype0*
valueB:
’’’’’’’’’*
_output_shapes
:
Ū
5report_uninitialized_variables/boolean_mask/Reshape_1Reshape)report_uninitialized_variables/LogicalNot;report_uninitialized_variables/boolean_mask/Reshape_1/shape*
Tshape0*
T0
*
_output_shapes
:

1report_uninitialized_variables/boolean_mask/WhereWhere5report_uninitialized_variables/boolean_mask/Reshape_1*'
_output_shapes
:’’’’’’’’’
¶
3report_uninitialized_variables/boolean_mask/SqueezeSqueeze1report_uninitialized_variables/boolean_mask/Where*
squeeze_dims
*
T0	*#
_output_shapes
:’’’’’’’’’

2report_uninitialized_variables/boolean_mask/GatherGather3report_uninitialized_variables/boolean_mask/Reshape3report_uninitialized_variables/boolean_mask/Squeeze*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:’’’’’’’’’
A
initNoOp^Variable/Assign^Variable_1/Assign"/device:CPU:0

init_1NoOp

init_all_tablesNoOp
-

group_depsNoOp^init_1^init_all_tables
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
u
save/SaveV2/tensor_namesConst*
dtype0*)
value BBVariableB
Variable_1*
_output_shapes
:
g
save/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B *
_output_shapes
:

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable
Variable_1*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
T0*
_output_shapes
: 
{
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
valueBBVariable*
_output_shapes
:
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
©
save/AssignAssignVariablesave/RestoreV2"/device:CPU:0*
validate_shape(*
_class
loc:@Variable*
use_locking(*
T0*
_output_shapes
:

save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
valueBB
Variable_1*
_output_shapes
:
y
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
valueB
B *
_output_shapes
:
„
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
±
save/Assign_1Assign
Variable_1save/RestoreV2_1"/device:CPU:0*
validate_shape(*
_class
loc:@Variable_1*
use_locking(*
T0*
_output_shapes
:
E
save/restore_allNoOp^save/Assign^save/Assign_1"/device:CPU:0"D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"
trainable_variableshf
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0"
local_init_op


group_deps"u
	variableshf
.

Variable:0Variable/AssignVariable/read:0
4
Variable_1:0Variable_1/AssignVariable_1/read:0"
train_op

GradientDescent"R
saversHF
D
save/Const:0save/control_depen