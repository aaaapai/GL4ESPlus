LOCAL_PATH := $(call my-dir)

#include $(CLEAR_VARS)
#LOCAL_MODULE            := fcl
#LOCAL_SHARED_LIBRARIES  := bytehook
#LOCAL_SRC_FILES         := fcl/fcl_bridge.c \
#                           fcl/fcl_event.c \
#                           fcl/fcl_loader.c \
#                           fcl/jre_launcher.c \
#                           fcl/utils.c
#LOCAL_C_INCLUDES        := $(LOCAL_PATH)/fcl/include
#LOCAL_LDLIBS            := -llog -ldl -landroid
#include $(BUILD_SHARED_LIBRARY)

#include $(CLEAR_VARS)
#LOCAL_MODULE            := glfw
#LOCAL_SHARED_LIBRARIES  := fcl
#LOCAL_SRC_FILES         := glfw/context.c \
#                           glfw/init.c \
#                           glfw/input.c \
#                           glfw/monitor.c \
#                           glfw/vulkan.c \
#                           glfw/window.c \
#                           glfw/fcl_init.c \
#                           glfw/fcl_monitor.c \
#                           glfw/fcl_window.c \
#                           glfw/egl_context.c \
#                           glfw/osmesa_context.c \
#                           glfw/platform.c \
#                           glfw/posix_thread.c \
#                           glfw/posix_time.c \
#                           glfw/driver_helper.c \
#                           driver_helper/nsbypass.c
#LOCAL_C_INCLUDES        := $(LOCAL_PATH)/fcl/include \
#                           $(LOCAL_PATH)/glfw/include
#LOCAL_CFLAGS            := -Wall
#LOCAL_LDLIBS            := -llog -ldl -landroid
#ifeq ($(TARGET_ARCH_ABI), arm64-v8a)
#LOCAL_CFLAGS            += -DADRENO_POSSIBLE
#LOCAL_LDLIBS            += -lEGL -lGLESv2
#endif
#include $(BUILD_SHARED_LIBRARY)

##ifeq ($(TARGET_ARCH_ABI), arm64-v8a)
#include $(CLEAR_VARS)
#LOCAL_MODULE            := linkerhook
#LOCAL_SRC_FILES         := driver_helper/hook.c
#LOCAL_LDFLAGS           := -z global
#include $(BUILD_SHARED_LIBRARY)
##endif

ifeq ($(TARGET_ARCH_ABI), arm64-v8a)
include $(CLEAR_VARS)
LOCAL_MODULE            := shaderconv
LOCAL_SRC_FILES         := gl4esplus/shaderconv/src/shaderconv/shaderconv.c \
                           gl4esplus/shaderconv/src/shaderconv/init.c \
                           gl4esplus/shaderconv/src/shaderconv/ir_print_ir_visitor.cpp \
                           gl4esplus/shaderconv/src/shaderconv/ir_print_glsl_visitor.cpp \
                           gl4esplus/shaderconv/src/shaderconv/GlslConvert.cpp \
                           gl4esplus/shaderconv/src/shaderconv/optimizer.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_redundant_jumps.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_validate.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/link_uniform_initializers.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/hir_field_selection.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/builtin_variables.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_copy_propagation_elements.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/glsl_parser.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/generate_ir.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_array_refcount.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_instructions.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_array_splitting.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_vec_index_to_swizzle.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_discard_flow.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_dead_builtin_variables.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_offset_array.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/link_varyings.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/glsl_parser_extras.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/builtin_types.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_constant_propagation.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_algebraic.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_named_interface_blocks.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_cs_derived.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/link_uniforms.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_structure_splitting.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_tree_grafting.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_constant_expression.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ast_type.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_jumps.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_if_simplification.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_const_arrays_to_uniforms.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_vector_insert.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_conditional_discard.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_hierarchical_visitor.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_builder.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_if_to_cond_assign.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ast_array_index.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/propagate_invariance.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_hv_accept.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/link_interface_blocks.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ast_to_hir.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_function_detect_recursion.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_packing_builtins.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/loop_analysis.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_rvalue_visitor.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_clone.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_vertex_id.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_flip_matrices.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_dead_code.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/link_uniform_block_active_visitor.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_shared_reference.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/s_expression.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_constant_variable.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_reader.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/loop_unroll.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_noise.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_ubo_reference.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_equals.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_vector.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_function_can_inline.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_texture_projection.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_vec_index_to_cond_assign.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/standalone_scaffolding.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/link_uniform_blocks.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_function_inlining.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_constant_folding.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_mat_op_to_vec.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_blend_equation_advanced.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_expression_flattening.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_vectorize.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_dead_code_local.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_flatten_nested_if_blocks.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_set_program_inouts.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_function.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_buffer_access.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_variable_refcount.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_vector_derefs.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/builtin_functions.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/linker_util.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_distance.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_rebalance_tree.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/linker.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_dead_functions.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_variable_index_to_cond_assign.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/glsl_symbol_table.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_dead_builtin_varyings.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_subroutine.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/link_atomics.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/glsl_lexer.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/link_functions.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_tess_level.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_int64.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_discard.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/string_to_uint_map.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_swizzle.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ast_function.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ast_expr.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/standalone.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_print_visitor.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/opt_minmax.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_basic_block.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/ir_builder_print_visitor.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_output_reads.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl/lower_packed_varyings.cpp \
                           gl4esplus/shaderconv/src/compiler/glsl_types.cpp \
                           gl4esplus/shaderconv/src/util/compat_layer.cpp \
                           gl4esplus/shaderconv/src/util/sha1/sha1.c \
                           gl4esplus/shaderconv/src/util/half_float.c \
                           gl4esplus/shaderconv/src/util/blob.c \
                           gl4esplus/shaderconv/src/util/strtod.c \
                           gl4esplus/shaderconv/src/util/hash_table.c \
                           gl4esplus/shaderconv/src/util/softfloat.c \
                           gl4esplus/shaderconv/src/util/set.c \
                           gl4esplus/shaderconv/src/util/mesa-sha1.c \
                           gl4esplus/shaderconv/src/util/string_buffer.c \
                           gl4esplus/shaderconv/src/util/ralloc.c \
                           gl4esplus/shaderconv/src/mesa/main/extensions_table.c \
                           gl4esplus/shaderconv/src/mesa/main/imports.c \
                           gl4esplus/shaderconv/src/mesa/program/symbol_table.c \
                           gl4esplus/shaderconv/src/mesa/program/prog_parameter.c \
                           gl4esplus/shaderconv/src/compiler/glsl/glcpp/glcpp.c \
                           gl4esplus/shaderconv/src/compiler/glsl/glcpp/glcpp-parse.c \
                           gl4esplus/shaderconv/src/compiler/glsl/glcpp/pp.c \
                           gl4esplus/shaderconv/src/compiler/glsl/glcpp/pp_standalone_scaffolding.c \
                           gl4esplus/shaderconv/src/compiler/glsl/glcpp/glcpp-lex.c \
                           gl4esplus/shaderconv/src/compiler/shader_enums.c
LOCAL_C_INCLUDES        := $(LOCAL_PATH)/gl4esplus/shaderconv/include \
                           $(LOCAL_PATH)/gl4esplus/shaderconv/src \
                           $(LOCAL_PATH)/gl4esplus/shaderconv/src/compiler \
                           $(LOCAL_PATH)/gl4esplus/shaderconv/src/compiler/glsl \
                           $(LOCAL_PATH)/gl4esplus/shaderconv/src/util \
                           $(LOCAL_PATH)/gl4esplus/shaderconv/src/mesa \
                           $(LOCAL_PATH)/gl4esplus/shaderconv/src/mapi \
                           $(LOCAL_PATH)/gl4esplus/shaderconv/src/gallium/auxiliary \
                           $(LOCAL_PATH)/gl4esplus/shaderconv/src/gallium/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)
LOCAL_LDLIBS            := -ldl
LOCAL_CPP_FEATURES      := exceptions
LOCAL_CPPFLAGS           = -std=gnu++20
LOCAL_CFLAGS            += -std=gnu2x
LOCAL_CFLAGS            += -D_LIB
LOCAL_CFLAGS            += -DNOMINMAX
LOCAL_CFLAGS            += -D_USE_MATH_DEFINES
LOCAL_CFLAGS            += -D__STDC_NO_THREADS__
LOCAL_CFLAGS            += -D__STDC_LIMIT_MACROS
LOCAL_CFLAGS            += -D__STDC_FORMAT_MACROS
LOCAL_CFLAGS            += -D__STDC_CONSTANT_MACROS
LOCAL_CFLAGS            += -DUTIL_ARCH_LITTLE_ENDIAN
LOCAL_CFLAGS            += -DUNIX
include $(BUILD_SHARED_LIBRARY)

#include $(CLEAR_VARS)
#LOCAL_MODULE            := awt_headless
#include $(BUILD_SHARED_LIBRARY)
#
#include $(CLEAR_VARS)
#LOCAL_MODULE            := awt_xawt
#LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/awt_xawt
#LOCAL_SHARED_LIBRARIES  := awt_headless
#LOCAL_SRC_FILES         := awt_xawt/xawt_fake.c
#include $(BUILD_SHARED_LIBRARY)
#
#include $(CLEAR_VARS)
#LOCAL_MODULE            := pojavexec_awt
#LOCAL_SHARED_LIBRARIES  := fcl
#LOCAL_SRC_FILES         := awt/awt_bridge.c
#include $(BUILD_SHARED_LIBRARY)

#include $(CLEAR_VARS)
## Link GLESv2 for test
#LOCAL_LDLIBS := -ldl -llog -landroid
## -lGLESv2
#LOCAL_MODULE := pojavexec
#LOCAL_SHARED_LIBRARIES  := fcl
## LOCAL_CFLAGS += -DDEBUG
## -DGLES_TEST
#LOCAL_SRC_FILES := \
#    pojav/bigcoreaffinity.c \
#    pojav/egl_bridge.c \
#    pojav/ctxbridges/gl_bridge.c \
#    pojav/ctxbridges/osm_bridge.c \
#    pojav/ctxbridges/egl_loader.c \
#    pojav/ctxbridges/osmesa_loader.c \
#    pojav/ctxbridges/swap_interval_no_egl.c \
#    pojav/environ/environ.c \
#    pojav/input_bridge_v3.c \
#    pojav/virgl/virgl.c \
#    driver_helper/nsbypass.c
#LOCAL_C_INCLUDES        := $(LOCAL_PATH)/pojav
#ifeq ($(TARGET_ARCH_ABI),arm64-v8a)
#LOCAL_CFLAGS += -DADRENO_POSSIBLE
#LOCAL_LDLIBS += -lEGL -lGLESv2
#endif
#include $(BUILD_SHARED_LIBRARY)

#$(call import-module,prefab/bytehook)
