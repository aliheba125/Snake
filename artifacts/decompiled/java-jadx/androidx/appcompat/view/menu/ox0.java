package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class ox0 {
    public static void a(Appendable appendable, Object obj, fw fwVar) {
        z50.e(appendable, "<this>");
        if (fwVar != null) {
            appendable.append((CharSequence) fwVar.i(obj));
            return;
        }
        if (obj == null || (obj instanceof CharSequence)) {
            appendable.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            appendable.append(((Character) obj).charValue());
        } else {
            appendable.append(String.valueOf(obj));
        }
    }
}
