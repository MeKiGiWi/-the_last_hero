function scr_draw_text(_text, _x, _y, _smooth=false, _sm_speed=0.05, _depth=1)
{
    instance_create_depth(_x, _y, _depth, obj_text_drawer,
    {
        full_text: _text,
        smooth: _smooth,
        sm_speed: _sm_speed
    });
};