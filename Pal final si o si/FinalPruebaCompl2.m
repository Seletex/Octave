hold off
clear all
clc
close all
%graphics_toolkit('gnuplot')

pkg load control

%ingresamos los valores de input y output
%input = voltaje
%output = valor asocieado a la temperatura, mientras mas alto, mas caliente el horno

input = [0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
];

output = [0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
2
7
16
26
38
51
65
80
95
110
126
142
158
174
189
205
220
235
249
263
276
290
302
315
326
337
348
359
368
377
386
394
402
409
415
421
427
431
436
439
443
446
448
451
453
454
456
457
458
458
459
459
459
459
459
459
459
459
459
458
458
458
457
457
457
456
456
455
455
455
454
454
454
453
453
453
452
452
452
451
449
444
438
431
424
416
409
401
393
385
377
369
362
354
346
339
332
325
317
310
304
297
290
284
277
271
265
259
253
248
242
237
231
226
221
216
211
206
202
197
193
189
185
180
176
173
169
165
161
158
155
151
148
145
142
138
135
133
130
127
124
122
119
117
114
112
110
107
105
103
101
99
97
94
93
91
89
87
85
84
84
88
95
104
114
127
139
153
167
182
196
211
226
241
255
269
283
297
310
323
335
347
358
368
378
388
397
404
412
419
423
423
421
418
413
408
401
395
388
381
374
367
359
352
344
337
330
323
316
309
304
303
305
309
315
322
330
338
347
357
366
376
385
394
403
411
419
426
432
437
442
446
449
452
455
456
458
459
460
460
461
461
461
461
460
460
460
459
459
458
458
457
457
457
456
456
455
455
454
454
453
453
453
452
452
452
451
451
451
450
450
450
450
449
449
449
449
448
448
448
446
441
435
428
421
413
406
397
390
382
374
366
359
351
344
336
329
322
315
309
301
295
288
282
276
270
264
264
258
258
252
252
246
247
241
241
236
236
231
230
225
225
220
220
215
216
210
211
206
206
201
201
197
198
192
193
188
188
184
184
180
180
176
176
172
172
168
169
165
165
161
162
158
158
154
155
151
151
148
148
144
145
142
142
138
139
136
136
133
133
130
130
127
127
124
125
122
123
120
120
117
118
114
115
112
113
110
110
108
108
105
106
103
103
101
101
99
99
97
97
95
95
93
94
91
91
89
89
88
88
86
86
84
84
83
83
81
81
80
80
78
78
76
77
75
75
73
74
72
72
71
71
69
69
68
68
66
67
65
65
64
64
63
63
62
62
61
61
59
60
58
59
57
58
56
57
55
55
54
55
53
54
53
53
51
51
51
51
50
50
49
49
48
48
47
47
46
46
45
46
44
45
43
44
43
43
42
42
42
41
41
41
40
40
39
40
39
39
38
39
37
38
37
38
36
37
36
36
35
35
35
35
34
35
34
34
33
33
32
32
32
32
31
31
31
31
30
31
30
30
29
30
29
29
29
28
28
28
28
28
27
27
27
27
26
26
26
26
26
26
25
25
25
25
24
25
24
24
24
24
24
23
23
23
23
23
23
23
22
22
22
22
21
21
21
21
21
21
21
21
20
20
20
20
20
20
20
19
19
19
19
19
19
19
18
19
18
18
18
19
18
18
17
18
17
17
17
18
17
17
17
17
17
17
16
17
16
16
16
16
15
16
15
16
15
15
15
15
15
15
15
15
15
15
15
15
14
15
14
15
14
15
14
15
14
14
13
14
13
14
13
13
13
13
13
13
13
13
12
13
12
13
12
13
12
13
12
13
12
12
11
12
11
12
11
12
11
11
11
11
11
11
11
11
11
11
11
11
11
11
11
11
10
11
10
11
10
11
10
11
10
10
10
10
10
11
9
10
10
10
9
9
9
9
9
9
9
9
9
9
9
9
9
9
9
9
9
9
9
9
8
8
8
8
8
8
8
9
8
8
8
8
8
8
8
8
8
8
8
8
8
8
8
8
7
8
8
7
8
8
7
7
7
7
7
7
7
7
7
7
7
7
7
7
7
7
7
7
7
7
6
7
7
7
7
7
6
6
6
6
6
6
6
7
6
6
6
6
6
6
6
6
6
6
6
6
6
6
6
6
6
6
6
6
6
6
6
6
6
6
6
6
6
6
5
6
6
5
5
6
5
5
5
5
6
5
5
5
5
5
5
5
6
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
5
4
5
5
5
4
4
5
5
5
5
4
4
4
5
4
4
];

%Graficamos

plot (output)
%======================================

%Empezamos con los minimos cuadrados, primero generamos el vector A y Y
maxRetardo=4;
n15=maxRetardo-1;
n25=maxRetardo-2;
Y5 = output(maxRetardo:length(output));
A5 = [-1*[output(1:length(output)-3)],-1*[output(2:length(output)-2)],-1*[output(3:length(output)-1)], [input(1:length(input)-3)], [input(2:length(input)-2)],[input(3:length(input)-1)]];


%Aplicamos de la ecuación de mínimos cuadrados
Coe5=inv(A5'*A5)*A5'*Y5;
CoeInv5= Coe5'
Saprox5 = tf([Coe5(6) Coe5(5) Coe5(4)],[1,Coe5(3),Coe5(2), Coe5(1)],0.1)
Vin =(1:0.001:1.9999)';
u=rand(20000,1)*10;
[y15 t15]=lsim(Saprox5,input);
hold on
plot(t15, y15)
%pan = c2d(Saprox,0.001)

%=======================================

%Empezamos con los minimos cuadrados, primero generamos el vector A y Y
maxRetardo=3;
n1=maxRetardo-1;
n2=maxRetardo-2;
Y = output(maxRetardo:length(output));
A = [-1*[output(1:length(output)-2)],-1*[output(2:length(output)-1)], [input(1:length(input)-2)],[input(2:length(input)-1)]];


%Aplicamos de la ecuación de mínimos cuadrados
Coe=inv(A'*A)*A'*Y;
CoeInv= Coe'
Saprox = tf([Coe(4) Coe(3)],[1,Coe(2),Coe(1)], 1)
[y1 t1]=lsim(Saprox,Vin);
hold on
plot(t1, y1)
%pan = c2d(Saprox,0.001)

A1= [-1*[0;output(1:length(output)-1)], [0;input(1:length(input)-1)]];
y = output;
Coe1=inv(A1'*A1)*A1'*y;
CoeInv1= Coe1'
Saprox1 = tf([Coe1(2)],[1,Coe1(1)], 1)
[y11 t11]=lsim(Saprox1,input);
hold on
plot(t11, y11)
