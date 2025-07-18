8 DIM b$(15), n(90)
10 CLS
15 b$(0) = "        ": b$(1) = "       *": b$(2) = "     *  ": b$(3) = "     * *": b$(4) = "   *    ": b$(5) = " *   *  ": b$(6) = "   * *  ": b$(7) = "   * * *"
16 b$(8) = " *      ": b$(9) = " *     *": b$(10) = " *   *  ": b$(11) = " *   * *": b$(12) = " * *    ": b$(13) = " * *   *": b$(14) = " * * *  ": b$(15) = " * * * *"

20 'PRINT "PROG. a,b,c,d,e,f,g,h,i,j,k,l,m"
21 LOCATE 8, 5: PRINT "PROGRAMA DE LUCES DE ARBOL": LOCATE 10, 5: PRINT "Prog. A -->": LOCATE 11, 5: PRINT "Prog. B -->": LOCATE 12, 5: PRINT "Prog. C -->": LOCATE 13, 5: PRINT "Prog. D -->": LOCATE 14, 5: PRINT "Prog. E -->": LOCATE 15, 5: PRINT  _
"Prog. G -->": LOCATE 16, 5: PRINT "Prog. H -->": LOCATE 17, 5: PRINT "Prog. I -->": LOCATE 18, 5: PRINT "Prog. J -->": LOCATE 19, 5: PRINT "Prog. K -->": LOCATE 20, 5: PRINT "Prog. L -->": LOCATE 21, 5: PRINT "Prog. M -->"
26 PRINT "CAMBIO DE PANTALLA 7,8,9"
27 OUT &H378, 0
29 pv = 50: c$ = " "
30 a$ = INKEY$
40 IF a$ = "m" THEN 12000 ELSE IF a$ = "l" THEN 11000 ELSE IF a$ = "k" THEN 10000 ELSE IF a$ = "j" THEN 11000 ELSE IF a$ = "i" THEN 8000 ELSE IF a$ = "h" THEN 3500 ELSE IF a$ = "g" THEN 7000 ELSE IF a$ = "f" THEN 6000 ELSE IF a$ = "e" THEN 5000 ELSE _
 IF a$ = "a" THEN 1000 ELSE IF a$ = "b" THEN 2000 ELSE IF a$ = "c" THEN 3000 ELSE IF a$ = "d" THEN 4000 ELSE IF a$ = "z" THEN OUT &H378, 0: END ELSE 30
50 GOTO 10

1000 CLS : vel = 27000: pv = 1500: n(1) = 17: n(2) = 34: n(3) = 68: n(4) = 136
1002 LOCATE 7, 20: PRINT "programa A: corrida doble";
1003 FOR w = 1 TO 4
1004 a = INT(n(w) / 16): b = n(w) MOD 16
1005 OUT &H378, n(w)
1006 GOSUB 2700
1008 FOR r = 0 TO vel: NEXT r
1010 GOSUB 2500
1013 NEXT w
1020 IF c$ = "0" THEN 1022 ELSE 1050
1022 con = con + 1
1023 IF con = 6 THEN con = 1: GOTO 2000
1050 GOTO 1002

2000 CLS : vel = 20000: pv = 1500: n(1) = 1: n(2) = 2: n(3) = 4: n(4) = 8: n(5) = 16: n(6) = 32: n(7) = 64: n(8) = 128: n(9) = 255: n(10) = 128: n(11) = 64: n(12) = 32: n(13) = 16: n(14) = 8: n(15) = 4: n(16) = 2: n(17) = 1: n(18) = 255
2001 LOCATE 7, 20: PRINT "programa B: corrida ida y vuelta con destello completo";
2002 FOR w = 1 TO 18
2003 a = INT(n(w) / 16): b = n(w) MOD 16
2004 OUT &H378, n(w)
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
2510 IF v$ = "m" THEN 12000 ELSE IF v$ = "l" THEN 11000 ELSE IF v$ = "k" THEN 10000 ELSE IF v$ = "+" THEN vel = vel - pv ELSE IF v$ = "-" THEN vel = vel + pv ELSE IF v$ = "a" THEN 2515
2515 IF v$ = "j" THEN 9000 ELSE IF v$ = "i" THEN 8000 ELSE IF v$ = "h" THEN 3500 ELSE IF v$ = "g" THEN 10000 ELSE IF v$ = "f" THEN 6000 ELSE IF v$ = "e" THEN 5000 ELSE IF v$ = "a" THEN 1000 ELSE IF v$ = "b" THEN 2000 ELSE IF v$ = "c" THEN 3000 ELSE  _
IF v$ = "d" THEN 4000 ELSE IF v$ = "1" THEN 2520
2520 IF v$ = "1" THEN c$ = "1": con = 0 ELSE IF v$ = "0" THEN c$ = "0" ELSE IF v$ = "7" THEN CLS : b$ = "7" ELSE IF v$ = "8" THEN CLS : b$ = "8" ELSE IF v$ = "9" THEN CLS : b$ = "9" ELSE IF v$ = "z" THEN OUT &H378, 0: END
2530 RETURN

2700 'subrutina de visuallizacion
2701 IF b$ = "7" THEN 2702 ELSE IF b$ = "8" THEN 2766 ELSE IF b$ = "9" THEN 2866
2702 LOCATE 2, 1: PRINT "hecho por Juan"
2703 LOCATE 4, 1: PRINT "General"
2740 LOCATE 12, 20: PRINT b$(a); b$(b): LOCATE 11, 22: PRINT b$(a); b$(b): LOCATE 10, 24: PRINT b$(a); b$(b): LOCATE 9, 26: PRINT b$(a); b$(b): LOCATE 8, 28: PRINT b$(a); b$(b)
2745 LOCATE 12, 36: PRINT b$(a); b$(b): LOCATE 11, 38: PRINT b$(a); b$(b): LOCATE 10, 40: PRINT b$(a); b$(b): LOCATE 9, 42: PRINT b$(a); b$(b): LOCATE 8, 44: PRINT b$(a); b$(b)
2750 LOCATE 12, 52: PRINT b$(a); b$(b): LOCATE 11, 54: PRINT b$(a); b$(b): LOCATE 10, 56: PRINT b$(a); b$(b): LOCATE 9, 58: PRINT b$(a); b$(b): LOCATE 8, 60: PRINT b$(a); b$(b)
2760 LOCATE 13, 21: PRINT "1 2 3 4 5 6 7 8        Vel.="; vel; "R="; con
2762 RETURN

2766 LOCATE 2, 1: PRINT "hecho por Juan"
2768 LOCATE 4, 1: PRINT "General"
2770 LOCATE 12, 20: PRINT b$(a); b$(b): LOCATE 11, 20: PRINT b$(a); b$(b): LOCATE 10, 20: PRINT b$(a); b$(b): LOCATE 9, 20: PRINT b$(a); b$(b): LOCATE 8, 20: PRINT b$(a); b$(b)
2775 LOCATE 12, 36: PRINT b$(a); b$(b): LOCATE 11, 36: PRINT b$(a); b$(b): LOCATE 10, 36: PRINT b$(a); b$(b): LOCATE 9, 36: PRINT b$(a); b$(b): LOCATE 8, 36: PRINT b$(a); b$(b)
2780 LOCATE 12, 52: PRINT b$(a); b$(b): LOCATE 11, 52: PRINT b$(a); b$(b): LOCATE 10, 52: PRINT b$(a); b$(b): LOCATE 9, 52: PRINT b$(a); b$(b): LOCATE 8, 52: PRINT b$(a); b$(b)
2790 LOCATE 13, 21: PRINT "1 2 3 4 5 6 7 8        Vel.="; vel; "R="; con
2800 RETURN

2866 LOCATE 2, 1: PRINT "hecho por Juan"
2868 LOCATE 4, 1: PRINT "General"
2870 LOCATE 12, 20: PRINT b$(a); b$(b): LOCATE 11, 18: PRINT b$(a); b$(b): LOCATE 10, 16: PRINT b$(a); b$(b): LOCATE 9, 18: PRINT b$(a); b$(b): LOCATE 8, 20: PRINT b$(a); b$(b)
2875 LOCATE 12, 36: PRINT b$(a); b$(b): LOCATE 11, 34: PRINT b$(a); b$(b): LOCATE 10, 32: PRINT b$(a); b$(b): LOCATE 9, 34: PRINT b$(a); b$(b): LOCATE 8, 36: PRINT b$(a); b$(b)
2880 LOCATE 12, 52: PRINT b$(a); b$(b): LOCATE 11, 50: PRINT b$(a); b$(b): LOCATE 10, 48: PRINT b$(a); b$(b): LOCATE 9, 50: PRINT b$(a); b$(b): LOCATE 8, 52: PRINT b$(a); b$(b)
2890 LOCATE 13, 21: PRINT "1 2 3 4 5 6 7 8        Vel.="; vel; "R="; con
2900 RETURN

3000 CLS : vel = 28000: pv = 2000:  n(1) = 1: n(2) = 2: n(3) = 4: n(4) = 8: n(5) = 16: n(6) = 32: n(7) = 64: n(8) = 128
3001 LOCATE 7, 20: PRINT "programa C: corrida simple derecha";
3002 FOR w = 1 TO 8
3003 a = INT(n(w) / 16): b = n(w) MOD 16
3004 OUT &H378, n(w)
3005 GOSUB 2700
3008 FOR r = 0 TO vel: NEXT r
3010 GOSUB 2500
3013 NEXT w
3020 IF c$ = "0" THEN 3022 ELSE 3002
3022 con = con + 1
3023 IF con = 6 THEN con = 1: GOTO 1000
3050 GOTO 3002

3500 CLS : vel = 21000: pv = 2000:  n(1) = 128: n(2) = 64: n(3) = 32: n(4) = 16: n(5) = 8: n(6) = 4: n(7) = 2: n(8) = 1
3501 LOCATE 7, 20: PRINT "programa H: corrida simple izquierda";
3502 FOR w = 1 TO 8
3503 a = INT(n(w) / 16): b = n(w) MOD 16
3504 OUT &H378, n(w)
3505 GOSUB 2700
3508 FOR r = 0 TO vel: NEXT r
3510 GOSUB 2500
3513 NEXT w
3520 IF c$ = "0" THEN 3522 ELSE 3502
3522 con = con + 1
3523 IF con = 6 THEN con = 1: GOTO 1000
3550 GOTO 3502

4000 CLS : vel = 25000: pv = 2000:  n(1) = 1: n(2) = 2: n(3) = 4: n(4) = 8: n(5) = 16: n(6) = 32: n(7) = 64: n(8) = 128: n(9) = 129: n(10) = 130: n(11) = 132: n(12) = 136: n(13) = 144: n(14) = 160: n(15) = 192: n(16) = 193: n(17) = 194: n(18) = 196 _
: n(19) = 200: n(20) = 208: n(21) = 224: n(22) = 225: n(23) = 226: n(24) = 228: n(25) = 232: n(26) = 240: n(27) = 241: n(28) = 242: n(29) = 244: n(30) = 248: n(31) = 249: n(32) = 250: n(33) = 252: n(34) = 253: n(35) = 254: n(36) = 255
4001 LOCATE 7, 20: PRINT "programa D: corrida con stop";
4002 FOR w = 1 TO 36
4003 a = INT(n(w) / 16): b = n(w) MOD 16
4004 OUT &H378, n(w)
4005 GOSUB 2700
4008 FOR r = 0 TO vel: NEXT r
4010 GOSUB 2500
4013 NEXT w
4020 IF c$ = "0" THEN 4022 ELSE 4002
4022 con = con + 1
4023 IF con = 6 THEN con = 1: GOTO 1000
4050 GOTO 4002

5000 CLS : vel = 25000: pv = 2000:  n(1) = 129: n(2) = 66: n(3) = 36: n(4) = 24: n(5) = 0: n(6) = 24: n(7) = 36: n(8) = 66: n(9) = 129
5001 LOCATE 7, 20: PRINT "programa E: ida y vualta doble";
5002 FOR w = 1 TO 9
5003 a = INT(n(w) / 16): b = n(w) MOD 16
5004 OUT &H378, n(w)
5005 GOSUB 2700
5008 FOR r = 0 TO vel: NEXT r
5010 GOSUB 2500
5013 NEXT w
5020 IF c$ = "0" THEN 5022 ELSE 5002
5022 con = con + 1
5023 IF con = 6 THEN con = 1: GOTO 1000
5050 GOTO 50

6000 CLS : vel = 25000: pv = 2000:  n(1) = 255: n(2) = 126: n(3) = 60: n(4) = 24: n(5) = 0: n(6) = 24: n(7) = 60: n(8) = 126: n(9) = 255
6001 LOCATE 7, 20: PRINT "programa F: ida y vuelta - lleno";
6002 FOR w = 1 TO 9
6003 a = INT(n(w) / 16): b = n(w) MOD 16
6004 OUT &H378, n(w)
6005 GOSUB 2700
6008 FOR r = 0 TO vel: NEXT r
6010 GOSUB 2500
6013 NEXT w
6020 IF c$ = "0" THEN 6022 ELSE 6002
6022 con = con + 1
6023 IF con = 6 THEN con = 1: GOTO 1000
6050 GOTO 6002

7000 CLS : vel = 10000: pv = 2000
7001 LOCATE 7, 20: PRINT "programa G:     ALEATORIO";
7002 FOR w = 1 TO 15: num = INT(RND * 255): n(w) = num
7003 a = INT(n(w) / 16): b = n(w) MOD 16
7004 OUT &H378, n(w)
7007 GOSUB 2700
7008 FOR r = 0 TO vel: NEXT r
7010 GOSUB 2500
7013 NEXT w
7020 IF c$ = "0" THEN 7022 ELSE 7002
7022 con = con + 1
7023 IF con = 6 THEN con = 1: GOTO 1000
7050 GOTO 7002

8000 CLS : vel = 20000: pv = 2000:  n(1) = 1: n(2) = 2: n(3) = 4: n(4) = 8: n(5) = 16: n(6) = 32: n(7) = 64: n(8) = 128: n(9) = 129: n(10) = 130: n(11) = 132: n(12) = 136: n(13) = 144: n(14) = 160: n(15) = 192: n(16) = 193: n(17) = 194: n(18) = 196 _
: n(19) = 200: n(20) = 208: n(21) = 224: n(22) = 225: n(23) = 226: n(24) = 228: n(25) = 232: n(26) = 240: n(27) = 241: n(28) = 242: n(29) = 244: n(30) = 248: n(31) = 249: n(32) = 250: n(33) = 252: n(34) = 253: n(35) = 254: n(36) = 255

8001 n(37) = 255: n(38) = 254: n(39) = 253: n(40) = 252: n(41) = 250: n(42) = 249: n(43) = 248: n(44) = 244: n(45) = 242: n(46) = 241: n(47) = 240: n(48) = 232: n(49) = 228: n(50) = 226: n(51) = 225: n(52) = 224: n(53) = 208: n(54) = 200: n(55) =  _
196: n(56) = 194: n(57) = 193: n(58) = 192: n(59) = 160: n(60) = 144: n(61) = 136: n(62) = 132: n(63) = 130: n(64) = 129: n(65) = 128: n(66) = 64: n(67) = 32: n(65) = 16: n(66) = 8: n(67) = 4: n(68) = 2: n(69) = 1

8002 LOCATE 7, 20: PRINT "programa I: corrida con stop - ida y vuelta";
8003 FOR w = 1 TO 69
8004 a = INT(n(w) / 16): b = n(w) MOD 16
8005 OUT &H378, n(w)
8007 GOSUB 2700
8008 FOR r = 0 TO vel: NEXT r
8010 GOSUB 2500
8013 NEXT w
8020 IF c$ = "0" THEN 8022 ELSE 8003
8022 con = con + 1
8023 IF con = 6 THEN con = 1: GOTO 1000
8050 GOTO 8002


9000 CLS : vel = 20000: pv = 2000:  n(1) = 1: n(2) = 2: n(3) = 4: n(4) = 8: n(5) = 16: n(6) = 32: n(7) = 64: n(8) = 128: n(9) = 129: n(10) = 130: n(11) = 132: n(12) = 136: n(13) = 144: n(14) = 160: n(15) = 192: n(16) = 193: n(17) = 194: n(18) = 196 _
: n(19) = 200: n(20) = 208: n(21) = 224: n(22) = 225: n(23) = 226: n(24) = 228: n(25) = 232: n(26) = 240: n(27) = 241: n(28) = 242: n(29) = 244: n(30) = 248: n(31) = 249: n(32) = 250: n(33) = 252: n(34) = 253: n(35) = 254: n(36) = 255
9001 n(37) = 127: n(38) = 63: n(39) = 31: n(40) = 15: n(41) = 7: n(42) = 3: n(43) = 1: n(44) = 0
9002 LOCATE 7, 20: PRINT "programa J: corrida con stop - ida y vuelta";
9003 FOR w = 1 TO 44
9004 a = INT(n(w) / 16): b = n(w) MOD 16
9005 OUT &H378, n(w)
9007 GOSUB 2700
9008 FOR r = 0 TO vel: NEXT r
9010 GOSUB 2500
9013 NEXT w
9020 IF c$ = "0" THEN 9022 ELSE 9003
9022 con = con + 1
9023 IF con = 6 THEN con = 1: GOTO 1000
9050 GOTO 9002


10000 CLS : vel = 15000: pv = 2000:  n(1) = 129: n(2) = 195: n(3) = 231: n(4) = 255: n(5) = 126: n(6) = 60: n(7) = 24
10002 LOCATE 7, 20: PRINT "programa K: ida y vuelta - adentro para afuera";
10003 FOR w = 1 TO 7
10004 a = INT(n(w) / 16): b = n(w) MOD 16
10005 OUT &H378, n(w)
10007 GOSUB 2700
10008 FOR r = 0 TO vel: NEXT r
10010 GOSUB 2500
10013 NEXT w
10020 IF c$ = "0" THEN 10022 ELSE 10003
10022 con = con + 1
10023 IF con = 6 THEN con = 1: GOTO 11000
10050 GOTO 10002

11000 CLS : vel = 13000: pv = 2000:  n(1) = 170: n(2) = 85: n(3) = 170: n(4) = 85: n(5) = 170: n(6) = 85
11002 LOCATE 7, 20: PRINT "programa L: salteado intermitente";
11003 FOR w = 1 TO 6
11004 a = INT(n(w) / 16): b = n(w) MOD 16
11005 OUT &H378, n(w)
11007 GOSUB 2700
11008 FOR r = 0 TO vel: NEXT r
11010 GOSUB 2500
11013 NEXT w
11020 IF c$ = "0" THEN 11022 ELSE 11003
11022 con = con + 1
11023 IF con = 6 THEN con = 1: GOTO 1000
11050 GOTO 11002

12000 CLS : vel = 13000: pv = 2000:  n(1) = 192: n(2) = 12: n(3) = 48: n(4) = 3: n(5) = 48: n(6) = 12
12002 LOCATE 7, 20: PRINT "programa M: doble salteado";
12003 FOR w = 1 TO 6
12004 a = INT(n(w) / 16): b = n(w) MOD 16
12005 OUT &H378, n(w)
12007 GOSUB 2700
12008 FOR r = 0 TO vel: NEXT r
12010 GOSUB 2500
12013 NEXT w
12020 IF c$ = "0" THEN 12022 ELSE 12003
12022 con = con + 1
12023 IF con = 6 THEN con = 1: GOTO 1000
12050 GOTO 12002

