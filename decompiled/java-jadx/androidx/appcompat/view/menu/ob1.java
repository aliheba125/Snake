package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.v7;

/* loaded from: classes.dex */
public final class ob1 implements v7.a {
    public final /* synthetic */ ay a;

    public ob1(ay ayVar) {
        this.a = ayVar;
    }

    @Override // androidx.appcompat.view.menu.v7.a
    public final void a(boolean z) {
        ay ayVar = this.a;
        ayVar.A.sendMessage(ayVar.A.obtainMessage(1, Boolean.valueOf(z)));
    }
}
