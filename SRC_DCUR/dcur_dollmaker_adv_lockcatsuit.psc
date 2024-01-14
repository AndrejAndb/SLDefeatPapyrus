;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname dcur_dollmaker_adv_lockcatsuit Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
	libs.EquipDevice(libs.PlayerRef, dcur_dollmaker_catsuit_pun_Inventory, dcur_dollmaker_catsuit_pun_Rendered, libs.zad_DeviousSuit, skipmutex = true)
	libs.PlayerRef.Additem(dcur_dq_damnbox, 3)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

zadlibs Property libs  Auto  
Armor Property dcur_dollmaker_catsuit_pun_Inventory Auto
Armor Property dcur_dollmaker_catsuit_pun_Rendered Auto
Armor Property dcur_dq_damnbox Auto