################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
src/timer.obj: /home/santi/Workspace/CCS/laboratorios-sisem/src/timer.c $(GEN_OPTS) | $(GEN_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"/home/santi/ccsv8/tools/compiler/ti-cgt-msp430_18.1.7.LTS/bin/cl430" -vmsp --use_hw_mpy=none --include_path="/home/santi/ccsv8/ccs_base/msp430/include" --include_path="/home/santi/Workspace/CCS/laboratorios-sisem/include" --include_path="/home/santi/Workspace/CCS/laboratorios-sisem/test/blink" --include_path="/home/santi/ccsv8/tools/compiler/ti-cgt-msp430_18.1.7.LTS/include" --advice:power=all --define=__MSP430G2533__ -g --printf_support=minimal --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="src/$(basename $(<F)).d_raw" --obj_directory="src" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '


