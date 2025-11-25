//Do not edit this function.
//This is the function for a unit step
double u(double t)
{
  if (t >= 0)
    return 1.0;
  else
    return 0.0;
}


//Edit this function as needed but keep the function prototype
double x(double t)
{
 if (t <= 0){
    return 0;
 }
 else if (0 < t && t <= 1){
    return (3 * t);
 }
 else if (1 < t && t <= 2){
    return ((-3 * t) + 6);
 }
 else if (2 < t && t <= 3){
    return 0;
 }
 else if (3 < t && t <= 4){
    return -1;
 }
 else{
    return 0;
 }

}


//Edit this function as needed but keep the function prototype
double y(double t)
{
 if (t < -0.5){
    return 0;
 }
 else if (-0.5 < t && t < 0){
    return ((6 * t) + 3);
 }
 else if (0 < t && t < 0.5){
    return ((-6 * t) + 3);
 }
 else if (0.5 < t && t < 1){
    return 0;
 }
 else if (1 < t && t < 1.5){
    return -1;
 }
 else{
    return 0;
 }
}

//Edit this function as needed but keep the function prototype
double z(double t)
{
 double seg1 = 3 * t * u(t);
 double seg2 = ((-6*t)+6)*(u(t-1));
 double seg3 = ((3*t)-6)*(u(t-2));
 double seg4 = -u(t-3);
 double seg5  = u(t-4);

 return seg1 + seg2 + seg3 + seg4 + seg5;
}

//Edit this function as needed but keep the function prototype
double r(double t)
{
  if (t < 0){
    return 0;
 }
 else if (0 < t && t < 1){
    return (3 * t * t) / 2;
 }
 else if (1 < t && t < 2){
    return ((-3 * t * t) + (6 * t) - 3);
 }
 else if (2 < t && t < 3){
    return 3;
 }
 else if (3 < t && t < 4){
    return 6 - t;
 }
 else{
    return 2;
 }
}








