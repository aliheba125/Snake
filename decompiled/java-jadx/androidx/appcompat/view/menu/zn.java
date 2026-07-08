package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class zn implements t40 {
    public final boolean m;

    public zn(boolean z) {
        this.m = z;
    }

    @Override // androidx.appcompat.view.menu.t40
    public boolean c() {
        return this.m;
    }

    @Override // androidx.appcompat.view.menu.t40
    public ze0 f() {
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Empty{");
        sb.append(c() ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
