package androidx.appcompat.view.menu;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class fi1 {
    public Map a = new HashMap();
    public jj1 b = new jj1();

    public fi1() {
        b(new ch1());
        b(new di1());
        b(new hi1());
        b(new pi1());
        b(new ti1());
        b(new fj1());
        b(new pj1());
    }

    public final qg1 a(pw1 pw1Var, qg1 qg1Var) {
        iu1.b(pw1Var);
        if (!(qg1Var instanceof wg1)) {
            return qg1Var;
        }
        wg1 wg1Var = (wg1) qg1Var;
        ArrayList b = wg1Var.b();
        String a = wg1Var.a();
        return (this.a.containsKey(a) ? (gh1) this.a.get(a) : this.b).b(a, pw1Var, b);
    }

    public final void b(gh1 gh1Var) {
        Iterator it = gh1Var.a.iterator();
        while (it.hasNext()) {
            this.a.put(((tj1) it.next()).toString(), gh1Var);
        }
    }
}
