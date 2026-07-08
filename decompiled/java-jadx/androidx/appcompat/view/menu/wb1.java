package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.m2;
import java.util.Map;

/* loaded from: classes.dex */
public final class wb1 implements Runnable {
    public final /* synthetic */ ef m;
    public final /* synthetic */ xb1 n;

    public wb1(xb1 xb1Var, ef efVar) {
        this.n = xb1Var;
        this.m = efVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        r2 r2Var;
        m2.f fVar;
        m2.f fVar2;
        m2.f fVar3;
        m2.f fVar4;
        xb1 xb1Var = this.n;
        map = xb1Var.f.w;
        r2Var = xb1Var.b;
        tb1 tb1Var = (tb1) map.get(r2Var);
        if (tb1Var == null) {
            return;
        }
        if (!this.m.n()) {
            tb1Var.G(this.m, null);
            return;
        }
        this.n.e = true;
        fVar = this.n.a;
        if (fVar.o()) {
            this.n.h();
            return;
        }
        try {
            xb1 xb1Var2 = this.n;
            fVar3 = xb1Var2.a;
            fVar4 = xb1Var2.a;
            fVar3.k(null, fVar4.b());
        } catch (SecurityException unused) {
            fVar2 = this.n.a;
            fVar2.c("Failed to get service from broker.");
            tb1Var.G(new ef(10), null);
        }
    }
}
