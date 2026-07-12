package androidx.appcompat.view.menu;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class iz {
    public static final iz b = new iz();
    public final Map a = new HashMap();

    public static iz c() {
        return b;
    }

    public void a(j10 j10Var) {
        this.a.put(j10Var.getClass(), j10Var);
    }

    public void b(Class cls) {
        j10 j10Var = (j10) this.a.get(cls);
        if (j10Var == null || !j10Var.a()) {
            return;
        }
        j10Var.b();
    }

    public void d() {
        if (yu0.h().z() || yu0.h().B()) {
            a(new a10());
            a(new wg0());
            a(new w71());
            a(new r10());
            a(new tz());
            a(new c20());
            a(new l30());
            a(new my());
            a(new y30());
            a(new z30());
            a(new q00());
            a(new d30());
            a(new yz());
            a(new y10());
            a(new xz());
            a(new a00());
            a(new kg());
            a(new b40());
            a(new p30());
            a(new mp0());
            a(new u10());
            a(new z20());
            a(new o10());
            a(new m10());
            a(new lz());
            a(new n30());
            a(new z00());
            a(new oz());
            a(new t20());
            a(new s00());
            a(new h20());
            a(new t10());
            a(new o20());
            a(new s30());
            a(new g20());
            a(r3.g());
            a(new a9());
            if (y8.h()) {
                a(new pz(null));
                a(new w30());
            }
            if (y8.g()) {
                a(new e20());
            }
            if (y8.f()) {
                a(new w00());
                a(new r20());
                a(new vz());
            }
            if (y8.e()) {
                a(new j30());
            }
            if (d10.a != null) {
                a(new e10());
            }
            if (y8.d()) {
                a(new e00());
                a(new b30());
            }
            if (y8.c()) {
                a(new v00());
                a(new x10());
                a(new w20());
            }
            if (y8.b()) {
                a(new c10());
                a(new i10());
            }
            if (y8.a()) {
                a(new m10());
            }
            if (j20.a != null) {
                a(new k20());
            }
            if (l20.a != null) {
                a(new m20());
            }
            if (e30.a != null) {
                a(new f30());
            }
            if (g30.a != null) {
                a(new h30());
            }
            if (u30.a != null) {
                a(new t30());
            }
        }
        e();
        n8.b.d(null);
    }

    public void e() {
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            try {
                ((j10) it.next()).b();
            } catch (Exception unused) {
            }
        }
    }
}
