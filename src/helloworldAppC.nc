configuration helloworldAppC{//helloworldappc
//Do nothing
}
implementation{
	components MainC;
	components LedsC;
	components new TimerMilliC() as Timer0;
	components helloworldC as App;
	
	//Wiring
	App.Boot -> MainC;
	App.Leds -> LedsC;
	App.Timer0 -> Timer0;
}
