package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.kd0;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class jw0 {
    public final kd0 a;
    public b b;
    public final kd0.c c;

    public class a implements kd0.c {
        public a() {
        }

        @Override // androidx.appcompat.view.menu.kd0.c
        public void C(id0 id0Var, kd0.d dVar) {
            if (jw0.this.b == null) {
                ea0.f("SpellCheckChannel", "No SpellCheckeMethodHandler registered, call not forwarded to spell check API.");
                return;
            }
            String str = id0Var.a;
            Object obj = id0Var.b;
            ea0.f("SpellCheckChannel", "Received '" + str + "' message.");
            str.hashCode();
            if (!str.equals("SpellCheck.initiateSpellCheck")) {
                dVar.a();
                return;
            }
            try {
                ArrayList arrayList = (ArrayList) obj;
                jw0.this.b.a((String) arrayList.get(0), (String) arrayList.get(1), dVar);
            } catch (IllegalStateException e) {
                dVar.b("error", e.getMessage(), null);
            }
        }
    }

    public interface b {
        void a(String str, String str2, kd0.d dVar);
    }

    public jw0(si siVar) {
        a aVar = new a();
        this.c = aVar;
        kd0 kd0Var = new kd0(siVar, "flutter/spellcheck", qw0.b);
        this.a = kd0Var;
        kd0Var.e(aVar);
    }

    public void b(b bVar) {
        this.b = bVar;
    }
}
