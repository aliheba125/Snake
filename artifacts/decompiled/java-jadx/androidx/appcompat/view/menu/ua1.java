package androidx.appcompat.view.menu;

import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class ua1 extends d71 {
    public final ViewGroup n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ua1(av avVar, ViewGroup viewGroup) {
        super(avVar, "Attempting to add fragment " + avVar + " to container " + viewGroup + " which is not a FragmentContainerView");
        z50.e(avVar, "fragment");
        z50.e(viewGroup, "container");
        this.n = viewGroup;
    }
}
