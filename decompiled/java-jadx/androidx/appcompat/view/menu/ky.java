package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public class ky extends y71 {
    public ky(mf mfVar) {
        super(mfVar);
        mfVar.e.f();
        mfVar.f.f();
        this.f = ((jy) mfVar).K0();
    }

    @Override // androidx.appcompat.view.menu.y71, androidx.appcompat.view.menu.jl
    public void a(jl jlVar) {
        nl nlVar = this.h;
        if (nlVar.c && !nlVar.j) {
            this.h.d((int) ((((nl) nlVar.l.get(0)).g * ((jy) this.b).N0()) + 0.5f));
        }
    }

    @Override // androidx.appcompat.view.menu.y71
    public void d() {
        jy jyVar = (jy) this.b;
        int L0 = jyVar.L0();
        int M0 = jyVar.M0();
        jyVar.N0();
        if (jyVar.K0() == 1) {
            if (L0 != -1) {
                this.h.l.add(this.b.N.e.h);
                this.b.N.e.h.k.add(this.h);
                this.h.f = L0;
            } else if (M0 != -1) {
                this.h.l.add(this.b.N.e.i);
                this.b.N.e.i.k.add(this.h);
                this.h.f = -M0;
            } else {
                nl nlVar = this.h;
                nlVar.b = true;
                nlVar.l.add(this.b.N.e.i);
                this.b.N.e.i.k.add(this.h);
            }
            q(this.b.e.h);
            q(this.b.e.i);
            return;
        }
        if (L0 != -1) {
            this.h.l.add(this.b.N.f.h);
            this.b.N.f.h.k.add(this.h);
            this.h.f = L0;
        } else if (M0 != -1) {
            this.h.l.add(this.b.N.f.i);
            this.b.N.f.i.k.add(this.h);
            this.h.f = -M0;
        } else {
            nl nlVar2 = this.h;
            nlVar2.b = true;
            nlVar2.l.add(this.b.N.f.i);
            this.b.N.f.i.k.add(this.h);
        }
        q(this.b.f.h);
        q(this.b.f.i);
    }

    @Override // androidx.appcompat.view.menu.y71
    public void e() {
        if (((jy) this.b).K0() == 1) {
            this.b.F0(this.h.g);
        } else {
            this.b.G0(this.h.g);
        }
    }

    @Override // androidx.appcompat.view.menu.y71
    public void f() {
        this.h.c();
    }

    @Override // androidx.appcompat.view.menu.y71
    public boolean m() {
        return false;
    }

    public final void q(nl nlVar) {
        this.h.k.add(nlVar);
        nlVar.l.add(this.h);
    }
}
