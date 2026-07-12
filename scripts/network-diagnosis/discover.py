import frida, sys, time
dm = frida.get_device_manager()
dev = dm.add_remote_device('127.0.0.1:47771')
JS = r'''
var names = ['libengine.so','libapp.so','libflutter.so'];
var out = {pid: Process.id, mods: {}};
names.forEach(function(n){ var m = Process.findModuleByName(n); out.mods[n] = m ? m.base.toString() : null; });
send(out);
'''
for tgt in sys.argv[1:]:
    try:
        pid = int(tgt); session = dev.attach(pid)
    except ValueError:
        session = dev.attach(tgt)
    got = {}
    s = session.create_script(JS)
    s.on('message', lambda m,d: got.update(m.get('payload',{}) or {}) if m.get('type')=='send' else print('LOG', m))
    s.load(); time.sleep(0.6)
    print("TARGET", tgt, "=>", got)
    session.detach()
