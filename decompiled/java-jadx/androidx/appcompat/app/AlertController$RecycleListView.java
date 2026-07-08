package androidx.appcompat.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ListView;
import androidx.appcompat.view.menu.mn0;

/* loaded from: classes.dex */
public class AlertController$RecycleListView extends ListView {
    public final int a;
    public final int b;

    public AlertController$RecycleListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mn0.x1);
        this.b = obtainStyledAttributes.getDimensionPixelOffset(mn0.y1, -1);
        this.a = obtainStyledAttributes.getDimensionPixelOffset(mn0.z1, -1);
    }
}
