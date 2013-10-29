module helloworldC{
	uses interface Boot;
	uses interface Leds;
	
	uses interface Timer<TMilli> as Timer0;
}
implementation{

	void turnonled(){
		call Leds.led0On();
		call Leds.led1On();
		call Leds.led2On();
	}
	event void Boot.booted(){
		call Timer0.startPeriodic(2000);
		turnonled();
	}

	event void Timer0.fired(){
		call Leds.led0Toggle();
		call Leds.led1Toggle();
		call Leds.led2Toggle();		
	}
}