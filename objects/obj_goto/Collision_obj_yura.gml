var sounds_of_doors = ds_map_create()
ds_map_add(sounds_of_doors, "empty", undefined);
ds_map_add(sounds_of_doors, "wood", snd_door_wood);
ds_map_add(sounds_of_doors, "wood_with_light", snd_door_wood_light);
ds_map_add(sounds_of_doors, "iron", snd_door_iron);

var effects_of_transition = ds_map_create();
ds_map_add(effects_of_transition, "blackscreen", blackscreen_transition_effect);
ds_map_add(effects_of_transition, "fade", fade_transition_effect);

var transition_func = effects_of_transition[? self.transition_effect];
if (!is_undefined(transition_func)) 
{
	transition_func(self.auto_transition == "yes", sounds_of_doors[? self.type_of_door]);
}