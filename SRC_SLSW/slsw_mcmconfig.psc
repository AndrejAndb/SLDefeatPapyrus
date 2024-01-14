scriptname slsw_mcmconfig extends ski_configbase
slsw_effects property effectsscript auto
globalvariable property drugpool_pd auto
globalvariable property drugpool_md auto
globalvariable property drugpool_mkd auto
globalvariable property clientcount auto
globalvariable property slsw_comment auto
spell property pd1 auto
spell property pd2 auto
spell property pd3 auto
spell property pd4 auto
spell property pd5 auto
spell property md1 auto
spell property md2 auto
spell property md3 auto
spell property md4 auto
spell property md5 auto
spell property mkd1 auto
spell property mkd2 auto
spell property mkd3 auto
spell property mkd4 auto
spell property mkd5 auto
potion property skooma auto
potion property roseofazura auto
potion property boethiasdeception auto
potion property thiefsdelight auto
potion property thesecondbrain auto
potion property elendrsflask auto
potion property thecontortionist auto
potion property morgulstouch auto
potion property toughflesh auto
potion property ocatospallatine auto
potion property magesfriend auto
potion property thearchmage auto
potion property verminasprice auto
potion property leafskooma auto
potion property herbtea auto
potion property purifingsolution auto
potion property ddskooma auto
book property slsw_recipe_skooma auto
book property slsw_recipe_boethiasdeception auto
book property slsw_recipe_thiefsdelight auto
book property slsw_recipe_thesecondbrain auto
book property slsw_recipe_elendirsflask auto
book property slsw_recipe_thecontortionist auto
book property slsw_recipe_morgulstouch auto
book property slsw_recipe_toughflesh auto
book property slsw_recipe_ocatospallatine auto
book property slsw_recipe_magesfriend auto
book property slsw_recipe_thearchmage auto
book property slsw_recipe_verminasprice auto
book property slsw_recipe_leafskooma auto
book property slsw_recipe_purifyingsolution auto
book property slsw_recipe_ddskooma auto
string property speed = "fast" auto
float property reduce = 5.0 auto
string property reset = "reset" auto
string property brothel = "reset" auto
bool property blackout = true  auto
float property blackoutthreshold = 5.0 auto
string property starterkit = "starter kit" auto
float property forcefeedchance = 30.0 auto
bool property forcefeed = true  auto
string property vp_light = "normal" auto
string property mf_light = "normal" auto
string property tam_light = "normal" auto
float property effectinterval = 1.0 auto
bool property effects = true auto
bool property highrisk = true auto
float property hrchance = 1.0 auto
bool property scum = true auto
bool property comments = true auto
bool property visuals = true auto
int function getversion()
endfunction
event onversionupdate(int a_version)
endevent
event onconfiginit()
endevent
event onpagereset(string page)
endevent
event onoptionslideropen(int option)
endevent
event onoptionslideraccept(int option, float value)
endevent
event onoptionselect(int option)
endevent
event onoptionhighlight(int option)
endevent
event onoptiondefault(int option)
endevent
;This file was cleaned with PapyrusSourceHeadliner 1