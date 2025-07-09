# 🧪 Dr. Mario – Assembly Capsule Game (MIPS)

### A MIPS Assembly Game Project by Ahmad Ibrahim Waqas

---

## 🎮 Project Overview

This project is a faithful recreation of the classic **Dr. Mario** game, developed entirely in **MIPS Assembly**. Designed to run on a bitmap display using a 64x64 pixel resolution, the game demonstrates low-level control of graphics, keyboard input, and real-time interaction logic. The project highlights deep understanding of assembly programming, memory-mapped I/O, collision handling, and real-time gameplay logic.

---

## 🧱 Game Summary

In the game, the player drops capsules into a bottle to eliminate viruses by matching capsule colors. The objective is to clear the board without blocking the entrance at the top. If blocked, the game ends with a **Game Over** message.

**Controls:**
- `W` – Rotate capsule
- `A` – Move capsule left
- `D` – Move capsule right
- `S` – Drop capsule faster
- `P` – Pause game
- `R` – Retry from start
- `Q` – Quit the game

**Display Settings:**
- Resolution: **64x64 pixels**
- Pixel unit size: **2x2**
- No additional emulator configuration required

---

## 🚀 Features Implemented

This project goes beyond the core functionality by introducing polished features for a richer gameplay experience:

- **Full Capsule Physics:** Capsules fall, stack, and respond to collisions with both existing capsules and viruses.
- **Virus Elimination Logic:** Capsules of matching color eliminate viruses when aligned in rows or columns.
- **Gravity Handling:** Floating capsule halves drop when disconnected from stacks.
- **Capsule Preview System:** Shows the next four capsules to help players strategize.
- **Game Over Detection:** Automatically triggers a Game Over when the bottle entry is blocked, with retry and quit options.
- **Dr. Mario Theme Music:** Background music implemented for added immersion.
- **Pause and Resume:** Toggle pause state with `P` and resume seamlessly.
- **Graphical Rendering:** Capsules, viruses, and the Dr. Mario sprite are drawn using custom bitmap routines.

---
