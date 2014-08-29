--Hokuto No Ken Rmake Code

--game over pic
over = Image.load("over.png")
head = Image.load("head.png")

--Loading sprites animation
--right sprites
player1 = Image.load("right/c1.png")
player2 = Image.load("right/c2.png")
player3 = Image.load("right/c3.png")
player4 = Image.load("right/c4.png")
player5 = Image.load("right/c5.png")
player6 = Image.load("right/c6.png")
player7 = Image.load("right/c7.png")
player8 = Image.load("right/c8.png")
pg1 = Image.load("right/pgD1.png")
pg2 = Image.load("right/pgD2.png")
pg3 = Image.load("right/pgD3.png")
pg4 = Image.load("right/pgD4.png")
calcioR = Image.load("right/calcioD.png")
colpitoR = Image.load("right/colpitoD.png")
stand1 = Image.load("right/s1.png")
stand2 = Image.load("right/s2.png")
stand3 = Image.load("right/s3.png")
saltoD = Image.load("right/saltoD.png")

--left sprites
player9 = Image.load("left/cs1.png")
player10 = Image.load("left/cs2.png")
player11 = Image.load("left/cs3.png")
player12 = Image.load("left/cs4.png")
player13 = Image.load("left/cs5.png")
player14 = Image.load("left/cs6.png")
player15 = Image.load("left/cs7.png")
player16 = Image.load("left/cs8.png")
pg5 = Image.load("left/pgS1.png")
pg6 = Image.load("left/pgS2.png")
pg7 = Image.load("left/pgS3.png")
pg8 = Image.load("left/pgS4.png")
calcioL = Image.load("left/calcioS.png")
colpitoL = Image.load("left/colpitoS.png")
stand4 = Image.load("left/sc1.png")
stand5 = Image.load("left/sc2.png")
stand6 = Image.load("left/sc3.png")
saltoL = Image.load("left/saltoS.png")

--loading level pics
sf1 = Image.load("sf1.png")
sf2 = Image.load("sf2.png")
sf3 = Image.load("sf3.png")

--health bar
bar = Image.load("healthbar.png")

--Creating Colors
white = Color.new(255,255,255)
red = Color.new(255,0,0)
green = Color.new(0,255,0)

--Player table
player = {
  x = 30;
  y = 150;
  height = 121;
  width = 71;
  img = stand1;
  health = 200 ;
}

--floor
floorx = 0;
floory = 220;

--oldpad Declare
oldpad = Controls.read()

---------------------------------------------functions for KEN Sprite
standR = 0
standL = 0
punchR = 0
punchL = 0
walkR = 0
walkL = 0

function standr()
  if standR >= 10 then player.img = stand2 end
  if standR >= 20 then player.img = stand3 end
  if standR >= 30 then standR = 0 end
  if standR>= 0 and standR <= 10 then player.img = stand1 end
  standR = standR + 1
end

function standl()
  if standL >= 10 then player.img = stand5 end
  if standL >= 20 then player.img = stand6 end
  if standL >= 30 then standL = 0 end
  if standL >= 0 and standL <= 10 then player.img = stand4 end
  standL = standL + 1
end

function punchr()
  if punchR >= 0 then player.img = pg1 end
  if punchR >= 5 then player.img = pg2 end
  if punchR >= 10 then player.img = pg3 end
  if punchR >= 15 then player.img = pg4 end
  if punchR >= 20 then punchR = 0 end
  punchR = punchR + 1.5
end

function punchl()
  if punchL >= 0 then player.img = pg1 end
  if punchL >= 5 then player.img = pg2 end
  if punchL >= 10 then player.img = pg3 end
  if punchL >= 15 then player.img = pg4 end
  if punchL >= 20 then punchL = 0 end
  punchL = punchL + 1
end

function walkr()
  if walkR >= 0 then player.img = player1 end
  if walkR >= 10 then player.img = player2 end
  if walkR >= 20 then player.img = player3 end
  if walkR >= 30 then player.img = player4 end
  if walkR >= 40 then player.img = player5 end
  if walkR >= 50 then player.img = player6 end
  if walkR >= 60 then player.img = player7 end
  if walkR >= 70 then player.img = player8 end
  if walkR >= 80 then walkR = 0  end
  walkR = walkR + 1.5
end

function walkl()
  if walkL >= 0 then player.img = player9 end
  if walkL >= 10 then player.img = player10 end
  if walkL >= 20 then player.img = player11 end
  if walkL >= 30 then player.img = player12 end
  if walkL >= 40 then player.img = player13 end
  if walkL >= 50 then player.img = player14 end
  if walkL >= 60 then player.img = player15 end
  if walkL >= 70 then player.img = player16 end
  if walkL >= 80 then walkL = 0  end
  walkL = walkL + 1.5
end
--------------------------------------------------------

--ennemy sprites
e1 = Image.load("opp/e1.png")
e2 = Image.load("opp/e2.png")
e3 = Image.load("opp/e3.png") 
ea1 = Image.load("opp/ea1.png")
ea2 = Image.load("opp/ea2.png")
ed1 = Image.load("opp/ed1.png")
ed2 = Image.load("opp/ed2.png")
ed3 = Image.load("opp/ed3.png")
ed4 = Image.load("opp/ed4.png")

--enneny table
ennemy = {
  x = 400;
  y = 150;
  width = 78;
  height = 120 ;
  img = e1;
} 

--------------------------------------------------------function for ennemy Sprite
e_walkr = 0
atk = 0
kill = 0
var = 0

function ennemy_mover()
  if e_walkr >= 0 then ennemy.img = e2 end
  if e_walkr >= 15 then ennemy.img = e3 end
  if e_walkr >= 25 then e_walkr = 0 end
  e_walkr = e_walkr + 1
end

function ennemy_punch()
  if atk >= 0 then ennemy.img = ea1 end
  if atk >= 30 then ennemy.img = ea2 end
  if atk >= 40 then atk = 0 end
  atk = atk + 0.3
end

function decapit()
  if kill>= 0 then ennemy.img = ed1 end
  if kill >= 10 then ennemy.img = ed2 end
  if kill >= 20 then ennemy.img = ed3 end
  if kill >= 30 then ennemy.img = ed4 end
  if kill >= 40 then 
    ennemy.x = player.x + 600
    kill = 0
    var = var + 1
  end
  kill = kill + 1
end
-----------------------------------------------------------

while true do
  screen:clear()
  pad = Controls.read()

  standr()

  ennemy_mover()
  ennemy.x = ennemy.x - 1
  if ennemy.x <= player.x + 20 then
    ennemy.x = oldx
    ennemy_punch()
  end

  if pad:cross() then 
    punchr()
  end

  if pad:right() then
    player.x = player.x + 1
    walkr()
  end

  if pad:left() then
    player.x = player.x - 1
    walkl()
  end

  if ennemy.x - player.x <= 30 then
    if atk >= 10 and atk <= 30 then
      player.health = player.health - 0.7
    end
    if pad:cross() then
      atk = 0 
      decapit()
    end
  end

  if player.health <= 0 then dofile("over.lua") end

  oldx = ennemy.x
  screen:blit(0,0,sf1)
  screen:blit(floorx,floory,sf3)
  screen:blit(0,120,sf2)
  screen:blit(player.x,player.y,player.img)
  screen:blit(ennemy.x,ennemy.y,ennemy.img)
  screen:fillRect(25,12,player.health,9,Color.new(255,255,0))
  screen:blit(-15,-8,head)
  screen:print(300,10,"Ennemies Killed :"..var,red)

  oldpad = pad
  screen.waitVblankStart()
  screen.flip()
end




