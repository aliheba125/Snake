package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class rv extends d71 {
    public final String n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rv(av avVar, String str) {
        super(avVar, "Attempting to reuse fragment " + avVar + " with previous ID " + str);
        z50.e(avVar, "fragment");
        z50.e(str, "previousFragmentId");
        this.n = str;
    }
}
