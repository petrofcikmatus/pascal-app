// Programovanie 24: Textové súbory, základné príkazy pre prácu s textovými súbormi. Napíšte program, ktorý:
// 1. prekopíruje vytvorený textový súbor do nového súboru; 
// 2. zmení všetky písmena na veľké.

program application;

const 
INPUT_FILE = 'input.txt';
OUTPUT_FILE = 'output.txt';

var 
input, output : text;
line : string = '';

begin

 	assign(input, inputFile);
	reset(input);

	assign(output, outputFile);
	rewrite(output);

	// Cyklus kým nedôjdeme na koniec input súboru.
	while not eof(input) do  begin
	   // Prečítanie jedného riadku z input súboru...
	   readln(input,line);

	   // ... a jeho zapísanie do output súboru.
	   writeln(output,line);
	end;

	// Zatvorenie oboch súborov.
	close(input);
	close(output);

	// Čakanie na stlačenie Enteru.
	readln;

	// Vypis, že kto program vytvoril :P
	writeln('Vytvoril Matúš Petrofčík.');
end.