package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.kd0;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ae0 {
    public final kd0 a;
    public b b;
    public final kd0.c c;

    public class a implements kd0.c {
        public a() {
        }

        @Override // androidx.appcompat.view.menu.kd0.c
        public void C(id0 id0Var, kd0.d dVar) {
            if (ae0.this.b == null) {
                return;
            }
            String str = id0Var.a;
            ea0.f("MouseCursorChannel", "Received '" + str + "' message.");
            try {
                if (str.hashCode() == -1307105544 && str.equals("activateSystemCursor")) {
                    try {
                        ae0.this.b.a((String) ((HashMap) id0Var.b).get("kind"));
                        dVar.c(Boolean.TRUE);
                    } catch (Exception e) {
                        dVar.b("error", "Error when setting cursors: " + e.getMessage(), null);
                    }
                }
            } catch (Exception e2) {
                dVar.b("error", "Unhandled error: " + e2.getMessage(), null);
            }
        }
    }

    public interface b {
        void a(String str);
    }

    public ae0(si siVar) {
        a aVar = new a();
        this.c = aVar;
        kd0 kd0Var = new kd0(siVar, "flutter/mousecursor", qw0.b);
        this.a = kd0Var;
        kd0Var.e(aVar);
    }

    public void b(b bVar) {
        this.b = bVar;
    }
}
