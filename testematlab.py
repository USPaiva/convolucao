global hData; hData = {}; t = 0;
L1 = []; L2 = [] ;L3 = []
v1Min = int(input('Enter movimentação em tempo min: '))   ##movimentação em tempo minimo
v1Max = int(input('Enter movimentação em tempo max: '))    ##%movimentação em tempo maximo
e = int(input('escala de intervalo de tempo: '))      ## %tempo que vem de padrão
x1 = v1Max
x2 = v1Min
while t <= x1 :
    if t >= x2 :
        y = 2^t+3*t    #% primeira equação
        w = 2^t+6*t    #%segunda equação
        L1.append(y)
        L2.append(w)
        t = t+e;
        L3.append(t)
    else:
        t=t+e
        L3.append(t)

print(L1)
print(L2)
print(L3)