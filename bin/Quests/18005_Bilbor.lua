
local UserClass;
local QuestNum;
local Ret = 0;
local NPC=18005;
local savenum = -1;


if EVENT == 100 then
    SelectMsg(UID, 3, -1, 101, NPC, 10, 101);
end

--4257, 800

if EVENT == 101 then
    SelectMsg(UID, 3, -1, 101, NPC, 4257, 800);
end

if EVENT == 800 then
    SelectMsg(UID, 2, savenum, 4805, NPC, 4259, 801, 4063, 101);
end

if EVENT == 801 then
   SelectMsg(UID, 2, savenum, 4811, NPC, 10);
end

--if EVENT == 801 then
--   CheckLogTimeAccount(UID, 802, 803)
--end

--if EVENT == 802 then
--    SelectMsg(UID, 2, savenum, 4806, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
--end

--if EVENT == 803 then
--    Slot = CheckGiveSlot(UID) 
--        if Slot > 2 then
--        GiveLogTimeItem(UID)
--        SelectMsg(UID, 2, savenum, 4808, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
--        else
--        SelectMsg(UID, 2, savenum, 4807, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
--        end
--end


   local ItemA = 0;
   local RUN_EXCHANGE ;

if EVENT == 400 then
    SelectMsg(UID, 2, savenum, 4809, NPC, 4260, 401, 4261, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

   local Roll = 0;
   local found;


if EVENT == 401 then
	ItemA = HowmuchItem(UID, 379132000);  -- ¼±¹° »óÀÚ
	if  ItemA < 1 then 
	SelectMsg(UID, 2, savenum, 4810, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
	else
    Check = CheckExchange(UID, 1060)
        if  Check ==1 then   
        Roll = RollDice(UID, 20) 
        found = Roll + 1059
        RunExchange(UID, found)		     
        SelectMsg(UID, 2, savenum, 4808, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
        else
        Ret = 1; 
        end  
	end
end


if EVENT == 500 then
    SelectMsg(UID, 10, savenum, 4808, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


