package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class ng0 {

    public static final class a extends g80 implements fw {
        public final /* synthetic */ fw n;
        public final /* synthetic */ Object o;
        public final /* synthetic */ kh p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(fw fwVar, Object obj, kh khVar) {
            super(1);
            this.n = fwVar;
            this.o = obj;
            this.p = khVar;
        }

        public final void a(Throwable th) {
            ng0.b(this.n, this.o, this.p);
        }

        @Override // androidx.appcompat.view.menu.fw
        public /* bridge */ /* synthetic */ Object i(Object obj) {
            a((Throwable) obj);
            return r31.a;
        }
    }

    public static final fw a(fw fwVar, Object obj, kh khVar) {
        return new a(fwVar, obj, khVar);
    }

    public static final void b(fw fwVar, Object obj, kh khVar) {
        k31 c = c(fwVar, obj, null);
        if (c != null) {
            rh.a(khVar, c);
        }
    }

    public static final k31 c(fw fwVar, Object obj, k31 k31Var) {
        try {
            fwVar.i(obj);
        } catch (Throwable th) {
            if (k31Var == null || k31Var.getCause() == th) {
                return new k31("Exception in undelivered element handler for " + obj, th);
            }
            pp.a(k31Var, th);
        }
        return k31Var;
    }

    public static /* synthetic */ k31 d(fw fwVar, Object obj, k31 k31Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            k31Var = null;
        }
        return c(fwVar, obj, k31Var);
    }
}
