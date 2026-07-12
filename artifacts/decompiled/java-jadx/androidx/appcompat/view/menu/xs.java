package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.gx;

/* loaded from: classes.dex */
public abstract /* synthetic */ class xs {
    public static final void a(kh khVar) {
        if (khVar.d(q60.d) == null) {
            return;
        }
        throw new IllegalArgumentException(("Flow context cannot contain job in it. Had " + khVar).toString());
    }

    public static final ss b(ss ssVar, kh khVar) {
        a(khVar);
        return z50.a(khVar, bo.m) ? ssVar : ssVar instanceof gx ? gx.a.a((gx) ssVar, khVar, 0, null, 6, null) : new ya(ssVar, khVar, 0, null, 12, null);
    }
}
