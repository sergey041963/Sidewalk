CONTAINER oSidewalk
{
	NAME oSidewalk;
	INCLUDE Obase;

	GROUP	SIDEWALK_GENERAL
	{
		DEFAULT 1;
		
		VECTOR	SIDEWALK_ELEMENT_SIZE		{ UNIT METER; MIN 1.0; }
		
		GROUP
		{
			LAYOUTGROUP;
			COLUMNS 2;
			
			GROUP
			{
				LONG	SIDEWALK_COUNT_X	{ MIN 1; }
			}

			GROUP
			{
				LONG	SIDEWALK_COUNT_Z	{ MIN 1; }
			}
		}
		
		SEPARATOR						{ LINE; }
		
		REAL	SIDEWALK_SHIFT			{ UNIT METER; }
		
		SEPARATOR						{ LINE; }
		
		REAL	SIDEWALK_ELEMENT_SELBIAS	{ UNIT PERCENT; MIN -100.0; MAX 100.0; CUSTOMGUI REALSLIDER; }
		REAL	SIDEWALK_ELEMENT_HOLEBIAS	{ UNIT PERCENT; MIN 0.0; MAX 100.0; CUSTOMGUI REALSLIDER; }
		LONG	SIDEWALK_ELEMENT_SEED	{ MIN 0; }
	}
	
	GROUP	SIDEWALK_PLATES
	{
		REAL	SIDEWALK_PLATES_SPACE		{ UNIT METER; STEP 0.1; MIN 0.0; }
		
		REAL	SIDEWALK_PLATES_FILLET_RAD	{ UNIT METER; STEP 0.001; }
		LONG	SIDEWALK_PLATES_FILLET_SUBD	{ MIN 1; }
		
		BOOL	SIDEWALK_PLATES_PHONG		{  }
		
		GROUP SIDEWALK_PLATES_RND
		{
			DEFAULT 1;
			
			VECTOR	SIDEWALK_PLATES_RND_ROT							{ UNIT DEGREE; STEP 0.01; }
			VECTOR	SIDEWALK_PLATES_RND_POS							{ UNIT METER; STEP 0.01; }
			LONG	SIDEWALK_PLATES_RND_SEED							{ MIN 1; }
		}
		
		GROUP SIDEWALK_PLATES_MAT
		{
			DEFAULT 1;
			
			LINK	SIDEWALK_PLATES_MAT_LINK		{ ANIM MIX; ACCEPT { Mbase; } REFUSE { 1011014; 1017730; } }
			REAL	SIDEWALK_PLATES_MAT_SCALE		{ UNIT PERCENT; }
			BOOL	SIDEWALK_PLATES_MAT_EACH		{  }
		}

	}
	
	GROUP	SIDEWALK_COBBLE
	{
		LONG	SIDEWALK_COBBLE_COUNT		{ MIN 1; }
		REAL	SIDEWALK_COBBLE_SPACE		{ UNIT METER; STEP 0.1; MIN 0.0; }
		REAL	SIDEWALK_COBBLE_CRUMPLE		{ STEP 0.1; }
		REAL	SIDEWALK_COBBLE_ELEVATION	{ UNIT METER; STEP 0.1; }
		
		LONG	SIDEWALK_COBBLE_SUBD		{ MIN 1; }
		REAL	SIDEWALK_COBBLE_FILLET_RAD	{ UNIT METER; STEP 0.001; }
		LONG	SIDEWALK_COBBLE_FILLET_SUBD	{ MIN 1; }
		
		BOOL	SIDEWALK_COBBLE_PHONG		{  }
		
		GROUP SIDEWALK_COBBLE_RND
		{
			DEFAULT 1;
			
			VECTOR	SIDEWALK_COBBLE_RND_ROT			{ UNIT DEGREE; STEP 0.01; }
			VECTOR	SIDEWALK_COBBLE_RND_POS			{ UNIT METER; STEP 0.01; }
			LONG	SIDEWALK_COBBLE_RND_SEED		{ MIN 1; }
		}
		
		GROUP SIDEWALK_COBBLE_MAT
		{
			DEFAULT 1;
			
			LINK	SIDEWALK_COBBLE_MAT_LINK		{ ANIM MIX; ACCEPT { Mbase; } REFUSE { 1011014; 1017730; } }
			REAL	SIDEWALK_COBBLE_MAT_SCALE		{ UNIT PERCENT; }
			BOOL	SIDEWALK_COBBLE_MAT_EACH		{  }
		}
	}
	
	GROUP	SIDEWALK_DIRT
	{
		BOOL	SIDEWALK_USE_DIRT			{  }
		
		LONG	SIDEWALK_DIRT_SUBD			{ MIN 1; }
		REAL	SIDEWALK_DIRT_CRUMPLE		{ UNIT METER; MIN 0.0; STEP 0.1; }
		REAL	SIDEWALK_DIRT_ELEVATION		{ UNIT METER; STEP 0.1; }
		LONG	SIDEWALK_DIRT_SEED			{ MIN 0; }
		
		GROUP SIDEWALK_DIRT_MAT
		{
			DEFAULT 1;
			
			LINK	SIDEWALK_DIRT_MAT_LINK			{ ANIM MIX; ACCEPT { Mbase; } REFUSE { 1011014; 1017730; } }
			REAL	SIDEWALK_DIRT_MAT_SCALE			{ UNIT PERCENT; }
		}
	}
	
	GROUP	SIDEWALK_CURB
	{
		BOOL	SIDEWALK_USE_CURB			{  }
		
		LONG	SIDEWALK_CURB_COUNT			{ MIN 1; }
		
		GROUP
		{
			LAYOUTGROUP;
			COLUMNS 2;
			
			GROUP
			{
				REAL	SIDEWALK_CURB_SIZE_X		{ UNIT METER; MIN 0.0; }
			}
			
			GROUP
			{
				REAL	SIDEWALK_CURB_SIZE_Y		{ UNIT METER; MIN 0.0; }
			}
		}
		
		REAL	SIDEWALK_CURB_VARIATION		{ UNIT PERCENT; MIN 0.0; MAX 100.0; }
		LONG	SIDEWALK_CURB_VARIATION_SEED{ MIN 0; }
		REAL	SIDEWALK_CURB_CRUMPLE_VAL	{ UNIT METER; MIN 0.0; STEP 0.01; }
		REAL	SIDEWALK_CURB_ELEVATION		{ UNIT METER; STEP 0.1; }
		
		LONG	SIDEWALK_CURB_SUBD			{ MIN 1; }
		REAL	SIDEWALK_CURB_FILLET_RAD	{ UNIT METER; MIN 0.0; }
		LONG	SIDEWALK_CURB_FILLET_SUBD	{ MIN 1; }
		
		GROUP SIDEWALK_CURB_MAT
		{
			DEFAULT 1;
			
			LINK	SIDEWALK_CURB_MAT_LINK		{ ANIM MIX; ACCEPT { Mbase; } REFUSE { 1011014; 1017730; } }
			REAL	SIDEWALK_CURB_MAT_SCALE		{ UNIT PERCENT; }
			BOOL	SIDEWALK_CURB_MAT_EACH		{  }
		}
	}
}