;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 6
Scriptname dcur_prison_fragment Extends Quest Hidden

;BEGIN ALIAS PROPERTY ShipmentChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ShipmentChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FrozenFollower1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FrozenFollower1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ForemanMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ForemanMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DrinkMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DrinkMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DisplayGirl
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DisplayGirl Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY WardenMarkerStart
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WardenMarkerStart Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY EatingGirl
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_EatingGirl Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY WardenMarkerNight
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WardenMarkerNight Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KitchenWaterBarrel
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KitchenWaterBarrel Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY UnoccupiedCellDoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_UnoccupiedCellDoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Warden
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Warden Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Foreman
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Foreman Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KitchenCupboard
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KitchenCupboard Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Supervisor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Supervisor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY OreDropOffChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_OreDropOffChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KitchenWardrobe
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KitchenWardrobe Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KitchenSack
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KitchenSack Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PlayerCellDoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PlayerCellDoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY guardbedroomdoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_guardbedroomdoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GuardRapistMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GuardRapistMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FrozenFollower2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FrozenFollower2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY StockAreaBarrel2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_StockAreaBarrel2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY minedoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_minedoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY EntranceDoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_EntranceDoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Mine_Shiftleader
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Mine_Shiftleader Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FrozenFollower4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FrozenFollower4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GuardRoomDoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GuardRoomDoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ArrestPositionMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ArrestPositionMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY trapDoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_trapDoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY StorageCell
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_StorageCell Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GuardRapist2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GuardRapist2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY EntranceMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_EntranceMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FoodMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FoodMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SupervisorMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SupervisorMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GuardRapist
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GuardRapist Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY EatingGirl2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_EatingGirl2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SewerMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SewerMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PlayerCellMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PlayerCellMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ToolBarrel
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ToolBarrel Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GuardRapistMarker2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GuardRapistMarker2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY WardenMarkerDay
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WardenMarkerDay Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY dcur_prison_pillory
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_dcur_prison_pillory Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY OrePickupChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_OrePickupChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MineToolbox
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MineToolbox Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GuardRoomCabinet
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GuardRoomCabinet Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PlayerBelongingsChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PlayerBelongingsChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ReceptionGuard
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ReceptionGuard Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FrozenFollower5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FrozenFollower5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY exitDoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_exitDoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FrozenFollower3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FrozenFollower3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY StockAreaBarrel1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_StockAreaBarrel1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RewardChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RewardChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Quartermaster
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Quartermaster Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KitchenCookingPot
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KitchenCookingPot Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
pqs.StopQuest()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
pqs.StartQuest()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

dcur_prisonQuestScript Property pqs Auto
