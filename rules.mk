INCDIRS := \
	${LIBBLASR_INC} \
	${LIBPBIHDF_INC} \
	${LIBPBDATA_INC}
SYSINCDIRS := \
	${PBBAM_INC} \
	${HDF5_INC} \
	${BOOST_INC}
LIBDIRS := \
	${LIBBLASR_LIB} \
	${LIBPBIHDF_LIB} \
	${LIBPBDATA_LIB} \
	${PBBAM_LIB} \
	${HDF5_LIB} \
	${GCC_LIB} \
	${SZLIB_LIB} \
	${ZLIB_LIB}
LDLIBS+= \
	${LIBPBIHDF_LIBFLAGS} \
	${LIBBLASR_LIBFLAGS} \
	${LIBPBIHDF_LIBFLAGS} \
	${LIBPBDATA_LIBFLAGS} \
	${PBBAM_LIBFLAGS} \
	${HDF5_LIBFLAGS} \
	${HTSLIB_LIBS} \
	${SZLIB_LIBFLAGS} \
	${ZLIB_LIBFLAGS} \
	${RT_LIBFLAGS} \
	${PTHREAD_LIBFLAGS} \
	${DL_LIBFLAGS}
# We repeat LIBPBIHDF_LIBFLAGS because of a circular dependency. See #77.

CPPFLAGS+=$(patsubst %,-I%,${INCDIRS}) $(HTSLIB_CFLAGS)
CPPFLAGS+=$(patsubst %,-I%,${SYSINCDIRS})
LDFLAGS+=$(patsubst %,-L%,${LIBDIRS})
