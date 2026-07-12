package androidx.appcompat.view.menu;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.s11;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class w11 extends s11 {
    public int X;
    public ArrayList V = new ArrayList();
    public boolean W = true;
    public boolean Y = false;
    public int Z = 0;

    public class a extends t11 {
        public final /* synthetic */ s11 a;

        public a(s11 s11Var) {
            this.a = s11Var;
        }

        @Override // androidx.appcompat.view.menu.s11.f
        public void e(s11 s11Var) {
            this.a.W();
            s11Var.S(this);
        }
    }

    public static class b extends t11 {
        public w11 a;

        public b(w11 w11Var) {
            this.a = w11Var;
        }

        @Override // androidx.appcompat.view.menu.t11, androidx.appcompat.view.menu.s11.f
        public void c(s11 s11Var) {
            w11 w11Var = this.a;
            if (w11Var.Y) {
                return;
            }
            w11Var.d0();
            this.a.Y = true;
        }

        @Override // androidx.appcompat.view.menu.s11.f
        public void e(s11 s11Var) {
            w11 w11Var = this.a;
            int i = w11Var.X - 1;
            w11Var.X = i;
            if (i == 0) {
                w11Var.Y = false;
                w11Var.s();
            }
            s11Var.S(this);
        }
    }

    @Override // androidx.appcompat.view.menu.s11
    public void Q(View view) {
        super.Q(view);
        int size = this.V.size();
        for (int i = 0; i < size; i++) {
            ((s11) this.V.get(i)).Q(view);
        }
    }

    @Override // androidx.appcompat.view.menu.s11
    public void U(View view) {
        super.U(view);
        int size = this.V.size();
        for (int i = 0; i < size; i++) {
            ((s11) this.V.get(i)).U(view);
        }
    }

    @Override // androidx.appcompat.view.menu.s11
    public void W() {
        if (this.V.isEmpty()) {
            d0();
            s();
            return;
        }
        r0();
        if (this.W) {
            Iterator it = this.V.iterator();
            while (it.hasNext()) {
                ((s11) it.next()).W();
            }
            return;
        }
        for (int i = 1; i < this.V.size(); i++) {
            ((s11) this.V.get(i - 1)).a(new a((s11) this.V.get(i)));
        }
        s11 s11Var = (s11) this.V.get(0);
        if (s11Var != null) {
            s11Var.W();
        }
    }

    @Override // androidx.appcompat.view.menu.s11
    public void Y(s11.e eVar) {
        super.Y(eVar);
        this.Z |= 8;
        int size = this.V.size();
        for (int i = 0; i < size; i++) {
            ((s11) this.V.get(i)).Y(eVar);
        }
    }

    @Override // androidx.appcompat.view.menu.s11
    public void a0(sh0 sh0Var) {
        super.a0(sh0Var);
        this.Z |= 4;
        if (this.V != null) {
            for (int i = 0; i < this.V.size(); i++) {
                ((s11) this.V.get(i)).a0(sh0Var);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.s11
    public void b0(v11 v11Var) {
        super.b0(v11Var);
        this.Z |= 2;
        int size = this.V.size();
        for (int i = 0; i < size; i++) {
            ((s11) this.V.get(i)).b0(v11Var);
        }
    }

    @Override // androidx.appcompat.view.menu.s11
    public String e0(String str) {
        String e0 = super.e0(str);
        for (int i = 0; i < this.V.size(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(e0);
            sb.append("\n");
            sb.append(((s11) this.V.get(i)).e0(str + "  "));
            e0 = sb.toString();
        }
        return e0;
    }

    @Override // androidx.appcompat.view.menu.s11
    /* renamed from: f0, reason: merged with bridge method [inline-methods] */
    public w11 a(s11.f fVar) {
        return (w11) super.a(fVar);
    }

    @Override // androidx.appcompat.view.menu.s11
    public void g(y11 y11Var) {
        if (J(y11Var.b)) {
            Iterator it = this.V.iterator();
            while (it.hasNext()) {
                s11 s11Var = (s11) it.next();
                if (s11Var.J(y11Var.b)) {
                    s11Var.g(y11Var);
                    y11Var.c.add(s11Var);
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.s11
    /* renamed from: g0, reason: merged with bridge method [inline-methods] */
    public w11 b(View view) {
        for (int i = 0; i < this.V.size(); i++) {
            ((s11) this.V.get(i)).b(view);
        }
        return (w11) super.b(view);
    }

    public w11 h0(s11 s11Var) {
        i0(s11Var);
        long j = this.o;
        if (j >= 0) {
            s11Var.X(j);
        }
        if ((this.Z & 1) != 0) {
            s11Var.Z(v());
        }
        if ((this.Z & 2) != 0) {
            z();
            s11Var.b0(null);
        }
        if ((this.Z & 4) != 0) {
            s11Var.a0(y());
        }
        if ((this.Z & 8) != 0) {
            s11Var.Y(u());
        }
        return this;
    }

    @Override // androidx.appcompat.view.menu.s11
    public void i(y11 y11Var) {
        super.i(y11Var);
        int size = this.V.size();
        for (int i = 0; i < size; i++) {
            ((s11) this.V.get(i)).i(y11Var);
        }
    }

    public final void i0(s11 s11Var) {
        this.V.add(s11Var);
        s11Var.D = this;
    }

    @Override // androidx.appcompat.view.menu.s11
    public void j(y11 y11Var) {
        if (J(y11Var.b)) {
            Iterator it = this.V.iterator();
            while (it.hasNext()) {
                s11 s11Var = (s11) it.next();
                if (s11Var.J(y11Var.b)) {
                    s11Var.j(y11Var);
                    y11Var.c.add(s11Var);
                }
            }
        }
    }

    public s11 j0(int i) {
        if (i < 0 || i >= this.V.size()) {
            return null;
        }
        return (s11) this.V.get(i);
    }

    public int k0() {
        return this.V.size();
    }

    @Override // androidx.appcompat.view.menu.s11
    /* renamed from: l0, reason: merged with bridge method [inline-methods] */
    public w11 S(s11.f fVar) {
        return (w11) super.S(fVar);
    }

    @Override // androidx.appcompat.view.menu.s11
    /* renamed from: m0, reason: merged with bridge method [inline-methods] */
    public w11 T(View view) {
        for (int i = 0; i < this.V.size(); i++) {
            ((s11) this.V.get(i)).T(view);
        }
        return (w11) super.T(view);
    }

    @Override // androidx.appcompat.view.menu.s11
    /* renamed from: n0, reason: merged with bridge method [inline-methods] */
    public w11 X(long j) {
        ArrayList arrayList;
        super.X(j);
        if (this.o >= 0 && (arrayList = this.V) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((s11) this.V.get(i)).X(j);
            }
        }
        return this;
    }

    @Override // androidx.appcompat.view.menu.s11
    /* renamed from: o0, reason: merged with bridge method [inline-methods] */
    public w11 Z(TimeInterpolator timeInterpolator) {
        this.Z |= 1;
        ArrayList arrayList = this.V;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((s11) this.V.get(i)).Z(timeInterpolator);
            }
        }
        return (w11) super.Z(timeInterpolator);
    }

    @Override // androidx.appcompat.view.menu.s11
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public s11 clone() {
        w11 w11Var = (w11) super.clone();
        w11Var.V = new ArrayList();
        int size = this.V.size();
        for (int i = 0; i < size; i++) {
            w11Var.i0(((s11) this.V.get(i)).clone());
        }
        return w11Var;
    }

    public w11 p0(int i) {
        if (i == 0) {
            this.W = true;
        } else {
            if (i != 1) {
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i);
            }
            this.W = false;
        }
        return this;
    }

    @Override // androidx.appcompat.view.menu.s11
    /* renamed from: q0, reason: merged with bridge method [inline-methods] */
    public w11 c0(long j) {
        return (w11) super.c0(j);
    }

    @Override // androidx.appcompat.view.menu.s11
    public void r(ViewGroup viewGroup, z11 z11Var, z11 z11Var2, ArrayList arrayList, ArrayList arrayList2) {
        long B = B();
        int size = this.V.size();
        for (int i = 0; i < size; i++) {
            s11 s11Var = (s11) this.V.get(i);
            if (B > 0 && (this.W || i == 0)) {
                long B2 = s11Var.B();
                if (B2 > 0) {
                    s11Var.c0(B2 + B);
                } else {
                    s11Var.c0(B);
                }
            }
            s11Var.r(viewGroup, z11Var, z11Var2, arrayList, arrayList2);
        }
    }

    public final void r0() {
        b bVar = new b(this);
        Iterator it = this.V.iterator();
        while (it.hasNext()) {
            ((s11) it.next()).a(bVar);
        }
        this.X = this.V.size();
    }
}
