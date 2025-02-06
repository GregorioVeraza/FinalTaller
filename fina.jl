programa final
areas
    area1: AreaPC(50,50,50,50)
    area2: AreaP(2,2,2,2)
    area3: AreaP(3,3,3,3)
    area4: AreaP(4,4,4,4)
    area5: AreaP(5,5,5,5)
    areaJefe: AreaP(1,1,1,1)
robots
    robot limpiador
    variables
        ID: numero
    comenzar
        RecibirMensaje(ID, jefe)
        BloquearEsquina(50, 50)
        Pos(50, 50)
        si HayFlorEnLaEsquina
            tomarFlor
        LiberarEsquina(50, 50)
        EnviarMensaje(ID, jefe)
    fin
    robot robotJefe
    variables
        num: numero
    comenzar
        repetir 5
            random(num, 1, 4)
            si (num = 1)
                EnviarMensaje(robot1, num)
            sino
                si (num = 2)
                    EnviarMensaje(robot2, num)
            sino
                si (num = 3)
                    EnviarMensaje(robot3, num)
            sino 
                si (num = 4)
                    EnviarMensaje(robot4, num)
    fin
variables
    robot1, robot2, robot3, robot4: limpiador
    jefe: robotJefe
comenzar
    AsignarArea(robot1, area2)
    AsignarArea(robot1, area1)
    AsignarArea(robot2, area3)
    AsignarArea(robot2, area1)
    AsignarArea(robot3, area4)
    AsignarArea(robot3, area1)
    AsignarArea(robot4, area5)
    AsignarArea(robot4, area1)
    AsignarArea(jefe, areaJefe)
    Iniciar(robot1,2,2)
    Iniciar(robot2,3,3)
    Iniciar(robot3,4,4)
    Iniciar(robot4,5,5)
    Iniciar(jefe,1,1)
fin