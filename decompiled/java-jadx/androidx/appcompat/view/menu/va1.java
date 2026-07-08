package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class va1 extends d71 {
    public final av n;
    public final int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public va1(av avVar, av avVar2, int i) {
        super(avVar, "Attempting to nest fragment " + avVar + " within the view of parent fragment " + avVar2 + " via container with ID " + i + " without using parent's childFragmentManager");
        z50.e(avVar, "fragment");
        z50.e(avVar2, "expectedParentFragment");
        this.n = avVar2;
        this.o = i;
    }
}
