---
layout: default
title:  Hint
---

	public boolean[] getLEDs(BLEObservation o) {
		boolean[] leds = new boolean[6];
		int rssi = o.getRssi();
		System.out.println(rssi);
		if(rssi>-22) {
			// very close
			leds[5] = leds[4] = true;
		} else if (rssi>-45) {
			// up to 1 m
			leds[3] = leds[2] = true;
		} else if (rssi>-71) {
			// up to 2 m
			leds[0] = leds[1] = true;
		} 
		return leds;
	}