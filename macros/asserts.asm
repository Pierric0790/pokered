; Macros to verify assumptions about the data or code

table_width: MACRO
CURRENT_TABLE_WIDTH = \1
IF _NARG == 2
REDEF CURRENT_TABLE_START EQUS "\2"
ELSE
REDEF CURRENT_TABLE_START EQUS "._table_width\@"
{CURRENT_TABLE_START}:
ENDC
ENDM

assert_table_length: MACRO
x = \1
	ASSERT x * CURRENT_TABLE_WIDTH == @ - {CURRENT_TABLE_START}, \
		"{CURRENT_TABLE_START}: expected {d:x} entries, each {d:CURRENT_TABLE_WIDTH} bytes"
ENDM

list_start: MACRO
list_index = 0
IF _NARG == 1
REDEF CURRENT_LIST_START EQUS "\1"
ELSE
REDEF CURRENT_LIST_START EQUS "._list_start\@"
{CURRENT_LIST_START}:
ENDC
ENDM

li: MACRO
	ASSERT !STRIN(\1, "@"), STRCAT("String terminator \"@\" in list entry: ", \1)
	db \1, "@"
list_index = list_index + 1
ENDM

assert_list_length: MACRO
x = \1
	ASSERT x == list_index, \
		"{CURRENT_LIST_START}: expected {d:x} entries, got {d:list_index}"
ENDM

nybble_array: MACRO
CURRENT_NYBBLE_ARRAY_VALUE = 0
CURRENT_NYBBLE_ARRAY_LENGTH = 0
IF _NARG == 1
REDEF CURRENT_NYBBLE_ARRAY_START EQUS "\1"
ELSE
REDEF CURRENT_NYBBLE_ARRAY_START EQUS "._nybble_array\@"
{CURRENT_NYBBLE_ARRAY_START}:
ENDC
ENDM

nybble: MACRO
	ASSERT 0 <= (\1) && (\1) < $10, "nybbles must be 0-15"
CURRENT_NYBBLE_ARRAY_VALUE = (\1) | (CURRENT_NYBBLE_ARRAY_VALUE << 4)
CURRENT_NYBBLE_ARRAY_LENGTH = CURRENT_NYBBLE_ARRAY_LENGTH + 1
IF CURRENT_NYBBLE_ARRAY_LENGTH % 2 == 0
	db CURRENT_NYBBLE_ARRAY_VALUE
CURRENT_NYBBLE_ARRAY_VALUE = 0
ENDC
ENDM

end_nybble_array: MACRO
IF CURRENT_NYBBLE_ARRAY_LENGTH % 2
	db CURRENT_NYBBLE_ARRAY_VALUE << 4
ENDC
IF _NARG == 1
x = \1
	ASSERT x == CURRENT_NYBBLE_ARRAY_LENGTH, \
		"{CURRENT_NYBBLE_ARRAY_START}: expected {d:x} nybbles, got {d:CURRENT_NYBBLE_ARRAY_LENGTH}"
x = (x + 1) / 2
	ASSERT x == @ - {CURRENT_NYBBLE_ARRAY_START}, \
		"{CURRENT_NYBBLE_ARRAY_START}: expected {d:x} bytes"
ENDC
ENDM

def_grass_wildmons: MACRO
;\1: encounter rate
CURRENT_GRASS_WILDMONS_RATE = \1
REDEF CURRENT_GRASS_WILDMONS_LABEL EQUS "._def_grass_wildmons_\1"
{CURRENT_GRASS_WILDMONS_LABEL}:
	db \1
ENDM

end_grass_wildmons: MACRO
	IF CURRENT_GRASS_WILDMONS_RATE == 0
		assert 1 == @ - {CURRENT_GRASS_WILDMONS_LABEL}, \
			"def_grass_wildmons {d:CURRENT_GRASS_WILDMONS_RATE}: expected 1 byte"
	ELSE
		assert WILDDATA_LENGTH == @ - {CURRENT_GRASS_WILDMONS_LABEL}, \
			"def_grass_wildmons {d:CURRENT_GRASS_WILDMONS_RATE}: expected {d:WILDDATA_LENGTH} bytes"
	ENDC
ENDM

def_water_wildmons: MACRO
;\1: encounter rate
CURRENT_WATER_WILDMONS_RATE = \1
REDEF CURRENT_WATER_WILDMONS_LABEL EQUS "._def_water_wildmons_\1"
{CURRENT_WATER_WILDMONS_LABEL}:
	db \1
ENDM

end_water_wildmons: MACRO
	IF CURRENT_WATER_WILDMONS_RATE == 0
		assert 1 == @ - {CURRENT_WATER_WILDMONS_LABEL}, \
			"def_water_wildmons {d:CURRENT_WATER_WILDMONS_RATE}: expected 1 byte"
	ELSE
		assert WILDDATA_LENGTH == @ - {CURRENT_WATER_WILDMONS_LABEL}, \
			"def_water_wildmons {d:CURRENT_WATER_WILDMONS_RATE}: expected {d:WILDDATA_LENGTH} bytes"
	ENDC
ENDM