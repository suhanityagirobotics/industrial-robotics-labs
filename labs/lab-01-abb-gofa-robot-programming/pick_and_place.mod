 ! ABB GoFa (CRB 15000) - RAPID program transcribed from teach-pendant photos.
! Target coordinates are shown as "..." (taught with the pendant), so this file
! is for reading, not for loading onto a controller.
! AOpenGripper and ACloseGripper are procedures defined in the globalProcedures
! module (not included here).

MODULE MainModule
    CONST robtarget wi_homePosition := [...];
    CONST robtarget P1 := [...];
    CONST robtarget P2 := [...];
    CONST robtarget p1shape := [...];
    CONST robtarget P2shape := [...];
    CONST robtarget p3shape := [...];
    CONST robtarget Homenew := [...];
    CONST robtarget pickup := [...];
    CONST robtarget Placeapp := [...];
    CONST robtarget Place := [...];

    ! Go to the home position, then repeat a motion to P1 five times
    PROC main()
        MoveJ wi_homePosition, v1500, z10, tool0;
        FOR i FROM 1 TO 5 DO
            MoveJ P1, v1000, z50, tool0;
        ENDFOR
    ENDPROC

    ! Open and close the gripper with pauses in between
    PROC grippertest()
        AOpenGripper;
        WaitTime 2;
        ACloseGripper;
        WaitTime 2;
        AOpenGripper;
    ENDPROC

    ! Move through three taught points and return to the first one
    PROC Shape()
        MoveJ p1shape, v1000, z50, tool0;
        MoveJ P2shape, v1000, z50, tool0;
        MoveJ p3shape, v1000, z50, tool0;
        MoveJ p1shape, v1000, z50, tool0;
    ENDPROC

    ! Pick up an object and place it at a second position
    PROC Myprogram()
        MoveJ Homenew, v1000, z50, tool0;
        WaitTime 2;
        AOpenGripper;
        MoveJ pickup, v1000, z50, tool0;
        WaitTime 1;
        AOpenGripper;
        WaitTime 2;
        ACloseGripper;
        MoveJ Placeapp, v1000, z50, tool0;
        WaitTime 2;
        MoveJ Place, v1000, z50, tool0;
        WaitTime 2;
        AOpenGripper;
        WaitTime 3;
        ACloseGripper;
    ENDPROC
ENDMODULE
