// Modelisation of zebrafish larval eye orientation and estimated field of view for presentation
// Designed by MJY Zimmermann, BadenLab, University of Sussex



  // // // // // // // // // // // // // // // // // // // // // // // // // // // // 
 // // // // // // // // // //  Display switches // // // // // // // // // // // //   
// // // // // // // // // // // // // // // // // // // // // // // // // // // // 


right_eye = 1; // Display right eye
left_eye = 1; // Display left eye


Full_FoV = 1; // Display the eyes' full field of view
Custom_FoV = 1; // Display customed field of view, defined by the variable "angle_of_view" 
 

  // // // // // // // // // // // // // // // // // // // // // // // // // // // // 
 // // // // // // // // //  Variable for Users  // // // // // // // // // // // //   
// // // // // // // // // // // // // // // // // // // // // // // // // // // //  


Smoothness = 30; // high value required to export smooth jpg pictures

angle_of_view = 163; // As defined by Easter & Nicolas 1996
customed_angle = 100; // Customed field of view

Eye_Orientation = 18.5; // Orientation along the body axis: 18.5 at rest, 35.5 while hunting (binocular). Described by Bianco, Engert $ Kampff 2011
Eye_Tilt = 0; // Vertical Orientation: >0 Eye looking upwards // <0 Eye looking downwards

h_view_Full = 90; // View cone heigh
h_view_customed = 100; // View cone heigh


  // // // // // // // // // // // // // // // // // // // // // // // // // // // // 
 // // // // // // // // // // Change at your own risk // // // // // // // // // //   
// // // // // // // // // // // // // // // // // // // // // // // // // // // //  

rotation = [0,-Eye_Tilt,Eye_Orientation]; 
r_eye = 5;
r_fish = r_eye;
r_head = 3*r_eye;
r_yolk = 0.6* r_head;
fish_ratio = 9;
fin = 5;
fin_ratio = 2.5;

// // // // // // // // // // // // // // // // // // // // // // // // // // // //

module fish_eye(){
difference(){
    sphere(r=r_eye,$fn=Smoothness); // eye
    translate([r_eye*2/3,-r_eye,-r_eye])cube([2*r_eye,2*r_eye,2*r_eye]);// eyeball
}
translate([r_eye/3,0,0])sphere(r=r_eye/2,$fn=Smoothness);// lens
}

module fin(){
difference(){    
    scale([1,fin_ratio,1])sphere(r=fin, $fn=Smoothness);
    translate([1,0,0])scale([1,fin_ratio,1])sphere(r=fin, $fn=Smoothness);
    translate([-fin,-fin_ratio*fin,-fin])cube([2*fin,fin_ratio*fin,2*fin]);
    translate([-fin,-1,fin/2])rotate([-7.5,0,0])cube([2*fin,fin_ratio*fin+0.25,fin/2+5]);
    translate([-fin,-1,-fin-5])rotate([7.5,0,0])cube([2*fin,fin_ratio*fin+1,fin/2+5]);
}}

module fish_body(){
    translate([0,-fish_ratio*r_fish-r_head/2,r_eye])scale([fish_ratio/10,fish_ratio,1])sphere(r=r_fish,$fn=Smoothness);// Long tail
    translate([0,-r_head,r_eye*2/3])rotate([-5,0,0])scale([1.1,3,1])sphere(r=r_fish,$fn=Smoothness);// head-tail  
    
    translate([0,-r_head/3,0])scale([1,1.75,1])sphere(r=r_head/2, $fn=Smoothness);// Head
    translate([0,-r_head/2-r_head-r_yolk/2,-r_yolk/4])rotate([-10,0,0])scale([0.8,1.4,0.75])sphere(r=r_yolk, $fn=Smoothness);// Yolk
    translate([r_head/2-5.25,-r_head-4,0])rotate([0,0,-120])fin();
    mirror([1,0,0])translate([r_head/2-5.25,-r_head-4,0])rotate([0,0,-120])fin();
}

 module view_3D (){
 scale([1,1,1])rotate([0,90,0])cylinder(r1=0, r2=customed_angle/90*h_view_customed, h=h_view_customed);
 }
  module view_3D_165 (){
 scale([1,1,1])rotate([0,90,0])cylinder(r1=0, r2=angle_of_view/90*h_view_Full, h=h_view_Full);
 }
 
// // // // // // // // // // // // // // // // // // // // // // // // // // // // 
        
fish_body();

if (right_eye==1){translate([r_head/3,0,0])rotate(rotation)fish_eye();}
if (left_eye==1){mirror([1,0,0])translate([r_head/3,0,0])rotate(rotation)fish_eye();}

if (Custom_FoV==1){
#if (right_eye==1){translate([r_head/3,0,0])rotate(rotation)translate([r_eye*2/3,0,0])view_3D();}
#if (left_eye==1){mirror([1,0,0])translate([r_head/3,0,0])rotate(rotation)translate([r_eye*2/3,0,0])view_3D();}
}
%if (Full_FoV==1){
if (right_eye==1){translate([r_head/3,0,0])rotate(rotation)translate([r_eye*2/3,0,0])view_3D_165();}
if (left_eye==1){mirror([1,0,0])translate([r_head/3,0,0])rotate(rotation)translate([r_eye*2/3,0,0])view_3D_165();}
}