: jump ( x y z -- ) \ teleport current player to x,y,z
	player@ teleport-player-to
;

: jm ( map_x map_y -- ) \ teleport current player
    \ to map-coordinates
	map>loc
	3500 \ highest geodata z-coordinat
	jump
;



\ ================================
\ TODO: not worked with l2j.sf yet
\ ================================

: TELEPORT_TO_NPC ( npc_id -- )
\ Teleport player to npc
	
	DUP NUMBER? NOT IF NPC_NAME>ID THEN

	NPC_ID>SPAWN

( 	DUP null = IF
		"Not found this NPC" .
		EXIT
   	THEN
)

	PLAYER@
	SWAP COORDS@
	SWAP 100 + SWAP
	TELEPORT_PLAYER_TO
;
