package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class ld {
    public final Object a;
    public final fw b;
    public final Object c;
    public final Throwable d;

    public ld(Object obj, t9 t9Var, fw fwVar, Object obj2, Throwable th) {
        this.a = obj;
        this.b = fwVar;
        this.c = obj2;
        this.d = th;
    }

    public static /* synthetic */ ld b(ld ldVar, Object obj, t9 t9Var, fw fwVar, Object obj2, Throwable th, int i, Object obj3) {
        if ((i & 1) != 0) {
            obj = ldVar.a;
        }
        if ((i & 2) != 0) {
            ldVar.getClass();
            t9Var = null;
        }
        t9 t9Var2 = t9Var;
        if ((i & 4) != 0) {
            fwVar = ldVar.b;
        }
        fw fwVar2 = fwVar;
        if ((i & 8) != 0) {
            obj2 = ldVar.c;
        }
        Object obj4 = obj2;
        if ((i & 16) != 0) {
            th = ldVar.d;
        }
        return ldVar.a(obj, t9Var2, fwVar2, obj4, th);
    }

    public final ld a(Object obj, t9 t9Var, fw fwVar, Object obj2, Throwable th) {
        return new ld(obj, t9Var, fwVar, obj2, th);
    }

    public final boolean c() {
        return this.d != null;
    }

    public final void d(y9 y9Var, Throwable th) {
        fw fwVar = this.b;
        if (fwVar != null) {
            y9Var.m(fwVar, th);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ld)) {
            return false;
        }
        ld ldVar = (ld) obj;
        return z50.a(this.a, ldVar.a) && z50.a(null, null) && z50.a(this.b, ldVar.b) && z50.a(this.c, ldVar.c) && z50.a(this.d, ldVar.d);
    }

    public int hashCode() {
        Object obj = this.a;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 961;
        fw fwVar = this.b;
        int hashCode2 = (hashCode + (fwVar == null ? 0 : fwVar.hashCode())) * 31;
        Object obj2 = this.c;
        int hashCode3 = (hashCode2 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.d;
        return hashCode3 + (th != null ? th.hashCode() : 0);
    }

    public String toString() {
        return "CompletedContinuation(result=" + this.a + ", cancelHandler=" + ((Object) null) + ", onCancellation=" + this.b + ", idempotentResume=" + this.c + ", cancelCause=" + this.d + ')';
    }

    public /* synthetic */ ld(Object obj, t9 t9Var, fw fwVar, Object obj2, Throwable th, int i, lj ljVar) {
        this(obj, (i & 2) != 0 ? null : t9Var, (i & 4) != 0 ? null : fwVar, (i & 8) != 0 ? null : obj2, (i & 16) != 0 ? null : th);
    }
}
