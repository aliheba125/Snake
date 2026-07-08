package androidx.appcompat.view.menu;

import java.util.Set;

/* loaded from: classes.dex */
public final class f21 implements e21 {
    public final Set a;
    public final d21 b;
    public final i21 c;

    public f21(Set set, d21 d21Var, i21 i21Var) {
        this.a = set;
        this.b = d21Var;
        this.c = i21Var;
    }

    @Override // androidx.appcompat.view.menu.e21
    public b21 a(String str, Class cls, lo loVar, r11 r11Var) {
        if (this.a.contains(loVar)) {
            return new h21(this.b, str, loVar, r11Var, this.c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", loVar, this.a));
    }
}
