RANDOMIZE TIMER
az = INT(RND * 255 + .5)
tecla = 0: lamp = 0: s = 0
v = 100
DIM sec(14)
sec(1) = 1: sec(2) = 2: sec(3) = 4: sec(4) = 8: sec(5) = 16
sec(6) = 32: sec(7) = 64: sec(8) = 128: sec(9) = 64: sec(10) = 32
sec(11) = 16: sec(12) = 8: sec(13) = 4: sec(14) = 2

OUT &H311, 0
OUT &H310, 2 ^ 0
ini:
        OUT &H311, lamp
        FOR x = 1 TO v
                IF (INP(&H310) AND 1) = 0 THEN tecla = 0
                IF (INP(&H310) AND 2) = 0 THEN tecla = 1
                IF (INP(&H310) AND 4) = 0 THEN tecla = 2
        NEXT
        OUT &H310, 2 ^ tecla
        IF tecla = 1 THEN GOSUB azar: GOTO ini:
        IF tecla = 2 THEN GOSUB secu: GOTO ini:
        GOTO ini:
azar:
        luz INT(RND * 7 + .5)
        aa = az AND (255 - 2 ^ luz)
        IF aa = az THEN az = (aa OR 2 ^ luz) ELSE az = aa
        lamp = az
        RETURN
secu:
        s = s + 1
        lamp sec(s)
        IF s = 14 THEN s = 0
        RETURN





