
MODULE PickAndPlace

    PROC main()

        ! Move to home position
        MoveJ w1_homePosition, v1500, z10, tool0;

        ! Approach the object
        MoveL P1, v500, z10, tool0;

        ! Move closer to the object
        MoveL P2, v50, z10, tool0;

        ! Gripper operation
        CloseGripper;

        WaitTime 1;

        ! Lift and move away
        MoveL P1, v500, z10, tool0;

        ! Return to home
        MoveJ w1_homePosition, v1500, z10, tool0;

    ENDPROC

ENDMODULE
