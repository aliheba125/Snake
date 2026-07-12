package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.ss1;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class if2 {
    public String a;
    public boolean b;
    public rs1 c;
    public BitSet d;
    public BitSet e;
    public Map f;
    public Map g;
    public final /* synthetic */ we2 h;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.appcompat.view.menu.is1$a, androidx.appcompat.view.menu.q02$b] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r7v5, types: [androidx.appcompat.view.menu.rs1$a] */
    public final is1 a(int i) {
        ArrayList arrayList;
        ?? arrayList2;
        ?? M = is1.M();
        M.r(i);
        M.u(this.b);
        rs1 rs1Var = this.c;
        if (rs1Var != null) {
            M.t(rs1Var);
        }
        ?? y = rs1.V().u(i92.M(this.d)).y(i92.M(this.e));
        if (this.f == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(this.f.size());
            Iterator it = this.f.keySet().iterator();
            while (it.hasNext()) {
                int intValue = ((Integer) it.next()).intValue();
                Long l = (Long) this.f.get(Integer.valueOf(intValue));
                if (l != null) {
                    arrayList.add((js1) ((q02) js1.L().r(intValue).s(l.longValue()).j()));
                }
            }
        }
        if (arrayList != null) {
            y.s(arrayList);
        }
        if (this.g == null) {
            arrayList2 = Collections.emptyList();
        } else {
            arrayList2 = new ArrayList(this.g.size());
            for (Integer num : this.g.keySet()) {
                ss1.a r = ss1.M().r(num.intValue());
                List list = (List) this.g.get(num);
                if (list != null) {
                    Collections.sort(list);
                    r.s(list);
                }
                arrayList2.add((ss1) ((q02) r.j()));
            }
        }
        y.w(arrayList2);
        M.s(y);
        return (is1) ((q02) M.j());
    }

    public final void c(df1 df1Var) {
        int a = df1Var.a();
        Boolean bool = df1Var.c;
        if (bool != null) {
            this.e.set(a, bool.booleanValue());
        }
        Boolean bool2 = df1Var.d;
        if (bool2 != null) {
            this.d.set(a, bool2.booleanValue());
        }
        if (df1Var.e != null) {
            Long l = (Long) this.f.get(Integer.valueOf(a));
            long longValue = df1Var.e.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                this.f.put(Integer.valueOf(a), Long.valueOf(longValue));
            }
        }
        if (df1Var.f != null) {
            List list = (List) this.g.get(Integer.valueOf(a));
            if (list == null) {
                list = new ArrayList();
                this.g.put(Integer.valueOf(a), list);
            }
            if (df1Var.j()) {
                list.clear();
            }
            if (gb2.a() && this.h.e().D(this.a, si1.j0) && df1Var.i()) {
                list.clear();
            }
            if (!gb2.a() || !this.h.e().D(this.a, si1.j0)) {
                list.add(Long.valueOf(df1Var.f.longValue() / 1000));
                return;
            }
            long longValue2 = df1Var.f.longValue() / 1000;
            if (list.contains(Long.valueOf(longValue2))) {
                return;
            }
            list.add(Long.valueOf(longValue2));
        }
    }

    public if2(we2 we2Var, String str) {
        this.h = we2Var;
        this.a = str;
        this.b = true;
        this.d = new BitSet();
        this.e = new BitSet();
        this.f = new o4();
        this.g = new o4();
    }

    public if2(we2 we2Var, String str, rs1 rs1Var, BitSet bitSet, BitSet bitSet2, Map map, Map map2) {
        this.h = we2Var;
        this.a = str;
        this.d = bitSet;
        this.e = bitSet2;
        this.f = map;
        this.g = new o4();
        if (map2 != null) {
            for (Integer num : map2.keySet()) {
                ArrayList arrayList = new ArrayList();
                arrayList.add((Long) map2.get(num));
                this.g.put(num, arrayList);
            }
        }
        this.b = false;
        this.c = rs1Var;
    }
}
