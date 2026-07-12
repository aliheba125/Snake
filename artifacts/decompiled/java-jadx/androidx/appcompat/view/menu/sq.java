package androidx.appcompat.view.menu;

import java.util.List;

/* loaded from: classes.dex */
public final class sq extends iw0 {
    public final Object b;
    public final String c;
    public final String d;
    public final la0 e;
    public final e51 f;
    public final ea1 g;

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[e51.values().length];
            try {
                iArr[e51.STRICT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[e51.LOG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[e51.QUIET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public sq(Object obj, String str, String str2, la0 la0Var, e51 e51Var) {
        List g;
        z50.e(obj, "value");
        z50.e(str, "tag");
        z50.e(str2, "message");
        z50.e(la0Var, "logger");
        z50.e(e51Var, "verificationMode");
        this.b = obj;
        this.c = str;
        this.d = str2;
        this.e = la0Var;
        this.f = e51Var;
        ea1 ea1Var = new ea1(b(obj, str2));
        StackTraceElement[] stackTrace = ea1Var.getStackTrace();
        z50.d(stackTrace, "stackTrace");
        g = x4.g(stackTrace, 2);
        ea1Var.setStackTrace((StackTraceElement[]) g.toArray(new StackTraceElement[0]));
        this.g = ea1Var;
    }

    @Override // androidx.appcompat.view.menu.iw0
    public Object a() {
        int i = a.a[this.f.ordinal()];
        if (i == 1) {
            throw this.g;
        }
        if (i == 2) {
            this.e.a(this.c, b(this.b, this.d));
            return null;
        }
        if (i == 3) {
            return null;
        }
        throw new ye0();
    }

    @Override // androidx.appcompat.view.menu.iw0
    public iw0 c(String str, fw fwVar) {
        z50.e(str, "message");
        z50.e(fwVar, "condition");
        return this;
    }
}
