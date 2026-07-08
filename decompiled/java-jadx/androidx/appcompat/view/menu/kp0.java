package androidx.appcompat.view.menu;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class kp0 implements xd {
    public final Set a;
    public final Set b;
    public final Set c;
    public final Set d;
    public final Set e;
    public final Set f;
    public final xd g;

    public static class a implements sl0 {
        public final Set a;
        public final sl0 b;

        public a(Set set, sl0 sl0Var) {
            this.a = set;
            this.b = sl0Var;
        }
    }

    public kp0(ud udVar, xd xdVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (il ilVar : udVar.g()) {
            if (ilVar.d()) {
                if (ilVar.f()) {
                    hashSet4.add(ilVar.b());
                } else {
                    hashSet.add(ilVar.b());
                }
            } else if (ilVar.c()) {
                hashSet3.add(ilVar.b());
            } else if (ilVar.f()) {
                hashSet5.add(ilVar.b());
            } else {
                hashSet2.add(ilVar.b());
            }
        }
        if (!udVar.k().isEmpty()) {
            hashSet.add(ul0.b(sl0.class));
        }
        this.a = Collections.unmodifiableSet(hashSet);
        this.b = Collections.unmodifiableSet(hashSet2);
        this.c = Collections.unmodifiableSet(hashSet3);
        this.d = Collections.unmodifiableSet(hashSet4);
        this.e = Collections.unmodifiableSet(hashSet5);
        this.f = udVar.k();
        this.g = xdVar;
    }

    @Override // androidx.appcompat.view.menu.xd
    public Object a(Class cls) {
        if (!this.a.contains(ul0.b(cls))) {
            throw new ll(String.format("Attempting to request an undeclared dependency %s.", cls));
        }
        Object a2 = this.g.a(cls);
        return !cls.equals(sl0.class) ? a2 : new a(this.f, (sl0) a2);
    }

    @Override // androidx.appcompat.view.menu.xd
    public el0 b(ul0 ul0Var) {
        if (this.b.contains(ul0Var)) {
            return this.g.b(ul0Var);
        }
        throw new ll(String.format("Attempting to request an undeclared dependency Provider<%s>.", ul0Var));
    }

    @Override // androidx.appcompat.view.menu.xd
    public el0 d(Class cls) {
        return b(ul0.b(cls));
    }

    @Override // androidx.appcompat.view.menu.xd
    public Object e(ul0 ul0Var) {
        if (this.a.contains(ul0Var)) {
            return this.g.e(ul0Var);
        }
        throw new ll(String.format("Attempting to request an undeclared dependency %s.", ul0Var));
    }

    @Override // androidx.appcompat.view.menu.xd
    public Set f(ul0 ul0Var) {
        if (this.d.contains(ul0Var)) {
            return this.g.f(ul0Var);
        }
        throw new ll(String.format("Attempting to request an undeclared dependency Set<%s>.", ul0Var));
    }

    @Override // androidx.appcompat.view.menu.xd
    public el0 g(ul0 ul0Var) {
        if (this.e.contains(ul0Var)) {
            return this.g.g(ul0Var);
        }
        throw new ll(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", ul0Var));
    }
}
