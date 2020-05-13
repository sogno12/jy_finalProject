package com.mj.jy.socketHandler.model.vo;

import java.util.Arrays;

public enum Type {
	ENTER, MESSAGE;
	
	public static Type findByName(String typeName) {
		return Arrays.stream(Type.values())
			.filter(type -> type.name().equalsIgnoreCase(typeName))
			.findFirst()
			.orElse(null);
	}
}
