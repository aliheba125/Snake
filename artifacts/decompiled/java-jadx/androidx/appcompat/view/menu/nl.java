package androidx.appcompat.view.menu;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class nl implements jl {
    public y71 d;
    public int f;
    public int g;
    public jl a = null;
    public boolean b = false;
    public boolean c = false;
    public a e = a.UNKNOWN;
    public int h = 1;
    public zl i = null;
    public boolean j = false;
    public List k = new ArrayList();
    public List l = new ArrayList();

    public enum a {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public nl(y71 y71Var) {
        this.d = y71Var;
    }

    @Override // androidx.appcompat.view.menu.jl
    public void a(jl jlVar) {
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            if (!((nl) it.next()).j) {
                return;
            }
        }
        this.c = true;
        jl jlVar2 = this.a;
        if (jlVar2 != null) {
            jlVar2.a(this);
        }
        if (this.b) {
            this.d.a(this);
            return;
        }
        nl nlVar = null;
        int i = 0;
        for (nl nlVar2 : this.l) {
            if (!(nlVar2 instanceof zl)) {
                i++;
                nlVar = nlVar2;
            }
        }
        if (nlVar != null && i == 1 && nlVar.j) {
            zl zlVar = this.i;
            if (zlVar != null) {
                if (!zlVar.j) {
                    return;
                } else {
                    this.f = this.h * zlVar.g;
                }
            }
            d(nlVar.g + this.f);
        }
        jl jlVar3 = this.a;
        if (jlVar3 != null) {
            jlVar3.a(this);
        }
    }

    public void b(jl jlVar) {
        this.k.add(jlVar);
        if (this.j) {
            jlVar.a(jlVar);
        }
    }

    public void c() {
        this.l.clear();
        this.k.clear();
        this.j = false;
        this.g = 0;
        this.c = false;
        this.b = false;
    }

    public void d(int i) {
        if (this.j) {
            return;
        }
        this.j = true;
        this.g = i;
        for (jl jlVar : this.k) {
            jlVar.a(jlVar);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.d.b.r());
        sb.append(":");
        sb.append(this.e);
        sb.append("(");
        sb.append(this.j ? Integer.valueOf(this.g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.l.size());
        sb.append(":d=");
        sb.append(this.k.size());
        sb.append(">");
        return sb.toString();
    }
}
