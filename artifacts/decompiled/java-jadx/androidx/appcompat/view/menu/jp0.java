package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.kd0;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class jp0 {
    public final boolean a;
    public byte[] b;
    public kd0 c;
    public kd0.d d;
    public boolean e;
    public boolean f;
    public final kd0.c g;

    public class a implements kd0.d {
        public final /* synthetic */ byte[] a;

        public a(byte[] bArr) {
            this.a = bArr;
        }

        @Override // androidx.appcompat.view.menu.kd0.d
        public void a() {
        }

        @Override // androidx.appcompat.view.menu.kd0.d
        public void b(String str, String str2, Object obj) {
            ea0.b("RestorationChannel", "Error " + str + " while sending restoration data to framework: " + str2);
        }

        @Override // androidx.appcompat.view.menu.kd0.d
        public void c(Object obj) {
            jp0.this.b = this.a;
        }
    }

    public class b implements kd0.c {
        public b() {
        }

        @Override // androidx.appcompat.view.menu.kd0.c
        public void C(id0 id0Var, kd0.d dVar) {
            String str = id0Var.a;
            Object obj = id0Var.b;
            str.hashCode();
            if (!str.equals("get")) {
                if (!str.equals("put")) {
                    dVar.a();
                    return;
                }
                jp0.this.b = (byte[]) obj;
                dVar.c(null);
                return;
            }
            jp0.this.f = true;
            if (!jp0.this.e) {
                jp0 jp0Var = jp0.this;
                if (jp0Var.a) {
                    jp0Var.d = dVar;
                    return;
                }
            }
            jp0 jp0Var2 = jp0.this;
            dVar.c(jp0Var2.i(jp0Var2.b));
        }
    }

    public jp0(si siVar, boolean z) {
        this(new kd0(siVar, "flutter/restoration", qw0.b), z);
    }

    public void g() {
        this.b = null;
    }

    public byte[] h() {
        return this.b;
    }

    public final Map i(byte[] bArr) {
        HashMap hashMap = new HashMap();
        hashMap.put("enabled", Boolean.TRUE);
        hashMap.put("data", bArr);
        return hashMap;
    }

    public void j(byte[] bArr) {
        this.e = true;
        kd0.d dVar = this.d;
        if (dVar != null) {
            dVar.c(i(bArr));
            this.d = null;
            this.b = bArr;
        } else if (this.f) {
            this.c.d("push", i(bArr), new a(bArr));
        } else {
            this.b = bArr;
        }
    }

    public jp0(kd0 kd0Var, boolean z) {
        this.e = false;
        this.f = false;
        b bVar = new b();
        this.g = bVar;
        this.c = kd0Var;
        this.a = z;
        kd0Var.e(bVar);
    }
}
