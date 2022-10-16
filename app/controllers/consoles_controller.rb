class ConsolesController < ApplicationController
    def index
        consoles = [
            { name: 'NES', manufacturer: 'Nintendo' },
            { name: 'SNES', manufacturer: 'Nintendo' },
            { name: 'WIi', manufacturer: 'Nintendo' },
            { name: 'Genesis', manufacturer: 'Sega' },
            { name: 'Xbox', manufacturer: 'Microsoft' },
            { name: 'Switch', manufacturer: 'Nintendo' },
            { name: 'PS1', manufacturer: 'Sony' },
            { name: 'PS2', manufacturer: 'Sony' },
        ]

        render(json: { 'consoles' => consoles })
    end
end