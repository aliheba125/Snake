package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.m2;

/* loaded from: classes.dex */
public final class rb1 implements Runnable {
    public final /* synthetic */ sb1 m;

    public rb1(sb1 sb1Var) {
        this.m = sb1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m2.f fVar;
        m2.f fVar2;
        tb1 tb1Var = this.m.a;
        fVar = tb1Var.m;
        fVar2 = tb1Var.m;
        fVar.c(fVar2.getClass().getName().concat(" disconnecting because it was signed out."));
    }
}
