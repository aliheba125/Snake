package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class b6 extends ia0 {
    public final long a;

    public b6(long j) {
        this.a = j;
    }

    @Override // androidx.appcompat.view.menu.ia0
    public long c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof ia0) && this.a == ((ia0) obj).c();
    }

    public int hashCode() {
        long j = this.a;
        return ((int) (j ^ (j >>> 32))) ^ 1000003;
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.a + "}";
    }
}
