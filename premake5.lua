project "ImGuizmo"
   kind "StaticLib"
	language "C++"
	systemversion "latest"
	staticruntime "On"

	targetdir (vartargetdir .. "/%{prj.name}")
	objdir (varobjdir .. "/%{prj.name}")

	files {
		"ImCurveEdit.cpp",
      "ImCurveEdit.h",
      "ImGradient.cpp",
      "ImGradient.h",
      "ImGuizmo.cpp",
      "ImGuizmo.h",
      "ImSequencer.cpp",
      "ImSequencer.h",
      "ImZoomSlider.h"
	}

   includedirs {
      "../imgui"
   }

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"
