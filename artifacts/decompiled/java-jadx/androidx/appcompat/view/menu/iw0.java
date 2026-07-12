package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class iw0 {
    public static final a a = new a(null);

    public static final class a {
        public a() {
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }

        public static /* synthetic */ iw0 b(a aVar, Object obj, String str, e51 e51Var, la0 la0Var, int i, Object obj2) {
            if ((i & 2) != 0) {
                e51Var = z8.a.a();
            }
            if ((i & 4) != 0) {
                la0Var = g2.a;
            }
            return aVar.a(obj, str, e51Var, la0Var);
        }

        public final iw0 a(Object obj, String str, e51 e51Var, la0 la0Var) {
            z50.e(obj, "<this>");
            z50.e(str, "tag");
            z50.e(e51Var, "verificationMode");
            z50.e(la0Var, "logger");
            return new v41(obj, str, e51Var, la0Var);
        }
    }

    public abstract Object a();

    public final String b(Object obj, String str) {
        z50.e(obj, "value");
        z50.e(str, "message");
        return str + " value: " + obj;
    }

    public abstract iw0 c(String str, fw fwVar);
}
