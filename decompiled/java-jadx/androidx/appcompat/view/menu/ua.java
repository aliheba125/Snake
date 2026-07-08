package androidx.appcompat.view.menu;

import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class ua implements gx {
    public final kh a;
    public final int b;
    public final u8 c;

    public static final class a extends ly0 implements tw {
        public int q;
        public /* synthetic */ Object r;
        public final /* synthetic */ ts s;
        public final /* synthetic */ ua t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ts tsVar, ua uaVar, xg xgVar) {
            super(2, xgVar);
            this.s = tsVar;
            this.t = uaVar;
        }

        @Override // androidx.appcompat.view.menu.y7
        public final xg a(Object obj, xg xgVar) {
            a aVar = new a(this.s, this.t, xgVar);
            aVar.r = obj;
            return aVar;
        }

        @Override // androidx.appcompat.view.menu.y7
        public final Object k(Object obj) {
            Object c;
            c = c60.c();
            int i = this.q;
            if (i == 0) {
                op0.b(obj);
                th thVar = (th) this.r;
                ts tsVar = this.s;
                vn0 i2 = this.t.i(thVar);
                this.q = 1;
                if (us.b(tsVar, i2, this) == c) {
                    return c;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                op0.b(obj);
            }
            return r31.a;
        }

        @Override // androidx.appcompat.view.menu.tw
        /* renamed from: o, reason: merged with bridge method [inline-methods] */
        public final Object h(th thVar, xg xgVar) {
            return ((a) a(thVar, xgVar)).k(r31.a);
        }
    }

    public static final class b extends ly0 implements tw {
        public int q;
        public /* synthetic */ Object r;

        public b(xg xgVar) {
            super(2, xgVar);
        }

        @Override // androidx.appcompat.view.menu.y7
        public final xg a(Object obj, xg xgVar) {
            b bVar = ua.this.new b(xgVar);
            bVar.r = obj;
            return bVar;
        }

        @Override // androidx.appcompat.view.menu.y7
        public final Object k(Object obj) {
            Object c;
            c = c60.c();
            int i = this.q;
            if (i == 0) {
                op0.b(obj);
                gk0 gk0Var = (gk0) this.r;
                ua uaVar = ua.this;
                this.q = 1;
                if (uaVar.e(gk0Var, this) == c) {
                    return c;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                op0.b(obj);
            }
            return r31.a;
        }

        @Override // androidx.appcompat.view.menu.tw
        /* renamed from: o, reason: merged with bridge method [inline-methods] */
        public final Object h(gk0 gk0Var, xg xgVar) {
            return ((b) a(gk0Var, xgVar)).k(r31.a);
        }
    }

    public ua(kh khVar, int i, u8 u8Var) {
        this.a = khVar;
        this.b = i;
        this.c = u8Var;
    }

    public static /* synthetic */ Object d(ua uaVar, ts tsVar, xg xgVar) {
        Object c;
        Object b2 = uh.b(new a(tsVar, uaVar, null), xgVar);
        c = c60.c();
        return b2 == c ? b2 : r31.a;
    }

    public String a() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.ss
    public Object b(ts tsVar, xg xgVar) {
        return d(this, tsVar, xgVar);
    }

    @Override // androidx.appcompat.view.menu.gx
    public ss c(kh khVar, int i, u8 u8Var) {
        kh o = khVar.o(this.a);
        if (u8Var == u8.SUSPEND) {
            int i2 = this.b;
            if (i2 != -3) {
                if (i != -3) {
                    if (i2 != -2) {
                        if (i != -2) {
                            i += i2;
                            if (i < 0) {
                                i = Integer.MAX_VALUE;
                            }
                        }
                    }
                }
                i = i2;
            }
            u8Var = this.c;
        }
        return (z50.a(o, this.a) && i == this.b && u8Var == this.c) ? this : f(o, i, u8Var);
    }

    public abstract Object e(gk0 gk0Var, xg xgVar);

    public abstract ua f(kh khVar, int i, u8 u8Var);

    public final tw g() {
        return new b(null);
    }

    public final int h() {
        int i = this.b;
        if (i == -3) {
            return -2;
        }
        return i;
    }

    public vn0 i(th thVar) {
        return ek0.c(thVar, this.a, h(), this.c, xh.ATOMIC, null, g(), 16, null);
    }

    public String toString() {
        String r;
        ArrayList arrayList = new ArrayList(4);
        String a2 = a();
        if (a2 != null) {
            arrayList.add(a2);
        }
        if (this.a != bo.m) {
            arrayList.add("context=" + this.a);
        }
        if (this.b != -3) {
            arrayList.add("capacity=" + this.b);
        }
        if (this.c != u8.SUSPEND) {
            arrayList.add("onBufferOverflow=" + this.c);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(hj.a(this));
        sb.append('[');
        r = ad.r(arrayList, ", ", null, null, 0, null, null, 62, null);
        sb.append(r);
        sb.append(']');
        return sb.toString();
    }
}
