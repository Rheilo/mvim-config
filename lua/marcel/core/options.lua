local options = {
	number		 			= true,								-- Anzeigen der Zeilennummer
	relativenumber	= true,								-- Anzeigen der relativen Zeilennummer
	numberwidth			= 4,									-- Wie viele Ziffern werden von der Zeilennummer angezeigt
	cursorline	  	= true,
	clipboard 	  	= "unnamedplus",
	fileencoding		= "UTF-8",
  list            = flase,              -- Zeige Steuerzeichen 
	shiftwidth			= 0,									
	tabstop					= 2,									-- Gibt an wie viele <space> ein <tab> sind
	expandtab				= true,								-- Konvertiert <tab> zu <space>
  smartcase       = true,               -- Ignoriert Groß- & Kleinschreibung in der Suche
}

for key, value in pairs(options) do
	vim.opt[key] = value
end

