Clear-Host

# Constants

$cppConfigJson =
@'
{
    "version": 4,
    "configurations": [
        {
            "name": "Arduino",
            "compilerPath": "C:\\Program Files (x86)\\Arduino\\hardware\\tools\\avr\\bin\\avr-g++",
            "compilerArgs": [
                "-w",
                "-std=gnu++11",
                "-fpermissive",
                "-fno-exceptions",
                "-ffunction-sections",
                "-fdata-sections",
                "-fno-threadsafe-statics",
                "-Wno-error=narrowing"
            ],
            "intelliSenseMode": "gcc-x64",
            "includePath": [
                "C:\\Program Files (x86)\\Arduino\\hardware\\arduino\\avr\\cores\\arduino",
                "C:\\Program Files (x86)\\Arduino\\hardware\\arduino\\avr\\variants\\standard",
                "C:\\Program Files (x86)\\Arduino\\hardware\\arduino\\avr\\libraries\\**",
                "__mydocs__\\Arduino\\libraries\\**",
                "c:\\program files (x86)\\arduino\\hardware\\tools\\avr\\lib\\gcc\\avr\\7.3.0\\include",
                "c:\\program files (x86)\\arduino\\hardware\\tools\\avr\\lib\\gcc\\avr\\7.3.0\\include-fixed",
                "c:\\program files (x86)\\arduino\\hardware\\tools\\avr\\avr\\include"
            ],
            "forcedInclude": [
                "C:\\Program Files (x86)\\Arduino\\hardware\\arduino\\avr\\cores\\arduino\\Arduino.h"
            ],
            "cStandard": "c11",
            "cppStandard": "c++11",
            "defines": [
                "F_CPU=16000000L",
                "ARDUINO=10819",
                "ARDUINO_AVR_UNO",
                "ARDUINO_ARCH_AVR",
                "__DBL_MIN_EXP__=(-125)",
                "__HQ_FBIT__=15",
                "__cpp_attributes=200809",
                "__UINT_LEAST16_MAX__=0xffffU",
                "__ATOMIC_ACQUIRE=2",
                "__SFRACT_IBIT__=0",
                "__FLT_MIN__=1.17549435e-38F",
                "__GCC_IEC_559_COMPLEX=0",
                "__BUILTIN_AVR_SLEEP=1",
                "__BUILTIN_AVR_COUNTLSULLK=1",
                "__cpp_aggregate_nsdmi=201304",
                "__BUILTIN_AVR_COUNTLSULLR=1",
                "__UFRACT_MAX__=0XFFFFP-16UR",
                "__UINT_LEAST8_TYPE__=unsigned char",
                "__DQ_FBIT__=63",
                "__INTMAX_C(c)=c ## LL",
                "__ULFRACT_FBIT__=32",
                "__SACCUM_EPSILON__=0x1P-7HK",
                "__CHAR_BIT__=8",
                "__USQ_IBIT__=0",
                "__UINT8_MAX__=0xff",
                "__ACCUM_FBIT__=15",
                "__WINT_MAX__=0x7fff",
                "__FLT32_MIN_EXP__=(-125)",
                "__cpp_static_assert=200410",
                "__USFRACT_FBIT__=8",
                "__ORDER_LITTLE_ENDIAN__=1234",
                "__SIZE_MAX__=0xffffU",
                "__WCHAR_MAX__=0x7fff",
                "__LACCUM_IBIT__=32",
                "__DBL_DENORM_MIN__=double(1.40129846e-45L)",
                "__GCC_ATOMIC_CHAR_LOCK_FREE=1",
                "__GCC_IEC_559=0",
                "__FLT_EVAL_METHOD__=0",
                "__BUILTIN_AVR_LLKBITS=1",
                "__cpp_binary_literals=201304",
                "__LLACCUM_MAX__=0X7FFFFFFFFFFFFFFFP-47LLK",
                "__GCC_ATOMIC_CHAR32_T_LOCK_FREE=1",
                "__BUILTIN_AVR_HKBITS=1",
                "__BUILTIN_AVR_BITSLLK=1",
                "__FRACT_FBIT__=15",
                "__BUILTIN_AVR_BITSLLR=1",
                "__cpp_variadic_templates=200704",
                "__UINT_FAST64_MAX__=0xffffffffffffffffULL",
                "__SIG_ATOMIC_TYPE__=char",
                "__BUILTIN_AVR_UHKBITS=1",
                "__UACCUM_FBIT__=16",
                "__DBL_MIN_10_EXP__=(-37)",
                "__FINITE_MATH_ONLY__=0",
                "__cpp_variable_templates=201304",
                "__LFRACT_IBIT__=0",
                "__GNUC_PATCHLEVEL__=0",
                "__FLT32_HAS_DENORM__=1",
                "__LFRACT_MAX__=0X7FFFFFFFP-31LR",
                "__UINT_FAST8_MAX__=0xff",
                "__has_include(STR)=__has_include__(STR)",
                "__DEC64_MAX_EXP__=385",
                "__INT8_C(c)=c",
                "__INT_LEAST8_WIDTH__=8",
                "__UINT_LEAST64_MAX__=0xffffffffffffffffULL",
                "__SA_FBIT__=15",
                "__SHRT_MAX__=0x7fff",
                "__LDBL_MAX__=3.40282347e+38L",
                "__FRACT_MAX__=0X7FFFP-15R",
                "__UFRACT_FBIT__=16",
                "__UFRACT_MIN__=0.0UR",
                "__UINT_LEAST8_MAX__=0xff",
                "__GCC_ATOMIC_BOOL_LOCK_FREE=1",
                "__UINTMAX_TYPE__=long long unsigned int",
                "__LLFRACT_EPSILON__=0x1P-63LLR",
                "__BUILTIN_AVR_DELAY_CYCLES=1",
                "__DEC32_EPSILON__=1E-6DF",
                "__FLT_EVAL_METHOD_TS_18661_3__=0",
                "__UINT32_MAX__=0xffffffffUL",
                "__GXX_EXPERIMENTAL_CXX0X__=1",
                "__ULFRACT_MAX__=0XFFFFFFFFP-32ULR",
                "__TA_IBIT__=16",
                "__LDBL_MAX_EXP__=128",
                "__WINT_MIN__=(-__WINT_MAX__ - 1)",
                "__INT_LEAST16_WIDTH__=16",
                "__ULLFRACT_MIN__=0.0ULLR",
                "__SCHAR_MAX__=0x7f",
                "__WCHAR_MIN__=(-__WCHAR_MAX__ - 1)",
                "__INT64_C(c)=c ## LL",
                "__DBL_DIG__=6",
                "__GCC_ATOMIC_POINTER_LOCK_FREE=1",
                "__AVR_HAVE_SPH__=1",
                "__LLACCUM_MIN__=(-0X1P15LLK-0X1P15LLK)",
                "__BUILTIN_AVR_KBITS=1",
                "__BUILTIN_AVR_ABSK=1",
                "__BUILTIN_AVR_ABSR=1",
                "__SIZEOF_INT__=2",
                "__SIZEOF_POINTER__=2",
                "__GCC_ATOMIC_CHAR16_T_LOCK_FREE=1",
                "__USACCUM_IBIT__=8",
                "__USER_LABEL_PREFIX__",
                "__STDC_HOSTED__=1",
                "__LDBL_HAS_INFINITY__=1",
                "__LFRACT_MIN__=(-0.5LR-0.5LR)",
                "__HA_IBIT__=8",
                "__FLT32_DIG__=6",
                "__TQ_IBIT__=0",
                "__FLT_EPSILON__=1.19209290e-7F",
                "__GXX_WEAK__=1",
                "__SHRT_WIDTH__=16",
                "__USFRACT_IBIT__=0",
                "__LDBL_MIN__=1.17549435e-38L",
                "__FRACT_MIN__=(-0.5R-0.5R)",
                "__AVR_SFR_OFFSET__=0x20",
                "__DEC32_MAX__=9.999999E96DF",
                "__cpp_threadsafe_static_init=200806",
                "__DA_IBIT__=32",
                "__INT32_MAX__=0x7fffffffL",
                "__UQQ_FBIT__=8",
                "__INT_WIDTH__=16",
                "__SIZEOF_LONG__=4",
                "__UACCUM_MAX__=0XFFFFFFFFP-16UK",
                "__UINT16_C(c)=c ## U",
                "__PTRDIFF_WIDTH__=16",
                "__DECIMAL_DIG__=9",
                "__LFRACT_EPSILON__=0x1P-31LR",
                "__AVR_2_BYTE_PC__=1",
                "__ULFRACT_MIN__=0.0ULR",
                "__INTMAX_WIDTH__=64",
                "__has_include_next(STR)=__has_include_next__(STR)",
                "__BUILTIN_AVR_ULLRBITS=1",
                "__LDBL_HAS_QUIET_NAN__=1",
                "__ULACCUM_IBIT__=32",
                "__UACCUM_EPSILON__=0x1P-16UK",
                "__BUILTIN_AVR_SEI=1",
                "__GNUC__=7",
                "__ULLACCUM_MAX__=0XFFFFFFFFFFFFFFFFP-48ULLK",
                "__cpp_delegating_constructors=200604",
                "__HQ_IBIT__=0",
                "__BUILTIN_AVR_SWAP=1",
                "__FLT_HAS_DENORM__=1",
                "__SIZEOF_LONG_DOUBLE__=4",
                "__BIGGEST_ALIGNMENT__=1",
                "__STDC_UTF_16__=1",
                "__UINT24_MAX__=16777215UL",
                "__BUILTIN_AVR_NOP=1",
                "__GNUC_STDC_INLINE__=1",
                "__DQ_IBIT__=0",
                "__FLT32_HAS_INFINITY__=1",
                "__DBL_MAX__=double(3.40282347e+38L)",
                "__ULFRACT_IBIT__=0",
                "__cpp_raw_strings=200710",
                "__INT_FAST32_MAX__=0x7fffffffL",
                "__DBL_HAS_INFINITY__=1",
                "__INT64_MAX__=0x7fffffffffffffffLL",
                "__ACCUM_IBIT__=16",
                "__DEC32_MIN_EXP__=(-94)",
                "__BUILTIN_AVR_UKBITS=1",
                "__INTPTR_WIDTH__=16",
                "__BUILTIN_AVR_FMULSU=1",
                "__LACCUM_MAX__=0X7FFFFFFFFFFFFFFFP-31LK",
                "__INT_FAST16_TYPE__=int",
                "__LDBL_HAS_DENORM__=1",
                "__BUILTIN_AVR_BITSK=1",
                "__BUILTIN_AVR_BITSR=1",
                "__cplusplus=201402L",
                "__cpp_ref_qualifiers=200710",
                "__DEC128_MAX__=9.999999999999999999999999999999999E6144DL",
                "__INT_LEAST32_MAX__=0x7fffffffL",
                "__USING_SJLJ_EXCEPTIONS__=1",
                "__DEC32_MIN__=1E-95DF",
                "__ACCUM_MAX__=0X7FFFFFFFP-15K",
                "__DEPRECATED=1",
                "__cpp_rvalue_references=200610",
                "__DBL_MAX_EXP__=128",
                "__USACCUM_EPSILON__=0x1P-8UHK",
                "__WCHAR_WIDTH__=16",
                "__FLT32_MAX__=3.40282347e+38F32",
                "__DEC128_EPSILON__=1E-33DL",
                "__SFRACT_MAX__=0X7FP-7HR",
                "__FRACT_IBIT__=0",
                "__PTRDIFF_MAX__=0x7fff",
                "__UACCUM_MIN__=0.0UK",
                "__UACCUM_IBIT__=16",
                "__BUILTIN_AVR_NOPS=1",
                "__BUILTIN_AVR_WDR=1",
                "__FLT32_HAS_QUIET_NAN__=1",
                "__GNUG__=7",
                "__LONG_LONG_MAX__=0x7fffffffffffffffLL",
                "__SIZEOF_SIZE_T__=2",
                "__ULACCUM_MAX__=0XFFFFFFFFFFFFFFFFP-32ULK",
                "__cpp_rvalue_reference=200610",
                "__cpp_nsdmi=200809",
                "__SIZEOF_WINT_T__=2",
                "__LONG_LONG_WIDTH__=64",
                "__cpp_initializer_lists=200806",
                "__FLT32_MAX_EXP__=128",
                "__SA_IBIT__=16",
                "__ULLACCUM_MIN__=0.0ULLK",
                "__BUILTIN_AVR_ROUNDUHK=1",
                "__BUILTIN_AVR_ROUNDUHR=1",
                "__cpp_hex_float=201603",
                "__GXX_ABI_VERSION=1011",
                "__INT24_MAX__=8388607L",
                "__UTA_FBIT__=48",
                "__FLT_MIN_EXP__=(-125)",
                "__USFRACT_MAX__=0XFFP-8UHR",
                "__UFRACT_IBIT__=0",
                "__BUILTIN_AVR_ROUNDFX=1",
                "__BUILTIN_AVR_ROUNDULK=1",
                "__BUILTIN_AVR_ROUNDULR=1",
                "__cpp_lambdas=200907",
                "__BUILTIN_AVR_COUNTLSLLK=1",
                "__BUILTIN_AVR_COUNTLSLLR=1",
                "__BUILTIN_AVR_ROUNDHK=1",
                "__INT_FAST64_TYPE__=long long int",
                "__BUILTIN_AVR_ROUNDHR=1",
                "__DBL_MIN__=double(1.17549435e-38L)",
                "__BUILTIN_AVR_COUNTLSK=1",
                "__BUILTIN_AVR_ROUNDLK=1",
                "__BUILTIN_AVR_COUNTLSR=1",
                "__BUILTIN_AVR_ROUNDLR=1",
                "__LACCUM_MIN__=(-0X1P31LK-0X1P31LK)",
                "__ULLACCUM_FBIT__=48",
                "__BUILTIN_AVR_LKBITS=1",
                "__ULLFRACT_EPSILON__=0x1P-64ULLR",
                "__DEC128_MIN__=1E-6143DL",
                "__REGISTER_PREFIX__",
                "__UINT16_MAX__=0xffffU",
                "__DBL_HAS_DENORM__=1",
                "__BUILTIN_AVR_ULKBITS=1",
                "__ACCUM_MIN__=(-0X1P15K-0X1P15K)",
                "__AVR_ARCH__=2",
                "__SQ_IBIT__=0",
                "__FLT32_MIN__=1.17549435e-38F32",
                "__UINT8_TYPE__=unsigned char",
                "__BUILTIN_AVR_ROUNDUK=1",
                "__BUILTIN_AVR_ROUNDUR=1",
                "__UHA_FBIT__=8",
                "__NO_INLINE__=1",
                "__SFRACT_MIN__=(-0.5HR-0.5HR)",
                "__UTQ_FBIT__=128",
                "__FLT_MANT_DIG__=24",
                "__LDBL_DECIMAL_DIG__=9",
                "__VERSION__=\"7.3.0\"",
                "__UINT64_C(c)=c ## ULL",
                "__ULLFRACT_FBIT__=64",
                "__cpp_unicode_characters=200704",
                "__FRACT_EPSILON__=0x1P-15R",
                "__ULACCUM_MIN__=0.0ULK",
                "__UDA_FBIT__=32",
                "__cpp_decltype_auto=201304",
                "__LLACCUM_EPSILON__=0x1P-47LLK",
                "__GCC_ATOMIC_INT_LOCK_FREE=1",
                "__FLT32_MANT_DIG__=24",
                "__BUILTIN_AVR_BITSUHK=1",
                "__BUILTIN_AVR_BITSUHR=1",
                "__FLOAT_WORD_ORDER__=__ORDER_LITTLE_ENDIAN__",
                "__USFRACT_MIN__=0.0UHR",
                "__BUILTIN_AVR_BITSULK=1",
                "__ULLACCUM_IBIT__=16",
                "__BUILTIN_AVR_BITSULR=1",
                "__UQQ_IBIT__=0",
                "__BUILTIN_AVR_LLRBITS=1",
                "__SCHAR_WIDTH__=8",
                "__BUILTIN_AVR_BITSULLK=1",
                "__BUILTIN_AVR_BITSULLR=1",
                "__INT32_C(c)=c ## L",
                "__DEC64_EPSILON__=1E-15DD",
                "__ORDER_PDP_ENDIAN__=3412",
                "__DEC128_MIN_EXP__=(-6142)",
                "__UHQ_FBIT__=16",
                "__LLACCUM_FBIT__=47",
                "__FLT32_MAX_10_EXP__=38",
                "__BUILTIN_AVR_ROUNDULLK=1",
                "__BUILTIN_AVR_ROUNDULLR=1",
                "__INT_FAST32_TYPE__=long int",
                "__BUILTIN_AVR_HRBITS=1",
                "__UINT_LEAST16_TYPE__=unsigned int",
                "__BUILTIN_AVR_UHRBITS=1",
                "__INT16_MAX__=0x7fff",
                "__SIZE_TYPE__=unsigned int",
                "__UINT64_MAX__=0xffffffffffffffffULL",
                "__UDQ_FBIT__=64",
                "__INT8_TYPE__=signed char",
                "__cpp_digit_separators=201309",
                "__ELF__=1",
                "__ULFRACT_EPSILON__=0x1P-32ULR",
                "__LLFRACT_FBIT__=63",
                "__FLT_RADIX__=2",
                "__INT_LEAST16_TYPE__=int",
                "__BUILTIN_AVR_ABSFX=1",
                "__LDBL_EPSILON__=1.19209290e-7L",
                "__UINTMAX_C(c)=c ## ULL",
                "__INT24_MIN__=(-__INT24_MAX__-1)",
                "__SACCUM_MAX__=0X7FFFP-7HK",
                "__BUILTIN_AVR_ABSHR=1",
                "__SIG_ATOMIC_MAX__=0x7f",
                "__GCC_ATOMIC_WCHAR_T_LOCK_FREE=1",
                "__cpp_sized_deallocation=201309",
                "__SIZEOF_PTRDIFF_T__=2",
                "__AVR=1",
                "__BUILTIN_AVR_ABSLK=1",
                "__BUILTIN_AVR_ABSLR=1",
                "__LACCUM_EPSILON__=0x1P-31LK",
                "__DEC32_SUBNORMAL_MIN__=0.000001E-95DF",
                "__INT_FAST16_MAX__=0x7fff",
                "__UINT_FAST32_MAX__=0xffffffffUL",
                "__UINT_LEAST64_TYPE__=long long unsigned int",
                "__USACCUM_MAX__=0XFFFFP-8UHK",
                "__SFRACT_EPSILON__=0x1P-7HR",
                "__FLT_HAS_QUIET_NAN__=1",
                "__FLT_MAX_10_EXP__=38",
                "__LONG_MAX__=0x7fffffffL",
                "__DEC128_SUBNORMAL_MIN__=0.000000000000000000000000000000001E-6143DL",
                "__FLT_HAS_INFINITY__=1",
                "__cpp_unicode_literals=200710",
                "__USA_FBIT__=16",
                "__UINT_FAST16_TYPE__=unsigned int",
                "__DEC64_MAX__=9.999999999999999E384DD",
                "__INT_FAST32_WIDTH__=32",
                "__BUILTIN_AVR_RBITS=1",
                "__CHAR16_TYPE__=unsigned int",
                "__PRAGMA_REDEFINE_EXTNAME=1",
                "__SIZE_WIDTH__=16",
                "__INT_LEAST16_MAX__=0x7fff",
                "__DEC64_MANT_DIG__=16",
                "__UINT_LEAST32_MAX__=0xffffffffUL",
                "__SACCUM_FBIT__=7",
                "__FLT32_DENORM_MIN__=1.40129846e-45F32",
                "__GCC_ATOMIC_LONG_LOCK_FREE=1",
                "__SIG_ATOMIC_WIDTH__=8",
                "__INT_LEAST64_TYPE__=long long int",
                "__INT16_TYPE__=int",
                "__INT_LEAST8_TYPE__=signed char",
                "__SQ_FBIT__=31",
                "__DEC32_MAX_EXP__=97",
                "__INT_FAST8_MAX__=0x7f",
                "__INTPTR_MAX__=0x7fff",
                "__QQ_FBIT__=7",
                "__cpp_range_based_for=200907",
                "__UTA_IBIT__=16",
                "__AVR_ERRATA_SKIP__=1",
                "__FLT32_MIN_10_EXP__=(-37)",
                "__LDBL_MANT_DIG__=24",
                "__SFRACT_FBIT__=7",
                "__SACCUM_MIN__=(-0X1P7HK-0X1P7HK)",
                "__DBL_HAS_QUIET_NAN__=1",
                "__SIG_ATOMIC_MIN__=(-__SIG_ATOMIC_MAX__ - 1)",
                "AVR=1",
                "__BUILTIN_AVR_FMULS=1",
                "__cpp_return_type_deduction=201304",
                "__INTPTR_TYPE__=int",
                "__UINT16_TYPE__=unsigned int",
                "__WCHAR_TYPE__=int",
                "__SIZEOF_FLOAT__=4",
                "__AVR__=1",
                "__BUILTIN_AVR_INSERT_BITS=1",
                "__USQ_FBIT__=32",
                "__UINTPTR_MAX__=0xffffU",
                "__INT_FAST64_WIDTH__=64",
                "__DEC64_MIN_EXP__=(-382)",
                "__cpp_decltype=200707",
                "__FLT32_DECIMAL_DIG__=9",
                "__INT_FAST64_MAX__=0x7fffffffffffffffLL",
                "__GCC_ATOMIC_TEST_AND_SET_TRUEVAL=1",
                "__FLT_DIG__=6",
                "__UINT_FAST64_TYPE__=long long unsigned int",
                "__BUILTIN_AVR_BITSHK=1",
                "__BUILTIN_AVR_BITSHR=1",
                "__INT_MAX__=0x7fff",
                "__LACCUM_FBIT__=31",
                "__USACCUM_MIN__=0.0UHK",
                "__UHA_IBIT__=8",
                "__INT64_TYPE__=long long int",
                "__BUILTIN_AVR_BITSLK=1",
                "__BUILTIN_AVR_BITSLR=1",
                "__FLT_MAX_EXP__=128",
                "__UTQ_IBIT__=0",
                "__DBL_MANT_DIG__=24",
                "__cpp_inheriting_constructors=201511",
                "__BUILTIN_AVR_ULLKBITS=1",
                "__INT_LEAST64_MAX__=0x7fffffffffffffffLL",
                "__DEC64_MIN__=1E-383DD",
                "__WINT_TYPE__=int",
                "__UINT_LEAST32_TYPE__=long unsigned int",
                "__SIZEOF_SHORT__=2",
                "__ULLFRACT_IBIT__=0",
                "__LDBL_MIN_EXP__=(-125)",
                "__UDA_IBIT__=32",
                "__WINT_WIDTH__=16",
                "__INT_LEAST8_MAX__=0x7f",
                "__LFRACT_FBIT__=31",
                "__LDBL_MAX_10_EXP__=38",
                "__ATOMIC_RELAXED=0",
                "__DBL_EPSILON__=double(1.19209290e-7L)",
                "__BUILTIN_AVR_BITSUK=1",
                "__BUILTIN_AVR_BITSUR=1",
                "__UINT8_C(c)=c",
                "__INT_LEAST32_TYPE__=long int",
                "__BUILTIN_AVR_URBITS=1",
                "__SIZEOF_WCHAR_T__=2",
                "__LLFRACT_MAX__=0X7FFFFFFFFFFFFFFFP-63LLR",
                "__TQ_FBIT__=127",
                "__INT_FAST8_TYPE__=signed char",
                "__ULLACCUM_EPSILON__=0x1P-48ULLK",
                "__BUILTIN_AVR_ROUNDK=1",
                "__BUILTIN_AVR_ROUNDR=1",
                "__UHQ_IBIT__=0",
                "__LLACCUM_IBIT__=16",
                "__FLT32_EPSILON__=1.19209290e-7F32",
                "__DBL_DECIMAL_DIG__=9",
                "__STDC_UTF_32__=1",
                "__INT_FAST8_WIDTH__=8",
                "__DEC_EVAL_METHOD__=2",
                "__TA_FBIT__=47",
                "__UDQ_IBIT__=0",
                "__ORDER_BIG_ENDIAN__=4321",
                "__cpp_runtime_arrays=198712",
                "__WITH_AVRLIBC__=1",
                "__UINT64_TYPE__=long long unsigned int",
                "__ACCUM_EPSILON__=0x1P-15K",
                "__UINT32_C(c)=c ## UL",
                "__BUILTIN_AVR_COUNTLSUHK=1",
                "__INTMAX_MAX__=0x7fffffffffffffffLL",
                "__cpp_alias_templates=200704",
                "__BUILTIN_AVR_COUNTLSUHR=1",
                "__BYTE_ORDER__=__ORDER_LITTLE_ENDIAN__",
                "__FLT_DENORM_MIN__=1.40129846e-45F",
                "__LLFRACT_IBIT__=0",
                "__INT8_MAX__=0x7f",
                "__LONG_WIDTH__=32",
                "__UINT_FAST32_TYPE__=long unsigned int",
                "__CHAR32_TYPE__=long unsigned int",
                "__BUILTIN_AVR_COUNTLSULK=1",
                "__BUILTIN_AVR_COUNTLSULR=1",
                "__FLT_MAX__=3.40282347e+38F",
                "__cpp_constexpr=201304",
                "__USACCUM_FBIT__=8",
                "__BUILTIN_AVR_COUNTLSFX=1",
                "__INT32_TYPE__=long int",
                "__SIZEOF_DOUBLE__=4",
                "__FLT_MIN_10_EXP__=(-37)",
                "__UFRACT_EPSILON__=0x1P-16UR",
                "__INT_LEAST32_WIDTH__=32",
                "__BUILTIN_AVR_COUNTLSHK=1",
                "__BUILTIN_AVR_COUNTLSHR=1",
                "__INTMAX_TYPE__=long long int",
                "__BUILTIN_AVR_ABSLLK=1",
                "__BUILTIN_AVR_ABSLLR=1",
                "__DEC128_MAX_EXP__=6145",
                "__AVR_HAVE_16BIT_SP__=1",
                "__ATOMIC_CONSUME=1",
                "__GNUC_MINOR__=3",
                "__INT_FAST16_WIDTH__=16",
                "__UINTMAX_MAX__=0xffffffffffffffffULL",
                "__DEC32_MANT_DIG__=7",
                "__HA_FBIT__=7",
                "__BUILTIN_AVR_COUNTLSLK=1",
                "__BUILTIN_AVR_COUNTLSLR=1",
                "__BUILTIN_AVR_CLI=1",
                "__DBL_MAX_10_EXP__=38",
                "__LDBL_DENORM_MIN__=1.40129846e-45L",
                "__INT16_C(c)=c",
                "__cpp_generic_lambdas=201304",
                "__STDC__=1",
                "__PTRDIFF_TYPE__=int",
                "__LLFRACT_MIN__=(-0.5LLR-0.5LLR)",
                "__BUILTIN_AVR_LRBITS=1",
                "__ATOMIC_SEQ_CST=5",
                "__DA_FBIT__=31",
                "__UINT32_TYPE__=long unsigned int",
                "__BUILTIN_AVR_ROUNDLLK=1",
                "__UINTPTR_TYPE__=unsigned int",
                "__BUILTIN_AVR_ROUNDLLR=1",
                "__USA_IBIT__=16",
                "__BUILTIN_AVR_ULRBITS=1",
                "__DEC64_SUBNORMAL_MIN__=0.000000000000001E-383DD",
                "__DEC128_MANT_DIG__=34",
                "__LDBL_MIN_10_EXP__=(-37)",
                "__BUILTIN_AVR_COUNTLSUK=1",
                "__BUILTIN_AVR_COUNTLSUR=1",
                "__SIZEOF_LONG_LONG__=8",
                "__ULACCUM_EPSILON__=0x1P-32ULK",
                "__cpp_user_defined_literals=200809",
                "__SACCUM_IBIT__=8",
                "__GCC_ATOMIC_LLONG_LOCK_FREE=1",
                "__LDBL_DIG__=6",
                "__FLT_DECIMAL_DIG__=9",
                "__UINT_FAST16_MAX__=0xffffU",
                "__GCC_ATOMIC_SHORT_LOCK_FREE=1",
                "__BUILTIN_AVR_ABSHK=1",
                "__BUILTIN_AVR_FLASH_SEGMENT=1",
                "__INT_LEAST64_WIDTH__=64",
                "__ULLFRACT_MAX__=0XFFFFFFFFFFFFFFFFP-64ULLR",
                "__UINT_FAST8_TYPE__=unsigned char",
                "__USFRACT_EPSILON__=0x1P-8UHR",
                "__ULACCUM_FBIT__=32",
                "__QQ_IBIT__=0",
                "__cpp_init_captures=201304",
                "__ATOMIC_ACQ_REL=4",
                "__ATOMIC_RELEASE=3",
                "__BUILTIN_AVR_FMUL=1",
                "USBCON"
            ]
        }
    ]
}
'@
$myDocs = [Environment]::GetFolderPath("MyDocuments");
$arduinoLibs = "$myDocs\Arduino\libraries";
$cppConfigJson = $cppConfigJson.replace("__mydocs__",$myDocs.replace("\", "\\"));
$includePaths = @("$($myDocs.replace("\", "\\"))\\Arduino\\libraries\\**",
"C:\\Program Files (x86)\\Arduino\\hardware\\arduino\\avr\\libraries\\**")

# Functions
Function Exit-Key() {
    Write-Host -NoNewLine "`nPressione qualuqer tecla para sair...";
    $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
    exit
}

Function CheckInstalledSoftware($software) {
    $check = $true
    if (-not ($software) -or $software -eq "mingw") {
        $path = "C:\ProgramData\chocolatey\bin"
        $files = @("gcc.exe", "g++.exe", "gdb.exe")
        foreach ($file in $files) {
            if ( -Not (Test-Path "$path\$file")) { $check = $false }
        }
        if ($software) { return $check }
    }
    
    if (-not ($software) -or $software -eq "arduino") {
        $file = "C:\Program Files (x86)\Arduino\arduino.exe"
        if (-Not (Test-Path $file)) { $check = $false }
        if ($software) { return $check }
    }
    return $check
}

Function NonInstalledSoftwares(){
    $list = "mingw","arduino"
    [System.Collections.ArrayList]$nonInstalled = $list
    foreach ($i in $list){
        if (CheckInstalledSoftware($i)) { $nonInstalled.Remove($i); }
    }
    return $list
}

# If not admin
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # Welcome
    Write-Host 
"
HACKATHON LASALLE 2022 - PREBAND
Este utilitario ira configurar automaticamente seu projeto.
"
    
    # Config project
    Write-Host "Verificando configuracoes do projeto"
    
    ## Create .vscode if not exists
    if (Test-Path ".vscode") {
        Write-Host "[OK] Pasta do VSCode existe"
    } else {
        mkdir .vscode
    }
    
    ## Create cpp_props if not exists
    $fileValid = $true
    $file = "c_cpp_properties.json"
    if (Test-Path ".vscode/$file") {
        $file = Get-Content ".vscode/$file"

        [System.Collections.ArrayList]$fileHandler = $file
        foreach($path in $includePaths){
            $pathExists = $false
            foreach($i in $file){
                if ($i.Contains($path)) {
                    $pathExists = $true
                }
            }
            if (-Not($pathExists)) {
                $indexIncludePath = $fileHandler.IndexOf('            "includePath": [')
                $fileHandler.Insert($indexIncludePath+1, '                "' + $path + '",')
                $fileValid = $false
            }
        }
        
        if (-Not($fileValid)) {
            Write-Host "Corrigindo configuracoes..."
            $fileHandler > .vscode/c_cpp_properties.json
        }
    }
    else {
        # If file does not exist
        Write-Host "Criando configuracoes de bibliotecas..."
        $cppConfigJson > .vscode/c_cpp_properties.json
    }
    if ($fileValid){
        Write-Host "[OK] Configuracao de bilibliotecas valida - .vscode/c_cpp_properties.json"
    }

    # Install Arduino libraries
    
    ## BMP180MI
    $file = "$arduinoLibs\BMP180MI"
    if (Test-Path $file) {
        Write-Host "[OK] Biblioteca BMP180M existe - sensor de pressao e altitude"
    }
    else {
        Write-Host "Instalando biblitoeca BMP180MI...`n"
        git clone https://bitbucket.org/christandlg/bmp180mi.git $file
        Write-Host "`n"
    }
    
    ## RF24
    $package = "RF24"
    $description = "Comunicador de radio"
    $file = "$arduinoLibs\$package"
    if (Test-Path $file) {
        Write-Host "[OK] Biblioteca $package existe - $description"
    }
    else {
        Write-Host "Instalando biblitoeca $package...`n"
        git clone https://github.com/nRF24/RF24.git $file
        Write-Host "`n"
    }
    
    ## RF24Network
    $package = "RF24Network"
    $file = "$arduinoLibs\$package"
    if (Test-Path $file) {
        Write-Host "[OK] Biblioteca $package existe - $description"
    }
    else {
        Write-Host "Instalando biblitoeca $package...`n"
        git clone https://github.com/nRF24/RF24Network.git $file
        Write-Host "`n"
    }

    # Install programs if needed
    if (CheckInstalledSoftware("")){
        Write-Host "[OK] Todos os programas estao instalados"
    } else {
        Write-Host
"
Alguns programas necessarios para o Arduino não foram encontrados.
Para poder instalar os pacotes e preciso executar com privilegios de administrador.
Deseja iniciar? S/n
"
        $yn = Read-Host "n"
        if ($yn -ne "s") { exit }
        
        $arguments = "& '" + $myinvocation.mycommand.definition + "'"
        Start-Process powershell -Verb runAs -ArgumentList $arguments
        Break
    }
}

# If admin - Install softwares
else {
    Write-Host 
    @"
    HACKATHON LASALLE 2022 - PREBAND
Este utilitario ira configurar automaticamente seu projeto.

O que sera feito no seu computador:
1. Instalar 'Chocolatey' ele permite instalar o compilador C/C++ 'MINGW' com sucesso;
2. Instalar Clang, para que o Arduino consiga analisar as bibliotecas em C e C++;
3. Instalar o Arduino IDE 1.x (a versao 2.0 e problematica);
4. Verificar se o VSCode precisa reiniciar para reconhecer os programas instalados;
5. Configurar os arquivos necessarios para compilar o Arduino com sucesso no VSCode.
6. [opcional] Baixar o projeto
Resumindo: Chocolatey, MinGW, Arduino, VSCode, configs

Caso voce ja possua seus pacotes instalados ou tudo configurado, este utilitario ira pular estas etapas.
Caso queira você pode instalar manualmente os pacotes.
---
A partir daqui, as alteracoes serao feitas automaticamente!
Caso seja necessario, este programa ira reiniciar o VSCode para funcionar corretamente!
Deseja iniciar? S/n
"@
    $yn = Read-Host "n"
    if ($yn -ne "s") { Exit-Key }
    Write-Host ""

    $needRestart = $false

    # Chocolatey
    $file = "C:\ProgramData\chocolatey\bin\chocolatey.exe"
    if (Test-Path $file) {
        Write-Host "[OK] Chocolatey exists"
    }
    else {
        Write-Host "Instalando Chocolatey...`n"
        Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
        Write-Host "`n"
    }

    # MinGW
    if (CheckInstalledSoftware("mingw")) {
        Write-Host "[OK] MinGW existe"
    }
    else {
        Write-Host "Instalando MinGW...`n"
        cinst mingw --force -y
        Write-Host "`n"
        $needRestart = $true
    }

    # # Clang / LLVM
    # $file = "C:\Program Files\LLVM\bin\clang.exe"
    # if (CheckInstalledSoftware("clang")) {
    #     Write-Host "[OK] Clang existe"
    # }
    # else {
    #     Write-Host "Instalando Clang (LLVM)...`n"
    #     $path = $env:temp
    #     if (-Not (Test-Path "$env:temp/arduino.exe")) {
    #         Start-BitsTransfer -Source https://downloads.arduino.cc/arduino-1.8.19-windows.exe -Destination "$env:temp/arduino.exe"
    #     }
    #     Start-Process "$env:temp/arduino.exe" -Wait
    #     Write-Host "`n"
    #     $needRestart = $true
    # }

    # Arduino
    $file = "C:\Program Files (x86)\Arduino\arduino.exe"
    if (CheckInstalledSoftware("arduino")) {
        Write-Host "[OK] Arduino existe"
    }
    else {
        Write-Host "Instalando Arduino IDE 1.x...`n"
        $path = $env:temp
        if (-Not (Test-Path "$env:temp/arduino.exe")) {
            Start-BitsTransfer -Source https://downloads.arduino.cc/arduino-1.8.19-windows.exe -Destination "$env:temp/arduino.exe"
        }
        Start-Process "$env:temp/arduino.exe" -Wait
        Write-Host "`n"
        $needRestart = $true
    }

    # VSCode
    $file = "$env:appdata\Local\Programs\Microsoft VS Code\code.exe"
    if (Test-Path $file) {
        Write-Host "[OK] VSCode configurado"
    }
    else {
        $needRestart = $false
        Write-Host "Instalando VSCode...`n"
        $path = $env:temp
        if (-Not (Test-Path "$file/code-install.exe")) {
            Start-BitsTransfer -Source https://az764295.vo.msecnd.net/stable/d045a5eda657f4d7b676dedbfa7aab8207f8a075/VSCodeUserSetup-x64-1.72.2.exe -Destination "$env:temp/code-install.exe"
        }
        Start-Process "$env:temp/code-install.exe" -Wait
        Write-Host "`n"
    }

    # Config VSCode
    if ($needRestart) {
        Write-Host "Programas críticos instalados, reiniciando VSCode...`n"
        taskkill /IM code /F
        code
    }

    # Install VSCode extensions
    $extensions = code --list-extensions

    ## Arduino
    if ($extensions -contains 'vsciot-vscode.vscode-arduino') {
        Write-Host "[OK] Extensao Arduino para VSCode"
    }
    else {
        Write-Host "Instalando extensao Arduino para VSCode..."
        code --install-extension vsciot-vscode.vscode-arduino
        Write-Host "`n"
        Write-Host "Inicializando Arduino pela 1a vez, para configurar as pastas de bibliotecas..."
        Start-Process "C:\Program Files (x86)\Arduino\arduino.exe"
    }

    ## C/C++
    if ($extensions -contains 'ms-vscode.cpptools') {
        Write-Host "[OK] Extensao C/C++ para VSCode"
    }
    else {
        Write-Host "Instalando extensao C/C++ para VSCode..."
        code --install-extension ms-vscode.cpptools
        Write-Host "`n"
    }
    Write-Host "Programas críticos instalados, reiniciando VSCode...`n"

    Write-Host "Execute novamente este programa para configurar seu ambiente Arduino local."
    Write-Host "Cada pasta deve possuir arquivos de configuracao para que o Arduino reconheca`n"
}

Exit-Key
