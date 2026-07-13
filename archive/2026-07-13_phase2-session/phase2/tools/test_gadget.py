import frida, time

# Connect via Gadget
d = frida.get_device_manager().add_remote_device("localhost:27052")
procs = d.enumerate_processes()
pid = procs[0].pid
print("Gadget PID:", pid)

session = d.attach(pid)
print("Attached via Gadget")

JS = """
var eng = Process.findModuleByName("libengine.so");
var libc = Process.getModuleByName("libc.so");
if (eng && libc) {
    send({t:"ok", engBase:eng.base.toString(), engSize:eng.size, pid:Process.id});
} else {
    send({t:"no_eng", mods: Process.enumerateModules().slice(0,10).map(function(m){return m.name;})});
}
"""
sc = session.create_script(JS)
msgs = []
def on_msg(m, data):
    if m["type"] == "send":
        msgs.append(m["payload"])
    elif m["type"] == "error":
        print("ERR:", m.get("description","")[:100])
sc.on("message", on_msg)
sc.load()
time.sleep(2)
print("Messages:", msgs)
session.detach()
