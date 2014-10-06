---
layout: default
title:  Hint
---

	public BLEObservation filter(BLEObservation o) {
		if(o.getMinor()== 155 ) { // team id
			return o;
		} else {
			return null;
		}
	}
