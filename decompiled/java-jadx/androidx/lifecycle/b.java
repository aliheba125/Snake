package androidx.lifecycle;

import androidx.appcompat.view.menu.a90;
import androidx.appcompat.view.menu.jd0;
import androidx.appcompat.view.menu.z50;
import androidx.lifecycle.f;

/* loaded from: classes.dex */
public final class b implements h {
    public final d[] a;

    public b(d[] dVarArr) {
        z50.e(dVarArr, "generatedAdapters");
        this.a = dVarArr;
    }

    @Override // androidx.lifecycle.h
    public void c(a90 a90Var, f.a aVar) {
        z50.e(a90Var, "source");
        z50.e(aVar, "event");
        new jd0();
        d[] dVarArr = this.a;
        if (dVarArr.length > 0) {
            d dVar = dVarArr[0];
            throw null;
        }
        if (dVarArr.length <= 0) {
            return;
        }
        d dVar2 = dVarArr[0];
        throw null;
    }
}
