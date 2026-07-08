package androidx.appcompat.view.menu;

import android.content.pm.PackageManager;
import androidx.appcompat.view.menu.kd0;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public class zj0 {
    public final kd0 a;
    public final PackageManager b;
    public b c;
    public final kd0.c d;

    public class a implements kd0.c {
        public a() {
        }

        @Override // androidx.appcompat.view.menu.kd0.c
        public void C(id0 id0Var, kd0.d dVar) {
            if (zj0.this.c == null) {
                return;
            }
            String str = id0Var.a;
            Object obj = id0Var.b;
            str.hashCode();
            if (!str.equals("ProcessText.processTextAction")) {
                if (!str.equals("ProcessText.queryTextActions")) {
                    dVar.a();
                    return;
                }
                try {
                    dVar.c(zj0.this.c.d());
                    return;
                } catch (IllegalStateException e) {
                    dVar.b("error", e.getMessage(), null);
                    return;
                }
            }
            try {
                ArrayList arrayList = (ArrayList) obj;
                zj0.this.c.e((String) arrayList.get(0), (String) arrayList.get(1), ((Boolean) arrayList.get(2)).booleanValue(), dVar);
            } catch (IllegalStateException e2) {
                dVar.b("error", e2.getMessage(), null);
            }
        }
    }

    public interface b {
        Map d();

        void e(String str, String str2, boolean z, kd0.d dVar);
    }

    public zj0(si siVar, PackageManager packageManager) {
        a aVar = new a();
        this.d = aVar;
        this.b = packageManager;
        kd0 kd0Var = new kd0(siVar, "flutter/processtext", qw0.b);
        this.a = kd0Var;
        kd0Var.e(aVar);
    }

    public void b(b bVar) {
        this.c = bVar;
    }
}
