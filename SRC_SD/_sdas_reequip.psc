scriptname _sdas_reequip extends objectreference
quest property _sdqp_assoc_quest  auto  
int property _sdip_assoc_stage = 0 auto  
event onunequipped(actor akactor)
endevent
event oncontainerchanged(objectreference aknewcontainer, objectreference akoldcontainer)
endevent
;This file was cleaned with PapyrusSourceHeadliner 1