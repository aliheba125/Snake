'use strict';
function report(){
  var names = ['libengine.so','libapp.so','libflutter.so'];
  names.forEach(function(n){
    var m = Process.findModuleByName(n);
    console.log(n + ' => ' + (m ? m.base : 'NOT LOADED'));
  });
  console.log('PID=' + Process.id);
}
report();
