! ABB GoFa (CRB 15000) - first RAPID program, transcribed from a teach-pendant photo.
! Compares a fast move (v5000) with a slow move (v50) between two taught positions.
! Target coordinates are shown as "..." (taught with the pendant), so this file
! is for reading, not for loading onto a controller.

MODULE MainModule
    CONST robtarget wi_homePosition := [...];
    CONST robtarget P1 := [...];
    CONST robtarget P2 := [...];

    PROC main()
        MoveJ wi_homePosition, v1500, z10, tool0;
        MoveJ P1, v5000, z10, tool0;    ! fast move
        MoveJ P2, v50, z10, tool0;      ! slow move
    ENDPROC
ENDMODULE
