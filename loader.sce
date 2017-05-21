// This file is released under the 3-clause BSD license. See COPYING-BSD.
// Generated by builder.sce : Please, do not edit this file
// ----------------------------------------------------------------------------
//
libilib_build_cpp_path = get_absolute_file_path('loader.sce');
//
// ulink previous function with same name
[bOK, ilib] = c_link('libilib_build_cpp');
if bOK then
  ulink(ilib);
end
//
list_functions = [ 'multiply';
];
addinter(libilib_build_cpp_path + filesep() + 'libilib_build_cpp' + getdynlibext(), 'libilib_build_cpp', list_functions);
// remove temp. variables on stack
clear libilib_build_cpp_path;
clear bOK;
clear ilib;
clear list_functions;
// ----------------------------------------------------------------------------
