#user needs to change the module name
module = DC_EX
file = ../src

all: saif_gen pwr clean

saif_gen:
	vcd2saif -i $(file)/$(module)_rtl.vcd -o $(module)_rtl.saif

pwr: dir syn

dir:
	@if test ! -d  results; then mkdir results ; fi
	@if test ! -d  work; then mkdir work ; fi

syn:
	dc_shell -f syn_script.scr 

clean:
	rm default.svf

