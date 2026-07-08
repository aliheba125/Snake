.class public abstract Landroidx/appcompat/view/menu/oc0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/oc0$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/MenuItem;CI)V
    .locals 1

    instance-of v0, p0, Landroidx/appcompat/view/menu/ky0;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/appcompat/view/menu/ky0;

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/ky0;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/oc0$a;->g(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public static b(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 1

    instance-of v0, p0, Landroidx/appcompat/view/menu/ky0;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/appcompat/view/menu/ky0;

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/ky0;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/ky0;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/oc0$a;->h(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public static c(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .locals 1

    instance-of v0, p0, Landroidx/appcompat/view/menu/ky0;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/appcompat/view/menu/ky0;

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/ky0;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/oc0$a;->i(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public static d(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    instance-of v0, p0, Landroidx/appcompat/view/menu/ky0;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/appcompat/view/menu/ky0;

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/ky0;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/oc0$a;->j(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public static e(Landroid/view/MenuItem;CI)V
    .locals 1

    instance-of v0, p0, Landroidx/appcompat/view/menu/ky0;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/appcompat/view/menu/ky0;

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/ky0;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/oc0$a;->k(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method

.method public static f(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .locals 1

    instance-of v0, p0, Landroidx/appcompat/view/menu/ky0;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/appcompat/view/menu/ky0;

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/ky0;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/ky0;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/oc0$a;->m(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_0
    return-void
.end method
