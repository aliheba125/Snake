package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.mc0;

/* loaded from: classes.dex */
public class ay0 extends mc0 implements SubMenu {
    public mc0 B;
    public qc0 C;

    public ay0(Context context, mc0 mc0Var, qc0 qc0Var) {
        super(context);
        this.B = mc0Var;
        this.C = qc0Var;
    }

    @Override // androidx.appcompat.view.menu.mc0
    public boolean C() {
        return this.B.C();
    }

    @Override // androidx.appcompat.view.menu.mc0
    public boolean D() {
        return this.B.D();
    }

    @Override // androidx.appcompat.view.menu.mc0
    public boolean E() {
        return this.B.E();
    }

    @Override // androidx.appcompat.view.menu.mc0
    public void M(mc0.a aVar) {
        this.B.M(aVar);
    }

    public Menu X() {
        return this.B;
    }

    @Override // androidx.appcompat.view.menu.mc0
    public boolean e(qc0 qc0Var) {
        return this.B.e(qc0Var);
    }

    @Override // androidx.appcompat.view.menu.mc0
    public boolean g(mc0 mc0Var, MenuItem menuItem) {
        return super.g(mc0Var, menuItem) || this.B.g(mc0Var, menuItem);
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.C;
    }

    @Override // androidx.appcompat.view.menu.mc0
    public boolean j(qc0 qc0Var) {
        return this.B.j(qc0Var);
    }

    @Override // androidx.appcompat.view.menu.mc0, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.B.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.P(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.S(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.T(view);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.C.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.mc0, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.B.setQwertyMode(z);
    }

    @Override // androidx.appcompat.view.menu.mc0
    public mc0 z() {
        return this.B.z();
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        return (SubMenu) super.O(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        return (SubMenu) super.R(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.C.setIcon(i);
        return this;
    }
}
