Red [
    Title: "Drawing test"
    Needs: 'View
]

view [
    title "Drawing test"
    base 200x200 rate 60 now draw [
        c: circle 40x100 25
        [circle 150x150 30]
    ] on-time [
        time: now/precise
        c/2/2: 100 + to-integer 50 * sine 200 * time/second
    ]
]