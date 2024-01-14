scriptname _sdqs_ennslavement_tasks extends quest conditional
bool property _sdbp_task_complete = false auto conditional
string[] property _sdstrp_stat  auto  
int[] property _sduip_quantity  auto  
bool[] property _sdbp_autostop  auto  
class[] property _sdcp_master_class  auto  
faction[] property _sdfp_master_faction  auto  
event onstoryscript(keyword akkeyword, location aklocation, objectreference akref1, objectreference akref2, int aivalue1, int aivalue2)
endevent
event ontrackedstatsevent(string asstatfilter, int aistatvalue)
endevent
event onupdategametime()
endevent
;This file was cleaned with PapyrusSourceHeadliner 1