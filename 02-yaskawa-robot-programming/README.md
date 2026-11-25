# Robot Tic-Tac-Toe (Yaskawa, INFORM)

A Yaskawa robot arm that plays tic-tac-toe against a human on a whiteboard. The robot holds a marker and draws its **O** in the chosen cell. All game logic is written directly in Yaskawa **INFORM** on the robot controller, with no PC or external program involved.

![Robot at the whiteboard](images/robot-setup.jpg)
![Robot drawing a circle](images/robot-drawing-circle.png)

## Hardware

- Yaskawa [robot model] with Smart Pendant
- Custom pen holder on the end effector
- Whiteboard with a hand-drawn 3x3 grid

## How it works

The board is stored in byte variables `B015`–`B023`:

```
 1 | 2 | 3        B015 | B016 | B017
---+---+---       -----+------+-----
 4 | 5 | 6        B018 | B019 | B020
---+---+---       -----+------+-----
 7 | 8 | 9        B021 | B022 | B023
```

| Value | Meaning |
|-------|---------|
| `0`   | empty cell |
| `1`   | human mark |
| `4`   | robot mark |

Other variables:

| Variable | Purpose |
|----------|---------|
| `B024` | cell chosen for the robot's move (1–9), `0` = no move / board full |
| `B027` | scratch: sum of the three cells in the line being checked |
| `B028` | target sum: `8` = look for a winning move, `2` = look for a block |

### Strategy

Because marks are `1` and `4`, a line sums to **8** only when it has two robot marks and one empty cell (robot can win), and to **2** only when it has two human marks and one empty cell (robot must block). The robot picks a move in this order:

1. **Win**: complete any line it already has two in
2. **Block**: stop any line the human has two in
3. **Fallback priority**: center (5), corners (1, 3, 7, 9), then edges (2, 4, 6, 8)

### Jobs

| Job | Role |
|-----|------|
| [`TTT-TURN`](jobs/TTT-TURN.txt) | Entry point for one robot turn: decide, then draw |
| [`TTT-1`](jobs/TTT-1.txt) | Decision logic: win, block, then fallback priority |
| [`TTT-WB`](jobs/TTT-WB.txt) | Checks all 8 lines for the sum in `B028`, writes the move to `B024` and the robot's mark to the board |
| [`TTT-MOVE`](jobs/TTT-MOVE.txt) | Moves to the cell in `B024` and draws the mark (6 taught points per cell, `P001`–`P054`; `P000` is home) |

Call flow: `TTT-TURN` → `TTT-1` → `TTT-WB` (win, then block) → `TTT-MOVE`.

## Running it

1. Mark the human's move on the board variables (`B015`–`B023` = `1`)
2. Run job `TTT-TURN`
3. The robot picks its cell and draws an O

## Notes

- The `.txt` files here are the INFORM instructions only. Taught positions (`P000`–`P054`) are stored in the controller and depend on where the board sits relative to the robot, so re-teach them for a new setup.
- Board reset (clearing `B015`–`B023` between games) is not included.

## Possible improvements

- Detect the human's move automatically (camera or vision)
- Full minimax instead of the win/block/priority heuristic
- Draw the grid and an X for the human
