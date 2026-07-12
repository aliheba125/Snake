package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class j6 extends tw0 {
    public final long a;
    public final long b;
    public final long c;

    public j6(long j, long j2, long j3) {
        this.a = j;
        this.b = j2;
        this.c = j3;
    }

    @Override // androidx.appcompat.view.menu.tw0
    public long b() {
        return this.b;
    }

    @Override // androidx.appcompat.view.menu.tw0
    public long c() {
        return this.a;
    }

    @Override // androidx.appcompat.view.menu.tw0
    public long d() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tw0)) {
            return false;
        }
        tw0 tw0Var = (tw0) obj;
        return this.a == tw0Var.c() && this.b == tw0Var.b() && this.c == tw0Var.d();
    }

    public int hashCode() {
        long j = this.a;
        long j2 = this.b;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        long j3 = this.c;
        return i ^ ((int) ((j3 >>> 32) ^ j3));
    }

    public String toString() {
        return "StartupTime{epochMillis=" + this.a + ", elapsedRealtime=" + this.b + ", uptimeMillis=" + this.c + "}";
    }
}
