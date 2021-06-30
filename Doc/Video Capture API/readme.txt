What you need to create a custom video writer:

ed_avcapture.h - Video capture API definition.
ed_avcapture_example.cpp - Example plugin.

enable_example_dll.diff - patch to enable example plugin as a video writer.


Manual procedure to add custom plugins:


In the file MissionEditor/modules/record_avi.lua there's a Lua-table video_codecs.formats (line 47). You need to add an entry, with the key of your format name and value - a table with your writer settings:

["my format name"] = { encoder="DLL:your_dll_name;your_function_name", format="arbitrary string passed to your code" },

(Do not forget to add a "," to the end of line)


The "format" field serves a purpose to pass an information for your writer, so you may use the same writer for several output formats. Note, that string "$VB" placed in a format string, is expanded into video bit rate calculated (in line 396) as follows:

avi.width * avi.height * avi.framerate * VideoBitsPerPixel

where VideoBitsPerPixel = 0.2 (defined in line 45).


Also note, that 32-bit and 64-bit versions use completely different sets of binaries. It is wise to place your custom codec in the appropriate bin/ subdirectory.


Happy hacking!

Sincerely,
dsb at eagle dot ru
