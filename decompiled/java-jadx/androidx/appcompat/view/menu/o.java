package androidx.appcompat.view.menu;

import java.util.Random;

/* loaded from: classes.dex */
public abstract class o extends qn0 {
    @Override // androidx.appcompat.view.menu.qn0
    public int b() {
        return c().nextInt();
    }

    public abstract Random c();
}
