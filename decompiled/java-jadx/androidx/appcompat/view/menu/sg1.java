package androidx.appcompat.view.menu;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class sg1 extends gg1 {
    public final List o;
    public final List p;
    public pw1 q;

    public sg1(sg1 sg1Var) {
        super(sg1Var.m);
        ArrayList arrayList = new ArrayList(sg1Var.o.size());
        this.o = arrayList;
        arrayList.addAll(sg1Var.o);
        ArrayList arrayList2 = new ArrayList(sg1Var.p.size());
        this.p = arrayList2;
        arrayList2.addAll(sg1Var.p);
        this.q = sg1Var.q;
    }

    @Override // androidx.appcompat.view.menu.gg1
    public final qg1 a(pw1 pw1Var, List list) {
        pw1 d = this.q.d();
        for (int i = 0; i < this.o.size(); i++) {
            if (i < list.size()) {
                d.e((String) this.o.get(i), pw1Var.b((qg1) list.get(i)));
            } else {
                d.e((String) this.o.get(i), qg1.e);
            }
        }
        for (qg1 qg1Var : this.p) {
            qg1 b = d.b(qg1Var);
            if (b instanceof wg1) {
                b = d.b(qg1Var);
            }
            if (b instanceof cg1) {
                return ((cg1) b).a();
            }
        }
        return qg1.e;
    }

    @Override // androidx.appcompat.view.menu.gg1, androidx.appcompat.view.menu.qg1
    public final qg1 c() {
        return new sg1(this);
    }

    public sg1(String str, List list, List list2, pw1 pw1Var) {
        super(str);
        this.o = new ArrayList();
        this.q = pw1Var;
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.o.add(((qg1) it.next()).g());
            }
        }
        this.p = new ArrayList(list2);
    }
}
