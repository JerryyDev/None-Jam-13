if(timer_destroy > 0) timer_destroy--;
    
if(timer_destroy <= 0){
    timer_destroy = 10;
    instance_destroy();
}