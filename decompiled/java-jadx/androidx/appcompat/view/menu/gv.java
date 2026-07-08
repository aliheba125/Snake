package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.FragmentContainerView;

/* loaded from: classes.dex */
public class gv implements LayoutInflater.Factory2 {
    public final mv a;

    public gv(mv mvVar) {
        this.a = mvVar;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.a);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, jn0.a);
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(jn0.b);
        }
        int resourceId = obtainStyledAttributes.getResourceId(jn0.c, -1);
        String string = obtainStyledAttributes.getString(jn0.d);
        obtainStyledAttributes.recycle();
        if (attributeValue == null || !ev.b(context.getClassLoader(), attributeValue)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        av X = resourceId != -1 ? this.a.X(resourceId) : null;
        if (X == null && string != null) {
            X = this.a.Y(string);
        }
        if (X == null && id != -1) {
            X = this.a.X(id);
        }
        if (X == null) {
            av a = this.a.i0().a(context.getClassLoader(), attributeValue);
            a.o = true;
            if (resourceId == 0) {
                resourceId = id;
            }
            a.w = resourceId;
            a.x = id;
            a.y = string;
            a.p = true;
            mv mvVar = this.a;
            a.t = mvVar;
            mvVar.j0();
            this.a.j0();
            throw null;
        }
        if (!X.p) {
            X.p = true;
            mv mvVar2 = this.a;
            X.t = mvVar2;
            mvVar2.j0();
            this.a.j0();
            throw null;
        }
        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
    }
}
