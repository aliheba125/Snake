package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.kd0;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class z70 {
    public final kd0 a;
    public b b;
    public final kd0.c c;

    public class a implements kd0.c {
        public Map a = new HashMap();

        public a() {
        }

        @Override // androidx.appcompat.view.menu.kd0.c
        public void C(id0 id0Var, kd0.d dVar) {
            if (z70.this.b == null) {
                dVar.c(this.a);
                return;
            }
            String str = id0Var.a;
            str.hashCode();
            if (!str.equals("getKeyboardState")) {
                dVar.a();
                return;
            }
            try {
                this.a = z70.this.b.a();
            } catch (IllegalStateException e) {
                dVar.b("error", e.getMessage(), null);
            }
            dVar.c(this.a);
        }
    }

    public interface b {
        Map a();
    }

    public z70(i8 i8Var) {
        a aVar = new a();
        this.c = aVar;
        kd0 kd0Var = new kd0(i8Var, "flutter/keyboard", qw0.b);
        this.a = kd0Var;
        kd0Var.e(aVar);
    }

    public void b(b bVar) {
        this.b = bVar;
    }
}
