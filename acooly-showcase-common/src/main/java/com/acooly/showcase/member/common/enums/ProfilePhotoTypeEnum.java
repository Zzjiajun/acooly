/*
 * acooly.cn Inc.
 * Copyright (c) 2021 All Rights Reserved.
 * create by acooly
 * date:2021-10-26
 *
 */
package com.acooly.showcase.member.common.enums;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.acooly.core.utils.enums.Messageable;

/**
 * 会员配置信息 ProfilePhotoTypeEnum 枚举定义
 * 
 * @author acooly
 * @date 2021-10-26 22:04:39
 */
public enum ProfilePhotoTypeEnum implements Messageable {

	builtIn("builtIn", "内置"),
	upload("upload", "上传"),
	outside("outside", "外部"),
	;

	private final String code;
	private final String message;

	private ProfilePhotoTypeEnum(String code, String message) {
		this.code = code;
		this.message = message;
	}


	public String getCode() {
		return code;
	}

	public String getMessage() {
		return message;
	}

	@Override
	public String code() {
		return code;
	}

	@Override
	public String message() {
		return message;
	}

	public static Map<String, String> mapping() {
		Map<String, String> map = new LinkedHashMap<String, String>();
		for (ProfilePhotoTypeEnum type : values()) {
			map.put(type.getCode(), type.getMessage());
		}
		return map;
	}

	/**
	 * 通过枚举值码查找枚举值。
	 * 
	 * @param code
	 *            查找枚举值的枚举值码。
	 * @return 枚举值码对应的枚举值。
	 * @throws IllegalArgumentException
	 *             如果 code 没有对应的 Status 。
	 */
	public static ProfilePhotoTypeEnum find(String code) {
		for (ProfilePhotoTypeEnum status : values()) {
			if (status.getCode().equals(code)) {
				return status;
			}
		}
		return null;
	}

	/**
	 * 获取全部枚举值。
	 * 
	 * @return 全部枚举值。
	 */
	public static List<ProfilePhotoTypeEnum> getAll() {
		List<ProfilePhotoTypeEnum> list = new ArrayList<ProfilePhotoTypeEnum>();
		for (ProfilePhotoTypeEnum status : values()) {
			list.add(status);
		}
		return list;
	}

	/**
	 * 获取全部枚举值码。
	 * 
	 * @return 全部枚举值码。
	 */
	public static List<String> getAllCode() {
		List<String> list = new ArrayList<String>();
		for (ProfilePhotoTypeEnum status : values()) {
			list.add(status.code());
		}
		return list;
	}

}
