package androidx.appcompat.view.menu;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.appcompat.view.menu.ob0;

/* loaded from: classes.dex */
public abstract class mi extends ob0 {
    public b y;

    public static class c extends mi {
        public c(b bVar) {
            super(bVar);
        }

        @Override // androidx.appcompat.view.menu.ob0
        public void r(Canvas canvas) {
            if (this.y.w.isEmpty()) {
                super.r(canvas);
                return;
            }
            canvas.save();
            canvas.clipOutRect(this.y.w);
            super.r(canvas);
            canvas.restore();
        }
    }

    public static mi f0(b bVar) {
        return new c(bVar);
    }

    public static mi g0(st0 st0Var) {
        if (st0Var == null) {
            st0Var = new st0();
        }
        return f0(new b(st0Var, new RectF()));
    }

    public boolean h0() {
        return !this.y.w.isEmpty();
    }

    public void i0() {
        j0(0.0f, 0.0f, 0.0f, 0.0f);
    }

    public void j0(float f, float f2, float f3, float f4) {
        if (f == this.y.w.left && f2 == this.y.w.top && f3 == this.y.w.right && f4 == this.y.w.bottom) {
            return;
        }
        this.y.w.set(f, f2, f3, f4);
        invalidateSelf();
    }

    public void k0(RectF rectF) {
        j0(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    @Override // androidx.appcompat.view.menu.ob0, android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.y = new b(this.y);
        return this;
    }

    public static final class b extends ob0.c {
        public final RectF w;

        @Override // androidx.appcompat.view.menu.ob0.c, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            mi f0 = mi.f0(this);
            f0.invalidateSelf();
            return f0;
        }

        public b(st0 st0Var, RectF rectF) {
            super(st0Var, null);
            this.w = rectF;
        }

        public b(b bVar) {
            super(bVar);
            this.w = bVar.w;
        }
    }

    public mi(b bVar) {
        super(bVar);
        this.y = bVar;
    }
}
