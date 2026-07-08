package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class tr extends Exception {
    public tr() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tr(String str) {
        super(str);
        mj0.f(str, "Detail message must not be empty");
    }
}
