project "Url"
	kind "StaticLib"
	language "C++"
    staticruntime "on"
    cppdialect "C++20"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/psl.cpp",
		"src/punycode.cpp",
		"src/url.cpp",
		"src/utf8.cpp",
        "include/psl.h",
		"include/punycode.h",
		"include/url.h",
		"include/utf8.h"
	}

    includedirs
	{
		"src",
        "include"
    }

	filter "system:windows"
		systemversion "latest"

	filter "system:linux"
		pic "On"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"
