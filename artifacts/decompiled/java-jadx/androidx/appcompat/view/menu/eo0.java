package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public class eo0 {
    public n70 a(ex exVar) {
        return exVar;
    }

    public k70 b(Class cls) {
        return new pb(cls);
    }

    public m70 c(Class cls, String str) {
        return new jh0(cls, str);
    }

    public o70 d(qk0 qk0Var) {
        return qk0Var;
    }

    public String e(dx dxVar) {
        String obj = dxVar.getClass().getGenericInterfaces()[0].toString();
        return obj.startsWith("kotlin.jvm.functions.") ? obj.substring(21) : obj;
    }

    public String f(g80 g80Var) {
        return e(g80Var);
    }
}
