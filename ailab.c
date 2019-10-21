#include<stdio.h>

void main(){

int water_gallon=5,need_water=0,moisture=0;

while(1){
printf("Enter moisture percentage: ");
scanf("%d",&moisture);\

if(moisture<25){
    need_water=3;
    if(need_water<=water_gallon){
        water_gallon=water_gallon-need_water;
        printf("%d gallon water supplied.\n Current Water Gallon: %d",need_water,water_gallon);
    }else{
        printf("Gallon need to Refill.\n");
        water_gallon=5;
        printf("Refilled.\n");
        printf("Current Water Gallon: %d",water_gallon);
    }
}else if(moisture>24 && moisture <50){
 need_water=2;
    if(need_water<=water_gallon){
        water_gallon=water_gallon-need_water;
        printf("%d gallon water supplied.\n Current Water Gallon: %d",need_water,water_gallon);
    }else{
        printf("Gallon need to Refill.\n");
        water_gallon=5;
        printf("Refilled.\n");
        printf("Current Water Gallon: %d",water_gallon);
    }
}else if(moisture>49 && moisture < 75){
 need_water=1;
    if(need_water<=water_gallon){
        water_gallon=water_gallon-need_water;
        printf("%d gallon water supplied.\n Current Water Gallon: %d",need_water,water_gallon);
    }else{
        printf("Gallon need to Refill.\n");
        water_gallon=5;
        printf("Refilled.\n");
        printf("Current Water Gallon: %d",water_gallon);
    }
}else if(moisture > 74){
  printf("No need for water.");
}
printf("\n");
}


}
