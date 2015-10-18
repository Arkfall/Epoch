EPOCH_buildMode = 0;
EPOCH_buildDirection = 0;
EPOCH_debugMode = false;
EPOCH_snapDirection = 0;
EPOCH_stabilityTarget = objNull;
EPOCH_equippedItem_PVS = [];
EPOCH_nearPower = false;
EPOCH_pendingP2ptradeTarget = objNull;
EPOCH_lastNPCtradeTarget = objNull;
EPOCH_clientAliveTimer = diag_tickTime;
EPOCH_lastJumptime = diag_tickTime;
EPOCH_lastAGTime = diag_tickTime;
EPOCH_lastMineRocks = diag_tickTime;
EPOCH_target = objNull;
EPOCH_Z_OFFSET = 0;
EPOCH_X_OFFSET = 0;
EPOCH_Y_OFFSET = 5;
EPOCH_snapVisArray = [];
EPOCH_prevTarget = objNull;
EPOCH_interactOption = 0;

EPOCH_playerStaminaMax = 100;
EPOCH_playerEnergyMax = 2500;

{
	missionNamespace setVariable [format ["EPOCH_player%1",_x],EPOCH_defaultVars select _forEachIndex];
}forEach EPOCH_customVars;

// suppress group chatter
0 fadeRadio 0;
enableSentences false;
enableRadio false;
player setVariable["BIS_noCoreConversations", true];