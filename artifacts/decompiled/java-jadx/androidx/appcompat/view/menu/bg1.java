package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public enum bg1 {
    UNSET('0'),
    REMOTE_DEFAULT('1'),
    REMOTE_DELEGATION('2'),
    MANIFEST('3'),
    INITIALIZATION('4'),
    API('5'),
    CHILD_ACCOUNT('6'),
    FAILSAFE('9');

    public final char m;

    bg1(char c) {
        this.m = c;
    }

    public static bg1 e(char c) {
        for (bg1 bg1Var : values()) {
            if (bg1Var.m == c) {
                return bg1Var;
            }
        }
        return UNSET;
    }
}
