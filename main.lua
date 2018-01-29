
local mouthOpen = false;
local tailOpen = false;
local pelvicfinOpen = false;
local analfinOpen = false;
local softrayOpen = false;

--body
local opt =
{
	frames = {

		{ x =9, y = 10, width = 160, height = 80},
			}
}
local sheet = graphics.newImageSheet( "Kingfossil.png", opt);
local seqData = {
	{name = "normal", start=1,count = 1, time=1000},

}
local anim = display.newSprite (sheet, seqData);

anim.x = display.contentCenterX-50;
anim.y = display.contentCenterY-10;
anim.xScale = 1.5;
anim.yScale = 1.5;
anim:setSequence("normal");

--Tail fin
local tail =
{
	frames = {

		{ x = 13, y = 145, width = 60, height = 60},
		{ x = 85, y = 145, width = 60, height = 60},
		{ x = 149, y = 145, width = 60, height = 60},
		{ x = 211, y = 145, width = 60, height = 60},
		{ x = 273, y = 145, width = 60, height = 60},
	    }
}
local tailsheet = graphics.newImageSheet( "Kingfossil.png", tail);
local tailData = {
	{name = "tailfinfor", start=1,count = 5, time=1000, loopCount=1},
	{name = "tailfinback", frames = { 5,4,3,2,1 }, time=1000, loopCount=1},
}
local animTail = display.newSprite (tailsheet, tailData);

animTail.x = display.contentCenterX+100;
animTail.y = display.contentCenterY-10;
animTail.xScale = 1.5;
animTail.yScale = 1.5;
animTail:setSequence("tailfinfor");
--animTail:play();

--Mouth
local mouth =
{
	frames = {

		{x = 13, y = 95, width = 55, height = 49},
		{x = 69, y = 95, width = 61, height = 49},
		{x = 128, y = 95, width = 51, height = 49},
		{x = 186, y = 95, width = 45, height = 49},

	    }
}
local mouthsheet = graphics.newImageSheet( "Kingfossil.png", mouth);
local mouthData = {
	{name = "mouthfor", start=1,count = 4, time=1000, loopCount=1},
	{name = "mouthback", frames = { 4,3,2,1 }, time=1000, loopCount=1},
}
local animmouth = display.newSprite (mouthsheet, mouthData);

animmouth.x = display.contentCenterX-138;
animmouth.y = display.contentCenterY+15;
animmouth.xScale = 1.5;
animmouth.yScale = 1.5;
animmouth:setSequence("mouthfor");
--animmouth:play();


--Top fin
local topfin =
{
	frames = {

		{x = 16, y = 257, width = 60, height = 35},
			    }
}
local topfinsheet = graphics.newImageSheet( "Kingfossil.png", topfin);
local topfinData = {
	{name = "topfinfor", start=1,count = 2, time=1000, loopCount=1},
	}
local animtopfin = display.newSprite (topfinsheet, topfinData);

animtopfin.x = display.contentCenterX;
animtopfin.y = display.contentCenterY-66;
animtopfin.xScale = 1.5;
animtopfin.yScale = 1.5;
animtopfin:setSequence("topfinfor");
--animtopfin:play();

--Pelvic fin
local Pelvicfin =
{
	frames = {

		{x = 15, y = 219, width = 49, height = 31},
		{x = 69, y = 219, width = 49, height = 31},
		{x = 124, y = 219, width = 49, height = 31},

			    }
}
local Pelvicfinsheet = graphics.newImageSheet( "Kingfossil.png", Pelvicfin);
local PelvicfinData = {
	{name = "Pelvicfinfor", start=1,count = 3, time=1000, loopCount=1},
	{name = "Pelvicfinback", frames={3,2,1}, time=1000, loopCount=1},
}
local animPelvicfin = display.newSprite (Pelvicfinsheet, PelvicfinData);

animPelvicfin.x = display.contentCenterX-64;
animPelvicfin.y = display.contentCenterY+37;
animPelvicfin.xScale = 1.6;
animPelvicfin.yScale = 1.5;
animPelvicfin:setSequence("Pelvicfinfor");
--animPelvicfin:play();



--Anal fin
local analfin =
{
	frames = {

		{x = 180, y = 219, width = 64, height = 31},
		{x = 251, y = 219, width = 64, height = 31},

			    }
}
local analfinsheet = graphics.newImageSheet( "Kingfossil.png", analfin);
local analfinData = {
	{name = "analfinfor", start=1,count = 2, time=1000, loopCount=1},
	{name = "analfinback", frames={2,1}, time=1000, loopCount=1},
}
local animanalfin = display.newSprite (analfinsheet, analfinData);

animanalfin.x = display.contentCenterX+45;
animanalfin.y = display.contentCenterY+40;
animanalfin.xScale = 1.5;
animanalfin.yScale = 1.5;
animanalfin:setSequence("analfinfor");
--animanalfin:play();



--Soft Ray
local softray =
{
	frames = {

		{x = 142, y = 257, width = 30, height = 30},
		{x = 174, y = 257, width = 30, height = 30},
		{x = 209, y = 257, width = 30, height = 30},
			    }
}
local softraysheet = graphics.newImageSheet( "Kingfossil.png", softray);
local softrayData = {
	{name = "softrayfor", start=1,count = 3, time=1000, loopCount=1},
	{name = "softrayback", frames={3,2,1}, time=1000, loopCount=1},
}
local animsoftray = display.newSprite (softraysheet,softrayData);

animsoftray.x = display.contentCenterX+39;
animsoftray.y = display.contentCenterY-50;
animsoftray.xScale = 1.5;
animsoftray.yScale = 1.5;
animsoftray:setSequence("softrayfor");
--animsoftray:play();






local radius = 10.0
local X = display.contentWidth/2
local Y = display.contentHeight/2
local i = 0;



local function move ( event )
	if event.phase== "began" then
		event.target.markX= event.target.x
		event.target.markY= event.target.y
	elseif event.phase== "moved" then
		local x = (event.x-event.xStart) + event.target.markX
		local y = (event.y-event.yStart) + event.target.markY
		event.target.x= x;
		event.target.y= y;
	end
end



local fishGroup = display.newGroup();
fishGroup:insert(animmouth);
fishGroup:insert(animTail);
fishGroup:insert(animPelvicfin);
fishGroup:insert(animtopfin);
fishGroup:insert(animsoftray);
fishGroup:insert(animanalfin);
fishGroup:insert(anim);

fishGroup:addEventListener( "touch", move )


local function mouthListener ( event )
	if (mouthOpen==false) then                  --boolean function for mouth
		animmouth:setSequence("mouthfor")
		animmouth:play()
		local openSound = audio.loadSound("")
		audio.play(openSound);
		mouthOpen = true
	else
		animmouth:setSequence("mouthback")
		animmouth:play()
		local closeSound = audio.loadSound(" ")
		audio.play(closeSound);
		mouthOpen = false
	end
end

animmouth:addEventListener("tap", mouthListener)


local function tailListener ( event )
	if (tailOpen==false) then                   --boolean function for tail fin
		animTail:setSequence("tailfinfor")
		animTail:play()
		local openSound = audio.loadSound("")
		audio.play(openSound);
		tailOpen = true
	else
		animTail:setSequence("tailfinback")
		animTail:play()
		local closeSound = audio.loadSound(" ")
		audio.play(closeSound);
		tailOpen = false
	end
end

animTail:addEventListener("tap", tailListener)



local function pelvicfinListener ( event )
	if (pelvicfinOpen==false) then                       --boolean function for pelvic tail fin
		animPelvicfin:setSequence("Pelvicfinfor")
		animPelvicfin:play()
		local openSound = audio.loadSound("")
		audio.play(openSound);
		pelvicfinOpen = true
	else
		animPelvicfin:setSequence("Pelvicfinback")
		animPelvicfin:play()
		local closeSound = audio.loadSound(" ")
		audio.play(closeSound);
		pelvicfinOpen = false
	end
end

animPelvicfin:addEventListener("tap", pelvicfinListener)


local function analfinListener ( event )
	if (analfinOpen==false) then                       --boolean function for anal fin
		animanalfin:setSequence("analfinfor")
		animanalfin:play()
		local openSound = audio.loadSound("")
		audio.play(openSound);
		analfinOpen = true
	else
		animanalfin:setSequence("analfinback")
		animanalfin:play()
		local closeSound = audio.loadSound(" ")
		audio.play(closeSound);
		analfinOpen = false
	end
end

animanalfin:addEventListener("tap", analfinListener)


local function softrayListener ( event )
	if (softrayOpen==false) then                       --boolean function for anal fin
		animsoftray:setSequence("softrayfor")
		animsoftray:play()
		local openSound = audio.loadSound("")
		audio.play(openSound);
		softrayOpen = true
	else
		animsoftray:setSequence("softrayback")
		animsoftray:play()
		local closeSound = audio.loadSound(" ")
		audio.play(closeSound);
		softrayOpen = false
	end
end

animsoftray:addEventListener("tap", softrayListener)
