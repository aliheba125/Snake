package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.kh;

/* loaded from: classes.dex */
public abstract class i implements kh.c {
    public final fw m;
    public final kh.c n;

    public i(kh.c cVar, fw fwVar) {
        z50.e(cVar, "baseKey");
        z50.e(fwVar, "safeCast");
        this.m = fwVar;
        this.n = cVar instanceof i ? ((i) cVar).n : cVar;
    }

    public final boolean a(kh.c cVar) {
        z50.e(cVar, "key");
        return cVar == this || this.n == cVar;
    }

    public final kh.b b(kh.b bVar) {
        z50.e(bVar, "element");
        return (kh.b) this.m.i(bVar);
    }
}
