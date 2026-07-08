package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class rd0 extends qa0 implements sk {
    public final Throwable o;
    public final String p;

    public rd0(Throwable th, String str) {
        this.o = th;
        this.p = str;
    }

    @Override // androidx.appcompat.view.menu.nh
    public boolean D(kh khVar) {
        I();
        throw new d80();
    }

    @Override // androidx.appcompat.view.menu.qa0
    public qa0 F() {
        return this;
    }

    @Override // androidx.appcompat.view.menu.nh
    /* renamed from: H, reason: merged with bridge method [inline-methods] */
    public Void A(kh khVar, Runnable runnable) {
        I();
        throw new d80();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0023, code lost:
    
        if (r1 == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Void I() {
        String str;
        if (this.o == null) {
            ta0.d();
            throw new d80();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Module with the Main dispatcher had failed to initialize");
        String str2 = this.p;
        if (str2 != null) {
            str = ". " + str2;
        }
        str = "";
        sb.append(str);
        throw new IllegalStateException(sb.toString(), this.o);
    }

    @Override // androidx.appcompat.view.menu.nh
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Dispatchers.Main[missing");
        if (this.o != null) {
            str = ", cause=" + this.o;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(']');
        return sb.toString();
    }
}
