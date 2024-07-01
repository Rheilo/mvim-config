local options = {
	number = true, -- Anzeigen der Zeilennummer
	relativenumber = true, -- Anzeigen der relativen Zeilennummer
	numberwidth = 4, -- Wie viele Ziffern werden von der Zeilennummer angezeigt
	cursorline = true,
	clipboard = "unnamedplus",
	fileencoding = "UTF-8",
	list = false, -- Zeige Steuerzeichen
	-- <Tab> Einstellugnen
	shiftwidth = 0, -- Gibt an wie viele <space> ein <tab> sind
	tabstop = 2, -- Gibt an wie viele <space> ein <tab> sind
	expandtab = true, -- Konvertiert <tab> zu <space>
	--autoident       = true,               -- Automatisches einrücken bei einer neuen Zeile.
	wrap = false, -- Erzwinge einen Zeilenumbruch bei langen Zeilen

	-- Suche Einstellungen
	smartcase = true, -- Wenn Groß- & Kleinschreibung gemischt werden, ist die Suche case-sensitive
	ignorecase = true, -- Ignoriert Groß- % Kleinschreibung in der Suche

	showtabline = 2, -- Zeige Tabs
	cmdheight = 1, -- Kommandozeile erweitern
	showmode = false, -- Entferne das einzeigen von --INSERT
	termguicolors = true,
	background = "dark", -- Farbschema dass Hell oder Dunkel sein kann, wird automatisch das dunkle gewähl
	signcolumn = "yes", -- Zeige Spalten

	-- split windows
	splitright = true, -- Spalte Vertikale Fenster nach rechts
	splitbelow = true, -- Spalte Horizontale Fenster nach unten
}

for key, value in pairs(options) do
	vim.opt[key] = value
end

vim.cmd("let g:netrw_liststyle = 3")
