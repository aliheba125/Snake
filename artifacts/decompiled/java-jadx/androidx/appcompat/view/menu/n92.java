package androidx.appcompat.view.menu;

import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class n92 extends og1 {
    public final cf1 n;

    public n92(cf1 cf1Var) {
        this.n = cf1Var;
    }

    @Override // androidx.appcompat.view.menu.og1, androidx.appcompat.view.menu.qg1
    public final qg1 p(String str, pw1 pw1Var, List list) {
        str.hashCode();
        switch (str) {
            case "getEventName":
                iu1.g("getEventName", 0, list);
                return new ug1(this.n.d().e());
            case "getTimestamp":
                iu1.g("getTimestamp", 0, list);
                return new yf1(Double.valueOf(this.n.d().a()));
            case "getParamValue":
                iu1.g("getParamValue", 1, list);
                return y02.b(this.n.d().b(pw1Var.b((qg1) list.get(0)).g()));
            case "getParams":
                iu1.g("getParams", 0, list);
                Map g = this.n.d().g();
                og1 og1Var = new og1();
                for (String str2 : g.keySet()) {
                    og1Var.n(str2, y02.b(g.get(str2)));
                }
                return og1Var;
            case "setParamValue":
                iu1.g("setParamValue", 2, list);
                String g2 = pw1Var.b((qg1) list.get(0)).g();
                qg1 b = pw1Var.b((qg1) list.get(1));
                this.n.d().d(g2, iu1.d(b));
                return b;
            case "setEventName":
                iu1.g("setEventName", 1, list);
                qg1 b2 = pw1Var.b((qg1) list.get(0));
                if (qg1.e.equals(b2) || qg1.f.equals(b2)) {
                    throw new IllegalArgumentException("Illegal event name");
                }
                this.n.d().f(b2.g());
                return new ug1(b2.g());
            default:
                return super.p(str, pw1Var, list);
        }
    }
}
