package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class d71 extends RuntimeException {
    public final av m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d71(av avVar, String str) {
        super(str);
        z50.e(avVar, "fragment");
        this.m = avVar;
    }

    public final av a() {
        return this.m;
    }
}
