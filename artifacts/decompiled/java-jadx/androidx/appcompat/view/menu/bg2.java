package androidx.appcompat.view.menu;

import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class bg2 extends df1 {
    public pq1 g;
    public final /* synthetic */ we2 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bg2(we2 we2Var, String str, int i, pq1 pq1Var) {
        super(str, i);
        this.h = we2Var;
        this.g = pq1Var;
    }

    @Override // androidx.appcompat.view.menu.df1
    public final int a() {
        return this.g.L();
    }

    @Override // androidx.appcompat.view.menu.df1
    public final boolean i() {
        return this.g.U();
    }

    @Override // androidx.appcompat.view.menu.df1
    public final boolean j() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x03b9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x03b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean k(Long l, Long l2, ks1 ks1Var, long j, gi1 gi1Var, boolean z) {
        Boolean e;
        Object[] objArr = gb2.a() && this.h.e().D(this.a, si1.j0);
        long j2 = this.g.T() ? gi1Var.e : j;
        r7 = null;
        r7 = null;
        r7 = null;
        r7 = null;
        r7 = null;
        r7 = null;
        r7 = null;
        r7 = null;
        r7 = null;
        r7 = null;
        r7 = null;
        Boolean bool = null;
        if (this.h.l().C(2)) {
            this.h.l().K().d("Evaluating filter. audience, filter, event", Integer.valueOf(this.b), this.g.V() ? Integer.valueOf(this.g.L()) : null, this.h.g().c(this.g.P()));
            this.h.l().K().b("Filter definition", this.h.o().I(this.g));
        }
        if (!this.g.V() || this.g.L() > 256) {
            this.h.l().L().c("Invalid event filter ID. appId, id", pt1.v(this.a), String.valueOf(this.g.V() ? Integer.valueOf(this.g.L()) : null));
            return false;
        }
        Object[] objArr2 = this.g.R() || this.g.S() || this.g.T();
        if (z && objArr2 != true) {
            this.h.l().K().c("Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.b), this.g.V() ? Integer.valueOf(this.g.L()) : null);
            return true;
        }
        pq1 pq1Var = this.g;
        String b0 = ks1Var.b0();
        if (pq1Var.U()) {
            Boolean c = df1.c(j2, pq1Var.O());
            if (c != null) {
                if (!c.booleanValue()) {
                    bool = Boolean.FALSE;
                }
            }
            this.h.l().K().b("Event filter result", bool != null ? "null" : bool);
            if (bool != null) {
                return false;
            }
            Boolean bool2 = Boolean.TRUE;
            this.c = bool2;
            if (!bool.booleanValue()) {
                return true;
            }
            this.d = bool2;
            if (objArr2 != false && ks1Var.f0()) {
                Long valueOf = Long.valueOf(ks1Var.Y());
                if (this.g.S()) {
                    if (objArr != false && this.g.U()) {
                        valueOf = l;
                    }
                    this.f = valueOf;
                } else {
                    if (objArr != false && this.g.U()) {
                        valueOf = l2;
                    }
                    this.e = valueOf;
                }
            }
            return true;
        }
        HashSet hashSet = new HashSet();
        Iterator it = pq1Var.Q().iterator();
        while (true) {
            if (!it.hasNext()) {
                o4 o4Var = new o4();
                Iterator it2 = ks1Var.c0().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        Iterator it3 = pq1Var.Q().iterator();
                        while (true) {
                            if (!it3.hasNext()) {
                                bool = Boolean.TRUE;
                                break;
                            }
                            qq1 qq1Var = (qq1) it3.next();
                            boolean z2 = qq1Var.O() && qq1Var.N();
                            String M = qq1Var.M();
                            if (M.isEmpty()) {
                                this.h.l().L().b("Event has empty param name. event", this.h.g().c(b0));
                                break;
                            }
                            Object obj = o4Var.get(M);
                            if (obj instanceof Long) {
                                if (!qq1Var.P()) {
                                    this.h.l().L().c("No number filter for long param. event, param", this.h.g().c(b0), this.h.g().f(M));
                                    break;
                                }
                                Boolean c2 = df1.c(((Long) obj).longValue(), qq1Var.K());
                                if (c2 == null) {
                                    break;
                                }
                                if (c2.booleanValue() == z2) {
                                    bool = Boolean.FALSE;
                                    break;
                                }
                            } else if (obj instanceof Double) {
                                if (!qq1Var.P()) {
                                    this.h.l().L().c("No number filter for double param. event, param", this.h.g().c(b0), this.h.g().f(M));
                                    break;
                                }
                                Boolean b = df1.b(((Double) obj).doubleValue(), qq1Var.K());
                                if (b == null) {
                                    break;
                                }
                                if (b.booleanValue() == z2) {
                                    bool = Boolean.FALSE;
                                    break;
                                }
                            } else if (obj instanceof String) {
                                if (!qq1Var.R()) {
                                    if (!qq1Var.P()) {
                                        this.h.l().L().c("No filter for String param. event, param", this.h.g().c(b0), this.h.g().f(M));
                                        break;
                                    }
                                    String str = (String) obj;
                                    if (!i92.f0(str)) {
                                        this.h.l().L().c("Invalid param value for number filter. event, param", this.h.g().c(b0), this.h.g().f(M));
                                        break;
                                    }
                                    e = df1.e(str, qq1Var.K());
                                } else {
                                    e = df1.g((String) obj, qq1Var.L(), this.h.l());
                                }
                                if (e == null) {
                                    break;
                                }
                                if (e.booleanValue() == z2) {
                                    bool = Boolean.FALSE;
                                    break;
                                }
                            } else if (obj == null) {
                                this.h.l().K().c("Missing param for filter. event, param", this.h.g().c(b0), this.h.g().f(M));
                                bool = Boolean.FALSE;
                            } else {
                                this.h.l().L().c("Unknown param type. event, param", this.h.g().c(b0), this.h.g().f(M));
                            }
                        }
                    } else {
                        ms1 ms1Var = (ms1) it2.next();
                        if (hashSet.contains(ms1Var.c0())) {
                            if (!ms1Var.h0()) {
                                if (!ms1Var.f0()) {
                                    if (!ms1Var.j0()) {
                                        this.h.l().L().c("Unknown value for param. event, param", this.h.g().c(b0), this.h.g().f(ms1Var.c0()));
                                        break;
                                    }
                                    o4Var.put(ms1Var.c0(), ms1Var.d0());
                                } else {
                                    o4Var.put(ms1Var.c0(), ms1Var.f0() ? Double.valueOf(ms1Var.G()) : null);
                                }
                            } else {
                                o4Var.put(ms1Var.c0(), ms1Var.h0() ? Long.valueOf(ms1Var.X()) : null);
                            }
                        }
                    }
                }
            } else {
                qq1 qq1Var2 = (qq1) it.next();
                if (qq1Var2.M().isEmpty()) {
                    this.h.l().L().b("null or empty param name in filter. event", this.h.g().c(b0));
                    break;
                }
                hashSet.add(qq1Var2.M());
            }
        }
        this.h.l().K().b("Event filter result", bool != null ? "null" : bool);
        if (bool != null) {
        }
    }
}
