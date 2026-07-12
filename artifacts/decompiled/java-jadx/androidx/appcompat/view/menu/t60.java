package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public class t60 extends b70 implements kd {
    public final boolean o;

    public t60(q60 q60Var) {
        super(true);
        f0(q60Var);
        this.o = H0();
    }

    public final boolean H0() {
        b70 x;
        jb b0 = b0();
        kb kbVar = b0 instanceof kb ? (kb) b0 : null;
        if (kbVar != null && (x = kbVar.x()) != null) {
            while (!x.Y()) {
                jb b02 = x.b0();
                kb kbVar2 = b02 instanceof kb ? (kb) b02 : null;
                if (kbVar2 != null && (x = kbVar2.x()) != null) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.b70
    public boolean Y() {
        return this.o;
    }

    @Override // androidx.appcompat.view.menu.b70
    public boolean Z() {
        return true;
    }
}
