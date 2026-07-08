package androidx.appcompat.view.menu;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class gh1 {
    public final List a = new ArrayList();

    public final qg1 a(String str) {
        if (!this.a.contains(iu1.c(str))) {
            throw new IllegalArgumentException("Command not supported");
        }
        throw new UnsupportedOperationException("Command not implemented: " + str);
    }

    public abstract qg1 b(String str, pw1 pw1Var, List list);
}
