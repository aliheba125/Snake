package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.nl;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ez extends y71 {
    public ez(mf mfVar) {
        super(mfVar);
    }

    private void q(nl nlVar) {
        this.h.k.add(nlVar);
        nlVar.l.add(this.h);
    }

    @Override // androidx.appcompat.view.menu.y71, androidx.appcompat.view.menu.jl
    public void a(jl jlVar) {
        w7 w7Var = (w7) this.b;
        int L0 = w7Var.L0();
        Iterator it = this.h.l.iterator();
        int i = 0;
        int i2 = -1;
        while (it.hasNext()) {
            int i3 = ((nl) it.next()).g;
            if (i2 == -1 || i3 < i2) {
                i2 = i3;
            }
            if (i < i3) {
                i = i3;
            }
        }
        if (L0 == 0 || L0 == 2) {
            this.h.d(i2 + w7Var.M0());
        } else {
            this.h.d(i + w7Var.M0());
        }
    }

    @Override // androidx.appcompat.view.menu.y71
    public void d() {
        mf mfVar = this.b;
        if (mfVar instanceof w7) {
            this.h.b = true;
            w7 w7Var = (w7) mfVar;
            int L0 = w7Var.L0();
            boolean K0 = w7Var.K0();
            int i = 0;
            if (L0 == 0) {
                this.h.e = nl.a.LEFT;
                while (i < w7Var.x0) {
                    mf mfVar2 = w7Var.w0[i];
                    if (K0 || mfVar2.O() != 8) {
                        nl nlVar = mfVar2.e.h;
                        nlVar.k.add(this.h);
                        this.h.l.add(nlVar);
                    }
                    i++;
                }
                q(this.b.e.h);
                q(this.b.e.i);
                return;
            }
            if (L0 == 1) {
                this.h.e = nl.a.RIGHT;
                while (i < w7Var.x0) {
                    mf mfVar3 = w7Var.w0[i];
                    if (K0 || mfVar3.O() != 8) {
                        nl nlVar2 = mfVar3.e.i;
                        nlVar2.k.add(this.h);
                        this.h.l.add(nlVar2);
                    }
                    i++;
                }
                q(this.b.e.h);
                q(this.b.e.i);
                return;
            }
            if (L0 == 2) {
                this.h.e = nl.a.TOP;
                while (i < w7Var.x0) {
                    mf mfVar4 = w7Var.w0[i];
                    if (K0 || mfVar4.O() != 8) {
                        nl nlVar3 = mfVar4.f.h;
                        nlVar3.k.add(this.h);
                        this.h.l.add(nlVar3);
                    }
                    i++;
                }
                q(this.b.f.h);
                q(this.b.f.i);
                return;
            }
            if (L0 != 3) {
                return;
            }
            this.h.e = nl.a.BOTTOM;
            while (i < w7Var.x0) {
                mf mfVar5 = w7Var.w0[i];
                if (K0 || mfVar5.O() != 8) {
                    nl nlVar4 = mfVar5.f.i;
                    nlVar4.k.add(this.h);
                    this.h.l.add(nlVar4);
                }
                i++;
            }
            q(this.b.f.h);
            q(this.b.f.i);
        }
    }

    @Override // androidx.appcompat.view.menu.y71
    public void e() {
        mf mfVar = this.b;
        if (mfVar instanceof w7) {
            int L0 = ((w7) mfVar).L0();
            if (L0 == 0 || L0 == 1) {
                this.b.F0(this.h.g);
            } else {
                this.b.G0(this.h.g);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.y71
    public void f() {
        this.c = null;
        this.h.c();
    }

    @Override // androidx.appcompat.view.menu.y71
    public boolean m() {
        return false;
    }
}
