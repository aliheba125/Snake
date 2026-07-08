package androidx.appcompat.view.menu;

import androidx.lifecycle.r;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class pv extends y51 {
    public static final r.b k = new a();
    public final boolean g;
    public final HashMap d = new HashMap();
    public final HashMap e = new HashMap();
    public final HashMap f = new HashMap();
    public boolean h = false;
    public boolean i = false;
    public boolean j = false;

    public class a implements r.b {
        @Override // androidx.lifecycle.r.b
        public y51 a(Class cls) {
            return new pv(true);
        }
    }

    public pv(boolean z) {
        this.g = z;
    }

    @Override // androidx.appcompat.view.menu.y51
    public void c() {
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("onCleared called for ");
            sb.append(this);
        }
        this.h = true;
    }

    public void d(av avVar) {
        if (this.j) {
            mv.v0(2);
            return;
        }
        if (this.d.containsKey(avVar.e)) {
            return;
        }
        this.d.put(avVar.e, avVar);
        if (mv.v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Updating retained Fragments: Added ");
            sb.append(avVar);
        }
    }

    public void e(av avVar, boolean z) {
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Clearing non-config state for ");
            sb.append(avVar);
        }
        g(avVar.e, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || pv.class != obj.getClass()) {
            return false;
        }
        pv pvVar = (pv) obj;
        return this.d.equals(pvVar.d) && this.e.equals(pvVar.e) && this.f.equals(pvVar.f);
    }

    public void f(String str, boolean z) {
        if (mv.v0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Clearing non-config state for saved state of Fragment ");
            sb.append(str);
        }
        g(str, z);
    }

    public final void g(String str, boolean z) {
        pv pvVar = (pv) this.e.get(str);
        if (pvVar != null) {
            if (z) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(pvVar.e.keySet());
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    pvVar.f((String) it.next(), true);
                }
            }
            pvVar.c();
            this.e.remove(str);
        }
        a61 a61Var = (a61) this.f.get(str);
        if (a61Var != null) {
            a61Var.a();
            this.f.remove(str);
        }
    }

    public av h(String str) {
        return (av) this.d.get(str);
    }

    public int hashCode() {
        return (((this.d.hashCode() * 31) + this.e.hashCode()) * 31) + this.f.hashCode();
    }

    public pv i(av avVar) {
        pv pvVar = (pv) this.e.get(avVar.e);
        if (pvVar != null) {
            return pvVar;
        }
        pv pvVar2 = new pv(this.g);
        this.e.put(avVar.e, pvVar2);
        return pvVar2;
    }

    public Collection j() {
        return new ArrayList(this.d.values());
    }

    public a61 k(av avVar) {
        a61 a61Var = (a61) this.f.get(avVar.e);
        if (a61Var != null) {
            return a61Var;
        }
        a61 a61Var2 = new a61();
        this.f.put(avVar.e, a61Var2);
        return a61Var2;
    }

    public void l(av avVar) {
        if (this.j) {
            mv.v0(2);
        } else {
            if (this.d.remove(avVar.e) == null || !mv.v0(2)) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Updating retained Fragments: Removed ");
            sb.append(avVar);
        }
    }

    public void m(boolean z) {
        this.j = z;
    }

    public boolean n(av avVar) {
        if (this.d.containsKey(avVar.e)) {
            return this.g ? this.h : !this.i;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.d.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.e.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.f.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
