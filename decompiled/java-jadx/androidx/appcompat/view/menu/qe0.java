package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.kd0;
import java.util.HashMap;

/* loaded from: classes.dex */
public class qe0 {
    public final kd0 a;
    public final kd0.c b;

    public class a implements kd0.c {
        public a() {
        }

        @Override // androidx.appcompat.view.menu.kd0.c
        public void C(id0 id0Var, kd0.d dVar) {
            dVar.c(null);
        }
    }

    public qe0(si siVar) {
        a aVar = new a();
        this.b = aVar;
        kd0 kd0Var = new kd0(siVar, "flutter/navigation", n60.a);
        this.a = kd0Var;
        kd0Var.e(aVar);
    }

    public void a() {
        ea0.f("NavigationChannel", "Sending message to pop route.");
        this.a.c("popRoute", null);
    }

    public void b(String str) {
        ea0.f("NavigationChannel", "Sending message to push route information '" + str + "'");
        HashMap hashMap = new HashMap();
        hashMap.put("location", str);
        this.a.c("pushRouteInformation", hashMap);
    }

    public void c(String str) {
        ea0.f("NavigationChannel", "Sending message to set initial route to '" + str + "'");
        this.a.c("setInitialRoute", str);
    }
}
