$fn = 50;
ext_diam = 26;
int_diam = 23;
sec_len = 1;

sec_thns = ext_diam - int_diam;
cen_diam = (ext_diam + int_diam) / 2;

module raw_section()
{
    difference()
    {
        difference()
        {
            cylinder(r=(ext_diam)/2, h=sec_len);
            translate([0,0,-1]) cylinder(r=(int_diam)/2, h=sec_len+2);
        }
        translate([0,-ext_diam/2,-1]) cube(size=ext_diam+1);
    }
}

module round_section()
{
    union ()
    {
        raw_section();
        translate([0, cen_diam / 2,0]) cylinder(r=sec_thns/4, h=sec_len);
        translate([0, -cen_diam / 2, 0]) cylinder(r=sec_thns/4, h=sec_len);
    }
}

mirror([0,0,1])
{
    rotate([0,90,0])
    {
        round_section();
    }
}
