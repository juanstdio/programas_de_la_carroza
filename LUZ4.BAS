8 DIM b$(15), n(20)
10 CLS
15 b$(0) = "       *": b$(1) = "       *": b$(2) = "     *  ": b$(3) = "     * *": b$(4) = "   *    ": b$(5) = " *   *  ": b$(6) = "   * *  ": b$(7) = "   * * *"
16 b$(8) = " *      ": b$(9) = " *     *": b$(10) = " *   *  ": b$(11) = " *   * *": b$(12) = " * *    ": b$(13) = " * *   *": b$(14) = " * * *  ": b$(15) = " * * * *"

20 PRINT "PROG. a,b"
21 PRINT "CAMBIO DE PANTALLA 7,8,9": PRINT "velocidad '+' o '-'"
22 'OUT &H310, NOT (n(0)): OUT &H378, n(w)
25 pv = 50: c$ = " "
30 a$ = INKEY$
40 IF a$ = "a" THEN 1000 ELSE IF a$ = "b" THEN 2000 ELSE IF a$ = "z" THEN END ELSE 30
50 GOTO 10

1000 CLS : vel = 10000: pv = 1500: n(1) = 17: n(2) = 34: n(3) = 68: n(4) = 136
1002 LOCATE 7, 20: PRINT "programa 1";
1003 FOR w = 1 TO 4
1004 a = INT(n(w) / 16): b = n(w) MOD 16
1005 'OUT &H311, NOT (n(w)): OUT &H378, n(w)
1006 GOSUB 2700
1008 FOR r = 0 TO vel: NEXT r
1010 GOSUB 2500
1013 NEXT w
1020 IF c$ = "0" THEN 1022 ELSE 1050
1022 con = con + 1
1023 IF con = 6 THEN con = 1: GOTO 2000
1050 GOTO 1002

2000 CLS : vel = 10000: pv = 1500: n(1) = 1: n(2) = 2: n(3) = 4: n(4) = 8: n(5) = 16: n(6) = 32: n(7) = 64: n(8) = 128: n(9) = 255: n(10) = 128: n(11) = 64: n(12) = 32: n(13) = 16: n(14) = 8: n(15) = 4: n(16) = 2: n(17) = 1: n(18) = 255
2001 LOCATE 7, 20: PRINT "programa 2:";
2002 FOR w = 1 TO 18
2003 a = INT(n(w) / 16): b = n(w) MOD 16
2004 'OUT &H311, NOT (n(w)): OUT &H378, n(w)
2005 GOSUB 2700
2008 FOR r = 0 TO vel: NEXT r
2010 GOSUB 2500
2013 NEXT w
2020 IF c$ = "0" THEN 2022 ELSE 2002
2022 con = con + 1
2023 IF con = 6 THEN con = 1: GOTO 1000
2050 GOTO 2002

2500 'sub rutina de velocidad
2501 v$ = INKEY$
2510 IF v$ = "+" THEN vel = vel - pv ELSE IF v$ = "-" THEN vel = vel + pv ELSE IF v$ = "a" THEN 2515
2515 IF v$ = "a" THEN 1000 ELSE IF v$ = "b" THEN 2000 ELSE IF v$ = "1" THEN 2520
2520 IF v$ = "1" THEN c$ = "1": con = 0 ELSE IF v$ = "0" THEN c$ = "0" ELSE IF v$ = "7" THEN CLS : b$ = "7" ELSE IF v$ = "8" THEN CLS : b$ = "8" ELSE IF v$ = "9" THEN CLS : b$ = "9" ELSE IF v$ = "z" THEN 20
2530 RETURN

2700 'subrutina de velocidad
2701 IF b$ = "7" THEN 2702 ELSE IF b$ = "8" THEN 2766 ELSE IF b$ = "9" THEN 5866
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                2750 LOCATE 12, 52: PRINT b$(a); b$(b): LOCATE 11, 54: PRINT b$(a); b$(b): LOCATE 10, 56: PRINT b$(a); b$(b): LOCATE 9, 58: PRINT b$(a); b$(b): LOCATE 8, 60: PRINT b$(a); b$(b)
2750 LOCATE 12, 52: PRINT b$(a); b$(b): LOCATE 11, 54: PRINT b$(a); b$(b): LOCATE 10, 56: PRINT b$(a); b$(b): LOCATE 9, 58: PRINT b$(a); b$(b): LOCATE 8, 60: PRINT b$(a); b$(b)
2760 LOCATE 13, 21: PRINT "1  2 3 4 5 6 7 8        Vel.="; vel; "R="; con
2762 RETURN

2766 LOCATE 2, 1: PRINT "hecho por Juan"
2768 LOCATE 4, 1: PRINT "prog. de prueba"
2770 LOCATE 12, 20: PRINT b$(a); b$(b): LOCATE 11, 20: PRINT b$(a); b$(b): LOCATE 10, 20: PRINT b$(a); b$(b): LOCATE 9, 20: PRINT b$(a); b$(b): LOCATE 8, 20: PRINT b$(a); b$(b)
2775 LOCATE 12, 36: PRINT b$(a); b$(b): LOCATE 11, 36: PRINT b$(a); b$(b): LOCATE 10, 36: PRINT b$(a); b$(b): LOCATE 9, 36: PRINT b$(a); b$(b): LOCATE 8, 36: PRINT b$(a); b$(b)
2780 LOCATE 12, 52: PRINT b$(a); b$(b): LOCATE 11, 52: PRINT b$(a); b$(b): LOCATE 10, 52: PRINT b$(a); b$(b): LOCATE 9, 52: PRINT b$(a); b$(b): LOCATE 8, 52: PRINT b$(a); b$(b)
2790 LOCATE 13, 21: PRINT "1  2 3 4 5 6 7 8        Vel.="; vel; "R="; con
2800 RETURN

2866 LOCATE 2, 1: PRINT "hecho por Juan"
2868 LOCATE 4, 1: PRINT "prog. de prueba"
2870 LOCATE 12, 20: PRINT b$(a); b$(b): LOCATE 11, 18: PRINT b$(a); b$(b): LOCATE 10, 16: PRINT b$(a); b$(b): LOCATE 9, 18: PRINT b$(a); b$(b): LOCATE 8, 20: PRINT b$(a); b$(b)
2875 LOCATE 12, 36: PRINT b$(a); b$(b): LOCATE 11, 34: PRINT b$(a); b$(b): LOCATE 10, 32: PRINT b$(a); b$(b): LOCATE 9, 34: PRINT b$(a); b$(b): LOCATE 8, 36: PRINT b$(a); b$(b)
2880 LOCATE 12, 52: PRINT b$(a); b$(b): LOCATE 11, 50: PRINT b$(a); b$(b): LOCATE 10, 48: PRINT b$(a); b$(b): LOCATE 9, 50: PRINT b$(a); b$(b): LOCATE 8, 52: PRINT b$(a); b$(b)
2890 LOCATE 13, 21: PRINT "1  2 3 4 5 6 7 8        Vel.="; vel; "R="; con
2900 RETURN























