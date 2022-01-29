-- This was the original stage for Toppated. May be used later...
function onCreate()

	makeAnimatedLuaSprite('trainPiece1', 'trainPiece', -2300, 775)addAnimationByPrefix('trainPiece1', 'dance', 'trainPiece idle', 34, true)
	objectPlayAnimation('trainPiece1', 'dance', false)
	setLuaSpriteScrollFactor('trainPiece1', 0.9, 0.9)
	scaleObject('trainPiece1', 0.9, 0.9);

		makeAnimatedLuaSprite('trainPiece2', 'trainPiece', 100, 775)addAnimationByPrefix('trainPiece2', 'dance', 'trainPiece idle', 34, true)
	objectPlayAnimation('trainPiece2', 'dance', false)
	setLuaSpriteScrollFactor('trainPiece2', 0.9, 0.9)
	scaleObject('trainPiece2', 0.9, 0.9);

			makeAnimatedLuaSprite('trainPiece3', 'trainPiece', -500, 500)addAnimationByPrefix('trainPiece3', 'dance', 'trainPiece idle', 34, true)
	objectPlayAnimation('trainPiece3', 'dance', false)
	setLuaSpriteScrollFactor('trainPiece3', 1, 1)
	scaleObject('trainPiece3', 0.85, 0.85);


makeLuaSprite('sky', 'crosslineback', -3000, -550);

setLuaSpriteScrollFactor('sky', 0.3, 0.3);

scaleObject('sky', 2, 2);

addLuaSprite('sky', false);
addLuaSprite('trainPiece3', false);
addLuaSprite('trainPiece1', false);
addLuaSprite('trainPiece2', false);

	end

function onStepHit()
	triggerEvent('Screen Shake','0.1, 0.0025','')
end
