program main;

	export "DPI-C" task export_task;
	import "DPI-C" context task import_task();

	task export_task();
		$display("SV: Entered the export function . wait for some time : %0d ",$time);
		#100;
		$display("SV: After waiting %0d",$time);
	endtask

	initial
	begin
		$display("SV: Before calling import function %0d",$time);
		import_task();
		$display("SV: After calling import function %0d",$time);
	end
endprogram