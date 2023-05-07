# 백터 : 결합된 백터는 순서는 그대로 유지됨
c(1, 2, 3, 4, 5)

# 팩터
factor(c("A", "B", "C", "D", "E"))

# 행렬 (2차원 : 목록, 행, 열)
matrix(1:12, 3, 4)

# 배열 : 행렬을 3개 이상의 차원으로 구성한 것
print("배열")
array(1:24, c(2, 3, 4))

# 데이터프레임 (가장많이 사용):
## >> 행렬과 유사한 구조이나 각 행마다 다른 데이터 타입을 갖을 수 있음
data.frame(product = c("A", "B", "C"),
           price = c(10, 200, 300))


# 리스트 :
## >> 다양한 객체를 하나의 이름으로 묶음, 자료 주머니
list(
  x = c(1, 2, 3, 4, 5),
  y = factor(c("A", "B", "C", "D", "E")),
  z = matrix(1:12, 3, 4),
  k = data.frame(
    product = c("A", "B", "C"),
    price = c(10, 200, 300)
  )
)


# Short Cut
# Reformat Selection  : CTRL + SHIFT + A
# Comment             : CTRL + SHIFT + C
# Excute Current Line : ALT  + Enter
# CTRL + Enter
# <- 입력             : ALT + -
# %>%                 : CTRL + SHIFT + M
# Delete Line         : CTRL + D
# Up Down Line        : ALT + UpDown-Arrow


# Console
# Move cursor to Console	Ctrl+2	Ctrl+2
# Clear console	Ctrl+L	Ctrl+L
# Move cursor to beginning of line	Home	Cmd+Left
# Move cursor to end of line	End	Cmd+Right
# Navigate command history	Up/Down	Up/Down
# Popup command history	Ctrl+Up	Cmd+Up
# Interrupt currently executing command	Esc	Esc
# Change working directory	Ctrl+Shift+H	Ctrl+Shift+H
#
# Source
# Description	Windows & Linux	Mac
# Go to File/Function	Ctrl+. [period]	Ctrl+. [period]
# Move cursor to Source Editor	Ctrl+1	Ctrl+1
# Toggle document outline	Ctrl+Shift+O	Cmd+Shift+O
# Toggle Visual Editor	Ctrl+Shift+F4	Cmd+Shift+F4
# New document (except on Chrome/Windows)	Ctrl+Shift+N	Cmd+Shift+N
# New document (Chrome only)	Ctrl+Alt+Shift+N	Cmd+Shift+Alt+N
# Open document	Ctrl+O	Cmd+O
# Save active document	Ctrl+S	Cmd+S
# Save all documents	Ctrl+Alt+S	Cmd+Option+S
# Close active document (except on Chrome)	Ctrl+W	Cmd+W
# Close active document (Chrome only)	Ctrl+Alt+W	Cmd+Option+W
# Close all open documents	Ctrl+Shift+W	Cmd+Shift+W
# Close other documents	Ctrl+Shift+Alt+W	Cmd+Option+Shift+W
# Preview HTML (Markdown and HTML)	Ctrl+Shift+K	Cmd+Shift+K
# Knit Document (knitr)	Ctrl+Shift+K	Cmd+Shift+K
# Compile Notebook	Ctrl+Shift+K	Cmd+Shift+K
# Compile PDF (TeX and Sweave)	Ctrl+Shift+K	Cmd+Shift+K
# Insert chunk (Sweave and Knitr)	Ctrl+Alt+I	Cmd+Option+I
# Insert code section	Ctrl+Shift+R	Cmd+Shift+R
# Run current line/selection	Ctrl+Enter	Cmd+Return
# Run current line/selection (retain cursor position)	Alt+Enter	Option+Return
# Re-run previous region	Ctrl+Alt+P	Cmd+Alt+P
# Run current document	Ctrl+Alt+R	Cmd+Option+R
# Run from document beginning to current line	Ctrl+Alt+B	Cmd+Option+B
# Run from current line to document end	Ctrl+Alt+E	Cmd+Option+E
# Run the current function definition	Ctrl+Alt+F	Cmd+Option+F
# Run the current code section	Ctrl+Alt+T	Cmd+Option+T
# Run previous Sweave/Rmd code	Ctrl+Shift+Alt+P	Cmd+Shift+Option+P
# Run the current Sweave/Rmd chunk	Ctrl+Alt+C	Cmd+Option+C
# Run the next Sweave/Rmd chunk	Ctrl+Alt+N	Cmd+Option+N
# Source a file	Ctrl+Alt+G	Ctrl+Option+G
# Source the current document	Ctrl+Shift+S	Cmd+Shift+S
# Source the current document (with echo)	Ctrl+Shift+Enter	Cmd+Shift+Return
# Send current line/selection to terminal	Ctrl+Alt+Enter	Cmd+Option+Return
# Fold Selected	Alt+L	Cmd+Option+L
# Unfold Selected	Shift+Alt+L	Cmd+Shift+Option+L
# Fold All	Alt+O	Cmd+Option+O
# Unfold All	Shift+Alt+O	Cmd+Shift+Option+O
# Go to line	Shift+Alt+G	Cmd+Shift+Option+G
# Jump to	Shift+Alt+J	Cmd+Shift+Option+J
# Expand selection	Ctrl+Shift+Up	Ctrl+Option+Shift+Up
# Shrink selection	Ctrl+Shift+Down	Ctrl+Option+Shift+Down
# Next section	Ctrl+PgDn	Cmd+PgDn
# Previous section	Ctrl+PgUp	Cmd+PgUp
# Split into lines	Ctrl+Alt+A	Ctrl+Option+A
# Edit lines from start	Ctrl+Alt+Shift+A	Ctrl+Shift+Option+A
# Switch to tab	Ctrl+Shift+. [period]	Ctrl+Shift+. [period]
# Previous tab	Ctrl+F11	Ctrl+F11
# Previous tab (desktop)	Ctrl+Shift+Tab	Ctrl+Shift+Tab
# Next tab	Ctrl+F12	Ctrl+F12
# Next tab (desktop)	Ctrl+Tab	Ctrl+Tab
# First tab	Ctrl+Shift+F11	Ctrl+Shift+F11
# Last tab	Ctrl+Shift+F12	Ctrl+Shift+F12
# Navigate back	Ctrl+F9	Cmd+F9
# Navigate forward	Ctrl+F10	Cmd+F10
# Extract function from selection	Ctrl+Alt+X	Cmd+Option+X
# Extract variable from selection	Ctrl+Alt+V	Cmd+Option+V
# Reindent lines	Ctrl+I	Cmd+I
# Comment/uncomment current line/selection	Ctrl+Shift+C	Cmd+Shift+C
# Reflow Comment	Ctrl+Shift+/	Cmd+Shift+/
#   Reformat Selection	Ctrl+Shift+A	Cmd+Shift+A
# Show Diagnostics	Ctrl+Shift+Alt+D	Cmd+Shift+Option+D
# Transpose Letters	 No shortcut	Ctrl+T
# Move Lines Up/Down	Alt+Up/Down	Option+Up/Down
# Copy Lines Up/Down	Shift+Alt+Up/Down	Cmd+Option+Up/Down
# Jump to Matching Brace/Paren	Ctrl+P	Ctrl+P
# Expand to Matching Brace/Paren	Ctrl+Shift+Alt+E	Ctrl+Shift+E
# Add Cursor Above Current Cursor	Ctrl+Alt+Up	Ctrl+Option+Up
# Add Cursor Below Current Cursor	Ctrl+Alt+Down	Ctrl+Option+Down
# Move Active Cursor Up	Ctrl+Alt+Shift+Up	Ctrl+Option+Shift+Up
# Move Active Cursor Down	Ctrl+Alt+Shift+Down	Ctrl+Option+Shift+Down
# Find and Replace	Ctrl+F	Cmd+F
# Find Next	Win: F3, Linux: Ctrl+G	Cmd+G
# Find Previous	Win: Shift+F3, Linux: Ctrl+Shift+G	Cmd+Shift+G
# Use Selection for Find	Ctrl+F3	Cmd+E
# Replace and Find	Ctrl+Shift+J	Cmd+Shift+J
# Find in Files	Ctrl+Shift+F	Cmd+Shift+F
# Check Spelling	F7	F7
# Rename Symbol in Scope	Ctrl+Alt+Shift+M	Cmd+Option+Shift+M
# Insert Roxygen Skeleton	Ctrl+Alt+Shift+R	Cmd+Option+Shift+R
#
# Editing (Console and Source)
# Description	Windows & Linux	Mac
# Undo	Ctrl+Z	Cmd+Z
# Redo	Ctrl+Shift+Z	Cmd+Shift+Z
# Cut	Ctrl+X	Cmd+X
# Copy	Ctrl+C	Cmd+C
# Paste	Ctrl+V	Cmd+V
# Select All	Ctrl+A	Cmd+A
# Jump to Word	Ctrl+Left/Right	Option+Left/Right
# Jump to Start/End	Ctrl+Home/End or Ctrl+Up/Down	Cmd+Home/End or Cmd+Up/Down
# Delete Line	Ctrl+D	Cmd+D
# Select	Shift+[Arrow]	Shift+[Arrow]
# Select Word	Ctrl+Shift+Left/Right	Option+Shift+Left/Right
# Select to Line Start	Alt+Shift+Left	Cmd+Shift+Left
# Select to Line End	Alt+Shift+Right	Cmd+Shift+Right
# Select Page Up/Down	Shift+PageUp/PageDown	Shift+PageUp/Down
# Select to Start/End	Ctrl+Shift+Home/End or Shift+Alt+Up/Down	Cmd+Shift+Up/Down
# Delete Word Left	Ctrl+Backspace	Option+Backspace or Ctrl+Option+Backspace
# Delete Word Right	No shortcut	Option+Delete
# Delete to Line End	No shortcut	Ctrl+K
# Delete to Line Start	No shortcut 	Option+Backspace
# Indent	Tab (at beginning of line)	Tab (at beginning of line)
# Outdent	Shift+Tab	Shift+Tab
# Yank line up to cursor	Ctrl+U	Ctrl+U
# Yank line after cursor	Ctrl+K	Ctrl+K
# Insert currently yanked text	Ctrl+Y	Ctrl+Y
# Insert assignment operator	Alt+-	Option+-
#   Insert pipe operator	Ctrl+Shift+M	Cmd+Shift+M
# Show help for function at cursor	F1	F1
# Show source code for function at cursor	F2	F2
# Find usages for symbol at cursor (C++)	Ctrl+Alt+U	Cmd+Option+U
#
# Completions (Console and Source)
# Description	Windows & Linux	Mac
# Attempt completion	Tab or Ctrl+Space	Tab or Cmd+Space
# Navigate candidates	Up/Down	Up/Down
# Accept selected candidate	Enter, Tab, or Right	Enter, Tab, or Right
# Dismiss completion popup	Esc	Esc
#
# Views
# Description	Windows & Linux	Mac
# Move focus to Source Editor	Ctrl+1	Ctrl+1
# Zoom Source Editor	Ctrl+Shift+1	Ctrl+Shift+1
# Add Source Column	Ctrl+F7	Cmd+F7
# Move focus to Console	Ctrl+2	Ctrl+2
# Zoom Console	Ctrl+Shift+2	Ctrl+Shift+2
# Move focus to Help	Ctrl+3	Ctrl+3
# Zoom Help	Ctrl+Shift+3	Ctrl+Shift+3
# Move focus to Terminal	Alt+Shift+M	Shift+Option+M
# Show History	Ctrl+4	Ctrl+4
# Zoom History	Ctrl+Shift+4	Ctrl+Shift+4
# Show Files	Ctrl+5	Ctrl+5
# Zoom Files	Ctrl+Shift+5	Ctrl+Shift+5
# Show Plots	Ctrl+6	Ctrl+6
# Zoom Plots	Ctrl+Shift+6	Ctrl+Shift+6
# Show Packages	Ctrl+7	Ctrl+7
# Zoom Packages	Ctrl+Shift+7	Ctrl+Shift+7
# Show Environment	Ctrl+8	Ctrl+8
# Zoom Environment	Ctrl+Shift+8	Ctrl+Shift+8
# Show Viewer	Ctrl+9	Ctrl+9
# Zoom Viewer	Ctrl+Shift+9	Ctrl+Shift+9
# Show Git/SVN	Ctrl+F1	Cmd+F1
# Zoom Git/SVN	Ctrl+Shift+F1	Ctrl+Shift+F1
# Show Build	Ctrl+F2	Cmd+F2
# Zoom Build	Ctrl+Shift+F2	Ctrl+Shift+F2
# Show Connections	Ctrl+F5	No shortcut
# Zoom Connections	Ctrl+Shift+F5	Ctrl+Shift+F5
# Show Find in Files Results	Ctrl+F6	Cmd+F6
# Zoom Tutorial	Ctrl+Shift+F6	Ctrl+Shift+F6
# Sync Editor & PDF Preview	Ctrl+F8	Cmd+F8
# Global Options	No shortcut	Cmd+, [comma] (Chrome, Desktop), Option+Cmd+, [comma] (Safari, Firefox)
# Project Options	No shortcut	Shift+Cmd+, [comma]
#
# Help
# Description	Windows & Linux	Mac
# Show Keyboard Shortcut Reference	Alt+Shift+K	Option+Shift+K
# Search R Help	Ctrl+Alt+F1	Ctrl+Option+F1
# Find in Help Topic	Ctrl+F	Cmd+F
# Previous Help Topic	Shift+Alt+F2	Shift+Option+F2
# Next Help Topic	Shift+Alt+F3	Shift+Options+F3
# Show Command Palette	Ctrl+Shift+P, Ctrl+Alt+Shift+P (Firefox)	Cmd+Shift+P
#
# Build
# Description	Windows & Linux	Mac
# Build and Reload	Ctrl+Shift+B	Cmd+Shift+B
# Load All (devtools)	Ctrl+Shift+L	Cmd+Shift+L
# Test Package (Desktop)	Ctrl+Shift+T	Cmd+Shift+T
# Test Package (Web)	Ctrl+Alt+F7	Cmd+Option+F7
# Check Package	Ctrl+Shift+E	Cmd+Shift+E
# Document Package	Ctrl+Shift+D	Cmd+Shift+D
#
# Debug
# Description	Windows & Linux	Mac
# Toggle Breakpoint	Shift+F9	Shift+F9
# Execute Next Line	F10	F10
# Step Into Function	Shift+F4	Shift+F4
# Finish Function/Loop	Shift+F7	Shift+F7
# Continue	Shift+F5	Shift+F5
# Stop Debugging	Shift+F8	Shift+F8
#
# Plots
# Description	Windows & Linux	Mac
# Previous plot	Ctrl+Alt+F11	Cmd+Option+F11
# Next plot	Ctrl+Alt+F12	Cmd+Option+F12
#
# Git/SVN
# Description	Windows & Linux	Mac
# Diff active source document	Ctrl+Alt+D	Ctrl+Option+D
# Commit changes	Ctrl+Alt+M	Ctrl+Option+M
# Scroll diff view	Ctrl+Up/Down	Ctrl+Up/Down
# Stage/Unstage (Git)	Spacebar	Spacebar
# Stage/Unstage and move to next (Git)	Enter	Return
#
# Session
# Description	Windows & Linux	Mac
# Quit Session (desktop only)	Ctrl+Q	Cmd+Q
# Restart R Session	Ctrl+Shift+F10	Cmd+Shift+F10
#
# Terminal
# Description	Windows & Linux	Mac
# New Terminal	Alt+Shift+R	Shift+Option+R
# Move Focus to Terminal	Alt+Shift+M	Shift+Option+M
# Previous Terminal	Alt+Shift+F11	Shift+Option+F11
# Next Terminal	Alt+Shift+F12	Shift+Option+F12
#
# Main Menu (Server)
# Description	Windows & Linux	Mac
# File Menu	Alt+Shift+F	Ctrl+Option+F
# Edit Menu	Alt+Shift+E	Ctrl+Option+I
# Code Menu	Alt+Shift+C	Ctrl+Option+C
# View Menu	Alt+Shift+V	Ctrl+Option+V
# Plots Menu	Alt+Shift+P	Ctrl+Option+P
# Session Menu	Alt+Shift+S	Ctrl+Option+S
# Build Menu	Alt+Shift+B	Ctrl+Option+B
# Debug Menu	Alt+Shift+U	Ctrl+Option+U
# Profile Menu	Alt+Shift+I	Ctrl+Option+O
# Tools Menu	Alt+Shift+T	Ctrl+Option+T
# Help Menu	Alt+Shift+H	Ctrl+Option+H
#
# Accessibility
# Description	Windows & Linux	Mac
# Toggle Screen Reader Support	Alt+Shift+/	Ctrl+Option+/
#   Toggle Tab Key Always Moves Focus	Ctrl+Alt+Shift+T	Ctrl+Option+Shift+T
# Speak Text Editor Location	Ctrl+Alt+Shift+B	Ctrl+Option+Shift+B
# Focus Main Toolbar	Alt+Shift+Y	Ctrl+Option+Y
# Focus Console Output	Alt+Shift+2	Ctrl+Option+2
# Focus Next Pane	F6	F6
# Focus Previous Pane	Shift+F6	Shift+F6