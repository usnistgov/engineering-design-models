! Sets default menu picks for menus that don't have them
!
line         2#points
circle       center/dia
arc          fillet
construct    constr#line
constr#line  horiz
ellipse      ctr/pnt/ang
draft#geom   line
deletion     delete#item
group#retrieve search/retr

@setbutton SKETCHER *Polar#Grid "#SEC TOOLS;#SEC ENVIRON;#GRID;#TYPE;#POLAR;#DONE/RETURN;#PARAMS;#RAD SPACING;10;#DONE/RETURN;#SKETCH:" 

@setbutton SKETCHER *Center#Line "#SKETCH;#LINE;#CENTERLINE;"

@setbutton MANUFACTURE *Fixture#On/Off "#MFG SETUP;#FIXTURE;#ACTIVATE;#SETUP1;#DONE SEL;#DONE/RETURN;#DONE/RETURN;~ FocusOut `newtree` `AssyTree`;"

@setbutton MOLD *Blank#M_Base "#MOLD MODEL;#BLANK;#GEN ASSEM;#DONE/RETURN;"

@setbutton MOLD *Blank#W_Piece "#MOLD MODEL;#BLANK;#WORKPIECE;#DONE/RETURN;"

@setbutton PACKAGE *Package#Set#Up "#MOVE;#PREFERENCES;#DRAG OPTIONS;#OFFSETMODIFY;#ADD OFFSETS;#DONE/RETURN;#DONE;~ FocusOut `newtree` `AssyTree`;"

@setbutton MAIN *Comp#Display "#VIEW;#COSMETIC;#COMP DISPLAY;#SET CURRENT;"

@setbutton GEOMETRY *Fillet "#sketch;#arc;#fillet" "Create fillet (or round)."

@setbutton LAYER#DISP *Repaint "#done/return;#view;#repaint;#pan/zoom" "Redraw the current view."

@setbutton DETAIL *Clean#Dims "#TOOLS;#CLEAN DIMS;;;"
