package com.agnosticcms.web.dto;

/**
 * Type describing built-in CMS tables
 */
public enum CmsTable {

	USERS(null, "cms_users"),
	SESSIONS(null, "cms_sessions"),
	MODULES(1l, "cms_modules"),
	MODULE_COLUMNS(2l, "cms_module_columns"),
	MODULE_HIERARCHY(3l, "cms_module_hierarchy"),
	EXTERNAL_MODULES(4l, "cms_external_modules");
	
	/**
	 * Id of the module of the table
	 */
	private Long moduleId;
	
	/**
	 * The name of the table
	 */
	private String tableName;
	

	private CmsTable(Long moduleId, String tableName) {
		this.moduleId = moduleId;
		this.tableName = tableName;
	}


	public Long getModuleId() {
		return moduleId;
	}

	public String getTableName() {
		return tableName;
	}
	
}
