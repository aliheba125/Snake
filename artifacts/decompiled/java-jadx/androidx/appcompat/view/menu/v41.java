package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class v41 extends iw0 {
    public final Object b;
    public final String c;
    public final e51 d;
    public final la0 e;

    public v41(Object obj, String str, e51 e51Var, la0 la0Var) {
        z50.e(obj, "value");
        z50.e(str, "tag");
        z50.e(e51Var, "verificationMode");
        z50.e(la0Var, "logger");
        this.b = obj;
        this.c = str;
        this.d = e51Var;
        this.e = la0Var;
    }

    @Override // androidx.appcompat.view.menu.iw0
    public Object a() {
        return this.b;
    }

    @Override // androidx.appcompat.view.menu.iw0
    public iw0 c(String str, fw fwVar) {
        z50.e(str, "message");
        z50.e(fwVar, "condition");
        return ((Boolean) fwVar.i(this.b)).booleanValue() ? this : new sq(this.b, this.c, str, this.e, this.d);
    }
}
