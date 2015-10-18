private ["_recipes","_nearObjects","_near","_out","_player","_recipe","_cP","_cN"];
params ["_recipes"];

_nearObjects = nearestObjects [position player,["WeaponHolder","LandVehicle","Air"],10];

_near = []; _out = [];
{
	_near append magazineCargo _x;
	_near append itemCargo _x;
	_near append weaponCargo _x;
} forEach _nearObjects;

_player = (magazines player) + (items player) + (weapons player);

{
	_recipe = if (typeName _x isEqualTo "STRING") then {[_x,1]} else {_x};
	_cP = {_x == (_recipe select 0)} count _player;
	_cN = {_x == (_recipe select 0)} count _near;
	_out pushBack [_cP, _cN, _recipe select 1];
} forEach _recipes;

_out