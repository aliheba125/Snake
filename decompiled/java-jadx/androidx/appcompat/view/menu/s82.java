package androidx.appcompat.view.menu;

import java.util.Map;

/* loaded from: classes.dex */
public final class s82 implements au1 {
    public final /* synthetic */ String a;
    public final /* synthetic */ o82 b;

    public s82(o82 o82Var, String str) {
        this.b = o82Var;
        this.a = str;
    }

    @Override // androidx.appcompat.view.menu.au1
    public final void a(String str, int i, Throwable th, byte[] bArr, Map map) {
        this.b.I(true, i, th, bArr, this.a);
    }
}
