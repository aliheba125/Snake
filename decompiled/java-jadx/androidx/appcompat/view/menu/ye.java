package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class ye {
    public static final my0 a = new my0("CLOSED");

    public static final ze b(ze zeVar) {
        while (true) {
            Object f = zeVar.f();
            if (f == a) {
                return zeVar;
            }
            ze zeVar2 = (ze) f;
            if (zeVar2 != null) {
                zeVar = zeVar2;
            } else if (zeVar.j()) {
                return zeVar;
            }
        }
    }

    public static final Object c(js0 js0Var, long j, tw twVar) {
        while (true) {
            if (js0Var.o >= j && !js0Var.h()) {
                return ks0.a(js0Var);
            }
            Object f = js0Var.f();
            if (f == a) {
                return ks0.a(a);
            }
            js0 js0Var2 = (js0) ((ze) f);
            if (js0Var2 == null) {
                js0Var2 = (js0) twVar.h(Long.valueOf(js0Var.o + 1), js0Var);
                if (js0Var.l(js0Var2)) {
                    if (js0Var.h()) {
                        js0Var.k();
                    }
                }
            }
            js0Var = js0Var2;
        }
    }
}
