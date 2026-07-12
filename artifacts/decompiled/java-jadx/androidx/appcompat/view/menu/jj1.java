package androidx.appcompat.view.menu;

import java.util.List;

/* loaded from: classes.dex */
public final class jj1 extends gh1 {
    @Override // androidx.appcompat.view.menu.gh1
    public final qg1 b(String str, pw1 pw1Var, List list) {
        if (str == null || str.isEmpty() || !pw1Var.g(str)) {
            throw new IllegalArgumentException(String.format("Command not found: %s", str));
        }
        qg1 c = pw1Var.c(str);
        if (c instanceof gg1) {
            return ((gg1) c).a(pw1Var, list);
        }
        throw new IllegalArgumentException(String.format("Function %s is not defined", str));
    }
}
