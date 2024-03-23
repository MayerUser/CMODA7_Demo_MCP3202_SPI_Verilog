reset_run synth_1
launch_runs synth_1 -jobs 10
launch_runs impl_1 -jobs 10
launch_runs impl_1 -to_step write_bitstream -jobs 10
