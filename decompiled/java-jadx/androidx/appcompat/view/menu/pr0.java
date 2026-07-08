package androidx.appcompat.view.menu;

import android.os.Bundle;
import androidx.appcompat.view.menu.gr0;
import androidx.lifecycle.f;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class pr0 {
    public static final b f = new b(null);
    public boolean b;
    public Bundle c;
    public boolean d;
    public final gr0 a = new gr0();
    public boolean e = true;

    public interface a {
    }

    public static final class b {
        public b() {
        }

        public /* synthetic */ b(lj ljVar) {
            this();
        }
    }

    public interface c {
        Bundle a();
    }

    public static final void d(pr0 pr0Var, a90 a90Var, f.a aVar) {
        z50.e(pr0Var, "this$0");
        z50.e(a90Var, "<anonymous parameter 0>");
        z50.e(aVar, "event");
        if (aVar == f.a.ON_START) {
            pr0Var.e = true;
        } else if (aVar == f.a.ON_STOP) {
            pr0Var.e = false;
        }
    }

    public final Bundle b(String str) {
        z50.e(str, "key");
        if (!this.d) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component".toString());
        }
        Bundle bundle = this.c;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle != null ? bundle.getBundle(str) : null;
        Bundle bundle3 = this.c;
        if (bundle3 != null) {
            bundle3.remove(str);
        }
        Bundle bundle4 = this.c;
        if (bundle4 == null || bundle4.isEmpty()) {
            this.c = null;
        }
        return bundle2;
    }

    public final c c(String str) {
        z50.e(str, "key");
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            z50.d(entry, "components");
            String str2 = (String) entry.getKey();
            c cVar = (c) entry.getValue();
            if (z50.a(str2, str)) {
                return cVar;
            }
        }
        return null;
    }

    public final void e(androidx.lifecycle.f fVar) {
        z50.e(fVar, "lifecycle");
        if (!(!this.b)) {
            throw new IllegalStateException("SavedStateRegistry was already attached.".toString());
        }
        fVar.a(new androidx.lifecycle.h() { // from class: androidx.appcompat.view.menu.or0
            @Override // androidx.lifecycle.h
            public final void c(a90 a90Var, f.a aVar) {
                pr0.d(pr0.this, a90Var, aVar);
            }
        });
        this.b = true;
    }

    public final void f(Bundle bundle) {
        if (!this.b) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).".toString());
        }
        if (!(!this.d)) {
            throw new IllegalStateException("SavedStateRegistry was already restored.".toString());
        }
        this.c = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        this.d = true;
    }

    public final void g(Bundle bundle) {
        z50.e(bundle, "outBundle");
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.c;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        gr0.d g = this.a.g();
        z50.d(g, "this.components.iteratorWithAdditions()");
        while (g.hasNext()) {
            Map.Entry entry = (Map.Entry) g.next();
            bundle2.putBundle((String) entry.getKey(), ((c) entry.getValue()).a());
        }
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    public final void h(String str, c cVar) {
        z50.e(str, "key");
        z50.e(cVar, "provider");
        if (((c) this.a.k(str, cVar)) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered".toString());
        }
    }
}
