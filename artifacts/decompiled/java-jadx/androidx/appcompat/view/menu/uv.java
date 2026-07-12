package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class uv {
    public final ArrayList a = new ArrayList();
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public pv d;

    public void a(av avVar) {
        if (this.a.contains(avVar)) {
            throw new IllegalStateException("Fragment already added: " + avVar);
        }
        synchronized (this.a) {
            this.a.add(avVar);
        }
        avVar.k = true;
    }

    public void b() {
        this.b.values().removeAll(Collections.singleton(null));
    }

    public boolean c(String str) {
        return this.b.get(str) != null;
    }

    public void d(int i) {
        for (tv tvVar : this.b.values()) {
            if (tvVar != null) {
                tvVar.r(i);
            }
        }
    }

    public av e(String str) {
        tv tvVar = (tv) this.b.get(str);
        if (tvVar != null) {
            return tvVar.k();
        }
        return null;
    }

    public av f(int i) {
        for (int size = this.a.size() - 1; size >= 0; size--) {
            av avVar = (av) this.a.get(size);
            if (avVar != null && avVar.w == i) {
                return avVar;
            }
        }
        for (tv tvVar : this.b.values()) {
            if (tvVar != null) {
                av k = tvVar.k();
                if (k.w == i) {
                    return k;
                }
            }
        }
        return null;
    }

    public av g(String str) {
        if (str != null) {
            for (int size = this.a.size() - 1; size >= 0; size--) {
                av avVar = (av) this.a.get(size);
                if (avVar != null && str.equals(avVar.y)) {
                    return avVar;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (tv tvVar : this.b.values()) {
            if (tvVar != null) {
                av k = tvVar.k();
                if (str.equals(k.y)) {
                    return k;
                }
            }
        }
        return null;
    }

    public int h(av avVar) {
        View view;
        View view2;
        ViewGroup viewGroup = avVar.G;
        if (viewGroup == null) {
            return -1;
        }
        int indexOf = this.a.indexOf(avVar);
        for (int i = indexOf - 1; i >= 0; i--) {
            av avVar2 = (av) this.a.get(i);
            if (avVar2.G == viewGroup && (view2 = avVar2.H) != null) {
                return viewGroup.indexOfChild(view2) + 1;
            }
        }
        while (true) {
            indexOf++;
            if (indexOf >= this.a.size()) {
                return -1;
            }
            av avVar3 = (av) this.a.get(indexOf);
            if (avVar3.G == viewGroup && (view = avVar3.H) != null) {
                return viewGroup.indexOfChild(view);
            }
        }
    }

    public List i() {
        ArrayList arrayList = new ArrayList();
        for (tv tvVar : this.b.values()) {
            if (tvVar != null) {
                arrayList.add(tvVar);
            }
        }
        return arrayList;
    }

    public List j() {
        ArrayList arrayList = new ArrayList();
        for (tv tvVar : this.b.values()) {
            if (tvVar != null) {
                arrayList.add(tvVar.k());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public HashMap k() {
        return this.c;
    }

    public tv l(String str) {
        return (tv) this.b.get(str);
    }

    public List m() {
        ArrayList arrayList;
        if (this.a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.a) {
            arrayList = new ArrayList(this.a);
        }
        return arrayList;
    }

    public pv n() {
        return this.d;
    }

    public Bundle o(String str) {
        return (Bundle) this.c.get(str);
    }

    public void p(tv tvVar) {
        av k = tvVar.k();
        if (c(k.e)) {
            return;
        }
        this.b.put(k.e, tvVar);
        if (k.C) {
            if (k.B) {
                this.d.d(k);
            } else {
                this.d.l(k);
            }
            k.C = false;
        }
        if (mv.v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Added fragment to active set ");
            sb.append(k);
        }
    }

    public void q(tv tvVar) {
        av k = tvVar.k();
        if (k.B) {
            this.d.l(k);
        }
        if (this.b.get(k.e) == tvVar && ((tv) this.b.put(k.e, null)) != null && mv.v0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Removed fragment from active set ");
            sb.append(k);
        }
    }

    public void r() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            tv tvVar = (tv) this.b.get(((av) it.next()).e);
            if (tvVar != null) {
                tvVar.m();
            }
        }
        for (tv tvVar2 : this.b.values()) {
            if (tvVar2 != null) {
                tvVar2.m();
                av k = tvVar2.k();
                if (k.l && !k.V()) {
                    if (k.n && !this.c.containsKey(k.e)) {
                        z(k.e, tvVar2.p());
                    }
                    q(tvVar2);
                }
            }
        }
    }

    public void s(av avVar) {
        synchronized (this.a) {
            this.a.remove(avVar);
        }
        avVar.k = false;
    }

    public void t() {
        this.b.clear();
    }

    public void u(List list) {
        this.a.clear();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                av e = e(str);
                if (e == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (mv.v0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("restoreSaveState: added (");
                    sb.append(str);
                    sb.append("): ");
                    sb.append(e);
                }
                a(e);
            }
        }
    }

    public void v(HashMap hashMap) {
        this.c.clear();
        this.c.putAll(hashMap);
    }

    public ArrayList w() {
        ArrayList arrayList = new ArrayList(this.b.size());
        for (tv tvVar : this.b.values()) {
            if (tvVar != null) {
                av k = tvVar.k();
                z(k.e, tvVar.p());
                arrayList.add(k.e);
                if (mv.v0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Saved state of ");
                    sb.append(k);
                    sb.append(": ");
                    sb.append(k.b);
                }
            }
        }
        return arrayList;
    }

    public ArrayList x() {
        synchronized (this.a) {
            try {
                if (this.a.isEmpty()) {
                    return null;
                }
                ArrayList arrayList = new ArrayList(this.a.size());
                Iterator it = this.a.iterator();
                while (it.hasNext()) {
                    av avVar = (av) it.next();
                    arrayList.add(avVar.e);
                    if (mv.v0(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("saveAllState: adding fragment (");
                        sb.append(avVar.e);
                        sb.append("): ");
                        sb.append(avVar);
                    }
                }
                return arrayList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void y(pv pvVar) {
        this.d = pvVar;
    }

    public Bundle z(String str, Bundle bundle) {
        return bundle != null ? (Bundle) this.c.put(str, bundle) : (Bundle) this.c.remove(str);
    }
}
