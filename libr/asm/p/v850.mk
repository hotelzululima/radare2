OBJ_V850=asm_v850.o
OBJ_V850+=../arch/v850/v850_disas.o
CFLAGS+=-I./arch/v850


STATIC_OBJ+=${OBJ_V850}
TARGET_V850=asm_v850.${EXT_SO}

ALL_TARGETS+=${TARGET_V850}

${TARGET_V850}: ${OBJ_V850}
	${CC} ${LDFLAGS} ${CFLAGS} -o ${TARGET_V850} ${OBJ_V850}
