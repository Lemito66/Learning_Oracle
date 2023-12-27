sonda_alimentacion = ['SONDA DE ALIMENTACIÓN POLYMED # 4',
                      'SONDA DE ALIMENTACIÓN POLYMED # 5',
                      'SONDA DE ALIMENTACIÓN POLYMED # 6',
                      'SONDA DE ALIMENTACIÓN POLYMED # 8',
                      'NUTRIFASE 5Fr SONDA DE ALIMENTACIÓN',
                      'NUTRIFASE 6Fr SONDA DE ALIMENTACIÓN',
                      'NUTRIFASE 8Fr SONDA DE ALIMENTACIÓN']

localizacion = ['FOSA NASAL DERECHA',
                'FOSA NASAL IZQUIERDA',
                'OROGASTRICA'
                ]


def longitud_listas(listas):
    for longitu in range(len(listas)):
        longitud = len(listas[longitu])
        print(longitud)


# print(longitud_listas(sonda_alimentacion))
print(longitud_listas(localizacion))
