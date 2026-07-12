.class public abstract Landroidx/appcompat/view/menu/om;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/om$a;,
        Landroidx/appcompat/view/menu/om$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)I
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/om$b;->a(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void
.end method

.method public static e(Landroid/graphics/drawable/Drawable;FF)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/om$a;->e(Landroid/graphics/drawable/Drawable;FF)V

    return-void
.end method

.method public static f(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/om$a;->f(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public static g(Landroid/graphics/drawable/Drawable;I)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/om$b;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result p0

    return p0
.end method

.method public static h(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/om$a;->g(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static i(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/om$a;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static j(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/om$a;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static k(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    instance-of v0, p0, Landroidx/appcompat/view/menu/ra1;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/appcompat/view/menu/ra1;

    invoke-interface {p0}, Landroidx/appcompat/view/menu/ra1;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static l(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    return-object p0
.end method
