# this is a note
call zig3.exe -r tutorial_input/set_ssi.dat tutorial_input/splist_w.spp tutorial_output/output_ds.txt 0.0 1 1.0 0
call zig3.exe -r tutorial_input/set_ADMU.dat tutorial_input/splist_ADMU.spp tutorial_output/output_ADMU 0.0 1 1.0 0
call zig3.exe -r tutorial_input/set.dat tutorial_input/splist_w.spp tutorial_output/output_w.txt 0.0 0 1.0 0
call zig3.exe -r tutorial_input/set.dat tutorial_input/splist_w_alu.spp tutorial_output/out2/output_w_alu.txt 0.0 0 1.0 1
