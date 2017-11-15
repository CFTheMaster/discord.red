Red [title: "Origin, tab panel, slider, progress, base" needs: 'view]
view [
    origin 0x0 space 0x0
    tab-panel 500x500 [
        "Tab 1    " [
            progress 100x20 data 20% react [face/data: s/data]
            s: slider 100x20 data 20%
        ]
        "Tab 2    " [
            base 400x400 draw [
                pen red 
                circle 75x100 30
            ]
        ]
    ]
]