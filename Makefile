SDL2CONFIG=/Users/huang41/np/SDL2/bin/sdl2-config

npc:	original_source.c
	gcc original_source.c -o np 				\
		-Wall					

np:	original_source.c
	gcc original_source.c -o np 				\
		-Wall					\
		-DUSE_SDL `${SDL2CONFIG} --cflags --libs` 	

dot:	dot.c	
	gcc dot.c -o dot				\
		-Wall					\
		`${SDL2CONFIG} --cflags --libs` 	

moose:	teststreaming.c
	gcc teststreaming.c -o moose			\
		-Wall					\
		`${SDL2CONFIG} --cflags --libs` 	


