project "ImGui"
	kind "StaticLib"
    staticruntime "on"

	language "C++"
    cppdialect "C++17"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-obj/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/imgui/imconfig.h",
		"include/imgui/imgui.h",
		"src/imgui.cpp",
		"src/imgui_draw.cpp",
		"include/imgui/imgui_internal.h",
		"src/imgui_tables.cpp",
		"src/imgui_widgets.cpp",
		"include/imgui/imstb_rectpack.h",
		"include/imgui/imstb_textedit.h",
		"include/imgui/imstb_truetype.h",
		"src/imgui_demo.cpp"
	}

    includedirs "include"

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
