package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.gi;

/* loaded from: classes.dex */
public final class ie0 extends gi {
    /* JADX WARN: Multi-variable type inference failed */
    public ie0() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final void b(gi.b bVar, Object obj) {
        z50.e(bVar, "key");
        a().put(bVar, obj);
    }

    public ie0(gi giVar) {
        z50.e(giVar, "initialExtras");
        a().putAll(giVar.a());
    }

    public /* synthetic */ ie0(gi giVar, int i, lj ljVar) {
        this((i & 1) != 0 ? gi.a.b : giVar);
    }
}
