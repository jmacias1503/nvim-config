local dap = require('dap')
dap.configurations.cpp = {
   type = 'cpptools';
   request = 'launch';
   name = "Launch file";
   program = "${file}";
}
