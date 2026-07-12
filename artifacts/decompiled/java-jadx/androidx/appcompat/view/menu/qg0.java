package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.mf;

/* loaded from: classes.dex */
public abstract class qg0 {
    public static boolean[] a = new boolean[3];

    public static void a(nf nfVar, g90 g90Var, mf mfVar) {
        mfVar.j = -1;
        mfVar.k = -1;
        mf.b bVar = nfVar.M[0];
        mf.b bVar2 = mf.b.WRAP_CONTENT;
        if (bVar != bVar2 && mfVar.M[0] == mf.b.MATCH_PARENT) {
            int i = mfVar.B.e;
            int P = nfVar.P() - mfVar.D.e;
            kf kfVar = mfVar.B;
            kfVar.g = g90Var.q(kfVar);
            kf kfVar2 = mfVar.D;
            kfVar2.g = g90Var.q(kfVar2);
            g90Var.f(mfVar.B.g, i);
            g90Var.f(mfVar.D.g, P);
            mfVar.j = 2;
            mfVar.k0(i, P);
        }
        if (nfVar.M[1] == bVar2 || mfVar.M[1] != mf.b.MATCH_PARENT) {
            return;
        }
        int i2 = mfVar.C.e;
        int v = nfVar.v() - mfVar.E.e;
        kf kfVar3 = mfVar.C;
        kfVar3.g = g90Var.q(kfVar3);
        kf kfVar4 = mfVar.E;
        kfVar4.g = g90Var.q(kfVar4);
        g90Var.f(mfVar.C.g, i2);
        g90Var.f(mfVar.E.g, v);
        if (mfVar.Y > 0 || mfVar.O() == 8) {
            kf kfVar5 = mfVar.F;
            kfVar5.g = g90Var.q(kfVar5);
            g90Var.f(mfVar.F.g, mfVar.Y + i2);
        }
        mfVar.k = 2;
        mfVar.z0(i2, v);
    }

    public static final boolean b(int i, int i2) {
        return (i & i2) == i2;
    }
}
