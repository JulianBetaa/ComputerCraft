function main(gangLaenge, gangAnzahl)
    turtle.turnLeft()
    for i = 1, gangAnzahl do
        grabGang(gangLaenge)
        turnAround()
        move(gangLaenge)
        grabGang(gangLaenge)
        turnAround()
        move(gangLaenge)
        makeUturn()
    end
end
function makeUturn()
    turtle.turnRight()
    digAndMoveForward()
    -- digAndMoveForward()
    -- digAndMoveForward()
    turtle.turnLeft()
end
function move(laenge)
    for i = 1, laenge do
        turtle.forward()
    end
end
function grabGang(gangLaenge)
    for i = 1, gangLaenge do
        digAndMoveForward()
    end
end

function digAndMoveForward()
    if hasInventorySpace then 
        while turtle.detect() do
            turtle.dig()
            sleep(0.5)
        end
        turtle.forward()
        turtle.digUp()
    end
end
function turnAround()
    turtle.turnLeft()
    turtle.turnLeft()
end
function hasInventorySpace()
    for x =1, 16 do
        if turtle.select(x) == 0 then
            return true 
        end
    end

end
main(20, 30)