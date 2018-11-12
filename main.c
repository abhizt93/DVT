extern void export_task();

void import_task() {
	printf(" C: Before calling export function\n");
	export_task();
	printf(" C: After calling export function\n");
}
