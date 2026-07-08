package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class qa0 extends nh {
    public abstract qa0 F();

    public final String G() {
        qa0 qa0Var;
        qa0 c = fm.c();
        if (this == c) {
            return "Dispatchers.Main";
        }
        try {
            qa0Var = c.F();
        } catch (UnsupportedOperationException unused) {
            qa0Var = null;
        }
        if (this == qa0Var) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }
}
