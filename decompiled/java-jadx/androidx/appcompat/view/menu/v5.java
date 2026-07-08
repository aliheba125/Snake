package androidx.appcompat.view.menu;

import java.util.List;

/* loaded from: classes.dex */
public final class v5 extends bz {
    public final String a;
    public final List b;

    public v5(String str, List list) {
        if (str == null) {
            throw new NullPointerException("Null userAgent");
        }
        this.a = str;
        if (list == null) {
            throw new NullPointerException("Null usedDates");
        }
        this.b = list;
    }

    @Override // androidx.appcompat.view.menu.bz
    public List b() {
        return this.b;
    }

    @Override // androidx.appcompat.view.menu.bz
    public String c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof bz)) {
            return false;
        }
        bz bzVar = (bz) obj;
        return this.a.equals(bzVar.c()) && this.b.equals(bzVar.b());
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public String toString() {
        return "HeartBeatResult{userAgent=" + this.a + ", usedDates=" + this.b + "}";
    }
}
