#
# CMAKE project for Exotic Matter User Arnold-Particle
# 
# Copyright (c) 2011 Exotic Matter AB.  All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#
# * Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
#
# * Neither the name of Exotic Matter AB nor its contributors may be used to
#   endorse or promote products derived from this software without specific 
#   prior written permission. 
# 
#    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
#    "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,  INCLUDING,  BUT NOT 
#    LIMITED TO,  THE IMPLIED WARRANTIES OF  MERCHANTABILITY AND FITNESS
#    FOR  A  PARTICULAR  PURPOSE  ARE DISCLAIMED.  IN NO EVENT SHALL THE
#    COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
#    INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
#    BUT  NOT LIMITED TO,  PROCUREMENT OF SUBSTITUTE GOODS  OR  SERVICES; 
#    LOSS OF USE,  DATA,  OR PROFITS; OR BUSINESS INTERRUPTION)  HOWEVER
#    CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,  STRICT
#    LIABILITY,  OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)  ARISING IN
#    ANY  WAY OUT OF THE USE OF  THIS SOFTWARE,  EVEN IF ADVISED OF  THE
#    POSSIBILITY OF SUCH DAMAGE.
#
project               (NBUDDY_ARNOLD_USER_OPS_ARNOLD_PARTICLE)

add_library           (Arnold-Particle SHARED 
                       Arnold-Particle)

# Intel compiler
if ($ENV{EM_COMPILER} STREQUAL "intel")
target_link_libraries (Arnold-Particle Ni ai -static-intel)
endif ($ENV{EM_COMPILER} STREQUAL "intel")

# GCC compiler
if ($ENV{EM_COMPILER} STREQUAL "gcc")
target_link_libraries (Arnold-Particle Ni ai)
endif ($ENV{EM_COMPILER} STREQUAL "gcc")

# MSVC compiler
if ("$ENV{EM_COMPILER}" STREQUAL "MSVC")
target_link_libraries (Arnold-Particle Ni${EM_D} ai.dll)
endif ("$ENV{EM_COMPILER}" STREQUAL "MSVC")

# destination location for user op

set_target_properties (Arnold-Particle PROPERTIES PREFIX "")
install               (TARGETS Arnold-Particle DESTINATION server/user-ops)
install               (FILES Arnold-Particle.BodyOp DESTINATION server/user-ops)
