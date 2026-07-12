package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class w31 extends UnsupportedOperationException {
    public final hr m;

    public w31(hr hrVar) {
        this.m = hrVar;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return "Missing ".concat(String.valueOf(this.m));
    }
}
