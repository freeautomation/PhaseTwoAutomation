package com.knowledgePodium.slingshot.model

import java.util.ArrayList;
import java.util.List;

public class Annotation {
	public String annotationName;
	public List<String> values;
	
	public Annotation () {
		values = new ArrayList<String>();
	}
	
	public String toString() {
		return annotationName + "("+values+")";
	}
}
