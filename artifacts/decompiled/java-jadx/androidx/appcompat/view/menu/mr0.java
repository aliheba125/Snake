package androidx.appcompat.view.menu;

import android.os.Bundle;
import androidx.appcompat.view.menu.pr0;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class mr0 implements pr0.c {
    public final pr0 a;
    public boolean b;
    public Bundle c;
    public final i80 d;

    public static final class a extends g80 implements dw {
        public final /* synthetic */ b61 n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(b61 b61Var) {
            super(0);
            this.n = b61Var;
        }

        @Override // androidx.appcompat.view.menu.dw
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final nr0 d() {
            return androidx.lifecycle.p.b(this.n);
        }
    }

    public mr0(pr0 pr0Var, b61 b61Var) {
        i80 a2;
        z50.e(pr0Var, "savedStateRegistry");
        z50.e(b61Var, "viewModelStoreOwner");
        this.a = pr0Var;
        a2 = m80.a(new a(b61Var));
        this.d = a2;
    }

    @Override // androidx.appcompat.view.menu.pr0.c
    public Bundle a() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        Iterator it = b().d().entrySet().iterator();
        if (!it.hasNext()) {
            this.b = false;
            return bundle;
        }
        Map.Entry entry = (Map.Entry) it.next();
        jy0.a(entry.getValue());
        throw null;
    }

    public final nr0 b() {
        return (nr0) this.d.getValue();
    }

    public final void c() {
        if (this.b) {
            return;
        }
        Bundle b = this.a.b("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if (b != null) {
            bundle.putAll(b);
        }
        this.c = bundle;
        this.b = true;
        b();
    }
}
