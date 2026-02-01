return {
	capabilities = {
		workspace = {
			configuration = false
		}
	},
	cmd = { "metals" },
	filetypes={ "scala" },
	init_options= {
		compilerOptions = {
			snippetAutoIndent = false
		},
		isHttpEnabled = true,
		statusBarProvider = "show-message"
	},
	root_markers={ "build.sbt", "build.sc", "build.gradle", "pom.xml" },
}

