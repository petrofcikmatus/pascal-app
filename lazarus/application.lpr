// Programovanie 24: Textové súbory, základné príkazy pre prácu s textovými súbormi. Napíšte program, ktorý:
// 1. prekopíruje vytvorený textový súbor do nového súboru;
// 2. zmení všetky písmena na veľké.

// Názov programu.
program application;

// Import potrebnej knižnice, ktorá obsahuje funkciu AnsiUpperCase().
uses sysutils;

// Definovanie konštánt, napr. názvy súborov.
const
SRC_FILE_NAME = 'input.txt';
DST_FILE_NAME = 'output.txt';

// Definovanie premenných, napr. obsah súborov.
var
file_src, file_dst : text;
line : string = '';


// Začiatok programu.
begin

	// Do premennej file_src priradíme zdrojový súbor...
 	assign(file_src, SRC_FILE_NAME);

 	// ... a otvoríme ho pre čítanie.
	reset(file_src);

	// Hláška, že sme otvorili zdrojový súbor.
	writeln('Zdrojový súbor bol úspešne otvorený.');

	// Do premennej file_dst priradíme cieľový súbor...
	assign(file_dst, DST_FILE_NAME);

	// ... a otvoríme ho pre zápis (prepísanie pôvodného obsahu, prípadne ho vytvoríme ak neexistuje).
	rewrite(file_dst);

	// Hláška, že sme vytvorili/vyčistili cieľový súbor.
	writeln('Cieľový súbor bol úspešne vytvorený/vyčistený.');

	// Cyklus while, kým neprejdeme celý zdrojový súbor.
	while not eof(file_src) do begin
	   // Prečítanie jedného riadku zo zdrojového súboru.
	   readln(file_src, line);

	   // Prekonvertovanie načítaného riadku na veľké písmená.
	   line := AnsiUpperCase(line);

	   // Zapísanie načítaného riadku do cieľového súboru.
	   writeln(file_dst, line);

	// Koniec cyklu while.
	end;

	// Hláška, že sa všetko poradilo.
	writeln('Zdrojový súbor bol úspešne prekopírovaný do cieľového súboru.');

	// Zatvorenie oboch súborov.
	close(file_src);
	close(file_dst);

	// Hláška, že sa sme zatvorili súbory.
	writeln('Zdrojový aj cieľový súbor boli zatvorené.');

	// Vypis, že kto program vytvoril :P
	writeln('-------------------------');
	writeln('Vytvoril Matúš Petrofčík.');

	// Čakanie na stlačenie Enteru.
	writeln('Program ukončíte stlačením klávesy Enter.');
	readln;

// Koniec programu.
end.
