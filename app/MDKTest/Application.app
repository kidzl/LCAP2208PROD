{
	"_Name": "MDKTest",
	"Version": "/MDKTest/Globals/AppDefinition_Version.global",
	"MainPage": "/MDKTest/Pages/Main.page",
	"OnLaunch": [
		"/MDKTest/Actions/Service/InitializeOnline.action"
	],
	"OnWillUpdate": "/MDKTest/Rules/OnWillUpdate.js",
	"OnDidUpdate": "/MDKTest/Actions/Service/InitializeOnline.action",
	"Styles": "/MDKTest/Styles/Styles.less",
	"Localization": "/MDKTest/i18n/i18n.properties",
	"_SchemaVersion": "6.2"
}