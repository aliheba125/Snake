package androidx.appcompat.view.menu;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class cf1 {
    public hf1 a;
    public hf1 b;
    public List c;

    public cf1() {
        this.a = new hf1("", 0L, null);
        this.b = new hf1("", 0L, null);
        this.c = new ArrayList();
    }

    public final hf1 a() {
        return this.a;
    }

    public final void b(hf1 hf1Var) {
        this.a = hf1Var;
        this.b = (hf1) hf1Var.clone();
        this.c.clear();
    }

    public final void c(String str, long j, Map map) {
        HashMap hashMap = new HashMap();
        for (String str2 : map.keySet()) {
            hashMap.put(str2, hf1.c(str2, this.a.b(str2), map.get(str2)));
        }
        this.c.add(new hf1(str, j, hashMap));
    }

    public final /* synthetic */ Object clone() {
        cf1 cf1Var = new cf1((hf1) this.a.clone());
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            cf1Var.c.add((hf1) ((hf1) it.next()).clone());
        }
        return cf1Var;
    }

    public final hf1 d() {
        return this.b;
    }

    public final void e(hf1 hf1Var) {
        this.b = hf1Var;
    }

    public final List f() {
        return this.c;
    }

    public cf1(hf1 hf1Var) {
        this.a = hf1Var;
        this.b = (hf1) hf1Var.clone();
        this.c = new ArrayList();
    }
}
