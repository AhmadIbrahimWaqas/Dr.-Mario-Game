
######################## Bitmap Display Configuration ########################
# - Unit width in pixels:       2
# - Unit height in pixels:      2
# - Display width in pixels:    64
# - Display height in pixels:   64
# - Base Address for Display:   0x10008000 ($gp)
##############################################################################

    .data
##############################################################################
# Immutable Data
##############################################################################
# The address of the bitmap display. Don't forget to connect it!
ADDR_DSPL:
    .word 0x10008000
# The address of the keyboard. Don't forget to connect it!
ADDR_KBRD:
    .word 0xffff0000
dr_mario_pixels: # pixel representation of dr mario 
    .word 0x000000, 0xFFCB8E, 0xFFB570, 0x000000, 0xABABAB, 0xACACAC, 0x974A00, 0x964B00, 0x954B00, 0x000000
    .word 0x000000, 0xFDFDFE, 0xFCFFFA, 0xFFB66F, 0x000000, 0x000000, 0xFFB671, 0xFFB770, 0xFFB96D, 0x000000
    .word 0x000000, 0xFFFBFE, 0xFFFFFF, 0x000000, 0xFEB46E, 0xFFB56E, 0xFFB56E, 0xFFB56E, 0x954B00, 0x000000
    .word 0x000000, 0xFFFBFE, 0xFFFFFF, 0xFFFFFE, 0xB0ACA8, 0xAFABAA, 0xFFFEFA, 0xFFFEFA, 0x000000, 0x000000
    .word 0x000000, 0x000000, 0x000000, 0xFFFFFF, 0xADADAD, 0xACACAC, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0x000000
    .word 0x000000, 0x000000, 0x000000, 0xFFFFFF, 0xFFFFFF, 0xFEFEFE, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0x000000
    .word 0x000000, 0x000000, 0x000000, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFFFFFF, 0xFEFEFF, 0xFFB56B, 0x000000
    .word 0x000000, 0x000000, 0x000000, 0xFFFFFF, 0x000000, 0x000000, 0xFFFFFF, 0xFEFFFE, 0xBF7F7F, 0x000000
    .word 0x000000, 0x9A4E1D, 0x964B00, 0x964B00, 0x000000, 0x000000, 0x964B00, 0x964B00, 0x954B00, 0x000000
    .word 0x000000, 0x8C5434, 0x8B4712, 0x8D4816, 0x000000, 0x000000, 0x894A12, 0x864713, 0x874A17, 0x000000

virus_pixels: #pixel representation of the viruses
    .word 0x2F2A2E, 0x2B2C32, 0x698CEA, 0x6D90EE, 0x6585E2, 0x638BEC, 0x658BEA, 0x6F90EF, 0x6587E9, 0x2A3250
    .word 0x242A2A, 0x6A8FED, 0x7399F3, 0xAF4A54, 0x698FE8, 0x6A8EEE, 0x8D9EFF, 0xD8C358, 0x423D31, 0x678BEB
    .word 0x6186DE, 0xCE434D, 0x302E31, 0x312D34, 0x7395EF, 0x7698F3, 0xCEBE5A, 0xD9C554, 0xD7C251, 0x587AD2
    .word 0x8AA3EF, 0x742634, 0x833642, 0xC6BC7B, 0x45350F, 0x7093F0, 0x738FE7, 0x373D3F, 0x113A4A, 0x67B1E4
    .word 0x7091EE, 0x343134, 0xD7C557, 0xDE455A, 0x869FFF, 0x779AF2, 0x799BF1, 0x7F98F0, 0x7A97F0, 0x7794EE
    .word 0x6F92EC, 0x6B8EEA, 0x7996EE, 0x7A97F2, 0x7090F7, 0x7491ED, 0x123148, 0x6F8EEF, 0x85A1FA, 0x7092EB
    .word 0x7191E6, 0x6689E5, 0x889FF1, 0x7495EE, 0x43371B, 0x38383F, 0x3A3B38, 0x7693EE, 0x7695EE, 0x7597F0
    .word 0xADAFB7, 0x89A7FE, 0x7193ED, 0x7A99F0, 0x254147, 0x62B0E4, 0x6CB3E9, 0x708FF6, 0x6C91EC, 0x7995F3
    .word 0xA3A7B4, 0x372F30, 0x7395EF, 0x7394F3, 0x7798F0, 0x62B1EA, 0x08243B, 0x36393E, 0x6B8AEB, 0x7799F9
    .word 0x5B605F, 0x302F32, 0x3E414F, 0x7391EF, 0x7592F0, 0x6989E8, 0x7898F2, 0x6288EE, 0x9FA0C0, 0x2F2F31

##############################################################################
# Mutable Data
capsule_x: .word 48      # Capsule X position (Column 12)
capsule_y: .word 384     # Capsule Y position (Row 3)
capsule_x_2: .word 48    # X position of the second half
capsule_y_2: .word 512   # Y position of the second half (Row 4)
capsule_color_1: .word 0  # Color of first half of capsule
capsule_color_2: .word 0  # Color of second half of capsule
capsule_orientation: .word 0  # 0 = vertical, 1 = horizontal, 2 = vertical (first half below), 3 = horizontal (first half right)
gravity_counter: .word 0      # Counter for gravity timing
gravity_speed: .word 30       # Number of frames between gravity updates
capsule_locked: .word 0       # Flag to indicate if the current capsule is locked
game_initialized: .word 0     # Flag to track if the game has been initialized
next_capsule_color_1: .word 0  # Color of first half of next capsule
next_capsule_color_2: .word 0  # Color of second half of next capsule
next_capsule_2_color_1: .word 0 # Color of first half of second next capsule
next_capsule_2_color_2: .word 0 # Color of second half of second next capsule
next_capsule_3_color_1: .word 0 # Color of first half of third next capsule
next_capsule_3_color_2: .word 0 # Color of second half of third next capsule
next_capsule_4_color_1: .word 0 # Color of first half of fourth next capsule
next_capsule_4_color_2: .word 0 # Color of second half of fourth next capsule
game_paused: .word 0          # Flag to track if the game is paused (0 = not paused, 1 = paused)
pause_screen_backup: .space 408  # 96 words × 4 bytes
theme_song_melody:
    .word 107, 88, 78, 101, 103, 107, 94, 79, 73, 77, 62, 77, 66, 67, 67, 66, 65, 65, 64, 64, 77, 72, 77, 78, 65, 66, 66, 61, 66, 67, 62, 82, 62, 61, 67, 83, 67, 65, 83, 64, 70, 62, 82, 62, 71, 64, 83, 64, 63, 61, 64, 81, 64, 62, 79, 63, 63, 79, 63, 62, 79, 62, 64, 81, 63, 67, 62, 82, 62, 67, 83, 67, 83, 64, 70, 81, 70, 62, 81, 62, 71, 62, 79, 62, 63, 79, 64, 62, 66, 62, 68, 98, 101, 91, 90, 107, 74, 69, 66, 67, 66, 72, 73, 62, 70, 64, 66, 101, 64, 67, 62, 82, 62, 66, 67, 65, 83, 64, 68, 70, 82, 63, 71, 64, 83, 64, 64, 81, 64, 62, 79, 63, 63, 79, 63, 79, 62, 65, 64, 81, 64, 65, 73, 72, 67, 67, 62, 77, 61, 67, 67, 67, 64, 65, 66, 72, 67, 67, 67, 66, 66, 65, 66, 77, 61, 67, 61, 67, 66, 65, 67, 62, 82, 62, 66, 67, 68, 83, 64, 65, 70, 62, 82, 62, 70, 71, 83, 71, 83, 64, 64, 81, 64, 62, 61, 62, 79, 63, 62, 63, 65, 79, 62, 63, 64, 61, 81, 67, 82, 62, 66, 67, 64, 83, 64, 70, 62, 81, 62, 70, 71, 79, 62, 62, 64, 79, 64, 62, 63, 66, 100, 85, 96, 97, 104, 107, 104, 96, 99, 87, 107, 96, 102, 94, 101, 91, 102, 89, 92, 90, 92, 94, 88, 87, 86, 99, 98, 107, 101, 106, 104, 97, 86, 85, 68, 67, 82, 83, 62, 67, 65, 64, 83, 64, 70, 82, 62, 70, 71, 64, 83, 64, 64, 81, 64, 63, 64, 79, 64, 63, 64, 79, 64, 65, 64, 63, 81, 64, 72, 77, 98, 92, 99, 92, 86, 87, 88, 83, 87, 91, 72, 74, 92, 81, 61, 62, 86, 85, 87, 82, 90, 85, 102, 98, 75, 92, 88, 73, 69, 97, 64, 63, 69, 66, 86, 69, 66, 72, 75, 76, 74, 73, 70, 71, 66, 69, 68, 70, 66, 67, 62, 71, 81, 78, 77, 75, 67, 75, 66, 67, 75, 76, 67, 76, 67, 72, 75, 67, 72, 77, 78, 76, 67, 77, 78, 74, 65, 74, 65, 72, 70, 72, 70, 72, 70, 66, 73, 72, 69, 72, 69, 71, 77, 69, 65, 69, 65, 66, 69, 72, 77, 75, 67, 75, 74, 67, 66, 69, 76, 67, 76, 67, 63, 73, 74, 74, 67, 72, 78, 72, 67, 71, 72, 77, 72, 69, 72, 69, 63, 62, 62, 103, 100, 69, 75, 72, 64, 69, 87, 88, 63, 63, 77, 68, 82, 101, 102, 72, 77, 75, 67, 75, 75, 65, 67, 68, 76, 67, 76, 67, 73, 72, 75, 67, 76, 67, 65, 72, 77, 74, 65, 74, 65, 72, 70, 72, 70, 73, 72, 69, 72, 69, 77, 69, 65, 69, 65, 66, 69, 70, 75, 72, 73, 71, 70, 71, 72, 77, 74, 66, 62, 68, 71, 65, 94, 89, 72, 76, 77, 75, 75, 67, 76, 76, 66, 72, 74, 72, 66, 72, 72, 76, 78, 79, 94, 93, 97, 77, 100, 96, 105, 85, 88, 93, 73, 80, 72, 77, 65, 72, 77, 75, 67, 76, 76, 61, 65, 74, 78, 77, 72, 72, 72, 63, 81, 89, 91, 77, 107, 84, 102, 106, 104, 73, 63, 72, 77, 66, 66, 61, 61, 79, 64, 75, 76, 76, 65, 73, 74, 76, 72, 74, 72, 65, 72, 72, 77, 69, 69, 66, 72, 73, 72, 73, 95, 71, 62, 63, 72, 77, 72, 72, 72, 77, 64, 70, 72, 77, 78, 74, 73, 72

theme_song_bass:
    .word 50, 55, 55, 49, 55, 51, 60, 59, 58, 57, 60, 59, 59, 60, 59, 60, 60, 52, 59, 57, 58, 49, 54, 57, 57, 55, 59, 55, 50, 60, 58, 52, 59, 52, 58, 60, 59, 57, 58, 59, 58, 56, 55, 57, 60, 60, 59, 60, 60, 60, 58, 60, 53, 59, 50, 56, 57, 54, 55, 57, 53, 52, 58, 53, 52, 51, 59, 57, 59, 60, 58, 59, 60, 60, 55, 54, 55, 52, 53, 55, 53, 56, 55, 59, 58, 51, 55, 56, 55, 51, 57, 55, 55, 55, 55, 51, 55, 60, 52, 55, 54, 55, 55, 52, 49, 55, 54, 55, 57, 54, 55, 53, 55, 54, 55, 53, 59, 60, 60, 60, 52, 60, 59, 59, 60, 60, 52, 58, 57, 53, 52, 51, 55, 52, 50, 52, 51, 52, 59, 51, 52, 51, 52, 60, 60, 56, 50, 51, 51, 50, 58, 53, 52, 52, 51, 60, 50, 58, 59, 55, 52, 56, 57, 59, 56, 57, 59, 54, 51, 59, 50, 51, 50, 53, 52, 60, 60, 57, 50, 59, 53, 51, 50, 57, 55, 51, 50, 54, 56, 54, 52, 59, 53, 56, 57, 57, 56, 58, 56, 55, 53, 55, 54, 53, 55, 54, 53, 55, 59, 54, 52, 53, 55, 53, 54, 55, 53, 50, 59, 50, 55, 51, 54, 55, 50, 60, 60, 51, 59, 50, 51, 52, 58, 52, 58, 51, 53, 54, 53, 56, 57, 60, 54, 53, 55, 50, 55, 50, 60, 60, 51, 59, 54, 52, 52, 58, 60, 53, 53, 57, 58, 53, 52, 54, 54, 54, 54, 49, 53, 55, 53, 52, 53, 52, 53, 51, 52, 53, 51, 53, 52, 51, 52, 53, 52, 53, 55, 50, 52, 53, 52, 51, 55, 57, 52, 53, 51, 53, 52, 55, 53, 52, 50, 51, 49, 53, 50, 51, 49, 53, 52, 51, 50, 51, 49, 50, 53, 50, 51, 50, 49, 50, 53, 53, 50, 53, 55, 54, 55, 54, 53, 55, 53, 54, 55, 54, 51, 59, 55, 54, 55, 56, 53, 55, 53, 55, 54, 50, 56, 58, 58, 53, 50, 52, 50

theme_song_percussion:
    .word   # Simulating drum hits

theme_song_note_count:
    .word 612  # Number of melody notes

theme_song_bass_count:
    .word 355  # Number of bass notes

theme_song_perc_count:
    .word 0  # Number of percussion notes
    
time_loop: .word 0    # Current index in the melody array
sound_count: .word 0      # Current index in the bass array
note_delay: .word 9    # Higher = slower, lower = faster

##############################################################################

##############################################################################
# Code
##############################################################################
	.text
	.globl main

    # Run the game.
main:
    # Initialize game
    lw $t0, game_initialized
    bnez $t0, skip_initialization
    li $t0, 1
    sw $t0, game_initialized
    
    jal new_draw_bottle
    
    # Call drawing functions for Dr. Mario and viruses
    jal draw_dr_mario
    jal draw_viruses
    jal initialize_next_capsules
    jal fix_left_border

    

 # -- medicine bottle --
new_draw_bottle:
    # Save registers
    addi $sp, $sp, -16
    sw $ra, 0($sp)
    sw $t0, 4($sp)
    sw $t1, 8($sp)
    sw $t2, 12($sp)
    
    lw $t0, ADDR_DSPL      # Load base address
    li $t1, 0xFFFFFF       # White color for the bottle
    
    # Draw left border (column 3, rows 5-29)
    li $t2, 0              # Counter starting at 0
    li $t5, 25             # Total number of rows
left_border_loop_new:
    addi $t3, $t0, 12      # X = column 3
    addi $t3, $t3, 640     # Y starts at row 5
    mul $t4, $t2, 128      # Calculate Y offset
    add $t4, $t3, $t4      # ADD to starting position (not subtract)
    sw $t1, 0($t4)         # Draw pixel
    addi $t2, $t2, 1       # Increment counter
    blt $t2, $t5, left_border_loop_new
    
    # Draw right border (column 20, rows 5-29)
    li $t2, 0              # Reset counter
right_border_loop_new:
    addi $t3, $t0, 80      # X = column 20
    addi $t3, $t3, 640     # Y starts at row 5
    mul $t4, $t2, 128      # Calculate Y offset
    add $t4, $t3, $t4      # ADD to starting position
    sw $t1, 0($t4)         # Draw pixel
    addi $t2, $t2, 1       # Increment counter
    blt $t2, $t5, right_border_loop_new
    
    # Draw bottom border (row 30, columns 3-20)
    addi $t3, $t0, 12      # X starts at column 3
    addi $t3, $t3, 3840    # Y = row 30
    li $t2, 18             # Width of border
bottom_border_loop_new:
    sw $t1, 0($t3)         # Draw pixel
    addi $t3, $t3, 4       # Move right
    subi $t2, $t2, 1
    bgtz $t2, bottom_border_loop_new
    
    # Draw top left part (row 5, columns 3-9)
    addi $t3, $t0, 12      # X starts at column 3
    addi $t3, $t3, 640     # Y = row 5
    li $t2, 7              # Width of this part
top_left_loop_new:
    sw $t1, 0($t3)         # Draw pixel
    addi $t3, $t3, 4       # Move right
    subi $t2, $t2, 1
    bgtz $t2, top_left_loop_new
    
    # Draw top right part (row 5, columns 14-20)
    addi $t3, $t0, 56      # X starts at column 14
    addi $t3, $t3, 640     # Y = row 5
    li $t2, 7              # Width of this part
top_right_loop_new:
    sw $t1, 0($t3)         # Draw pixel
    addi $t3, $t3, 4       # Move right
    subi $t2, $t2, 1
    bgtz $t2, top_right_loop_new
    
    # Draw left bottleneck (column 9, rows 2-4)
    addi $t3, $t0, 36      # X = column 9
    addi $t3, $t3, 256     # Y starts at row 2
    li $t2, 3              # Height of bottleneck
left_neck_loop_new:
    sw $t1, 0($t3)         # Draw pixel
    addi $t3, $t3, 128     # Move down
    subi $t2, $t2, 1
    bgtz $t2, left_neck_loop_new
    
    # Draw right bottleneck (column 14, rows 2-4)
    addi $t3, $t0, 56      # X = column 14
    addi $t3, $t3, 256     # Y starts at row 2
    li $t2, 3              # Height of bottleneck
right_neck_loop_new:
    sw $t1, 0($t3)         # Draw pixel
    addi $t3, $t3, 128     # Move down
    subi $t2, $t2, 1
    bgtz $t2, right_neck_loop_new
    
    # Restore registers
    lw $ra, 0($sp)
    lw $t0, 4($sp)
    lw $t1, 8($sp)
    lw $t2, 12($sp)
    addi $sp, $sp, 16
    
    jr $ra
    
fix_left_border:
    # Save registers
    addi $sp, $sp, -16
    sw $ra, 0($sp)
    sw $t0, 4($sp)
    sw $t1, 8($sp)
    sw $t2, 12($sp)
    
    lw $t0, ADDR_DSPL      # Load base address
    li $t1, 0xFFFFFF       # White color
    
    # Focus solely on the top-left part of the bottle that's missing
    # Draw pixels at column 3, rows 5-10 (focused area)
    addi $t0, $t0, 12      # Column 3
    addi $t0, $t0, 640     # Start at row 5
    
    # Draw 6 pixels in a vertical column
    sw $t1, 0($t0)         # Row 5
    addi $t0, $t0, 128     # Next row
    sw $t1, 0($t0)         # Row 6
    addi $t0, $t0, 128     # Next row
    sw $t1, 0($t0)         # Row 7
    addi $t0, $t0, 128     # Next row
    sw $t1, 0($t0)         # Row 8
    addi $t0, $t0, 128     # Next row
    sw $t1, 0($t0)         # Row 9
    addi $t0, $t0, 128     # Next row
    sw $t1, 0($t0)         # Row 10
    
    # Restore registers
    lw $ra, 0($sp)
    lw $t0, 4($sp)
    lw $t1, 8($sp)
    lw $t2, 12($sp)
    addi $sp, $sp, 16
    
    jr $ra
    
    
#--Initialisation of next 4 capsules--#

# Initialize the next 4 capsules with random colors
initialize_next_capsules:
    # Save return address
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    
    # Define three possible colors
    li $t1, 0xFF0000      # Red
    li $t2, 0x0000FF      # Blue
    li $t3, 0xFFFF00      # Yellow
    
    # Generate colors for first next capsule
    jal generate_random_capsule_color
    sw $v0, next_capsule_color_1
    
    jal generate_random_capsule_color
    sw $v0, next_capsule_color_2
    
    # Generate colors for second next capsule
    jal generate_random_capsule_color
    sw $v0, next_capsule_2_color_1
    
    jal generate_random_capsule_color
    sw $v0, next_capsule_2_color_2
    
    # Generate colors for third next capsule
    jal generate_random_capsule_color
    sw $v0, next_capsule_3_color_1
    
    jal generate_random_capsule_color
    sw $v0, next_capsule_3_color_2
    
    # Generate colors for fourth next capsule
    jal generate_random_capsule_color
    sw $v0, next_capsule_4_color_1
    
    jal generate_random_capsule_color
    sw $v0, next_capsule_4_color_2
    
    # Draw preview of all 4 capsules
    jal draw_next_capsules
    
    # Restore return address
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra

# Generate a random capsule color
# Returns: $v0 = color code
generate_random_capsule_color:
    # Generate a random number between 0 and 2
    li $v0, 42            # Random number generator
    li $a0, 0             # Use default generator
    li $a1, 3             # Generate number between 0 and 2
    syscall
    
    # Select color based on random number
    beq $a0, 0, gen_red
    beq $a0, 1, gen_blue
    beq $a0, 2, gen_yellow
    
gen_red:
    li $v0, 0xFF0000      # Return red
    jr $ra
gen_blue:
    li $v0, 0x0000FF      # Return blue
    jr $ra
gen_yellow:
    li $v0, 0xFFFF00      # Return yellow
    jr $ra
    
# Draw all 4 preview capsules
draw_next_capsules:
    # Clear the preview area first
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    
    # Clear area for all 4 preview capsules
    li $t9, 0             # Black color for clearing
    
    # Calculate the display area to clear (entire preview area)
    lw $t0, ADDR_DSPL
    addi $t0, $t0, 88     # Start at column 22
    addi $t0, $t0, 640    # Start at row 5
    
    # Clear the entire preview area (rows 5-6, columns 22-38)
    li $t1, 2             # Number of rows to clear
clear_preview_row:
    li $t2, 17            # Number of columns to clear
    move $t3, $t0         # Save row start position
clear_preview_col:
    sw $t9, 0($t3)        # Clear pixel
    addi $t3, $t3, 4      # Next column
    subi $t2, $t2, 1      # Decrement column counter
    bgtz $t2, clear_preview_col
    
    addi $t0, $t0, 128    # Move to next row
    subi $t1, $t1, 1      # Decrement row counter
    bgtz $t1, clear_preview_row
    
    # Now draw all 4 capsules in a horizontal row with 1 column spacing between them
    
    # Draw capsule 1 (Next capsule)
    lw $t0, ADDR_DSPL
    addi $t0, $t0, 88     # Start at column 22
    addi $t0, $t0, 640    # Start at row 5
    lw $t1, next_capsule_color_1
    lw $t2, next_capsule_color_2
    sw $t1, 0($t0)        # Draw first half
    sw $t2, 128($t0)      # Draw second half below it
    
    # Draw capsule 2 (Next+1 capsule) - 2 columns to the right
    lw $t0, ADDR_DSPL
    addi $t0, $t0, 96     # Start at column 24 (2 columns later)
    addi $t0, $t0, 640    # Start at row 5
    lw $t1, next_capsule_2_color_1
    lw $t2, next_capsule_2_color_2
    sw $t1, 0($t0)        # Draw first half
    sw $t2, 128($t0)      # Draw second half below it
    
    # Draw capsule 3 (Next+2 capsule) - 2 columns to the right
    lw $t0, ADDR_DSPL
    addi $t0, $t0, 104    # Start at column 26 (2 columns later)
    addi $t0, $t0, 640    # Start at row 5
    lw $t1, next_capsule_3_color_1
    lw $t2, next_capsule_3_color_2
    sw $t1, 0($t0)        # Draw first half
    sw $t2, 128($t0)      # Draw second half below it
    
    # Draw capsule 4 (Next+3 capsule) - 2 columns to the right
    lw $t0, ADDR_DSPL
    addi $t0, $t0, 112    # Start at column 28 (2 columns later)
    addi $t0, $t0, 640    # Start at row 5
    lw $t1, next_capsule_4_color_1
    lw $t2, next_capsule_4_color_2
    sw $t1, 0($t0)        # Draw first half
    sw $t2, 128($t0)      # Draw second half below it
    
    # Restore return address
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra        
    
draw_dr_mario:
    addiu $sp, $sp, -4       # Allocate stack space (8 bytes)
    sw    $ra, 0($sp)        # Save return address
    li   $t3, 53        # X position
    li   $t4, 10         # Y position
    la   $t1, dr_mario_pixels
    jal  draw_characters
    

draw_viruses:
    addiu $sp, $sp, -4       # Allocate stack space (8 bytes)
    sw    $ra, 0($sp)        # Save return address
    li   $t3, 53        # X position
    li   $t4, 20        # Y position
    la   $t1, virus_pixels
    jal  draw_characters
    lw    $ra, 0($sp)         # Restore return address
    addiu $sp, $sp, 4         # Pop stack
    j main
    
draw_characters:
    lw   $t6, ADDR_DSPL   # Load display base address
    addiu $sp, $sp, -4
    sw    $ra, 0($sp)

    mul  $t8, $t4, 128   # Y * row offset
    mul  $t9, $t3, 4     # X * column offset
    add  $t0, $t6, $t8
    add  $t0, $t0, $t9

    li   $t2, 0
draw_row:
    li   $t8, 0
draw_col:
    mul  $t9, $t8, 4
    add  $t9, $t0, $t9
    lw   $t5, 0($t1)
    sw   $t5, 0($t9)
    addi $t1, $t1, 4
    addi $t8, $t8, 1
    bne  $t8, 10, draw_col
    add  $t0, $t0, 128
    addi $t2, $t2, 1
    bne  $t2, 10, draw_row

    lw    $ra, 0($sp)
    addiu $sp, $sp, 4
    jr $ra
    
skip_initialization:
    
  # -- generate starting pill --

    # Generate First Half Color 
    li $v0, 42            # Random number generator
    li $a0, 0
    li $a1, 3             # Generate a number between 0 and 2
    syscall               
    move $t5, $a0         # Store random number in $t5

    # Define three possible colors
    li $t1, 0xFF0000      # Red
    li $t2, 0x0000FF      # Blue
    li $t3, 0xFFFF00      # Yellow

    # Assign first capsule half color based on random number
    beq $t5, 0, first_red
    beq $t5, 1, first_blue
    beq $t5, 2, first_yellow
    
    j game_loop
first_red:
    move $t6, $t1         # Set first half to red
    sw $t1, capsule_color_1  # Store color in memory
    j second_color        # Jump to second color selection
first_blue:
    move $t6, $t2         # Set first half to blue
    sw $t2, capsule_color_1  # Store color in memory
    j second_color
first_yellow:
    move $t6, $t3         # Set first half to yellow
    sw $t3, capsule_color_1  # Store color in memory
    j second_color
    
second_color:
    # Generate Second Half Color 
    li $v0, 42            # Random number generator
    li $a0, 0
    li $a1, 3             # Generate a number between 0 and 2
    syscall             
    move $t5, $a0         # Store random number in $t5

    # Assign second capsule half color based on random number
    beq $t5, 0, second_red
    beq $t5, 1, second_blue
    beq $t5, 2, second_yellow

second_red:
    move $t7, $t1         # Set second half to red
    sw $t1, capsule_color_2  # Store color in memory
    j draw_capsule
second_blue:
    move $t7, $t2         # Set second half to blue
    sw $t2, capsule_color_2  # Store color in memory
    j draw_capsule
second_yellow:
    move $t7, $t3         # Set second half to yellow
    sw $t3, capsule_color_2  # Store color in memory
    j draw_capsule
    
draw_capsule:
    # Draw Capsule at Initial Position 
    lw $t0, ADDR_DSPL      # Load base address of the display
    addi $t0, $t0, 44      # Move to column 12 (4 * 12)
    addi $t0, $t0, 640     # Move down to row 3 (128 * 3)

    lw $t6, capsule_color_1  # Load first half color
    lw $t7, capsule_color_2  # Load second half color
    
    sw $t6, 0($t0)         # Draw first half of the capsule
    sw $t7, 4($t0)       # Draw second half below it
    
    # Initialize capsule position registers
    li $t0, 44             # X position of first half (Column 12)
    sw $t0, capsule_x      # Store X position
    li $t0, 640            # Y position of first half (Row 3)
    sw $t0, capsule_y      # Store Y position
    li $t0, 48             # X position of second half (same column)
    sw $t0, capsule_x_2    # Store X position
    li $t0, 640            # Y position of second half (one row below - Row 4)
    sw $t0, capsule_y_2    # Store Y position
    
    # Initialize capsule orientation (1 = horizontal)
    li $t0, 1
    sw $t0, capsule_orientation

    # Continue with generating next capsule and viruses
    j next_capsule
    
 # -- generate next capsule --
next_capsule:
    # Use the previously generated next capsule colors (from next_capsule_color_1/2)
    lw $t8, next_capsule_color_1
    lw $t9, next_capsule_color_2
    
    # Shift all stored preview capsules up one position
    # Move capsule 2 → capsule 1
    lw $t0, next_capsule_2_color_1
    sw $t0, next_capsule_color_1
    lw $t0, next_capsule_2_color_2
    sw $t0, next_capsule_color_2
    
    # Move capsule 3 → capsule 2
    lw $t0, next_capsule_3_color_1
    sw $t0, next_capsule_2_color_1
    lw $t0, next_capsule_3_color_2
    sw $t0, next_capsule_2_color_2
    
    # Move capsule 4 → capsule 3
    lw $t0, next_capsule_4_color_1
    sw $t0, next_capsule_3_color_1
    lw $t0, next_capsule_4_color_2
    sw $t0, next_capsule_3_color_2
    
    # Generate new colors for the 4th capsule
    # Save original values of $t1, $t2, $t3
    addi $sp, $sp, -12
    sw $t1, 0($sp)
    sw $t2, 4($sp)
    sw $t3, 8($sp)
    
    # Define three possible colors
    li $t1, 0xFF0000      # Red
    li $t2, 0x0000FF      # Blue
    li $t3, 0xFFFF00      # Yellow
    
    # Generate First Half Color for Next Capsule 4
    li $v0, 42            # Random number generator
    li $a0, 0             # Use default generator (ID = 0)
    li $a1, 3             # Generate a number between 0 and 2
    syscall               # Execute syscall to get a random number
    move $t4, $a0         # Store random number in $t4

    # Assign first half color for capsule 4
    beq $t4, 0, next4_red_1
    beq $t4, 1, next4_blue_1
    beq $t4, 2, next4_yellow_1

next4_red_1:
    sw $t1, next_capsule_4_color_1  # Store in memory
    j next4_second_color
next4_blue_1:
    sw $t2, next_capsule_4_color_1  # Store in memory
    j next4_second_color
next4_yellow_1:
    sw $t3, next_capsule_4_color_1  # Store in memory
    j next4_second_color

next4_second_color:
    # Generate Second Half Color for Next Capsule 4
    li $v0, 42            # Random number generator
    li $a0, 0             # Use default generator (ID = 0)
    li $a1, 3             # Generate a number between 0 and 2
    syscall               # Execute syscall to get a random number
    move $t4, $a0         # Store new random number in $t4

    # Assign second half color for capsule 4
    beq $t4, 0, next4_red_2
    beq $t4, 1, next4_blue_2
    beq $t4, 2, next4_yellow_2

next4_red_2:
    sw $t1, next_capsule_4_color_2  # Store in memory
    j draw_next_capsules_preview
next4_blue_2:
    sw $t2, next_capsule_4_color_2  # Store in memory
    j draw_next_capsules_preview
next4_yellow_2:
    sw $t3, next_capsule_4_color_2  # Store in memory
    j draw_next_capsules_preview

draw_next_capsules_preview:
    # Restore saved values of $t1, $t2, $t3
    lw $t1, 0($sp)
    lw $t2, 4($sp)
    lw $t3, 8($sp)
    addi $sp, $sp, 12
    
    # Draw all 4 preview capsules
    # Save return address
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    
    jal draw_next_capsules
    
    # Restore return address
    lw $ra, 0($sp)
    addi $sp, $sp, 4

# -- generate viruses --
generate_viruses:
    # Save return address
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    
    li $s0, 4             # Number of viruses to generate

virus_loop:
    # Generate Random X Position (Column) 
    li $v0, 42              # Random number generator
    li $a0, 0               # Use default generator (ID = 0)
    li $a1, 16              # Generate number between 0 and 15 
    syscall
    addi $t1, $a0, 4        # Shift to valid column range (columns 4 to 19)
    mul $t1, $t1, 4         # Convert column to memory offset (4 bytes per unit)

    # Generate Random Y Position (Row) 
    li $v0, 42              # Random number generator
    li $a0, 0               # Use default generator (ID = 0)
    li $a1, 20              # Generate number between 0 and 19 
    syscall
    addi $t2, $a0, 10       # Shift to valid row range (rows 10 to 29)
    mul $t2, $t2, 128       # Convert row to memory offset (128 bytes per row)

    # Generate Random Color 
    li $v0, 42              # Random number generator
    li $a0, 0               # Use default generator (ID = 0)
    li $a1, 3               # Generate number between 0 and 2 (3 colors)
    syscall
    move $t3, $a0           # Store random color choice

    # Define three possible colors
    li $t4, 0xFF0000        # Red
    li $t5, 0x0000FF        # Blue
    li $t6, 0xFFFF00        # Yellow

    # Assign color based on random number
    beq $t3, 0, virus_red
    beq $t3, 1, virus_blue
    beq $t3, 2, virus_yellow

virus_red:
    move $t7, $t4           # Set virus color to red
    j draw_virus
virus_blue:
    move $t7, $t5           # Set virus color to blue
    j draw_virus
virus_yellow:
    move $t7, $t6           # Set virus color to yellow
    j draw_virus

draw_virus: 
    lw $t0, ADDR_DSPL       # Load base address of display
    add $t0, $t0, $t1       # Add X offset (column)
    add $t0, $t0, $t2       # Add Y offset (row)

    # Set the highest bit to mark as virus
    ori $t7, $t7, 0x80000000  # Set highest bit to mark as virus
    
    sw $t7, 0($t0)          # Draw virus pixel

    subi $s0, $s0, 1        # Decrease virus count
    bgtz $s0, virus_loop    # Repeat until all viruses are placed
    
    




##################### 
# Game loop
#####################

game_loop:
    # Always fix the left border
    jal fix_left_border
    jal play_theme_song
    # 1. Check if key has been pressed
    lw $t0, ADDR_KBRD            # Load the address of the keyboard
    lw $t1, 0($t0)               # Load the value at that address
    andi $t1, $t1, 1             # Check if the most significant bit is 1
    beqz $t1, update_game        # If not, continue game logic

    # A key has been pressed - get the key value
    lw $t2, 4($t0)               # Load the ASCII value of the key pressed
    
    # Check which key was pressed
    beq $t2, 97, move_left       # 'a' key - move left
    beq $t2, 100, move_right     # 'd' key - move right
    beq $t2, 119, rotate_capsule # 'w' key - rotate
    beq $t2, 115, drop_capsule   # 's' key - drop/move down
    beq $t2, 113, quit_game      # 'q' key - quit game
    beq $t2, 112, toggle_pause   # 'p' key - pause game
    
    j update_game                # Continue with game logic
    
toggle_pause:
    # Toggle pause state
    lw $t0, game_paused
    xori $t0, $t0, 1        # Toggle between 0 and 1
    sw $t0, game_paused
    
    # If now paused, save screen area and draw pause text
    beqz $t0, restore_screen_area
    
    # Save the screen area and draw "PAUSED" text
    jal save_screen_area
    jal draw_pause_text
    j update_game
    
save_screen_area:
    # Save the area of screen where pause text will be drawn
    lw $t0, ADDR_DSPL
    addi $t0, $t0, 1280     # Start at row 10 (10 * 128)
    addi $t0, $t0, 20       # Start at column 5 (5 * 4) to center better
    
    la $t1, pause_screen_backup  # Load address of backup array
    
    # Save 6 rows × 17 columns
    li $t3, 6               # Number of rows to save
save_row_loop:
    li $t4, 17              # Number of columns to save per row
    move $t5, $t0           # Save the start position of this row
save_col_loop:
    lw $t6, 0($t5)          # Load pixel value
    sw $t6, 0($t1)          # Save to backup
    
    addi $t5, $t5, 4        # Move to next column
    addi $t1, $t1, 4        # Move to next backup location
    subi $t4, $t4, 1        # Decrement column counter
    bgtz $t4, save_col_loop
    
    # Move to next row
    addi $t0, $t0, 128      # Next row
    subi $t3, $t3, 1        # Decrement row counter
    bgtz $t3, save_row_loop
    
    jr $ra
    
restore_screen_area:
    # Restore the screen area from our backup
    lw $t0, ADDR_DSPL
    addi $t0, $t0, 1280     # Start at row 10 (10 * 128)
    addi $t0, $t0, 20      # Start at column 5 (5 * 4)
    
    la $t1, pause_screen_backup  # Load address of backup array
    
    # Restore 6 rows × 17 columns
    li $t3, 6               # Number of rows to restore
restore_row_loop:
    li $t4, 17              # Number of columns to restore per row
    move $t5, $t0           # Save the start position of this row
restore_col_loop:
    lw $t6, 0($t1)          # Load saved pixel value
    sw $t6, 0($t5)          # Restore to screen
    
    addi $t5, $t5, 4        # Move to next column
    addi $t1, $t1, 4        # Move to next backup location
    subi $t4, $t4, 1        # Decrement column counter
    bgtz $t4, restore_col_loop
    
    # Move to next row
    addi $t0, $t0, 128      # Next row
    subi $t3, $t3, 1        # Decrement row counter
    bgtz $t3, restore_row_loop
    
    j update_game
    
draw_pause_text:
    # Draw "PAUSED" in center of screen within bottle boundaries with spacing between letters
    lw $t0, ADDR_DSPL
    addi $t0, $t0, 1280     # Move down to row 10 (10 * 128)
    addi $t0, $t0, 20       # Start at column 5 (4 * 4)
    
    li $t1, 0xFF0000        # Red color for text
    
    # Draw simplified "P" (2 columns wide)
    sw $t1, 0($t0)
    sw $t1, 4($t0)
    sw $t1, 8($t0)
    sw $t1, 128($t0)
    sw $t1, 136($t0)
    sw $t1, 256($t0)
    sw $t1, 260($t0)
    sw $t1, 264($t0)
    sw $t1, 384($t0)
    sw $t1, 512($t0)
    
    # Draw "A" - Move 12 pixels right (2 columns + 1 space)
    addi $t0, $t0, 16
    sw $t1, 0($t0)
    sw $t1, 4($t0)
    sw $t1, 8($t0)
    sw $t1, 128($t0)
    sw $t1, 136($t0)
    sw $t1, 256($t0)
    sw $t1, 260($t0)
    sw $t1, 264($t0)
    sw $t1, 384($t0)
    sw $t1, 392($t0)
    sw $t1, 512($t0)
    sw $t1, 520($t0)
    
    # Draw "U" - Move 12 pixels right (2 columns + 1 space)
    addi $t0, $t0, 16
    sw $t1, 0($t0)
    sw $t1, 8($t0)
    sw $t1, 128($t0)
    sw $t1, 136($t0)
    sw $t1, 256($t0)
    sw $t1, 264($t0)
    sw $t1, 384($t0)
    sw $t1, 392($t0)
    sw $t1, 512($t0)
    sw $t1, 516($t0)
    sw $t1, 520($t0) 
    
    # Draw "S" - Move 12 pixels right (2 columns + 1 space)
    addi $t0, $t0, 16
    sw $t1, 0($t0)
    sw $t1, 4($t0)
    sw $t1, 128($t0)
    sw $t1, 256($t0)
    sw $t1, 260($t0)
    sw $t1, 388($t0)
    sw $t1, 512($t0)
    sw $t1, 516($t0)
    
    # Draw "E" - Move 12 pixels right (2 columns + 1 space)
    addi $t0, $t0, 12
    sw $t1, 0($t0)
    sw $t1, 4($t0)
    sw $t1, 128($t0)
    sw $t1, 256($t0)
    sw $t1, 260($t0)
    sw $t1, 384($t0)
    sw $t1, 512($t0)
    sw $t1, 516($t0)
    
    jr $ra

move_left:
    # Before collision detection, temporarily clear the capsule
    jal clear_capsule

    # Check the first half's collision
    lw $t5, ADDR_DSPL
    lw $t3, capsule_x
    addi $t3, $t3, -4            # Position after moving left
    add $t5, $t5, $t3
    lw $t6, capsule_y
    add $t5, $t5, $t6
    lw $t7, 0($t5)               # Load color at position to the left
    bnez $t7, left_collision_found

    # Check the second half's collision if vertical (orientation 0 or 2)
    lw $t0, capsule_orientation
    beq $t0, 0, check_second_left_v
    beq $t0, 2, check_second_left_v

    # Otherwise, check horizontal orientations
    beq $t0, 1, check_second_left_h1
    beq $t0, 3, check_second_left_h2

    j update_left_position
    
check_second_left_v:
    lw $t5, ADDR_DSPL
    lw $t3, capsule_x_2          # Second half X
    addi $t3, $t3, -4            # Position after moving left
    add $t5, $t5, $t3
    lw $t6, capsule_y_2          # Second half Y
    add $t5, $t5, $t6
    lw $t7, 0($t5)               # Load color at position to the left
    bnez $t7, left_collision_found
    j update_left_position

    
check_second_left_h1:
    # For orientation 1, we also need to check the first half (leftmost)
    lw $t5, ADDR_DSPL
    lw $t3, capsule_x_2          # Second half X
    addi $t3, $t3, -4            # Position after moving left
    add $t5, $t5, $t3
    lw $t6, capsule_y_2          # Second half Y
    add $t5, $t5, $t6
    lw $t7, 0($t5)               # Load color at position to the left
    bnez $t7, left_collision_found
    j update_left_position
    
check_second_left_h2:
    # For orientation 3, we also need to check the second half (leftmost)
    lw $t5, ADDR_DSPL
    lw $t3, capsule_x_2          # Second half X
    addi $t3, $t3, -4            # Position after moving left
    add $t5, $t5, $t3
    lw $t6, capsule_y_2          # Second half Y
    add $t5, $t5, $t6
    lw $t7, 0($t5)               # Load color at position to the left
    bnez $t7, left_collision_found
    j update_left_position
    
left_collision_found:
    # Redraw the capsule since we cleared it for checking
    jal draw_capsule_at_position
    j update_game

update_left_position:
    # Update X position
    lw $t3, capsule_x
    addi $t3, $t3, -4            # Move left by 1 column (4 bytes)
    sw $t3, capsule_x            # Store new X position
    
    # Update second half position
    lw $t3, capsule_x_2
    addi $t3, $t3, -4            # Move left by 1 column
    sw $t3, capsule_x_2          # Store new X position
    
    j update_game
    
move_right:
    # Before collision detection, temporarily clear the capsule
    jal clear_capsule

    # Check the first half's collision
    lw $t5, ADDR_DSPL
    lw $t3, capsule_x
    addi $t3, $t3, 4             # Position after moving right
    add $t5, $t5, $t3
    lw $t6, capsule_y
    add $t5, $t5, $t6
    lw $t7, 0($t5)               # Load color at position to the right
    bnez $t7, right_collision_found

    # Check the second half's collision if vertical (orientation 0 or 2)
    lw $t0, capsule_orientation
    beq $t0, 0, check_second_right_v
    beq $t0, 2, check_second_right_v

    # Otherwise, check horizontal orientations
    beq $t0, 1, check_second_right_h1
    beq $t0, 3, check_second_right_h2

    j update_right_position
    
check_second_right_v:
    lw $t5, ADDR_DSPL
    lw $t3, capsule_x_2          # Second half X
    addi $t3, $t3, 4             # Position after moving right
    add $t5, $t5, $t3
    lw $t6, capsule_y_2          # Second half Y
    add $t5, $t5, $t6
    lw $t7, 0($t5)               # Load color at position to the right
    bnez $t7, right_collision_found
    j update_right_position

    
check_second_right_h1:
    # For orientation 1, we also need to check the second half (rightmost)
    lw $t5, ADDR_DSPL
    lw $t3, capsule_x_2          # Second half X
    addi $t3, $t3, 4             # Position after moving right
    add $t5, $t5, $t3
    lw $t6, capsule_y_2          # Second half Y
    add $t5, $t5, $t6
    lw $t7, 0($t5)               # Load color at position to the right
    bnez $t7, right_collision_found
    j update_right_position
    
check_second_right_h2:
    # For orientation 3, we also need to check the first half (rightmost)
    lw $t5, ADDR_DSPL
    lw $t3, capsule_x_2          # Second half X
    addi $t3, $t3, 4             # Position after moving right
    add $t5, $t5, $t3
    lw $t6, capsule_y_2          # Second half Y
    add $t5, $t5, $t6
    lw $t7, 0($t5)               # Load color at position to the right
    bnez $t7, right_collision_found
    j update_right_position
    
right_collision_found:
    # Redraw the capsule since we cleared it for checking
    jal draw_capsule_at_position
    j update_game

  update_right_position:
    # Update X position of the first half of the capsule
    lw $t3, capsule_x
    addi $t3, $t3, 4            # Move right by 1 column (4 bytes)
    sw $t3, capsule_x            # Store new X position
    
    # Update X position of the second half of the capsule
    lw $t3, capsule_x_2
    addi $t3, $t3, 4            # Move right by 1 column
    sw $t3, capsule_x_2          # Store new X position
    
    # Continue with the game loop
    j update_game


rotate_capsule:
    # Clear current capsule position
    jal clear_capsule

    # Get the current positions
    lw $t1, capsule_x            # First half X
    lw $t2, capsule_y            # First half Y
    lw $t3, capsule_x_2          # Second half X
    lw $t4, capsule_y_2          # Second half Y
    
    # Check current orientation
    lw $t0, capsule_orientation
    
    # Rotate based on current orientation
    addi $t0, $t0, 1             # Increment orientation
    andi $t0, $t0, 3             # Wrap around to 0 after reaching 3 (bitwise AND with 3)
    sw $t0, capsule_orientation  # Save new orientation
    
    # Calculate new position based on new orientation
    beq $t0, 0, set_vertical_up
    beq $t0, 1, set_horizontal_right
    beq $t0, 2, set_vertical_down
    beq $t0, 3, set_horizontal_left
    j update_game                # Should never reach here

set_vertical_up:
    # Vertical (first half on top)
    move $t3, $t1                # Same X as first half
    addi $t4, $t2, 128           # One row below first half
    j check_rotation_collision

set_horizontal_right:
    # Horizontal (first half on left)
    addi $t3, $t1, 4             # One column to the right
    move $t4, $t2                # Same Y as first half
    j check_rotation_collision

set_vertical_down:
    # Vertical (first half on bottom)
    move $t3, $t1                # Same X as first half
    subi $t4, $t2, 128           # One row above first half
    j check_rotation_collision

set_horizontal_left:
    # Horizontal (first half on right)
    subi $t3, $t1, 4             # One column to the left
    move $t4, $t2                # Same Y as first half
    j check_rotation_collision

check_rotation_collision:
    # Add boundary checks
    # Check if rotation would put capsule outside game area
    li $t5, 76                   # Maximum X position (column 19)
    li $t6, 16                   # Minimum X position (column 4)
    
    bgt $t3, $t5, revert_rotation # If beyond right edge, revert
    blt $t3, $t6, revert_rotation # If beyond left edge, revert
    
    # Check if there's a collision at the new position
    lw $t0, ADDR_DSPL            # Load display base address
    add $t0, $t0, $t3            # Add X offset of new position
    add $t0, $t0, $t4            # Add Y offset of new position
    lw $t5, 0($t0)               # Load color at new position
    bnez $t5, revert_rotation    # If not black (0), cannot rotate
    
    # If we reach here, there's no collision, so update the position
    j update_capsule_position

update_capsule_position:
    # Update second half position
    sw $t3, capsule_x_2          # Update second half X
    sw $t4, capsule_y_2          # Update second half Y
    
    # Add boundary checks
    # Check if rotation would put capsule outside game area
    lw $t0, capsule_x_2          # Load new X position
    li $t5, 76                   # Maximum X position (column 19)
    li $t6, 16                   # Minimum X position (column 4)
    
    bgt $t0, $t5, revert_rotation # If beyond right edge, revert
    blt $t0, $t6, revert_rotation # If beyond left edge, revert
    
    j update_game

revert_rotation:
    # Revert to previous orientation
    lw $t0, capsule_orientation
    subi $t0, $t0, 1             # Go back to previous orientation
    andi $t0, $t0, 3             # Wrap around (bitwise AND with 3)
    sw $t0, capsule_orientation  # Save reverted orientation
    
    # Restore previous positions
    lw $t3, capsule_x            # First half X stays the same
    lw $t4, capsule_y            # First half Y stays the same
    
    # Apply correct second half position based on reverted orientation
    beq $t0, 0, revert_vertical_up
    beq $t0, 1, revert_horizontal_right
    beq $t0, 2, revert_vertical_down
    beq $t0, 3, revert_horizontal_left

revert_vertical_up:
    # Vertical (first half on top)
    move $t3, $t1                # Same X as first half
    addi $t4, $t2, 128           # One row below first half
    j finish_revert

revert_horizontal_right:
    # Horizontal (first half on left)
    addi $t3, $t1, 4             # One column to the right
    move $t4, $t2                # Same Y as first half
    j finish_revert

revert_vertical_down:
    # Vertical (first half on bottom)
    move $t3, $t1                # Same X as first half
    subi $t4, $t2, 128           # One row above first half
    j finish_revert

revert_horizontal_left:
    # Horizontal (first half on right)
    subi $t3, $t1, 4             # One column to the left
    move $t4, $t2                # Same Y as first half
    j finish_revert

finish_revert:
    # Update second half position
    sw $t3, capsule_x_2          # Update second half X
    sw $t4, capsule_y_2          # Update second half Y
    
    j update_game

drop_capsule:
    # Check if capsule can move down first
    addi $sp, $sp, -4        # Save return address
    sw $ra, 0($sp)
    
    jal can_move_down        # Check if can move down
    lw $ra, 0($sp)           # Restore return address
    addi $sp, $sp, 4
    
    beqz $v0, update_game    # If can't move down, skip movement
    
    # Clear current capsule position
    jal clear_capsule

    # Update Y position (move down one row)
    lw $t3, capsule_y
    addi $t3, $t3, 128       # Move down by 1 row (128 bytes)
    sw $t3, capsule_y        # Store new Y position
    
    # Update second half position
    lw $t3, capsule_y_2
    addi $t3, $t3, 128       # Move down by 1 row
    sw $t3, capsule_y_2      # Store new Y position
    
    j update_game

clear_capsule:
    # Clear the current capsule position
    lw $t0, ADDR_DSPL            # Load display address
    lw $t3, capsule_x            # Load X position
    lw $t4, capsule_y            # Load Y position
    add $t0, $t0, $t3            # Add X offset
    add $t0, $t0, $t4            # Add Y offset
    
    # Clear first half
    sw $zero, 0($t0)             # Set to black (0)
    
    # Clear second half
    lw $t0, ADDR_DSPL            # Load display address again
    lw $t3, capsule_x_2          # Load second half X position
    lw $t4, capsule_y_2          # Load second half Y position
    add $t0, $t0, $t3            # Add X offset
    add $t0, $t0, $t4            # Add Y offset
    
    sw $zero, 0($t0)             # Set to black (0)
    
    jr $ra                       # Return

update_game:
    # Check if game is paused
    lw $t0, game_paused         # Load pause state
    bnez $t0, skip_updates      # If paused, skip updates
    
    # Apply gravity
    jal apply_gravity
    
    # Redraw the capsule
    jal draw_capsule_at_position
    
skip_updates:
    
    # Sleep for 16ms (approximately 60 FPS)
    li $v0, 32                   # syscall for sleep
    li $a0, 16                   # 16 milliseconds
    syscall
    
    j game_loop                  # Return to start of game loop

apply_gravity:
    # Save return address
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    
    # Check if it's time to apply gravity
    lw $t0, gravity_counter
    addi $t0, $t0, 1             # Increment counter
    sw $t0, gravity_counter
    
    lw $t1, gravity_speed
    blt $t0, $t1, gravity_done   # If counter < speed, skip gravity this frame
    
    # Reset counter
    sw $zero, gravity_counter
    
    # Check if capsule can move down
    jal can_move_down
    beqz $v0, lock_capsule       # If can't move down, lock the capsule
    
    # Clear current capsule position
    jal clear_capsule
    
    # Update Y position (move down one row)
    lw $t3, capsule_y
    addi $t3, $t3, 128           # Move down by 1 row (128 bytes)
    sw $t3, capsule_y            # Store new Y position
    
    # Update second half position
    lw $t3, capsule_y_2
    addi $t3, $t3, 128           # Move down by 1 row
    sw $t3, capsule_y_2          # Store new Y position
    
    j gravity_done

lock_capsule:
    # Set the capsule as locked
    li $t0, 1
    sw $t0, capsule_locked
    
    # Process matches (just horizontal for now)
    jal process_matches
    
    # Generate a new capsule
    jal spawn_new_capsule
    

    j gravity_done

game_over:
    # Clear screen first
    lw $t0, ADDR_DSPL    # Load display address
    li $t1, 1024         # Number of words to clear
    li $t2, 0            # Black color
    
clear_screen_loop:
    sw $t2, 0($t0)       # Clear pixel
    addi $t0, $t0, 4     # Next word
    subi $t1, $t1, 1     # Decrement counter
    bnez $t1, clear_screen_loop

    # Draw "GAME OVER" in center
    lw $t0, ADDR_DSPL
    li $t1, 0xFF0000    # Red color for the text
    
    # Calculate center position (around middle of screen)
    addi $t0, $t0, 896   # Move down 7 rows (7 * 128)
    addi $t0, $t0, 4     # Initial horizontal offset
    
    # G 
    sw $t1, 0($t0)       # Top row
    sw $t1, 4($t0)
    sw $t1, 8($t0)
    sw $t1, 12($t0)
    sw $t1, 16($t0)
    sw $t1, 20($t0)
    
    sw $t1, 128($t0)     # Second row
    
    sw $t1, 256($t0)     # Third row
    sw $t1, 268($t0)
    sw $t1, 272($t0)
    sw $t1, 276($t0)
    
    sw $t1, 384($t0)     # Fourth row
    sw $t1, 396($t0)
    
    sw $t1, 512($t0)     # Fifth row
    sw $t1, 524($t0)
    
    sw $t1, 640($t0)     # Bottom row
    sw $t1, 644($t0)
    sw $t1, 648($t0)
    sw $t1, 652($t0)
    sw $t1, 656($t0)
    sw $t1, 660($t0)
    
    # A
    addi $t0, $t0, 28    # Move right 7 units
    sw $t1, 0($t0)       # Top row
    sw $t1, 4($t0)
    sw $t1, 8($t0)
    sw $t1, 12($t0)
    sw $t1, 16($t0)
    sw $t1, 20($t0)
    
    sw $t1, 128($t0)     # Second row
    sw $t1, 148($t0)
    
    sw $t1, 256($t0)     # Third row
    sw $t1, 276($t0)
    
    sw $t1, 384($t0)     # Fourth row
    sw $t1, 388($t0)
    sw $t1, 392($t0)
    sw $t1, 396($t0)
    sw $t1, 400($t0)
    sw $t1, 404($t0)
    
    sw $t1, 512($t0)     # Fifth row
    sw $t1, 532($t0)
    
    sw $t1, 640($t0)     # Bottom row
    sw $t1, 660($t0)
    
    # M
    addi $t0, $t0, 28
    sw $t1, 0($t0)       # Top row
    sw $t1, 4($t0)
    sw $t1, 8($t0)
    sw $t1, 12($t0)
    sw $t1, 16($t0)
    sw $t1, 20($t0)
    
    sw $t1, 128($t0)     # Second row
    sw $t1, 136($t0)
    sw $t1, 144($t0)
    
    sw $t1, 256($t0)     # Third row
    sw $t1, 264($t0)
    sw $t1, 272($t0)
    
    sw $t1, 384($t0)     # Fourth row
    sw $t1, 404($t0)
    
    sw $t1, 512($t0)     # Fifth row
    sw $t1, 532($t0)
    
    sw $t1, 640($t0)     # Bottom row
    sw $t1, 660($t0)
    
    # E
    addi $t0, $t0, 28
    sw $t1, 0($t0)       # Top row
    sw $t1, 4($t0)
    sw $t1, 8($t0)
    sw $t1, 12($t0)
    sw $t1, 16($t0)
    sw $t1, 20($t0)
    
    sw $t1, 128($t0)     # Second row
    
    sw $t1, 256($t0)     # Third row
    sw $t1, 260($t0)
    sw $t1, 264($t0)
    sw $t1, 268($t0)
    
    sw $t1, 384($t0)     # Fourth row
    
    sw $t1, 512($t0)     # Fifth row
    
    sw $t1, 640($t0)     # Bottom row
    sw $t1, 644($t0)
    sw $t1, 648($t0)
    sw $t1, 652($t0)
    sw $t1, 656($t0)
    sw $t1, 660($t0)
    
    # Move to next line for "OVER"
    lw $t0, ADDR_DSPL
    addi $t0, $t0, 1792  # Move down 14 rows
    addi $t0, $t0, 16    # Center "OVER"
    
    # O
    sw $t1, 0($t0)       # Top row
    sw $t1, 4($t0)
    sw $t1, 8($t0)
    sw $t1, 12($t0)
    sw $t1, 16($t0)
    sw $t1, 20($t0)
    
    sw $t1, 128($t0)     # Second row
    sw $t1, 148($t0)
    
    sw $t1, 256($t0)     # Third row
    sw $t1, 276($t0)
    
    sw $t1, 384($t0)     # Fourth row
    sw $t1, 404($t0)
    
    sw $t1, 512($t0)     # Fifth row
    sw $t1, 532($t0)
    
    sw $t1, 640($t0)     # Bottom row
    sw $t1, 644($t0)
    sw $t1, 648($t0)
    sw $t1, 652($t0)
    sw $t1, 656($t0)
    sw $t1, 660($t0)
    
    # V
    addi $t0, $t0, 28
    sw $t1, 0($t0)       # Top row
    sw $t1, 20($t0)
    
    sw $t1, 128($t0)     # Second row
    sw $t1, 148($t0)
    
    sw $t1, 256($t0)     # Third row
    sw $t1, 276($t0)
    
    sw $t1, 384($t0)     # Fourth row
    sw $t1, 404($t0)
    
    sw $t1, 512($t0)     # Fifth row
    sw $t1, 516($t0)
    sw $t1, 524($t0)
    sw $t1, 528($t0)
    
    sw $t1, 644($t0)     # Bottom center
    sw $t1, 648($t0)
    
    # E
    addi $t0, $t0, 28
    sw $t1, 0($t0)       # Top row
    sw $t1, 4($t0)
    sw $t1, 8($t0)
    sw $t1, 12($t0)
    sw $t1, 16($t0)
    sw $t1, 20($t0)
    
    sw $t1, 128($t0)     # Second row
    
    sw $t1, 256($t0)     # Third row
    sw $t1, 260($t0)
    sw $t1, 264($t0)
    sw $t1, 268($t0)
    
    sw $t1, 384($t0)     # Fourth row
    
    sw $t1, 512($t0)     # Fifth row
    
    sw $t1, 640($t0)     # Bottom row
    sw $t1, 644($t0)
    sw $t1, 648($t0)
    sw $t1, 652($t0)
    sw $t1, 656($t0)
    sw $t1, 660($t0)
    
    # R
    addi $t0, $t0, 28
    sw $t1, 0($t0)       # Top row
    sw $t1, 4($t0)
    sw $t1, 8($t0)
    sw $t1, 12($t0)
    sw $t1, 16($t0)
    sw $t1, 20($t0)
    
    sw $t1, 128($t0)     # Second row
    sw $t1, 148($t0)
    
    sw $t1, 256($t0)     # Third row
    sw $t1, 260($t0)
    sw $t1, 264($t0)
    sw $t1, 268($t0)
    sw $t1, 272($t0)
    
    sw $t1, 384($t0)     # Fourth row
    sw $t1, 400($t0)
    
    sw $t1, 512($t0)     # Fifth row
    sw $t1, 528($t0)
    
    sw $t1, 640($t0)     # Bottom row
    sw $t1, 660($t0)
    
    # Add delay before allowing retry
    li $v0, 32
    li $a0, 3000
    syscall

    # Jump to retry loop instead of exiting
    j retry_loop



game_over_text_loop:
    sw $t1, 0($t0)
    addi $t0, $t0, 4
    subi $t3, $t3, 1
    bgtz $t3, game_over_text_loop

    # Display "Press R to Retry" below "GAME OVER"
    lw $t0, ADDR_DSPL
    li $t2, 3084 # Position to start drawing (Column 3, Row 24)
    add $t0, $t0, $t2
    li $t3, 6               # Number of rows for "Retry" text
retry_text_loop:
    sw $t1, 0($t0)
    addi $t0, $t0, 4
    subi $t3, $t3, 1
    bgtz $t3, retry_text_loop

retry_loop:
    # Wait for user to press 'r'
    lw $t0, ADDR_KBRD
    lw $t1, 0($t0)               # Check if a key is pressed
    andi $t1, $t1, 1
    beqz $t1, retry_loop          # If no key is pressed, keep waiting

    lw $t2, 4($t0)                # Load key press value
    li $t3, 114                   # ASCII code for 'r'
    bne $t2, $t3, retry_loop      # Wait until 'r' is pressed

    # Call the reset function
    jal reset_game_state
    
    # Jump back to main to restart the game
    j main


reset_game_state:
    # Clear the display memory (reset screen to black)
    lw $t0, ADDR_DSPL    # Load base address of the display
    li $t1, 1024         # Number of words to clear (entire display)
    li $t2, 0            # Black color (reset value)
clear_display_loop:
    sw $t2, 0($t0)       # Set pixel to black
    addi $t0, $t0, 4     # Move to next word
    subi $t1, $t1, 1     # Decrease counter
    bnez $t1, clear_display_loop

    # Reset all mutable data to default values
    li $t0, 0
    sw $t0, capsule_x
    sw $t0, capsule_y
    sw $t0, capsule_x_2
    sw $t0, capsule_y_2
    sw $t0, capsule_color_1
    sw $t0, capsule_color_2
    sw $t0, capsule_orientation
    sw $t0, gravity_counter
    sw $t0, capsule_locked
    sw $t0, game_initialized
    sw $t0, next_capsule_color_1
    sw $t0, next_capsule_color_2
    
    # Reset the new variables for the 4-capsule preview
    sw $t0, next_capsule_2_color_1
    sw $t0, next_capsule_2_color_2
    sw $t0, next_capsule_3_color_1
    sw $t0, next_capsule_3_color_2
    sw $t0, next_capsule_4_color_1
    sw $t0, next_capsule_4_color_2
    sw $t0, game_paused

    # Reset gravity speed to default value
    li $t0, 30
    sw $t0, gravity_speed
    
    jr $ra  # Return to the calling function


    
# Function to check if the capsule can move down:
can_move_down:
    # Check if capsule would hit bottom border
    lw $t0, capsule_y            # Load Y position of first half
    lw $t1, capsule_y_2          # Load Y position of second half
    
    # Find the lower part of the capsule
    bgt $t1, $t0, use_second_half
    j use_first_half
    
use_second_half:
    move $t2, $t1                # Use Y of second half
    lw $t3, capsule_x_2          # Use X of second half
    j check_bottom
    
use_first_half:
    move $t2, $t0                # Use Y of first half
    lw $t3, capsule_x            # Use X of first half
    
check_bottom:
    addi $t2, $t2, 128           # Position after moving down
    li $t4, 3840                 # Position of bottom border (row 30)
    bge $t2, $t4, cannot_move    # If would hit bottom, can't move
    
    # Check for collision with viruses or other pills
    lw $t5, ADDR_DSPL            # Load display base address
    add $t5, $t5, $t3            # Add X offset
    add $t5, $t5, $t2            # Add Y offset after moving down
    lw $t6, 0($t5)               # Load color at position below
    bnez $t6, cannot_move        # If not black (0), there's a collision
    
    # Also check the other half of the pill for collisions
    lw $t0, capsule_orientation  # Get current orientation
    
    # For vertical orientation, only need to check bottom piece
    beq $t0, 0, check_vertical_up
    beq $t0, 2, check_vertical_down
    
    # For horizontal orientation, need to check both pieces
    beq $t0, 1, check_horizontal_right
    beq $t0, 3, check_horizontal_left
    
check_vertical_up:
    # Only need to check the bottom piece, already done above
    j collision_done
    
check_vertical_down:
    # Need to check the top piece
    lw $t3, capsule_x            # X of first half (bottom piece in this orientation)
    lw $t2, capsule_y            # Y of first half
    addi $t2, $t2, 128           # Position after moving down
    
    lw $t5, ADDR_DSPL            # Load display base address
    add $t5, $t5, $t3            # Add X offset
    add $t5, $t5, $t2            # Add Y offset after moving down
    lw $t6, 0($t5)               # Load color at position below
    bnez $t6, cannot_move        # If not black (0), there's a collision
    j collision_done
    
check_horizontal_right:
    # Check both pieces
    lw $t3, capsule_x_2          # X of second half (right piece)
    lw $t2, capsule_y_2          # Y of second half
    addi $t2, $t2, 128           # Position after moving down
    
    lw $t5, ADDR_DSPL            # Load display base address
    add $t5, $t5, $t3            # Add X offset
    add $t5, $t5, $t2            # Add Y offset after moving down
    lw $t6, 0($t5)               # Load color at position below
    bnez $t6, cannot_move        # If not black (0), there's a collision
    
    lw $t3, capsule_x            # X of first half (left piece)
    lw $t2, capsule_y            # Y of first half
    addi $t2, $t2, 128           # Position after moving down
    
    lw $t5, ADDR_DSPL            # Load display base address
    add $t5, $t5, $t3            # Add X offset
    add $t5, $t5, $t2            # Add Y offset after moving down
    lw $t6, 0($t5)               # Load color at position below
    bnez $t6, cannot_move        # If not black (0), there's a collision
    j collision_done
    
check_horizontal_left:
    # Check both pieces
    lw $t3, capsule_x            # X of first half (right piece in this orientation)
    lw $t2, capsule_y            # Y of first half
    addi $t2, $t2, 128           # Position after moving down
    
    lw $t5, ADDR_DSPL            # Load display base address
    add $t5, $t5, $t3            # Add X offset
    add $t5, $t5, $t2            # Add Y offset after moving down
    lw $t6, 0($t5)               # Load color at position below
    bnez $t6, cannot_move        # If not black (0), there's a collision
    
    lw $t3, capsule_x_2          # X of second half (left piece in this orientation)
    lw $t2, capsule_y_2          # Y of second half
    addi $t2, $t2, 128           # Position after moving down
    
    lw $t5, ADDR_DSPL            # Load display base address
    add $t5, $t5, $t3            # Add X offset
    add $t5, $t5, $t2            # Add Y offset after moving down
    lw $t6, 0($t5)               # Load color at position below
    bnez $t6, cannot_move        # If not black (0), there's a collision
    j collision_done
    
collision_done:
    # If no collision, can move down
    li $v0, 1                    # Return true (can move)
    jr $ra
    
cannot_move:
    li $v0, 0                    # Return false (cannot move)
    jr $ra

# Function to spawn a new capsule:
spawn_new_capsule:
    # Save return address
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    
    # Check if the entrance is blocked where new capsule would form
    jal check_bottle_entrance
    bnez $v0, game_over     # If entrance is blocked, game over
    
    # Reset the capsule locked flag
    sw $zero, capsule_locked
    
    # Use the first previewed capsule colors
    lw $t6, next_capsule_color_1  # Get stored first half color
    lw $t7, next_capsule_color_2  # Get stored second half color
    
    # Store these colors as the current capsule colors
    sw $t6, capsule_color_1  # Store first half color
    sw $t7, capsule_color_2  # Store second half color
    
    # Reset capsule position (Horizontal spawn)
    li $t0, 44               # X position of first half
    sw $t0, capsule_x
    li $t0, 640              # Y position of first half
    sw $t0, capsule_y
    
    li $t0, 48               # X position of second half
    sw $t0, capsule_x_2
    li $t0, 640              # Y position of second half
    sw $t0, capsule_y_2
    
    # Set horizontal orientation
    li $t0, 1
    sw $t0, capsule_orientation
    
    # Shift all preview capsules up by one position
    # Move capsule 2 → capsule 1
    lw $t0, next_capsule_2_color_1
    sw $t0, next_capsule_color_1
    lw $t0, next_capsule_2_color_2
    sw $t0, next_capsule_color_2
    
    # Move capsule 3 → capsule 2
    lw $t0, next_capsule_3_color_1
    sw $t0, next_capsule_2_color_1
    lw $t0, next_capsule_3_color_2
    sw $t0, next_capsule_2_color_2
    
    # Move capsule 4 → capsule 3
    lw $t0, next_capsule_4_color_1
    sw $t0, next_capsule_3_color_1
    lw $t0, next_capsule_4_color_2
    sw $t0, next_capsule_3_color_2
    
    # Generate new colors for the 4th capsule
    # Define the three possible colors
    li $t1, 0xFF0000      # Red
    li $t2, 0x0000FF      # Blue
    li $t3, 0xFFFF00      # Yellow
    
    # Generate First Half Color for New 4th Capsule
    li $v0, 42            # Random number generator
    li $a0, 0             # Use default generator
    li $a1, 3             # Generate number 0-2
    syscall
    move $t4, $a0         # Store random number
    
    # Assign first preview color for 4th capsule
    beq $t4, 0, new_fourth_red_1
    beq $t4, 1, new_fourth_blue_1
    beq $t4, 2, new_fourth_yellow_1
    
new_fourth_red_1:
    sw $t1, next_capsule_4_color_1  # Store for next time
    j new_fourth_second_color
new_fourth_blue_1:
    sw $t2, next_capsule_4_color_1  # Store for next time
    j new_fourth_second_color
new_fourth_yellow_1:
    sw $t3, next_capsule_4_color_1  # Store for next time
    j new_fourth_second_color
    
new_fourth_second_color:
    # Generate Second Half Color for New 4th Capsule
    li $v0, 42            # Random number generator
    li $a0, 0             # Use default generator
    li $a1, 3             # Generate number 0-2
    syscall
    move $t4, $a0         # Store random number

    # Assign second preview color for 4th capsule
    beq $t4, 0, new_fourth_red_2
    beq $t4, 1, new_fourth_blue_2
    beq $t4, 2, new_fourth_yellow_2
    
new_fourth_red_2:
    sw $t1, next_capsule_4_color_2  # Store for next time
    j update_preview_display
new_fourth_blue_2:
    sw $t2, next_capsule_4_color_2  # Store for next time
    j update_preview_display
new_fourth_yellow_2:
    sw $t3, next_capsule_4_color_2  # Store for next time
    j update_preview_display
    
update_preview_display:
    # Update the preview display with all 4 capsules
    jal draw_next_capsules
    
    # Restore return address
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra
    
draw_capsule_at_position:
    # Save temporary registers we might overwrite
    addi $sp, $sp, -8
    sw $t6, 0($sp)
    sw $t7, 4($sp)
    
    # Draw capsule at current position
    lw $t0, ADDR_DSPL            # Load display address
    lw $t3, capsule_x            # Load current X position
    lw $t4, capsule_y            # Load current Y position
    add $t0, $t0, $t3            # Add X offset
    add $t0, $t0, $t4            # Add Y offset
    
    # Load colors from memory
    lw $t6, capsule_color_1      # Load first half color
    lw $t7, capsule_color_2      # Load second half color
    
    # Draw first half
    sw $t6, 0($t0)               # Draw first half
    
    # Draw second half
    lw $t0, ADDR_DSPL            # Reload display address
    lw $t3, capsule_x_2          # Load second half X position
    lw $t4, capsule_y_2          # Load second half Y position
    add $t0, $t0, $t3            # Add X offset
    add $t0, $t0, $t4            # Add Y offset
    
    sw $t7, 0($t0)               # Draw second half
    
    # Restore temporary registers
    lw $t6, 0($sp)
    lw $t7, 4($sp)
    addi $sp, $sp, 8
    
    jr $ra                          
## Logic for 4 in a row and for checking if entrance is blocked##    
    
    # Loop until no more matches or drops
process_matches:
    # Save return address
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    
process_matches_loop:
    # Check for matches
    jal check_matches
    move $s7, $v0  # Store match result
    
    # If no matches found, check if any blocks need to fall
    beqz $s7, apply_block_gravity
    
    # If matches were found, continue the loop directly
    j process_matches_loop
    
apply_block_gravity:
    # Apply gravity to any floating blocks
    jal apply_gravity_to_blocks
    move $s7, $v0  # Store gravity result
    
    # If blocks were moved, check for new matches
    bnez $s7, process_matches_loop
    
    # If no more matches and no blocks moved, we're done
    # Restore return address
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra

# Function to check for horizontal and vertical matches
check_matches:
    # Save return address
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    
    # Initialize a flag to track if any matches were found
    li $s7, 0  # 0 = no matches found, 1 = matches found
    
    # Call functions to check for horizontal and vertical matches
    jal check_horizontal_matches
    or $s7, $s7, $v0  # Update match flag
    
    jal check_vertical_matches
    or $s7, $s7, $v0  # Update match flag
    
    # Return match flag
    move $v0, $s7
    
    # Restore return address
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra

# Check for horizontal matches (4+ blocks of same color)
check_horizontal_matches:
    addi $sp, $sp, -4         # Save return address
    sw   $ra, 0($sp)
    li   $v0, 0               # No match found yet
    li   $s0, 5               # Row counter: start at row 5

horizontal_row_loop:
    li   $t0, 30              # End row (exclusive)
    beq  $s0, $t0, horizontal_done
    mul  $t1, $s0, 128        # t1 = row offset (row * 128)
    li   $t2, 4               # Column counter: start at col 4

horizontal_col_loop:
    li   $t3, 22              # End column (exclusive)
    beq  $t2, $t3, horizontal_next_row
    mul  $t4, $t2, 4          # t4 = col offset (col * 4)
    add  $t4, $t4, $t1        # t4 = full offset (row offset + col offset)
    lw   $t5, ADDR_DSPL
    add  $t5, $t5, $t4        # t5 = address of current block
    lw   $t6, 0($t5)          # t6 = current block color
    li   $t8, 0x7FFFFFFF      # t8 = mask constant to remove high bit
    and  $t6, $t6, $t8        # t6 = normalized current color
    beqz $t6, horizontal_next_col  # If black, skip
    li   $t7, 0xFFFFFF        # t7 = white color constant
    beq  $t6, $t7, horizontal_next_col  # Skip white borders
    li   $t7, 16              # Maximum col index to start a 4-match
    bgt  $t2, $t7, horizontal_next_col

    # Load and normalize the next 3 blocks in the row:
    lw   $t7, 4($t5)          # Next block color
    and  $t7, $t7, $t8        # Normalize
    lw   $t0, 8($t5)          # Next+1 block color (using $t0 temporarily)
    and  $t0, $t0, $t8
    lw   $t9, 12($t5)         # Next+2 block color (using $t9)
    and  $t9, $t9, $t8
    bne  $t6, $t7, horizontal_next_col  # If any don't match, skip
    bne  $t6, $t0, horizontal_next_col
    bne  $t6, $t9, horizontal_next_col

    li   $v0, 1               # Match found; set flag
    # Clear these 4 blocks:
    sw   $zero, 0($t5)
    sw   $zero, 4($t5)
    sw   $zero, 8($t5)
    sw   $zero, 12($t5)

horizontal_next_col:
    addi $t2, $t2, 1          # Next column
    j    horizontal_col_loop

horizontal_next_row:
    addi $s0, $s0, 1          # Next row
    j    horizontal_row_loop

horizontal_done:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    jr   $ra


# Check for vertical matches (4+ blocks of same color)
check_vertical_matches:
    addi $sp, $sp, -4         # Save return address
    sw   $ra, 0($sp)
    li   $v0, 0               # No match found yet
    li   $s0, 4               # Column counter: start at col 4

vertical_col_loop:
    li   $t0, 20              # End column (exclusive)
    beq  $s0, $t0, vertical_done
    mul  $t1, $s0, 4          # t1 = column offset (col * 4)
    li   $s1, 5               # Row counter: start at row 5

vertical_row_loop:
    li   $t0, 27              # End row (exclusive; need at least 4 blocks)
    beq  $s1, $t0, vertical_next_col
    mul  $t2, $s1, 128        # t2 = row offset (row * 128)
    add  $t3, $t1, $t2        # t3 = full offset (col offset + row offset)
    lw   $t4, ADDR_DSPL
    add  $t4, $t4, $t3        # t4 = address of current block
    lw   $t5, 0($t4)          # t5 = current block color
    li   $t8, 0x7FFFFFFF      # t8 = mask constant
    and  $t5, $t5, $t8        # t5 = normalized current color
    beqz $t5, vertical_next_row
    li   $t9, 0xFFFFFF        # t9 = white constant
    beq  $t5, $t9, vertical_next_row

    # Load the next three blocks below:
    add  $t6, $t4, 128        # Address of block in next row
    lw   $t6, 0($t6)
    and  $t6, $t6, $t8
    add  $t7, $t4, 256        # Address of block 2 rows down
    lw   $t7, 0($t7)
    and  $t7, $t7, $t8
    add  $t0, $t4, 384        # Address of block 3 rows down (using $t0)
    lw   $t0, 0($t0)
    and  $t0, $t0, $t8
    bne  $t5, $t6, vertical_next_row
    bne  $t5, $t7, vertical_next_row
    bne  $t5, $t0, vertical_next_row

    li   $v0, 1               # Match found; set flag
    # Clear these 4 blocks:
    sw   $zero, 0($t4)
    add  $t6, $t4, 128
    sw   $zero, 0($t6)
    add  $t6, $t4, 256
    sw   $zero, 0($t6)
    add  $t6, $t4, 384
    sw   $zero, 0($t6)

vertical_next_row:
    addi $s1, $s1, 1          # Next row
    j    vertical_row_loop

vertical_next_col:
    addi $s0, $s0, 1          # Next column
    j    vertical_col_loop

vertical_done:
    lw   $ra, 0($sp)
    addi $sp, $sp, 4
    jr   $ra


# Apply gravity to unsupported blocks (only after matches, keeping capsules intact)
apply_gravity_to_blocks:
    # Save return address
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    
    # Initialize a flag to track if any blocks were moved
    li $s7, 0  # 0 = no blocks moved, 1 = at least one block moved
    
    # Start from the second to last row and work up
    # (Bottom row can't fall further)
    li $t0, 28  # Start row (second to last row)
    
gravity_row_loop:
    # Check if we've processed all relevant rows
    li $t1, 5  # End row (inclusive)
    blt $t0, $t1, gravity_done
    
    # Scan each column from left to right
    li $t1, 4  # Start column
    
gravity_col_loop:
    # Check if we've processed all columns
    li $t2, 20  # End column (exclusive)
    beq $t1, $t2, gravity_next_row
    
    # Calculate current position
    mul $t2, $t0, 128  # Row offset
    mul $t3, $t1, 4    # Column offset
    add $t4, $t2, $t3  # Position offset
    
    # Get color at current position
    lw $t5, ADDR_DSPL
    add $t5, $t5, $t4
    lw $t6, 0($t5)  # Color at current position
    
    # Skip if this position is empty
    beqz $t6, gravity_next_col
    
    # Skip white borders (0xFFFFFF)
    li $t9, 0xFFFFFF   # White color
    beq $t6, $t9, gravity_next_col
    
    # Skip leftmost and rightmost columns (borders)
    beq $t1, 4, gravity_next_col
    beq $t1, 16, gravity_next_col
    
    # Skip bottom row (border)
    beq $t0, 29, gravity_next_col
    
    # Check if this is a virus (highest bit set)
    # Assuming bit 31 (0x80000000) indicates a virus
    li $t9, 0x80000000
    and $t8, $t6, $t9
    bnez $t8, gravity_next_col  # Skip if it's a virus
    
    # Check if space below is empty
    add $t7, $t5, 128  # Address of position below
    lw $t8, 0($t7)     # Color of position below
    
    # If space below is not empty, move to next column
    bnez $t8, gravity_next_col
    
    # Check if this block is part of an intact capsule
    # We need to check all adjacent positions (left, right, above)
    
    # First, count how many adjacent blocks we have
    li $t9, 0  # Counter for adjacent blocks
    
    # Check position to the left
    addi $t7, $t5, -4  # Address of position to the left
    lw $t8, 0($t7)     # Color of position to the left
    beqz $t8, check_right  # If empty, skip increment
    addi $t9, $t9, 1   # Increment counter
    
check_right:
    # Check position to the right
    addi $t7, $t5, 4   # Address of position to the right
    lw $t8, 0($t7)     # Color of position to the right
    beqz $t8, check_above  # If empty, skip increment
    addi $t9, $t9, 1   # Increment counter
    
check_above:
    # Check position above
    addi $t7, $t5, -128 # Address of position above
    lw $t8, 0($t7)      # Color of position above
    beqz $t8, check_capsule_status  # If empty, skip increment
    addi $t9, $t9, 1   # Increment counter
    
check_capsule_status:
    # If we have exactly 1 adjacent block, we need to decide what to do
    # If we have 0 adjacent blocks, it's already broken off and should fall
    # If we have more than 1 adjacent block, it's likely at a junction and shouldn't fall
    
    # If no adjacent blocks, definitely let it fall (already broken off)
    beqz $t9, move_block_down
    
    # If more than 1 adjacent block, don't let it fall (might be at a junction)
    bgt $t9, 1, gravity_next_col
    
    # At this point, we have exactly 1 adjacent block
    # We allow the block to fall WITH its adjacent block if that block is to the left or right
    # (meaning they'll fall as a unit)
    # But if the adjacent block is above, we don't let it fall to preserve vertical capsules
    
    # Check if the adjacent block is above
    addi $t7, $t5, -128  # Address of position above
    lw $t8, 0($t7)       # Color of position above
    bnez $t8, gravity_next_col  # If there's a block above, don't let this one fall
    
    # At this point, we have one adjacent block either to the left or right
    # We need to make sure that the position below that adjacent block is also empty
    # so the whole capsule can fall as a unit
    
    # Check if the adjacent block is to the left
    addi $t7, $t5, -4   # Address of position to the left
    lw $t8, 0($t7)      # Color of position to the left
    beqz $t8, check_right_fall  # If not to the left, check right
    
    # Check if the position below left is empty
    addi $t7, $t7, 128  # Address of position below left
    lw $t8, 0($t7)      # Color of position below left
    bnez $t8, gravity_next_col  # If not empty, can't fall as a unit
    j move_block_down   # If empty, we can fall
    
check_right_fall:
    # Check if the adjacent block is to the right
    addi $t7, $t5, 4    # Address of position to the right
    lw $t8, 0($t7)      # Color of position to the right
    beqz $t8, move_block_down  # If not to the right, it must be isolated, can fall
    
    # Check if the position below right is empty
    addi $t7, $t7, 128  # Address of position below right
    lw $t8, 0($t7)      # Color of position below right
    bnez $t8, gravity_next_col  # If not empty, can't fall as a unit
    # If empty, we can fall
    
move_block_down:
    # Now we can move the block down
    add $t7, $t5, 128  # Address of position below
    sw $t6, 0($t7)     # Copy color to position below
    sw $zero, 0($t5)   # Clear current position
    
    # Set the "blocks moved" flag
    li $s7, 1
    
gravity_next_col:
    addi $t1, $t1, 1  # Move to next column
    j gravity_col_loop
    
gravity_next_row:
    subi $t0, $t0, 1  # Move to previous row (going upward)
    j gravity_row_loop
    
gravity_done:
    # Return the "blocks moved" flag
    move $v0, $s7
    
    # Restore return address
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra

# Check if bottle entrance is blocked
check_bottle_entrance:
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    
    lw $t0, ADDR_DSPL

    # Check first position (column 11, row 5)
    li $t1, 11              
    li $t2, 5               
    mul $t3, $t1, 4        
    mul $t4, $t2, 128       
    add $t5, $t3, $t4       
    add $t6, $t0, $t5       
    lw $t7, 0($t6)          
    bnez $t7, trigger_game_over  

    # Check second position (column 12, row 5)
    li $t1, 12              
    mul $t3, $t1, 4         
    add $t5, $t3, $t4       
    add $t6, $t0, $t5       
    lw $t7, 0($t6)          
    bnez $t7, trigger_game_over  

    li $v0, 0               
    j check_entrance_done
    
trigger_game_over:
    li $v0, 1
    jal game_over
    
check_entrance_done:
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra

    
entrance_blocked:
    # Entrance is blocked where new capsule would form
    li $v0, 1               # Return 1 (entrance blocked)
    
    
play_theme_song:
    addi $sp, $sp, -16
    sw $ra, 0($sp)
    sw $t0, 4($sp)
    sw $t1, 8($sp)
    sw $t2, 12($sp)

    # If time_loop > 0, decrement and exit
    la $t0, time_loop
    lw $t1, 0($t0)
    bgtz $t1, decrement_time_loop  # If timer running, just count down and return


    # Load current step in melody
    la $t0, sound_count
    lw $t1, 0($t0)

    # Play Melody (Lead)
    la $t0, theme_song_melody
    sll $t2, $t1, 2  
    add $t0, $t0, $t2
    lw $t2, 0($t0)

    move $a0, $t2   # Pitch
    li $a1, 200     # Duration
    li $a2, 1       
    li $a3, 10      # Volume
    li $v0, 31
    syscall

    # Play Bass (Triangle Wave)
    la $t0, theme_song_bass
    div $t1, $t2  # $t1 / $t2
    mfhi $t3      # $t3 = remainder ($t1 % $t2)
    sll $t2, $t1, 2
    add $t0, $t0, $t2
    lw $t2, 0($t0)

    move $a0, $t2   
    li $a1, 200     
    li $a2, 2       
    li $a3, 10      
    li $v0, 31
    syscall

    # Play Percussion (Noise)
    la $t0, theme_song_percussion
    addi $t2, $t2, 1
    div $t1, $t2  # $t1 / $t2
    mfhi $t3      # $t3 = remainder ($t1 % $t2)
    sll $t2, $t1, 2
    add $t0, $t0, $t2
    lw $t2, 0($t0)

    move $a0, $t2   
    li $a1, 150     
    li $a2, 10      # Noise instrument
    li $a3, 10     
    li $v0, 31
    syscall

    # Increment to next step in the melody
    la $t0, sound_count
    lw $t1, 0($t0)
    addi $t1, $t1, 1

    # Check if we've reached the end of the melody
    la $t0, theme_song_note_count
    lw $t2, 0($t0)
    blt $t1, $t2, save_count

    # Reset to beginning of melody
    li $t1, 0

save_count:
    la $t0, sound_count
    sw $t1, 0($t0)
    
    # Reset time_loop based on note_delay
    la $t2, note_delay
    lw $t2, 0($t2)
    la $t0, time_loop
    sw $t2, 0($t0)


decrement_time_loop:
    # Decrement sound timer if it's running
    la $t0, time_loop
    lw $t1, 0($t0)
    blez $t1, end_play_theme_song
    addi $t1, $t1, -1
    sw $t1, 0($t0)

end_play_theme_song:
    lw $ra, 0($sp)
    lw $t0, 4($sp)
    lw $t1, 8($sp)
    lw $t2, 12($sp)
    addi $sp, $sp, 16
    jr $ra    
    

quit_game:
    # End the program
    li $v0, 10                   # Syscall code for exit
    syscall                      # Exit the program